(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#current-compile-methods (make-parameter '#f))
  (define gxc#current-compile-lift (make-parameter '#f))
  (define gxc#current-compile-marks (make-parameter '#f))
  (define gxc#compile-e
    (lambda (_stx12027_ . _args12028_)
      (let* ((_g1203012040_
              (lambda (_g1203112037_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1203112037_)))
             (_g1202912068_
              (lambda (_g1203112043_)
                (if (gx#stx-pair? _g1203112043_)
                    (let ((_e1203312045_ (gx#stx-e _g1203112043_)))
                      (let ((_hd1203412048_ (##car _e1203312045_))
                            (_tl1203512050_ (##cdr _e1203312045_)))
                        ((lambda (_L12053_)
                           (let ((_$e12063_
                                  (table-ref
                                   (gxc#current-compile-methods)
                                   (gx#stx-e _L12053_)
                                   '#f)))
                             (if _$e12063_
                                 ((lambda (_method12066_)
                                    (apply _method12066_
                                           _stx12027_
                                           _args12028_))
                                  _$e12063_)
                                 (gxc#raise-compile-error
                                  '"Cannot compile; missing method"
                                  _stx12027_
                                  _L12053_))))
                         _hd1203412048_)))
                    (_g1203012040_ _g1203112043_)))))
        (_g1202912068_ _stx12027_))))
  (define gxc#&void-expression
    (make-promise
     (lambda ()
       (let ((_tbl12024_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12024_ '%#begin-annotation void)
           (table-set! _tbl12024_ '%#lambda void)
           (table-set! _tbl12024_ '%#case-lambda void)
           (table-set! _tbl12024_ '%#let-values void)
           (table-set! _tbl12024_ '%#letrec-values void)
           (table-set! _tbl12024_ '%#letrec*-values void)
           (table-set! _tbl12024_ '%#quote void)
           (table-set! _tbl12024_ '%#quote-syntax void)
           (table-set! _tbl12024_ '%#call void)
           (table-set! _tbl12024_ '%#if void)
           (table-set! _tbl12024_ '%#ref void)
           (table-set! _tbl12024_ '%#set! void)
           (table-set! _tbl12024_ '%#struct-instance? void)
           (table-set! _tbl12024_ '%#struct-direct-instance? void)
           (table-set! _tbl12024_ '%#struct-ref void)
           (table-set! _tbl12024_ '%#struct-set! void)
           (table-set! _tbl12024_ '%#struct-direct-ref void)
           (table-set! _tbl12024_ '%#struct-direct-set! void)
           (table-set! _tbl12024_ '%#struct-unchecked-ref void)
           (table-set! _tbl12024_ '%#struct-unchecked-set! void)
           _tbl12024_)))))
  (define gxc#&void-special-form
    (make-promise
     (lambda ()
       (let ((_tbl12020_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12020_ '%#begin void)
           (table-set! _tbl12020_ '%#begin-syntax void)
           (table-set! _tbl12020_ '%#begin-foreign void)
           (table-set! _tbl12020_ '%#module void)
           (table-set! _tbl12020_ '%#import void)
           (table-set! _tbl12020_ '%#export void)
           (table-set! _tbl12020_ '%#provide void)
           (table-set! _tbl12020_ '%#extern void)
           (table-set! _tbl12020_ '%#define-values void)
           (table-set! _tbl12020_ '%#define-syntax void)
           (table-set! _tbl12020_ '%#define-alias void)
           (table-set! _tbl12020_ '%#declare void)
           _tbl12020_)))))
  (define gxc#&void
    (make-promise
     (lambda ()
       (let ((_tbl12016_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12016_ (force gxc#&void-special-form))
           (hash-copy! _tbl12016_ (force gxc#&void-expression))
           _tbl12016_)))))
  (define gxc#&false-expression
    (make-promise
     (lambda ()
       (let ((_tbl12012_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12012_ '%#begin-annotation false)
           (table-set! _tbl12012_ '%#lambda false)
           (table-set! _tbl12012_ '%#case-lambda false)
           (table-set! _tbl12012_ '%#let-values false)
           (table-set! _tbl12012_ '%#letrec-values false)
           (table-set! _tbl12012_ '%#letrec*-values false)
           (table-set! _tbl12012_ '%#quote false)
           (table-set! _tbl12012_ '%#quote-syntax false)
           (table-set! _tbl12012_ '%#call false)
           (table-set! _tbl12012_ '%#if false)
           (table-set! _tbl12012_ '%#ref false)
           (table-set! _tbl12012_ '%#set! false)
           (table-set! _tbl12012_ '%#struct-instance? false)
           (table-set! _tbl12012_ '%#struct-direct-instance? false)
           (table-set! _tbl12012_ '%#struct-ref false)
           (table-set! _tbl12012_ '%#struct-set! false)
           (table-set! _tbl12012_ '%#struct-direct-ref false)
           (table-set! _tbl12012_ '%#struct-direct-set! false)
           (table-set! _tbl12012_ '%#struct-unchecked-ref false)
           (table-set! _tbl12012_ '%#struct-unchecked-set! false)
           _tbl12012_)))))
  (define gxc#&false-special-form
    (make-promise
     (lambda ()
       (let ((_tbl12008_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12008_ '%#begin false)
           (table-set! _tbl12008_ '%#begin-syntax false)
           (table-set! _tbl12008_ '%#begin-foreign false)
           (table-set! _tbl12008_ '%#module false)
           (table-set! _tbl12008_ '%#import false)
           (table-set! _tbl12008_ '%#export false)
           (table-set! _tbl12008_ '%#provide false)
           (table-set! _tbl12008_ '%#extern false)
           (table-set! _tbl12008_ '%#define-values false)
           (table-set! _tbl12008_ '%#define-syntax false)
           (table-set! _tbl12008_ '%#define-alias false)
           (table-set! _tbl12008_ '%#declare false)
           _tbl12008_)))))
  (define gxc#&false
    (make-promise
     (lambda ()
       (let ((_tbl12004_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12004_ (force gxc#&false-special-form))
           (hash-copy! _tbl12004_ (force gxc#&false-expression))
           _tbl12004_)))))
  (define gxc#&collect-bindings
    (make-promise
     (lambda ()
       (let ((_tbl12000_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl12000_ (force gxc#&void-expression))
           (hash-copy! _tbl12000_ (force gxc#&void-special-form))
           (table-set! _tbl12000_ '%#begin gxc#collect-begin%)
           (table-set! _tbl12000_ '%#begin-syntax gxc#collect-begin-syntax%)
           (table-set! _tbl12000_ '%#module gxc#collect-module%)
           (table-set!
            _tbl12000_
            '%#define-values
            gxc#collect-bindings-define-values%)
           (table-set!
            _tbl12000_
            '%#define-syntax
            gxc#collect-bindings-define-syntax%)
           _tbl12000_)))))
  (define gxc#apply-collect-bindings
    (lambda (_stx11993_ . _args11995_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11993_ _args11995_))
       gxc#current-compile-methods
       (force gxc#&collect-bindings))))
  (define gxc#&lift-modules
    (make-promise
     (lambda ()
       (let ((_tbl11990_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl11990_ (force gxc#&void))
           (table-set! _tbl11990_ '%#begin gxc#collect-begin%)
           (table-set! _tbl11990_ '%#module gxc#lift-modules-module%)
           _tbl11990_)))))
  (define gxc#apply-lift-modules
    (lambda (_stx11983_ . _args11985_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11983_ _args11985_))
       gxc#current-compile-methods
       (force gxc#&lift-modules))))
  (define gxc#&find-runtime-code
    (make-promise
     (lambda ()
       (let ((_tbl11980_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl11980_ '%#begin gxc#find-runtime-begin%)
           (table-set! _tbl11980_ '%#begin-syntax false)
           (table-set! _tbl11980_ '%#begin-foreign true)
           (table-set! _tbl11980_ '%#begin-annotation true)
           (table-set! _tbl11980_ '%#module false)
           (table-set! _tbl11980_ '%#import false)
           (table-set! _tbl11980_ '%#export false)
           (table-set! _tbl11980_ '%#provide false)
           (table-set! _tbl11980_ '%#extern false)
           (table-set! _tbl11980_ '%#define-values true)
           (table-set! _tbl11980_ '%#define-syntax false)
           (table-set! _tbl11980_ '%#define-alias false)
           (table-set! _tbl11980_ '%#declare false)
           (table-set! _tbl11980_ '%#lambda true)
           (table-set! _tbl11980_ '%#case-lambda true)
           (table-set! _tbl11980_ '%#let-values true)
           (table-set! _tbl11980_ '%#letrec-values true)
           (table-set! _tbl11980_ '%#letrec*-values true)
           (table-set! _tbl11980_ '%#quote true)
           (table-set! _tbl11980_ '%#call true)
           (table-set! _tbl11980_ '%#if true)
           (table-set! _tbl11980_ '%#ref true)
           (table-set! _tbl11980_ '%#set! true)
           (table-set! _tbl11980_ '%#struct-instance? true)
           (table-set! _tbl11980_ '%#struct-direct-instance? true)
           (table-set! _tbl11980_ '%#struct-ref true)
           (table-set! _tbl11980_ '%#struct-set! true)
           (table-set! _tbl11980_ '%#struct-direct-ref true)
           (table-set! _tbl11980_ '%#struct-direct-set! true)
           (table-set! _tbl11980_ '%#struct-unchecked-ref true)
           (table-set! _tbl11980_ '%#struct-unchecked-set! true)
           _tbl11980_)))))
  (define gxc#apply-find-runtime-code
    (lambda (_stx11973_ . _args11975_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11973_ _args11975_))
       gxc#current-compile-methods
       (force gxc#&find-runtime-code))))
  (define gxc#&find-lambda-expression
    (make-promise
     (lambda ()
       (let ((_tbl11970_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl11970_ (force gxc#&false))
           (table-set! _tbl11970_ '%#begin gxc#find-lambda-expression-begin%)
           (table-set!
            _tbl11970_
            '%#begin-annotation
            gxc#find-lambda-expression-begin-annotation%)
           (table-set! _tbl11970_ '%#lambda values)
           (table-set! _tbl11970_ '%#case-lambda values)
           (table-set!
            _tbl11970_
            '%#let-values
            gxc#find-lambda-expression-let-values%)
           (table-set!
            _tbl11970_
            '%#letrec-values
            gxc#find-lambda-expression-let-values%)
           (table-set!
            _tbl11970_
            '%#letrec*-values
            gxc#find-lambda-expression-let-values%)
           _tbl11970_)))))
  (define gxc#apply-find-lambda-expression
    (lambda (_stx11963_ . _args11965_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11963_ _args11965_))
       gxc#current-compile-methods
       (force gxc#&find-lambda-expression))))
  (define gxc#&generate-runtime-empty
    (make-promise
     (lambda ()
       (let ((_tbl11960_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl11960_ '%#begin gxc#generate-runtime-empty)
           (table-set! _tbl11960_ '%#begin-syntax gxc#generate-runtime-empty)
           (table-set! _tbl11960_ '%#begin-foreign gxc#generate-runtime-empty)
           (table-set!
            _tbl11960_
            '%#begin-annotation
            gxc#generate-runtime-empty)
           (table-set! _tbl11960_ '%#module gxc#generate-runtime-empty)
           (table-set! _tbl11960_ '%#import gxc#generate-runtime-empty)
           (table-set! _tbl11960_ '%#export gxc#generate-runtime-empty)
           (table-set! _tbl11960_ '%#provide gxc#generate-runtime-empty)
           (table-set! _tbl11960_ '%#extern gxc#generate-runtime-empty)
           (table-set! _tbl11960_ '%#define-values gxc#generate-runtime-empty)
           (table-set! _tbl11960_ '%#define-syntax gxc#generate-runtime-empty)
           (table-set! _tbl11960_ '%#define-alias gxc#generate-runtime-empty)
           (table-set! _tbl11960_ '%#declare gxc#generate-runtime-empty)
           (table-set! _tbl11960_ '%#lambda gxc#generate-runtime-empty)
           (table-set! _tbl11960_ '%#case-lambda gxc#generate-runtime-empty)
           (table-set! _tbl11960_ '%#let-values gxc#generate-runtime-empty)
           (table-set! _tbl11960_ '%#letrec-values gxc#generate-runtime-empty)
           (table-set! _tbl11960_ '%#letrec*-values gxc#generate-runtime-empty)
           (table-set! _tbl11960_ '%#quote gxc#generate-runtime-empty)
           (table-set! _tbl11960_ '%#call gxc#generate-runtime-empty)
           (table-set! _tbl11960_ '%#if gxc#generate-runtime-empty)
           (table-set! _tbl11960_ '%#ref gxc#generate-runtime-empty)
           (table-set! _tbl11960_ '%#set! gxc#generate-runtime-empty)
           (table-set!
            _tbl11960_
            '%#struct-instance?
            gxc#generate-runtime-empty)
           (table-set!
            _tbl11960_
            '%#struct-direct-instance?
            gxc#generate-runtime-empty)
           (table-set! _tbl11960_ '%#struct-ref gxc#generate-runtime-empty)
           (table-set! _tbl11960_ '%#struct-set! gxc#generate-runtime-empty)
           (table-set!
            _tbl11960_
            '%#struct-direct-ref
            gxc#generate-runtime-empty)
           (table-set!
            _tbl11960_
            '%#struct-direct-set!
            gxc#generate-runtime-empty)
           (table-set!
            _tbl11960_
            '%#struct-unchecked-ref
            gxc#generate-runtime-empty)
           (table-set!
            _tbl11960_
            '%#struct-unchecked-set!
            gxc#generate-runtime-empty)
           _tbl11960_)))))
  (define gxc#&generate-loader
    (make-promise
     (lambda ()
       (let ((_tbl11956_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl11956_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl11956_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl11956_
            '%#import
            gxc#generate-runtime-loader-import%)
           _tbl11956_)))))
  (define gxc#apply-generate-loader
    (lambda (_stx11949_ . _args11951_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11949_ _args11951_))
       gxc#current-compile-methods
       (force gxc#&generate-loader))))
  (define gxc#&generate-runtime
    (make-promise
     (lambda ()
       (let ((_tbl11946_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl11946_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl11946_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl11946_
            '%#begin-foreign
            gxc#generate-runtime-begin-foreign%)
           (table-set!
            _tbl11946_
            '%#begin-annotation
            gxc#generate-runtime-begin-annotation%)
           (table-set!
            _tbl11946_
            '%#define-values
            gxc#generate-runtime-define-values%)
           (table-set! _tbl11946_ '%#declare gxc#generate-runtime-declare%)
           (table-set! _tbl11946_ '%#lambda gxc#generate-runtime-lambda%)
           (table-set!
            _tbl11946_
            '%#case-lambda
            gxc#generate-runtime-case-lambda%)
           (table-set!
            _tbl11946_
            '%#let-values
            gxc#generate-runtime-let-values%)
           (table-set!
            _tbl11946_
            '%#letrec-values
            gxc#generate-runtime-letrec-values%)
           (table-set!
            _tbl11946_
            '%#letrec*-values
            gxc#generate-runtime-letrec*-values%)
           (table-set! _tbl11946_ '%#quote gxc#generate-runtime-quote%)
           (table-set!
            _tbl11946_
            '%#quote-syntax
            gxc#generate-runtime-quote-syntax%)
           (table-set! _tbl11946_ '%#call gxc#generate-runtime-call%)
           (table-set! _tbl11946_ '%#if gxc#generate-runtime-if%)
           (table-set! _tbl11946_ '%#ref gxc#generate-runtime-ref%)
           (table-set! _tbl11946_ '%#set! gxc#generate-runtime-setq%)
           (table-set!
            _tbl11946_
            '%#struct-instance?
            gxc#generate-runtime-struct-instancep%)
           (table-set!
            _tbl11946_
            '%#struct-direct-instance?
            gxc#generate-runtime-struct-direct-instancep%)
           (table-set!
            _tbl11946_
            '%#struct-ref
            gxc#generate-runtime-struct-ref%)
           (table-set!
            _tbl11946_
            '%#struct-set!
            gxc#generate-runtime-struct-setq%)
           (table-set!
            _tbl11946_
            '%#struct-direct-ref
            gxc#generate-runtime-struct-direct-ref%)
           (table-set!
            _tbl11946_
            '%#struct-direct-set!
            gxc#generate-runtime-struct-direct-setq%)
           (table-set!
            _tbl11946_
            '%#struct-unchecked-ref
            gxc#generate-runtime-struct-unchecked-ref%)
           (table-set!
            _tbl11946_
            '%#struct-unchecked-set!
            gxc#generate-runtime-struct-unchecked-setq%)
           _tbl11946_)))))
  (define gxc#apply-generate-runtime
    (lambda (_stx11939_ . _args11941_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11939_ _args11941_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime))))
  (define gxc#&generate-runtime-phi
    (make-promise
     (lambda ()
       (let ((_tbl11936_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl11936_ (force gxc#&generate-runtime))
           (table-set!
            _tbl11936_
            '%#define-runtime
            gxc#generate-runtime-phi-define-runtime%)
           _tbl11936_)))))
  (define gxc#apply-generate-runtime-phi
    (lambda (_stx11929_ . _args11931_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11929_ _args11931_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime-phi))))
  (define gxc#&collect-expression-refs
    (make-promise
     (lambda ()
       (let ((_tbl11926_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl11926_ '%#begin gxc#collect-begin%)
           (table-set!
            _tbl11926_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl11926_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl11926_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl11926_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl11926_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl11926_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl11926_ '%#quote void)
           (table-set! _tbl11926_ '%#quote-syntax void)
           (table-set! _tbl11926_ '%#call gxc#collect-operands)
           (table-set! _tbl11926_ '%#if gxc#collect-operands)
           (table-set! _tbl11926_ '%#ref gxc#collect-refs-ref%)
           (table-set! _tbl11926_ '%#set! gxc#collect-refs-setq%)
           (table-set! _tbl11926_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl11926_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl11926_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl11926_ '%#struct-set! gxc#collect-operands)
           (table-set! _tbl11926_ '%#struct-direct-ref gxc#collect-operands)
           (table-set! _tbl11926_ '%#struct-direct-set! gxc#collect-operands)
           (table-set! _tbl11926_ '%#struct-unchecked-ref gxc#collect-operands)
           (table-set!
            _tbl11926_
            '%#struct-unchecked-set!
            gxc#collect-operands)
           _tbl11926_)))))
  (define gxc#apply-collect-expression-refs
    (lambda (_stx11919_ . _args11921_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11919_ _args11921_))
       gxc#current-compile-methods
       (force gxc#&collect-expression-refs))))
  (define gxc#&generate-meta
    (make-promise
     (lambda ()
       (let ((_tbl11916_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl11916_ (force gxc#&void-expression))
           (table-set! _tbl11916_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl11916_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set! _tbl11916_ '%#module gxc#generate-meta-module%)
           (table-set! _tbl11916_ '%#import gxc#generate-meta-import%)
           (table-set! _tbl11916_ '%#export gxc#generate-meta-export%)
           (table-set! _tbl11916_ '%#provide gxc#generate-meta-provide%)
           (table-set! _tbl11916_ '%#extern gxc#generate-meta-extern%)
           (table-set!
            _tbl11916_
            '%#define-values
            gxc#generate-meta-define-values%)
           (table-set!
            _tbl11916_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl11916_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set! _tbl11916_ '%#begin-foreign void)
           (table-set! _tbl11916_ '%#declare void)
           _tbl11916_)))))
  (define gxc#apply-generate-meta
    (lambda (_stx11909_ . _args11911_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11909_ _args11911_))
       gxc#current-compile-methods
       (force gxc#&generate-meta))))
  (define gxc#&generate-meta-phi
    (make-promise
     (lambda ()
       (let ((_tbl11906_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl11906_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl11906_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set!
            _tbl11906_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl11906_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set!
            _tbl11906_
            '%#define-values
            gxc#generate-meta-phi-define-values%)
           (table-set!
            _tbl11906_
            '%#begin-annotation
            gxc#generate-meta-phi-expr)
           (table-set! _tbl11906_ '%#lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl11906_ '%#case-lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl11906_ '%#let-values gxc#generate-meta-phi-expr)
           (table-set! _tbl11906_ '%#letrec-values gxc#generate-meta-phi-expr)
           (table-set! _tbl11906_ '%#letrec*-values gxc#generate-meta-phi-expr)
           (table-set! _tbl11906_ '%#quote gxc#generate-meta-phi-expr)
           (table-set! _tbl11906_ '%#quote-syntax gxc#generate-meta-phi-expr)
           (table-set! _tbl11906_ '%#call gxc#generate-meta-phi-expr)
           (table-set! _tbl11906_ '%#if gxc#generate-meta-phi-expr)
           (table-set! _tbl11906_ '%#ref gxc#generate-meta-phi-expr)
           (table-set! _tbl11906_ '%#set! gxc#generate-meta-phi-expr)
           (table-set!
            _tbl11906_
            '%#struct-instance?
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl11906_
            '%#struct-direct-instance?
            gxc#generate-meta-phi-expr)
           (table-set! _tbl11906_ '%#struct-ref gxc#generate-meta-phi-expr)
           (table-set! _tbl11906_ '%#struct-set! gxc#generate-meta-phi-expr)
           (table-set!
            _tbl11906_
            '%#struct-direct-ref
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl11906_
            '%#struct-direct-set!
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl11906_
            '%#struct-unchecked-ref
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl11906_
            '%#struct-unchecked-set!
            gxc#generate-meta-phi-expr)
           (table-set! _tbl11906_ '%#declare void)
           _tbl11906_)))))
  (define gxc#apply-generate-meta-phi
    (lambda (_stx11899_ . _args11901_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11899_ _args11901_))
       gxc#current-compile-methods
       (force gxc#&generate-meta-phi))))
  (define gxc#collect-begin%
    (lambda (_stx11856_ . _args11857_)
      (let* ((_g1185911869_
              (lambda (_g1186011866_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1186011866_)))
             (_g1185811896_
              (lambda (_g1186011872_)
                (if (gx#stx-pair? _g1186011872_)
                    (let ((_e1186211874_ (gx#stx-e _g1186011872_)))
                      (let ((_hd1186311877_ (##car _e1186211874_))
                            (_tl1186411879_ (##cdr _e1186211874_)))
                        ((lambda (_L11882_)
                           (for-each
                            (lambda (_g1189111893_)
                              (apply gxc#compile-e _g1189111893_ _args11857_))
                            (gx#stx-e _L11882_)))
                         _tl1186411879_)))
                    (_g1185911869_ _g1186011872_)))))
        (_g1185811896_ _stx11856_))))
  (define gxc#collect-begin-syntax%
    (lambda (_stx11812_ . _args11813_)
      (let* ((_g1181511825_
              (lambda (_g1181611822_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1181611822_)))
             (_g1181411853_
              (lambda (_g1181611828_)
                (if (gx#stx-pair? _g1181611828_)
                    (let ((_e1181811830_ (gx#stx-e _g1181611828_)))
                      (let ((_hd1181911833_ (##car _e1181811830_))
                            (_tl1182011835_ (##cdr _e1181811830_)))
                        ((lambda (_L11838_)
                           (call-with-parameters
                            (lambda ()
                              (for-each
                               (lambda (_g1184811850_)
                                 (apply gxc#compile-e
                                        _g1184811850_
                                        _args11813_))
                               (gx#stx-e _L11838_)))
                            gx#current-expander-phi
                            (fx+ (gx#current-expander-phi) '1)))
                         _tl1182011835_)))
                    (_g1181511825_ _g1181611828_)))))
        (_g1181411853_ _stx11812_))))
  (define gxc#collect-module%
    (lambda (_stx11754_ . _args11755_)
      (let* ((_g1175711771_
              (lambda (_g1175811768_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1175811768_)))
             (_g1175611809_
              (lambda (_g1175811774_)
                (if (gx#stx-pair? _g1175811774_)
                    (let ((_e1176111776_ (gx#stx-e _g1175811774_)))
                      (let ((_hd1176211779_ (##car _e1176111776_))
                            (_tl1176311781_ (##cdr _e1176111776_)))
                        (if (gx#stx-pair? _tl1176311781_)
                            (let ((_e1176411784_ (gx#stx-e _tl1176311781_)))
                              (let ((_hd1176511787_ (##car _e1176411784_))
                                    (_tl1176611789_ (##cdr _e1176411784_)))
                                ((lambda (_L11792_ _L11793_)
                                   (let ((_ctx11806_
                                          (gx#syntax-local-e__0 _L11793_)))
                                     (call-with-parameters
                                      (lambda ()
                                        (apply gxc#compile-e
                                               (##structure-ref
                                                _ctx11806_
                                                '11
                                                gx#module-context::t
                                                '#f)
                                               _args11755_))
                                      gx#current-expander-context
                                      _ctx11806_)))
                                 _tl1176611789_
                                 _hd1176511787_)))
                            (_g1175711771_ _g1175811774_))))
                    (_g1175711771_ _g1175811774_)))))
        (_g1175611809_ _stx11754_))))
  (define gxc#collect-begin-annotation%
    (lambda (_stx11686_ . _args11687_)
      (let* ((_g1168911706_
              (lambda (_g1169011703_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1169011703_)))
             (_g1168811751_
              (lambda (_g1169011709_)
                (if (gx#stx-pair? _g1169011709_)
                    (let ((_e1169311711_ (gx#stx-e _g1169011709_)))
                      (let ((_hd1169411714_ (##car _e1169311711_))
                            (_tl1169511716_ (##cdr _e1169311711_)))
                        (if (gx#stx-pair? _tl1169511716_)
                            (let ((_e1169611719_ (gx#stx-e _tl1169511716_)))
                              (let ((_hd1169711722_ (##car _e1169611719_))
                                    (_tl1169811724_ (##cdr _e1169611719_)))
                                (if (gx#stx-pair? _tl1169811724_)
                                    (let ((_e1169911727_
                                           (gx#stx-e _tl1169811724_)))
                                      (let ((_hd1170011730_
                                             (##car _e1169911727_))
                                            (_tl1170111732_
                                             (##cdr _e1169911727_)))
                                        (if (gx#stx-null? _tl1170111732_)
                                            ((lambda (_L11735_ _L11736_)
                                               (apply gxc#compile-e
                                                      _L11735_
                                                      _args11687_))
                                             _hd1170011730_
                                             _hd1169711722_)
                                            (_g1168911706_ _g1169011709_))))
                                    (_g1168911706_ _g1169011709_))))
                            (_g1168911706_ _g1169011709_))))
                    (_g1168911706_ _g1169011709_)))))
        (_g1168811751_ _stx11686_))))
  (define gxc#collect-body-lambda%
    (lambda (_stx11618_ . _args11619_)
      (let* ((_g1162111638_
              (lambda (_g1162211635_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1162211635_)))
             (_g1162011683_
              (lambda (_g1162211641_)
                (if (gx#stx-pair? _g1162211641_)
                    (let ((_e1162511643_ (gx#stx-e _g1162211641_)))
                      (let ((_hd1162611646_ (##car _e1162511643_))
                            (_tl1162711648_ (##cdr _e1162511643_)))
                        (if (gx#stx-pair? _tl1162711648_)
                            (let ((_e1162811651_ (gx#stx-e _tl1162711648_)))
                              (let ((_hd1162911654_ (##car _e1162811651_))
                                    (_tl1163011656_ (##cdr _e1162811651_)))
                                (if (gx#stx-pair? _tl1163011656_)
                                    (let ((_e1163111659_
                                           (gx#stx-e _tl1163011656_)))
                                      (let ((_hd1163211662_
                                             (##car _e1163111659_))
                                            (_tl1163311664_
                                             (##cdr _e1163111659_)))
                                        (if (gx#stx-null? _tl1163311664_)
                                            ((lambda (_L11667_ _L11668_)
                                               (apply gxc#compile-e
                                                      _L11667_
                                                      _args11619_))
                                             _hd1163211662_
                                             _hd1162911654_)
                                            (_g1162111638_ _g1162211641_))))
                                    (_g1162111638_ _g1162211641_))))
                            (_g1162111638_ _g1162211641_))))
                    (_g1162111638_ _g1162211641_)))))
        (_g1162011683_ _stx11618_))))
  (define gxc#collect-body-case-lambda%
    (lambda (_stx11500_ . _args11501_)
      (let* ((_g1150311531_
              (lambda (_g1150411528_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1150411528_)))
             (_g1150211615_
              (lambda (_g1150411534_)
                (if (gx#stx-pair? _g1150411534_)
                    (let ((_e1150711536_ (gx#stx-e _g1150411534_)))
                      (let ((_hd1150811539_ (##car _e1150711536_))
                            (_tl1150911541_ (##cdr _e1150711536_)))
                        (if (gx#stx-pair/null? _tl1150911541_)
                            (if (fx>= (gx#stx-length _tl1150911541_) '0)
                                (let ((_g12070_
                                       (gx#syntax-split-splice
                                        _tl1150911541_
                                        '0)))
                                  (begin
                                    (let ((_g12071_ (values-count _g12070_)))
                                      (if (not (fx= _g12071_ 2))
                                          (error "Context expects 2 values"
                                                 _g12071_)))
                                    (let ((_target1151011544_
                                           (values-ref _g12070_ 0))
                                          (_tl1151211546_
                                           (values-ref _g12070_ 1)))
                                      (if (gx#stx-null? _tl1151211546_)
                                          (letrec ((_loop1151311549_
                                                    (lambda (_hd1151111552_
                                                             _body1151711554_
                                                             _hd1151811556_)
                                                      (if (gx#stx-pair?
                                                           _hd1151111552_)
                                                          (let ((_e1151411559_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd1151111552_)))
                    (let ((_lp-hd1151511562_ (##car _e1151411559_))
                          (_lp-tl1151611564_ (##cdr _e1151411559_)))
                      (if (gx#stx-pair? _lp-hd1151511562_)
                          (let ((_e1152111567_ (gx#stx-e _lp-hd1151511562_)))
                            (let ((_hd1152211570_ (##car _e1152111567_))
                                  (_tl1152311572_ (##cdr _e1152111567_)))
                              (if (gx#stx-pair? _tl1152311572_)
                                  (let ((_e1152411575_
                                         (gx#stx-e _tl1152311572_)))
                                    (let ((_hd1152511578_
                                           (##car _e1152411575_))
                                          (_tl1152611580_
                                           (##cdr _e1152411575_)))
                                      (if (gx#stx-null? _tl1152611580_)
                                          (_loop1151311549_
                                           _lp-tl1151611564_
                                           (cons _hd1152511578_
                                                 _body1151711554_)
                                           (cons _hd1152211570_
                                                 _hd1151811556_))
                                          (_g1150311531_ _g1150411534_))))
                                  (_g1150311531_ _g1150411534_))))
                          (_g1150311531_ _g1150411534_))))
                  (let ((_body1151911583_ (reverse _body1151711554_))
                        (_hd1152011585_ (reverse _hd1151811556_)))
                    ((lambda (_L11588_ _L11589_)
                       (for-each
                        (lambda (_g1160311605_)
                          (apply gxc#compile-e _g1160311605_ _args11501_))
                        (begin
                          '#!void
                          (foldr1 (lambda (_g1160711610_ _g1160811612_)
                                    (cons _g1160711610_ _g1160811612_))
                                  '()
                                  _L11588_))))
                     _body1151911583_
                     _hd1152011585_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1151311549_
                                             _target1151011544_
                                             '()
                                             '()))
                                          (_g1150311531_ _g1150411534_)))))
                                (_g1150311531_ _g1150411534_))
                            (_g1150311531_ _g1150411534_))))
                    (_g1150311531_ _g1150411534_)))))
        (_g1150211615_ _stx11500_))))
  (define gxc#collect-body-let-values%
    (lambda (_stx11353_ . _args11354_)
      (let* ((_g1135611391_
              (lambda (_g1135711388_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1135711388_)))
             (_g1135511497_
              (lambda (_g1135711394_)
                (if (gx#stx-pair? _g1135711394_)
                    (let ((_e1136111396_ (gx#stx-e _g1135711394_)))
                      (let ((_hd1136211399_ (##car _e1136111396_))
                            (_tl1136311401_ (##cdr _e1136111396_)))
                        (if (gx#stx-pair? _tl1136311401_)
                            (let ((_e1136411404_ (gx#stx-e _tl1136311401_)))
                              (let ((_hd1136511407_ (##car _e1136411404_))
                                    (_tl1136611409_ (##cdr _e1136411404_)))
                                (if (gx#stx-pair/null? _hd1136511407_)
                                    (if (fx>= (gx#stx-length _hd1136511407_)
                                              '0)
                                        (let ((_g12072_
                                               (gx#syntax-split-splice
                                                _hd1136511407_
                                                '0)))
                                          (begin
                                            (let ((_g12073_
                                                   (values-count _g12072_)))
                                              (if (not (fx= _g12073_ 2))
                                                  (error "Context expects 2 values"
                                                         _g12073_)))
                                            (let ((_target1136711412_
                                                   (values-ref _g12072_ 0))
                                                  (_tl1136911414_
                                                   (values-ref _g12072_ 1)))
                                              (if (gx#stx-null? _tl1136911414_)
                                                  (letrec ((_loop1137011417_
                                                            (lambda (_hd1136811420_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr1137411422_
                             _hd1137511424_)
                      (if (gx#stx-pair? _hd1136811420_)
                          (let ((_e1137111427_ (gx#stx-e _hd1136811420_)))
                            (let ((_lp-hd1137211430_ (##car _e1137111427_))
                                  (_lp-tl1137311432_ (##cdr _e1137111427_)))
                              (if (gx#stx-pair? _lp-hd1137211430_)
                                  (let ((_e1137811435_
                                         (gx#stx-e _lp-hd1137211430_)))
                                    (let ((_hd1137911438_
                                           (##car _e1137811435_))
                                          (_tl1138011440_
                                           (##cdr _e1137811435_)))
                                      (if (gx#stx-pair? _tl1138011440_)
                                          (let ((_e1138111443_
                                                 (gx#stx-e _tl1138011440_)))
                                            (let ((_hd1138211446_
                                                   (##car _e1138111443_))
                                                  (_tl1138311448_
                                                   (##cdr _e1138111443_)))
                                              (if (gx#stx-null? _tl1138311448_)
                                                  (_loop1137011417_
                                                   _lp-tl1137311432_
                                                   (cons _hd1138211446_
                                                         _expr1137411422_)
                                                   (cons _hd1137911438_
                                                         _hd1137511424_))
                                                  (_g1135611391_
                                                   _g1135711394_))))
                                          (_g1135611391_ _g1135711394_))))
                                  (_g1135611391_ _g1135711394_))))
                          (let ((_expr1137611451_ (reverse _expr1137411422_))
                                (_hd1137711453_ (reverse _hd1137511424_)))
                            (if (gx#stx-pair? _tl1136611409_)
                                (let ((_e1138411456_
                                       (gx#stx-e _tl1136611409_)))
                                  (let ((_hd1138511459_ (##car _e1138411456_))
                                        (_tl1138611461_ (##cdr _e1138411456_)))
                                    (if (gx#stx-null? _tl1138611461_)
                                        ((lambda (_L11464_ _L11465_ _L11466_)
                                           (for-each
                                            (lambda (_g1148511487_)
                                              (apply gxc#compile-e
                                                     _g1148511487_
                                                     _args11354_))
                                            (begin
                                              '#!void
                                              (foldr1 (lambda (_g1148911492_
                                                               _g1149011494_)
                                                        (cons _g1148911492_
                                                              _g1149011494_))
                                                      (cons _L11464_ '())
                                                      _L11465_))))
                                         _hd1138511459_
                                         _expr1137611451_
                                         _hd1137711453_)
                                        (_g1135611391_ _g1135711394_))))
                                (_g1135611391_ _g1135711394_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1137011417_
                                                     _target1136711412_
                                                     '()
                                                     '()))
                                                  (_g1135611391_
                                                   _g1135711394_)))))
                                        (_g1135611391_ _g1135711394_))
                                    (_g1135611391_ _g1135711394_))))
                            (_g1135611391_ _g1135711394_))))
                    (_g1135611391_ _g1135711394_)))))
        (_g1135511497_ _stx11353_))))
  (define gxc#collect-body-setq%
    (lambda (_stx11285_ . _args11286_)
      (let* ((_g1128811305_
              (lambda (_g1128911302_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1128911302_)))
             (_g1128711350_
              (lambda (_g1128911308_)
                (if (gx#stx-pair? _g1128911308_)
                    (let ((_e1129211310_ (gx#stx-e _g1128911308_)))
                      (let ((_hd1129311313_ (##car _e1129211310_))
                            (_tl1129411315_ (##cdr _e1129211310_)))
                        (if (gx#stx-pair? _tl1129411315_)
                            (let ((_e1129511318_ (gx#stx-e _tl1129411315_)))
                              (let ((_hd1129611321_ (##car _e1129511318_))
                                    (_tl1129711323_ (##cdr _e1129511318_)))
                                (if (gx#stx-pair? _tl1129711323_)
                                    (let ((_e1129811326_
                                           (gx#stx-e _tl1129711323_)))
                                      (let ((_hd1129911329_
                                             (##car _e1129811326_))
                                            (_tl1130011331_
                                             (##cdr _e1129811326_)))
                                        (if (gx#stx-null? _tl1130011331_)
                                            ((lambda (_L11334_ _L11335_)
                                               (apply gxc#compile-e
                                                      _L11334_
                                                      _args11286_))
                                             _hd1129911329_
                                             _hd1129611321_)
                                            (_g1128811305_ _g1128911308_))))
                                    (_g1128811305_ _g1128911308_))))
                            (_g1128811305_ _g1128911308_))))
                    (_g1128811305_ _g1128911308_)))))
        (_g1128711350_ _stx11285_))))
  (define gxc#collect-operands
    (lambda (_stx11198_ . _args11199_)
      (let* ((_g1120111220_
              (lambda (_g1120211217_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1120211217_)))
             (_g1120011282_
              (lambda (_g1120211223_)
                (if (gx#stx-pair? _g1120211223_)
                    (let ((_e1120411225_ (gx#stx-e _g1120211223_)))
                      (let ((_hd1120511228_ (##car _e1120411225_))
                            (_tl1120611230_ (##cdr _e1120411225_)))
                        (if (gx#stx-pair/null? _tl1120611230_)
                            (if (fx>= (gx#stx-length _tl1120611230_) '0)
                                (let ((_g12074_
                                       (gx#syntax-split-splice
                                        _tl1120611230_
                                        '0)))
                                  (begin
                                    (let ((_g12075_ (values-count _g12074_)))
                                      (if (not (fx= _g12075_ 2))
                                          (error "Context expects 2 values"
                                                 _g12075_)))
                                    (let ((_target1120711233_
                                           (values-ref _g12074_ 0))
                                          (_tl1120911235_
                                           (values-ref _g12074_ 1)))
                                      (if (gx#stx-null? _tl1120911235_)
                                          (letrec ((_loop1121011238_
                                                    (lambda (_hd1120811241_
                                                             _rands1121411243_)
                                                      (if (gx#stx-pair?
                                                           _hd1120811241_)
                                                          (let ((_e1121111246_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd1120811241_)))
                    (let ((_lp-hd1121211249_ (##car _e1121111246_))
                          (_lp-tl1121311251_ (##cdr _e1121111246_)))
                      (_loop1121011238_
                       _lp-tl1121311251_
                       (cons _lp-hd1121211249_ _rands1121411243_))))
                  (let ((_rands1121511254_ (reverse _rands1121411243_)))
                    ((lambda (_L11257_)
                       (for-each
                        (lambda (_g1127011272_)
                          (apply gxc#compile-e _g1127011272_ _args11199_))
                        (begin
                          '#!void
                          (foldr1 (lambda (_g1127411277_ _g1127511279_)
                                    (cons _g1127411277_ _g1127511279_))
                                  '()
                                  _L11257_))))
                     _rands1121511254_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1121011238_
                                             _target1120711233_
                                             '()))
                                          (_g1120111220_ _g1120211223_)))))
                                (_g1120111220_ _g1120211223_))
                            (_g1120111220_ _g1120211223_))))
                    (_g1120111220_ _g1120211223_)))))
        (_g1120011282_ _stx11198_))))
  (define gxc#collect-bindings-define-values%
    (lambda (_stx11129_)
      (let* ((_g1113111148_
              (lambda (_g1113211145_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1113211145_)))
             (_g1113011195_
              (lambda (_g1113211151_)
                (if (gx#stx-pair? _g1113211151_)
                    (let ((_e1113511153_ (gx#stx-e _g1113211151_)))
                      (let ((_hd1113611156_ (##car _e1113511153_))
                            (_tl1113711158_ (##cdr _e1113511153_)))
                        (if (gx#stx-pair? _tl1113711158_)
                            (let ((_e1113811161_ (gx#stx-e _tl1113711158_)))
                              (let ((_hd1113911164_ (##car _e1113811161_))
                                    (_tl1114011166_ (##cdr _e1113811161_)))
                                (if (gx#stx-pair? _tl1114011166_)
                                    (let ((_e1114111169_
                                           (gx#stx-e _tl1114011166_)))
                                      (let ((_hd1114211172_
                                             (##car _e1114111169_))
                                            (_tl1114311174_
                                             (##cdr _e1114111169_)))
                                        (if (gx#stx-null? _tl1114311174_)
                                            ((lambda (_L11177_ _L11178_)
                                               (gx#stx-for-each1
                                                (lambda (_bind11193_)
                                                  (if (gx#identifier?
                                                       _bind11193_)
                                                      (gxc#add-module-binding!
                                                       _bind11193_
                                                       '#f)
                                                      '#!void))
                                                _L11178_))
                                             _hd1114211172_
                                             _hd1113911164_)
                                            (_g1113111148_ _g1113211151_))))
                                    (_g1113111148_ _g1113211151_))))
                            (_g1113111148_ _g1113211151_))))
                    (_g1113111148_ _g1113211151_)))))
        (_g1113011195_ _stx11129_))))
  (define gxc#collect-bindings-define-syntax%
    (lambda (_stx11062_)
      (let* ((_g1106411081_
              (lambda (_g1106511078_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1106511078_)))
             (_g1106311126_
              (lambda (_g1106511084_)
                (if (gx#stx-pair? _g1106511084_)
                    (let ((_e1106811086_ (gx#stx-e _g1106511084_)))
                      (let ((_hd1106911089_ (##car _e1106811086_))
                            (_tl1107011091_ (##cdr _e1106811086_)))
                        (if (gx#stx-pair? _tl1107011091_)
                            (let ((_e1107111094_ (gx#stx-e _tl1107011091_)))
                              (let ((_hd1107211097_ (##car _e1107111094_))
                                    (_tl1107311099_ (##cdr _e1107111094_)))
                                (if (gx#stx-pair? _tl1107311099_)
                                    (let ((_e1107411102_
                                           (gx#stx-e _tl1107311099_)))
                                      (let ((_hd1107511105_
                                             (##car _e1107411102_))
                                            (_tl1107611107_
                                             (##cdr _e1107411102_)))
                                        (if (gx#stx-null? _tl1107611107_)
                                            ((lambda (_L11110_ _L11111_)
                                               (gxc#add-module-binding!
                                                _L11111_
                                                '#t))
                                             _hd1107511105_
                                             _hd1107211097_)
                                            (_g1106411081_ _g1106511084_))))
                                    (_g1106411081_ _g1106511084_))))
                            (_g1106411081_ _g1106511084_))))
                    (_g1106411081_ _g1106511084_)))))
        (_g1106311126_ _stx11062_))))
  (define gxc#lift-modules-module%
    (lambda (_stx11004_ _modules11005_)
      (let* ((_g1100711021_
              (lambda (_g1100811018_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1100811018_)))
             (_g1100611059_
              (lambda (_g1100811024_)
                (if (gx#stx-pair? _g1100811024_)
                    (let ((_e1101111026_ (gx#stx-e _g1100811024_)))
                      (let ((_hd1101211029_ (##car _e1101111026_))
                            (_tl1101311031_ (##cdr _e1101111026_)))
                        (if (gx#stx-pair? _tl1101311031_)
                            (let ((_e1101411034_ (gx#stx-e _tl1101311031_)))
                              (let ((_hd1101511037_ (##car _e1101411034_))
                                    (_tl1101611039_ (##cdr _e1101411034_)))
                                ((lambda (_L11042_ _L11043_)
                                   (let ((_ctx11056_
                                          (gx#syntax-local-e__0 _L11043_)))
                                     (begin
                                       (set-box!
                                        _modules11005_
                                        (cons _ctx11056_
                                              (unbox _modules11005_)))
                                       (call-with-parameters
                                        (lambda ()
                                          (gxc#compile-e
                                           (##structure-ref
                                            _ctx11056_
                                            '11
                                            gx#module-context::t
                                            '#f)
                                           _modules11005_))
                                        gx#current-expander-context
                                        _ctx11056_))))
                                 _tl1101611039_
                                 _hd1101511037_)))
                            (_g1100711021_ _g1100811024_))))
                    (_g1100711021_ _g1100811024_)))))
        (_g1100611059_ _stx11004_))))
  (define gxc#add-module-binding!
    (lambda (_id10998_ _syntax?10999_)
      (let ((_eid11001_
             (##structure-ref
              (gx#resolve-identifier__0 _id10998_)
              '1
              gx#binding::t
              '#f))
            (_ht11002_
             (##structure-ref
              (gxc#current-compile-symbol-table)
              '2
              gxc#symbol-table::t
              '#f)))
        (if (interned-symbol? _eid11001_)
            '#!void
            (table-set!
             _ht11002_
             _eid11001_
             (gx#make-binding-id__1
              (gxc#generate-runtime-gensym-reference__0 _eid11001_)
              _syntax?10999_))))))
  (define gxc#generate-runtime-binding-id
    (lambda (_id10979_)
      (let ((_bind10981_ (gx#resolve-identifier__0 _id10979_)))
        (if _bind10981_
            (let ((_eid10983_
                   (##structure-ref _bind10981_ '1 gx#binding::t '#f))
                  (_ht10984_
                   (##structure-ref
                    (gxc#current-compile-symbol-table)
                    '2
                    gxc#symbol-table::t
                    '#f)))
              (if (interned-symbol? _eid10983_)
                  _eid10983_
                  (let ((_$e10986_ (table-ref _ht10984_ _eid10983_ '#f)))
                    (if _$e10986_
                        (values _$e10986_)
                        (if (##structure-instance-of?
                             _bind10981_
                             'gx#local-binding::t)
                            (let ((_gid10989_
                                   (gxc#generate-runtime-gensym-reference__0
                                    _eid10983_)))
                              (begin
                                (table-set! _ht10984_ _eid10983_ _gid10989_)
                                _gid10989_))
                            (if (##structure-instance-of?
                                 _bind10981_
                                 'gx#module-binding::t)
                                (let ((_gid10996_
                                       (let ((_$e10991_
                                              (##structure-ref
                                               (##structure-ref
                                                _bind10981_
                                                '4
                                                gx#module-binding::t
                                                '#f)
                                               '6
                                               gx#module-context::t
                                               '#f)))
                                         (if _$e10991_
                                             ((lambda (_ns10994_)
                                                (make-symbol
                                                 _ns10994_
                                                 '"#"
                                                 _eid10983_))
                                              _$e10991_)
                                             (gxc#generate-runtime-gensym-reference__0
                                              _eid10983_)))))
                                  (begin
                                    (table-set!
                                     _ht10984_
                                     _eid10983_
                                     _gid10996_)
                                    _gid10996_))
                                (gxc#raise-compile-error
                                 '"Cannot compile reference to uninterned binding"
                                 _id10979_
                                 _eid10983_
                                 _bind10981_)))))))
            (if (interned-symbol? (gx#stx-e _id10979_))
                (gx#stx-e _id10979_)
                (gxc#raise-compile-error
                 '"Cannot compile reference to uninterned identifier"
                 _id10979_))))))
  (define gxc#generate-runtime-binding-id*
    (lambda (_id10977_)
      (if (gx#identifier? _id10977_)
          (gxc#generate-runtime-binding-id _id10977_)
          (gxc#generate-runtime-temporary__0))))
  (begin
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_sym10957_ _quote?10958_)
        (let* ((_ht10960_
                (##structure-ref
                 (gxc#current-compile-symbol-table)
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_$e10962_ (table-ref _ht10960_ _sym10957_ '#f)))
          (if _$e10962_
              (values _$e10962_)
              (let ((_g10965_
                     (if _quote?10958_
                         (make-symbol
                          '"__"
                          _sym10957_
                          '"__"
                          (gxc#current-compile-timestamp))
                         (make-symbol '"_" _sym10957_ '"_"))))
                (begin
                  (table-set! _ht10960_ _sym10957_ _g10965_)
                  _g10965_))))))
    (begin
      (define gxc#generate-runtime-gensym-reference__0
        (lambda (_sym10970_)
          (let ((_quote?10972_ '#f))
            (gxc#generate-runtime-gensym-reference__%
             _sym10970_
             _quote?10972_))))
      (define gxc#generate-runtime-gensym-reference
        (lambda _g12077_
          (let ((_g12076_ (length _g12077_)))
            (cond ((fx= _g12076_ 1)
                   (apply gxc#generate-runtime-gensym-reference__0 _g12077_))
                  ((fx= _g12076_ 2)
                   (apply gxc#generate-runtime-gensym-reference__% _g12077_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-gensym-reference
                    _g12077_))))))))
  (define gxc#generate-runtime-identifier
    (lambda (_id10954_)
      (gxc#generate-runtime-identifier-key
       (gx#core-identifier-key _id10954_))))
  (define gxc#generate-runtime-identifier-key
    (lambda (_key10914_)
      (if (interned-symbol? _key10914_)
          _key10914_
          (if (uninterned-symbol? _key10914_)
              (gxc#generate-runtime-gensym-reference__0 _key10914_)
              (let* ((_key1091510922_ _key10914_)
                     (_E1091710926_
                      (lambda ()
                        (error '"No clause matching" _key1091510922_)))
                     (_K1091810942_
                      (lambda (_mark10929_ _eid10930_)
                        (let ((_$e10932_
                               (##structure-ref
                                _mark10929_
                                '1
                                gx#expander-mark::t
                                '#f)))
                          (if _$e10932_
                              ((lambda (_ht10935_)
                                 (let ((_$e10937_
                                        (table-ref _ht10935_ _eid10930_ '#f)))
                                   (if _$e10937_
                                       ((lambda (_id10940_)
                                          (if (interned-symbol? _id10940_)
                                              _id10940_
                                              (gxc#generate-runtime-gensym-reference__0
                                               _id10940_)))
                                        _$e10937_)
                                       (gxc#generate-runtime-identifier-key
                                        _eid10930_))))
                               _$e10932_)
                              (gxc#generate-runtime-identifier-key
                               _eid10930_))))))
                (if (##pair? _key1091510922_)
                    (let ((_hd1091910945_ (##car _key1091510922_))
                          (_tl1092010947_ (##cdr _key1091510922_)))
                      (let* ((_eid10950_ _hd1091910945_)
                             (_mark10952_ _tl1092010947_))
                        (_K1091810942_ _mark10952_ _eid10950_)))
                    (_E1091710926_)))))))
  (begin
    (define gxc#generate-runtime-temporary__%
      (lambda (_top10901_)
        (if _top10901_
            (let ((_ns10903_
                   (##structure-ref
                    (gx#current-expander-context)
                    '6
                    gx#module-context::t
                    '#f))
                  (_phi10904_ (gx#current-expander-phi)))
              (if (fxpositive? _phi10904_)
                  (make-symbol
                   _ns10903_
                   '"["
                   (number->string _phi10904_)
                   '"]#_"
                   (gensym)
                   '"_")
                  (make-symbol _ns10903_ '"#_" (gensym) '"_")))
            (make-symbol '"_" (gensym) '"_"))))
    (begin
      (define gxc#generate-runtime-temporary__0
        (lambda ()
          (let ((_top10910_ '#f))
            (gxc#generate-runtime-temporary__% _top10910_))))
      (define gxc#generate-runtime-temporary
        (lambda _g12079_
          (let ((_g12078_ (length _g12079_)))
            (cond ((fx= _g12078_ 0)
                   (apply gxc#generate-runtime-temporary__0 _g12079_))
                  ((fx= _g12078_ 1)
                   (apply gxc#generate-runtime-temporary__% _g12079_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-temporary
                    _g12079_))))))))
  (define gxc#generate-runtime-empty (lambda (_stx10898_) '(begin)))
  (define gxc#generate-runtime-begin%
    (lambda (_stx10818_)
      (let* ((_g1082010830_
              (lambda (_g1082110827_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1082110827_)))
             (_g1081910895_
              (lambda (_g1082110833_)
                (if (gx#stx-pair? _g1082110833_)
                    (let ((_e1082310835_ (gx#stx-e _g1082110833_)))
                      (let ((_hd1082410838_ (##car _e1082310835_))
                            (_tl1082510840_ (##cdr _e1082310835_)))
                        ((lambda (_L10843_)
                           (let* ((_body10853_
                                   (gx#stx-map1 gxc#compile-e _L10843_))
                                  (_body10892_
                                   (filter (lambda (_stx10855_)
                                             (let* ((_g1085810867_
                                                     (lambda (_g1085910864_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1085910864_)))
                                                    (_g1085710874_
                                                     (lambda (_g1085910870_)
                                                       ((lambda () '#t))))
                                                    (_g1085610889_
                                                     (lambda (_g1085910877_)
                                                       (if (gx#stx-pair?
                                                            _g1085910877_)
                                                           (let ((_e1086010879_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _g1085910877_)))
                     (let ((_hd1086110882_ (##car _e1086010879_))
                           (_tl1086210884_ (##cdr _e1086010879_)))
                       (if (gx#identifier? _hd1086110882_)
                           (if (gx#stx-eq? 'begin _hd1086110882_)
                               (if (gx#stx-null? _tl1086210884_)
                                   ((lambda () '#f))
                                   (_g1085710874_ _g1085910877_))
                               (_g1085710874_ _g1085910877_))
                           (_g1085710874_ _g1085910877_))))
                   (_g1085710874_ _g1085910877_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1085610889_ _stx10855_)))
                                           _body10853_)))
                             (if (fx= (length _body10892_) '1)
                                 (car _body10892_)
                                 (cons 'begin _body10892_))))
                         _tl1082510840_)))
                    (_g1082010830_ _g1082110833_)))))
        (_g1081910895_ _stx10818_))))
  (define gxc#generate-runtime-begin-foreign%
    (lambda (_stx10780_)
      (let* ((_g1078210792_
              (lambda (_g1078310789_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1078310789_)))
             (_g1078110815_
              (lambda (_g1078310795_)
                (if (gx#stx-pair? _g1078310795_)
                    (let ((_e1078510797_ (gx#stx-e _g1078310795_)))
                      (let ((_hd1078610800_ (##car _e1078510797_))
                            (_tl1078710802_ (##cdr _e1078510797_)))
                        ((lambda (_L10805_)
                           (cons 'begin (gx#syntax->datum _L10805_)))
                         _tl1078710802_)))
                    (_g1078210792_ _g1078310795_)))))
        (_g1078110815_ _stx10780_))))
  (define gxc#generate-runtime-begin-annotation%
    (lambda (_stx10713_)
      (let* ((_g1071510732_
              (lambda (_g1071610729_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1071610729_)))
             (_g1071410777_
              (lambda (_g1071610735_)
                (if (gx#stx-pair? _g1071610735_)
                    (let ((_e1071910737_ (gx#stx-e _g1071610735_)))
                      (let ((_hd1072010740_ (##car _e1071910737_))
                            (_tl1072110742_ (##cdr _e1071910737_)))
                        (if (gx#stx-pair? _tl1072110742_)
                            (let ((_e1072210745_ (gx#stx-e _tl1072110742_)))
                              (let ((_hd1072310748_ (##car _e1072210745_))
                                    (_tl1072410750_ (##cdr _e1072210745_)))
                                (if (gx#stx-pair? _tl1072410750_)
                                    (let ((_e1072510753_
                                           (gx#stx-e _tl1072410750_)))
                                      (let ((_hd1072610756_
                                             (##car _e1072510753_))
                                            (_tl1072710758_
                                             (##cdr _e1072510753_)))
                                        (if (gx#stx-null? _tl1072710758_)
                                            ((lambda (_L10761_ _L10762_)
                                               (cons 'begin
                                                     (cons (cons 'declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (map gx#syntax->datum _L10762_))
                   (cons (gxc#compile-e _L10761_) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd1072610756_
                                             _hd1072310748_)
                                            (_g1071510732_ _g1071610735_))))
                                    (_g1071510732_ _g1071610735_))))
                            (_g1071510732_ _g1071610735_))))
                    (_g1071510732_ _g1071610735_)))))
        (_g1071410777_ _stx10713_))))
  (define gxc#generate-runtime-declare%
    (lambda (_stx10675_)
      (let* ((_g1067710687_
              (lambda (_g1067810684_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1067810684_)))
             (_g1067610710_
              (lambda (_g1067810690_)
                (if (gx#stx-pair? _g1067810690_)
                    (let ((_e1068010692_ (gx#stx-e _g1067810690_)))
                      (let ((_hd1068110695_ (##car _e1068010692_))
                            (_tl1068210697_ (##cdr _e1068010692_)))
                        ((lambda (_L10700_)
                           (cons 'declare (map gx#syntax->datum _L10700_)))
                         _tl1068210697_)))
                    (_g1067710687_ _g1067810690_)))))
        (_g1067610710_ _stx10675_))))
  (define gxc#generate-runtime-define-values%
    (lambda (_stx10431_)
      (let* ((_g1043310450_
              (lambda (_g1043410447_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1043410447_)))
             (_g1043210672_
              (lambda (_g1043410453_)
                (if (gx#stx-pair? _g1043410453_)
                    (let ((_e1043710455_ (gx#stx-e _g1043410453_)))
                      (let ((_hd1043810458_ (##car _e1043710455_))
                            (_tl1043910460_ (##cdr _e1043710455_)))
                        (if (gx#stx-pair? _tl1043910460_)
                            (let ((_e1044010463_ (gx#stx-e _tl1043910460_)))
                              (let ((_hd1044110466_ (##car _e1044010463_))
                                    (_tl1044210468_ (##cdr _e1044010463_)))
                                (if (gx#stx-pair? _tl1044210468_)
                                    (let ((_e1044310471_
                                           (gx#stx-e _tl1044210468_)))
                                      (let ((_hd1044410474_
                                             (##car _e1044310471_))
                                            (_tl1044510476_
                                             (##cdr _e1044310471_)))
                                        (if (gx#stx-null? _tl1044510476_)
                                            ((lambda (_L10479_ _L10480_)
                                               (let* ((_g1049710510_
                                                       (lambda (_g1049810507_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1049810507_)))
                                                      (_g1049610624_
                                                       (lambda (_g1049810513_)
                                                         ((lambda ()
                                                            (let* ((_tmp10517_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#generate-runtime-temporary__% '#t))
                           (_body10621_
                            (let _lp10519_ ((_rest10521_ _L10480_)
                                            (_k10522_ '0)
                                            (_r10523_ '()))
                              (let* ((_g1052810544_
                                      (lambda (_g1052910541_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g1052910541_)))
                                     (_g1052710551_
                                      (lambda (_g1052910547_)
                                        ((lambda () (reverse _r10523_)))))
                                     (_g1052610572_
                                      (lambda (_g1052910554_)
                                        ((lambda (_L10556_)
                                           (if (gx#identifier? _L10556_)
                                               (foldl1 cons
                                                       (cons (cons 'define
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gxc#generate-runtime-binding-id _L10556_)
                                 (cons (cons 'values->list
                                             (cons _tmp10517_
                                                   (cons _k10522_ '())))
                                       '())))
                     '())
               _r10523_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1052710551_ _g1052910554_)))
                                         _g1052910554_)))
                                     (_g1052510596_
                                      (lambda (_g1052910575_)
                                        (if (gx#stx-pair? _g1052910575_)
                                            (let ((_e1053610577_
                                                   (gx#stx-e _g1052910575_)))
                                              (let ((_hd1053710580_
                                                     (##car _e1053610577_))
                                                    (_tl1053810582_
                                                     (##cdr _e1053610577_)))
                                                ((lambda (_L10585_ _L10586_)
                                                   (_lp10519_
                                                    _L10585_
                                                    (fx+ _k10522_ '1)
                                                    (cons (cons 'define
                                                                (cons (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L10586_)
                              (cons (cons 'values-ref
                                          (cons _tmp10517_
                                                (cons _k10522_ '())))
                                    '())))
                  _r10523_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _tl1053810582_
                                                 _hd1053710580_)))
                                            (_g1052610572_ _g1052910575_))))
                                     (_g1052410618_
                                      (lambda (_g1052910599_)
                                        (if (gx#stx-pair? _g1052910599_)
                                            (let ((_e1053110601_
                                                   (gx#stx-e _g1052910599_)))
                                              (let ((_hd1053210604_
                                                     (##car _e1053110601_))
                                                    (_tl1053310606_
                                                     (##cdr _e1053110601_)))
                                                (if (gx#stx-datum?
                                                     _hd1053210604_)
                                                    (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1053210604_)
                        '#f)
                ((lambda (_L10609_)
                   (_lp10519_ _L10609_ (fx+ _k10522_ '1) _r10523_))
                 _tl1053310606_)
                (_g1052510596_ _g1052910599_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1052510596_
                                                     _g1052910599_))))
                                            (_g1052510596_ _g1052910599_)))))
                                (_g1052410618_ _rest10521_)))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _tmp10517_
                                              (cons (gxc#compile-e _L10479_)
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _tmp10517_
                                         _L10480_)
                                        _body10621_))))))))
              (_g1049510654_
               (lambda (_g1049810627_)
                 (if (gx#stx-pair? _g1049810627_)
                     (let ((_e1050310629_ (gx#stx-e _g1049810627_)))
                       (let ((_hd1050410632_ (##car _e1050310629_))
                             (_tl1050510634_ (##cdr _e1050310629_)))
                         (if (gx#stx-null? _tl1050510634_)
                             ((lambda (_L10637_)
                                (let ((_eid10646_
                                       (gxc#generate-runtime-binding-id
                                        _L10637_)))
                                  (begin
                                    (let ((_lambda-expr1064710649_
                                           (gxc#apply-find-lambda-expression
                                            _L10479_)))
                                      (if _lambda-expr1064710649_
                                          (let ((_lambda-expr10652_
                                                 _lambda-expr1064710649_))
                                            (table-set!
                                             (gxc#current-compile-runtime-names)
                                             _lambda-expr10652_
                                             _eid10646_))
                                          '#f))
                                    (cons 'define
                                          (cons _eid10646_
                                                (cons (gxc#compile-e _L10479_)
                                                      '()))))))
                              _hd1050410632_)
                             (_g1049610624_ _g1049810627_))))
                     (_g1049610624_ _g1049810627_))))
              (_g1049410669_
               (lambda (_g1049810657_)
                 (if (gx#stx-pair? _g1049810657_)
                     (let ((_e1049910659_ (gx#stx-e _g1049810657_)))
                       (let ((_hd1050010662_ (##car _e1049910659_))
                             (_tl1050110664_ (##cdr _e1049910659_)))
                         (if (gx#stx-datum? _hd1050010662_)
                             (if (equal? (gx#stx-e _hd1050010662_) '#f)
                                 (if (gx#stx-null? _tl1050110664_)
                                     ((lambda () (gxc#compile-e _L10479_)))
                                     (_g1049510654_ _g1049810657_))
                                 (_g1049510654_ _g1049810657_))
                             (_g1049510654_ _g1049810657_))))
                     (_g1049510654_ _g1049810657_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1049410669_ _L10480_)))
                                             _hd1044410474_
                                             _hd1044110466_)
                                            (_g1043310450_ _g1043410453_))))
                                    (_g1043310450_ _g1043410453_))))
                            (_g1043310450_ _g1043410453_))))
                    (_g1043310450_ _g1043410453_)))))
        (_g1043210672_ _stx10431_))))
  (define gxc#generate-runtime-check-values
    (lambda (_vals10419_ _hd10420_)
      (let* ((_len10422_ (gx#stx-length _hd10420_))
             (_cmp10424_ (if (gx#stx-list? _hd10420_) 'fx= 'fx>=))
             (_errmsg10426_
              (string-append
               (if (gx#stx-list? _hd10420_)
                   '"Context expects "
                   '"Context expects at least ")
               (number->string _len10422_)
               '" values"))
             (_count10428_ (gxc#generate-runtime-temporary__0)))
        (if (if (not (gx#stx-list? _hd10420_)) (fx= _len10422_ '0) '#f)
            '#!void
            (cons 'let
                  (cons (cons (cons _count10428_
                                    (cons (cons 'values-count
                                                (cons _vals10419_ '()))
                                          '()))
                              '())
                        (cons (cons 'if
                                    (cons (cons 'not
                                                (cons (cons _cmp10424_
                                                            (cons _count10428_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _len10422_ '())))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons 'error
                                                      (cons _errmsg10426_
                                                            (cons _count10428_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))))
  (define gxc#generate-runtime-lambda%
    (lambda (_stx10352_)
      (let* ((_g1035410371_
              (lambda (_g1035510368_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1035510368_)))
             (_g1035310416_
              (lambda (_g1035510374_)
                (if (gx#stx-pair? _g1035510374_)
                    (let ((_e1035810376_ (gx#stx-e _g1035510374_)))
                      (let ((_hd1035910379_ (##car _e1035810376_))
                            (_tl1036010381_ (##cdr _e1035810376_)))
                        (if (gx#stx-pair? _tl1036010381_)
                            (let ((_e1036110384_ (gx#stx-e _tl1036010381_)))
                              (let ((_hd1036210387_ (##car _e1036110384_))
                                    (_tl1036310389_ (##cdr _e1036110384_)))
                                (if (gx#stx-pair? _tl1036310389_)
                                    (let ((_e1036410392_
                                           (gx#stx-e _tl1036310389_)))
                                      (let ((_hd1036510395_
                                             (##car _e1036410392_))
                                            (_tl1036610397_
                                             (##cdr _e1036410392_)))
                                        (if (gx#stx-null? _tl1036610397_)
                                            ((lambda (_L10400_ _L10401_)
                                               (cons 'lambda
                                                     (cons (gxc#generate-runtime-lambda-head
                                                            _L10401_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L10400_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd1036510395_
                                             _hd1036210387_)
                                            (_g1035410371_ _g1035510374_))))
                                    (_g1035410371_ _g1035510374_))))
                            (_g1035410371_ _g1035510374_))))
                    (_g1035410371_ _g1035510374_)))))
        (_g1035310416_ _stx10352_))))
  (define gxc#generate-runtime-lambda-head
    (lambda (_hd10350_)
      (gx#stx-map1 gxc#generate-runtime-binding-id* _hd10350_)))
  (define gxc#generate-runtime-case-lambda%
    (lambda (_stx8883_)
      (letrec ((_runtime-identifier=?8885_
                (lambda (_id-stx10341_ _sym10342_)
                  (let ((_bind1034310345_
                         (gx#resolve-identifier__0 _id-stx10341_)))
                    (if _bind1034310345_
                        (let ((_bind10348_ _bind1034310345_))
                          (eq? (##structure-ref
                                _bind10348_
                                '1
                                gx#binding::t
                                '#f)
                               _sym10342_))
                        '#f))))
               (_dispatch-case?8886_
                (lambda (_hd9571_ _body9572_)
                  (let* ((_form9574_ (cons _hd9571_ (cons _body9572_ '())))
                         (_g95799736_
                          (lambda (_g95809733_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g95809733_)))
                         (_g95789743_ (lambda (_g95809739_) ((lambda () '#f))))
                         (_g95779884_
                          (lambda (_g95809746_)
                            (if (gx#stx-pair? _g95809746_)
                                (let ((_e96969748_ (gx#stx-e _g95809746_)))
                                  (let ((_hd96979751_ (##car _e96969748_))
                                        (_tl96989753_ (##cdr _e96969748_)))
                                    (if (gx#stx-pair? _tl96989753_)
                                        (let ((_e96999756_
                                               (gx#stx-e _tl96989753_)))
                                          (let ((_hd97009759_
                                                 (##car _e96999756_))
                                                (_tl97019761_
                                                 (##cdr _e96999756_)))
                                            (if (gx#stx-pair? _hd97009759_)
                                                (let ((_e97029764_
                                                       (gx#stx-e
                                                        _hd97009759_)))
                                                  (let ((_hd97039767_
                                                         (##car _e97029764_))
                                                        (_tl97049769_
                                                         (##cdr _e97029764_)))
                                                    (if (gx#identifier?
                                                         _hd97039767_)
                                                        (if (gx#stx-eq?
                                                             '%#call
                                                             _hd97039767_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl97049769_)
                        (let ((_e97059772_ (gx#stx-e _tl97049769_)))
                          (let ((_hd97069775_ (##car _e97059772_))
                                (_tl97079777_ (##cdr _e97059772_)))
                            (if (gx#stx-pair? _hd97069775_)
                                (let ((_e97089780_ (gx#stx-e _hd97069775_)))
                                  (let ((_hd97099783_ (##car _e97089780_))
                                        (_tl97109785_ (##cdr _e97089780_)))
                                    (if (gx#identifier? _hd97099783_)
                                        (if (gx#stx-eq? '%#ref _hd97099783_)
                                            (if (gx#stx-pair? _tl97109785_)
                                                (let ((_e97119788_
                                                       (gx#stx-e
                                                        _tl97109785_)))
                                                  (let ((_hd97129791_
                                                         (##car _e97119788_))
                                                        (_tl97139793_
                                                         (##cdr _e97119788_)))
                                                    (if (gx#stx-null?
                                                         _tl97139793_)
                                                        (if (gx#stx-pair?
                                                             _tl97079777_)
                                                            (let ((_e97149796_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl97079777_)))
                      (let ((_hd97159799_ (##car _e97149796_))
                            (_tl97169801_ (##cdr _e97149796_)))
                        (if (gx#stx-pair? _hd97159799_)
                            (let ((_e97179804_ (gx#stx-e _hd97159799_)))
                              (let ((_hd97189807_ (##car _e97179804_))
                                    (_tl97199809_ (##cdr _e97179804_)))
                                (if (gx#identifier? _hd97189807_)
                                    (if (gx#stx-eq? '%#ref _hd97189807_)
                                        (if (gx#stx-pair? _tl97199809_)
                                            (let ((_e97209812_
                                                   (gx#stx-e _tl97199809_)))
                                              (let ((_hd97219815_
                                                     (##car _e97209812_))
                                                    (_tl97229817_
                                                     (##cdr _e97209812_)))
                                                (if (gx#stx-null? _tl97229817_)
                                                    (if (gx#stx-pair?
                                                         _tl97169801_)
                                                        (let ((_e97239820_
                                                               (gx#stx-e
                                                                _tl97169801_)))
                                                          (let ((_hd97249823_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e97239820_))
                        (_tl97259825_ (##cdr _e97239820_)))
                    (if (gx#stx-pair? _hd97249823_)
                        (let ((_e97269828_ (gx#stx-e _hd97249823_)))
                          (let ((_hd97279831_ (##car _e97269828_))
                                (_tl97289833_ (##cdr _e97269828_)))
                            (if (gx#identifier? _hd97279831_)
                                (if (gx#stx-eq? '%#ref _hd97279831_)
                                    (if (gx#stx-pair? _tl97289833_)
                                        (let ((_e97299836_
                                               (gx#stx-e _tl97289833_)))
                                          (let ((_hd97309839_
                                                 (##car _e97299836_))
                                                (_tl97319841_
                                                 (##cdr _e97299836_)))
                                            (if (gx#stx-null? _tl97319841_)
                                                (if (gx#stx-null? _tl97259825_)
                                                    (if (gx#stx-null?
                                                         _tl97019761_)
                                                        ((lambda (_L9844_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L9845_
                          _L9846_
                          _L9847_)
                   (if (if (gx#identifier? _L9847_)
                           (if (_runtime-identifier=?8885_ _L9846_ 'apply)
                               (if (gx#free-identifier=? _L9847_ _L9844_)
                                   (not (gx#free-identifier=? _L9845_ _L9847_))
                                   '#f)
                               '#f)
                           '#f)
                       '#t
                       (_g95789743_ _g95809746_)))
                 _hd97309839_
                 _hd97219815_
                 _hd97129791_
                 _hd96979751_)
                (_g95789743_ _g95809746_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g95789743_ _g95809746_))
                                                (_g95789743_ _g95809746_))))
                                        (_g95789743_ _g95809746_))
                                    (_g95789743_ _g95809746_))
                                (_g95789743_ _g95809746_))))
                        (_g95789743_ _g95809746_))))
                (_g95789743_ _g95809746_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g95789743_
                                                     _g95809746_))))
                                            (_g95789743_ _g95809746_))
                                        (_g95789743_ _g95809746_))
                                    (_g95789743_ _g95809746_))))
                            (_g95789743_ _g95809746_))))
                    (_g95789743_ _g95809746_))
                (_g95789743_ _g95809746_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g95789743_ _g95809746_))
                                            (_g95789743_ _g95809746_))
                                        (_g95789743_ _g95809746_))))
                                (_g95789743_ _g95809746_))))
                        (_g95789743_ _g95809746_))
                    (_g95789743_ _g95809746_))
                (_g95789743_ _g95809746_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g95789743_ _g95809746_))))
                                        (_g95789743_ _g95809746_))))
                                (_g95789743_ _g95809746_))))
                         (_g957610144_
                          (lambda (_g95809887_)
                            (if (gx#stx-pair? _g95809887_)
                                (let ((_e96329889_ (gx#stx-e _g95809887_)))
                                  (let ((_hd96339892_ (##car _e96329889_))
                                        (_tl96349894_ (##cdr _e96329889_)))
                                    (if (gx#stx-pair/null? _hd96339892_)
                                        (if (fx>= (gx#stx-length _hd96339892_)
                                                  '0)
                                            (let ((_g12080_
                                                   (gx#syntax-split-splice
                                                    _hd96339892_
                                                    '0)))
                                              (begin
                                                (let ((_g12081_
                                                       (values-count
                                                        _g12080_)))
                                                  (if (not (fx= _g12081_ 2))
                                                      (error "Context expects 2 values"
                                                             _g12081_)))
                                                (let ((_target96359897_
                                                       (values-ref _g12080_ 0))
                                                      (_tl96379899_
                                                       (values-ref
                                                        _g12080_
                                                        1)))
                                                  (letrec ((_loop96389902_
                                                            (lambda (_hd96369905_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _arg96429907_)
                      (if (gx#stx-pair? _hd96369905_)
                          (let ((_e96399910_ (gx#stx-e _hd96369905_)))
                            (let ((_lp-hd96409913_ (##car _e96399910_))
                                  (_lp-tl96419915_ (##cdr _e96399910_)))
                              (_loop96389902_
                               _lp-tl96419915_
                               (cons _lp-hd96409913_ _arg96429907_))))
                          (let ((_arg96439918_ (reverse _arg96429907_)))
                            (if (gx#stx-pair? _tl96349894_)
                                (let ((_e96449921_ (gx#stx-e _tl96349894_)))
                                  (let ((_hd96459924_ (##car _e96449921_))
                                        (_tl96469926_ (##cdr _e96449921_)))
                                    (if (gx#stx-pair? _hd96459924_)
                                        (let ((_e96479929_
                                               (gx#stx-e _hd96459924_)))
                                          (let ((_hd96489932_
                                                 (##car _e96479929_))
                                                (_tl96499934_
                                                 (##cdr _e96479929_)))
                                            (if (gx#identifier? _hd96489932_)
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd96489932_)
                                                    (if (gx#stx-pair?
                                                         _tl96499934_)
                                                        (let ((_e96509937_
                                                               (gx#stx-e
                                                                _tl96499934_)))
                                                          (let ((_hd96519940_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e96509937_))
                        (_tl96529942_ (##cdr _e96509937_)))
                    (if (gx#stx-pair? _hd96519940_)
                        (let ((_e96539945_ (gx#stx-e _hd96519940_)))
                          (let ((_hd96549948_ (##car _e96539945_))
                                (_tl96559950_ (##cdr _e96539945_)))
                            (if (gx#identifier? _hd96549948_)
                                (if (gx#stx-eq? '%#ref _hd96549948_)
                                    (if (gx#stx-pair? _tl96559950_)
                                        (let ((_e96569953_
                                               (gx#stx-e _tl96559950_)))
                                          (let ((_hd96579956_
                                                 (##car _e96569953_))
                                                (_tl96589958_
                                                 (##cdr _e96569953_)))
                                            (if (gx#stx-null? _tl96589958_)
                                                (if (gx#stx-pair? _tl96529942_)
                                                    (let ((_e96599961_
                                                           (gx#stx-e
                                                            _tl96529942_)))
                                                      (let ((_hd96609964_
                                                             (##car _e96599961_))
                                                            (_tl96619966_
                                                             (##cdr _e96599961_)))
                                                        (if (gx#stx-pair?
                                                             _hd96609964_)
                                                            (let ((_e96629969_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd96609964_)))
                      (let ((_hd96639972_ (##car _e96629969_))
                            (_tl96649974_ (##cdr _e96629969_)))
                        (if (gx#identifier? _hd96639972_)
                            (if (gx#stx-eq? '%#ref _hd96639972_)
                                (if (gx#stx-pair? _tl96649974_)
                                    (let ((_e96659977_
                                           (gx#stx-e _tl96649974_)))
                                      (let ((_hd96669980_ (##car _e96659977_))
                                            (_tl96679982_ (##cdr _e96659977_)))
                                        (if (gx#stx-null? _tl96679982_)
                                            (if (gx#stx-pair/null?
                                                 _tl96619966_)
                                                (if (fx>= (gx#stx-length
                                                           _tl96619966_)
                                                          '1)
                                                    (let ((_g12082_
                                                           (gx#syntax-split-splice
                                                            _tl96619966_
                                                            '1)))
                                                      (begin
                                                        (let ((_g12083_
                                                               (values-count
                                                                _g12082_)))
                                                          (if (not (fx= _g12083_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                2))
                      (error "Context expects 2 values" _g12083_)))
                (let ((_target96689985_ (values-ref _g12082_ 0))
                      (_tl96709987_ (values-ref _g12082_ 1)))
                  (if (gx#stx-pair? _tl96709987_)
                      (let ((_e96779990_ (gx#stx-e _tl96709987_)))
                        (let ((_hd96789993_ (##car _e96779990_))
                              (_tl96799995_ (##cdr _e96779990_)))
                          (if (gx#stx-pair? _hd96789993_)
                              (let ((_e96809998_ (gx#stx-e _hd96789993_)))
                                (let ((_hd968110001_ (##car _e96809998_))
                                      (_tl968210003_ (##cdr _e96809998_)))
                                  (if (gx#identifier? _hd968110001_)
                                      (if (gx#stx-eq? '%#ref _hd968110001_)
                                          (if (gx#stx-pair? _tl968210003_)
                                              (let ((_e968310006_
                                                     (gx#stx-e _tl968210003_)))
                                                (let ((_hd968410009_
                                                       (##car _e968310006_))
                                                      (_tl968510011_
                                                       (##cdr _e968310006_)))
                                                  (if (gx#stx-null?
                                                       _tl968510011_)
                                                      (if (gx#stx-null?
                                                           _tl96799995_)
                                                          (letrec ((_loop967110014_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd966910017_ _xarg967510019_)
                              (if (gx#stx-pair? _hd966910017_)
                                  (let ((_e967210022_
                                         (gx#stx-e _hd966910017_)))
                                    (let ((_lp-hd967310025_
                                           (##car _e967210022_))
                                          (_lp-tl967410027_
                                           (##cdr _e967210022_)))
                                      (if (gx#stx-pair? _lp-hd967310025_)
                                          (let ((_e968610030_
                                                 (gx#stx-e _lp-hd967310025_)))
                                            (let ((_hd968710033_
                                                   (##car _e968610030_))
                                                  (_tl968810035_
                                                   (##cdr _e968610030_)))
                                              (if (gx#identifier?
                                                   _hd968710033_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd968710033_)
                                                      (if (gx#stx-pair?
                                                           _tl968810035_)
                                                          (let ((_e968910038_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl968810035_)))
                    (let ((_hd969010041_ (##car _e968910038_))
                          (_tl969110043_ (##cdr _e968910038_)))
                      (if (gx#stx-null? _tl969110043_)
                          (_loop967110014_
                           _lp-tl967410027_
                           (cons _hd969010041_ _xarg967510019_))
                          (_g95779884_ _g95809887_))))
                  (_g95779884_ _g95809887_))
              (_g95779884_ _g95809887_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g95779884_ _g95809887_))))
                                          (_g95779884_ _g95809887_))))
                                  (let ((_xarg967610046_
                                         (reverse _xarg967510019_)))
                                    (if (gx#stx-null? _tl96469926_)
                                        ((lambda (_L10049_
                                                  _L10050_
                                                  _L10051_
                                                  _L10052_
                                                  _L10053_
                                                  _L10054_)
                                           (if (if (gx#identifier-list?
                                                    (begin
                                                      '#!void
                                                      (foldr1 (lambda (_g1009710100_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1009810102_)
                        (cons _g1009710100_ _g1009810102_))
                      '()
                      _L10054_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#identifier?
                                                        _L10053_)
                                                       (if (_runtime-identifier=?8885_
                                                            _L10052_
                                                            'apply)
                                                           (if (fx= (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '#!void
                                      (foldr1 (lambda (_g1010410107_
                                                       _g1010510109_)
                                                (cons _g1010410107_
                                                      _g1010510109_))
                                              '()
                                              _L10054_)))
                            (length (begin
                                      '#!void
                                      (foldr1 (lambda (_g1011110114_
                                                       _g1011210116_)
                                                (cons _g1011110114_
                                                      _g1011210116_))
                                              '()
                                              _L10050_))))
                       (if (andmap gx#free-identifier=?
                                   (begin
                                     '#!void
                                     (foldr1 (lambda (_g1011810121_
                                                      _g1011910123_)
                                               (cons _g1011810121_
                                                     _g1011910123_))
                                             '()
                                             _L10054_))
                                   (begin
                                     '#!void
                                     (foldr1 (lambda (_g1012510128_
                                                      _g1012610130_)
                                               (cons _g1012510128_
                                                     _g1012610130_))
                                             '()
                                             _L10050_)))
                           (if (gx#free-identifier=? _L10053_ _L10049_)
                               (not (find (lambda (_g1013210134_)
                                            (gx#free-identifier=?
                                             _g1013210134_
                                             _L10051_))
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g1013610139_
                                                             _g1013710141_)
                                                      (cons _g1013610139_
                                                            _g1013710141_))
                                                    (cons _L10053_ '())
                                                    _L10054_))))
                               '#f)
                           '#f)
                       '#f)
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#f)
                                               '#t
                                               (_g95779884_ _g95809887_)))
                                         _hd968410009_
                                         _xarg967610046_
                                         _hd96669980_
                                         _hd96579956_
                                         _tl96379899_
                                         _arg96439918_)
                                        (_g95779884_ _g95809887_)))))))
                    (_loop967110014_ _target96689985_ '()))
                  (_g95779884_ _g95809887_))
              (_g95779884_ _g95809887_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g95779884_ _g95809887_))
                                          (_g95779884_ _g95809887_))
                                      (_g95779884_ _g95809887_))))
                              (_g95779884_ _g95809887_))))
                      (_g95779884_ _g95809887_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g95779884_ _g95809887_))
                                                (_g95779884_ _g95809887_))
                                            (_g95779884_ _g95809887_))))
                                    (_g95779884_ _g95809887_))
                                (_g95779884_ _g95809887_))
                            (_g95779884_ _g95809887_))))
                    (_g95779884_ _g95809887_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g95779884_ _g95809887_))
                                                (_g95779884_ _g95809887_))))
                                        (_g95779884_ _g95809887_))
                                    (_g95779884_ _g95809887_))
                                (_g95779884_ _g95809887_))))
                        (_g95779884_ _g95809887_))))
                (_g95779884_ _g95809887_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g95779884_ _g95809887_))
                                                (_g95779884_ _g95809887_))))
                                        (_g95779884_ _g95809887_))))
                                (_g95779884_ _g95809887_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop96389902_
                                                     _target96359897_
                                                     '())))))
                                            (_g95779884_ _g95809887_))
                                        (_g95779884_ _g95809887_))))
                                (_g95779884_ _g95809887_))))
                         (_g957510338_
                          (lambda (_g958010147_)
                            (if (gx#stx-pair? _g958010147_)
                                (let ((_e958410149_ (gx#stx-e _g958010147_)))
                                  (let ((_hd958510152_ (##car _e958410149_))
                                        (_tl958610154_ (##cdr _e958410149_)))
                                    (if (gx#stx-pair/null? _hd958510152_)
                                        (if (fx>= (gx#stx-length _hd958510152_)
                                                  '0)
                                            (let ((_g12084_
                                                   (gx#syntax-split-splice
                                                    _hd958510152_
                                                    '0)))
                                              (begin
                                                (let ((_g12085_
                                                       (values-count
                                                        _g12084_)))
                                                  (if (not (fx= _g12085_ 2))
                                                      (error "Context expects 2 values"
                                                             _g12085_)))
                                                (let ((_target958710157_
                                                       (values-ref _g12084_ 0))
                                                      (_tl958910159_
                                                       (values-ref
                                                        _g12084_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl958910159_)
                                                      (letrec ((_loop959010162_
                                                                (lambda (_hd958810165_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _arg959410167_)
                          (if (gx#stx-pair? _hd958810165_)
                              (let ((_e959110170_ (gx#stx-e _hd958810165_)))
                                (let ((_lp-hd959210173_ (##car _e959110170_))
                                      (_lp-tl959310175_ (##cdr _e959110170_)))
                                  (_loop959010162_
                                   _lp-tl959310175_
                                   (cons _lp-hd959210173_ _arg959410167_))))
                              (let ((_arg959510178_ (reverse _arg959410167_)))
                                (if (gx#stx-pair? _tl958610154_)
                                    (let ((_e959610181_
                                           (gx#stx-e _tl958610154_)))
                                      (let ((_hd959710184_
                                             (##car _e959610181_))
                                            (_tl959810186_
                                             (##cdr _e959610181_)))
                                        (if (gx#stx-pair? _hd959710184_)
                                            (let ((_e959910189_
                                                   (gx#stx-e _hd959710184_)))
                                              (let ((_hd960010192_
                                                     (##car _e959910189_))
                                                    (_tl960110194_
                                                     (##cdr _e959910189_)))
                                                (if (gx#identifier?
                                                     _hd960010192_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd960010192_)
                                                        (if (gx#stx-pair?
                                                             _tl960110194_)
                                                            (let ((_e960210197_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl960110194_)))
                      (let ((_hd960310200_ (##car _e960210197_))
                            (_tl960410202_ (##cdr _e960210197_)))
                        (if (gx#stx-pair? _hd960310200_)
                            (let ((_e960510205_ (gx#stx-e _hd960310200_)))
                              (let ((_hd960610208_ (##car _e960510205_))
                                    (_tl960710210_ (##cdr _e960510205_)))
                                (if (gx#identifier? _hd960610208_)
                                    (if (gx#stx-eq? '%#ref _hd960610208_)
                                        (if (gx#stx-pair? _tl960710210_)
                                            (let ((_e960810213_
                                                   (gx#stx-e _tl960710210_)))
                                              (let ((_hd960910216_
                                                     (##car _e960810213_))
                                                    (_tl961010218_
                                                     (##cdr _e960810213_)))
                                                (if (gx#stx-null?
                                                     _tl961010218_)
                                                    (if (gx#stx-pair/null?
                                                         _tl960410202_)
                                                        (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl960410202_)
                          '0)
                    (let ((_g12086_ (gx#syntax-split-splice _tl960410202_ '0)))
                      (begin
                        (let ((_g12087_ (values-count _g12086_)))
                          (if (not (fx= _g12087_ 2))
                              (error "Context expects 2 values" _g12087_)))
                        (let ((_target961110221_ (values-ref _g12086_ 0))
                              (_tl961310223_ (values-ref _g12086_ 1)))
                          (if (gx#stx-null? _tl961310223_)
                              (letrec ((_loop961410226_
                                        (lambda (_hd961210229_ _xarg961810231_)
                                          (if (gx#stx-pair? _hd961210229_)
                                              (let ((_e961510234_
                                                     (gx#stx-e _hd961210229_)))
                                                (let ((_lp-hd961610237_
                                                       (##car _e961510234_))
                                                      (_lp-tl961710239_
                                                       (##cdr _e961510234_)))
                                                  (if (gx#stx-pair?
                                                       _lp-hd961610237_)
                                                      (let ((_e962010242_
                                                             (gx#stx-e
                                                              _lp-hd961610237_)))
                                                        (let ((_hd962110245_
                                                               (##car _e962010242_))
                                                              (_tl962210247_
                                                               (##cdr _e962010242_)))
                                                          (if (gx#identifier?
                                                               _hd962110245_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#ref
                           _hd962110245_)
                          (if (gx#stx-pair? _tl962210247_)
                              (let ((_e962310250_ (gx#stx-e _tl962210247_)))
                                (let ((_hd962410253_ (##car _e962310250_))
                                      (_tl962510255_ (##cdr _e962310250_)))
                                  (if (gx#stx-null? _tl962510255_)
                                      (_loop961410226_
                                       _lp-tl961710239_
                                       (cons _hd962410253_ _xarg961810231_))
                                      (_g957610144_ _g958010147_))))
                              (_g957610144_ _g958010147_))
                          (_g957610144_ _g958010147_))
                      (_g957610144_ _g958010147_))))
              (_g957610144_ _g958010147_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_xarg961910258_
                                                     (reverse _xarg961810231_)))
                                                (if (gx#stx-null?
                                                     _tl959810186_)
                                                    ((lambda (_L10261_
                                                              _L10262_
                                                              _L10263_)
                                                       (if (if (gx#identifier-list?
                                                                (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr1 (lambda (_g1029110294_ _g1029210296_)
                                    (cons _g1029110294_ _g1029210296_))
                                  '()
                                  _L10263_)))
                       (if (fx= (length (begin
                                          '#!void
                                          (foldr1 (lambda (_g1029810301_
                                                           _g1029910303_)
                                                    (cons _g1029810301_
                                                          _g1029910303_))
                                                  '()
                                                  _L10263_)))
                                (length (begin
                                          '#!void
                                          (foldr1 (lambda (_g1030510308_
                                                           _g1030610310_)
                                                    (cons _g1030510308_
                                                          _g1030610310_))
                                                  '()
                                                  _L10261_))))
                           (if (andmap gx#free-identifier=?
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g1031210315_
                                                          _g1031310317_)
                                                   (cons _g1031210315_
                                                         _g1031310317_))
                                                 '()
                                                 _L10263_))
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g1031910322_
                                                          _g1032010324_)
                                                   (cons _g1031910322_
                                                         _g1032010324_))
                                                 '()
                                                 _L10261_)))
                               (not (find (lambda (_g1032610328_)
                                            (gx#free-identifier=?
                                             _g1032610328_
                                             _L10262_))
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g1033010333_
                                                             _g1033110335_)
                                                      (cons _g1033010333_
                                                            _g1033110335_))
                                                    '()
                                                    _L10263_))))
                               '#f)
                           '#f)
                       '#f)
                   '#t
                   (_g957610144_ _g958010147_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _xarg961910258_
                                                     _hd960910216_
                                                     _arg959510178_)
                                                    (_g957610144_
                                                     _g958010147_)))))))
                                (_loop961410226_ _target961110221_ '()))
                              (_g957610144_ _g958010147_)))))
                    (_g957610144_ _g958010147_))
                (_g957610144_ _g958010147_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g957610144_
                                                     _g958010147_))))
                                            (_g957610144_ _g958010147_))
                                        (_g957610144_ _g958010147_))
                                    (_g957610144_ _g958010147_))))
                            (_g957610144_ _g958010147_))))
                    (_g957610144_ _g958010147_))
                (_g957610144_ _g958010147_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g957610144_
                                                     _g958010147_))))
                                            (_g957610144_ _g958010147_))))
                                    (_g957610144_ _g958010147_)))))))
                (_loop959010162_ _target958710157_ '()))
              (_g957610144_ _g958010147_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g957610144_ _g958010147_))
                                        (_g957610144_ _g958010147_))))
                                (_g957610144_ _g958010147_)))))
                    (_g957510338_ _form9574_))))
               (_dispatch-case-e8887_
                (lambda (_hd9035_ _body9036_)
                  (let* ((_form9038_ (cons _hd9035_ (cons _body9036_ '())))
                         (_g90429166_
                          (lambda (_g90439163_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g90439163_)))
                         (_g90419284_
                          (lambda (_g90439169_)
                            (if (gx#stx-pair? _g90439169_)
                                (let ((_e91329171_ (gx#stx-e _g90439169_)))
                                  (let ((_hd91339174_ (##car _e91329171_))
                                        (_tl91349176_ (##cdr _e91329171_)))
                                    (if (gx#stx-pair? _tl91349176_)
                                        (let ((_e91359179_
                                               (gx#stx-e _tl91349176_)))
                                          (let ((_hd91369182_
                                                 (##car _e91359179_))
                                                (_tl91379184_
                                                 (##cdr _e91359179_)))
                                            (if (gx#stx-pair? _hd91369182_)
                                                (let ((_e91389187_
                                                       (gx#stx-e
                                                        _hd91369182_)))
                                                  (let ((_hd91399190_
                                                         (##car _e91389187_))
                                                        (_tl91409192_
                                                         (##cdr _e91389187_)))
                                                    (if (gx#identifier?
                                                         _hd91399190_)
                                                        (if (gx#stx-eq?
                                                             '%#call
                                                             _hd91399190_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl91409192_)
                        (let ((_e91419195_ (gx#stx-e _tl91409192_)))
                          (let ((_hd91429198_ (##car _e91419195_))
                                (_tl91439200_ (##cdr _e91419195_)))
                            (if (gx#stx-pair? _hd91429198_)
                                (let ((_e91449203_ (gx#stx-e _hd91429198_)))
                                  (let ((_hd91459206_ (##car _e91449203_))
                                        (_tl91469208_ (##cdr _e91449203_)))
                                    (if (gx#identifier? _hd91459206_)
                                        (if (gx#stx-eq? '%#ref _hd91459206_)
                                            (if (gx#stx-pair? _tl91469208_)
                                                (let ((_e91479211_
                                                       (gx#stx-e
                                                        _tl91469208_)))
                                                  (let ((_hd91489214_
                                                         (##car _e91479211_))
                                                        (_tl91499216_
                                                         (##cdr _e91479211_)))
                                                    (if (gx#stx-null?
                                                         _tl91499216_)
                                                        (if (gx#stx-pair?
                                                             _tl91439200_)
                                                            (let ((_e91509219_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl91439200_)))
                      (let ((_hd91519222_ (##car _e91509219_))
                            (_tl91529224_ (##cdr _e91509219_)))
                        (if (gx#stx-pair? _hd91519222_)
                            (let ((_e91539227_ (gx#stx-e _hd91519222_)))
                              (let ((_hd91549230_ (##car _e91539227_))
                                    (_tl91559232_ (##cdr _e91539227_)))
                                (if (gx#identifier? _hd91549230_)
                                    (if (gx#stx-eq? '%#ref _hd91549230_)
                                        (if (gx#stx-pair? _tl91559232_)
                                            (let ((_e91569235_
                                                   (gx#stx-e _tl91559232_)))
                                              (let ((_hd91579238_
                                                     (##car _e91569235_))
                                                    (_tl91589240_
                                                     (##cdr _e91569235_)))
                                                (if (gx#stx-null? _tl91589240_)
                                                    (if (gx#stx-pair?
                                                         _tl91529224_)
                                                        (let ((_e91599243_
                                                               (gx#stx-e
                                                                _tl91529224_)))
                                                          (let ((_hd91609246_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e91599243_))
                        (_tl91619248_ (##cdr _e91599243_)))
                    (if (gx#stx-null? _tl91619248_)
                        (if (gx#stx-null? _tl91379184_)
                            ((lambda (_L9251_ _L9252_ _L9253_)
                               (gxc#compile-e
                                (cons (gx#datum->syntax__0 '#f '%#ref)
                                      (cons _L9251_ '()))))
                             _hd91579238_
                             _hd91489214_
                             _hd91339174_)
                            (_g90429166_ _g90439169_))
                        (_g90429166_ _g90439169_))))
                (_g90429166_ _g90439169_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g90429166_
                                                     _g90439169_))))
                                            (_g90429166_ _g90439169_))
                                        (_g90429166_ _g90439169_))
                                    (_g90429166_ _g90439169_))))
                            (_g90429166_ _g90439169_))))
                    (_g90429166_ _g90439169_))
                (_g90429166_ _g90439169_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g90429166_ _g90439169_))
                                            (_g90429166_ _g90439169_))
                                        (_g90429166_ _g90439169_))))
                                (_g90429166_ _g90439169_))))
                        (_g90429166_ _g90439169_))
                    (_g90429166_ _g90439169_))
                (_g90429166_ _g90439169_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g90429166_ _g90439169_))))
                                        (_g90429166_ _g90439169_))))
                                (_g90429166_ _g90439169_))))
                         (_g90409420_
                          (lambda (_g90439287_)
                            (if (gx#stx-pair? _g90439287_)
                                (let ((_e90939289_ (gx#stx-e _g90439287_)))
                                  (let ((_hd90949292_ (##car _e90939289_))
                                        (_tl90959294_ (##cdr _e90939289_)))
                                    (if (gx#stx-pair/null? _hd90949292_)
                                        (if (fx>= (gx#stx-length _hd90949292_)
                                                  '0)
                                            (let ((_g12088_
                                                   (gx#syntax-split-splice
                                                    _hd90949292_
                                                    '0)))
                                              (begin
                                                (let ((_g12089_
                                                       (values-count
                                                        _g12088_)))
                                                  (if (not (fx= _g12089_ 2))
                                                      (error "Context expects 2 values"
                                                             _g12089_)))
                                                (let ((_target90969297_
                                                       (values-ref _g12088_ 0))
                                                      (_tl90989299_
                                                       (values-ref
                                                        _g12088_
                                                        1)))
                                                  (letrec ((_loop90999302_
                                                            (lambda (_hd90979305_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _arg91039307_)
                      (if (gx#stx-pair? _hd90979305_)
                          (let ((_e91009310_ (gx#stx-e _hd90979305_)))
                            (let ((_lp-hd91019313_ (##car _e91009310_))
                                  (_lp-tl91029315_ (##cdr _e91009310_)))
                              (_loop90999302_
                               _lp-tl91029315_
                               (cons _lp-hd91019313_ _arg91039307_))))
                          (let ((_arg91049318_ (reverse _arg91039307_)))
                            (if (gx#stx-pair? _tl90959294_)
                                (let ((_e91059321_ (gx#stx-e _tl90959294_)))
                                  (let ((_hd91069324_ (##car _e91059321_))
                                        (_tl91079326_ (##cdr _e91059321_)))
                                    (if (gx#stx-pair? _hd91069324_)
                                        (let ((_e91089329_
                                               (gx#stx-e _hd91069324_)))
                                          (let ((_hd91099332_
                                                 (##car _e91089329_))
                                                (_tl91109334_
                                                 (##cdr _e91089329_)))
                                            (if (gx#identifier? _hd91099332_)
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd91099332_)
                                                    (if (gx#stx-pair?
                                                         _tl91109334_)
                                                        (let ((_e91119337_
                                                               (gx#stx-e
                                                                _tl91109334_)))
                                                          (let ((_hd91129340_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e91119337_))
                        (_tl91139342_ (##cdr _e91119337_)))
                    (if (gx#stx-pair? _hd91129340_)
                        (let ((_e91149345_ (gx#stx-e _hd91129340_)))
                          (let ((_hd91159348_ (##car _e91149345_))
                                (_tl91169350_ (##cdr _e91149345_)))
                            (if (gx#identifier? _hd91159348_)
                                (if (gx#stx-eq? '%#ref _hd91159348_)
                                    (if (gx#stx-pair? _tl91169350_)
                                        (let ((_e91179353_
                                               (gx#stx-e _tl91169350_)))
                                          (let ((_hd91189356_
                                                 (##car _e91179353_))
                                                (_tl91199358_
                                                 (##cdr _e91179353_)))
                                            (if (gx#stx-null? _tl91199358_)
                                                (if (gx#stx-pair? _tl91139342_)
                                                    (let ((_e91209361_
                                                           (gx#stx-e
                                                            _tl91139342_)))
                                                      (let ((_hd91219364_
                                                             (##car _e91209361_))
                                                            (_tl91229366_
                                                             (##cdr _e91209361_)))
                                                        (if (gx#stx-pair?
                                                             _hd91219364_)
                                                            (let ((_e91239369_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd91219364_)))
                      (let ((_hd91249372_ (##car _e91239369_))
                            (_tl91259374_ (##cdr _e91239369_)))
                        (if (gx#identifier? _hd91249372_)
                            (if (gx#stx-eq? '%#ref _hd91249372_)
                                (if (gx#stx-pair? _tl91259374_)
                                    (let ((_e91269377_
                                           (gx#stx-e _tl91259374_)))
                                      (let ((_hd91279380_ (##car _e91269377_))
                                            (_tl91289382_ (##cdr _e91269377_)))
                                        (if (gx#stx-null? _tl91289382_)
                                            (if (gx#stx-null? _tl91079326_)
                                                ((lambda (_L9385_
                                                          _L9386_
                                                          _L9387_
                                                          _L9388_)
                                                   (gxc#compile-e
                                                    (cons (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)
                                                          (cons _L9385_ '()))))
                                                 _hd91279380_
                                                 _hd91189356_
                                                 _tl90989299_
                                                 _arg91049318_)
                                                (_g90419284_ _g90439287_))
                                            (_g90419284_ _g90439287_))))
                                    (_g90419284_ _g90439287_))
                                (_g90419284_ _g90439287_))
                            (_g90419284_ _g90439287_))))
                    (_g90419284_ _g90439287_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g90419284_ _g90439287_))
                                                (_g90419284_ _g90439287_))))
                                        (_g90419284_ _g90439287_))
                                    (_g90419284_ _g90439287_))
                                (_g90419284_ _g90439287_))))
                        (_g90419284_ _g90439287_))))
                (_g90419284_ _g90439287_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g90419284_ _g90439287_))
                                                (_g90419284_ _g90439287_))))
                                        (_g90419284_ _g90439287_))))
                                (_g90419284_ _g90439287_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop90999302_
                                                     _target90969297_
                                                     '())))))
                                            (_g90419284_ _g90439287_))
                                        (_g90419284_ _g90439287_))))
                                (_g90419284_ _g90439287_))))
                         (_g90399568_
                          (lambda (_g90439423_)
                            (if (gx#stx-pair? _g90439423_)
                                (let ((_e90479425_ (gx#stx-e _g90439423_)))
                                  (let ((_hd90489428_ (##car _e90479425_))
                                        (_tl90499430_ (##cdr _e90479425_)))
                                    (if (gx#stx-pair/null? _hd90489428_)
                                        (if (fx>= (gx#stx-length _hd90489428_)
                                                  '0)
                                            (let ((_g12090_
                                                   (gx#syntax-split-splice
                                                    _hd90489428_
                                                    '0)))
                                              (begin
                                                (let ((_g12091_
                                                       (values-count
                                                        _g12090_)))
                                                  (if (not (fx= _g12091_ 2))
                                                      (error "Context expects 2 values"
                                                             _g12091_)))
                                                (let ((_target90509433_
                                                       (values-ref _g12090_ 0))
                                                      (_tl90529435_
                                                       (values-ref
                                                        _g12090_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl90529435_)
                                                      (letrec ((_loop90539438_
                                                                (lambda (_hd90519441_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _arg90579443_)
                          (if (gx#stx-pair? _hd90519441_)
                              (let ((_e90549446_ (gx#stx-e _hd90519441_)))
                                (let ((_lp-hd90559449_ (##car _e90549446_))
                                      (_lp-tl90569451_ (##cdr _e90549446_)))
                                  (_loop90539438_
                                   _lp-tl90569451_
                                   (cons _lp-hd90559449_ _arg90579443_))))
                              (let ((_arg90589454_ (reverse _arg90579443_)))
                                (if (gx#stx-pair? _tl90499430_)
                                    (let ((_e90599457_
                                           (gx#stx-e _tl90499430_)))
                                      (let ((_hd90609460_ (##car _e90599457_))
                                            (_tl90619462_ (##cdr _e90599457_)))
                                        (if (gx#stx-pair? _hd90609460_)
                                            (let ((_e90629465_
                                                   (gx#stx-e _hd90609460_)))
                                              (let ((_hd90639468_
                                                     (##car _e90629465_))
                                                    (_tl90649470_
                                                     (##cdr _e90629465_)))
                                                (if (gx#identifier?
                                                     _hd90639468_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd90639468_)
                                                        (if (gx#stx-pair?
                                                             _tl90649470_)
                                                            (let ((_e90659473_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl90649470_)))
                      (let ((_hd90669476_ (##car _e90659473_))
                            (_tl90679478_ (##cdr _e90659473_)))
                        (if (gx#stx-pair? _hd90669476_)
                            (let ((_e90689481_ (gx#stx-e _hd90669476_)))
                              (let ((_hd90699484_ (##car _e90689481_))
                                    (_tl90709486_ (##cdr _e90689481_)))
                                (if (gx#identifier? _hd90699484_)
                                    (if (gx#stx-eq? '%#ref _hd90699484_)
                                        (if (gx#stx-pair? _tl90709486_)
                                            (let ((_e90719489_
                                                   (gx#stx-e _tl90709486_)))
                                              (let ((_hd90729492_
                                                     (##car _e90719489_))
                                                    (_tl90739494_
                                                     (##cdr _e90719489_)))
                                                (if (gx#stx-null? _tl90739494_)
                                                    (if (gx#stx-pair/null?
                                                         _tl90679478_)
                                                        (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl90679478_)
                          '0)
                    (let ((_g12092_ (gx#syntax-split-splice _tl90679478_ '0)))
                      (begin
                        (let ((_g12093_ (values-count _g12092_)))
                          (if (not (fx= _g12093_ 2))
                              (error "Context expects 2 values" _g12093_)))
                        (let ((_target90749497_ (values-ref _g12092_ 0))
                              (_tl90769499_ (values-ref _g12092_ 1)))
                          (if (gx#stx-null? _tl90769499_)
                              (letrec ((_loop90779502_
                                        (lambda (_hd90759505_ _xarg90819507_)
                                          (if (gx#stx-pair? _hd90759505_)
                                              (let ((_e90789510_
                                                     (gx#stx-e _hd90759505_)))
                                                (let ((_lp-hd90799513_
                                                       (##car _e90789510_))
                                                      (_lp-tl90809515_
                                                       (##cdr _e90789510_)))
                                                  (if (gx#stx-pair?
                                                       _lp-hd90799513_)
                                                      (let ((_e90839518_
                                                             (gx#stx-e
                                                              _lp-hd90799513_)))
                                                        (let ((_hd90849521_
                                                               (##car _e90839518_))
                                                              (_tl90859523_
                                                               (##cdr _e90839518_)))
                                                          (if (gx#identifier?
                                                               _hd90849521_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#ref
                           _hd90849521_)
                          (if (gx#stx-pair? _tl90859523_)
                              (let ((_e90869526_ (gx#stx-e _tl90859523_)))
                                (let ((_hd90879529_ (##car _e90869526_))
                                      (_tl90889531_ (##cdr _e90869526_)))
                                  (if (gx#stx-null? _tl90889531_)
                                      (_loop90779502_
                                       _lp-tl90809515_
                                       (cons _hd90879529_ _xarg90819507_))
                                      (_g90409420_ _g90439423_))))
                              (_g90409420_ _g90439423_))
                          (_g90409420_ _g90439423_))
                      (_g90409420_ _g90439423_))))
              (_g90409420_ _g90439423_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_xarg90829534_
                                                     (reverse _xarg90819507_)))
                                                (if (gx#stx-null? _tl90619462_)
                                                    ((lambda (_L9537_
                                                              _L9538_
                                                              _L9539_)
                                                       (gxc#compile-e
                                                        (cons (gx#datum->syntax__0
                                                               '#f
                                                               '%#ref)
                                                              (cons _L9538_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _xarg90829534_
                                                     _hd90729492_
                                                     _arg90589454_)
                                                    (_g90409420_
                                                     _g90439423_)))))))
                                (_loop90779502_ _target90749497_ '()))
                              (_g90409420_ _g90439423_)))))
                    (_g90409420_ _g90439423_))
                (_g90409420_ _g90439423_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g90409420_
                                                     _g90439423_))))
                                            (_g90409420_ _g90439423_))
                                        (_g90409420_ _g90439423_))
                                    (_g90409420_ _g90439423_))))
                            (_g90409420_ _g90439423_))))
                    (_g90409420_ _g90439423_))
                (_g90409420_ _g90439423_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g90409420_
                                                     _g90439423_))))
                                            (_g90409420_ _g90439423_))))
                                    (_g90409420_ _g90439423_)))))))
                (_loop90539438_ _target90509433_ '()))
              (_g90409420_ _g90439423_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g90409420_ _g90439423_))
                                        (_g90409420_ _g90439423_))))
                                (_g90409420_ _g90439423_)))))
                    (_g90399568_ _form9038_))))
               (_generate18888_
                (lambda (_args9023_ _arglen9024_ _hd9025_ _body9026_)
                  (let* ((_len9028_ (gx#stx-length _hd9025_))
                         (_condition9030_
                          (if (gx#stx-list? _hd9025_)
                              (cons 'fx=
                                    (cons _arglen9024_ (cons _len9028_ '())))
                              (if (> _len9028_ '0)
                                  (cons 'fx>=
                                        (cons _arglen9024_
                                              (cons _len9028_ '())))
                                  '#t)))
                         (_dispatch9032_
                          (if (_dispatch-case?8886_ _hd9025_ _body9026_)
                              (_dispatch-case-e8887_ _hd9025_ _body9026_)
                              (cons 'lambda
                                    (cons (gxc#generate-runtime-lambda-head
                                           _hd9025_)
                                          (cons (gxc#compile-e _body9026_)
                                                '()))))))
                    (cons _condition9030_
                          (cons (cons 'apply
                                      (cons _dispatch9032_
                                            (cons _args9023_ '())))
                                '()))))))
        (let* ((_g88908918_
                (lambda (_g88918915_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g88918915_)))
               (_g88899020_
                (lambda (_g88918921_)
                  (if (gx#stx-pair? _g88918921_)
                      (let ((_e88948923_ (gx#stx-e _g88918921_)))
                        (let ((_hd88958926_ (##car _e88948923_))
                              (_tl88968928_ (##cdr _e88948923_)))
                          (if (gx#stx-pair/null? _tl88968928_)
                              (if (fx>= (gx#stx-length _tl88968928_) '0)
                                  (let ((_g12094_
                                         (gx#syntax-split-splice
                                          _tl88968928_
                                          '0)))
                                    (begin
                                      (let ((_g12095_ (values-count _g12094_)))
                                        (if (not (fx= _g12095_ 2))
                                            (error "Context expects 2 values"
                                                   _g12095_)))
                                      (let ((_target88978931_
                                             (values-ref _g12094_ 0))
                                            (_tl88998933_
                                             (values-ref _g12094_ 1)))
                                        (if (gx#stx-null? _tl88998933_)
                                            (letrec ((_loop89008936_
                                                      (lambda (_hd88988939_
                                                               _body89048941_
                                                               _hd89058943_)
                                                        (if (gx#stx-pair?
                                                             _hd88988939_)
                                                            (let ((_e89018946_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd88988939_)))
                      (let ((_lp-hd89028949_ (##car _e89018946_))
                            (_lp-tl89038951_ (##cdr _e89018946_)))
                        (if (gx#stx-pair? _lp-hd89028949_)
                            (let ((_e89088954_ (gx#stx-e _lp-hd89028949_)))
                              (let ((_hd89098957_ (##car _e89088954_))
                                    (_tl89108959_ (##cdr _e89088954_)))
                                (if (gx#stx-pair? _tl89108959_)
                                    (let ((_e89118962_
                                           (gx#stx-e _tl89108959_)))
                                      (let ((_hd89128965_ (##car _e89118962_))
                                            (_tl89138967_ (##cdr _e89118962_)))
                                        (if (gx#stx-null? _tl89138967_)
                                            (_loop89008936_
                                             _lp-tl89038951_
                                             (cons _hd89128965_ _body89048941_)
                                             (cons _hd89098957_ _hd89058943_))
                                            (_g88908918_ _g88918921_))))
                                    (_g88908918_ _g88918921_))))
                            (_g88908918_ _g88918921_))))
                    (let ((_body89068970_ (reverse _body89048941_))
                          (_hd89078972_ (reverse _hd89058943_)))
                      ((lambda (_L8975_ _L8976_)
                         (let ((_args8995_ (gxc#generate-runtime-temporary__0))
                               (_arglen8996_
                                (gxc#generate-runtime-temporary__0))
                               (_name8997_
                                (let ((_$e8992_
                                       (table-ref
                                        (gxc#current-compile-runtime-names)
                                        _stx8883_
                                        '#f)))
                                  (if _$e8992_
                                      _$e8992_
                                      ''case-lambda-dispatch))))
                           (cons 'lambda
                                 (cons _args8995_
                                       (cons (cons 'let
                                                   (cons (cons (cons _arglen8996_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons 'length (cons _args8995_ '())) '()))
                       '())
                 (cons (cons 'cond
                             (foldr1 cons
                                     (cons (cons 'else
                                                 (cons (cons '##raise-wrong-number-of-arguments-exception
                                                             (cons _name8997_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _args8995_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (map (lambda (_g89989001_ _g89999003_)
                                            (_generate18888_
                                             _args8995_
                                             _arglen8996_
                                             _g89989001_
                                             _g89999003_))
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g90059008_
                                                             _g90069010_)
                                                      (cons _g90059008_
                                                            _g90069010_))
                                                    '()
                                                    _L8976_))
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g90129015_
                                                             _g90139017_)
                                                      (cons _g90129015_
                                                            _g90139017_))
                                                    '()
                                                    _L8975_)))))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))))
                       _body89068970_
                       _hd89078972_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop89008936_
                                               _target88978931_
                                               '()
                                               '()))
                                            (_g88908918_ _g88918921_)))))
                                  (_g88908918_ _g88918921_))
                              (_g88908918_ _g88918921_))))
                      (_g88908918_ _g88918921_)))))
          (_g88899020_ _stx8883_)))))
  (begin
    (define gxc#generate-runtime-let-values%__%
      (lambda (_stx7948_ _compiled-body?7949_)
        (letrec ((_generate-simple7951_
                  (lambda (_hd8870_ _body8871_)
                    (_coalesce-let*7952_
                     (gxc#generate-runtime-simple-let
                      'let
                      _hd8870_
                      _body8871_
                      _compiled-body?7949_))))
                 (_coalesce-let*7952_
                  (lambda (_code8254_)
                    (let* ((_g82598394_
                            (lambda (_g82608391_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g82608391_)))
                           (_g82588401_
                            (lambda (_g82608397_) ((lambda () _code8254_))))
                           (_g82578571_
                            (lambda (_g82608404_)
                              (if (gx#stx-pair? _g82608404_)
                                  (let ((_e83488406_ (gx#stx-e _g82608404_)))
                                    (let ((_hd83498409_ (##car _e83488406_))
                                          (_tl83508411_ (##cdr _e83488406_)))
                                      (if (gx#identifier? _hd83498409_)
                                          (if (gx#stx-eq? 'let _hd83498409_)
                                              (if (gx#stx-pair? _tl83508411_)
                                                  (let ((_e83518414_
                                                         (gx#stx-e
                                                          _tl83508411_)))
                                                    (let ((_hd83528417_
                                                           (##car _e83518414_))
                                                          (_tl83538419_
                                                           (##cdr _e83518414_)))
                                                      (if (gx#stx-pair?
                                                           _hd83528417_)
                                                          (let ((_e83548422_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd83528417_)))
                    (let ((_hd83558425_ (##car _e83548422_))
                          (_tl83568427_ (##cdr _e83548422_)))
                      (if (gx#stx-pair? _hd83558425_)
                          (let ((_e83578430_ (gx#stx-e _hd83558425_)))
                            (let ((_hd83588433_ (##car _e83578430_))
                                  (_tl83598435_ (##cdr _e83578430_)))
                              (if (gx#stx-pair? _tl83598435_)
                                  (let ((_e83608438_ (gx#stx-e _tl83598435_)))
                                    (let ((_hd83618441_ (##car _e83608438_))
                                          (_tl83628443_ (##cdr _e83608438_)))
                                      (if (gx#stx-null? _tl83628443_)
                                          (if (gx#stx-null? _tl83568427_)
                                              (if (gx#stx-pair? _tl83538419_)
                                                  (let ((_e83638446_
                                                         (gx#stx-e
                                                          _tl83538419_)))
                                                    (let ((_hd83648449_
                                                           (##car _e83638446_))
                                                          (_tl83658451_
                                                           (##cdr _e83638446_)))
                                                      (if (gx#stx-pair?
                                                           _hd83648449_)
                                                          (let ((_e83668454_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd83648449_)))
                    (let ((_hd83678457_ (##car _e83668454_))
                          (_tl83688459_ (##cdr _e83668454_)))
                      (if (gx#identifier? _hd83678457_)
                          (if (gx#stx-eq? 'let* _hd83678457_)
                              (if (gx#stx-pair? _tl83688459_)
                                  (let ((_e83698462_ (gx#stx-e _tl83688459_)))
                                    (let ((_hd83708465_ (##car _e83698462_))
                                          (_tl83718467_ (##cdr _e83698462_)))
                                      (if (gx#stx-pair/null? _hd83708465_)
                                          (if (fx>= (gx#stx-length
                                                     _hd83708465_)
                                                    '0)
                                              (let ((_g12096_
                                                     (gx#syntax-split-splice
                                                      _hd83708465_
                                                      '0)))
                                                (begin
                                                  (let ((_g12097_
                                                         (values-count
                                                          _g12096_)))
                                                    (if (not (fx= _g12097_ 2))
                                                        (error "Context expects 2 values"
                                                               _g12097_)))
                                                  (let ((_target83728470_
                                                         (values-ref
                                                          _g12096_
                                                          0))
                                                        (_tl83748472_
                                                         (values-ref
                                                          _g12096_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl83748472_)
                                                        (letrec ((_loop83758475_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd83738478_ _bind83798480_)
                            (if (gx#stx-pair? _hd83738478_)
                                (let ((_e83768483_ (gx#stx-e _hd83738478_)))
                                  (let ((_lp-hd83778486_ (##car _e83768483_))
                                        (_lp-tl83788488_ (##cdr _e83768483_)))
                                    (_loop83758475_
                                     _lp-tl83788488_
                                     (cons _lp-hd83778486_ _bind83798480_))))
                                (let ((_bind83808491_
                                       (reverse _bind83798480_)))
                                  (if (gx#stx-pair/null? _tl83718467_)
                                      (if (fx>= (gx#stx-length _tl83718467_)
                                                '0)
                                          (let ((_g12098_
                                                 (gx#syntax-split-splice
                                                  _tl83718467_
                                                  '0)))
                                            (begin
                                              (let ((_g12099_
                                                     (values-count _g12098_)))
                                                (if (not (fx= _g12099_ 2))
                                                    (error "Context expects 2 values"
                                                           _g12099_)))
                                              (let ((_target83818494_
                                                     (values-ref _g12098_ 0))
                                                    (_tl83838496_
                                                     (values-ref _g12098_ 1)))
                                                (if (gx#stx-null? _tl83838496_)
                                                    (letrec ((_loop83848499_
                                                              (lambda (_hd83828502_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body83888504_)
                        (if (gx#stx-pair? _hd83828502_)
                            (let ((_e83858507_ (gx#stx-e _hd83828502_)))
                              (let ((_lp-hd83868510_ (##car _e83858507_))
                                    (_lp-tl83878512_ (##cdr _e83858507_)))
                                (_loop83848499_
                                 _lp-tl83878512_
                                 (cons _lp-hd83868510_ _body83888504_))))
                            (let ((_body83898515_ (reverse _body83888504_)))
                              (if (gx#stx-null? _tl83658451_)
                                  ((lambda (_L8518_ _L8519_ _L8520_ _L8521_)
                                     (cons 'let*
                                           (cons (cons (cons _L8521_
                                                             (cons _L8520_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (begin
                 '#!void
                 (foldr1 (lambda (_g85568559_ _g85578561_)
                           (cons _g85568559_ _g85578561_))
                         '()
                         _L8519_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g85638566_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g85648568_)
                     (cons _g85638566_ _g85648568_))
                   '()
                   _L8518_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _body83898515_
                                   _bind83808491_
                                   _hd83618441_
                                   _hd83588433_)
                                  (_g82588401_ _g82608404_)))))))
              (_loop83848499_ _target83818494_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g82588401_
                                                     _g82608404_)))))
                                          (_g82588401_ _g82608404_))
                                      (_g82588401_ _g82608404_)))))))
                  (_loop83758475_ _target83728470_ '()))
                (_g82588401_ _g82608404_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g82588401_ _g82608404_))
                                          (_g82588401_ _g82608404_))))
                                  (_g82588401_ _g82608404_))
                              (_g82588401_ _g82608404_))
                          (_g82588401_ _g82608404_))))
                  (_g82588401_ _g82608404_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g82588401_ _g82608404_))
                                              (_g82588401_ _g82608404_))
                                          (_g82588401_ _g82608404_))))
                                  (_g82588401_ _g82608404_))))
                          (_g82588401_ _g82608404_))))
                  (_g82588401_ _g82608404_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g82588401_ _g82608404_))
                                              (_g82588401_ _g82608404_))
                                          (_g82588401_ _g82608404_))))
                                  (_g82588401_ _g82608404_))))
                           (_g82568736_
                            (lambda (_g82608574_)
                              (if (gx#stx-pair? _g82608574_)
                                  (let ((_e83028576_ (gx#stx-e _g82608574_)))
                                    (let ((_hd83038579_ (##car _e83028576_))
                                          (_tl83048581_ (##cdr _e83028576_)))
                                      (if (gx#identifier? _hd83038579_)
                                          (if (gx#stx-eq? 'let _hd83038579_)
                                              (if (gx#stx-pair? _tl83048581_)
                                                  (let ((_e83058584_
                                                         (gx#stx-e
                                                          _tl83048581_)))
                                                    (let ((_hd83068587_
                                                           (##car _e83058584_))
                                                          (_tl83078589_
                                                           (##cdr _e83058584_)))
                                                      (if (gx#stx-pair?
                                                           _hd83068587_)
                                                          (let ((_e83088592_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd83068587_)))
                    (let ((_hd83098595_ (##car _e83088592_))
                          (_tl83108597_ (##cdr _e83088592_)))
                      (if (gx#stx-pair? _hd83098595_)
                          (let ((_e83118600_ (gx#stx-e _hd83098595_)))
                            (let ((_hd83128603_ (##car _e83118600_))
                                  (_tl83138605_ (##cdr _e83118600_)))
                              (if (gx#stx-pair? _tl83138605_)
                                  (let ((_e83148608_ (gx#stx-e _tl83138605_)))
                                    (let ((_hd83158611_ (##car _e83148608_))
                                          (_tl83168613_ (##cdr _e83148608_)))
                                      (if (gx#stx-null? _tl83168613_)
                                          (if (gx#stx-null? _tl83108597_)
                                              (if (gx#stx-pair? _tl83078589_)
                                                  (let ((_e83178616_
                                                         (gx#stx-e
                                                          _tl83078589_)))
                                                    (let ((_hd83188619_
                                                           (##car _e83178616_))
                                                          (_tl83198621_
                                                           (##cdr _e83178616_)))
                                                      (if (gx#stx-pair?
                                                           _hd83188619_)
                                                          (let ((_e83208624_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd83188619_)))
                    (let ((_hd83218627_ (##car _e83208624_))
                          (_tl83228629_ (##cdr _e83208624_)))
                      (if (gx#identifier? _hd83218627_)
                          (if (gx#stx-eq? 'let _hd83218627_)
                              (if (gx#stx-pair? _tl83228629_)
                                  (let ((_e83238632_ (gx#stx-e _tl83228629_)))
                                    (let ((_hd83248635_ (##car _e83238632_))
                                          (_tl83258637_ (##cdr _e83238632_)))
                                      (if (gx#stx-pair? _hd83248635_)
                                          (let ((_e83268640_
                                                 (gx#stx-e _hd83248635_)))
                                            (let ((_hd83278643_
                                                   (##car _e83268640_))
                                                  (_tl83288645_
                                                   (##cdr _e83268640_)))
                                              (if (gx#stx-pair? _hd83278643_)
                                                  (let ((_e83298648_
                                                         (gx#stx-e
                                                          _hd83278643_)))
                                                    (let ((_hd83308651_
                                                           (##car _e83298648_))
                                                          (_tl83318653_
                                                           (##cdr _e83298648_)))
                                                      (if (gx#stx-pair?
                                                           _tl83318653_)
                                                          (let ((_e83328656_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl83318653_)))
                    (let ((_hd83338659_ (##car _e83328656_))
                          (_tl83348661_ (##cdr _e83328656_)))
                      (if (gx#stx-null? _tl83348661_)
                          (if (gx#stx-null? _tl83288645_)
                              (if (gx#stx-pair/null? _tl83258637_)
                                  (if (fx>= (gx#stx-length _tl83258637_) '0)
                                      (let ((_g12100_
                                             (gx#syntax-split-splice
                                              _tl83258637_
                                              '0)))
                                        (begin
                                          (let ((_g12101_
                                                 (values-count _g12100_)))
                                            (if (not (fx= _g12101_ 2))
                                                (error "Context expects 2 values"
                                                       _g12101_)))
                                          (let ((_target83358664_
                                                 (values-ref _g12100_ 0))
                                                (_tl83378666_
                                                 (values-ref _g12100_ 1)))
                                            (if (gx#stx-null? _tl83378666_)
                                                (letrec ((_loop83388669_
                                                          (lambda (_hd83368672_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body83428674_)
                    (if (gx#stx-pair? _hd83368672_)
                        (let ((_e83398677_ (gx#stx-e _hd83368672_)))
                          (let ((_lp-hd83408680_ (##car _e83398677_))
                                (_lp-tl83418682_ (##cdr _e83398677_)))
                            (_loop83388669_
                             _lp-tl83418682_
                             (cons _lp-hd83408680_ _body83428674_))))
                        (let ((_body83438685_ (reverse _body83428674_)))
                          (if (gx#stx-null? _tl83198621_)
                              ((lambda (_L8688_
                                        _L8689_
                                        _L8690_
                                        _L8691_
                                        _L8692_)
                                 (cons 'let*
                                       (cons (cons (cons _L8692_
                                                         (cons _L8691_ '()))
                                                   (cons (cons _L8690_
                                                               (cons _L8689_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (begin
                                               '#!void
                                               (foldr1 (lambda (_g87288731_
                                                                _g87298733_)
                                                         (cons _g87288731_
                                                               _g87298733_))
                                                       '()
                                                       _L8688_)))))
                               _body83438685_
                               _hd83338659_
                               _hd83308651_
                               _hd83158611_
                               _hd83128603_)
                              (_g82578571_ _g82608574_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop83388669_
                                                   _target83358664_
                                                   '()))
                                                (_g82578571_ _g82608574_)))))
                                      (_g82578571_ _g82608574_))
                                  (_g82578571_ _g82608574_))
                              (_g82578571_ _g82608574_))
                          (_g82578571_ _g82608574_))))
                  (_g82578571_ _g82608574_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g82578571_ _g82608574_))))
                                          (_g82578571_ _g82608574_))))
                                  (_g82578571_ _g82608574_))
                              (_g82578571_ _g82608574_))
                          (_g82578571_ _g82608574_))))
                  (_g82578571_ _g82608574_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g82578571_ _g82608574_))
                                              (_g82578571_ _g82608574_))
                                          (_g82578571_ _g82608574_))))
                                  (_g82578571_ _g82608574_))))
                          (_g82578571_ _g82608574_))))
                  (_g82578571_ _g82608574_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g82578571_ _g82608574_))
                                              (_g82578571_ _g82608574_))
                                          (_g82578571_ _g82608574_))))
                                  (_g82578571_ _g82608574_))))
                           (_g82558867_
                            (lambda (_g82608739_)
                              (if (gx#stx-pair? _g82608739_)
                                  (let ((_e82648741_ (gx#stx-e _g82608739_)))
                                    (let ((_hd82658744_ (##car _e82648741_))
                                          (_tl82668746_ (##cdr _e82648741_)))
                                      (if (gx#identifier? _hd82658744_)
                                          (if (gx#stx-eq? 'let _hd82658744_)
                                              (if (gx#stx-pair? _tl82668746_)
                                                  (let ((_e82678749_
                                                         (gx#stx-e
                                                          _tl82668746_)))
                                                    (let ((_hd82688752_
                                                           (##car _e82678749_))
                                                          (_tl82698754_
                                                           (##cdr _e82678749_)))
                                                      (if (gx#stx-pair?
                                                           _hd82688752_)
                                                          (let ((_e82708757_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd82688752_)))
                    (let ((_hd82718760_ (##car _e82708757_))
                          (_tl82728762_ (##cdr _e82708757_)))
                      (if (gx#stx-pair? _hd82718760_)
                          (let ((_e82738765_ (gx#stx-e _hd82718760_)))
                            (let ((_hd82748768_ (##car _e82738765_))
                                  (_tl82758770_ (##cdr _e82738765_)))
                              (if (gx#stx-pair? _tl82758770_)
                                  (let ((_e82768773_ (gx#stx-e _tl82758770_)))
                                    (let ((_hd82778776_ (##car _e82768773_))
                                          (_tl82788778_ (##cdr _e82768773_)))
                                      (if (gx#stx-null? _tl82788778_)
                                          (if (gx#stx-null? _tl82728762_)
                                              (if (gx#stx-pair? _tl82698754_)
                                                  (let ((_e82798781_
                                                         (gx#stx-e
                                                          _tl82698754_)))
                                                    (let ((_hd82808784_
                                                           (##car _e82798781_))
                                                          (_tl82818786_
                                                           (##cdr _e82798781_)))
                                                      (if (gx#stx-pair?
                                                           _hd82808784_)
                                                          (let ((_e82828789_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd82808784_)))
                    (let ((_hd82838792_ (##car _e82828789_))
                          (_tl82848794_ (##cdr _e82828789_)))
                      (if (gx#identifier? _hd82838792_)
                          (if (gx#stx-eq? 'let _hd82838792_)
                              (if (gx#stx-pair? _tl82848794_)
                                  (let ((_e82858797_ (gx#stx-e _tl82848794_)))
                                    (let ((_hd82868800_ (##car _e82858797_))
                                          (_tl82878802_ (##cdr _e82858797_)))
                                      (if (gx#stx-null? _hd82868800_)
                                          (if (gx#stx-pair/null? _tl82878802_)
                                              (if (fx>= (gx#stx-length
                                                         _tl82878802_)
                                                        '0)
                                                  (let ((_g12102_
                                                         (gx#syntax-split-splice
                                                          _tl82878802_
                                                          '0)))
                                                    (begin
                                                      (let ((_g12103_
                                                             (values-count
                                                              _g12102_)))
                                                        (if (not (fx= _g12103_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g12103_)))
              (let ((_target82888805_ (values-ref _g12102_ 0))
                    (_tl82908807_ (values-ref _g12102_ 1)))
                (if (gx#stx-null? _tl82908807_)
                    (letrec ((_loop82918810_
                              (lambda (_hd82898813_ _body82958815_)
                                (if (gx#stx-pair? _hd82898813_)
                                    (let ((_e82928818_
                                           (gx#stx-e _hd82898813_)))
                                      (let ((_lp-hd82938821_
                                             (##car _e82928818_))
                                            (_lp-tl82948823_
                                             (##cdr _e82928818_)))
                                        (_loop82918810_
                                         _lp-tl82948823_
                                         (cons _lp-hd82938821_
                                               _body82958815_))))
                                    (let ((_body82968826_
                                           (reverse _body82958815_)))
                                      (if (gx#stx-null? _tl82818786_)
                                          ((lambda (_L8829_ _L8830_ _L8831_)
                                             (cons 'let
                                                   (cons (cons (cons _L8831_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L8830_ '()))
                       '())
                 (begin
                   '#!void
                   (foldr1 (lambda (_g88598862_ _g88608864_)
                             (cons _g88598862_ _g88608864_))
                           '()
                           _L8829_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _body82968826_
                                           _hd82778776_
                                           _hd82748768_)
                                          (_g82568736_ _g82608739_)))))))
                      (_loop82918810_ _target82888805_ '()))
                    (_g82568736_ _g82608739_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g82568736_ _g82608739_))
                                              (_g82568736_ _g82608739_))
                                          (_g82568736_ _g82608739_))))
                                  (_g82568736_ _g82608739_))
                              (_g82568736_ _g82608739_))
                          (_g82568736_ _g82608739_))))
                  (_g82568736_ _g82608739_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g82568736_ _g82608739_))
                                              (_g82568736_ _g82608739_))
                                          (_g82568736_ _g82608739_))))
                                  (_g82568736_ _g82608739_))))
                          (_g82568736_ _g82608739_))))
                  (_g82568736_ _g82608739_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g82568736_ _g82608739_))
                                              (_g82568736_ _g82608739_))
                                          (_g82568736_ _g82608739_))))
                                  (_g82568736_ _g82608739_)))))
                      (_g82558867_ _code8254_))))
                 (_generate-values7953_
                  (lambda (_hd8067_ _body8068_)
                    (let _lp8070_ ((_rest8072_ _hd8067_)
                                   (_bind8073_ '())
                                   (_check8074_ '())
                                   (_post8075_ '()))
                      (let* ((_g80788089_
                              (lambda (_g80798086_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g80798086_)))
                             (_g80778103_
                              (lambda (_g80798092_)
                                ((lambda ()
                                   (let* ((_body8096_
                                           (if _compiled-body?7949_
                                               _body8068_
                                               (gxc#compile-e _body8068_)))
                                          (_body8098_
                                           (_generate-values-post7954_
                                            _post8075_
                                            _body8096_))
                                          (_body8100_
                                           (_generate-values-check7955_
                                            _check8074_
                                            _body8098_)))
                                     (cons 'let
                                           (cons (reverse _bind8073_)
                                                 (cons _body8100_ '()))))))))
                             (_g80768251_
                              (lambda (_g80798106_)
                                (if (gx#stx-pair? _g80798106_)
                                    (let ((_e80828108_ (gx#stx-e _g80798106_)))
                                      (let ((_hd80838111_ (##car _e80828108_))
                                            (_tl80848113_ (##cdr _e80828108_)))
                                        ((lambda (_L8116_ _L8117_)
                                           (let* ((_g81328157_
                                                   (lambda (_g81338154_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g81338154_)))
                                                  (_g81318201_
                                                   (lambda (_g81338160_)
                                                     (if (gx#stx-pair?
                                                          _g81338160_)
                                                         (let ((_e81478162_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g81338160_)))
                   (let ((_hd81488165_ (##car _e81478162_))
                         (_tl81498167_ (##cdr _e81478162_)))
                     (if (gx#stx-pair? _tl81498167_)
                         (let ((_e81508170_ (gx#stx-e _tl81498167_)))
                           (let ((_hd81518173_ (##car _e81508170_))
                                 (_tl81528175_ (##cdr _e81508170_)))
                             (if (gx#stx-null? _tl81528175_)
                                 ((lambda (_L8178_ _L8179_)
                                    (let* ((_vals8192_
                                            (gxc#generate-runtime-temporary__0))
                                           (_expr8194_ (gxc#compile-e _L8178_))
                                           (_check-values8196_
                                            (gxc#generate-runtime-check-values
                                             _vals8192_
                                             _L8179_))
                                           (_refs8198_
                                            (gxc#generate-runtime-let-values-bind
                                             _vals8192_
                                             _L8179_)))
                                      (_lp8070_
                                       _L8116_
                                       (cons (cons _vals8192_
                                                   (cons _expr8194_ '()))
                                             _bind8073_)
                                       (cons _check-values8196_ _check8074_)
                                       (cons _refs8198_ _post8075_))))
                                  _hd81518173_
                                  _hd81488165_)
                                 (_g81328157_ _g81338160_))))
                         (_g81328157_ _g81338160_))))
                 (_g81328157_ _g81338160_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g81308248_
                                                   (lambda (_g81338204_)
                                                     (if (gx#stx-pair?
                                                          _g81338204_)
                                                         (let ((_e81368206_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g81338204_)))
                   (let ((_hd81378209_ (##car _e81368206_))
                         (_tl81388211_ (##cdr _e81368206_)))
                     (if (gx#stx-pair? _hd81378209_)
                         (let ((_e81398214_ (gx#stx-e _hd81378209_)))
                           (let ((_hd81408217_ (##car _e81398214_))
                                 (_tl81418219_ (##cdr _e81398214_)))
                             (if (gx#stx-null? _tl81418219_)
                                 (if (gx#stx-pair? _tl81388211_)
                                     (let ((_e81428222_
                                            (gx#stx-e _tl81388211_)))
                                       (let ((_hd81438225_ (##car _e81428222_))
                                             (_tl81448227_
                                              (##cdr _e81428222_)))
                                         (if (gx#stx-null? _tl81448227_)
                                             ((lambda (_L8230_ _L8231_)
                                                (let ((_eid8245_
                                                       (gxc#generate-runtime-binding-id*
                                                        _L8231_))
                                                      (_expr8246_
                                                       (gxc#compile-e
                                                        _L8230_)))
                                                  (_lp8070_
                                                   _L8116_
                                                   (cons (cons _eid8245_
                                                               (cons _expr8246_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 _bind8073_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _check8074_
                                                   _post8075_)))
                                              _hd81438225_
                                              _hd81408217_)
                                             (_g81318201_ _g81338204_))))
                                     (_g81318201_ _g81338204_))
                                 (_g81318201_ _g81338204_))))
                         (_g81318201_ _g81338204_))))
                 (_g81318201_ _g81338204_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g81308248_ _L8117_)))
                                         _tl80848113_
                                         _hd80838111_)))
                                    (_g80778103_ _g80798106_)))))
                        (_g80768251_ _rest8072_)))))
                 (_generate-values-post7954_
                  (lambda (_post8026_ _body8027_)
                    (let _lp8029_ ((_rest8031_ _post8026_)
                                   (_body8032_ _body8027_))
                      (let* ((_rest80338041_ _rest8031_)
                             (_E80368045_
                              (lambda ()
                                (error '"No clause matching" _rest80338041_)))
                             (_else80358049_ (lambda () _body8032_))
                             (_K80378055_
                              (lambda (_rest8052_ _bind8053_)
                                (_lp8029_
                                 _rest8052_
                                 (cons 'let
                                       (cons _bind8053_
                                             (cons _body8032_ '())))))))
                        (if (##pair? _rest80338041_)
                            (let ((_hd80388058_ (##car _rest80338041_))
                                  (_tl80398060_ (##cdr _rest80338041_)))
                              (let* ((_bind8063_ _hd80388058_)
                                     (_rest8065_ _tl80398060_))
                                (_K80378055_ _rest8065_ _bind8063_)))
                            (_else80358049_))))))
                 (_generate-values-check7955_
                  (lambda (_check8023_ _body8024_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body8024_ '())
                                  (reverse _check8023_))))))
          (let* ((_g79577974_
                  (lambda (_g79587971_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g79587971_)))
                 (_g79568020_
                  (lambda (_g79587977_)
                    (if (gx#stx-pair? _g79587977_)
                        (let ((_e79617979_ (gx#stx-e _g79587977_)))
                          (let ((_hd79627982_ (##car _e79617979_))
                                (_tl79637984_ (##cdr _e79617979_)))
                            (if (gx#stx-pair? _tl79637984_)
                                (let ((_e79647987_ (gx#stx-e _tl79637984_)))
                                  (let ((_hd79657990_ (##car _e79647987_))
                                        (_tl79667992_ (##cdr _e79647987_)))
                                    (if (gx#stx-pair? _tl79667992_)
                                        (let ((_e79677995_
                                               (gx#stx-e _tl79667992_)))
                                          (let ((_hd79687998_
                                                 (##car _e79677995_))
                                                (_tl79698000_
                                                 (##cdr _e79677995_)))
                                            (if (gx#stx-null? _tl79698000_)
                                                ((lambda (_L8003_ _L8004_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _L8004_)
                                                       (_generate-simple7951_
                                                        _L8004_
                                                        _L8003_)
                                                       (_generate-values7953_
                                                        _L8004_
                                                        _L8003_)))
                                                 _hd79687998_
                                                 _hd79657990_)
                                                (_g79577974_ _g79587977_))))
                                        (_g79577974_ _g79587977_))))
                                (_g79577974_ _g79587977_))))
                        (_g79577974_ _g79587977_)))))
            (_g79568020_ _stx7948_)))))
    (begin
      (define gxc#generate-runtime-let-values%__0
        (lambda (_stx8876_)
          (let ((_compiled-body?8878_ '#f))
            (gxc#generate-runtime-let-values%__%
             _stx8876_
             _compiled-body?8878_))))
      (define gxc#generate-runtime-let-values%
        (lambda _g12105_
          (let ((_g12104_ (length _g12105_)))
            (cond ((fx= _g12104_ 1)
                   (apply gxc#generate-runtime-let-values%__0 _g12105_))
                  ((fx= _g12104_ 2)
                   (apply gxc#generate-runtime-let-values%__% _g12105_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-let-values%
                    _g12105_))))))))
  (define gxc#generate-runtime-let-values-bind
    (lambda (_vals7847_ _hd7848_)
      (let _lp7850_ ((_rest7852_ _hd7848_) (_k7853_ '0) (_r7854_ '()))
        (let* ((_g78597875_
                (lambda (_g78607872_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g78607872_)))
               (_g78587882_
                (lambda (_g78607878_) ((lambda () (reverse _r7854_)))))
               (_g78577898_
                (lambda (_g78607885_)
                  ((lambda (_L7887_)
                     (if (gx#identifier? _L7887_)
                         (foldl1 cons
                                 (cons (cons (gxc#generate-runtime-binding-id
                                              _L7887_)
                                             (cons (cons 'values->list
                                                         (cons _vals7847_
                                                               (cons _k7853_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                       '())
                                 _r7854_)
                         (_g78587882_ _g78607885_)))
                   _g78607885_)))
               (_g78567922_
                (lambda (_g78607901_)
                  (if (gx#stx-pair? _g78607901_)
                      (let ((_e78677903_ (gx#stx-e _g78607901_)))
                        (let ((_hd78687906_ (##car _e78677903_))
                              (_tl78697908_ (##cdr _e78677903_)))
                          ((lambda (_L7911_ _L7912_)
                             (_lp7850_
                              _L7911_
                              (fx+ _k7853_ '1)
                              (cons (cons (gxc#generate-runtime-binding-id
                                           _L7912_)
                                          (cons (cons 'values-ref
                                                      (cons _vals7847_
                                                            (cons _k7853_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    _r7854_)))
                           _tl78697908_
                           _hd78687906_)))
                      (_g78577898_ _g78607901_))))
               (_g78557944_
                (lambda (_g78607925_)
                  (if (gx#stx-pair? _g78607925_)
                      (let ((_e78627927_ (gx#stx-e _g78607925_)))
                        (let ((_hd78637930_ (##car _e78627927_))
                              (_tl78647932_ (##cdr _e78627927_)))
                          (if (gx#stx-datum? _hd78637930_)
                              (if (equal? (gx#stx-e _hd78637930_) '#f)
                                  ((lambda (_L7935_)
                                     (_lp7850_
                                      _L7935_
                                      (fx+ _k7853_ '1)
                                      _r7854_))
                                   _tl78647932_)
                                  (_g78567922_ _g78607925_))
                              (_g78567922_ _g78607925_))))
                      (_g78567922_ _g78607925_)))))
          (_g78557944_ _rest7852_)))))
  (begin
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_stx7527_ _compiled-body?7528_)
        (letrec ((_generate-simple7530_
                  (lambda (_hd7834_ _body7835_)
                    (gxc#generate-runtime-simple-let
                     'letrec
                     _hd7834_
                     _body7835_
                     _compiled-body?7528_)))
                 (_generate-values7531_
                  (lambda (_hd7611_ _body7612_)
                    (let _lp7614_ ((_rest7616_ _hd7611_)
                                   (_bind7617_ '())
                                   (_check7618_ '())
                                   (_post7619_ '()))
                      (let* ((_g76227633_
                              (lambda (_g76237630_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g76237630_)))
                             (_g76217647_
                              (lambda (_g76237636_)
                                ((lambda ()
                                   (let* ((_body7640_
                                           (if _compiled-body?7528_
                                               _body7612_
                                               (gxc#compile-e _body7612_)))
                                          (_body7642_
                                           (_generate-values-post7533_
                                            _post7619_
                                            _body7640_))
                                          (_body7644_
                                           (_generate-values-check7532_
                                            _check7618_
                                            _body7642_)))
                                     (cons 'letrec
                                           (cons (reverse _bind7617_)
                                                 (cons _body7644_ '()))))))))
                             (_g76207831_
                              (lambda (_g76237650_)
                                (if (gx#stx-pair? _g76237650_)
                                    (let ((_e76267652_ (gx#stx-e _g76237650_)))
                                      (let ((_hd76277655_ (##car _e76267652_))
                                            (_tl76287657_ (##cdr _e76267652_)))
                                        ((lambda (_L7660_ _L7661_)
                                           (let* ((_g76767701_
                                                   (lambda (_g76777698_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g76777698_)))
                                                  (_g76757781_
                                                   (lambda (_g76777704_)
                                                     (if (gx#stx-pair?
                                                          _g76777704_)
                                                         (let ((_e76917706_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g76777704_)))
                   (let ((_hd76927709_ (##car _e76917706_))
                         (_tl76937711_ (##cdr _e76917706_)))
                     (if (gx#stx-pair? _tl76937711_)
                         (let ((_e76947714_ (gx#stx-e _tl76937711_)))
                           (let ((_hd76957717_ (##car _e76947714_))
                                 (_tl76967719_ (##cdr _e76947714_)))
                             (if (gx#stx-null? _tl76967719_)
                                 ((lambda (_L7722_ _L7723_)
                                    (let* ((_vals7736_
                                            (gxc#generate-runtime-temporary__0))
                                           (_expr7738_ (gxc#compile-e _L7722_))
                                           (_check-values7740_
                                            (gxc#generate-runtime-check-values
                                             _vals7736_
                                             _L7723_))
                                           (_refs7742_
                                            (gxc#generate-runtime-let-values-bind
                                             _vals7736_
                                             _L7723_)))
                                      (_lp7614_
                                       _L7660_
                                       (foldl1 cons
                                               (cons (cons _vals7736_
                                                           (cons _expr7738_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _bind7617_)
                                               (map (lambda (_e77447746_)
                                                      (let* ((_g77487757_
                                                              _e77447746_)
                                                             (_E77507761_
                                                              (lambda ()
                                                                (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g77487757_)))
                     (_K77517766_
                      (lambda (_eid7764_)
                        (cons _eid7764_ (cons '#!void '())))))
                (if (##pair? _g77487757_)
                    (let ((_hd77527769_ (##car _g77487757_))
                          (_tl77537771_ (##cdr _g77487757_)))
                      (let ((_eid7774_ _hd77527769_))
                        (if (##pair? _tl77537771_)
                            (let ((_hd77547776_ (##car _tl77537771_))
                                  (_tl77557778_ (##cdr _tl77537771_)))
                              (if (##null? _tl77557778_)
                                  (_K77517766_ _eid7774_)
                                  (_E77507761_)))
                            (_E77507761_))))
                    (_E77507761_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _refs7742_))
                                       (cons _check-values7740_ _check7618_)
                                       (foldl1 cons _refs7742_ _post7619_))))
                                  _hd76957717_
                                  _hd76927709_)
                                 (_g76767701_ _g76777704_))))
                         (_g76767701_ _g76777704_))))
                 (_g76767701_ _g76777704_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g76747828_
                                                   (lambda (_g76777784_)
                                                     (if (gx#stx-pair?
                                                          _g76777784_)
                                                         (let ((_e76807786_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g76777784_)))
                   (let ((_hd76817789_ (##car _e76807786_))
                         (_tl76827791_ (##cdr _e76807786_)))
                     (if (gx#stx-pair? _hd76817789_)
                         (let ((_e76837794_ (gx#stx-e _hd76817789_)))
                           (let ((_hd76847797_ (##car _e76837794_))
                                 (_tl76857799_ (##cdr _e76837794_)))
                             (if (gx#stx-null? _tl76857799_)
                                 (if (gx#stx-pair? _tl76827791_)
                                     (let ((_e76867802_
                                            (gx#stx-e _tl76827791_)))
                                       (let ((_hd76877805_ (##car _e76867802_))
                                             (_tl76887807_
                                              (##cdr _e76867802_)))
                                         (if (gx#stx-null? _tl76887807_)
                                             ((lambda (_L7810_ _L7811_)
                                                (let ((_eid7825_
                                                       (gxc#generate-runtime-binding-id*
                                                        _L7811_))
                                                      (_expr7826_
                                                       (gxc#compile-e
                                                        _L7810_)))
                                                  (_lp7614_
                                                   _L7660_
                                                   (cons (cons _eid7825_
                                                               (cons _expr7826_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 _bind7617_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _check7618_
                                                   _post7619_)))
                                              _hd76877805_
                                              _hd76847797_)
                                             (_g76757781_ _g76777784_))))
                                     (_g76757781_ _g76777784_))
                                 (_g76757781_ _g76777784_))))
                         (_g76757781_ _g76777784_))))
                 (_g76757781_ _g76777784_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g76747828_ _L7661_)))
                                         _tl76287657_
                                         _hd76277655_)))
                                    (_g76217647_ _g76237650_)))))
                        (_g76207831_ _rest7616_)))))
                 (_generate-values-check7532_
                  (lambda (_check7608_ _body7609_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body7609_ '())
                                  (reverse _check7608_)))))
                 (_generate-values-post7533_
                  (lambda (_post7601_ _body7602_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body7602_ '())
                                  (map (lambda (_g76037605_)
                                         (cons 'set! _g76037605_))
                                       (reverse _post7601_)))))))
          (let* ((_g75357552_
                  (lambda (_g75367549_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g75367549_)))
                 (_g75347598_
                  (lambda (_g75367555_)
                    (if (gx#stx-pair? _g75367555_)
                        (let ((_e75397557_ (gx#stx-e _g75367555_)))
                          (let ((_hd75407560_ (##car _e75397557_))
                                (_tl75417562_ (##cdr _e75397557_)))
                            (if (gx#stx-pair? _tl75417562_)
                                (let ((_e75427565_ (gx#stx-e _tl75417562_)))
                                  (let ((_hd75437568_ (##car _e75427565_))
                                        (_tl75447570_ (##cdr _e75427565_)))
                                    (if (gx#stx-pair? _tl75447570_)
                                        (let ((_e75457573_
                                               (gx#stx-e _tl75447570_)))
                                          (let ((_hd75467576_
                                                 (##car _e75457573_))
                                                (_tl75477578_
                                                 (##cdr _e75457573_)))
                                            (if (gx#stx-null? _tl75477578_)
                                                ((lambda (_L7581_ _L7582_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _L7582_)
                                                       (_generate-simple7530_
                                                        _L7582_
                                                        _L7581_)
                                                       (_generate-values7531_
                                                        _L7582_
                                                        _L7581_)))
                                                 _hd75467576_
                                                 _hd75437568_)
                                                (_g75357552_ _g75367555_))))
                                        (_g75357552_ _g75367555_))))
                                (_g75357552_ _g75367555_))))
                        (_g75357552_ _g75367555_)))))
            (_g75347598_ _stx7527_)))))
    (begin
      (define gxc#generate-runtime-letrec-values%__0
        (lambda (_stx7840_)
          (let ((_compiled-body?7842_ '#f))
            (gxc#generate-runtime-letrec-values%__%
             _stx7840_
             _compiled-body?7842_))))
      (define gxc#generate-runtime-letrec-values%
        (lambda _g12107_
          (let ((_g12106_ (length _g12107_)))
            (cond ((fx= _g12106_ 1)
                   (apply gxc#generate-runtime-letrec-values%__0 _g12107_))
                  ((fx= _g12106_ 2)
                   (apply gxc#generate-runtime-letrec-values%__% _g12107_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-letrec-values%
                    _g12107_))))))))
  (define gxc#generate-runtime-letrec*-values%
    (lambda (_stx7109_)
      (letrec ((_generate-values7111_
                (lambda (_hd7354_ _body7355_)
                  (let _lp7357_ ((_rest7359_ _hd7354_) (_bind7360_ '()))
                    (let* ((_rest73617369_ _rest7359_)
                           (_E73647373_
                            (lambda ()
                              (error '"No clause matching" _rest73617369_)))
                           (_else73637380_
                            (lambda ()
                              (let ((_bind7377_ (reverse _bind7360_))
                                    (_body7378_ (gxc#compile-e _body7355_)))
                                (cons 'letrec*
                                      (cons _bind7377_
                                            (cons _body7378_ '()))))))
                           (_K73657514_
                            (lambda (_rest7383_ _hd-bind7384_)
                              (let* ((_g73877412_
                                      (lambda (_g73887409_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g73887409_)))
                                     (_g73867464_
                                      (lambda (_g73887415_)
                                        (if (gx#stx-pair? _g73887415_)
                                            (let ((_e74027417_
                                                   (gx#stx-e _g73887415_)))
                                              (let ((_hd74037420_
                                                     (##car _e74027417_))
                                                    (_tl74047422_
                                                     (##cdr _e74027417_)))
                                                (if (gx#stx-pair? _tl74047422_)
                                                    (let ((_e74057425_
                                                           (gx#stx-e
                                                            _tl74047422_)))
                                                      (let ((_hd74067428_
                                                             (##car _e74057425_))
                                                            (_tl74077430_
                                                             (##cdr _e74057425_)))
                                                        (if (gx#stx-null?
                                                             _tl74077430_)
                                                            ((lambda (_L7433_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L7434_)
                       (let* ((_vals7453_ (gxc#generate-runtime-temporary__0))
                              (_tmp7455_ (gxc#generate-runtime-temporary__0))
                              (_expr7457_ (gxc#compile-e _L7433_))
                              (_check-values7459_
                               (gxc#generate-runtime-check-values
                                _tmp7455_
                                _L7434_))
                              (_refs7461_
                               (gxc#generate-runtime-let-values-bind
                                _vals7453_
                                _L7434_)))
                         (_lp7357_
                          _rest7383_
                          (foldl1 cons
                                  (cons (cons _vals7453_
                                              (cons (cons 'let
                                                          (cons (cons (cons _tmp7455_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _expr7457_ '()))
                              '())
                        (cons _check-values7459_ (cons _tmp7455_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        _bind7360_)
                                  _refs7461_))))
                     _hd74067428_
                     _hd74037420_)
                    (_g73877412_ _g73887415_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g73877412_
                                                     _g73887415_))))
                                            (_g73877412_ _g73887415_))))
                                     (_g73857511_
                                      (lambda (_g73887467_)
                                        (if (gx#stx-pair? _g73887467_)
                                            (let ((_e73917469_
                                                   (gx#stx-e _g73887467_)))
                                              (let ((_hd73927472_
                                                     (##car _e73917469_))
                                                    (_tl73937474_
                                                     (##cdr _e73917469_)))
                                                (if (gx#stx-pair? _hd73927472_)
                                                    (let ((_e73947477_
                                                           (gx#stx-e
                                                            _hd73927472_)))
                                                      (let ((_hd73957480_
                                                             (##car _e73947477_))
                                                            (_tl73967482_
                                                             (##cdr _e73947477_)))
                                                        (if (gx#stx-null?
                                                             _tl73967482_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl73937474_)
                        (let ((_e73977485_ (gx#stx-e _tl73937474_)))
                          (let ((_hd73987488_ (##car _e73977485_))
                                (_tl73997490_ (##cdr _e73977485_)))
                            (if (gx#stx-null? _tl73997490_)
                                ((lambda (_L7493_ _L7494_)
                                   (let ((_eid7508_
                                          (gxc#generate-runtime-binding-id*
                                           _L7494_))
                                         (_expr7509_ (gxc#compile-e _L7493_)))
                                     (_lp7357_
                                      _rest7383_
                                      (cons (cons _eid7508_
                                                  (cons _expr7509_ '()))
                                            _bind7360_))))
                                 _hd73987488_
                                 _hd73957480_)
                                (_g73867464_ _g73887467_))))
                        (_g73867464_ _g73887467_))
                    (_g73867464_ _g73887467_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g73867464_
                                                     _g73887467_))))
                                            (_g73867464_ _g73887467_)))))
                                (_g73857511_ _hd-bind7384_)))))
                      (if (##pair? _rest73617369_)
                          (let ((_hd73667517_ (##car _rest73617369_))
                                (_tl73677519_ (##cdr _rest73617369_)))
                            (let* ((_hd-bind7522_ _hd73667517_)
                                   (_rest7524_ _tl73677519_))
                              (_K73657514_ _rest7524_ _hd-bind7522_)))
                          (_else73637380_))))))
               (_generate-letrec?7112_
                (lambda (_hd7244_)
                  (let _lp7246_ ((_rest7248_ _hd7244_))
                    (let* ((_rest72497257_ _rest7248_)
                           (_E72527261_
                            (lambda ()
                              (error '"No clause matching" _rest72497257_)))
                           (_else72517265_ (lambda () '#t))
                           (_K72537342_
                            (lambda (_rest7268_ _hd-bind7269_)
                              (let* ((_g72717288_
                                      (lambda (_g72727285_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g72727285_)))
                                     (_g72707339_
                                      (lambda (_g72727291_)
                                        (if (gx#stx-pair? _g72727291_)
                                            (let ((_e72757293_
                                                   (gx#stx-e _g72727291_)))
                                              (let ((_hd72767296_
                                                     (##car _e72757293_))
                                                    (_tl72777298_
                                                     (##cdr _e72757293_)))
                                                (if (gx#stx-pair? _hd72767296_)
                                                    (let ((_e72787301_
                                                           (gx#stx-e
                                                            _hd72767296_)))
                                                      (let ((_hd72797304_
                                                             (##car _e72787301_))
                                                            (_tl72807306_
                                                             (##cdr _e72787301_)))
                                                        (if (gx#stx-null?
                                                             _tl72807306_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl72777298_)
                        (let ((_e72817309_ (gx#stx-e _tl72777298_)))
                          (let ((_hd72827312_ (##car _e72817309_))
                                (_tl72837314_ (##cdr _e72817309_)))
                            (if (gx#stx-null? _tl72837314_)
                                ((lambda (_L7317_ _L7318_)
                                   (if (_is-lambda-expr?7113_ _L7317_)
                                       (_lp7246_ _rest7268_)
                                       '#f))
                                 _hd72827312_
                                 _hd72797304_)
                                (_g72717288_ _g72727291_))))
                        (_g72717288_ _g72727291_))
                    (_g72717288_ _g72727291_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g72717288_
                                                     _g72727291_))))
                                            (_g72717288_ _g72727291_)))))
                                (_g72707339_ _hd-bind7269_)))))
                      (if (##pair? _rest72497257_)
                          (let ((_hd72547345_ (##car _rest72497257_))
                                (_tl72557347_ (##cdr _rest72497257_)))
                            (let* ((_hd-bind7350_ _hd72547345_)
                                   (_rest7352_ _tl72557347_))
                              (_K72537342_ _rest7352_ _hd-bind7350_)))
                          (_else72517265_))))))
               (_is-lambda-expr?7113_
                (lambda (_expr7181_)
                  (let* ((_g71847198_
                          (lambda (_g71857195_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g71857195_)))
                         (_g71837205_ (lambda (_g71857201_) ((lambda () '#f))))
                         (_g71827241_
                          (lambda (_g71857208_)
                            (if (gx#stx-pair? _g71857208_)
                                (let ((_e71887210_ (gx#stx-e _g71857208_)))
                                  (let ((_hd71897213_ (##car _e71887210_))
                                        (_tl71907215_ (##cdr _e71887210_)))
                                    (if (gx#identifier? _hd71897213_)
                                        (if (gx#stx-eq? '%#lambda _hd71897213_)
                                            (if (gx#stx-pair? _tl71907215_)
                                                (let ((_e71917218_
                                                       (gx#stx-e
                                                        _tl71907215_)))
                                                  (let ((_hd71927221_
                                                         (##car _e71917218_))
                                                        (_tl71937223_
                                                         (##cdr _e71917218_)))
                                                    ((lambda (_L7226_ _L7227_)
                                                       '#t)
                                                     _tl71937223_
                                                     _hd71927221_)))
                                                (_g71837205_ _g71857208_))
                                            (_g71837205_ _g71857208_))
                                        (_g71837205_ _g71857208_))))
                                (_g71837205_ _g71857208_)))))
                    (_g71827241_ _expr7181_)))))
        (let* ((_g71157132_
                (lambda (_g71167129_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g71167129_)))
               (_g71147178_
                (lambda (_g71167135_)
                  (if (gx#stx-pair? _g71167135_)
                      (let ((_e71197137_ (gx#stx-e _g71167135_)))
                        (let ((_hd71207140_ (##car _e71197137_))
                              (_tl71217142_ (##cdr _e71197137_)))
                          (if (gx#stx-pair? _tl71217142_)
                              (let ((_e71227145_ (gx#stx-e _tl71217142_)))
                                (let ((_hd71237148_ (##car _e71227145_))
                                      (_tl71247150_ (##cdr _e71227145_)))
                                  (if (gx#stx-pair? _tl71247150_)
                                      (let ((_e71257153_
                                             (gx#stx-e _tl71247150_)))
                                        (let ((_hd71267156_
                                               (##car _e71257153_))
                                              (_tl71277158_
                                               (##cdr _e71257153_)))
                                          (if (gx#stx-null? _tl71277158_)
                                              ((lambda (_L7161_ _L7162_)
                                                 (if (gxc#generate-runtime-simple-let?
                                                      _L7162_)
                                                     (if (_generate-letrec?7112_
                                                          _L7162_)
                                                         (gxc#generate-runtime-simple-let
                                                          'letrec
                                                          _L7162_
                                                          _L7161_
                                                          '#f)
                                                         (gxc#generate-runtime-simple-let
                                                          'letrec*
                                                          _L7162_
                                                          _L7161_
                                                          '#f))
                                                     (_generate-values7111_
                                                      _L7162_
                                                      _L7161_)))
                                               _hd71267156_
                                               _hd71237148_)
                                              (_g71157132_ _g71167135_))))
                                      (_g71157132_ _g71167135_))))
                              (_g71157132_ _g71167135_))))
                      (_g71157132_ _g71167135_)))))
          (_g71147178_ _stx7109_)))))
  (define gxc#generate-runtime-simple-let?
    (lambda (_hd7002_)
      (let _lp7004_ ((_rest7006_ _hd7002_))
        (let* ((_g70107031_
                (lambda (_g70117028_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g70117028_)))
               (_g70097038_ (lambda (_g70117034_) ((lambda () '#f))))
               (_g70087045_
                (lambda (_g70117041_)
                  (if (gx#stx-null? _g70117041_)
                      ((lambda () '#t))
                      (_g70097038_ _g70117041_))))
               (_g70077106_
                (lambda (_g70117048_)
                  (if (gx#stx-pair? _g70117048_)
                      (let ((_e70157050_ (gx#stx-e _g70117048_)))
                        (let ((_hd70167053_ (##car _e70157050_))
                              (_tl70177055_ (##cdr _e70157050_)))
                          (if (gx#stx-pair? _hd70167053_)
                              (let ((_e70187058_ (gx#stx-e _hd70167053_)))
                                (let ((_hd70197061_ (##car _e70187058_))
                                      (_tl70207063_ (##cdr _e70187058_)))
                                  (if (gx#stx-pair? _hd70197061_)
                                      (let ((_e70217066_
                                             (gx#stx-e _hd70197061_)))
                                        (let ((_hd70227069_
                                               (##car _e70217066_))
                                              (_tl70237071_
                                               (##cdr _e70217066_)))
                                          (if (gx#stx-null? _tl70237071_)
                                              (if (gx#stx-pair? _tl70207063_)
                                                  (let ((_e70247074_
                                                         (gx#stx-e
                                                          _tl70207063_)))
                                                    (let ((_hd70257077_
                                                           (##car _e70247074_))
                                                          (_tl70267079_
                                                           (##cdr _e70247074_)))
                                                      (if (gx#stx-null?
                                                           _tl70267079_)
                                                          ((lambda (_L7082_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L7083_
                            _L7084_)
                     (_lp7004_ _L7082_))
                   _tl70177055_
                   _hd70257077_
                   _hd70227069_)
                  (_g70087045_ _g70117048_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g70087045_ _g70117048_))
                                              (_g70087045_ _g70117048_))))
                                      (_g70087045_ _g70117048_))))
                              (_g70087045_ _g70117048_))))
                      (_g70087045_ _g70117048_)))))
          (_g70077106_ _rest7006_)))))
  (define gxc#generate-runtime-simple-let
    (lambda (_form6926_ _hd6927_ _body6928_ _compiled-body?6929_)
      (letrec ((_generate16931_
                (lambda (_bind6933_)
                  (let* ((_g69356952_
                          (lambda (_g69366949_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g69366949_)))
                         (_g69346999_
                          (lambda (_g69366955_)
                            (if (gx#stx-pair? _g69366955_)
                                (let ((_e69396957_ (gx#stx-e _g69366955_)))
                                  (let ((_hd69406960_ (##car _e69396957_))
                                        (_tl69416962_ (##cdr _e69396957_)))
                                    (if (gx#stx-pair? _hd69406960_)
                                        (let ((_e69426965_
                                               (gx#stx-e _hd69406960_)))
                                          (let ((_hd69436968_
                                                 (##car _e69426965_))
                                                (_tl69446970_
                                                 (##cdr _e69426965_)))
                                            (if (gx#stx-null? _tl69446970_)
                                                (if (gx#stx-pair? _tl69416962_)
                                                    (let ((_e69456973_
                                                           (gx#stx-e
                                                            _tl69416962_)))
                                                      (let ((_hd69466976_
                                                             (##car _e69456973_))
                                                            (_tl69476978_
                                                             (##cdr _e69456973_)))
                                                        (if (gx#stx-null?
                                                             _tl69476978_)
                                                            ((lambda (_L6981_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L6982_)
                       (cons (gxc#generate-runtime-binding-id* _L6982_)
                             (cons (gxc#compile-e _L6981_) '())))
                     _hd69466976_
                     _hd69436968_)
                    (_g69356952_ _g69366955_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g69356952_ _g69366955_))
                                                (_g69356952_ _g69366955_))))
                                        (_g69356952_ _g69366955_))))
                                (_g69356952_ _g69366955_)))))
                    (_g69346999_ _bind6933_)))))
        (cons _form6926_
              (cons (map _generate16931_ _hd6927_)
                    (cons (if _compiled-body?6929_
                              _body6928_
                              (gxc#compile-e _body6928_))
                          '()))))))
  (define gxc#generate-runtime-quote%
    (lambda (_stx6834_)
      (letrec ((_generate16836_
                (lambda (_datum6888_)
                  (if (let ((_$e6890_ (null? _datum6888_)))
                        (if _$e6890_
                            _$e6890_
                            (let ((_$e6893_ (interned-symbol? _datum6888_)))
                              (if _$e6893_
                                  _$e6893_
                                  (let ((_$e6896_
                                         (gx#self-quoting? _datum6888_)))
                                    (if _$e6896_
                                        _$e6896_
                                        (eof-object? _datum6888_)))))))
                      _datum6888_
                      (if (uninterned-symbol? _datum6888_)
                          (gxc#generate-runtime-gensym-reference__%
                           _datum6888_
                           '#t)
                          (if (pair? _datum6888_)
                              (cons (_generate16836_ (car _datum6888_))
                                    (_generate16836_ (cdr _datum6888_)))
                              (if (box? _datum6888_)
                                  (box (_generate16836_ (unbox _datum6888_)))
                                  (if (vector? _datum6888_)
                                      (vector-map _generate16836_ _datum6888_)
                                      (if (let ((_$e6899_
                                                 (s8vector? _datum6888_)))
                                            (if _$e6899_
                                                _$e6899_
                                                (let ((_$e6902_
                                                       (u8vector?
                                                        _datum6888_)))
                                                  (if _$e6902_
                                                      _$e6902_
                                                      (let ((_$e6905_
                                                             (s16vector?
                                                              _datum6888_)))
                                                        (if _$e6905_
                                                            _$e6905_
                                                            (let ((_$e6908_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (u16vector? _datum6888_)))
                      (if _$e6908_
                          _$e6908_
                          (let ((_$e6911_ (s32vector? _datum6888_)))
                            (if _$e6911_
                                _$e6911_
                                (let ((_$e6914_ (u32vector? _datum6888_)))
                                  (if _$e6914_
                                      _$e6914_
                                      (let ((_$e6917_
                                             (s64vector? _datum6888_)))
                                        (if _$e6917_
                                            _$e6917_
                                            (let ((_$e6920_
                                                   (u64vector? _datum6888_)))
                                              (if _$e6920_
                                                  _$e6920_
                                                  (let ((_$e6923_
                                                         (f32vector?
                                                          _datum6888_)))
                                                    (if _$e6923_
                                                        _$e6923_
                                                        (f64vector?
                                                         _datum6888_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _datum6888_
                                          (gxc#raise-compile-error
                                           '"Cannot compile non-primitive quote"
                                           _stx6834_))))))))))
        (let* ((_g68386851_
                (lambda (_g68396848_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g68396848_)))
               (_g68376885_
                (lambda (_g68396854_)
                  (if (gx#stx-pair? _g68396854_)
                      (let ((_e68416856_ (gx#stx-e _g68396854_)))
                        (let ((_hd68426859_ (##car _e68416856_))
                              (_tl68436861_ (##cdr _e68416856_)))
                          (if (gx#stx-pair? _tl68436861_)
                              (let ((_e68446864_ (gx#stx-e _tl68436861_)))
                                (let ((_hd68456867_ (##car _e68446864_))
                                      (_tl68466869_ (##cdr _e68446864_)))
                                  (if (gx#stx-null? _tl68466869_)
                                      ((lambda (_L6872_)
                                         (cons 'quote
                                               (cons (_generate16836_
                                                      (gx#stx-e _L6872_))
                                                     '())))
                                       _hd68456867_)
                                      (_g68386851_ _g68396854_))))
                              (_g68386851_ _g68396854_))))
                      (_g68386851_ _g68396854_)))))
          (_g68376885_ _stx6834_)))))
  (define gxc#generate-runtime-call%
    (lambda (_stx6527_)
      (let* ((_g65296543_
              (lambda (_g65306540_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g65306540_)))
             (_g65286831_
              (lambda (_g65306546_)
                (if (gx#stx-pair? _g65306546_)
                    (let ((_e65336548_ (gx#stx-e _g65306546_)))
                      (let ((_hd65346551_ (##car _e65336548_))
                            (_tl65356553_ (##cdr _e65336548_)))
                        (if (gx#stx-pair? _tl65356553_)
                            (let ((_e65366556_ (gx#stx-e _tl65356553_)))
                              (let ((_hd65376559_ (##car _e65366556_))
                                    (_tl65386561_ (##cdr _e65366556_)))
                                ((lambda (_L6564_ _L6565_)
                                   (let ((_rator6578_ (gxc#compile-e _L6565_))
                                         (_rands6579_
                                          (map gxc#compile-e _L6564_)))
                                     (let* ((_g65826634_
                                             (lambda (_g65836631_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g65836631_)))
                                            (_g65816641_
                                             (lambda (_g65836637_)
                                               ((lambda ()
                                                  (cons _rator6578_
                                                        _rands6579_)))))
                                            (_g65806828_
                                             (lambda (_g65836644_)
                                               (if (gx#stx-pair? _g65836644_)
                                                   (let ((_e65886646_
                                                          (gx#stx-e
                                                           _g65836644_)))
                                                     (let ((_hd65896649_
                                                            (##car _e65886646_))
                                                           (_tl65906651_
                                                            (##cdr _e65886646_)))
                                                       (if (gx#identifier?
                                                            _hd65896649_)
                                                           (if (gx#stx-eq?
                                                                'letrec
                                                                _hd65896649_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl65906651_)
                           (let ((_e65916654_ (gx#stx-e _tl65906651_)))
                             (let ((_hd65926657_ (##car _e65916654_))
                                   (_tl65936659_ (##cdr _e65916654_)))
                               (if (gx#stx-pair? _hd65926657_)
                                   (let ((_e65946662_ (gx#stx-e _hd65926657_)))
                                     (let ((_hd65956665_ (##car _e65946662_))
                                           (_tl65966667_ (##cdr _e65946662_)))
                                       (if (gx#stx-pair? _hd65956665_)
                                           (let ((_e65976670_
                                                  (gx#stx-e _hd65956665_)))
                                             (let ((_hd65986673_
                                                    (##car _e65976670_))
                                                   (_tl65996675_
                                                    (##cdr _e65976670_)))
                                               (if (gx#stx-pair? _tl65996675_)
                                                   (let ((_e66006678_
                                                          (gx#stx-e
                                                           _tl65996675_)))
                                                     (let ((_hd66016681_
                                                            (##car _e66006678_))
                                                           (_tl66026683_
                                                            (##cdr _e66006678_)))
                                                       (if (gx#stx-pair?
                                                            _hd66016681_)
                                                           (let ((_e66036686_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd66016681_)))
                     (let ((_hd66046689_ (##car _e66036686_))
                           (_tl66056691_ (##cdr _e66036686_)))
                       (if (gx#identifier? _hd66046689_)
                           (if (gx#stx-eq? 'lambda _hd66046689_)
                               (if (gx#stx-pair? _tl66056691_)
                                   (let ((_e66066694_ (gx#stx-e _tl66056691_)))
                                     (let ((_hd66076697_ (##car _e66066694_))
                                           (_tl66086699_ (##cdr _e66066694_)))
                                       (if (gx#stx-pair/null? _hd66076697_)
                                           (if (fx>= (gx#stx-length
                                                      _hd66076697_)
                                                     '0)
                                               (let ((_g12108_
                                                      (gx#syntax-split-splice
                                                       _hd66076697_
                                                       '0)))
                                                 (begin
                                                   (let ((_g12109_
                                                          (values-count
                                                           _g12108_)))
                                                     (if (not (fx= _g12109_ 2))
                                                         (error "Context expects 2 values"
                                                                _g12109_)))
                                                   (let ((_target66096702_
                                                          (values-ref
                                                           _g12108_
                                                           0))
                                                         (_tl66116704_
                                                          (values-ref
                                                           _g12108_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl66116704_)
                                                         (letrec ((_loop66126707_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd66106710_ _arg66166712_)
                             (if (gx#stx-pair? _hd66106710_)
                                 (let ((_e66136715_ (gx#stx-e _hd66106710_)))
                                   (let ((_lp-hd66146718_ (##car _e66136715_))
                                         (_lp-tl66156720_ (##cdr _e66136715_)))
                                     (_loop66126707_
                                      _lp-tl66156720_
                                      (cons _lp-hd66146718_ _arg66166712_))))
                                 (let ((_arg66176723_ (reverse _arg66166712_)))
                                   (if (gx#stx-pair/null? _tl66086699_)
                                       (if (fx>= (gx#stx-length _tl66086699_)
                                                 '0)
                                           (let ((_g12110_
                                                  (gx#syntax-split-splice
                                                   _tl66086699_
                                                   '0)))
                                             (begin
                                               (let ((_g12111_
                                                      (values-count _g12110_)))
                                                 (if (not (fx= _g12111_ 2))
                                                     (error "Context expects 2 values"
                                                            _g12111_)))
                                               (let ((_target66186726_
                                                      (values-ref _g12110_ 0))
                                                     (_tl66206728_
                                                      (values-ref _g12110_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl66206728_)
                                                     (letrec ((_loop66216731_
                                                               (lambda (_hd66196734_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _body66256736_)
                         (if (gx#stx-pair? _hd66196734_)
                             (let ((_e66226739_ (gx#stx-e _hd66196734_)))
                               (let ((_lp-hd66236742_ (##car _e66226739_))
                                     (_lp-tl66246744_ (##cdr _e66226739_)))
                                 (_loop66216731_
                                  _lp-tl66246744_
                                  (cons _lp-hd66236742_ _body66256736_))))
                             (let ((_body66266747_ (reverse _body66256736_)))
                               (if (gx#stx-null? _tl66026683_)
                                   (if (gx#stx-null? _tl65966667_)
                                       (if (gx#stx-pair? _tl65936659_)
                                           (let ((_e66276750_
                                                  (gx#stx-e _tl65936659_)))
                                             (let ((_hd66286753_
                                                    (##car _e66276750_))
                                                   (_tl66296755_
                                                    (##cdr _e66276750_)))
                                               (if (gx#stx-null? _tl66296755_)
                                                   ((lambda (_L6758_
                                                             _L6759_
                                                             _L6760_
                                                             _L6761_)
                                                      (if (eq? _L6761_ _L6758_)
                                                          (if (fx= (length _rands6579_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (length (begin
                                     '#!void
                                     (foldr1 (lambda (_g67976800_ _g67986802_)
                                               (cons _g67976800_ _g67986802_))
                                             '()
                                             _L6760_))))
                      (let* ((_id6805_ _L6761_)
                             (_args6814_
                              (begin
                                '#!void
                                (foldr1 (lambda (_g68066809_ _g68076811_)
                                          (cons _g68066809_ _g68076811_))
                                        '()
                                        _L6760_)))
                             (_body6823_
                              (begin
                                '#!void
                                (foldr1 (lambda (_g68156818_ _g68166820_)
                                          (cons _g68156818_ _g68166820_))
                                        '()
                                        _L6759_)))
                             (_init6825_ (map list _args6814_ _rands6579_)))
                        (cons 'let
                              (cons _id6805_ (cons _init6825_ _body6823_))))
                      (gxc#raise-compile-error
                       '"Illegal loop application; arity mismatch"
                       _stx6527_))
                  (_g65816641_ _g65836644_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd66286753_
                                                    _body66266747_
                                                    _arg66176723_
                                                    _hd65986673_)
                                                   (_g65816641_ _g65836644_))))
                                           (_g65816641_ _g65836644_))
                                       (_g65816641_ _g65836644_))
                                   (_g65816641_ _g65836644_)))))))
               (_loop66216731_ _target66186726_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g65816641_
                                                      _g65836644_)))))
                                           (_g65816641_ _g65836644_))
                                       (_g65816641_ _g65836644_)))))))
                   (_loop66126707_ _target66096702_ '()))
                 (_g65816641_ _g65836644_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g65816641_ _g65836644_))
                                           (_g65816641_ _g65836644_))))
                                   (_g65816641_ _g65836644_))
                               (_g65816641_ _g65836644_))
                           (_g65816641_ _g65836644_))))
                   (_g65816641_ _g65836644_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g65816641_ _g65836644_))))
                                           (_g65816641_ _g65836644_))))
                                   (_g65816641_ _g65836644_))))
                           (_g65816641_ _g65836644_))
                       (_g65816641_ _g65836644_))
                   (_g65816641_ _g65836644_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g65816641_
                                                    _g65836644_)))))
                                       (_g65806828_ _rator6578_))))
                                 _tl65386561_
                                 _hd65376559_)))
                            (_g65296543_ _g65306546_))))
                    (_g65296543_ _g65306546_)))))
        (_g65286831_ _stx6527_))))
  (define gxc#generate-runtime-if%
    (lambda (_stx6489_)
      (let* ((_g64916501_
              (lambda (_g64926498_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g64926498_)))
             (_g64906524_
              (lambda (_g64926504_)
                (if (gx#stx-pair? _g64926504_)
                    (let ((_e64946506_ (gx#stx-e _g64926504_)))
                      (let ((_hd64956509_ (##car _e64946506_))
                            (_tl64966511_ (##cdr _e64946506_)))
                        ((lambda (_L6514_)
                           (cons 'if (map gxc#compile-e _L6514_)))
                         _tl64966511_)))
                    (_g64916501_ _g64926504_)))))
        (_g64906524_ _stx6489_))))
  (define gxc#generate-runtime-ref%
    (lambda (_stx6438_)
      (let* ((_g64406453_
              (lambda (_g64416450_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g64416450_)))
             (_g64396486_
              (lambda (_g64416456_)
                (if (gx#stx-pair? _g64416456_)
                    (let ((_e64436458_ (gx#stx-e _g64416456_)))
                      (let ((_hd64446461_ (##car _e64436458_))
                            (_tl64456463_ (##cdr _e64436458_)))
                        (if (gx#stx-pair? _tl64456463_)
                            (let ((_e64466466_ (gx#stx-e _tl64456463_)))
                              (let ((_hd64476469_ (##car _e64466466_))
                                    (_tl64486471_ (##cdr _e64466466_)))
                                (if (gx#stx-null? _tl64486471_)
                                    ((lambda (_L6474_)
                                       (gxc#generate-runtime-binding-id
                                        _L6474_))
                                     _hd64476469_)
                                    (_g64406453_ _g64416456_))))
                            (_g64406453_ _g64416456_))))
                    (_g64406453_ _g64416456_)))))
        (_g64396486_ _stx6438_))))
  (define gxc#generate-runtime-setq%
    (lambda (_stx6371_)
      (let* ((_g63736390_
              (lambda (_g63746387_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g63746387_)))
             (_g63726435_
              (lambda (_g63746393_)
                (if (gx#stx-pair? _g63746393_)
                    (let ((_e63776395_ (gx#stx-e _g63746393_)))
                      (let ((_hd63786398_ (##car _e63776395_))
                            (_tl63796400_ (##cdr _e63776395_)))
                        (if (gx#stx-pair? _tl63796400_)
                            (let ((_e63806403_ (gx#stx-e _tl63796400_)))
                              (let ((_hd63816406_ (##car _e63806403_))
                                    (_tl63826408_ (##cdr _e63806403_)))
                                (if (gx#stx-pair? _tl63826408_)
                                    (let ((_e63836411_
                                           (gx#stx-e _tl63826408_)))
                                      (let ((_hd63846414_ (##car _e63836411_))
                                            (_tl63856416_ (##cdr _e63836411_)))
                                        (if (gx#stx-null? _tl63856416_)
                                            ((lambda (_L6419_ _L6420_)
                                               (cons 'set!
                                                     (cons (gxc#generate-runtime-binding-id
                                                            _L6420_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L6419_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd63846414_
                                             _hd63816406_)
                                            (_g63736390_ _g63746393_))))
                                    (_g63736390_ _g63746393_))))
                            (_g63736390_ _g63746393_))))
                    (_g63736390_ _g63746393_)))))
        (_g63726435_ _stx6371_))))
  (define gxc#generate-runtime-struct-instancep%
    (lambda (_stx6304_)
      (let* ((_g63066323_
              (lambda (_g63076320_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g63076320_)))
             (_g63056368_
              (lambda (_g63076326_)
                (if (gx#stx-pair? _g63076326_)
                    (let ((_e63106328_ (gx#stx-e _g63076326_)))
                      (let ((_hd63116331_ (##car _e63106328_))
                            (_tl63126333_ (##cdr _e63106328_)))
                        (if (gx#stx-pair? _tl63126333_)
                            (let ((_e63136336_ (gx#stx-e _tl63126333_)))
                              (let ((_hd63146339_ (##car _e63136336_))
                                    (_tl63156341_ (##cdr _e63136336_)))
                                (if (gx#stx-pair? _tl63156341_)
                                    (let ((_e63166344_
                                           (gx#stx-e _tl63156341_)))
                                      (let ((_hd63176347_ (##car _e63166344_))
                                            (_tl63186349_ (##cdr _e63166344_)))
                                        (if (gx#stx-null? _tl63186349_)
                                            ((lambda (_L6352_ _L6353_)
                                               (cons '##structure-instance-of?
                                                     (cons (gxc#compile-e
                                                            _L6352_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L6353_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd63176347_
                                             _hd63146339_)
                                            (_g63066323_ _g63076326_))))
                                    (_g63066323_ _g63076326_))))
                            (_g63066323_ _g63076326_))))
                    (_g63066323_ _g63076326_)))))
        (_g63056368_ _stx6304_))))
  (define gxc#generate-runtime-struct-direct-instancep%
    (lambda (_stx6237_)
      (let* ((_g62396256_
              (lambda (_g62406253_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g62406253_)))
             (_g62386301_
              (lambda (_g62406259_)
                (if (gx#stx-pair? _g62406259_)
                    (let ((_e62436261_ (gx#stx-e _g62406259_)))
                      (let ((_hd62446264_ (##car _e62436261_))
                            (_tl62456266_ (##cdr _e62436261_)))
                        (if (gx#stx-pair? _tl62456266_)
                            (let ((_e62466269_ (gx#stx-e _tl62456266_)))
                              (let ((_hd62476272_ (##car _e62466269_))
                                    (_tl62486274_ (##cdr _e62466269_)))
                                (if (gx#stx-pair? _tl62486274_)
                                    (let ((_e62496277_
                                           (gx#stx-e _tl62486274_)))
                                      (let ((_hd62506280_ (##car _e62496277_))
                                            (_tl62516282_ (##cdr _e62496277_)))
                                        (if (gx#stx-null? _tl62516282_)
                                            ((lambda (_L6285_ _L6286_)
                                               (cons '##structure-direct-instance-of?
                                                     (cons (gxc#compile-e
                                                            _L6285_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L6286_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd62506280_
                                             _hd62476272_)
                                            (_g62396256_ _g62406259_))))
                                    (_g62396256_ _g62406259_))))
                            (_g62396256_ _g62406259_))))
                    (_g62396256_ _g62406259_)))))
        (_g62386301_ _stx6237_))))
  (define gxc#generate-runtime-struct-ref%
    (lambda (_stx6154_)
      (let* ((_g61566177_
              (lambda (_g61576174_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g61576174_)))
             (_g61556234_
              (lambda (_g61576180_)
                (if (gx#stx-pair? _g61576180_)
                    (let ((_e61616182_ (gx#stx-e _g61576180_)))
                      (let ((_hd61626185_ (##car _e61616182_))
                            (_tl61636187_ (##cdr _e61616182_)))
                        (if (gx#stx-pair? _tl61636187_)
                            (let ((_e61646190_ (gx#stx-e _tl61636187_)))
                              (let ((_hd61656193_ (##car _e61646190_))
                                    (_tl61666195_ (##cdr _e61646190_)))
                                (if (gx#stx-pair? _tl61666195_)
                                    (let ((_e61676198_
                                           (gx#stx-e _tl61666195_)))
                                      (let ((_hd61686201_ (##car _e61676198_))
                                            (_tl61696203_ (##cdr _e61676198_)))
                                        (if (gx#stx-pair? _tl61696203_)
                                            (let ((_e61706206_
                                                   (gx#stx-e _tl61696203_)))
                                              (let ((_hd61716209_
                                                     (##car _e61706206_))
                                                    (_tl61726211_
                                                     (##cdr _e61706206_)))
                                                (if (gx#stx-null? _tl61726211_)
                                                    ((lambda (_L6214_
                                                              _L6215_
                                                              _L6216_)
                                                       (cons '##structure-ref
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L6214_)
                           (cons (gxc#compile-e _L6215_)
                                 (cons (gxc#compile-e _L6216_)
                                       (cons ''#f '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd61716209_
                                                     _hd61686201_
                                                     _hd61656193_)
                                                    (_g61566177_
                                                     _g61576180_))))
                                            (_g61566177_ _g61576180_))))
                                    (_g61566177_ _g61576180_))))
                            (_g61566177_ _g61576180_))))
                    (_g61566177_ _g61576180_)))))
        (_g61556234_ _stx6154_))))
  (define gxc#generate-runtime-struct-setq%
    (lambda (_stx6055_)
      (let* ((_g60576082_
              (lambda (_g60586079_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g60586079_)))
             (_g60566151_
              (lambda (_g60586085_)
                (if (gx#stx-pair? _g60586085_)
                    (let ((_e60636087_ (gx#stx-e _g60586085_)))
                      (let ((_hd60646090_ (##car _e60636087_))
                            (_tl60656092_ (##cdr _e60636087_)))
                        (if (gx#stx-pair? _tl60656092_)
                            (let ((_e60666095_ (gx#stx-e _tl60656092_)))
                              (let ((_hd60676098_ (##car _e60666095_))
                                    (_tl60686100_ (##cdr _e60666095_)))
                                (if (gx#stx-pair? _tl60686100_)
                                    (let ((_e60696103_
                                           (gx#stx-e _tl60686100_)))
                                      (let ((_hd60706106_ (##car _e60696103_))
                                            (_tl60716108_ (##cdr _e60696103_)))
                                        (if (gx#stx-pair? _tl60716108_)
                                            (let ((_e60726111_
                                                   (gx#stx-e _tl60716108_)))
                                              (let ((_hd60736114_
                                                     (##car _e60726111_))
                                                    (_tl60746116_
                                                     (##cdr _e60726111_)))
                                                (if (gx#stx-pair? _tl60746116_)
                                                    (let ((_e60756119_
                                                           (gx#stx-e
                                                            _tl60746116_)))
                                                      (let ((_hd60766122_
                                                             (##car _e60756119_))
                                                            (_tl60776124_
                                                             (##cdr _e60756119_)))
                                                        (if (gx#stx-null?
                                                             _tl60776124_)
                                                            ((lambda (_L6127_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L6128_
                              _L6129_
                              _L6130_)
                       (cons '##structure-set!
                             (cons (gxc#compile-e _L6128_)
                                   (cons (gxc#compile-e _L6127_)
                                         (cons (gxc#compile-e _L6129_)
                                               (cons (gxc#compile-e _L6130_)
                                                     (cons ''#f '())))))))
                     _hd60766122_
                     _hd60736114_
                     _hd60706106_
                     _hd60676098_)
                    (_g60576082_ _g60586085_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g60576082_
                                                     _g60586085_))))
                                            (_g60576082_ _g60586085_))))
                                    (_g60576082_ _g60586085_))))
                            (_g60576082_ _g60586085_))))
                    (_g60576082_ _g60586085_)))))
        (_g60566151_ _stx6055_))))
  (define gxc#generate-runtime-struct-direct-ref%
    (lambda (_stx5972_)
      (let* ((_g59745995_
              (lambda (_g59755992_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g59755992_)))
             (_g59736052_
              (lambda (_g59755998_)
                (if (gx#stx-pair? _g59755998_)
                    (let ((_e59796000_ (gx#stx-e _g59755998_)))
                      (let ((_hd59806003_ (##car _e59796000_))
                            (_tl59816005_ (##cdr _e59796000_)))
                        (if (gx#stx-pair? _tl59816005_)
                            (let ((_e59826008_ (gx#stx-e _tl59816005_)))
                              (let ((_hd59836011_ (##car _e59826008_))
                                    (_tl59846013_ (##cdr _e59826008_)))
                                (if (gx#stx-pair? _tl59846013_)
                                    (let ((_e59856016_
                                           (gx#stx-e _tl59846013_)))
                                      (let ((_hd59866019_ (##car _e59856016_))
                                            (_tl59876021_ (##cdr _e59856016_)))
                                        (if (gx#stx-pair? _tl59876021_)
                                            (let ((_e59886024_
                                                   (gx#stx-e _tl59876021_)))
                                              (let ((_hd59896027_
                                                     (##car _e59886024_))
                                                    (_tl59906029_
                                                     (##cdr _e59886024_)))
                                                (if (gx#stx-null? _tl59906029_)
                                                    ((lambda (_L6032_
                                                              _L6033_
                                                              _L6034_)
                                                       (cons '##direct-structure-ref
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L6032_)
                           (cons (gxc#compile-e _L6033_)
                                 (cons (gxc#compile-e _L6034_)
                                       (cons ''#f '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd59896027_
                                                     _hd59866019_
                                                     _hd59836011_)
                                                    (_g59745995_
                                                     _g59755998_))))
                                            (_g59745995_ _g59755998_))))
                                    (_g59745995_ _g59755998_))))
                            (_g59745995_ _g59755998_))))
                    (_g59745995_ _g59755998_)))))
        (_g59736052_ _stx5972_))))
  (define gxc#generate-runtime-struct-direct-setq%
    (lambda (_stx5873_)
      (let* ((_g58755900_
              (lambda (_g58765897_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g58765897_)))
             (_g58745969_
              (lambda (_g58765903_)
                (if (gx#stx-pair? _g58765903_)
                    (let ((_e58815905_ (gx#stx-e _g58765903_)))
                      (let ((_hd58825908_ (##car _e58815905_))
                            (_tl58835910_ (##cdr _e58815905_)))
                        (if (gx#stx-pair? _tl58835910_)
                            (let ((_e58845913_ (gx#stx-e _tl58835910_)))
                              (let ((_hd58855916_ (##car _e58845913_))
                                    (_tl58865918_ (##cdr _e58845913_)))
                                (if (gx#stx-pair? _tl58865918_)
                                    (let ((_e58875921_
                                           (gx#stx-e _tl58865918_)))
                                      (let ((_hd58885924_ (##car _e58875921_))
                                            (_tl58895926_ (##cdr _e58875921_)))
                                        (if (gx#stx-pair? _tl58895926_)
                                            (let ((_e58905929_
                                                   (gx#stx-e _tl58895926_)))
                                              (let ((_hd58915932_
                                                     (##car _e58905929_))
                                                    (_tl58925934_
                                                     (##cdr _e58905929_)))
                                                (if (gx#stx-pair? _tl58925934_)
                                                    (let ((_e58935937_
                                                           (gx#stx-e
                                                            _tl58925934_)))
                                                      (let ((_hd58945940_
                                                             (##car _e58935937_))
                                                            (_tl58955942_
                                                             (##cdr _e58935937_)))
                                                        (if (gx#stx-null?
                                                             _tl58955942_)
                                                            ((lambda (_L5945_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L5946_
                              _L5947_
                              _L5948_)
                       (cons '##direct-structure-set!
                             (cons (gxc#compile-e _L5946_)
                                   (cons (gxc#compile-e _L5945_)
                                         (cons (gxc#compile-e _L5947_)
                                               (cons (gxc#compile-e _L5948_)
                                                     (cons ''#f '())))))))
                     _hd58945940_
                     _hd58915932_
                     _hd58885924_
                     _hd58855916_)
                    (_g58755900_ _g58765903_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g58755900_
                                                     _g58765903_))))
                                            (_g58755900_ _g58765903_))))
                                    (_g58755900_ _g58765903_))))
                            (_g58755900_ _g58765903_))))
                    (_g58755900_ _g58765903_)))))
        (_g58745969_ _stx5873_))))
  (define gxc#generate-runtime-struct-unchecked-ref%
    (lambda (_stx5790_)
      (let* ((_g57925813_
              (lambda (_g57935810_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g57935810_)))
             (_g57915870_
              (lambda (_g57935816_)
                (if (gx#stx-pair? _g57935816_)
                    (let ((_e57975818_ (gx#stx-e _g57935816_)))
                      (let ((_hd57985821_ (##car _e57975818_))
                            (_tl57995823_ (##cdr _e57975818_)))
                        (if (gx#stx-pair? _tl57995823_)
                            (let ((_e58005826_ (gx#stx-e _tl57995823_)))
                              (let ((_hd58015829_ (##car _e58005826_))
                                    (_tl58025831_ (##cdr _e58005826_)))
                                (if (gx#stx-pair? _tl58025831_)
                                    (let ((_e58035834_
                                           (gx#stx-e _tl58025831_)))
                                      (let ((_hd58045837_ (##car _e58035834_))
                                            (_tl58055839_ (##cdr _e58035834_)))
                                        (if (gx#stx-pair? _tl58055839_)
                                            (let ((_e58065842_
                                                   (gx#stx-e _tl58055839_)))
                                              (let ((_hd58075845_
                                                     (##car _e58065842_))
                                                    (_tl58085847_
                                                     (##cdr _e58065842_)))
                                                (if (gx#stx-null? _tl58085847_)
                                                    ((lambda (_L5850_
                                                              _L5851_
                                                              _L5852_)
                                                       (cons '##unchecked-structure-ref
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L5850_)
                           (cons (gxc#compile-e _L5851_)
                                 (cons (gxc#compile-e _L5852_)
                                       (cons ''#f '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd58075845_
                                                     _hd58045837_
                                                     _hd58015829_)
                                                    (_g57925813_
                                                     _g57935816_))))
                                            (_g57925813_ _g57935816_))))
                                    (_g57925813_ _g57935816_))))
                            (_g57925813_ _g57935816_))))
                    (_g57925813_ _g57935816_)))))
        (_g57915870_ _stx5790_))))
  (define gxc#generate-runtime-struct-unchecked-setq%
    (lambda (_stx5691_)
      (let* ((_g56935718_
              (lambda (_g56945715_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g56945715_)))
             (_g56925787_
              (lambda (_g56945721_)
                (if (gx#stx-pair? _g56945721_)
                    (let ((_e56995723_ (gx#stx-e _g56945721_)))
                      (let ((_hd57005726_ (##car _e56995723_))
                            (_tl57015728_ (##cdr _e56995723_)))
                        (if (gx#stx-pair? _tl57015728_)
                            (let ((_e57025731_ (gx#stx-e _tl57015728_)))
                              (let ((_hd57035734_ (##car _e57025731_))
                                    (_tl57045736_ (##cdr _e57025731_)))
                                (if (gx#stx-pair? _tl57045736_)
                                    (let ((_e57055739_
                                           (gx#stx-e _tl57045736_)))
                                      (let ((_hd57065742_ (##car _e57055739_))
                                            (_tl57075744_ (##cdr _e57055739_)))
                                        (if (gx#stx-pair? _tl57075744_)
                                            (let ((_e57085747_
                                                   (gx#stx-e _tl57075744_)))
                                              (let ((_hd57095750_
                                                     (##car _e57085747_))
                                                    (_tl57105752_
                                                     (##cdr _e57085747_)))
                                                (if (gx#stx-pair? _tl57105752_)
                                                    (let ((_e57115755_
                                                           (gx#stx-e
                                                            _tl57105752_)))
                                                      (let ((_hd57125758_
                                                             (##car _e57115755_))
                                                            (_tl57135760_
                                                             (##cdr _e57115755_)))
                                                        (if (gx#stx-null?
                                                             _tl57135760_)
                                                            ((lambda (_L5763_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L5764_
                              _L5765_
                              _L5766_)
                       (cons '##unchecked-structure-set!
                             (cons (gxc#compile-e _L5764_)
                                   (cons (gxc#compile-e _L5763_)
                                         (cons (gxc#compile-e _L5765_)
                                               (cons (gxc#compile-e _L5766_)
                                                     (cons ''#f '())))))))
                     _hd57125758_
                     _hd57095750_
                     _hd57065742_
                     _hd57035734_)
                    (_g56935718_ _g56945721_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g56935718_
                                                     _g56945721_))))
                                            (_g56935718_ _g56945721_))))
                                    (_g56935718_ _g56945721_))))
                            (_g56935718_ _g56945721_))))
                    (_g56935718_ _g56945721_)))))
        (_g56925787_ _stx5691_))))
  (define gxc#generate-runtime-loader-import%
    (lambda (_stx5545_)
      (letrec ((_import-set-template5547_
                (lambda (_in5643_ _phi5644_)
                  (let ((_iphi5646_
                         (fx+ _phi5644_
                              (##direct-structure-ref
                               _in5643_
                               '2
                               gx#import-set::t
                               '#f)))
                        (_imports5647_
                         (##structure-ref
                          (##direct-structure-ref
                           _in5643_
                           '1
                           gx#import-set::t
                           '#f)
                          '8
                          gx#module-context::t
                          '#f)))
                    (let _lp5649_ ((_rest5651_ _imports5647_) (_r5652_ '()))
                      (let* ((_rest56535661_ _rest5651_)
                             (_E56565665_
                              (lambda ()
                                (error '"No clause matching" _rest56535661_)))
                             (_else56555669_ (lambda () _r5652_))
                             (_K56575679_
                              (lambda (_rest5672_ _in5673_)
                                (if (##structure-instance-of?
                                     _in5673_
                                     'gx#module-context::t)
                                    (if (fxzero? _iphi5646_)
                                        (_lp5649_
                                         _rest5672_
                                         (cons _in5673_ _r5652_))
                                        (_lp5649_ _rest5672_ _r5652_))
                                    (if (##structure-direct-instance-of?
                                         _in5673_
                                         'gx#module-import::t)
                                        (let ((_iphi5675_
                                               (fx+ _phi5644_
                                                    (##direct-structure-ref
                                                     _in5673_
                                                     '3
                                                     gx#module-import::t
                                                     '#f))))
                                          (if (fxzero? _iphi5675_)
                                              (_lp5649_
                                               _rest5672_
                                               (cons (##direct-structure-ref
                                                      (##direct-structure-ref
                                                       _in5673_
                                                       '1
                                                       gx#module-import::t
                                                       '#f)
                                                      '1
                                                      gx#module-export::t
                                                      '#f)
                                                     _r5652_))
                                              (_lp5649_ _rest5672_ _r5652_)))
                                        (if (##structure-direct-instance-of?
                                             _in5673_
                                             'gx#import-set::t)
                                            (let ((_xphi5677_
                                                   (fx+ _iphi5646_
                                                        (##direct-structure-ref
                                                         _in5673_
                                                         '2
                                                         gx#import-set::t
                                                         '#f))))
                                              (if (fxzero? _xphi5677_)
                                                  (_lp5649_
                                                   _rest5672_
                                                   (cons (##direct-structure-ref
                                                          _in5673_
                                                          '1
                                                          gx#import-set::t
                                                          '#f)
                                                         _r5652_))
                                                  (if (fxpositive? _xphi5677_)
                                                      (_lp5649_
                                                       _rest5672_
                                                       (foldl1 cons
                                                               _r5652_
                                                               (_import-set-template5547_
                                                                _in5673_
                                                                _iphi5646_)))
                                                      (_lp5649_
                                                       _rest5672_
                                                       _r5652_))))
                                            (_lp5649_ _rest5672_ _r5652_)))))))
                        (if (##pair? _rest56535661_)
                            (let ((_hd56585682_ (##car _rest56535661_))
                                  (_tl56595684_ (##cdr _rest56535661_)))
                              (let* ((_in5687_ _hd56585682_)
                                     (_rest5689_ _tl56595684_))
                                (_K56575679_ _rest5689_ _in5687_)))
                            (_else56555669_))))))))
        (let* ((_g55495559_
                (lambda (_g55505556_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g55505556_)))
               (_g55485640_
                (lambda (_g55505562_)
                  (if (gx#stx-pair? _g55505562_)
                      (let ((_e55525564_ (gx#stx-e _g55505562_)))
                        (let ((_hd55535567_ (##car _e55525564_))
                              (_tl55545569_ (##cdr _e55525564_)))
                          ((lambda (_L5572_)
                             (let ((_ht5583_ (make-hash-table-eq)))
                               (let _lp5585_ ((_rest5587_ _L5572_)
                                              (_loads5588_ '()))
                                 (letrec ((_K5590_ (lambda (_ctx5633_
                                                            _rest5634_)
                                                     (let ((_id5636_
                                                            (##structure-ref
                                                             _ctx5633_
                                                             '1
                                                             gx#expander-context::t
                                                             '#f)))
                                                       (if (table-ref
                                                            _ht5583_
                                                            _id5636_
                                                            '#f)
                                                           (_lp5585_
                                                            _rest5634_
                                                            _loads5588_)
                                                           (let ((_rt5638_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (string-append (symbol->string _id5636_) '"__rt")))
                     (begin
                       (table-set! _ht5583_ _id5636_ _rt5638_)
                       (_lp5585_ _rest5634_ (cons _rt5638_ _loads5588_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (let* ((_rest55915599_ _rest5587_)
                                          (_E55945603_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _rest55915599_)))
                                          (_else55935611_
                                           (lambda ()
                                             (cons 'begin
                                                   (map (lambda (_g56065608_)
                                                          (list 'load-module
                                                                _g56065608_))
                                                        (reverse _loads5588_)))))
                                          (_K55955621_
                                           (lambda (_rest5614_ _in5615_)
                                             (if (##structure-instance-of?
                                                  _in5615_
                                                  'gx#module-context::t)
                                                 (_K5590_ _in5615_ _rest5614_)
                                                 (if (##structure-direct-instance-of?
                                                      _in5615_
                                                      'gx#module-import::t)
                                                     (if (fxzero? (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in5615_
                           '3
                           gx#module-import::t
                           '#f))
                 (_K5590_ (##direct-structure-ref
                           (##direct-structure-ref
                            _in5615_
                            '1
                            gx#module-import::t
                            '#f)
                           '1
                           gx#module-export::t
                           '#f)
                          _rest5614_)
                 (_lp5585_ _rest5614_ _loads5588_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##structure-direct-instance-of?
                                                          _in5615_
                                                          'gx#import-set::t)
                                                         (let ((_phi5617_
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _in5615_
                         '2
                         gx#import-set::t
                         '#f)))
                   (if (fxzero? _phi5617_)
                       (_K5590_ (##direct-structure-ref
                                 _in5615_
                                 '1
                                 gx#import-set::t
                                 '#f)
                                _rest5614_)
                       (if (fxpositive? _phi5617_)
                           (let ((_deps5619_
                                  (_import-set-template5547_ _in5615_ '0)))
                             (_lp5585_
                              (foldl1 cons _rest5614_ _deps5619_)
                              _loads5588_))
                           (_lp5585_ _rest5614_ _loads5588_))))
                 (gxc#raise-compile-error
                  '"Unexpected import"
                  _stx5545_
                  _in5615_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (if (##pair? _rest55915599_)
                                         (let ((_hd55965624_
                                                (##car _rest55915599_))
                                               (_tl55975626_
                                                (##cdr _rest55915599_)))
                                           (let* ((_in5629_ _hd55965624_)
                                                  (_rest5631_ _tl55975626_))
                                             (_K55955621_
                                              _rest5631_
                                              _in5629_)))
                                         (_else55935611_)))))))
                           _tl55545569_)))
                      (_g55495559_ _g55505562_)))))
          (_g55485640_ _stx5545_)))))
  (define gxc#generate-runtime-quote-syntax%
    (lambda (_stx5368_)
      (letrec ((_add-lift!5370_
                (lambda (_expr5543_)
                  (set-box!
                   (gxc#current-compile-lift)
                   (cons _expr5543_ (unbox (gxc#current-compile-lift))))))
               (_generate-simple5371_
                (lambda (_stxq5538_)
                  (let ((_gid5540_ (gxc#generate-runtime-temporary__% '#t))
                        (_qid5541_
                         (gxc#generate-runtime-identifier _stxq5538_)))
                    (begin
                      (_add-lift!5370_
                       (cons 'define
                             (cons _gid5540_
                                   (cons (cons 'gx#make-syntax-quote
                                               (cons (cons 'quote
                                                           (cons _qid5541_
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
                      _gid5540_))))
               (_generate-serialized5372_
                (lambda (_stxq5528_ _marks5529_)
                  (let* ((_mark-refs5531_
                          (map _generate-mark5373_ _marks5529_))
                         (_gid5533_ (gxc#generate-runtime-temporary__% '#t))
                         (_qid5535_
                          (gxc#generate-runtime-identifier _stxq5528_)))
                    (begin
                      (_add-lift!5370_
                       (cons 'define
                             (cons _gid5533_
                                   (cons (cons 'gx#make-syntax-quote
                                               (cons (cons 'quote
                                                           (cons _qid5535_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons '#f
                                                           (cons (cons 'gx#current-expander-context
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '())
                         (cons (cons 'list _mark-refs5531_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                      _gid5533_))))
               (_generate-mark5373_
                (lambda (_mark5514_)
                  (let ((_$e5516_
                         (table-ref
                          (gxc#current-compile-marks)
                          _mark5514_
                          '#f)))
                    (if _$e5516_
                        (values _$e5516_)
                        (let* ((_gid5519_
                                (gxc#generate-runtime-temporary__% '#t))
                               (_repr5521_ (_serialize-mark5374_ _mark5514_))
                               (_ctx5523_
                                (gx#core-context-top__1
                                 (##structure-ref
                                  _mark5514_
                                  '2
                                  gx#expander-mark::t
                                  '#f)))
                               (_ctx-ref5525_
                                (if (eq? _ctx5523_
                                         (gx#current-expander-context))
                                    (cons 'gx#current-expander-context '())
                                    (cons 'gx#import-module
                                          (cons (cons 'quote
                                                      (cons (_context-ref5375_
                                                             _ctx5523_)
                                                            '()))
                                                '())))))
                          (begin
                            (table-set!
                             (gxc#current-compile-marks)
                             _mark5514_
                             _gid5519_)
                            (_add-lift!5370_
                             (cons 'define
                                   (cons _gid5519_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _repr5521_ '()))
                   (cons _ctx-ref5525_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _gid5519_))))))
               (_serialize-mark5374_
                (lambda (_mark5461_)
                  (letrec ((_quote-e5463_
                            (lambda (_sym5512_)
                              (if (interned-symbol? _sym5512_)
                                  _sym5512_
                                  (gxc#generate-runtime-gensym-reference__0
                                   _sym5512_)))))
                    (let* ((_mark54645473_ _mark5461_)
                           (_E54665477_
                            (lambda ()
                              (error '"No clause matching" _mark54645473_)))
                           (_K54675489_
                            (lambda (_trace5480_
                                     _phi5481_
                                     _ctx5482_
                                     _subst5483_)
                              (let ((_subs5485_
                                     (if _subst5483_
                                         (table->list _subst5483_)
                                         '())))
                                (cons _phi5481_
                                      (map (lambda (_pair5487_)
                                             (cons (_quote-e5463_
                                                    (car _pair5487_))
                                                   (_quote-e5463_
                                                    (cdr _pair5487_))))
                                           _subs5485_))))))
                      (if (##structure-instance-of?
                           _mark54645473_
                           (##type-id gx#expander-mark::t))
                          (let* ((_e54685492_ (##vector-ref _mark54645473_ '1))
                                 (_subst5495_ _e54685492_)
                                 (_e54695497_ (##vector-ref _mark54645473_ '2))
                                 (_ctx5500_ _e54695497_)
                                 (_e54705502_ (##vector-ref _mark54645473_ '3))
                                 (_phi5505_ _e54705502_)
                                 (_e54715507_ (##vector-ref _mark54645473_ '4))
                                 (_trace5510_ _e54715507_))
                            (_K54675489_
                             _trace5510_
                             _phi5505_
                             _ctx5500_
                             _subst5495_))
                          (_E54665477_))))))
               (_context-ref5375_
                (lambda (_ctx5448_)
                  (if (##structure-instance-of?
                       (##structure-ref _ctx5448_ '3 gx#phi-context::t '#f)
                       'gx#module-context::t)
                      (let ((_ctx-ref5450_
                             (_context-ref-nested5377_ _ctx5448_))
                            (_ctx-origin5451_
                             (_context-ref-origin5376_ _ctx5448_))
                            (_origin5452_
                             (_context-ref-origin5376_
                              (gx#current-expander-context))))
                        (if (eq? _origin5452_ _ctx-origin5451_)
                            (let ((_ref5454_
                                   (_context-ref-nested5377_
                                    (gx#current-expander-context))))
                              (let _lp5456_ ((_ref5458_ (cdr _ref5454_))
                                             (_ctx-ref5459_
                                              (cdr _ctx-ref5450_)))
                                (if (if (pair? _ref5458_)
                                        (eq? (car _ref5458_)
                                             (car _ctx-ref5459_))
                                        '#f)
                                    (_lp5456_
                                     (cdr _ref5458_)
                                     (cdr _ctx-ref5459_))
                                    (cons '#f _ctx-ref5459_))))
                            _ctx-ref5450_))
                      (make-symbol
                       '":"
                       (##structure-ref
                        _ctx5448_
                        '1
                        gx#expander-context::t
                        '#f)))))
               (_context-ref-origin5376_
                (lambda (_ctx5440_)
                  (let _lp5442_ ((_ctx5444_ _ctx5440_))
                    (let ((_super5446_
                           (##structure-ref
                            _ctx5444_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if (##structure-instance-of?
                           _super5446_
                           'gx#module-context::t)
                          (_lp5442_ _super5446_)
                          _ctx5444_)))))
               (_context-ref-nested5377_
                (lambda (_ctx5431_)
                  (let _lp5433_ ((_ctx5435_ _ctx5431_) (_r5436_ '()))
                    (let ((_super5438_
                           (##structure-ref
                            _ctx5435_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if (##structure-instance-of?
                           _super5438_
                           'gx#module-context::t)
                          (_lp5433_
                           _super5438_
                           (cons (car (##structure-ref
                                       _ctx5435_
                                       '7
                                       gx#module-context::t
                                       '#f))
                                 _r5436_))
                          (cons (make-symbol
                                 '":"
                                 (##structure-ref
                                  _ctx5435_
                                  '1
                                  gx#expander-context::t
                                  '#f))
                                _r5436_)))))))
        (let* ((_g53795392_
                (lambda (_g53805389_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g53805389_)))
               (_g53785428_
                (lambda (_g53805395_)
                  (if (gx#stx-pair? _g53805395_)
                      (let ((_e53825397_ (gx#stx-e _g53805395_)))
                        (let ((_hd53835400_ (##car _e53825397_))
                              (_tl53845402_ (##cdr _e53825397_)))
                          (if (gx#stx-pair? _tl53845402_)
                              (let ((_e53855405_ (gx#stx-e _tl53845402_)))
                                (let ((_hd53865408_ (##car _e53855405_))
                                      (_tl53875410_ (##cdr _e53855405_)))
                                  (if (gx#stx-null? _tl53875410_)
                                      ((lambda (_L5413_)
                                         (if (gx#identifier? _L5413_)
                                             (let ((_marks5426_
                                                    (##direct-structure-ref
                                                     _L5413_
                                                     '4
                                                     gx#syntax-quote::t
                                                     '#f)))
                                               (if (null? _marks5426_)
                                                   (_generate-simple5371_
                                                    _L5413_)
                                                   (_generate-serialized5372_
                                                    _L5413_
                                                    _marks5426_)))
                                             (gxc#raise-compile-error
                                              '"Cannot quote non-identifier syntax"
                                              _L5413_)))
                                       _hd53865408_)
                                      (_g53795392_ _g53805395_))))
                              (_g53795392_ _g53805395_))))
                      (_g53795392_ _g53805395_)))))
          (_g53785428_ _stx5368_)))))
  (define gxc#generate-runtime-phi-define-runtime%
    (lambda (_stx5301_)
      (let* ((_g53035320_
              (lambda (_g53045317_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g53045317_)))
             (_g53025365_
              (lambda (_g53045323_)
                (if (gx#stx-pair? _g53045323_)
                    (let ((_e53075325_ (gx#stx-e _g53045323_)))
                      (let ((_hd53085328_ (##car _e53075325_))
                            (_tl53095330_ (##cdr _e53075325_)))
                        (if (gx#stx-pair? _tl53095330_)
                            (let ((_e53105333_ (gx#stx-e _tl53095330_)))
                              (let ((_hd53115336_ (##car _e53105333_))
                                    (_tl53125338_ (##cdr _e53105333_)))
                                (if (gx#stx-pair? _tl53125338_)
                                    (let ((_e53135341_
                                           (gx#stx-e _tl53125338_)))
                                      (let ((_hd53145344_ (##car _e53135341_))
                                            (_tl53155346_ (##cdr _e53135341_)))
                                        (if (gx#stx-null? _tl53155346_)
                                            ((lambda (_L5349_ _L5350_)
                                               (cons 'define
                                                     (cons (gx#stx-e _L5350_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L5349_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd53145344_
                                             _hd53115336_)
                                            (_g53035320_ _g53045323_))))
                                    (_g53035320_ _g53045323_))))
                            (_g53035320_ _g53045323_))))
                    (_g53035320_ _g53045323_)))))
        (_g53025365_ _stx5301_))))
  (define gxc#generate-meta-begin%
    (lambda (_stx5250_ _state5251_)
      (let* ((_g52535263_
              (lambda (_g52545260_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g52545260_)))
             (_g52525298_
              (lambda (_g52545266_)
                (if (gx#stx-pair? _g52545266_)
                    (let ((_e52565268_ (gx#stx-e _g52545266_)))
                      (let ((_hd52575271_ (##car _e52565268_))
                            (_tl52585273_ (##cdr _e52565268_)))
                        ((lambda (_L5276_)
                           (let* ((_c-body5290_
                                   (map (lambda (_g52855287_)
                                          (gxc#compile-e
                                           _g52855287_
                                           _state5251_))
                                        _L5276_))
                                  (_c-body5295_
                                   (filter (lambda (_$obj5292_)
                                             (not (eq? _$obj5292_ '#!void)))
                                           _c-body5290_)))
                             (cons '%#begin _c-body5295_)))
                         _tl52585273_)))
                    (_g52535263_ _g52545266_)))))
        (_g52525298_ _stx5250_))))
  (define gxc#generate-meta-begin-syntax%
    (lambda (_stx5158_ _state5159_)
      (let* ((_g51615171_
              (lambda (_g51625168_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g51625168_)))
             (_g51605247_
              (lambda (_g51625174_)
                (if (gx#stx-pair? _g51625174_)
                    (let ((_e51645176_ (gx#stx-e _g51625174_)))
                      (let ((_hd51655179_ (##car _e51645176_))
                            (_tl51665181_ (##cdr _e51645176_)))
                        ((lambda (_L5184_)
                           (let* ((_phi5194_
                                   (fx+ (gx#current-expander-phi) '1))
                                  (_block5196_
                                   (gxc#meta-state-begin-phi!
                                    _state5159_
                                    _phi5194_))
                                  (_compiled5199_
                                   (call-with-parameters
                                    (lambda ()
                                      (gxc#apply-generate-meta-phi
                                       (cons (gx#datum->syntax__0 '#f '%#begin)
                                             _L5184_)
                                       _state5159_))
                                    gx#current-expander-phi
                                    _phi5194_)))
                             (let* ((_g52025212_
                                     (lambda (_g52035209_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g52035209_)))
                                    (_g52015244_
                                     (lambda (_g52035215_)
                                       (if (gx#stx-pair? _g52035215_)
                                           (let ((_e52055217_
                                                  (gx#stx-e _g52035215_)))
                                             (let ((_hd52065220_
                                                    (##car _e52055217_))
                                                   (_tl52075222_
                                                    (##cdr _e52055217_)))
                                               (if (gx#identifier?
                                                    _hd52065220_)
                                                   (if (gx#stx-eq?
                                                        '%#begin
                                                        _hd52065220_)
                                                       ((lambda (_L5225_)
                                                          (let ((_c-body5242_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_$obj5239_)
                                   (not (eq? _$obj5239_ '#!void)))
                                 _L5225_)))
                    (if _block5196_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons '_gx#load-module
                                                            '()))
                                                (cons (cons '%#quote
                                                            (cons _block5196_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _c-body5242_))
                        (if (null? _c-body5242_)
                            '#!void
                            (cons '%#begin-syntax _c-body5242_)))))
                _tl52075222_)
               (_g52025212_ _g52035215_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g52025212_ _g52035215_))))
                                           (_g52025212_ _g52035215_)))))
                               (_g52015244_ _compiled5199_))))
                         _tl51665181_)))
                    (_g51615171_ _g51625174_)))))
        (_g51605247_ _stx5158_))))
  (define gxc#generate-meta-module%
    (lambda (_stx5089_ _state5090_)
      (begin
        (gxc#meta-state-end-phi! _state5090_)
        (let* ((_g50925106_
                (lambda (_g50935103_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g50935103_)))
               (_g50915155_
                (lambda (_g50935109_)
                  (if (gx#stx-pair? _g50935109_)
                      (let ((_e50965111_ (gx#stx-e _g50935109_)))
                        (let ((_hd50975114_ (##car _e50965111_))
                              (_tl50985116_ (##cdr _e50965111_)))
                          (if (gx#stx-pair? _tl50985116_)
                              (let ((_e50995119_ (gx#stx-e _tl50985116_)))
                                (let ((_hd51005122_ (##car _e50995119_))
                                      (_tl51015124_ (##cdr _e50995119_)))
                                  ((lambda (_L5127_ _L5128_)
                                     (let ((_key5141_
                                            (gx#core-identifier-key _L5128_)))
                                       (begin
                                         (if (interned-symbol? _key5141_)
                                             '#!void
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _stx5089_
                                              _L5128_
                                              _key5141_))
                                         (let* ((_ctx5143_
                                                 (gx#syntax-local-e__0
                                                  _L5128_))
                                                (_code5146_
                                                 (call-with-parameters
                                                  (lambda ()
                                                    (gxc#compile-e
                                                     (##structure-ref
                                                      _ctx5143_
                                                      '11
                                                      gx#module-context::t
                                                      '#f)
                                                     _state5090_))
                                                  gx#current-expander-context
                                                  _ctx5143_))
                                                (_rt5148_
                                                 (table-ref
                                                  (gxc#current-compile-runtime-sections)
                                                  _ctx5143_
                                                  '#f))
                                                (_loader5150_
                                                 (if _rt5148_
                                                     (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref (cons '_gx#load-module '()))
                               (cons (cons '%#quote (cons _rt5148_ '())) '())))
                   '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                                (_modid5152_
                                                 (gx#stx-e _L5128_)))
                                           (begin
                                             (gxc#meta-state-end-phi!
                                              _state5090_)
                                             (cons '%#module
                                                   (cons _modid5152_
                                                         (cons _code5146_
                                                               _loader5150_))))))))
                                   _tl51015124_
                                   _hd51005122_)))
                              (_g50925106_ _g50935109_))))
                      (_g50925106_ _g50935109_)))))
          (_g50915155_ _stx5089_)))))
  (define gxc#generate-meta-import-path
    (lambda (_ctx5079_ _context-chain5080_)
      (let _lp5082_ ((_ctx5084_ _ctx5079_) (_path5085_ '()))
        (let ((_super5087_
               (##structure-ref _ctx5084_ '3 gx#phi-context::t '#f)))
          (if (memq _super5087_ _context-chain5080_)
              (cons* '#f
                     (car (##structure-ref
                           _ctx5084_
                           '7
                           gx#module-context::t
                           '#f))
                     _path5085_)
              (if (##structure-instance-of? _super5087_ 'gx#module-context::t)
                  (_lp5082_
                   _super5087_
                   (cons (car (##structure-ref
                               _ctx5084_
                               '7
                               gx#module-context::t
                               '#f))
                         _path5085_))
                  (cons (make-symbol
                         '":"
                         (##structure-ref
                          _ctx5084_
                          '1
                          gx#expander-context::t
                          '#f))
                        _path5085_)))))))
  (define gxc#current-context-chain
    (lambda ()
      (let _lp5074_ ((_ctx5076_ (gx#current-expander-context)) (_r5077_ '()))
        (if (##structure-instance-of? _ctx5076_ 'gx#module-context::t)
            (_lp5074_
             (##structure-ref _ctx5076_ '3 gx#phi-context::t '#f)
             (cons _ctx5076_ _r5077_))
            _r5077_))))
  (define gxc#generate-meta-import%
    (lambda (_stx4843_ _state4844_)
      (letrec* ((_context-chain4846_ (gxc#current-context-chain))
                (_make-import-spec4847_
                 (lambda (_in5010_)
                   (let* ((_in50115023_ _in5010_)
                          (_E50135027_
                           (lambda ()
                             (error '"No clause matching" _in50115023_)))
                          (_K50145037_
                           (lambda (_phi5030_
                                    _name5031_
                                    _src-name5032_
                                    _src-phi5033_
                                    _src-key5034_
                                    _src-ctx5035_)
                             (cons _phi5030_
                                   (cons (gxc#generate-runtime-identifier-key
                                          _name5031_)
                                         (cons _src-phi5033_
                                               (cons (gxc#generate-runtime-identifier-key
                                                      _src-name5032_)
                                                     '())))))))
                     (if (##structure-direct-instance-of?
                          _in50115023_
                          (##type-id gx#module-import::t))
                         (let ((_e50155040_ (##vector-ref _in50115023_ '1)))
                           (if (##structure-direct-instance-of?
                                _e50155040_
                                (##type-id gx#module-export::t))
                               (let* ((_e50185043_
                                       (##vector-ref _e50155040_ '1))
                                      (_src-ctx5046_ _e50185043_)
                                      (_e50195048_
                                       (##vector-ref _e50155040_ '2))
                                      (_src-key5051_ _e50195048_)
                                      (_e50205053_
                                       (##vector-ref _e50155040_ '3))
                                      (_src-phi5056_ _e50205053_)
                                      (_e50215058_
                                       (##vector-ref _e50155040_ '4))
                                      (_src-name5061_ _e50215058_)
                                      (_e50165063_
                                       (##vector-ref _in50115023_ '2))
                                      (_name5066_ _e50165063_)
                                      (_e50175068_
                                       (##vector-ref _in50115023_ '3))
                                      (_phi5071_ _e50175068_))
                                 (_K50145037_
                                  _phi5071_
                                  _name5066_
                                  _src-name5061_
                                  _src-phi5056_
                                  _src-key5051_
                                  _src-ctx5046_))
                               (_E50135027_)))
                         (_E50135027_)))))
                (_make-import-path4848_
                 (lambda (_ctx5008_)
                   (gxc#generate-meta-import-path
                    _ctx5008_
                    _context-chain4846_)))
                (_make-import-spec-in4849_
                 (lambda (_ctx5005_ _in5006_)
                   (cons 'spec:
                         (cons (_make-import-path4848_ _ctx5005_)
                               (reverse _in5006_))))))
        (begin
          (gxc#meta-state-end-phi! _state4844_)
          (let* ((_g48514861_
                  (lambda (_g48524858_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g48524858_)))
                 (_g48505002_
                  (lambda (_g48524864_)
                    (if (gx#stx-pair? _g48524864_)
                        (let ((_e48544866_ (gx#stx-e _g48524864_)))
                          (let ((_hd48554869_ (##car _e48544866_))
                                (_tl48564871_ (##cdr _e48544866_)))
                            ((lambda (_L4874_)
                               (let _lp4885_ ((_rest4887_ _L4874_)
                                              (_current-src4888_ '#f)
                                              (_current-in4889_ '())
                                              (_r4890_ '()))
                                 (let* ((_rest48914899_ _rest4887_)
                                        (_E48944903_
                                         (lambda ()
                                           (error '"No clause matching"
                                                  _rest48914899_)))
                                        (_else48934909_
                                         (lambda ()
                                           (let ((_r4907_ (if _current-src4888_
                                                              (cons (_make-import-spec-in4849_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _current-src4888_
                             _current-in4889_)
                            _r4890_)
                      _r4890_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons '%#import
                                                   (reverse _r4907_)))))
                                        (_K48954990_
                                         (lambda (_rest4912_ _in4913_)
                                           (if (##structure-direct-instance-of?
                                                _in4913_
                                                'gx#module-import::t)
                                               (let* ((_in49144921_ _in4913_)
                                                      (_E49164925_
                                                       (lambda ()
                                                         (error '"No clause matching"
                                                                _in49144921_)))
                                                      (_K49174930_
                                                       (lambda (_src-ctx4928_)
                                                         (if (eq? _current-src4888_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-ctx4928_)
                     (_lp4885_
                      _rest4912_
                      _current-src4888_
                      (cons (_make-import-spec4847_ _in4913_) _current-in4889_)
                      _r4890_)
                     (if _current-src4888_
                         (_lp4885_
                          _rest4912_
                          _src-ctx4928_
                          (cons (_make-import-spec4847_ _in4913_) '())
                          (cons (_make-import-spec-in4849_
                                 _current-src4888_
                                 _current-in4889_)
                                _r4890_))
                         (_lp4885_
                          _rest4912_
                          _src-ctx4928_
                          (cons (_make-import-spec4847_ _in4913_) '())
                          _r4890_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (##structure-direct-instance-of?
                                                      _in49144921_
                                                      (##type-id
                                                       gx#module-import::t))
                                                     (let ((_e49184933_
                                                            (##vector-ref
                                                             _in49144921_
                                                             '1)))
                                                       (if (##structure-direct-instance-of?
                                                            _e49184933_
                                                            (##type-id
                                                             gx#module-export::t))
                                                           (let* ((_e49194936_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##vector-ref _e49184933_ '1))
                          (_src-ctx4939_ _e49194936_))
                     (_K49174930_ _src-ctx4939_))
                   (_E49164925_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E49164925_)))
                                               (if (##structure-direct-instance-of?
                                                    _in4913_
                                                    'gx#import-set::t)
                                                   (let* ((_phi4941_
                                                           (##direct-structure-ref
                                                            _in4913_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src4943_
                                                           (##direct-structure-ref
                                                            _in4913_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src-in4983_
                                                           (let* ((_g49444953_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_make-import-path4848_ _src4943_))
                          (_E49474957_
                           (lambda ()
                             (error '"No clause matching" _g49444953_)))
                          (_try-match49464968_
                           (lambda ()
                             (let* ((_K49484963_
                                     (lambda (_path4961_)
                                       (cons 'in: _path4961_)))
                                    (_path4966_ _g49444953_))
                               (_K49484963_ _path4966_))))
                          (_K49494973_ (lambda (_path4971_) _path4971_)))
                     (if (##pair? _g49444953_)
                         (let ((_hd49504976_ (##car _g49444953_))
                               (_tl49514978_ (##cdr _g49444953_)))
                           (let ((_path4981_ _hd49504976_))
                             (if (##null? _tl49514978_)
                                 (_K49494973_ _path4981_)
                                 (_try-match49464968_))))
                         (_try-match49464968_))))
                  (_r4985_ (if _current-src4888_
                               (cons (_make-import-spec-in4849_
                                      _current-src4888_
                                      _current-in4889_)
                                     _r4890_)
                               _r4890_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_lp4885_
                                                      _rest4912_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _phi4941_)
                                                                _src-in4983_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _phi4941_ (cons _src-in4983_ '()))))
                    _r4985_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (##structure-instance-of?
                                                        _in4913_
                                                        'gx#module-context::t)
                                                       (let ((_r4988_ (if _current-src4888_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (_make-import-spec-in4849_
                                         _current-src4888_
                                         _current-in4889_)
                                        _r4890_)
                                  _r4890_)))
                 (_lp4885_
                  _rest4912_
                  '#f
                  '()
                  (cons (cons 'runtime: (_make-import-path4848_ _in4913_))
                        _r4988_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (##pair? _rest48914899_)
                                       (let ((_hd48964993_
                                              (##car _rest48914899_))
                                             (_tl48974995_
                                              (##cdr _rest48914899_)))
                                         (let* ((_in4998_ _hd48964993_)
                                                (_rest5000_ _tl48974995_))
                                           (_K48954990_ _rest5000_ _in4998_)))
                                       (_else48934909_)))))
                             _tl48564871_)))
                        (_g48514861_ _g48524864_)))))
            (_g48505002_ _stx4843_))))))
  (define gxc#generate-meta-export%
    (lambda (_stx4653_ _state4654_)
      (letrec* ((_context-chain4656_ (gxc#current-context-chain))
                (_make-import-path4657_
                 (lambda (_ctx4841_)
                   (gxc#generate-meta-import-path
                    _ctx4841_
                    _context-chain4656_))))
        (let* ((_g46594669_
                (lambda (_g46604666_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g46604666_)))
               (_g46584838_
                (lambda (_g46604672_)
                  (if (gx#stx-pair? _g46604672_)
                      (let ((_e46624674_ (gx#stx-e _g46604672_)))
                        (let ((_hd46634677_ (##car _e46624674_))
                              (_tl46644679_ (##cdr _e46624674_)))
                          ((lambda (_L4682_)
                             (let _lp4693_ ((_rest4695_ _L4682_) (_r4696_ '()))
                               (let* ((_rest46974705_ _rest4695_)
                                      (_E47004709_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _rest46974705_)))
                                      (_else46994713_
                                       (lambda ()
                                         (cons '%#export (reverse _r4696_))))
                                      (_K47014826_
                                       (lambda (_rest4716_ _out4717_)
                                         (let* ((_out47184731_ _out4717_)
                                                (_E47214735_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _out47184731_)))
                                                (_try-match47204798_
                                                 (lambda ()
                                                   (let ((_K47224785_
                                                          (lambda (_phi4739_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _src4740_)
                    (let* ((_out4780_
                            (if _src4740_
                                (cons 'import:
                                      (cons (let* ((_g47414750_
                                                    (_make-import-path4657_
                                                     _src4740_))
                                                   (_E47444754_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _g47414750_)))
                                                   (_try-match47434765_
                                                    (lambda ()
                                                      (let* ((_K47454760_
                                                              (lambda (_path4758_)
                                                                (cons 'in:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _path4758_)))
                     (_path4763_ _g47414750_))
                (_K47454760_ _path4763_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K47464770_
                                                    (lambda (_path4768_)
                                                      _path4768_)))
                                              (if (##pair? _g47414750_)
                                                  (let ((_hd47474773_
                                                         (##car _g47414750_))
                                                        (_tl47484775_
                                                         (##cdr _g47414750_)))
                                                    (let ((_path4778_
                                                           _hd47474773_))
                                                      (if (##null? _tl47484775_)
                                                          (_K47464770_
                                                           _path4778_)
                                                          (_try-match47434765_))))
                                                  (_try-match47434765_)))
                                            '()))
                                '#t))
                           (_out4782_
                            (if (fxzero? _phi4739_)
                                _out4780_
                                (cons 'phi:
                                      (cons _phi4739_ (cons _out4780_ '()))))))
                      (_lp4693_ _rest4716_ (cons _out4782_ _r4696_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##structure-direct-instance-of?
                                                          _out47184731_
                                                          (##type-id
                                                           gx#export-set::t))
                                                         (let* ((_e47234788_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref _out47184731_ '1))
                        (_src4791_ _e47234788_)
                        (_e47244793_ (##vector-ref _out47184731_ '2))
                        (_phi4796_ _e47244793_))
                   (_K47224785_ _phi4796_ _src4791_))
                 (_E47214735_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_K47254805_
                                                 (lambda (_name4801_
                                                          _phi4802_
                                                          _key4803_)
                                                   (_lp4693_
                                                    _rest4716_
                                                    (cons (cons 'spec:
                                                                (cons _phi4802_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gxc#generate-runtime-identifier-key
                                     _key4803_)
                                    (cons (gxc#generate-runtime-identifier-key
                                           _name4801_)
                                          '()))))
                  _r4696_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (##structure-direct-instance-of?
                                                _out47184731_
                                                (##type-id
                                                 gx#module-export::t))
                                               (let* ((_e47264808_
                                                       (##vector-ref
                                                        _out47184731_
                                                        '1))
                                                      (_e47274811_
                                                       (##vector-ref
                                                        _out47184731_
                                                        '2))
                                                      (_key4814_ _e47274811_)
                                                      (_e47284816_
                                                       (##vector-ref
                                                        _out47184731_
                                                        '3))
                                                      (_phi4819_ _e47284816_)
                                                      (_e47294821_
                                                       (##vector-ref
                                                        _out47184731_
                                                        '4))
                                                      (_name4824_ _e47294821_))
                                                 (_K47254805_
                                                  _name4824_
                                                  _phi4819_
                                                  _key4814_))
                                               (_try-match47204798_))))))
                                 (if (##pair? _rest46974705_)
                                     (let ((_hd47024829_
                                            (##car _rest46974705_))
                                           (_tl47034831_
                                            (##cdr _rest46974705_)))
                                       (let* ((_out4834_ _hd47024829_)
                                              (_rest4836_ _tl47034831_))
                                         (_K47014826_ _rest4836_ _out4834_)))
                                     (_else46994713_)))))
                           _tl46644679_)))
                      (_g46594669_ _g46604672_)))))
          (_g46584838_ _stx4653_)))))
  (define gxc#generate-meta-provide%
    (lambda (_stx4614_ _state4615_)
      (begin
        (gxc#meta-state-end-phi! _state4615_)
        (let* ((_g46174627_
                (lambda (_g46184624_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g46184624_)))
               (_g46164650_
                (lambda (_g46184630_)
                  (if (gx#stx-pair? _g46184630_)
                      (let ((_e46204632_ (gx#stx-e _g46184630_)))
                        (let ((_hd46214635_ (##car _e46204632_))
                              (_tl46224637_ (##cdr _e46204632_)))
                          ((lambda (_L4640_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _L4640_)))
                           _tl46224637_)))
                      (_g46174627_ _g46184630_)))))
          (_g46164650_ _stx4614_)))))
  (define gxc#generate-meta-extern%
    (lambda (_stx4485_ _state4486_)
      (letrec ((_generate14488_
                (lambda (_id4609_ _eid4610_)
                  (let ((_eid4612_ (gx#stx-e _eid4610_)))
                    (begin
                      (if (interned-symbol? _eid4612_)
                          '#!void
                          (gxc#raise-compile-error
                           '"Cannot compile extern reference"
                           _stx4485_
                           _eid4612_))
                      (cons (gxc#generate-runtime-identifier _id4609_)
                            (cons _eid4612_ '())))))))
        (let* ((_g44904518_
                (lambda (_g44914515_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g44914515_)))
               (_g44894606_
                (lambda (_g44914521_)
                  (if (gx#stx-pair? _g44914521_)
                      (let ((_e44944523_ (gx#stx-e _g44914521_)))
                        (let ((_hd44954526_ (##car _e44944523_))
                              (_tl44964528_ (##cdr _e44944523_)))
                          (if (gx#stx-pair/null? _tl44964528_)
                              (if (fx>= (gx#stx-length _tl44964528_) '0)
                                  (let ((_g12112_
                                         (gx#syntax-split-splice
                                          _tl44964528_
                                          '0)))
                                    (begin
                                      (let ((_g12113_ (values-count _g12112_)))
                                        (if (not (fx= _g12113_ 2))
                                            (error "Context expects 2 values"
                                                   _g12113_)))
                                      (let ((_target44974531_
                                             (values-ref _g12112_ 0))
                                            (_tl44994533_
                                             (values-ref _g12112_ 1)))
                                        (if (gx#stx-null? _tl44994533_)
                                            (letrec ((_loop45004536_
                                                      (lambda (_hd44984539_
                                                               _eid45044541_
                                                               _id45054543_)
                                                        (if (gx#stx-pair?
                                                             _hd44984539_)
                                                            (let ((_e45014546_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd44984539_)))
                      (let ((_lp-hd45024549_ (##car _e45014546_))
                            (_lp-tl45034551_ (##cdr _e45014546_)))
                        (if (gx#stx-pair? _lp-hd45024549_)
                            (let ((_e45084554_ (gx#stx-e _lp-hd45024549_)))
                              (let ((_hd45094557_ (##car _e45084554_))
                                    (_tl45104559_ (##cdr _e45084554_)))
                                (if (gx#stx-pair? _tl45104559_)
                                    (let ((_e45114562_
                                           (gx#stx-e _tl45104559_)))
                                      (let ((_hd45124565_ (##car _e45114562_))
                                            (_tl45134567_ (##cdr _e45114562_)))
                                        (if (gx#stx-null? _tl45134567_)
                                            (_loop45004536_
                                             _lp-tl45034551_
                                             (cons _hd45124565_ _eid45044541_)
                                             (cons _hd45094557_ _id45054543_))
                                            (_g44904518_ _g44914521_))))
                                    (_g44904518_ _g44914521_))))
                            (_g44904518_ _g44914521_))))
                    (let ((_eid45064570_ (reverse _eid45044541_))
                          (_id45074572_ (reverse _id45054543_)))
                      ((lambda (_L4575_ _L4576_)
                         (cons '%#extern
                               (map _generate14488_
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g45914594_ _g45924596_)
                                                (cons _g45914594_ _g45924596_))
                                              '()
                                              _L4576_))
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g45984601_ _g45994603_)
                                                (cons _g45984601_ _g45994603_))
                                              '()
                                              _L4575_)))))
                       _eid45064570_
                       _id45074572_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop45004536_
                                               _target44974531_
                                               '()
                                               '()))
                                            (_g44904518_ _g44914521_)))))
                                  (_g44904518_ _g44914521_))
                              (_g44904518_ _g44914521_))))
                      (_g44904518_ _g44914521_)))))
          (_g44894606_ _stx4485_)))))
  (define gxc#generate-meta-define-values%
    (lambda (_stx4280_ _state4281_)
      (letrec ((_generate14283_
                (lambda (_id4480_)
                  (let ((_eid4482_ (gxc#generate-runtime-binding-id _id4480_))
                        (_ident4483_
                         (gxc#generate-runtime-identifier _id4480_)))
                    (cons '%#define-runtime
                          (cons _ident4483_ (cons _eid4482_ '()))))))
               (_generate*4284_
                (lambda (_all4448_)
                  (let* ((_all44494457_ _all4448_)
                         (_E44524461_
                          (lambda ()
                            (error '"No clause matching" _all44494457_)))
                         (_else44514465_ (lambda () (cons '%#begin _all4448_)))
                         (_K44534470_ (lambda (_one4468_) _one4468_)))
                    (if (##pair? _all44494457_)
                        (let ((_hd44544473_ (##car _all44494457_))
                              (_tl44554475_ (##cdr _all44494457_)))
                          (let ((_one4478_ _hd44544473_))
                            (if (##null? _tl44554475_)
                                (_K44534470_ _one4478_)
                                (_else44514465_))))
                        (_else44514465_))))))
        (let* ((_g42864303_
                (lambda (_g42874300_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g42874300_)))
               (_g42854445_
                (lambda (_g42874306_)
                  (if (gx#stx-pair? _g42874306_)
                      (let ((_e42904308_ (gx#stx-e _g42874306_)))
                        (let ((_hd42914311_ (##car _e42904308_))
                              (_tl42924313_ (##cdr _e42904308_)))
                          (if (gx#stx-pair? _tl42924313_)
                              (let ((_e42934316_ (gx#stx-e _tl42924313_)))
                                (let ((_hd42944319_ (##car _e42934316_))
                                      (_tl42954321_ (##cdr _e42934316_)))
                                  (if (gx#stx-pair? _tl42954321_)
                                      (let ((_e42964324_
                                             (gx#stx-e _tl42954321_)))
                                        (let ((_hd42974327_
                                               (##car _e42964324_))
                                              (_tl42984329_
                                               (##cdr _e42964324_)))
                                          (if (gx#stx-null? _tl42984329_)
                                              ((lambda (_L4332_ _L4333_)
                                                 (let _lp4349_ ((_rest4351_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L4333_)
                        (_r4352_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_g43574373_
                                                           (lambda (_g43584370_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g43584370_)))
                                                          (_g43564380_
                                                           (lambda (_g43584376_)
                                                             ((lambda ()
                                                                (_generate*4284_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (reverse _r4352_))))))
                  (_g43554396_
                   (lambda (_g43584383_)
                     ((lambda (_L4385_)
                        (if (gx#identifier? _L4385_)
                            (_generate*4284_
                             (foldl1 cons
                                     (cons (_generate14283_ _L4385_) '())
                                     _r4352_))
                            (_g43564380_ _g43584383_)))
                      _g43584383_)))
                  (_g43544420_
                   (lambda (_g43584399_)
                     (if (gx#stx-pair? _g43584399_)
                         (let ((_e43654401_ (gx#stx-e _g43584399_)))
                           (let ((_hd43664404_ (##car _e43654401_))
                                 (_tl43674406_ (##cdr _e43654401_)))
                             ((lambda (_L4409_ _L4410_)
                                (_lp4349_
                                 _L4409_
                                 (cons (_generate14283_ _L4410_) _r4352_)))
                              _tl43674406_
                              _hd43664404_)))
                         (_g43554396_ _g43584399_))))
                  (_g43534442_
                   (lambda (_g43584423_)
                     (if (gx#stx-pair? _g43584423_)
                         (let ((_e43604425_ (gx#stx-e _g43584423_)))
                           (let ((_hd43614428_ (##car _e43604425_))
                                 (_tl43624430_ (##cdr _e43604425_)))
                             (if (gx#stx-datum? _hd43614428_)
                                 (if (equal? (gx#stx-e _hd43614428_) '#f)
                                     ((lambda (_L4433_)
                                        (_lp4349_ _L4433_ _r4352_))
                                      _tl43624430_)
                                     (_g43544420_ _g43584423_))
                                 (_g43544420_ _g43584423_))))
                         (_g43544420_ _g43584423_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g43534442_
                                                      _rest4351_))))
                                               _hd42974327_
                                               _hd42944319_)
                                              (_g42864303_ _g42874306_))))
                                      (_g42864303_ _g42874306_))))
                              (_g42864303_ _g42874306_))))
                      (_g42864303_ _g42874306_)))))
          (_g42854445_ _stx4280_)))))
  (define gxc#generate-meta-define-syntax%
    (lambda (_stx4177_ _state4178_)
      (let* ((_g41804197_
              (lambda (_g41814194_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g41814194_)))
             (_g41794277_
              (lambda (_g41814200_)
                (if (gx#stx-pair? _g41814200_)
                    (let ((_e41844202_ (gx#stx-e _g41814200_)))
                      (let ((_hd41854205_ (##car _e41844202_))
                            (_tl41864207_ (##cdr _e41844202_)))
                        (if (gx#stx-pair? _tl41864207_)
                            (let ((_e41874210_ (gx#stx-e _tl41864207_)))
                              (let ((_hd41884213_ (##car _e41874210_))
                                    (_tl41894215_ (##cdr _e41874210_)))
                                (if (gx#stx-pair? _tl41894215_)
                                    (let ((_e41904218_
                                           (gx#stx-e _tl41894215_)))
                                      (let ((_hd41914221_ (##car _e41904218_))
                                            (_tl41924223_ (##cdr _e41904218_)))
                                        (if (gx#stx-null? _tl41924223_)
                                            ((lambda (_L4226_ _L4227_)
                                               (let* ((_eid4242_
                                                       (gxc#generate-runtime-binding-id
                                                        _L4227_))
                                                      (_phi4244_
                                                       (fx+ (gx#current-expander-phi)
                                                            '1))
                                                      (_block4246_
                                                       (gxc#meta-state-begin-phi!
                                                        _state4178_
                                                        _phi4244_)))
                                                 (begin
                                                   (let* ((_g42494256_
                                                           (lambda (_g42504253_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g42504253_)))
                                                          (_g42484274_
                                                           (lambda (_g42504259_)
                                                             ((lambda (_L4261_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#meta-state-add-phi!
                           _state4178_
                           _phi4244_
                           (cons (gx#datum->syntax__0 '#f '%#define-runtime)
                                 (cons _L4261_ (cons _L4226_ '()))))))
                      _g42504259_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g42484274_ _eid4242_))
                                                   (if _block4246_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons '_gx#load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _block4246_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (gxc#generate-runtime-identifier
                                              _L4227_)
                                             (cons _eid4242_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (gxc#generate-runtime-identifier _L4227_)
                           (cons _eid4242_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd41914221_
                                             _hd41884213_)
                                            (_g41804197_ _g41814200_))))
                                    (_g41804197_ _g41814200_))))
                            (_g41804197_ _g41814200_))))
                    (_g41804197_ _g41814200_)))))
        (_g41794277_ _stx4177_))))
  (define gxc#generate-meta-define-alias%
    (lambda (_stx4109_ _state4110_)
      (let* ((_g41124129_
              (lambda (_g41134126_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g41134126_)))
             (_g41114174_
              (lambda (_g41134132_)
                (if (gx#stx-pair? _g41134132_)
                    (let ((_e41164134_ (gx#stx-e _g41134132_)))
                      (let ((_hd41174137_ (##car _e41164134_))
                            (_tl41184139_ (##cdr _e41164134_)))
                        (if (gx#stx-pair? _tl41184139_)
                            (let ((_e41194142_ (gx#stx-e _tl41184139_)))
                              (let ((_hd41204145_ (##car _e41194142_))
                                    (_tl41214147_ (##cdr _e41194142_)))
                                (if (gx#stx-pair? _tl41214147_)
                                    (let ((_e41224150_
                                           (gx#stx-e _tl41214147_)))
                                      (let ((_hd41234153_ (##car _e41224150_))
                                            (_tl41244155_ (##cdr _e41224150_)))
                                        (if (gx#stx-null? _tl41244155_)
                                            ((lambda (_L4158_ _L4159_)
                                               (cons '%#define-alias
                                                     (cons (gxc#generate-runtime-identifier
                                                            _L4159_)
                                                           (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L4158_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd41234153_
                                             _hd41204145_)
                                            (_g41124129_ _g41134132_))))
                                    (_g41124129_ _g41134132_))))
                            (_g41124129_ _g41134132_))))
                    (_g41124129_ _g41134132_)))))
        (_g41114174_ _stx4109_))))
  (define gxc#generate-meta-phi-define-values%
    (lambda (_stx4106_ _state4107_)
      (begin
        (gxc#meta-state-add-phi!
         _state4107_
         (gx#current-expander-phi)
         _stx4106_)
        (gxc#generate-meta-define-values% _stx4106_ _state4107_))))
  (define gxc#generate-meta-phi-expr
    (lambda (_stx4103_ _state4104_)
      (begin
        (gxc#meta-state-add-phi!
         _state4104_
         (gx#current-expander-phi)
         _stx4103_)
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
    (lambda _$args4100_
      (apply make-struct-instance gxc#meta-state::t _$args4100_)))
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
    (lambda (_self4097_ _ctx4098_)
      (if (##fx< '4 (##vector-length _self4097_))
          (begin
            (##vector-set!
             _self4097_
             '1
             (symbol->string
              (##structure-ref _ctx4098_ '1 gx#expander-context::t '#f)))
            (##vector-set! _self4097_ '2 '1)
            (##vector-set! _self4097_ '3 (make-hash-table-eq))
            (##vector-set! _self4097_ '4 '()))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self4097_))))
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
    (lambda _$args3972_
      (apply make-struct-instance gxc#meta-state-block::t _$args3972_)))
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
    (lambda (_state3931_ _phi3932_)
      (let* ((_state39333941_ _state3931_)
             (_E39353945_
              (lambda () (error '"No clause matching" _state39333941_)))
             (_K39363954_
              (lambda (_open3948_ _n3949_ _src3950_)
                (if (table-ref _open3948_ _phi3932_ '#f)
                    '#f
                    (let ((_block-ref3952_
                           (string-append
                            _src3950_
                            '"__"
                            (number->string _n3949_))))
                      (begin
                        (##structure-set!
                         _state3931_
                         (fx+ _n3949_ '1)
                         '2
                         gxc#meta-state::t
                         '#f)
                        (table-set!
                         _open3948_
                         _phi3932_
                         (##structure
                          gxc#meta-state-block::t
                          (gx#current-expander-context)
                          _phi3932_
                          _n3949_
                          '()))
                        _block-ref3952_))))))
        (if (##structure-instance-of?
             _state39333941_
             (##type-id gxc#meta-state::t))
            (let* ((_e39373957_ (##vector-ref _state39333941_ '1))
                   (_src3960_ _e39373957_)
                   (_e39383962_ (##vector-ref _state39333941_ '2))
                   (_n3965_ _e39383962_)
                   (_e39393967_ (##vector-ref _state39333941_ '3))
                   (_open3970_ _e39393967_))
              (_K39363954_ _open3970_ _n3965_ _src3960_))
            (_E39353945_)))))
  (define gxc#meta-state-add-phi!
    (lambda (_state3925_ _phi3926_ _stx3927_)
      (let ((_block3929_
             (table-ref
              (##structure-ref _state3925_ '3 gxc#meta-state::t '#f)
              _phi3926_
              '#f)))
        (##structure-set!
         _block3929_
         (cons _stx3927_
               (##structure-ref _block3929_ '4 gxc#meta-state-block::t '#f))
         '4
         gxc#meta-state-block::t
         '#f))))
  (define gxc#meta-state-end-phi!
    (lambda (_state3920_)
      (begin
        (##structure-set!
         _state3920_
         (hash-fold
          (lambda (_g12114_ _block3922_ _r3923_) (cons _block3922_ _r3923_))
          (##structure-ref _state3920_ '4 gxc#meta-state::t '#f)
          (##structure-ref _state3920_ '3 gxc#meta-state::t '#f))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _state3920_
         (make-hash-table-eq)
         '3
         gxc#meta-state::t
         '#f))))
  (define gxc#meta-state-end!
    (lambda (_state3872_)
      (begin
        (gxc#meta-state-end-phi! _state3872_)
        (foldl1 (lambda (_block3874_ _r3875_)
                  (let* ((_block38763885_ _block3874_)
                         (_E38783889_
                          (lambda ()
                            (error '"No clause matching" _block38763885_)))
                         (_K38793897_
                          (lambda (_code3892_ _n3893_ _phi3894_ _ctx3895_)
                            (if (null? _code3892_)
                                _r3875_
                                (cons (cons _ctx3895_
                                            (cons _phi3894_
                                                  (cons _n3893_
                                                        (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (reverse _code3892_))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _r3875_)))))
                    (if (##structure-instance-of?
                         _block38763885_
                         (##type-id gxc#meta-state-block::t))
                        (let* ((_e38803900_ (##vector-ref _block38763885_ '1))
                               (_ctx3903_ _e38803900_)
                               (_e38813905_ (##vector-ref _block38763885_ '2))
                               (_phi3908_ _e38813905_)
                               (_e38823910_ (##vector-ref _block38763885_ '3))
                               (_n3913_ _e38823910_)
                               (_e38833915_ (##vector-ref _block38763885_ '4))
                               (_code3918_ _e38833915_))
                          (_K38793897_ _code3918_ _n3913_ _phi3908_ _ctx3903_))
                        (_E38783889_))))
                '()
                (##structure-ref _state3872_ '4 gxc#meta-state::t '#f)))))
  (define gxc#collect-expression-refs
    (lambda (_stx3868_)
      (let ((_ht3870_ (make-hash-table-eq)))
        (begin
          (gxc#apply-collect-expression-refs _stx3868_ _ht3870_)
          _ht3870_))))
  (define gxc#collect-refs-ref%
    (lambda (_stx3811_ _ht3812_)
      (let* ((_g38143827_
              (lambda (_g38153824_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g38153824_)))
             (_g38133865_
              (lambda (_g38153830_)
                (if (gx#stx-pair? _g38153830_)
                    (let ((_e38173832_ (gx#stx-e _g38153830_)))
                      (let ((_hd38183835_ (##car _e38173832_))
                            (_tl38193837_ (##cdr _e38173832_)))
                        (if (gx#stx-pair? _tl38193837_)
                            (let ((_e38203840_ (gx#stx-e _tl38193837_)))
                              (let ((_hd38213843_ (##car _e38203840_))
                                    (_tl38223845_ (##cdr _e38203840_)))
                                (if (gx#stx-null? _tl38223845_)
                                    ((lambda (_L3848_)
                                       (let* ((_bind3860_
                                               (gx#resolve-identifier__0
                                                _L3848_))
                                              (_eid3862_
                                               (if _bind3860_
                                                   (##structure-ref
                                                    _bind3860_
                                                    '1
                                                    gx#binding::t
                                                    '#f)
                                                   (gx#stx-e _L3848_))))
                                         (table-set!
                                          _ht3812_
                                          _eid3862_
                                          _eid3862_)))
                                     _hd38213843_)
                                    (_g38143827_ _g38153830_))))
                            (_g38143827_ _g38153830_))))
                    (_g38143827_ _g38153830_)))))
        (_g38133865_ _stx3811_))))
  (define gxc#collect-refs-setq%
    (lambda (_stx3738_ _ht3739_)
      (let* ((_g37413758_
              (lambda (_g37423755_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g37423755_)))
             (_g37403808_
              (lambda (_g37423761_)
                (if (gx#stx-pair? _g37423761_)
                    (let ((_e37453763_ (gx#stx-e _g37423761_)))
                      (let ((_hd37463766_ (##car _e37453763_))
                            (_tl37473768_ (##cdr _e37453763_)))
                        (if (gx#stx-pair? _tl37473768_)
                            (let ((_e37483771_ (gx#stx-e _tl37473768_)))
                              (let ((_hd37493774_ (##car _e37483771_))
                                    (_tl37503776_ (##cdr _e37483771_)))
                                (if (gx#stx-pair? _tl37503776_)
                                    (let ((_e37513779_
                                           (gx#stx-e _tl37503776_)))
                                      (let ((_hd37523782_ (##car _e37513779_))
                                            (_tl37533784_ (##cdr _e37513779_)))
                                        (if (gx#stx-null? _tl37533784_)
                                            ((lambda (_L3787_ _L3788_)
                                               (let* ((_bind3803_
                                                       (gx#resolve-identifier__0
                                                        _L3788_))
                                                      (_eid3805_
                                                       (if _bind3803_
                                                           (##structure-ref
                                                            _bind3803_
                                                            '1
                                                            gx#binding::t
                                                            '#f)
                                                           (gx#stx-e
                                                            _L3788_))))
                                                 (begin
                                                   (table-set!
                                                    _ht3739_
                                                    _eid3805_
                                                    _eid3805_)
                                                   (gxc#compile-e
                                                    _L3787_
                                                    _ht3739_))))
                                             _hd37523782_
                                             _hd37493774_)
                                            (_g37413758_ _g37423761_))))
                                    (_g37413758_ _g37423761_))))
                            (_g37413758_ _g37423761_))))
                    (_g37413758_ _g37423761_)))))
        (_g37403808_ _stx3738_))))
  (define gxc#find-runtime-begin%
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
                        ((lambda (_L3725_) (ormap1 gxc#compile-e _L3725_))
                         _tl37073722_)))
                    (_g37023712_ _g37033715_)))))
        (_g37013735_ _stx3700_))))
  (define gxc#find-lambda-expression-begin%
    (lambda (_stx3662_)
      (let* ((_g36643674_
              (lambda (_g36653671_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g36653671_)))
             (_g36633697_
              (lambda (_g36653677_)
                (if (gx#stx-pair? _g36653677_)
                    (let ((_e36673679_ (gx#stx-e _g36653677_)))
                      (let ((_hd36683682_ (##car _e36673679_))
                            (_tl36693684_ (##cdr _e36673679_)))
                        ((lambda (_L3687_) (gxc#compile-e (last _L3687_)))
                         _tl36693684_)))
                    (_g36643674_ _g36653677_)))))
        (_g36633697_ _stx3662_))))
  (define gxc#find-lambda-expression-begin-annotation%
    (lambda (_stx3595_)
      (let* ((_g35973614_
              (lambda (_g35983611_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g35983611_)))
             (_g35963659_
              (lambda (_g35983617_)
                (if (gx#stx-pair? _g35983617_)
                    (let ((_e36013619_ (gx#stx-e _g35983617_)))
                      (let ((_hd36023622_ (##car _e36013619_))
                            (_tl36033624_ (##cdr _e36013619_)))
                        (if (gx#stx-pair? _tl36033624_)
                            (let ((_e36043627_ (gx#stx-e _tl36033624_)))
                              (let ((_hd36053630_ (##car _e36043627_))
                                    (_tl36063632_ (##cdr _e36043627_)))
                                (if (gx#stx-pair? _tl36063632_)
                                    (let ((_e36073635_
                                           (gx#stx-e _tl36063632_)))
                                      (let ((_hd36083638_ (##car _e36073635_))
                                            (_tl36093640_ (##cdr _e36073635_)))
                                        (if (gx#stx-null? _tl36093640_)
                                            ((lambda (_L3643_ _L3644_)
                                               (gxc#compile-e _L3643_))
                                             _hd36083638_
                                             _hd36053630_)
                                            (_g35973614_ _g35983617_))))
                                    (_g35973614_ _g35983617_))))
                            (_g35973614_ _g35983617_))))
                    (_g35973614_ _g35983617_)))))
        (_g35963659_ _stx3595_))))
  (define gxc#find-lambda-expression-let-values%
    (lambda (_stx3528_)
      (let* ((_g35303547_
              (lambda (_g35313544_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g35313544_)))
             (_g35293592_
              (lambda (_g35313550_)
                (if (gx#stx-pair? _g35313550_)
                    (let ((_e35343552_ (gx#stx-e _g35313550_)))
                      (let ((_hd35353555_ (##car _e35343552_))
                            (_tl35363557_ (##cdr _e35343552_)))
                        (if (gx#stx-pair? _tl35363557_)
                            (let ((_e35373560_ (gx#stx-e _tl35363557_)))
                              (let ((_hd35383563_ (##car _e35373560_))
                                    (_tl35393565_ (##cdr _e35373560_)))
                                (if (gx#stx-pair? _tl35393565_)
                                    (let ((_e35403568_
                                           (gx#stx-e _tl35393565_)))
                                      (let ((_hd35413571_ (##car _e35403568_))
                                            (_tl35423573_ (##cdr _e35403568_)))
                                        (if (gx#stx-null? _tl35423573_)
                                            ((lambda (_L3576_ _L3577_)
                                               (gxc#compile-e _L3576_))
                                             _hd35413571_
                                             _hd35383563_)
                                            (_g35303547_ _g35313550_))))
                                    (_g35303547_ _g35313550_))))
                            (_g35303547_ _g35313550_))))
                    (_g35303547_ _g35313550_)))))
        (_g35293592_ _stx3528_)))))
