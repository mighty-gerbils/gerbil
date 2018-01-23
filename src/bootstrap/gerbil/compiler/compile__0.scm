(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#current-compile-methods (make-parameter '#f))
  (define gxc#current-compile-lift (make-parameter '#f))
  (define gxc#current-compile-marks (make-parameter '#f))
  (define gxc#compile-e
    (lambda (_stx12006_ . _args12007_)
      (let* ((_g1200912019_
              (lambda (_g1201012016_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1201012016_)))
             (_g1200812047_
              (lambda (_g1201012022_)
                (if (gx#stx-pair? _g1201012022_)
                    (let ((_e1201212024_ (gx#stx-e _g1201012022_)))
                      (let ((_hd1201312027_ (##car _e1201212024_))
                            (_tl1201412029_ (##cdr _e1201212024_)))
                        ((lambda (_L12032_)
                           (let ((_$e12042_
                                  (table-ref
                                   (gxc#current-compile-methods)
                                   (gx#stx-e _L12032_)
                                   '#f)))
                             (if _$e12042_
                                 ((lambda (_method12045_)
                                    (apply _method12045_
                                           _stx12006_
                                           _args12007_))
                                  _$e12042_)
                                 (gxc#raise-compile-error
                                  '"Cannot compile; missing method"
                                  _stx12006_
                                  _L12032_))))
                         _hd1201312027_)))
                    (_g1200912019_ _g1201012022_)))))
        (_g1200812047_ _stx12006_))))
  (define gxc#&void-expression
    (make-promise
     (lambda ()
       (let ((_tbl12003_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12003_ '%#begin-annotation void)
           (table-set! _tbl12003_ '%#lambda void)
           (table-set! _tbl12003_ '%#case-lambda void)
           (table-set! _tbl12003_ '%#let-values void)
           (table-set! _tbl12003_ '%#letrec-values void)
           (table-set! _tbl12003_ '%#letrec*-values void)
           (table-set! _tbl12003_ '%#quote void)
           (table-set! _tbl12003_ '%#quote-syntax void)
           (table-set! _tbl12003_ '%#call void)
           (table-set! _tbl12003_ '%#if void)
           (table-set! _tbl12003_ '%#ref void)
           (table-set! _tbl12003_ '%#set! void)
           (table-set! _tbl12003_ '%#struct-instance? void)
           (table-set! _tbl12003_ '%#struct-direct-instance? void)
           (table-set! _tbl12003_ '%#struct-ref void)
           (table-set! _tbl12003_ '%#struct-set! void)
           (table-set! _tbl12003_ '%#struct-direct-ref void)
           (table-set! _tbl12003_ '%#struct-direct-set! void)
           (table-set! _tbl12003_ '%#struct-unchecked-ref void)
           (table-set! _tbl12003_ '%#struct-unchecked-set! void)
           _tbl12003_)))))
  (define gxc#&void-special-form
    (make-promise
     (lambda ()
       (let ((_tbl11999_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl11999_ '%#begin void)
           (table-set! _tbl11999_ '%#begin-syntax void)
           (table-set! _tbl11999_ '%#begin-foreign void)
           (table-set! _tbl11999_ '%#module void)
           (table-set! _tbl11999_ '%#import void)
           (table-set! _tbl11999_ '%#export void)
           (table-set! _tbl11999_ '%#provide void)
           (table-set! _tbl11999_ '%#extern void)
           (table-set! _tbl11999_ '%#define-values void)
           (table-set! _tbl11999_ '%#define-syntax void)
           (table-set! _tbl11999_ '%#define-alias void)
           (table-set! _tbl11999_ '%#declare void)
           _tbl11999_)))))
  (define gxc#&void
    (make-promise
     (lambda ()
       (let ((_tbl11995_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl11995_ (force gxc#&void-special-form))
           (hash-copy! _tbl11995_ (force gxc#&void-expression))
           _tbl11995_)))))
  (define gxc#&false-expression
    (make-promise
     (lambda ()
       (let ((_tbl11991_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl11991_ '%#begin-annotation false)
           (table-set! _tbl11991_ '%#lambda false)
           (table-set! _tbl11991_ '%#case-lambda false)
           (table-set! _tbl11991_ '%#let-values false)
           (table-set! _tbl11991_ '%#letrec-values false)
           (table-set! _tbl11991_ '%#letrec*-values false)
           (table-set! _tbl11991_ '%#quote false)
           (table-set! _tbl11991_ '%#quote-syntax false)
           (table-set! _tbl11991_ '%#call false)
           (table-set! _tbl11991_ '%#if false)
           (table-set! _tbl11991_ '%#ref false)
           (table-set! _tbl11991_ '%#set! false)
           (table-set! _tbl11991_ '%#struct-instance? false)
           (table-set! _tbl11991_ '%#struct-direct-instance? false)
           (table-set! _tbl11991_ '%#struct-ref false)
           (table-set! _tbl11991_ '%#struct-set! false)
           (table-set! _tbl11991_ '%#struct-direct-ref false)
           (table-set! _tbl11991_ '%#struct-direct-set! false)
           (table-set! _tbl11991_ '%#struct-unchecked-ref false)
           (table-set! _tbl11991_ '%#struct-unchecked-set! false)
           _tbl11991_)))))
  (define gxc#&false-special-form
    (make-promise
     (lambda ()
       (let ((_tbl11987_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl11987_ '%#begin false)
           (table-set! _tbl11987_ '%#begin-syntax false)
           (table-set! _tbl11987_ '%#begin-foreign false)
           (table-set! _tbl11987_ '%#module false)
           (table-set! _tbl11987_ '%#import false)
           (table-set! _tbl11987_ '%#export false)
           (table-set! _tbl11987_ '%#provide false)
           (table-set! _tbl11987_ '%#extern false)
           (table-set! _tbl11987_ '%#define-values false)
           (table-set! _tbl11987_ '%#define-syntax false)
           (table-set! _tbl11987_ '%#define-alias false)
           (table-set! _tbl11987_ '%#declare false)
           _tbl11987_)))))
  (define gxc#&false
    (make-promise
     (lambda ()
       (let ((_tbl11983_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl11983_ (force gxc#&false-special-form))
           (hash-copy! _tbl11983_ (force gxc#&false-expression))
           _tbl11983_)))))
  (define gxc#&collect-bindings
    (make-promise
     (lambda ()
       (let ((_tbl11979_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl11979_ (force gxc#&void-expression))
           (hash-copy! _tbl11979_ (force gxc#&void-special-form))
           (table-set! _tbl11979_ '%#begin gxc#collect-begin%)
           (table-set! _tbl11979_ '%#begin-syntax gxc#collect-begin-syntax%)
           (table-set! _tbl11979_ '%#module gxc#collect-module%)
           (table-set!
            _tbl11979_
            '%#define-values
            gxc#collect-bindings-define-values%)
           (table-set!
            _tbl11979_
            '%#define-syntax
            gxc#collect-bindings-define-syntax%)
           _tbl11979_)))))
  (define gxc#apply-collect-bindings
    (lambda (_stx11972_ . _args11974_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11972_ _args11974_))
       gxc#current-compile-methods
       (force gxc#&collect-bindings))))
  (define gxc#&lift-modules
    (make-promise
     (lambda ()
       (let ((_tbl11969_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl11969_ (force gxc#&void))
           (table-set! _tbl11969_ '%#begin gxc#collect-begin%)
           (table-set! _tbl11969_ '%#module gxc#lift-modules-module%)
           _tbl11969_)))))
  (define gxc#apply-lift-modules
    (lambda (_stx11962_ . _args11964_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11962_ _args11964_))
       gxc#current-compile-methods
       (force gxc#&lift-modules))))
  (define gxc#&find-runtime-code
    (make-promise
     (lambda ()
       (let ((_tbl11959_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl11959_ '%#begin gxc#find-runtime-begin%)
           (table-set! _tbl11959_ '%#begin-syntax false)
           (table-set! _tbl11959_ '%#begin-foreign true)
           (table-set! _tbl11959_ '%#begin-annotation true)
           (table-set! _tbl11959_ '%#module false)
           (table-set! _tbl11959_ '%#import false)
           (table-set! _tbl11959_ '%#export false)
           (table-set! _tbl11959_ '%#provide false)
           (table-set! _tbl11959_ '%#extern false)
           (table-set! _tbl11959_ '%#define-values true)
           (table-set! _tbl11959_ '%#define-syntax false)
           (table-set! _tbl11959_ '%#define-alias false)
           (table-set! _tbl11959_ '%#declare false)
           (table-set! _tbl11959_ '%#lambda true)
           (table-set! _tbl11959_ '%#case-lambda true)
           (table-set! _tbl11959_ '%#let-values true)
           (table-set! _tbl11959_ '%#letrec-values true)
           (table-set! _tbl11959_ '%#letrec*-values true)
           (table-set! _tbl11959_ '%#quote true)
           (table-set! _tbl11959_ '%#call true)
           (table-set! _tbl11959_ '%#if true)
           (table-set! _tbl11959_ '%#ref true)
           (table-set! _tbl11959_ '%#set! true)
           (table-set! _tbl11959_ '%#struct-instance? true)
           (table-set! _tbl11959_ '%#struct-direct-instance? true)
           (table-set! _tbl11959_ '%#struct-ref true)
           (table-set! _tbl11959_ '%#struct-set! true)
           (table-set! _tbl11959_ '%#struct-direct-ref true)
           (table-set! _tbl11959_ '%#struct-direct-set! true)
           (table-set! _tbl11959_ '%#struct-unchecked-ref true)
           (table-set! _tbl11959_ '%#struct-unchecked-set! true)
           _tbl11959_)))))
  (define gxc#apply-find-runtime-code
    (lambda (_stx11952_ . _args11954_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11952_ _args11954_))
       gxc#current-compile-methods
       (force gxc#&find-runtime-code))))
  (define gxc#&find-lambda-expression
    (make-promise
     (lambda ()
       (let ((_tbl11949_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl11949_ (force gxc#&false))
           (table-set! _tbl11949_ '%#begin gxc#find-lambda-expression-begin%)
           (table-set!
            _tbl11949_
            '%#begin-annotation
            gxc#find-lambda-expression-begin-annotation%)
           (table-set! _tbl11949_ '%#lambda values)
           (table-set! _tbl11949_ '%#case-lambda values)
           (table-set!
            _tbl11949_
            '%#let-values
            gxc#find-lambda-expression-let-values%)
           (table-set!
            _tbl11949_
            '%#letrec-values
            gxc#find-lambda-expression-let-values%)
           (table-set!
            _tbl11949_
            '%#letrec*-values
            gxc#find-lambda-expression-let-values%)
           _tbl11949_)))))
  (define gxc#apply-find-lambda-expression
    (lambda (_stx11942_ . _args11944_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11942_ _args11944_))
       gxc#current-compile-methods
       (force gxc#&find-lambda-expression))))
  (define gxc#&generate-runtime-empty
    (make-promise
     (lambda ()
       (let ((_tbl11939_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl11939_ '%#begin gxc#generate-runtime-empty)
           (table-set! _tbl11939_ '%#begin-syntax gxc#generate-runtime-empty)
           (table-set! _tbl11939_ '%#begin-foreign gxc#generate-runtime-empty)
           (table-set!
            _tbl11939_
            '%#begin-annotation
            gxc#generate-runtime-empty)
           (table-set! _tbl11939_ '%#module gxc#generate-runtime-empty)
           (table-set! _tbl11939_ '%#import gxc#generate-runtime-empty)
           (table-set! _tbl11939_ '%#export gxc#generate-runtime-empty)
           (table-set! _tbl11939_ '%#provide gxc#generate-runtime-empty)
           (table-set! _tbl11939_ '%#extern gxc#generate-runtime-empty)
           (table-set! _tbl11939_ '%#define-values gxc#generate-runtime-empty)
           (table-set! _tbl11939_ '%#define-syntax gxc#generate-runtime-empty)
           (table-set! _tbl11939_ '%#define-alias gxc#generate-runtime-empty)
           (table-set! _tbl11939_ '%#declare gxc#generate-runtime-empty)
           (table-set! _tbl11939_ '%#lambda gxc#generate-runtime-empty)
           (table-set! _tbl11939_ '%#case-lambda gxc#generate-runtime-empty)
           (table-set! _tbl11939_ '%#let-values gxc#generate-runtime-empty)
           (table-set! _tbl11939_ '%#letrec-values gxc#generate-runtime-empty)
           (table-set! _tbl11939_ '%#letrec*-values gxc#generate-runtime-empty)
           (table-set! _tbl11939_ '%#quote gxc#generate-runtime-empty)
           (table-set! _tbl11939_ '%#call gxc#generate-runtime-empty)
           (table-set! _tbl11939_ '%#if gxc#generate-runtime-empty)
           (table-set! _tbl11939_ '%#ref gxc#generate-runtime-empty)
           (table-set! _tbl11939_ '%#set! gxc#generate-runtime-empty)
           (table-set!
            _tbl11939_
            '%#struct-instance?
            gxc#generate-runtime-empty)
           (table-set!
            _tbl11939_
            '%#struct-direct-instance?
            gxc#generate-runtime-empty)
           (table-set! _tbl11939_ '%#struct-ref gxc#generate-runtime-empty)
           (table-set! _tbl11939_ '%#struct-set! gxc#generate-runtime-empty)
           (table-set!
            _tbl11939_
            '%#struct-direct-ref
            gxc#generate-runtime-empty)
           (table-set!
            _tbl11939_
            '%#struct-direct-set!
            gxc#generate-runtime-empty)
           (table-set!
            _tbl11939_
            '%#struct-unchecked-ref
            gxc#generate-runtime-empty)
           (table-set!
            _tbl11939_
            '%#struct-unchecked-set!
            gxc#generate-runtime-empty)
           _tbl11939_)))))
  (define gxc#&generate-loader
    (make-promise
     (lambda ()
       (let ((_tbl11935_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl11935_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl11935_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl11935_
            '%#import
            gxc#generate-runtime-loader-import%)
           _tbl11935_)))))
  (define gxc#apply-generate-loader
    (lambda (_stx11928_ . _args11930_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11928_ _args11930_))
       gxc#current-compile-methods
       (force gxc#&generate-loader))))
  (define gxc#&generate-runtime
    (make-promise
     (lambda ()
       (let ((_tbl11925_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl11925_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl11925_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl11925_
            '%#begin-foreign
            gxc#generate-runtime-begin-foreign%)
           (table-set!
            _tbl11925_
            '%#begin-annotation
            gxc#generate-runtime-begin-annotation%)
           (table-set!
            _tbl11925_
            '%#define-values
            gxc#generate-runtime-define-values%)
           (table-set! _tbl11925_ '%#declare gxc#generate-runtime-declare%)
           (table-set! _tbl11925_ '%#lambda gxc#generate-runtime-lambda%)
           (table-set!
            _tbl11925_
            '%#case-lambda
            gxc#generate-runtime-case-lambda%)
           (table-set!
            _tbl11925_
            '%#let-values
            gxc#generate-runtime-let-values%)
           (table-set!
            _tbl11925_
            '%#letrec-values
            gxc#generate-runtime-letrec-values%)
           (table-set!
            _tbl11925_
            '%#letrec*-values
            gxc#generate-runtime-letrec*-values%)
           (table-set! _tbl11925_ '%#quote gxc#generate-runtime-quote%)
           (table-set! _tbl11925_ '%#call gxc#generate-runtime-call%)
           (table-set! _tbl11925_ '%#if gxc#generate-runtime-if%)
           (table-set! _tbl11925_ '%#ref gxc#generate-runtime-ref%)
           (table-set! _tbl11925_ '%#set! gxc#generate-runtime-setq%)
           (table-set!
            _tbl11925_
            '%#struct-instance?
            gxc#generate-runtime-struct-instancep%)
           (table-set!
            _tbl11925_
            '%#struct-direct-instance?
            gxc#generate-runtime-struct-direct-instancep%)
           (table-set!
            _tbl11925_
            '%#struct-ref
            gxc#generate-runtime-struct-ref%)
           (table-set!
            _tbl11925_
            '%#struct-set!
            gxc#generate-runtime-struct-setq%)
           (table-set!
            _tbl11925_
            '%#struct-direct-ref
            gxc#generate-runtime-struct-direct-ref%)
           (table-set!
            _tbl11925_
            '%#struct-direct-set!
            gxc#generate-runtime-struct-direct-setq%)
           (table-set!
            _tbl11925_
            '%#struct-unchecked-ref
            gxc#generate-runtime-struct-unchecked-ref%)
           (table-set!
            _tbl11925_
            '%#struct-unchecked-set!
            gxc#generate-runtime-struct-unchecked-setq%)
           _tbl11925_)))))
  (define gxc#apply-generate-runtime
    (lambda (_stx11918_ . _args11920_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11918_ _args11920_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime))))
  (define gxc#&generate-runtime-phi
    (make-promise
     (lambda ()
       (let ((_tbl11915_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl11915_ (force gxc#&generate-runtime))
           (table-set!
            _tbl11915_
            '%#quote-syntax
            gxc#generate-runtime-phi-quote-syntax%)
           (table-set!
            _tbl11915_
            '%#define-runtime
            gxc#generate-runtime-phi-define-runtime%)
           _tbl11915_)))))
  (define gxc#apply-generate-runtime-phi
    (lambda (_stx11908_ . _args11910_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11908_ _args11910_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime-phi))))
  (define gxc#&collect-expression-refs
    (make-promise
     (lambda ()
       (let ((_tbl11905_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl11905_ '%#begin gxc#collect-begin%)
           (table-set!
            _tbl11905_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl11905_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl11905_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl11905_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl11905_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl11905_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl11905_ '%#quote void)
           (table-set! _tbl11905_ '%#quote-syntax void)
           (table-set! _tbl11905_ '%#call gxc#collect-operands)
           (table-set! _tbl11905_ '%#if gxc#collect-operands)
           (table-set! _tbl11905_ '%#ref gxc#collect-refs-ref%)
           (table-set! _tbl11905_ '%#set! gxc#collect-refs-setq%)
           (table-set! _tbl11905_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl11905_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl11905_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl11905_ '%#struct-set! gxc#collect-operands)
           (table-set! _tbl11905_ '%#struct-direct-ref gxc#collect-operands)
           (table-set! _tbl11905_ '%#struct-direct-set! gxc#collect-operands)
           (table-set! _tbl11905_ '%#struct-unchecked-ref gxc#collect-operands)
           (table-set!
            _tbl11905_
            '%#struct-unchecked-set!
            gxc#collect-operands)
           _tbl11905_)))))
  (define gxc#apply-collect-expression-refs
    (lambda (_stx11898_ . _args11900_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11898_ _args11900_))
       gxc#current-compile-methods
       (force gxc#&collect-expression-refs))))
  (define gxc#&generate-meta
    (make-promise
     (lambda ()
       (let ((_tbl11895_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl11895_ (force gxc#&void-expression))
           (table-set! _tbl11895_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl11895_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set! _tbl11895_ '%#module gxc#generate-meta-module%)
           (table-set! _tbl11895_ '%#import gxc#generate-meta-import%)
           (table-set! _tbl11895_ '%#export gxc#generate-meta-export%)
           (table-set! _tbl11895_ '%#provide gxc#generate-meta-provide%)
           (table-set! _tbl11895_ '%#extern gxc#generate-meta-extern%)
           (table-set!
            _tbl11895_
            '%#define-values
            gxc#generate-meta-define-values%)
           (table-set!
            _tbl11895_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl11895_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set! _tbl11895_ '%#begin-foreign void)
           (table-set! _tbl11895_ '%#declare void)
           _tbl11895_)))))
  (define gxc#apply-generate-meta
    (lambda (_stx11888_ . _args11890_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11888_ _args11890_))
       gxc#current-compile-methods
       (force gxc#&generate-meta))))
  (define gxc#&generate-meta-phi
    (make-promise
     (lambda ()
       (let ((_tbl11885_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl11885_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl11885_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set!
            _tbl11885_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl11885_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set!
            _tbl11885_
            '%#define-values
            gxc#generate-meta-phi-define-values%)
           (table-set!
            _tbl11885_
            '%#begin-annotation
            gxc#generate-meta-phi-expr)
           (table-set! _tbl11885_ '%#lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl11885_ '%#case-lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl11885_ '%#let-values gxc#generate-meta-phi-expr)
           (table-set! _tbl11885_ '%#letrec-values gxc#generate-meta-phi-expr)
           (table-set! _tbl11885_ '%#letrec*-values gxc#generate-meta-phi-expr)
           (table-set! _tbl11885_ '%#quote gxc#generate-meta-phi-expr)
           (table-set! _tbl11885_ '%#quote-syntax gxc#generate-meta-phi-expr)
           (table-set! _tbl11885_ '%#call gxc#generate-meta-phi-expr)
           (table-set! _tbl11885_ '%#if gxc#generate-meta-phi-expr)
           (table-set! _tbl11885_ '%#ref gxc#generate-meta-phi-expr)
           (table-set! _tbl11885_ '%#set! gxc#generate-meta-phi-expr)
           (table-set!
            _tbl11885_
            '%#struct-instance?
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl11885_
            '%#struct-direct-instance?
            gxc#generate-meta-phi-expr)
           (table-set! _tbl11885_ '%#struct-ref gxc#generate-meta-phi-expr)
           (table-set! _tbl11885_ '%#struct-set! gxc#generate-meta-phi-expr)
           (table-set!
            _tbl11885_
            '%#struct-direct-ref
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl11885_
            '%#struct-direct-set!
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl11885_
            '%#struct-unchecked-ref
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl11885_
            '%#struct-unchecked-set!
            gxc#generate-meta-phi-expr)
           (table-set! _tbl11885_ '%#declare void)
           _tbl11885_)))))
  (define gxc#apply-generate-meta-phi
    (lambda (_stx11878_ . _args11880_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11878_ _args11880_))
       gxc#current-compile-methods
       (force gxc#&generate-meta-phi))))
  (define gxc#collect-begin%
    (lambda (_stx11835_ . _args11836_)
      (let* ((_g1183811848_
              (lambda (_g1183911845_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1183911845_)))
             (_g1183711875_
              (lambda (_g1183911851_)
                (if (gx#stx-pair? _g1183911851_)
                    (let ((_e1184111853_ (gx#stx-e _g1183911851_)))
                      (let ((_hd1184211856_ (##car _e1184111853_))
                            (_tl1184311858_ (##cdr _e1184111853_)))
                        ((lambda (_L11861_)
                           (for-each
                            (lambda (_g1187011872_)
                              (apply gxc#compile-e _g1187011872_ _args11836_))
                            (gx#stx-e _L11861_)))
                         _tl1184311858_)))
                    (_g1183811848_ _g1183911851_)))))
        (_g1183711875_ _stx11835_))))
  (define gxc#collect-begin-syntax%
    (lambda (_stx11791_ . _args11792_)
      (let* ((_g1179411804_
              (lambda (_g1179511801_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1179511801_)))
             (_g1179311832_
              (lambda (_g1179511807_)
                (if (gx#stx-pair? _g1179511807_)
                    (let ((_e1179711809_ (gx#stx-e _g1179511807_)))
                      (let ((_hd1179811812_ (##car _e1179711809_))
                            (_tl1179911814_ (##cdr _e1179711809_)))
                        ((lambda (_L11817_)
                           (call-with-parameters
                            (lambda ()
                              (for-each
                               (lambda (_g1182711829_)
                                 (apply gxc#compile-e
                                        _g1182711829_
                                        _args11792_))
                               (gx#stx-e _L11817_)))
                            gx#current-expander-phi
                            (fx+ (gx#current-expander-phi) '1)))
                         _tl1179911814_)))
                    (_g1179411804_ _g1179511807_)))))
        (_g1179311832_ _stx11791_))))
  (define gxc#collect-module%
    (lambda (_stx11733_ . _args11734_)
      (let* ((_g1173611750_
              (lambda (_g1173711747_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1173711747_)))
             (_g1173511788_
              (lambda (_g1173711753_)
                (if (gx#stx-pair? _g1173711753_)
                    (let ((_e1174011755_ (gx#stx-e _g1173711753_)))
                      (let ((_hd1174111758_ (##car _e1174011755_))
                            (_tl1174211760_ (##cdr _e1174011755_)))
                        (if (gx#stx-pair? _tl1174211760_)
                            (let ((_e1174311763_ (gx#stx-e _tl1174211760_)))
                              (let ((_hd1174411766_ (##car _e1174311763_))
                                    (_tl1174511768_ (##cdr _e1174311763_)))
                                ((lambda (_L11771_ _L11772_)
                                   (let ((_ctx11785_
                                          (gx#syntax-local-e__0 _L11772_)))
                                     (call-with-parameters
                                      (lambda ()
                                        (apply gxc#compile-e
                                               (##structure-ref
                                                _ctx11785_
                                                '11
                                                gx#module-context::t
                                                '#f)
                                               _args11734_))
                                      gx#current-expander-context
                                      _ctx11785_)))
                                 _tl1174511768_
                                 _hd1174411766_)))
                            (_g1173611750_ _g1173711753_))))
                    (_g1173611750_ _g1173711753_)))))
        (_g1173511788_ _stx11733_))))
  (define gxc#collect-begin-annotation%
    (lambda (_stx11665_ . _args11666_)
      (let* ((_g1166811685_
              (lambda (_g1166911682_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1166911682_)))
             (_g1166711730_
              (lambda (_g1166911688_)
                (if (gx#stx-pair? _g1166911688_)
                    (let ((_e1167211690_ (gx#stx-e _g1166911688_)))
                      (let ((_hd1167311693_ (##car _e1167211690_))
                            (_tl1167411695_ (##cdr _e1167211690_)))
                        (if (gx#stx-pair? _tl1167411695_)
                            (let ((_e1167511698_ (gx#stx-e _tl1167411695_)))
                              (let ((_hd1167611701_ (##car _e1167511698_))
                                    (_tl1167711703_ (##cdr _e1167511698_)))
                                (if (gx#stx-pair? _tl1167711703_)
                                    (let ((_e1167811706_
                                           (gx#stx-e _tl1167711703_)))
                                      (let ((_hd1167911709_
                                             (##car _e1167811706_))
                                            (_tl1168011711_
                                             (##cdr _e1167811706_)))
                                        (if (gx#stx-null? _tl1168011711_)
                                            ((lambda (_L11714_ _L11715_)
                                               (apply gxc#compile-e
                                                      _L11714_
                                                      _args11666_))
                                             _hd1167911709_
                                             _hd1167611701_)
                                            (_g1166811685_ _g1166911688_))))
                                    (_g1166811685_ _g1166911688_))))
                            (_g1166811685_ _g1166911688_))))
                    (_g1166811685_ _g1166911688_)))))
        (_g1166711730_ _stx11665_))))
  (define gxc#collect-body-lambda%
    (lambda (_stx11597_ . _args11598_)
      (let* ((_g1160011617_
              (lambda (_g1160111614_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1160111614_)))
             (_g1159911662_
              (lambda (_g1160111620_)
                (if (gx#stx-pair? _g1160111620_)
                    (let ((_e1160411622_ (gx#stx-e _g1160111620_)))
                      (let ((_hd1160511625_ (##car _e1160411622_))
                            (_tl1160611627_ (##cdr _e1160411622_)))
                        (if (gx#stx-pair? _tl1160611627_)
                            (let ((_e1160711630_ (gx#stx-e _tl1160611627_)))
                              (let ((_hd1160811633_ (##car _e1160711630_))
                                    (_tl1160911635_ (##cdr _e1160711630_)))
                                (if (gx#stx-pair? _tl1160911635_)
                                    (let ((_e1161011638_
                                           (gx#stx-e _tl1160911635_)))
                                      (let ((_hd1161111641_
                                             (##car _e1161011638_))
                                            (_tl1161211643_
                                             (##cdr _e1161011638_)))
                                        (if (gx#stx-null? _tl1161211643_)
                                            ((lambda (_L11646_ _L11647_)
                                               (apply gxc#compile-e
                                                      _L11646_
                                                      _args11598_))
                                             _hd1161111641_
                                             _hd1160811633_)
                                            (_g1160011617_ _g1160111620_))))
                                    (_g1160011617_ _g1160111620_))))
                            (_g1160011617_ _g1160111620_))))
                    (_g1160011617_ _g1160111620_)))))
        (_g1159911662_ _stx11597_))))
  (define gxc#collect-body-case-lambda%
    (lambda (_stx11479_ . _args11480_)
      (let* ((_g1148211510_
              (lambda (_g1148311507_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1148311507_)))
             (_g1148111594_
              (lambda (_g1148311513_)
                (if (gx#stx-pair? _g1148311513_)
                    (let ((_e1148611515_ (gx#stx-e _g1148311513_)))
                      (let ((_hd1148711518_ (##car _e1148611515_))
                            (_tl1148811520_ (##cdr _e1148611515_)))
                        (if (gx#stx-pair/null? _tl1148811520_)
                            (if (fx>= (gx#stx-length _tl1148811520_) '0)
                                (let ((_g12049_
                                       (gx#syntax-split-splice
                                        _tl1148811520_
                                        '0)))
                                  (begin
                                    (let ((_g12050_ (values-count _g12049_)))
                                      (if (not (fx= _g12050_ 2))
                                          (error "Context expects 2 values"
                                                 _g12050_)))
                                    (let ((_target1148911523_
                                           (values-ref _g12049_ 0))
                                          (_tl1149111525_
                                           (values-ref _g12049_ 1)))
                                      (if (gx#stx-null? _tl1149111525_)
                                          (letrec ((_loop1149211528_
                                                    (lambda (_hd1149011531_
                                                             _body1149611533_
                                                             _hd1149711535_)
                                                      (if (gx#stx-pair?
                                                           _hd1149011531_)
                                                          (let ((_e1149311538_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd1149011531_)))
                    (let ((_lp-hd1149411541_ (##car _e1149311538_))
                          (_lp-tl1149511543_ (##cdr _e1149311538_)))
                      (if (gx#stx-pair? _lp-hd1149411541_)
                          (let ((_e1150011546_ (gx#stx-e _lp-hd1149411541_)))
                            (let ((_hd1150111549_ (##car _e1150011546_))
                                  (_tl1150211551_ (##cdr _e1150011546_)))
                              (if (gx#stx-pair? _tl1150211551_)
                                  (let ((_e1150311554_
                                         (gx#stx-e _tl1150211551_)))
                                    (let ((_hd1150411557_
                                           (##car _e1150311554_))
                                          (_tl1150511559_
                                           (##cdr _e1150311554_)))
                                      (if (gx#stx-null? _tl1150511559_)
                                          (_loop1149211528_
                                           _lp-tl1149511543_
                                           (cons _hd1150411557_
                                                 _body1149611533_)
                                           (cons _hd1150111549_
                                                 _hd1149711535_))
                                          (_g1148211510_ _g1148311513_))))
                                  (_g1148211510_ _g1148311513_))))
                          (_g1148211510_ _g1148311513_))))
                  (let ((_body1149811562_ (reverse _body1149611533_))
                        (_hd1149911564_ (reverse _hd1149711535_)))
                    ((lambda (_L11567_ _L11568_)
                       (for-each
                        (lambda (_g1158211584_)
                          (apply gxc#compile-e _g1158211584_ _args11480_))
                        (begin
                          '#!void
                          (foldr1 (lambda (_g1158611589_ _g1158711591_)
                                    (cons _g1158611589_ _g1158711591_))
                                  '()
                                  _L11567_))))
                     _body1149811562_
                     _hd1149911564_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1149211528_
                                             _target1148911523_
                                             '()
                                             '()))
                                          (_g1148211510_ _g1148311513_)))))
                                (_g1148211510_ _g1148311513_))
                            (_g1148211510_ _g1148311513_))))
                    (_g1148211510_ _g1148311513_)))))
        (_g1148111594_ _stx11479_))))
  (define gxc#collect-body-let-values%
    (lambda (_stx11332_ . _args11333_)
      (let* ((_g1133511370_
              (lambda (_g1133611367_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1133611367_)))
             (_g1133411476_
              (lambda (_g1133611373_)
                (if (gx#stx-pair? _g1133611373_)
                    (let ((_e1134011375_ (gx#stx-e _g1133611373_)))
                      (let ((_hd1134111378_ (##car _e1134011375_))
                            (_tl1134211380_ (##cdr _e1134011375_)))
                        (if (gx#stx-pair? _tl1134211380_)
                            (let ((_e1134311383_ (gx#stx-e _tl1134211380_)))
                              (let ((_hd1134411386_ (##car _e1134311383_))
                                    (_tl1134511388_ (##cdr _e1134311383_)))
                                (if (gx#stx-pair/null? _hd1134411386_)
                                    (if (fx>= (gx#stx-length _hd1134411386_)
                                              '0)
                                        (let ((_g12051_
                                               (gx#syntax-split-splice
                                                _hd1134411386_
                                                '0)))
                                          (begin
                                            (let ((_g12052_
                                                   (values-count _g12051_)))
                                              (if (not (fx= _g12052_ 2))
                                                  (error "Context expects 2 values"
                                                         _g12052_)))
                                            (let ((_target1134611391_
                                                   (values-ref _g12051_ 0))
                                                  (_tl1134811393_
                                                   (values-ref _g12051_ 1)))
                                              (if (gx#stx-null? _tl1134811393_)
                                                  (letrec ((_loop1134911396_
                                                            (lambda (_hd1134711399_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr1135311401_
                             _hd1135411403_)
                      (if (gx#stx-pair? _hd1134711399_)
                          (let ((_e1135011406_ (gx#stx-e _hd1134711399_)))
                            (let ((_lp-hd1135111409_ (##car _e1135011406_))
                                  (_lp-tl1135211411_ (##cdr _e1135011406_)))
                              (if (gx#stx-pair? _lp-hd1135111409_)
                                  (let ((_e1135711414_
                                         (gx#stx-e _lp-hd1135111409_)))
                                    (let ((_hd1135811417_
                                           (##car _e1135711414_))
                                          (_tl1135911419_
                                           (##cdr _e1135711414_)))
                                      (if (gx#stx-pair? _tl1135911419_)
                                          (let ((_e1136011422_
                                                 (gx#stx-e _tl1135911419_)))
                                            (let ((_hd1136111425_
                                                   (##car _e1136011422_))
                                                  (_tl1136211427_
                                                   (##cdr _e1136011422_)))
                                              (if (gx#stx-null? _tl1136211427_)
                                                  (_loop1134911396_
                                                   _lp-tl1135211411_
                                                   (cons _hd1136111425_
                                                         _expr1135311401_)
                                                   (cons _hd1135811417_
                                                         _hd1135411403_))
                                                  (_g1133511370_
                                                   _g1133611373_))))
                                          (_g1133511370_ _g1133611373_))))
                                  (_g1133511370_ _g1133611373_))))
                          (let ((_expr1135511430_ (reverse _expr1135311401_))
                                (_hd1135611432_ (reverse _hd1135411403_)))
                            (if (gx#stx-pair? _tl1134511388_)
                                (let ((_e1136311435_
                                       (gx#stx-e _tl1134511388_)))
                                  (let ((_hd1136411438_ (##car _e1136311435_))
                                        (_tl1136511440_ (##cdr _e1136311435_)))
                                    (if (gx#stx-null? _tl1136511440_)
                                        ((lambda (_L11443_ _L11444_ _L11445_)
                                           (for-each
                                            (lambda (_g1146411466_)
                                              (apply gxc#compile-e
                                                     _g1146411466_
                                                     _args11333_))
                                            (begin
                                              '#!void
                                              (foldr1 (lambda (_g1146811471_
                                                               _g1146911473_)
                                                        (cons _g1146811471_
                                                              _g1146911473_))
                                                      (cons _L11443_ '())
                                                      _L11444_))))
                                         _hd1136411438_
                                         _expr1135511430_
                                         _hd1135611432_)
                                        (_g1133511370_ _g1133611373_))))
                                (_g1133511370_ _g1133611373_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1134911396_
                                                     _target1134611391_
                                                     '()
                                                     '()))
                                                  (_g1133511370_
                                                   _g1133611373_)))))
                                        (_g1133511370_ _g1133611373_))
                                    (_g1133511370_ _g1133611373_))))
                            (_g1133511370_ _g1133611373_))))
                    (_g1133511370_ _g1133611373_)))))
        (_g1133411476_ _stx11332_))))
  (define gxc#collect-body-setq%
    (lambda (_stx11264_ . _args11265_)
      (let* ((_g1126711284_
              (lambda (_g1126811281_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1126811281_)))
             (_g1126611329_
              (lambda (_g1126811287_)
                (if (gx#stx-pair? _g1126811287_)
                    (let ((_e1127111289_ (gx#stx-e _g1126811287_)))
                      (let ((_hd1127211292_ (##car _e1127111289_))
                            (_tl1127311294_ (##cdr _e1127111289_)))
                        (if (gx#stx-pair? _tl1127311294_)
                            (let ((_e1127411297_ (gx#stx-e _tl1127311294_)))
                              (let ((_hd1127511300_ (##car _e1127411297_))
                                    (_tl1127611302_ (##cdr _e1127411297_)))
                                (if (gx#stx-pair? _tl1127611302_)
                                    (let ((_e1127711305_
                                           (gx#stx-e _tl1127611302_)))
                                      (let ((_hd1127811308_
                                             (##car _e1127711305_))
                                            (_tl1127911310_
                                             (##cdr _e1127711305_)))
                                        (if (gx#stx-null? _tl1127911310_)
                                            ((lambda (_L11313_ _L11314_)
                                               (apply gxc#compile-e
                                                      _L11313_
                                                      _args11265_))
                                             _hd1127811308_
                                             _hd1127511300_)
                                            (_g1126711284_ _g1126811287_))))
                                    (_g1126711284_ _g1126811287_))))
                            (_g1126711284_ _g1126811287_))))
                    (_g1126711284_ _g1126811287_)))))
        (_g1126611329_ _stx11264_))))
  (define gxc#collect-operands
    (lambda (_stx11177_ . _args11178_)
      (let* ((_g1118011199_
              (lambda (_g1118111196_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1118111196_)))
             (_g1117911261_
              (lambda (_g1118111202_)
                (if (gx#stx-pair? _g1118111202_)
                    (let ((_e1118311204_ (gx#stx-e _g1118111202_)))
                      (let ((_hd1118411207_ (##car _e1118311204_))
                            (_tl1118511209_ (##cdr _e1118311204_)))
                        (if (gx#stx-pair/null? _tl1118511209_)
                            (if (fx>= (gx#stx-length _tl1118511209_) '0)
                                (let ((_g12053_
                                       (gx#syntax-split-splice
                                        _tl1118511209_
                                        '0)))
                                  (begin
                                    (let ((_g12054_ (values-count _g12053_)))
                                      (if (not (fx= _g12054_ 2))
                                          (error "Context expects 2 values"
                                                 _g12054_)))
                                    (let ((_target1118611212_
                                           (values-ref _g12053_ 0))
                                          (_tl1118811214_
                                           (values-ref _g12053_ 1)))
                                      (if (gx#stx-null? _tl1118811214_)
                                          (letrec ((_loop1118911217_
                                                    (lambda (_hd1118711220_
                                                             _rands1119311222_)
                                                      (if (gx#stx-pair?
                                                           _hd1118711220_)
                                                          (let ((_e1119011225_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd1118711220_)))
                    (let ((_lp-hd1119111228_ (##car _e1119011225_))
                          (_lp-tl1119211230_ (##cdr _e1119011225_)))
                      (_loop1118911217_
                       _lp-tl1119211230_
                       (cons _lp-hd1119111228_ _rands1119311222_))))
                  (let ((_rands1119411233_ (reverse _rands1119311222_)))
                    ((lambda (_L11236_)
                       (for-each
                        (lambda (_g1124911251_)
                          (apply gxc#compile-e _g1124911251_ _args11178_))
                        (begin
                          '#!void
                          (foldr1 (lambda (_g1125311256_ _g1125411258_)
                                    (cons _g1125311256_ _g1125411258_))
                                  '()
                                  _L11236_))))
                     _rands1119411233_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1118911217_
                                             _target1118611212_
                                             '()))
                                          (_g1118011199_ _g1118111202_)))))
                                (_g1118011199_ _g1118111202_))
                            (_g1118011199_ _g1118111202_))))
                    (_g1118011199_ _g1118111202_)))))
        (_g1117911261_ _stx11177_))))
  (define gxc#collect-bindings-define-values%
    (lambda (_stx11108_)
      (let* ((_g1111011127_
              (lambda (_g1111111124_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1111111124_)))
             (_g1110911174_
              (lambda (_g1111111130_)
                (if (gx#stx-pair? _g1111111130_)
                    (let ((_e1111411132_ (gx#stx-e _g1111111130_)))
                      (let ((_hd1111511135_ (##car _e1111411132_))
                            (_tl1111611137_ (##cdr _e1111411132_)))
                        (if (gx#stx-pair? _tl1111611137_)
                            (let ((_e1111711140_ (gx#stx-e _tl1111611137_)))
                              (let ((_hd1111811143_ (##car _e1111711140_))
                                    (_tl1111911145_ (##cdr _e1111711140_)))
                                (if (gx#stx-pair? _tl1111911145_)
                                    (let ((_e1112011148_
                                           (gx#stx-e _tl1111911145_)))
                                      (let ((_hd1112111151_
                                             (##car _e1112011148_))
                                            (_tl1112211153_
                                             (##cdr _e1112011148_)))
                                        (if (gx#stx-null? _tl1112211153_)
                                            ((lambda (_L11156_ _L11157_)
                                               (gx#stx-for-each1
                                                (lambda (_bind11172_)
                                                  (if (gx#identifier?
                                                       _bind11172_)
                                                      (gxc#add-module-binding!
                                                       _bind11172_
                                                       '#f)
                                                      '#!void))
                                                _L11157_))
                                             _hd1112111151_
                                             _hd1111811143_)
                                            (_g1111011127_ _g1111111130_))))
                                    (_g1111011127_ _g1111111130_))))
                            (_g1111011127_ _g1111111130_))))
                    (_g1111011127_ _g1111111130_)))))
        (_g1110911174_ _stx11108_))))
  (define gxc#collect-bindings-define-syntax%
    (lambda (_stx11041_)
      (let* ((_g1104311060_
              (lambda (_g1104411057_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1104411057_)))
             (_g1104211105_
              (lambda (_g1104411063_)
                (if (gx#stx-pair? _g1104411063_)
                    (let ((_e1104711065_ (gx#stx-e _g1104411063_)))
                      (let ((_hd1104811068_ (##car _e1104711065_))
                            (_tl1104911070_ (##cdr _e1104711065_)))
                        (if (gx#stx-pair? _tl1104911070_)
                            (let ((_e1105011073_ (gx#stx-e _tl1104911070_)))
                              (let ((_hd1105111076_ (##car _e1105011073_))
                                    (_tl1105211078_ (##cdr _e1105011073_)))
                                (if (gx#stx-pair? _tl1105211078_)
                                    (let ((_e1105311081_
                                           (gx#stx-e _tl1105211078_)))
                                      (let ((_hd1105411084_
                                             (##car _e1105311081_))
                                            (_tl1105511086_
                                             (##cdr _e1105311081_)))
                                        (if (gx#stx-null? _tl1105511086_)
                                            ((lambda (_L11089_ _L11090_)
                                               (gxc#add-module-binding!
                                                _L11090_
                                                '#t))
                                             _hd1105411084_
                                             _hd1105111076_)
                                            (_g1104311060_ _g1104411063_))))
                                    (_g1104311060_ _g1104411063_))))
                            (_g1104311060_ _g1104411063_))))
                    (_g1104311060_ _g1104411063_)))))
        (_g1104211105_ _stx11041_))))
  (define gxc#lift-modules-module%
    (lambda (_stx10983_ _modules10984_)
      (let* ((_g1098611000_
              (lambda (_g1098710997_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1098710997_)))
             (_g1098511038_
              (lambda (_g1098711003_)
                (if (gx#stx-pair? _g1098711003_)
                    (let ((_e1099011005_ (gx#stx-e _g1098711003_)))
                      (let ((_hd1099111008_ (##car _e1099011005_))
                            (_tl1099211010_ (##cdr _e1099011005_)))
                        (if (gx#stx-pair? _tl1099211010_)
                            (let ((_e1099311013_ (gx#stx-e _tl1099211010_)))
                              (let ((_hd1099411016_ (##car _e1099311013_))
                                    (_tl1099511018_ (##cdr _e1099311013_)))
                                ((lambda (_L11021_ _L11022_)
                                   (let ((_ctx11035_
                                          (gx#syntax-local-e__0 _L11022_)))
                                     (begin
                                       (set-box!
                                        _modules10984_
                                        (cons _ctx11035_
                                              (unbox _modules10984_)))
                                       (call-with-parameters
                                        (lambda ()
                                          (gxc#compile-e
                                           (##structure-ref
                                            _ctx11035_
                                            '11
                                            gx#module-context::t
                                            '#f)
                                           _modules10984_))
                                        gx#current-expander-context
                                        _ctx11035_))))
                                 _tl1099511018_
                                 _hd1099411016_)))
                            (_g1098611000_ _g1098711003_))))
                    (_g1098611000_ _g1098711003_)))))
        (_g1098511038_ _stx10983_))))
  (define gxc#add-module-binding!
    (lambda (_id10977_ _syntax?10978_)
      (let ((_eid10980_
             (##structure-ref
              (gx#resolve-identifier__0 _id10977_)
              '1
              gx#binding::t
              '#f))
            (_ht10981_
             (##structure-ref
              (gxc#current-compile-symbol-table)
              '2
              gxc#symbol-table::t
              '#f)))
        (if (interned-symbol? _eid10980_)
            '#!void
            (table-set!
             _ht10981_
             _eid10980_
             (gx#make-binding-id__1
              (gxc#generate-runtime-gensym-reference__0 _eid10980_)
              _syntax?10978_))))))
  (define gxc#generate-runtime-binding-id
    (lambda (_id10958_)
      (let ((_bind10960_ (gx#resolve-identifier__0 _id10958_)))
        (if _bind10960_
            (let ((_eid10962_
                   (##structure-ref _bind10960_ '1 gx#binding::t '#f))
                  (_ht10963_
                   (##structure-ref
                    (gxc#current-compile-symbol-table)
                    '2
                    gxc#symbol-table::t
                    '#f)))
              (if (interned-symbol? _eid10962_)
                  _eid10962_
                  (let ((_$e10965_ (table-ref _ht10963_ _eid10962_ '#f)))
                    (if _$e10965_
                        (values _$e10965_)
                        (if (##structure-instance-of?
                             _bind10960_
                             'gx#local-binding::t)
                            (let ((_gid10968_
                                   (gxc#generate-runtime-gensym-reference__0
                                    _eid10962_)))
                              (begin
                                (table-set! _ht10963_ _eid10962_ _gid10968_)
                                _gid10968_))
                            (if (##structure-instance-of?
                                 _bind10960_
                                 'gx#module-binding::t)
                                (let ((_gid10975_
                                       (let ((_$e10970_
                                              (##structure-ref
                                               (##structure-ref
                                                _bind10960_
                                                '4
                                                gx#module-binding::t
                                                '#f)
                                               '6
                                               gx#module-context::t
                                               '#f)))
                                         (if _$e10970_
                                             ((lambda (_ns10973_)
                                                (make-symbol
                                                 _ns10973_
                                                 '"#"
                                                 _eid10962_))
                                              _$e10970_)
                                             (gxc#generate-runtime-gensym-reference__0
                                              _eid10962_)))))
                                  (begin
                                    (table-set!
                                     _ht10963_
                                     _eid10962_
                                     _gid10975_)
                                    _gid10975_))
                                (gxc#raise-compile-error
                                 '"Cannot compile reference to uninterned binding"
                                 _id10958_
                                 _eid10962_
                                 _bind10960_)))))))
            (if (interned-symbol? (gx#stx-e _id10958_))
                (gx#stx-e _id10958_)
                (gxc#raise-compile-error
                 '"Cannot compile reference to uninterned identifier"
                 _id10958_))))))
  (define gxc#generate-runtime-binding-id*
    (lambda (_id10956_)
      (if (gx#identifier? _id10956_)
          (gxc#generate-runtime-binding-id _id10956_)
          (gxc#generate-runtime-temporary__0))))
  (begin
    (define gxc#generate-runtime-gensym-reference__opt-lambda10934
      (lambda (_sym10936_ _quote?10937_)
        (let* ((_ht10939_
                (##structure-ref
                 (gxc#current-compile-symbol-table)
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_$e10941_ (table-ref _ht10939_ _sym10936_ '#f)))
          (if _$e10941_
              (values _$e10941_)
              (let ((_g10944_
                     (if _quote?10937_
                         (make-symbol
                          '"__"
                          _sym10936_
                          '"__"
                          (gxc#current-compile-timestamp))
                         (make-symbol '"_" _sym10936_ '"_"))))
                (begin
                  (table-set! _ht10939_ _sym10936_ _g10944_)
                  _g10944_))))))
    (begin
      (define gxc#generate-runtime-gensym-reference__0
        (lambda (_sym10949_)
          (let ((_quote?10951_ '#f))
            (gxc#generate-runtime-gensym-reference__opt-lambda10934
             _sym10949_
             _quote?10951_))))
      (define gxc#generate-runtime-gensym-reference
        (lambda _g12056_
          (let ((_g12055_ (length _g12056_)))
            (cond ((fx= _g12055_ 1)
                   (apply gxc#generate-runtime-gensym-reference__0 _g12056_))
                  ((fx= _g12055_ 2)
                   (apply gxc#generate-runtime-gensym-reference__opt-lambda10934
                          _g12056_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-gensym-reference
                    _g12056_))))))))
  (define gxc#generate-runtime-identifier
    (lambda (_id10933_)
      (gxc#generate-runtime-identifier-key
       (gx#core-identifier-key _id10933_))))
  (define gxc#generate-runtime-identifier-key
    (lambda (_key10893_)
      (if (interned-symbol? _key10893_)
          _key10893_
          (if (uninterned-symbol? _key10893_)
              (gxc#generate-runtime-gensym-reference__0 _key10893_)
              (let* ((_key1089410901_ _key10893_)
                     (_E1089610905_
                      (lambda ()
                        (error '"No clause matching" _key1089410901_)))
                     (_K1089710921_
                      (lambda (_mark10908_ _eid10909_)
                        (let ((_$e10911_
                               (##structure-ref
                                _mark10908_
                                '1
                                gx#expander-mark::t
                                '#f)))
                          (if _$e10911_
                              ((lambda (_ht10914_)
                                 (let ((_$e10916_
                                        (table-ref _ht10914_ _eid10909_ '#f)))
                                   (if _$e10916_
                                       ((lambda (_id10919_)
                                          (if (interned-symbol? _id10919_)
                                              _id10919_
                                              (gxc#generate-runtime-gensym-reference__0
                                               _id10919_)))
                                        _$e10916_)
                                       (gxc#generate-runtime-identifier-key
                                        _eid10909_))))
                               _$e10911_)
                              (gxc#generate-runtime-identifier-key
                               _eid10909_))))))
                (if (##pair? _key1089410901_)
                    (let ((_hd1089810924_ (##car _key1089410901_))
                          (_tl1089910926_ (##cdr _key1089410901_)))
                      (let* ((_eid10929_ _hd1089810924_)
                             (_mark10931_ _tl1089910926_))
                        (_K1089710921_ _mark10931_ _eid10929_)))
                    (_E1089610905_)))))))
  (begin
    (define gxc#generate-runtime-temporary__opt-lambda10878
      (lambda (_top10880_)
        (if _top10880_
            (let ((_ns10882_
                   (##structure-ref
                    (gx#current-expander-context)
                    '6
                    gx#module-context::t
                    '#f))
                  (_phi10883_ (gx#current-expander-phi)))
              (if (fxpositive? _phi10883_)
                  (make-symbol
                   _ns10882_
                   '"["
                   (number->string _phi10883_)
                   '"]#_"
                   (gensym)
                   '"_")
                  (make-symbol _ns10882_ '"#_" (gensym) '"_")))
            (make-symbol '"_" (gensym) '"_"))))
    (begin
      (define gxc#generate-runtime-temporary__0
        (lambda ()
          (let ((_top10889_ '#f))
            (gxc#generate-runtime-temporary__opt-lambda10878 _top10889_))))
      (define gxc#generate-runtime-temporary
        (lambda _g12058_
          (let ((_g12057_ (length _g12058_)))
            (cond ((fx= _g12057_ 0)
                   (apply gxc#generate-runtime-temporary__0 _g12058_))
                  ((fx= _g12057_ 1)
                   (apply gxc#generate-runtime-temporary__opt-lambda10878
                          _g12058_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-temporary
                    _g12058_))))))))
  (define gxc#generate-runtime-empty (lambda (_stx10877_) '(begin)))
  (define gxc#generate-runtime-begin%
    (lambda (_stx10797_)
      (let* ((_g1079910809_
              (lambda (_g1080010806_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1080010806_)))
             (_g1079810874_
              (lambda (_g1080010812_)
                (if (gx#stx-pair? _g1080010812_)
                    (let ((_e1080210814_ (gx#stx-e _g1080010812_)))
                      (let ((_hd1080310817_ (##car _e1080210814_))
                            (_tl1080410819_ (##cdr _e1080210814_)))
                        ((lambda (_L10822_)
                           (let* ((_body10832_
                                   (gx#stx-map1 gxc#compile-e _L10822_))
                                  (_body10871_
                                   (filter (lambda (_stx10834_)
                                             (let* ((_g1083710846_
                                                     (lambda (_g1083810843_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1083810843_)))
                                                    (_g1083610853_
                                                     (lambda (_g1083810849_)
                                                       ((lambda () '#t))))
                                                    (_g1083510868_
                                                     (lambda (_g1083810856_)
                                                       (if (gx#stx-pair?
                                                            _g1083810856_)
                                                           (let ((_e1083910858_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _g1083810856_)))
                     (let ((_hd1084010861_ (##car _e1083910858_))
                           (_tl1084110863_ (##cdr _e1083910858_)))
                       (if (gx#identifier? _hd1084010861_)
                           (if (gx#stx-eq? 'begin _hd1084010861_)
                               (if (gx#stx-null? _tl1084110863_)
                                   ((lambda () '#f))
                                   (_g1083610853_ _g1083810856_))
                               (_g1083610853_ _g1083810856_))
                           (_g1083610853_ _g1083810856_))))
                   (_g1083610853_ _g1083810856_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1083510868_ _stx10834_)))
                                           _body10832_)))
                             (if (fx= (length _body10871_) '1)
                                 (car _body10871_)
                                 (cons 'begin _body10871_))))
                         _tl1080410819_)))
                    (_g1079910809_ _g1080010812_)))))
        (_g1079810874_ _stx10797_))))
  (define gxc#generate-runtime-begin-foreign%
    (lambda (_stx10759_)
      (let* ((_g1076110771_
              (lambda (_g1076210768_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1076210768_)))
             (_g1076010794_
              (lambda (_g1076210774_)
                (if (gx#stx-pair? _g1076210774_)
                    (let ((_e1076410776_ (gx#stx-e _g1076210774_)))
                      (let ((_hd1076510779_ (##car _e1076410776_))
                            (_tl1076610781_ (##cdr _e1076410776_)))
                        ((lambda (_L10784_)
                           (cons 'begin (gx#syntax->datum _L10784_)))
                         _tl1076610781_)))
                    (_g1076110771_ _g1076210774_)))))
        (_g1076010794_ _stx10759_))))
  (define gxc#generate-runtime-begin-annotation%
    (lambda (_stx10692_)
      (let* ((_g1069410711_
              (lambda (_g1069510708_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1069510708_)))
             (_g1069310756_
              (lambda (_g1069510714_)
                (if (gx#stx-pair? _g1069510714_)
                    (let ((_e1069810716_ (gx#stx-e _g1069510714_)))
                      (let ((_hd1069910719_ (##car _e1069810716_))
                            (_tl1070010721_ (##cdr _e1069810716_)))
                        (if (gx#stx-pair? _tl1070010721_)
                            (let ((_e1070110724_ (gx#stx-e _tl1070010721_)))
                              (let ((_hd1070210727_ (##car _e1070110724_))
                                    (_tl1070310729_ (##cdr _e1070110724_)))
                                (if (gx#stx-pair? _tl1070310729_)
                                    (let ((_e1070410732_
                                           (gx#stx-e _tl1070310729_)))
                                      (let ((_hd1070510735_
                                             (##car _e1070410732_))
                                            (_tl1070610737_
                                             (##cdr _e1070410732_)))
                                        (if (gx#stx-null? _tl1070610737_)
                                            ((lambda (_L10740_ _L10741_)
                                               (cons 'begin
                                                     (cons (cons 'declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (map gx#syntax->datum _L10741_))
                   (cons (gxc#compile-e _L10740_) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd1070510735_
                                             _hd1070210727_)
                                            (_g1069410711_ _g1069510714_))))
                                    (_g1069410711_ _g1069510714_))))
                            (_g1069410711_ _g1069510714_))))
                    (_g1069410711_ _g1069510714_)))))
        (_g1069310756_ _stx10692_))))
  (define gxc#generate-runtime-declare%
    (lambda (_stx10654_)
      (let* ((_g1065610666_
              (lambda (_g1065710663_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1065710663_)))
             (_g1065510689_
              (lambda (_g1065710669_)
                (if (gx#stx-pair? _g1065710669_)
                    (let ((_e1065910671_ (gx#stx-e _g1065710669_)))
                      (let ((_hd1066010674_ (##car _e1065910671_))
                            (_tl1066110676_ (##cdr _e1065910671_)))
                        ((lambda (_L10679_)
                           (cons 'declare (map gx#syntax->datum _L10679_)))
                         _tl1066110676_)))
                    (_g1065610666_ _g1065710669_)))))
        (_g1065510689_ _stx10654_))))
  (define gxc#generate-runtime-define-values%
    (lambda (_stx10410_)
      (let* ((_g1041210429_
              (lambda (_g1041310426_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1041310426_)))
             (_g1041110651_
              (lambda (_g1041310432_)
                (if (gx#stx-pair? _g1041310432_)
                    (let ((_e1041610434_ (gx#stx-e _g1041310432_)))
                      (let ((_hd1041710437_ (##car _e1041610434_))
                            (_tl1041810439_ (##cdr _e1041610434_)))
                        (if (gx#stx-pair? _tl1041810439_)
                            (let ((_e1041910442_ (gx#stx-e _tl1041810439_)))
                              (let ((_hd1042010445_ (##car _e1041910442_))
                                    (_tl1042110447_ (##cdr _e1041910442_)))
                                (if (gx#stx-pair? _tl1042110447_)
                                    (let ((_e1042210450_
                                           (gx#stx-e _tl1042110447_)))
                                      (let ((_hd1042310453_
                                             (##car _e1042210450_))
                                            (_tl1042410455_
                                             (##cdr _e1042210450_)))
                                        (if (gx#stx-null? _tl1042410455_)
                                            ((lambda (_L10458_ _L10459_)
                                               (let* ((_g1047610489_
                                                       (lambda (_g1047710486_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1047710486_)))
                                                      (_g1047510603_
                                                       (lambda (_g1047710492_)
                                                         ((lambda ()
                                                            (let* ((_tmp10496_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#generate-runtime-temporary__opt-lambda10878
                             '#t))
                           (_body10600_
                            (let _lp10498_ ((_rest10500_ _L10459_)
                                            (_k10501_ '0)
                                            (_r10502_ '()))
                              (let* ((_g1050710523_
                                      (lambda (_g1050810520_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g1050810520_)))
                                     (_g1050610530_
                                      (lambda (_g1050810526_)
                                        ((lambda () (reverse _r10502_)))))
                                     (_g1050510551_
                                      (lambda (_g1050810533_)
                                        ((lambda (_L10535_)
                                           (if (gx#identifier? _L10535_)
                                               (foldl1 cons
                                                       (cons (cons 'define
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gxc#generate-runtime-binding-id _L10535_)
                                 (cons (cons 'values->list
                                             (cons _tmp10496_
                                                   (cons _k10501_ '())))
                                       '())))
                     '())
               _r10502_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1050610530_ _g1050810533_)))
                                         _g1050810533_)))
                                     (_g1050410575_
                                      (lambda (_g1050810554_)
                                        (if (gx#stx-pair? _g1050810554_)
                                            (let ((_e1051510556_
                                                   (gx#stx-e _g1050810554_)))
                                              (let ((_hd1051610559_
                                                     (##car _e1051510556_))
                                                    (_tl1051710561_
                                                     (##cdr _e1051510556_)))
                                                ((lambda (_L10564_ _L10565_)
                                                   (_lp10498_
                                                    _L10564_
                                                    (fx+ _k10501_ '1)
                                                    (cons (cons 'define
                                                                (cons (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L10565_)
                              (cons (cons 'values-ref
                                          (cons _tmp10496_
                                                (cons _k10501_ '())))
                                    '())))
                  _r10502_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _tl1051710561_
                                                 _hd1051610559_)))
                                            (_g1050510551_ _g1050810554_))))
                                     (_g1050310597_
                                      (lambda (_g1050810578_)
                                        (if (gx#stx-pair? _g1050810578_)
                                            (let ((_e1051010580_
                                                   (gx#stx-e _g1050810578_)))
                                              (let ((_hd1051110583_
                                                     (##car _e1051010580_))
                                                    (_tl1051210585_
                                                     (##cdr _e1051010580_)))
                                                (if (gx#stx-datum?
                                                     _hd1051110583_)
                                                    (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1051110583_)
                        '#f)
                ((lambda (_L10588_)
                   (_lp10498_ _L10588_ (fx+ _k10501_ '1) _r10502_))
                 _tl1051210585_)
                (_g1050410575_ _g1050810578_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1050410575_
                                                     _g1050810578_))))
                                            (_g1050410575_ _g1050810578_)))))
                                (_g1050310597_ _rest10500_)))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _tmp10496_
                                              (cons (gxc#compile-e _L10458_)
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _tmp10496_
                                         _L10459_)
                                        _body10600_))))))))
              (_g1047410633_
               (lambda (_g1047710606_)
                 (if (gx#stx-pair? _g1047710606_)
                     (let ((_e1048210608_ (gx#stx-e _g1047710606_)))
                       (let ((_hd1048310611_ (##car _e1048210608_))
                             (_tl1048410613_ (##cdr _e1048210608_)))
                         (if (gx#stx-null? _tl1048410613_)
                             ((lambda (_L10616_)
                                (let ((_eid10625_
                                       (gxc#generate-runtime-binding-id
                                        _L10616_)))
                                  (begin
                                    (let ((_lambda-expr1062610628_
                                           (gxc#apply-find-lambda-expression
                                            _L10458_)))
                                      (if _lambda-expr1062610628_
                                          (let ((_lambda-expr10631_
                                                 _lambda-expr1062610628_))
                                            (table-set!
                                             (gxc#current-compile-runtime-names)
                                             _lambda-expr10631_
                                             _eid10625_))
                                          '#f))
                                    (cons 'define
                                          (cons _eid10625_
                                                (cons (gxc#compile-e _L10458_)
                                                      '()))))))
                              _hd1048310611_)
                             (_g1047510603_ _g1047710606_))))
                     (_g1047510603_ _g1047710606_))))
              (_g1047310648_
               (lambda (_g1047710636_)
                 (if (gx#stx-pair? _g1047710636_)
                     (let ((_e1047810638_ (gx#stx-e _g1047710636_)))
                       (let ((_hd1047910641_ (##car _e1047810638_))
                             (_tl1048010643_ (##cdr _e1047810638_)))
                         (if (gx#stx-datum? _hd1047910641_)
                             (if (equal? (gx#stx-e _hd1047910641_) '#f)
                                 (if (gx#stx-null? _tl1048010643_)
                                     ((lambda () (gxc#compile-e _L10458_)))
                                     (_g1047410633_ _g1047710636_))
                                 (_g1047410633_ _g1047710636_))
                             (_g1047410633_ _g1047710636_))))
                     (_g1047410633_ _g1047710636_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1047310648_ _L10459_)))
                                             _hd1042310453_
                                             _hd1042010445_)
                                            (_g1041210429_ _g1041310432_))))
                                    (_g1041210429_ _g1041310432_))))
                            (_g1041210429_ _g1041310432_))))
                    (_g1041210429_ _g1041310432_)))))
        (_g1041110651_ _stx10410_))))
  (define gxc#generate-runtime-check-values
    (lambda (_vals10398_ _hd10399_)
      (let* ((_len10401_ (gx#stx-length _hd10399_))
             (_cmp10403_ (if (gx#stx-list? _hd10399_) 'fx= 'fx>=))
             (_errmsg10405_
              (string-append
               (if (gx#stx-list? _hd10399_)
                   '"Context expects "
                   '"Context expects at least ")
               (number->string _len10401_)
               '" values"))
             (_count10407_ (gxc#generate-runtime-temporary__0)))
        (if (if (not (gx#stx-list? _hd10399_)) (fx= _len10401_ '0) '#f)
            '#!void
            (cons 'let
                  (cons (cons (cons _count10407_
                                    (cons (cons 'values-count
                                                (cons _vals10398_ '()))
                                          '()))
                              '())
                        (cons (cons 'if
                                    (cons (cons 'not
                                                (cons (cons _cmp10403_
                                                            (cons _count10407_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _len10401_ '())))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons 'error
                                                      (cons _errmsg10405_
                                                            (cons _count10407_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))))
  (define gxc#generate-runtime-lambda%
    (lambda (_stx10331_)
      (let* ((_g1033310350_
              (lambda (_g1033410347_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1033410347_)))
             (_g1033210395_
              (lambda (_g1033410353_)
                (if (gx#stx-pair? _g1033410353_)
                    (let ((_e1033710355_ (gx#stx-e _g1033410353_)))
                      (let ((_hd1033810358_ (##car _e1033710355_))
                            (_tl1033910360_ (##cdr _e1033710355_)))
                        (if (gx#stx-pair? _tl1033910360_)
                            (let ((_e1034010363_ (gx#stx-e _tl1033910360_)))
                              (let ((_hd1034110366_ (##car _e1034010363_))
                                    (_tl1034210368_ (##cdr _e1034010363_)))
                                (if (gx#stx-pair? _tl1034210368_)
                                    (let ((_e1034310371_
                                           (gx#stx-e _tl1034210368_)))
                                      (let ((_hd1034410374_
                                             (##car _e1034310371_))
                                            (_tl1034510376_
                                             (##cdr _e1034310371_)))
                                        (if (gx#stx-null? _tl1034510376_)
                                            ((lambda (_L10379_ _L10380_)
                                               (cons 'lambda
                                                     (cons (gxc#generate-runtime-lambda-head
                                                            _L10380_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L10379_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd1034410374_
                                             _hd1034110366_)
                                            (_g1033310350_ _g1033410353_))))
                                    (_g1033310350_ _g1033410353_))))
                            (_g1033310350_ _g1033410353_))))
                    (_g1033310350_ _g1033410353_)))))
        (_g1033210395_ _stx10331_))))
  (define gxc#generate-runtime-lambda-head
    (lambda (_hd10329_)
      (gx#stx-map1 gxc#generate-runtime-binding-id* _hd10329_)))
  (define gxc#generate-runtime-case-lambda%
    (lambda (_stx8862_)
      (letrec ((_runtime-identifier=?8864_
                (lambda (_id-stx10320_ _sym10321_)
                  (let ((_bind1032210324_
                         (gx#resolve-identifier__0 _id-stx10320_)))
                    (if _bind1032210324_
                        (let ((_bind10327_ _bind1032210324_))
                          (eq? (##structure-ref
                                _bind10327_
                                '1
                                gx#binding::t
                                '#f)
                               _sym10321_))
                        '#f))))
               (_dispatch-case?8865_
                (lambda (_hd9550_ _body9551_)
                  (let* ((_form9553_ (cons _hd9550_ (cons _body9551_ '())))
                         (_g95589715_
                          (lambda (_g95599712_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g95599712_)))
                         (_g95579722_ (lambda (_g95599718_) ((lambda () '#f))))
                         (_g95569863_
                          (lambda (_g95599725_)
                            (if (gx#stx-pair? _g95599725_)
                                (let ((_e96759727_ (gx#stx-e _g95599725_)))
                                  (let ((_hd96769730_ (##car _e96759727_))
                                        (_tl96779732_ (##cdr _e96759727_)))
                                    (if (gx#stx-pair? _tl96779732_)
                                        (let ((_e96789735_
                                               (gx#stx-e _tl96779732_)))
                                          (let ((_hd96799738_
                                                 (##car _e96789735_))
                                                (_tl96809740_
                                                 (##cdr _e96789735_)))
                                            (if (gx#stx-pair? _hd96799738_)
                                                (let ((_e96819743_
                                                       (gx#stx-e
                                                        _hd96799738_)))
                                                  (let ((_hd96829746_
                                                         (##car _e96819743_))
                                                        (_tl96839748_
                                                         (##cdr _e96819743_)))
                                                    (if (gx#identifier?
                                                         _hd96829746_)
                                                        (if (gx#stx-eq?
                                                             '%#call
                                                             _hd96829746_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl96839748_)
                        (let ((_e96849751_ (gx#stx-e _tl96839748_)))
                          (let ((_hd96859754_ (##car _e96849751_))
                                (_tl96869756_ (##cdr _e96849751_)))
                            (if (gx#stx-pair? _hd96859754_)
                                (let ((_e96879759_ (gx#stx-e _hd96859754_)))
                                  (let ((_hd96889762_ (##car _e96879759_))
                                        (_tl96899764_ (##cdr _e96879759_)))
                                    (if (gx#identifier? _hd96889762_)
                                        (if (gx#stx-eq? '%#ref _hd96889762_)
                                            (if (gx#stx-pair? _tl96899764_)
                                                (let ((_e96909767_
                                                       (gx#stx-e
                                                        _tl96899764_)))
                                                  (let ((_hd96919770_
                                                         (##car _e96909767_))
                                                        (_tl96929772_
                                                         (##cdr _e96909767_)))
                                                    (if (gx#stx-null?
                                                         _tl96929772_)
                                                        (if (gx#stx-pair?
                                                             _tl96869756_)
                                                            (let ((_e96939775_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl96869756_)))
                      (let ((_hd96949778_ (##car _e96939775_))
                            (_tl96959780_ (##cdr _e96939775_)))
                        (if (gx#stx-pair? _hd96949778_)
                            (let ((_e96969783_ (gx#stx-e _hd96949778_)))
                              (let ((_hd96979786_ (##car _e96969783_))
                                    (_tl96989788_ (##cdr _e96969783_)))
                                (if (gx#identifier? _hd96979786_)
                                    (if (gx#stx-eq? '%#ref _hd96979786_)
                                        (if (gx#stx-pair? _tl96989788_)
                                            (let ((_e96999791_
                                                   (gx#stx-e _tl96989788_)))
                                              (let ((_hd97009794_
                                                     (##car _e96999791_))
                                                    (_tl97019796_
                                                     (##cdr _e96999791_)))
                                                (if (gx#stx-null? _tl97019796_)
                                                    (if (gx#stx-pair?
                                                         _tl96959780_)
                                                        (let ((_e97029799_
                                                               (gx#stx-e
                                                                _tl96959780_)))
                                                          (let ((_hd97039802_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e97029799_))
                        (_tl97049804_ (##cdr _e97029799_)))
                    (if (gx#stx-pair? _hd97039802_)
                        (let ((_e97059807_ (gx#stx-e _hd97039802_)))
                          (let ((_hd97069810_ (##car _e97059807_))
                                (_tl97079812_ (##cdr _e97059807_)))
                            (if (gx#identifier? _hd97069810_)
                                (if (gx#stx-eq? '%#ref _hd97069810_)
                                    (if (gx#stx-pair? _tl97079812_)
                                        (let ((_e97089815_
                                               (gx#stx-e _tl97079812_)))
                                          (let ((_hd97099818_
                                                 (##car _e97089815_))
                                                (_tl97109820_
                                                 (##cdr _e97089815_)))
                                            (if (gx#stx-null? _tl97109820_)
                                                (if (gx#stx-null? _tl97049804_)
                                                    (if (gx#stx-null?
                                                         _tl96809740_)
                                                        ((lambda (_L9823_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L9824_
                          _L9825_
                          _L9826_)
                   (if (if (gx#identifier? _L9826_)
                           (if (_runtime-identifier=?8864_ _L9825_ 'apply)
                               (if (gx#free-identifier=? _L9826_ _L9823_)
                                   (not (gx#free-identifier=? _L9824_ _L9826_))
                                   '#f)
                               '#f)
                           '#f)
                       '#t
                       (_g95579722_ _g95599725_)))
                 _hd97099818_
                 _hd97009794_
                 _hd96919770_
                 _hd96769730_)
                (_g95579722_ _g95599725_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g95579722_ _g95599725_))
                                                (_g95579722_ _g95599725_))))
                                        (_g95579722_ _g95599725_))
                                    (_g95579722_ _g95599725_))
                                (_g95579722_ _g95599725_))))
                        (_g95579722_ _g95599725_))))
                (_g95579722_ _g95599725_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g95579722_
                                                     _g95599725_))))
                                            (_g95579722_ _g95599725_))
                                        (_g95579722_ _g95599725_))
                                    (_g95579722_ _g95599725_))))
                            (_g95579722_ _g95599725_))))
                    (_g95579722_ _g95599725_))
                (_g95579722_ _g95599725_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g95579722_ _g95599725_))
                                            (_g95579722_ _g95599725_))
                                        (_g95579722_ _g95599725_))))
                                (_g95579722_ _g95599725_))))
                        (_g95579722_ _g95599725_))
                    (_g95579722_ _g95599725_))
                (_g95579722_ _g95599725_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g95579722_ _g95599725_))))
                                        (_g95579722_ _g95599725_))))
                                (_g95579722_ _g95599725_))))
                         (_g955510123_
                          (lambda (_g95599866_)
                            (if (gx#stx-pair? _g95599866_)
                                (let ((_e96119868_ (gx#stx-e _g95599866_)))
                                  (let ((_hd96129871_ (##car _e96119868_))
                                        (_tl96139873_ (##cdr _e96119868_)))
                                    (if (gx#stx-pair/null? _hd96129871_)
                                        (if (fx>= (gx#stx-length _hd96129871_)
                                                  '0)
                                            (let ((_g12059_
                                                   (gx#syntax-split-splice
                                                    _hd96129871_
                                                    '0)))
                                              (begin
                                                (let ((_g12060_
                                                       (values-count
                                                        _g12059_)))
                                                  (if (not (fx= _g12060_ 2))
                                                      (error "Context expects 2 values"
                                                             _g12060_)))
                                                (let ((_target96149876_
                                                       (values-ref _g12059_ 0))
                                                      (_tl96169878_
                                                       (values-ref
                                                        _g12059_
                                                        1)))
                                                  (letrec ((_loop96179881_
                                                            (lambda (_hd96159884_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _arg96219886_)
                      (if (gx#stx-pair? _hd96159884_)
                          (let ((_e96189889_ (gx#stx-e _hd96159884_)))
                            (let ((_lp-hd96199892_ (##car _e96189889_))
                                  (_lp-tl96209894_ (##cdr _e96189889_)))
                              (_loop96179881_
                               _lp-tl96209894_
                               (cons _lp-hd96199892_ _arg96219886_))))
                          (let ((_arg96229897_ (reverse _arg96219886_)))
                            (if (gx#stx-pair? _tl96139873_)
                                (let ((_e96239900_ (gx#stx-e _tl96139873_)))
                                  (let ((_hd96249903_ (##car _e96239900_))
                                        (_tl96259905_ (##cdr _e96239900_)))
                                    (if (gx#stx-pair? _hd96249903_)
                                        (let ((_e96269908_
                                               (gx#stx-e _hd96249903_)))
                                          (let ((_hd96279911_
                                                 (##car _e96269908_))
                                                (_tl96289913_
                                                 (##cdr _e96269908_)))
                                            (if (gx#identifier? _hd96279911_)
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd96279911_)
                                                    (if (gx#stx-pair?
                                                         _tl96289913_)
                                                        (let ((_e96299916_
                                                               (gx#stx-e
                                                                _tl96289913_)))
                                                          (let ((_hd96309919_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e96299916_))
                        (_tl96319921_ (##cdr _e96299916_)))
                    (if (gx#stx-pair? _hd96309919_)
                        (let ((_e96329924_ (gx#stx-e _hd96309919_)))
                          (let ((_hd96339927_ (##car _e96329924_))
                                (_tl96349929_ (##cdr _e96329924_)))
                            (if (gx#identifier? _hd96339927_)
                                (if (gx#stx-eq? '%#ref _hd96339927_)
                                    (if (gx#stx-pair? _tl96349929_)
                                        (let ((_e96359932_
                                               (gx#stx-e _tl96349929_)))
                                          (let ((_hd96369935_
                                                 (##car _e96359932_))
                                                (_tl96379937_
                                                 (##cdr _e96359932_)))
                                            (if (gx#stx-null? _tl96379937_)
                                                (if (gx#stx-pair? _tl96319921_)
                                                    (let ((_e96389940_
                                                           (gx#stx-e
                                                            _tl96319921_)))
                                                      (let ((_hd96399943_
                                                             (##car _e96389940_))
                                                            (_tl96409945_
                                                             (##cdr _e96389940_)))
                                                        (if (gx#stx-pair?
                                                             _hd96399943_)
                                                            (let ((_e96419948_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd96399943_)))
                      (let ((_hd96429951_ (##car _e96419948_))
                            (_tl96439953_ (##cdr _e96419948_)))
                        (if (gx#identifier? _hd96429951_)
                            (if (gx#stx-eq? '%#ref _hd96429951_)
                                (if (gx#stx-pair? _tl96439953_)
                                    (let ((_e96449956_
                                           (gx#stx-e _tl96439953_)))
                                      (let ((_hd96459959_ (##car _e96449956_))
                                            (_tl96469961_ (##cdr _e96449956_)))
                                        (if (gx#stx-null? _tl96469961_)
                                            (if (gx#stx-pair/null?
                                                 _tl96409945_)
                                                (if (fx>= (gx#stx-length
                                                           _tl96409945_)
                                                          '1)
                                                    (let ((_g12061_
                                                           (gx#syntax-split-splice
                                                            _tl96409945_
                                                            '1)))
                                                      (begin
                                                        (let ((_g12062_
                                                               (values-count
                                                                _g12061_)))
                                                          (if (not (fx= _g12062_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                2))
                      (error "Context expects 2 values" _g12062_)))
                (let ((_target96479964_ (values-ref _g12061_ 0))
                      (_tl96499966_ (values-ref _g12061_ 1)))
                  (if (gx#stx-pair? _tl96499966_)
                      (let ((_e96569969_ (gx#stx-e _tl96499966_)))
                        (let ((_hd96579972_ (##car _e96569969_))
                              (_tl96589974_ (##cdr _e96569969_)))
                          (if (gx#stx-pair? _hd96579972_)
                              (let ((_e96599977_ (gx#stx-e _hd96579972_)))
                                (let ((_hd96609980_ (##car _e96599977_))
                                      (_tl96619982_ (##cdr _e96599977_)))
                                  (if (gx#identifier? _hd96609980_)
                                      (if (gx#stx-eq? '%#ref _hd96609980_)
                                          (if (gx#stx-pair? _tl96619982_)
                                              (let ((_e96629985_
                                                     (gx#stx-e _tl96619982_)))
                                                (let ((_hd96639988_
                                                       (##car _e96629985_))
                                                      (_tl96649990_
                                                       (##cdr _e96629985_)))
                                                  (if (gx#stx-null?
                                                       _tl96649990_)
                                                      (if (gx#stx-null?
                                                           _tl96589974_)
                                                          (letrec ((_loop96509993_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd96489996_ _xarg96549998_)
                              (if (gx#stx-pair? _hd96489996_)
                                  (let ((_e965110001_ (gx#stx-e _hd96489996_)))
                                    (let ((_lp-hd965210004_
                                           (##car _e965110001_))
                                          (_lp-tl965310006_
                                           (##cdr _e965110001_)))
                                      (if (gx#stx-pair? _lp-hd965210004_)
                                          (let ((_e966510009_
                                                 (gx#stx-e _lp-hd965210004_)))
                                            (let ((_hd966610012_
                                                   (##car _e966510009_))
                                                  (_tl966710014_
                                                   (##cdr _e966510009_)))
                                              (if (gx#identifier?
                                                   _hd966610012_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd966610012_)
                                                      (if (gx#stx-pair?
                                                           _tl966710014_)
                                                          (let ((_e966810017_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl966710014_)))
                    (let ((_hd966910020_ (##car _e966810017_))
                          (_tl967010022_ (##cdr _e966810017_)))
                      (if (gx#stx-null? _tl967010022_)
                          (_loop96509993_
                           _lp-tl965310006_
                           (cons _hd966910020_ _xarg96549998_))
                          (_g95569863_ _g95599866_))))
                  (_g95569863_ _g95599866_))
              (_g95569863_ _g95599866_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g95569863_ _g95599866_))))
                                          (_g95569863_ _g95599866_))))
                                  (let ((_xarg965510025_
                                         (reverse _xarg96549998_)))
                                    (if (gx#stx-null? _tl96259905_)
                                        ((lambda (_L10028_
                                                  _L10029_
                                                  _L10030_
                                                  _L10031_
                                                  _L10032_
                                                  _L10033_)
                                           (if (if (gx#identifier-list?
                                                    (begin
                                                      '#!void
                                                      (foldr1 (lambda (_g1007610079_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1007710081_)
                        (cons _g1007610079_ _g1007710081_))
                      '()
                      _L10033_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#identifier?
                                                        _L10032_)
                                                       (if (_runtime-identifier=?8864_
                                                            _L10031_
                                                            'apply)
                                                           (if (fx= (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '#!void
                                      (foldr1 (lambda (_g1008310086_
                                                       _g1008410088_)
                                                (cons _g1008310086_
                                                      _g1008410088_))
                                              '()
                                              _L10033_)))
                            (length (begin
                                      '#!void
                                      (foldr1 (lambda (_g1009010093_
                                                       _g1009110095_)
                                                (cons _g1009010093_
                                                      _g1009110095_))
                                              '()
                                              _L10029_))))
                       (if (andmap gx#free-identifier=?
                                   (begin
                                     '#!void
                                     (foldr1 (lambda (_g1009710100_
                                                      _g1009810102_)
                                               (cons _g1009710100_
                                                     _g1009810102_))
                                             '()
                                             _L10033_))
                                   (begin
                                     '#!void
                                     (foldr1 (lambda (_g1010410107_
                                                      _g1010510109_)
                                               (cons _g1010410107_
                                                     _g1010510109_))
                                             '()
                                             _L10029_)))
                           (if (gx#free-identifier=? _L10032_ _L10028_)
                               (not (find (lambda (_g1011110113_)
                                            (gx#free-identifier=?
                                             _g1011110113_
                                             _L10030_))
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g1011510118_
                                                             _g1011610120_)
                                                      (cons _g1011510118_
                                                            _g1011610120_))
                                                    (cons _L10032_ '())
                                                    _L10033_))))
                               '#f)
                           '#f)
                       '#f)
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#f)
                                               '#t
                                               (_g95569863_ _g95599866_)))
                                         _hd96639988_
                                         _xarg965510025_
                                         _hd96459959_
                                         _hd96369935_
                                         _tl96169878_
                                         _arg96229897_)
                                        (_g95569863_ _g95599866_)))))))
                    (_loop96509993_ _target96479964_ '()))
                  (_g95569863_ _g95599866_))
              (_g95569863_ _g95599866_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g95569863_ _g95599866_))
                                          (_g95569863_ _g95599866_))
                                      (_g95569863_ _g95599866_))))
                              (_g95569863_ _g95599866_))))
                      (_g95569863_ _g95599866_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g95569863_ _g95599866_))
                                                (_g95569863_ _g95599866_))
                                            (_g95569863_ _g95599866_))))
                                    (_g95569863_ _g95599866_))
                                (_g95569863_ _g95599866_))
                            (_g95569863_ _g95599866_))))
                    (_g95569863_ _g95599866_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g95569863_ _g95599866_))
                                                (_g95569863_ _g95599866_))))
                                        (_g95569863_ _g95599866_))
                                    (_g95569863_ _g95599866_))
                                (_g95569863_ _g95599866_))))
                        (_g95569863_ _g95599866_))))
                (_g95569863_ _g95599866_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g95569863_ _g95599866_))
                                                (_g95569863_ _g95599866_))))
                                        (_g95569863_ _g95599866_))))
                                (_g95569863_ _g95599866_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop96179881_
                                                     _target96149876_
                                                     '())))))
                                            (_g95569863_ _g95599866_))
                                        (_g95569863_ _g95599866_))))
                                (_g95569863_ _g95599866_))))
                         (_g955410317_
                          (lambda (_g955910126_)
                            (if (gx#stx-pair? _g955910126_)
                                (let ((_e956310128_ (gx#stx-e _g955910126_)))
                                  (let ((_hd956410131_ (##car _e956310128_))
                                        (_tl956510133_ (##cdr _e956310128_)))
                                    (if (gx#stx-pair/null? _hd956410131_)
                                        (if (fx>= (gx#stx-length _hd956410131_)
                                                  '0)
                                            (let ((_g12063_
                                                   (gx#syntax-split-splice
                                                    _hd956410131_
                                                    '0)))
                                              (begin
                                                (let ((_g12064_
                                                       (values-count
                                                        _g12063_)))
                                                  (if (not (fx= _g12064_ 2))
                                                      (error "Context expects 2 values"
                                                             _g12064_)))
                                                (let ((_target956610136_
                                                       (values-ref _g12063_ 0))
                                                      (_tl956810138_
                                                       (values-ref
                                                        _g12063_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl956810138_)
                                                      (letrec ((_loop956910141_
                                                                (lambda (_hd956710144_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _arg957310146_)
                          (if (gx#stx-pair? _hd956710144_)
                              (let ((_e957010149_ (gx#stx-e _hd956710144_)))
                                (let ((_lp-hd957110152_ (##car _e957010149_))
                                      (_lp-tl957210154_ (##cdr _e957010149_)))
                                  (_loop956910141_
                                   _lp-tl957210154_
                                   (cons _lp-hd957110152_ _arg957310146_))))
                              (let ((_arg957410157_ (reverse _arg957310146_)))
                                (if (gx#stx-pair? _tl956510133_)
                                    (let ((_e957510160_
                                           (gx#stx-e _tl956510133_)))
                                      (let ((_hd957610163_
                                             (##car _e957510160_))
                                            (_tl957710165_
                                             (##cdr _e957510160_)))
                                        (if (gx#stx-pair? _hd957610163_)
                                            (let ((_e957810168_
                                                   (gx#stx-e _hd957610163_)))
                                              (let ((_hd957910171_
                                                     (##car _e957810168_))
                                                    (_tl958010173_
                                                     (##cdr _e957810168_)))
                                                (if (gx#identifier?
                                                     _hd957910171_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd957910171_)
                                                        (if (gx#stx-pair?
                                                             _tl958010173_)
                                                            (let ((_e958110176_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl958010173_)))
                      (let ((_hd958210179_ (##car _e958110176_))
                            (_tl958310181_ (##cdr _e958110176_)))
                        (if (gx#stx-pair? _hd958210179_)
                            (let ((_e958410184_ (gx#stx-e _hd958210179_)))
                              (let ((_hd958510187_ (##car _e958410184_))
                                    (_tl958610189_ (##cdr _e958410184_)))
                                (if (gx#identifier? _hd958510187_)
                                    (if (gx#stx-eq? '%#ref _hd958510187_)
                                        (if (gx#stx-pair? _tl958610189_)
                                            (let ((_e958710192_
                                                   (gx#stx-e _tl958610189_)))
                                              (let ((_hd958810195_
                                                     (##car _e958710192_))
                                                    (_tl958910197_
                                                     (##cdr _e958710192_)))
                                                (if (gx#stx-null?
                                                     _tl958910197_)
                                                    (if (gx#stx-pair/null?
                                                         _tl958310181_)
                                                        (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl958310181_)
                          '0)
                    (let ((_g12065_ (gx#syntax-split-splice _tl958310181_ '0)))
                      (begin
                        (let ((_g12066_ (values-count _g12065_)))
                          (if (not (fx= _g12066_ 2))
                              (error "Context expects 2 values" _g12066_)))
                        (let ((_target959010200_ (values-ref _g12065_ 0))
                              (_tl959210202_ (values-ref _g12065_ 1)))
                          (if (gx#stx-null? _tl959210202_)
                              (letrec ((_loop959310205_
                                        (lambda (_hd959110208_ _xarg959710210_)
                                          (if (gx#stx-pair? _hd959110208_)
                                              (let ((_e959410213_
                                                     (gx#stx-e _hd959110208_)))
                                                (let ((_lp-hd959510216_
                                                       (##car _e959410213_))
                                                      (_lp-tl959610218_
                                                       (##cdr _e959410213_)))
                                                  (if (gx#stx-pair?
                                                       _lp-hd959510216_)
                                                      (let ((_e959910221_
                                                             (gx#stx-e
                                                              _lp-hd959510216_)))
                                                        (let ((_hd960010224_
                                                               (##car _e959910221_))
                                                              (_tl960110226_
                                                               (##cdr _e959910221_)))
                                                          (if (gx#identifier?
                                                               _hd960010224_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#ref
                           _hd960010224_)
                          (if (gx#stx-pair? _tl960110226_)
                              (let ((_e960210229_ (gx#stx-e _tl960110226_)))
                                (let ((_hd960310232_ (##car _e960210229_))
                                      (_tl960410234_ (##cdr _e960210229_)))
                                  (if (gx#stx-null? _tl960410234_)
                                      (_loop959310205_
                                       _lp-tl959610218_
                                       (cons _hd960310232_ _xarg959710210_))
                                      (_g955510123_ _g955910126_))))
                              (_g955510123_ _g955910126_))
                          (_g955510123_ _g955910126_))
                      (_g955510123_ _g955910126_))))
              (_g955510123_ _g955910126_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_xarg959810237_
                                                     (reverse _xarg959710210_)))
                                                (if (gx#stx-null?
                                                     _tl957710165_)
                                                    ((lambda (_L10240_
                                                              _L10241_
                                                              _L10242_)
                                                       (if (if (gx#identifier-list?
                                                                (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr1 (lambda (_g1027010273_ _g1027110275_)
                                    (cons _g1027010273_ _g1027110275_))
                                  '()
                                  _L10242_)))
                       (if (fx= (length (begin
                                          '#!void
                                          (foldr1 (lambda (_g1027710280_
                                                           _g1027810282_)
                                                    (cons _g1027710280_
                                                          _g1027810282_))
                                                  '()
                                                  _L10242_)))
                                (length (begin
                                          '#!void
                                          (foldr1 (lambda (_g1028410287_
                                                           _g1028510289_)
                                                    (cons _g1028410287_
                                                          _g1028510289_))
                                                  '()
                                                  _L10240_))))
                           (if (andmap gx#free-identifier=?
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g1029110294_
                                                          _g1029210296_)
                                                   (cons _g1029110294_
                                                         _g1029210296_))
                                                 '()
                                                 _L10242_))
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g1029810301_
                                                          _g1029910303_)
                                                   (cons _g1029810301_
                                                         _g1029910303_))
                                                 '()
                                                 _L10240_)))
                               (not (find (lambda (_g1030510307_)
                                            (gx#free-identifier=?
                                             _g1030510307_
                                             _L10241_))
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g1030910312_
                                                             _g1031010314_)
                                                      (cons _g1030910312_
                                                            _g1031010314_))
                                                    '()
                                                    _L10242_))))
                               '#f)
                           '#f)
                       '#f)
                   '#t
                   (_g955510123_ _g955910126_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _xarg959810237_
                                                     _hd958810195_
                                                     _arg957410157_)
                                                    (_g955510123_
                                                     _g955910126_)))))))
                                (_loop959310205_ _target959010200_ '()))
                              (_g955510123_ _g955910126_)))))
                    (_g955510123_ _g955910126_))
                (_g955510123_ _g955910126_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g955510123_
                                                     _g955910126_))))
                                            (_g955510123_ _g955910126_))
                                        (_g955510123_ _g955910126_))
                                    (_g955510123_ _g955910126_))))
                            (_g955510123_ _g955910126_))))
                    (_g955510123_ _g955910126_))
                (_g955510123_ _g955910126_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g955510123_
                                                     _g955910126_))))
                                            (_g955510123_ _g955910126_))))
                                    (_g955510123_ _g955910126_)))))))
                (_loop956910141_ _target956610136_ '()))
              (_g955510123_ _g955910126_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g955510123_ _g955910126_))
                                        (_g955510123_ _g955910126_))))
                                (_g955510123_ _g955910126_)))))
                    (_g955410317_ _form9553_))))
               (_dispatch-case-e8866_
                (lambda (_hd9014_ _body9015_)
                  (let* ((_form9017_ (cons _hd9014_ (cons _body9015_ '())))
                         (_g90219145_
                          (lambda (_g90229142_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g90229142_)))
                         (_g90209263_
                          (lambda (_g90229148_)
                            (if (gx#stx-pair? _g90229148_)
                                (let ((_e91119150_ (gx#stx-e _g90229148_)))
                                  (let ((_hd91129153_ (##car _e91119150_))
                                        (_tl91139155_ (##cdr _e91119150_)))
                                    (if (gx#stx-pair? _tl91139155_)
                                        (let ((_e91149158_
                                               (gx#stx-e _tl91139155_)))
                                          (let ((_hd91159161_
                                                 (##car _e91149158_))
                                                (_tl91169163_
                                                 (##cdr _e91149158_)))
                                            (if (gx#stx-pair? _hd91159161_)
                                                (let ((_e91179166_
                                                       (gx#stx-e
                                                        _hd91159161_)))
                                                  (let ((_hd91189169_
                                                         (##car _e91179166_))
                                                        (_tl91199171_
                                                         (##cdr _e91179166_)))
                                                    (if (gx#identifier?
                                                         _hd91189169_)
                                                        (if (gx#stx-eq?
                                                             '%#call
                                                             _hd91189169_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl91199171_)
                        (let ((_e91209174_ (gx#stx-e _tl91199171_)))
                          (let ((_hd91219177_ (##car _e91209174_))
                                (_tl91229179_ (##cdr _e91209174_)))
                            (if (gx#stx-pair? _hd91219177_)
                                (let ((_e91239182_ (gx#stx-e _hd91219177_)))
                                  (let ((_hd91249185_ (##car _e91239182_))
                                        (_tl91259187_ (##cdr _e91239182_)))
                                    (if (gx#identifier? _hd91249185_)
                                        (if (gx#stx-eq? '%#ref _hd91249185_)
                                            (if (gx#stx-pair? _tl91259187_)
                                                (let ((_e91269190_
                                                       (gx#stx-e
                                                        _tl91259187_)))
                                                  (let ((_hd91279193_
                                                         (##car _e91269190_))
                                                        (_tl91289195_
                                                         (##cdr _e91269190_)))
                                                    (if (gx#stx-null?
                                                         _tl91289195_)
                                                        (if (gx#stx-pair?
                                                             _tl91229179_)
                                                            (let ((_e91299198_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl91229179_)))
                      (let ((_hd91309201_ (##car _e91299198_))
                            (_tl91319203_ (##cdr _e91299198_)))
                        (if (gx#stx-pair? _hd91309201_)
                            (let ((_e91329206_ (gx#stx-e _hd91309201_)))
                              (let ((_hd91339209_ (##car _e91329206_))
                                    (_tl91349211_ (##cdr _e91329206_)))
                                (if (gx#identifier? _hd91339209_)
                                    (if (gx#stx-eq? '%#ref _hd91339209_)
                                        (if (gx#stx-pair? _tl91349211_)
                                            (let ((_e91359214_
                                                   (gx#stx-e _tl91349211_)))
                                              (let ((_hd91369217_
                                                     (##car _e91359214_))
                                                    (_tl91379219_
                                                     (##cdr _e91359214_)))
                                                (if (gx#stx-null? _tl91379219_)
                                                    (if (gx#stx-pair?
                                                         _tl91319203_)
                                                        (let ((_e91389222_
                                                               (gx#stx-e
                                                                _tl91319203_)))
                                                          (let ((_hd91399225_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e91389222_))
                        (_tl91409227_ (##cdr _e91389222_)))
                    (if (gx#stx-null? _tl91409227_)
                        (if (gx#stx-null? _tl91169163_)
                            ((lambda (_L9230_ _L9231_ _L9232_)
                               (gxc#compile-e
                                (cons (gx#datum->syntax__0 '#f '%#ref)
                                      (cons _L9230_ '()))))
                             _hd91369217_
                             _hd91279193_
                             _hd91129153_)
                            (_g90219145_ _g90229148_))
                        (_g90219145_ _g90229148_))))
                (_g90219145_ _g90229148_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g90219145_
                                                     _g90229148_))))
                                            (_g90219145_ _g90229148_))
                                        (_g90219145_ _g90229148_))
                                    (_g90219145_ _g90229148_))))
                            (_g90219145_ _g90229148_))))
                    (_g90219145_ _g90229148_))
                (_g90219145_ _g90229148_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g90219145_ _g90229148_))
                                            (_g90219145_ _g90229148_))
                                        (_g90219145_ _g90229148_))))
                                (_g90219145_ _g90229148_))))
                        (_g90219145_ _g90229148_))
                    (_g90219145_ _g90229148_))
                (_g90219145_ _g90229148_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g90219145_ _g90229148_))))
                                        (_g90219145_ _g90229148_))))
                                (_g90219145_ _g90229148_))))
                         (_g90199399_
                          (lambda (_g90229266_)
                            (if (gx#stx-pair? _g90229266_)
                                (let ((_e90729268_ (gx#stx-e _g90229266_)))
                                  (let ((_hd90739271_ (##car _e90729268_))
                                        (_tl90749273_ (##cdr _e90729268_)))
                                    (if (gx#stx-pair/null? _hd90739271_)
                                        (if (fx>= (gx#stx-length _hd90739271_)
                                                  '0)
                                            (let ((_g12067_
                                                   (gx#syntax-split-splice
                                                    _hd90739271_
                                                    '0)))
                                              (begin
                                                (let ((_g12068_
                                                       (values-count
                                                        _g12067_)))
                                                  (if (not (fx= _g12068_ 2))
                                                      (error "Context expects 2 values"
                                                             _g12068_)))
                                                (let ((_target90759276_
                                                       (values-ref _g12067_ 0))
                                                      (_tl90779278_
                                                       (values-ref
                                                        _g12067_
                                                        1)))
                                                  (letrec ((_loop90789281_
                                                            (lambda (_hd90769284_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _arg90829286_)
                      (if (gx#stx-pair? _hd90769284_)
                          (let ((_e90799289_ (gx#stx-e _hd90769284_)))
                            (let ((_lp-hd90809292_ (##car _e90799289_))
                                  (_lp-tl90819294_ (##cdr _e90799289_)))
                              (_loop90789281_
                               _lp-tl90819294_
                               (cons _lp-hd90809292_ _arg90829286_))))
                          (let ((_arg90839297_ (reverse _arg90829286_)))
                            (if (gx#stx-pair? _tl90749273_)
                                (let ((_e90849300_ (gx#stx-e _tl90749273_)))
                                  (let ((_hd90859303_ (##car _e90849300_))
                                        (_tl90869305_ (##cdr _e90849300_)))
                                    (if (gx#stx-pair? _hd90859303_)
                                        (let ((_e90879308_
                                               (gx#stx-e _hd90859303_)))
                                          (let ((_hd90889311_
                                                 (##car _e90879308_))
                                                (_tl90899313_
                                                 (##cdr _e90879308_)))
                                            (if (gx#identifier? _hd90889311_)
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd90889311_)
                                                    (if (gx#stx-pair?
                                                         _tl90899313_)
                                                        (let ((_e90909316_
                                                               (gx#stx-e
                                                                _tl90899313_)))
                                                          (let ((_hd90919319_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e90909316_))
                        (_tl90929321_ (##cdr _e90909316_)))
                    (if (gx#stx-pair? _hd90919319_)
                        (let ((_e90939324_ (gx#stx-e _hd90919319_)))
                          (let ((_hd90949327_ (##car _e90939324_))
                                (_tl90959329_ (##cdr _e90939324_)))
                            (if (gx#identifier? _hd90949327_)
                                (if (gx#stx-eq? '%#ref _hd90949327_)
                                    (if (gx#stx-pair? _tl90959329_)
                                        (let ((_e90969332_
                                               (gx#stx-e _tl90959329_)))
                                          (let ((_hd90979335_
                                                 (##car _e90969332_))
                                                (_tl90989337_
                                                 (##cdr _e90969332_)))
                                            (if (gx#stx-null? _tl90989337_)
                                                (if (gx#stx-pair? _tl90929321_)
                                                    (let ((_e90999340_
                                                           (gx#stx-e
                                                            _tl90929321_)))
                                                      (let ((_hd91009343_
                                                             (##car _e90999340_))
                                                            (_tl91019345_
                                                             (##cdr _e90999340_)))
                                                        (if (gx#stx-pair?
                                                             _hd91009343_)
                                                            (let ((_e91029348_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd91009343_)))
                      (let ((_hd91039351_ (##car _e91029348_))
                            (_tl91049353_ (##cdr _e91029348_)))
                        (if (gx#identifier? _hd91039351_)
                            (if (gx#stx-eq? '%#ref _hd91039351_)
                                (if (gx#stx-pair? _tl91049353_)
                                    (let ((_e91059356_
                                           (gx#stx-e _tl91049353_)))
                                      (let ((_hd91069359_ (##car _e91059356_))
                                            (_tl91079361_ (##cdr _e91059356_)))
                                        (if (gx#stx-null? _tl91079361_)
                                            (if (gx#stx-null? _tl90869305_)
                                                ((lambda (_L9364_
                                                          _L9365_
                                                          _L9366_
                                                          _L9367_)
                                                   (gxc#compile-e
                                                    (cons (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)
                                                          (cons _L9364_ '()))))
                                                 _hd91069359_
                                                 _hd90979335_
                                                 _tl90779278_
                                                 _arg90839297_)
                                                (_g90209263_ _g90229266_))
                                            (_g90209263_ _g90229266_))))
                                    (_g90209263_ _g90229266_))
                                (_g90209263_ _g90229266_))
                            (_g90209263_ _g90229266_))))
                    (_g90209263_ _g90229266_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g90209263_ _g90229266_))
                                                (_g90209263_ _g90229266_))))
                                        (_g90209263_ _g90229266_))
                                    (_g90209263_ _g90229266_))
                                (_g90209263_ _g90229266_))))
                        (_g90209263_ _g90229266_))))
                (_g90209263_ _g90229266_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g90209263_ _g90229266_))
                                                (_g90209263_ _g90229266_))))
                                        (_g90209263_ _g90229266_))))
                                (_g90209263_ _g90229266_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop90789281_
                                                     _target90759276_
                                                     '())))))
                                            (_g90209263_ _g90229266_))
                                        (_g90209263_ _g90229266_))))
                                (_g90209263_ _g90229266_))))
                         (_g90189547_
                          (lambda (_g90229402_)
                            (if (gx#stx-pair? _g90229402_)
                                (let ((_e90269404_ (gx#stx-e _g90229402_)))
                                  (let ((_hd90279407_ (##car _e90269404_))
                                        (_tl90289409_ (##cdr _e90269404_)))
                                    (if (gx#stx-pair/null? _hd90279407_)
                                        (if (fx>= (gx#stx-length _hd90279407_)
                                                  '0)
                                            (let ((_g12069_
                                                   (gx#syntax-split-splice
                                                    _hd90279407_
                                                    '0)))
                                              (begin
                                                (let ((_g12070_
                                                       (values-count
                                                        _g12069_)))
                                                  (if (not (fx= _g12070_ 2))
                                                      (error "Context expects 2 values"
                                                             _g12070_)))
                                                (let ((_target90299412_
                                                       (values-ref _g12069_ 0))
                                                      (_tl90319414_
                                                       (values-ref
                                                        _g12069_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl90319414_)
                                                      (letrec ((_loop90329417_
                                                                (lambda (_hd90309420_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _arg90369422_)
                          (if (gx#stx-pair? _hd90309420_)
                              (let ((_e90339425_ (gx#stx-e _hd90309420_)))
                                (let ((_lp-hd90349428_ (##car _e90339425_))
                                      (_lp-tl90359430_ (##cdr _e90339425_)))
                                  (_loop90329417_
                                   _lp-tl90359430_
                                   (cons _lp-hd90349428_ _arg90369422_))))
                              (let ((_arg90379433_ (reverse _arg90369422_)))
                                (if (gx#stx-pair? _tl90289409_)
                                    (let ((_e90389436_
                                           (gx#stx-e _tl90289409_)))
                                      (let ((_hd90399439_ (##car _e90389436_))
                                            (_tl90409441_ (##cdr _e90389436_)))
                                        (if (gx#stx-pair? _hd90399439_)
                                            (let ((_e90419444_
                                                   (gx#stx-e _hd90399439_)))
                                              (let ((_hd90429447_
                                                     (##car _e90419444_))
                                                    (_tl90439449_
                                                     (##cdr _e90419444_)))
                                                (if (gx#identifier?
                                                     _hd90429447_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd90429447_)
                                                        (if (gx#stx-pair?
                                                             _tl90439449_)
                                                            (let ((_e90449452_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl90439449_)))
                      (let ((_hd90459455_ (##car _e90449452_))
                            (_tl90469457_ (##cdr _e90449452_)))
                        (if (gx#stx-pair? _hd90459455_)
                            (let ((_e90479460_ (gx#stx-e _hd90459455_)))
                              (let ((_hd90489463_ (##car _e90479460_))
                                    (_tl90499465_ (##cdr _e90479460_)))
                                (if (gx#identifier? _hd90489463_)
                                    (if (gx#stx-eq? '%#ref _hd90489463_)
                                        (if (gx#stx-pair? _tl90499465_)
                                            (let ((_e90509468_
                                                   (gx#stx-e _tl90499465_)))
                                              (let ((_hd90519471_
                                                     (##car _e90509468_))
                                                    (_tl90529473_
                                                     (##cdr _e90509468_)))
                                                (if (gx#stx-null? _tl90529473_)
                                                    (if (gx#stx-pair/null?
                                                         _tl90469457_)
                                                        (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl90469457_)
                          '0)
                    (let ((_g12071_ (gx#syntax-split-splice _tl90469457_ '0)))
                      (begin
                        (let ((_g12072_ (values-count _g12071_)))
                          (if (not (fx= _g12072_ 2))
                              (error "Context expects 2 values" _g12072_)))
                        (let ((_target90539476_ (values-ref _g12071_ 0))
                              (_tl90559478_ (values-ref _g12071_ 1)))
                          (if (gx#stx-null? _tl90559478_)
                              (letrec ((_loop90569481_
                                        (lambda (_hd90549484_ _xarg90609486_)
                                          (if (gx#stx-pair? _hd90549484_)
                                              (let ((_e90579489_
                                                     (gx#stx-e _hd90549484_)))
                                                (let ((_lp-hd90589492_
                                                       (##car _e90579489_))
                                                      (_lp-tl90599494_
                                                       (##cdr _e90579489_)))
                                                  (if (gx#stx-pair?
                                                       _lp-hd90589492_)
                                                      (let ((_e90629497_
                                                             (gx#stx-e
                                                              _lp-hd90589492_)))
                                                        (let ((_hd90639500_
                                                               (##car _e90629497_))
                                                              (_tl90649502_
                                                               (##cdr _e90629497_)))
                                                          (if (gx#identifier?
                                                               _hd90639500_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#ref
                           _hd90639500_)
                          (if (gx#stx-pair? _tl90649502_)
                              (let ((_e90659505_ (gx#stx-e _tl90649502_)))
                                (let ((_hd90669508_ (##car _e90659505_))
                                      (_tl90679510_ (##cdr _e90659505_)))
                                  (if (gx#stx-null? _tl90679510_)
                                      (_loop90569481_
                                       _lp-tl90599494_
                                       (cons _hd90669508_ _xarg90609486_))
                                      (_g90199399_ _g90229402_))))
                              (_g90199399_ _g90229402_))
                          (_g90199399_ _g90229402_))
                      (_g90199399_ _g90229402_))))
              (_g90199399_ _g90229402_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_xarg90619513_
                                                     (reverse _xarg90609486_)))
                                                (if (gx#stx-null? _tl90409441_)
                                                    ((lambda (_L9516_
                                                              _L9517_
                                                              _L9518_)
                                                       (gxc#compile-e
                                                        (cons (gx#datum->syntax__0
                                                               '#f
                                                               '%#ref)
                                                              (cons _L9517_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _xarg90619513_
                                                     _hd90519471_
                                                     _arg90379433_)
                                                    (_g90199399_
                                                     _g90229402_)))))))
                                (_loop90569481_ _target90539476_ '()))
                              (_g90199399_ _g90229402_)))))
                    (_g90199399_ _g90229402_))
                (_g90199399_ _g90229402_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g90199399_
                                                     _g90229402_))))
                                            (_g90199399_ _g90229402_))
                                        (_g90199399_ _g90229402_))
                                    (_g90199399_ _g90229402_))))
                            (_g90199399_ _g90229402_))))
                    (_g90199399_ _g90229402_))
                (_g90199399_ _g90229402_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g90199399_
                                                     _g90229402_))))
                                            (_g90199399_ _g90229402_))))
                                    (_g90199399_ _g90229402_)))))))
                (_loop90329417_ _target90299412_ '()))
              (_g90199399_ _g90229402_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g90199399_ _g90229402_))
                                        (_g90199399_ _g90229402_))))
                                (_g90199399_ _g90229402_)))))
                    (_g90189547_ _form9017_))))
               (_generate18867_
                (lambda (_args9002_ _arglen9003_ _hd9004_ _body9005_)
                  (let* ((_len9007_ (gx#stx-length _hd9004_))
                         (_condition9009_
                          (if (gx#stx-list? _hd9004_)
                              (cons 'fx=
                                    (cons _arglen9003_ (cons _len9007_ '())))
                              (if (> _len9007_ '0)
                                  (cons 'fx>=
                                        (cons _arglen9003_
                                              (cons _len9007_ '())))
                                  '#t)))
                         (_dispatch9011_
                          (if (_dispatch-case?8865_ _hd9004_ _body9005_)
                              (_dispatch-case-e8866_ _hd9004_ _body9005_)
                              (cons 'lambda
                                    (cons (gxc#generate-runtime-lambda-head
                                           _hd9004_)
                                          (cons (gxc#compile-e _body9005_)
                                                '()))))))
                    (cons _condition9009_
                          (cons (cons 'apply
                                      (cons _dispatch9011_
                                            (cons _args9002_ '())))
                                '()))))))
        (let* ((_g88698897_
                (lambda (_g88708894_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g88708894_)))
               (_g88688999_
                (lambda (_g88708900_)
                  (if (gx#stx-pair? _g88708900_)
                      (let ((_e88738902_ (gx#stx-e _g88708900_)))
                        (let ((_hd88748905_ (##car _e88738902_))
                              (_tl88758907_ (##cdr _e88738902_)))
                          (if (gx#stx-pair/null? _tl88758907_)
                              (if (fx>= (gx#stx-length _tl88758907_) '0)
                                  (let ((_g12073_
                                         (gx#syntax-split-splice
                                          _tl88758907_
                                          '0)))
                                    (begin
                                      (let ((_g12074_ (values-count _g12073_)))
                                        (if (not (fx= _g12074_ 2))
                                            (error "Context expects 2 values"
                                                   _g12074_)))
                                      (let ((_target88768910_
                                             (values-ref _g12073_ 0))
                                            (_tl88788912_
                                             (values-ref _g12073_ 1)))
                                        (if (gx#stx-null? _tl88788912_)
                                            (letrec ((_loop88798915_
                                                      (lambda (_hd88778918_
                                                               _body88838920_
                                                               _hd88848922_)
                                                        (if (gx#stx-pair?
                                                             _hd88778918_)
                                                            (let ((_e88808925_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd88778918_)))
                      (let ((_lp-hd88818928_ (##car _e88808925_))
                            (_lp-tl88828930_ (##cdr _e88808925_)))
                        (if (gx#stx-pair? _lp-hd88818928_)
                            (let ((_e88878933_ (gx#stx-e _lp-hd88818928_)))
                              (let ((_hd88888936_ (##car _e88878933_))
                                    (_tl88898938_ (##cdr _e88878933_)))
                                (if (gx#stx-pair? _tl88898938_)
                                    (let ((_e88908941_
                                           (gx#stx-e _tl88898938_)))
                                      (let ((_hd88918944_ (##car _e88908941_))
                                            (_tl88928946_ (##cdr _e88908941_)))
                                        (if (gx#stx-null? _tl88928946_)
                                            (_loop88798915_
                                             _lp-tl88828930_
                                             (cons _hd88918944_ _body88838920_)
                                             (cons _hd88888936_ _hd88848922_))
                                            (_g88698897_ _g88708900_))))
                                    (_g88698897_ _g88708900_))))
                            (_g88698897_ _g88708900_))))
                    (let ((_body88858949_ (reverse _body88838920_))
                          (_hd88868951_ (reverse _hd88848922_)))
                      ((lambda (_L8954_ _L8955_)
                         (let ((_args8974_ (gxc#generate-runtime-temporary__0))
                               (_arglen8975_
                                (gxc#generate-runtime-temporary__0))
                               (_name8976_
                                (let ((_$e8971_
                                       (table-ref
                                        (gxc#current-compile-runtime-names)
                                        _stx8862_
                                        '#f)))
                                  (if _$e8971_
                                      _$e8971_
                                      ''case-lambda-dispatch))))
                           (cons 'lambda
                                 (cons _args8974_
                                       (cons (cons 'let
                                                   (cons (cons (cons _arglen8975_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons 'length (cons _args8974_ '())) '()))
                       '())
                 (cons (cons 'cond
                             (foldr1 cons
                                     (cons (cons 'else
                                                 (cons (cons '##raise-wrong-number-of-arguments-exception
                                                             (cons _name8976_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _args8974_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (map (lambda (_g89778980_ _g89788982_)
                                            (_generate18867_
                                             _args8974_
                                             _arglen8975_
                                             _g89778980_
                                             _g89788982_))
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g89848987_
                                                             _g89858989_)
                                                      (cons _g89848987_
                                                            _g89858989_))
                                                    '()
                                                    _L8955_))
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g89918994_
                                                             _g89928996_)
                                                      (cons _g89918994_
                                                            _g89928996_))
                                                    '()
                                                    _L8954_)))))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))))
                       _body88858949_
                       _hd88868951_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop88798915_
                                               _target88768910_
                                               '()
                                               '()))
                                            (_g88698897_ _g88708900_)))))
                                  (_g88698897_ _g88708900_))
                              (_g88698897_ _g88708900_))))
                      (_g88698897_ _g88708900_)))))
          (_g88688999_ _stx8862_)))))
  (begin
    (define gxc#generate-runtime-let-values%__opt-lambda7925
      (lambda (_stx7927_ _compiled-body?7928_)
        (letrec ((_generate-simple7930_
                  (lambda (_hd8849_ _body8850_)
                    (_coalesce-let*7931_
                     (gxc#generate-runtime-simple-let
                      'let
                      _hd8849_
                      _body8850_
                      _compiled-body?7928_))))
                 (_coalesce-let*7931_
                  (lambda (_code8233_)
                    (let* ((_g82388373_
                            (lambda (_g82398370_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g82398370_)))
                           (_g82378380_
                            (lambda (_g82398376_) ((lambda () _code8233_))))
                           (_g82368550_
                            (lambda (_g82398383_)
                              (if (gx#stx-pair? _g82398383_)
                                  (let ((_e83278385_ (gx#stx-e _g82398383_)))
                                    (let ((_hd83288388_ (##car _e83278385_))
                                          (_tl83298390_ (##cdr _e83278385_)))
                                      (if (gx#identifier? _hd83288388_)
                                          (if (gx#stx-eq? 'let _hd83288388_)
                                              (if (gx#stx-pair? _tl83298390_)
                                                  (let ((_e83308393_
                                                         (gx#stx-e
                                                          _tl83298390_)))
                                                    (let ((_hd83318396_
                                                           (##car _e83308393_))
                                                          (_tl83328398_
                                                           (##cdr _e83308393_)))
                                                      (if (gx#stx-pair?
                                                           _hd83318396_)
                                                          (let ((_e83338401_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd83318396_)))
                    (let ((_hd83348404_ (##car _e83338401_))
                          (_tl83358406_ (##cdr _e83338401_)))
                      (if (gx#stx-pair? _hd83348404_)
                          (let ((_e83368409_ (gx#stx-e _hd83348404_)))
                            (let ((_hd83378412_ (##car _e83368409_))
                                  (_tl83388414_ (##cdr _e83368409_)))
                              (if (gx#stx-pair? _tl83388414_)
                                  (let ((_e83398417_ (gx#stx-e _tl83388414_)))
                                    (let ((_hd83408420_ (##car _e83398417_))
                                          (_tl83418422_ (##cdr _e83398417_)))
                                      (if (gx#stx-null? _tl83418422_)
                                          (if (gx#stx-null? _tl83358406_)
                                              (if (gx#stx-pair? _tl83328398_)
                                                  (let ((_e83428425_
                                                         (gx#stx-e
                                                          _tl83328398_)))
                                                    (let ((_hd83438428_
                                                           (##car _e83428425_))
                                                          (_tl83448430_
                                                           (##cdr _e83428425_)))
                                                      (if (gx#stx-pair?
                                                           _hd83438428_)
                                                          (let ((_e83458433_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd83438428_)))
                    (let ((_hd83468436_ (##car _e83458433_))
                          (_tl83478438_ (##cdr _e83458433_)))
                      (if (gx#identifier? _hd83468436_)
                          (if (gx#stx-eq? 'let* _hd83468436_)
                              (if (gx#stx-pair? _tl83478438_)
                                  (let ((_e83488441_ (gx#stx-e _tl83478438_)))
                                    (let ((_hd83498444_ (##car _e83488441_))
                                          (_tl83508446_ (##cdr _e83488441_)))
                                      (if (gx#stx-pair/null? _hd83498444_)
                                          (if (fx>= (gx#stx-length
                                                     _hd83498444_)
                                                    '0)
                                              (let ((_g12075_
                                                     (gx#syntax-split-splice
                                                      _hd83498444_
                                                      '0)))
                                                (begin
                                                  (let ((_g12076_
                                                         (values-count
                                                          _g12075_)))
                                                    (if (not (fx= _g12076_ 2))
                                                        (error "Context expects 2 values"
                                                               _g12076_)))
                                                  (let ((_target83518449_
                                                         (values-ref
                                                          _g12075_
                                                          0))
                                                        (_tl83538451_
                                                         (values-ref
                                                          _g12075_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl83538451_)
                                                        (letrec ((_loop83548454_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd83528457_ _bind83588459_)
                            (if (gx#stx-pair? _hd83528457_)
                                (let ((_e83558462_ (gx#stx-e _hd83528457_)))
                                  (let ((_lp-hd83568465_ (##car _e83558462_))
                                        (_lp-tl83578467_ (##cdr _e83558462_)))
                                    (_loop83548454_
                                     _lp-tl83578467_
                                     (cons _lp-hd83568465_ _bind83588459_))))
                                (let ((_bind83598470_
                                       (reverse _bind83588459_)))
                                  (if (gx#stx-pair/null? _tl83508446_)
                                      (if (fx>= (gx#stx-length _tl83508446_)
                                                '0)
                                          (let ((_g12077_
                                                 (gx#syntax-split-splice
                                                  _tl83508446_
                                                  '0)))
                                            (begin
                                              (let ((_g12078_
                                                     (values-count _g12077_)))
                                                (if (not (fx= _g12078_ 2))
                                                    (error "Context expects 2 values"
                                                           _g12078_)))
                                              (let ((_target83608473_
                                                     (values-ref _g12077_ 0))
                                                    (_tl83628475_
                                                     (values-ref _g12077_ 1)))
                                                (if (gx#stx-null? _tl83628475_)
                                                    (letrec ((_loop83638478_
                                                              (lambda (_hd83618481_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body83678483_)
                        (if (gx#stx-pair? _hd83618481_)
                            (let ((_e83648486_ (gx#stx-e _hd83618481_)))
                              (let ((_lp-hd83658489_ (##car _e83648486_))
                                    (_lp-tl83668491_ (##cdr _e83648486_)))
                                (_loop83638478_
                                 _lp-tl83668491_
                                 (cons _lp-hd83658489_ _body83678483_))))
                            (let ((_body83688494_ (reverse _body83678483_)))
                              (if (gx#stx-null? _tl83448430_)
                                  ((lambda (_L8497_ _L8498_ _L8499_ _L8500_)
                                     (cons 'let*
                                           (cons (cons (cons _L8500_
                                                             (cons _L8499_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (begin
                 '#!void
                 (foldr1 (lambda (_g85358538_ _g85368540_)
                           (cons _g85358538_ _g85368540_))
                         '()
                         _L8498_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g85428545_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g85438547_)
                     (cons _g85428545_ _g85438547_))
                   '()
                   _L8497_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _body83688494_
                                   _bind83598470_
                                   _hd83408420_
                                   _hd83378412_)
                                  (_g82378380_ _g82398383_)))))))
              (_loop83638478_ _target83608473_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g82378380_
                                                     _g82398383_)))))
                                          (_g82378380_ _g82398383_))
                                      (_g82378380_ _g82398383_)))))))
                  (_loop83548454_ _target83518449_ '()))
                (_g82378380_ _g82398383_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g82378380_ _g82398383_))
                                          (_g82378380_ _g82398383_))))
                                  (_g82378380_ _g82398383_))
                              (_g82378380_ _g82398383_))
                          (_g82378380_ _g82398383_))))
                  (_g82378380_ _g82398383_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g82378380_ _g82398383_))
                                              (_g82378380_ _g82398383_))
                                          (_g82378380_ _g82398383_))))
                                  (_g82378380_ _g82398383_))))
                          (_g82378380_ _g82398383_))))
                  (_g82378380_ _g82398383_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g82378380_ _g82398383_))
                                              (_g82378380_ _g82398383_))
                                          (_g82378380_ _g82398383_))))
                                  (_g82378380_ _g82398383_))))
                           (_g82358715_
                            (lambda (_g82398553_)
                              (if (gx#stx-pair? _g82398553_)
                                  (let ((_e82818555_ (gx#stx-e _g82398553_)))
                                    (let ((_hd82828558_ (##car _e82818555_))
                                          (_tl82838560_ (##cdr _e82818555_)))
                                      (if (gx#identifier? _hd82828558_)
                                          (if (gx#stx-eq? 'let _hd82828558_)
                                              (if (gx#stx-pair? _tl82838560_)
                                                  (let ((_e82848563_
                                                         (gx#stx-e
                                                          _tl82838560_)))
                                                    (let ((_hd82858566_
                                                           (##car _e82848563_))
                                                          (_tl82868568_
                                                           (##cdr _e82848563_)))
                                                      (if (gx#stx-pair?
                                                           _hd82858566_)
                                                          (let ((_e82878571_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd82858566_)))
                    (let ((_hd82888574_ (##car _e82878571_))
                          (_tl82898576_ (##cdr _e82878571_)))
                      (if (gx#stx-pair? _hd82888574_)
                          (let ((_e82908579_ (gx#stx-e _hd82888574_)))
                            (let ((_hd82918582_ (##car _e82908579_))
                                  (_tl82928584_ (##cdr _e82908579_)))
                              (if (gx#stx-pair? _tl82928584_)
                                  (let ((_e82938587_ (gx#stx-e _tl82928584_)))
                                    (let ((_hd82948590_ (##car _e82938587_))
                                          (_tl82958592_ (##cdr _e82938587_)))
                                      (if (gx#stx-null? _tl82958592_)
                                          (if (gx#stx-null? _tl82898576_)
                                              (if (gx#stx-pair? _tl82868568_)
                                                  (let ((_e82968595_
                                                         (gx#stx-e
                                                          _tl82868568_)))
                                                    (let ((_hd82978598_
                                                           (##car _e82968595_))
                                                          (_tl82988600_
                                                           (##cdr _e82968595_)))
                                                      (if (gx#stx-pair?
                                                           _hd82978598_)
                                                          (let ((_e82998603_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd82978598_)))
                    (let ((_hd83008606_ (##car _e82998603_))
                          (_tl83018608_ (##cdr _e82998603_)))
                      (if (gx#identifier? _hd83008606_)
                          (if (gx#stx-eq? 'let _hd83008606_)
                              (if (gx#stx-pair? _tl83018608_)
                                  (let ((_e83028611_ (gx#stx-e _tl83018608_)))
                                    (let ((_hd83038614_ (##car _e83028611_))
                                          (_tl83048616_ (##cdr _e83028611_)))
                                      (if (gx#stx-pair? _hd83038614_)
                                          (let ((_e83058619_
                                                 (gx#stx-e _hd83038614_)))
                                            (let ((_hd83068622_
                                                   (##car _e83058619_))
                                                  (_tl83078624_
                                                   (##cdr _e83058619_)))
                                              (if (gx#stx-pair? _hd83068622_)
                                                  (let ((_e83088627_
                                                         (gx#stx-e
                                                          _hd83068622_)))
                                                    (let ((_hd83098630_
                                                           (##car _e83088627_))
                                                          (_tl83108632_
                                                           (##cdr _e83088627_)))
                                                      (if (gx#stx-pair?
                                                           _tl83108632_)
                                                          (let ((_e83118635_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl83108632_)))
                    (let ((_hd83128638_ (##car _e83118635_))
                          (_tl83138640_ (##cdr _e83118635_)))
                      (if (gx#stx-null? _tl83138640_)
                          (if (gx#stx-null? _tl83078624_)
                              (if (gx#stx-pair/null? _tl83048616_)
                                  (if (fx>= (gx#stx-length _tl83048616_) '0)
                                      (let ((_g12079_
                                             (gx#syntax-split-splice
                                              _tl83048616_
                                              '0)))
                                        (begin
                                          (let ((_g12080_
                                                 (values-count _g12079_)))
                                            (if (not (fx= _g12080_ 2))
                                                (error "Context expects 2 values"
                                                       _g12080_)))
                                          (let ((_target83148643_
                                                 (values-ref _g12079_ 0))
                                                (_tl83168645_
                                                 (values-ref _g12079_ 1)))
                                            (if (gx#stx-null? _tl83168645_)
                                                (letrec ((_loop83178648_
                                                          (lambda (_hd83158651_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body83218653_)
                    (if (gx#stx-pair? _hd83158651_)
                        (let ((_e83188656_ (gx#stx-e _hd83158651_)))
                          (let ((_lp-hd83198659_ (##car _e83188656_))
                                (_lp-tl83208661_ (##cdr _e83188656_)))
                            (_loop83178648_
                             _lp-tl83208661_
                             (cons _lp-hd83198659_ _body83218653_))))
                        (let ((_body83228664_ (reverse _body83218653_)))
                          (if (gx#stx-null? _tl82988600_)
                              ((lambda (_L8667_
                                        _L8668_
                                        _L8669_
                                        _L8670_
                                        _L8671_)
                                 (cons 'let*
                                       (cons (cons (cons _L8671_
                                                         (cons _L8670_ '()))
                                                   (cons (cons _L8669_
                                                               (cons _L8668_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (begin
                                               '#!void
                                               (foldr1 (lambda (_g87078710_
                                                                _g87088712_)
                                                         (cons _g87078710_
                                                               _g87088712_))
                                                       '()
                                                       _L8667_)))))
                               _body83228664_
                               _hd83128638_
                               _hd83098630_
                               _hd82948590_
                               _hd82918582_)
                              (_g82368550_ _g82398553_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop83178648_
                                                   _target83148643_
                                                   '()))
                                                (_g82368550_ _g82398553_)))))
                                      (_g82368550_ _g82398553_))
                                  (_g82368550_ _g82398553_))
                              (_g82368550_ _g82398553_))
                          (_g82368550_ _g82398553_))))
                  (_g82368550_ _g82398553_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g82368550_ _g82398553_))))
                                          (_g82368550_ _g82398553_))))
                                  (_g82368550_ _g82398553_))
                              (_g82368550_ _g82398553_))
                          (_g82368550_ _g82398553_))))
                  (_g82368550_ _g82398553_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g82368550_ _g82398553_))
                                              (_g82368550_ _g82398553_))
                                          (_g82368550_ _g82398553_))))
                                  (_g82368550_ _g82398553_))))
                          (_g82368550_ _g82398553_))))
                  (_g82368550_ _g82398553_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g82368550_ _g82398553_))
                                              (_g82368550_ _g82398553_))
                                          (_g82368550_ _g82398553_))))
                                  (_g82368550_ _g82398553_))))
                           (_g82348846_
                            (lambda (_g82398718_)
                              (if (gx#stx-pair? _g82398718_)
                                  (let ((_e82438720_ (gx#stx-e _g82398718_)))
                                    (let ((_hd82448723_ (##car _e82438720_))
                                          (_tl82458725_ (##cdr _e82438720_)))
                                      (if (gx#identifier? _hd82448723_)
                                          (if (gx#stx-eq? 'let _hd82448723_)
                                              (if (gx#stx-pair? _tl82458725_)
                                                  (let ((_e82468728_
                                                         (gx#stx-e
                                                          _tl82458725_)))
                                                    (let ((_hd82478731_
                                                           (##car _e82468728_))
                                                          (_tl82488733_
                                                           (##cdr _e82468728_)))
                                                      (if (gx#stx-pair?
                                                           _hd82478731_)
                                                          (let ((_e82498736_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd82478731_)))
                    (let ((_hd82508739_ (##car _e82498736_))
                          (_tl82518741_ (##cdr _e82498736_)))
                      (if (gx#stx-pair? _hd82508739_)
                          (let ((_e82528744_ (gx#stx-e _hd82508739_)))
                            (let ((_hd82538747_ (##car _e82528744_))
                                  (_tl82548749_ (##cdr _e82528744_)))
                              (if (gx#stx-pair? _tl82548749_)
                                  (let ((_e82558752_ (gx#stx-e _tl82548749_)))
                                    (let ((_hd82568755_ (##car _e82558752_))
                                          (_tl82578757_ (##cdr _e82558752_)))
                                      (if (gx#stx-null? _tl82578757_)
                                          (if (gx#stx-null? _tl82518741_)
                                              (if (gx#stx-pair? _tl82488733_)
                                                  (let ((_e82588760_
                                                         (gx#stx-e
                                                          _tl82488733_)))
                                                    (let ((_hd82598763_
                                                           (##car _e82588760_))
                                                          (_tl82608765_
                                                           (##cdr _e82588760_)))
                                                      (if (gx#stx-pair?
                                                           _hd82598763_)
                                                          (let ((_e82618768_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd82598763_)))
                    (let ((_hd82628771_ (##car _e82618768_))
                          (_tl82638773_ (##cdr _e82618768_)))
                      (if (gx#identifier? _hd82628771_)
                          (if (gx#stx-eq? 'let _hd82628771_)
                              (if (gx#stx-pair? _tl82638773_)
                                  (let ((_e82648776_ (gx#stx-e _tl82638773_)))
                                    (let ((_hd82658779_ (##car _e82648776_))
                                          (_tl82668781_ (##cdr _e82648776_)))
                                      (if (gx#stx-null? _hd82658779_)
                                          (if (gx#stx-pair/null? _tl82668781_)
                                              (if (fx>= (gx#stx-length
                                                         _tl82668781_)
                                                        '0)
                                                  (let ((_g12081_
                                                         (gx#syntax-split-splice
                                                          _tl82668781_
                                                          '0)))
                                                    (begin
                                                      (let ((_g12082_
                                                             (values-count
                                                              _g12081_)))
                                                        (if (not (fx= _g12082_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g12082_)))
              (let ((_target82678784_ (values-ref _g12081_ 0))
                    (_tl82698786_ (values-ref _g12081_ 1)))
                (if (gx#stx-null? _tl82698786_)
                    (letrec ((_loop82708789_
                              (lambda (_hd82688792_ _body82748794_)
                                (if (gx#stx-pair? _hd82688792_)
                                    (let ((_e82718797_
                                           (gx#stx-e _hd82688792_)))
                                      (let ((_lp-hd82728800_
                                             (##car _e82718797_))
                                            (_lp-tl82738802_
                                             (##cdr _e82718797_)))
                                        (_loop82708789_
                                         _lp-tl82738802_
                                         (cons _lp-hd82728800_
                                               _body82748794_))))
                                    (let ((_body82758805_
                                           (reverse _body82748794_)))
                                      (if (gx#stx-null? _tl82608765_)
                                          ((lambda (_L8808_ _L8809_ _L8810_)
                                             (cons 'let
                                                   (cons (cons (cons _L8810_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L8809_ '()))
                       '())
                 (begin
                   '#!void
                   (foldr1 (lambda (_g88388841_ _g88398843_)
                             (cons _g88388841_ _g88398843_))
                           '()
                           _L8808_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _body82758805_
                                           _hd82568755_
                                           _hd82538747_)
                                          (_g82358715_ _g82398718_)))))))
                      (_loop82708789_ _target82678784_ '()))
                    (_g82358715_ _g82398718_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g82358715_ _g82398718_))
                                              (_g82358715_ _g82398718_))
                                          (_g82358715_ _g82398718_))))
                                  (_g82358715_ _g82398718_))
                              (_g82358715_ _g82398718_))
                          (_g82358715_ _g82398718_))))
                  (_g82358715_ _g82398718_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g82358715_ _g82398718_))
                                              (_g82358715_ _g82398718_))
                                          (_g82358715_ _g82398718_))))
                                  (_g82358715_ _g82398718_))))
                          (_g82358715_ _g82398718_))))
                  (_g82358715_ _g82398718_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g82358715_ _g82398718_))
                                              (_g82358715_ _g82398718_))
                                          (_g82358715_ _g82398718_))))
                                  (_g82358715_ _g82398718_)))))
                      (_g82348846_ _code8233_))))
                 (_generate-values7932_
                  (lambda (_hd8046_ _body8047_)
                    (let _lp8049_ ((_rest8051_ _hd8046_)
                                   (_bind8052_ '())
                                   (_check8053_ '())
                                   (_post8054_ '()))
                      (let* ((_g80578068_
                              (lambda (_g80588065_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g80588065_)))
                             (_g80568082_
                              (lambda (_g80588071_)
                                ((lambda ()
                                   (let* ((_body8075_
                                           (if _compiled-body?7928_
                                               _body8047_
                                               (gxc#compile-e _body8047_)))
                                          (_body8077_
                                           (_generate-values-post7933_
                                            _post8054_
                                            _body8075_))
                                          (_body8079_
                                           (_generate-values-check7934_
                                            _check8053_
                                            _body8077_)))
                                     (cons 'let
                                           (cons (reverse _bind8052_)
                                                 (cons _body8079_ '()))))))))
                             (_g80558230_
                              (lambda (_g80588085_)
                                (if (gx#stx-pair? _g80588085_)
                                    (let ((_e80618087_ (gx#stx-e _g80588085_)))
                                      (let ((_hd80628090_ (##car _e80618087_))
                                            (_tl80638092_ (##cdr _e80618087_)))
                                        ((lambda (_L8095_ _L8096_)
                                           (let* ((_g81118136_
                                                   (lambda (_g81128133_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g81128133_)))
                                                  (_g81108180_
                                                   (lambda (_g81128139_)
                                                     (if (gx#stx-pair?
                                                          _g81128139_)
                                                         (let ((_e81268141_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g81128139_)))
                   (let ((_hd81278144_ (##car _e81268141_))
                         (_tl81288146_ (##cdr _e81268141_)))
                     (if (gx#stx-pair? _tl81288146_)
                         (let ((_e81298149_ (gx#stx-e _tl81288146_)))
                           (let ((_hd81308152_ (##car _e81298149_))
                                 (_tl81318154_ (##cdr _e81298149_)))
                             (if (gx#stx-null? _tl81318154_)
                                 ((lambda (_L8157_ _L8158_)
                                    (let* ((_vals8171_
                                            (gxc#generate-runtime-temporary__0))
                                           (_expr8173_ (gxc#compile-e _L8157_))
                                           (_check-values8175_
                                            (gxc#generate-runtime-check-values
                                             _vals8171_
                                             _L8158_))
                                           (_refs8177_
                                            (gxc#generate-runtime-let-values-bind
                                             _vals8171_
                                             _L8158_)))
                                      (_lp8049_
                                       _L8095_
                                       (cons (cons _vals8171_
                                                   (cons _expr8173_ '()))
                                             _bind8052_)
                                       (cons _check-values8175_ _check8053_)
                                       (cons _refs8177_ _post8054_))))
                                  _hd81308152_
                                  _hd81278144_)
                                 (_g81118136_ _g81128139_))))
                         (_g81118136_ _g81128139_))))
                 (_g81118136_ _g81128139_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g81098227_
                                                   (lambda (_g81128183_)
                                                     (if (gx#stx-pair?
                                                          _g81128183_)
                                                         (let ((_e81158185_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g81128183_)))
                   (let ((_hd81168188_ (##car _e81158185_))
                         (_tl81178190_ (##cdr _e81158185_)))
                     (if (gx#stx-pair? _hd81168188_)
                         (let ((_e81188193_ (gx#stx-e _hd81168188_)))
                           (let ((_hd81198196_ (##car _e81188193_))
                                 (_tl81208198_ (##cdr _e81188193_)))
                             (if (gx#stx-null? _tl81208198_)
                                 (if (gx#stx-pair? _tl81178190_)
                                     (let ((_e81218201_
                                            (gx#stx-e _tl81178190_)))
                                       (let ((_hd81228204_ (##car _e81218201_))
                                             (_tl81238206_
                                              (##cdr _e81218201_)))
                                         (if (gx#stx-null? _tl81238206_)
                                             ((lambda (_L8209_ _L8210_)
                                                (let ((_eid8224_
                                                       (gxc#generate-runtime-binding-id*
                                                        _L8210_))
                                                      (_expr8225_
                                                       (gxc#compile-e
                                                        _L8209_)))
                                                  (_lp8049_
                                                   _L8095_
                                                   (cons (cons _eid8224_
                                                               (cons _expr8225_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 _bind8052_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _check8053_
                                                   _post8054_)))
                                              _hd81228204_
                                              _hd81198196_)
                                             (_g81108180_ _g81128183_))))
                                     (_g81108180_ _g81128183_))
                                 (_g81108180_ _g81128183_))))
                         (_g81108180_ _g81128183_))))
                 (_g81108180_ _g81128183_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g81098227_ _L8096_)))
                                         _tl80638092_
                                         _hd80628090_)))
                                    (_g80568082_ _g80588085_)))))
                        (_g80558230_ _rest8051_)))))
                 (_generate-values-post7933_
                  (lambda (_post8005_ _body8006_)
                    (let _lp8008_ ((_rest8010_ _post8005_)
                                   (_body8011_ _body8006_))
                      (let* ((_rest80128020_ _rest8010_)
                             (_E80158024_
                              (lambda ()
                                (error '"No clause matching" _rest80128020_)))
                             (_else80148028_ (lambda () _body8011_))
                             (_K80168034_
                              (lambda (_rest8031_ _bind8032_)
                                (_lp8008_
                                 _rest8031_
                                 (cons 'let
                                       (cons _bind8032_
                                             (cons _body8011_ '())))))))
                        (if (##pair? _rest80128020_)
                            (let ((_hd80178037_ (##car _rest80128020_))
                                  (_tl80188039_ (##cdr _rest80128020_)))
                              (let* ((_bind8042_ _hd80178037_)
                                     (_rest8044_ _tl80188039_))
                                (_K80168034_ _rest8044_ _bind8042_)))
                            (_else80148028_))))))
                 (_generate-values-check7934_
                  (lambda (_check8002_ _body8003_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body8003_ '())
                                  (reverse _check8002_))))))
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
                                                       (_generate-simple7930_
                                                        _L7983_
                                                        _L7982_)
                                                       (_generate-values7932_
                                                        _L7983_
                                                        _L7982_)))
                                                 _hd79477977_
                                                 _hd79447969_)
                                                (_g79367953_ _g79377956_))))
                                        (_g79367953_ _g79377956_))))
                                (_g79367953_ _g79377956_))))
                        (_g79367953_ _g79377956_)))))
            (_g79357999_ _stx7927_)))))
    (begin
      (define gxc#generate-runtime-let-values%__0
        (lambda (_stx8855_)
          (let ((_compiled-body?8857_ '#f))
            (gxc#generate-runtime-let-values%__opt-lambda7925
             _stx8855_
             _compiled-body?8857_))))
      (define gxc#generate-runtime-let-values%
        (lambda _g12084_
          (let ((_g12083_ (length _g12084_)))
            (cond ((fx= _g12083_ 1)
                   (apply gxc#generate-runtime-let-values%__0 _g12084_))
                  ((fx= _g12083_ 2)
                   (apply gxc#generate-runtime-let-values%__opt-lambda7925
                          _g12084_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-let-values%
                    _g12084_))))))))
  (define gxc#generate-runtime-let-values-bind
    (lambda (_vals7826_ _hd7827_)
      (let _lp7829_ ((_rest7831_ _hd7827_) (_k7832_ '0) (_r7833_ '()))
        (let* ((_g78387854_
                (lambda (_g78397851_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g78397851_)))
               (_g78377861_
                (lambda (_g78397857_) ((lambda () (reverse _r7833_)))))
               (_g78367877_
                (lambda (_g78397864_)
                  ((lambda (_L7866_)
                     (if (gx#identifier? _L7866_)
                         (foldl1 cons
                                 (cons (cons (gxc#generate-runtime-binding-id
                                              _L7866_)
                                             (cons (cons 'values->list
                                                         (cons _vals7826_
                                                               (cons _k7832_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                       '())
                                 _r7833_)
                         (_g78377861_ _g78397864_)))
                   _g78397864_)))
               (_g78357901_
                (lambda (_g78397880_)
                  (if (gx#stx-pair? _g78397880_)
                      (let ((_e78467882_ (gx#stx-e _g78397880_)))
                        (let ((_hd78477885_ (##car _e78467882_))
                              (_tl78487887_ (##cdr _e78467882_)))
                          ((lambda (_L7890_ _L7891_)
                             (_lp7829_
                              _L7890_
                              (fx+ _k7832_ '1)
                              (cons (cons (gxc#generate-runtime-binding-id
                                           _L7891_)
                                          (cons (cons 'values-ref
                                                      (cons _vals7826_
                                                            (cons _k7832_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    _r7833_)))
                           _tl78487887_
                           _hd78477885_)))
                      (_g78367877_ _g78397880_))))
               (_g78347923_
                (lambda (_g78397904_)
                  (if (gx#stx-pair? _g78397904_)
                      (let ((_e78417906_ (gx#stx-e _g78397904_)))
                        (let ((_hd78427909_ (##car _e78417906_))
                              (_tl78437911_ (##cdr _e78417906_)))
                          (if (gx#stx-datum? _hd78427909_)
                              (if (equal? (gx#stx-e _hd78427909_) '#f)
                                  ((lambda (_L7914_)
                                     (_lp7829_
                                      _L7914_
                                      (fx+ _k7832_ '1)
                                      _r7833_))
                                   _tl78437911_)
                                  (_g78357901_ _g78397904_))
                              (_g78357901_ _g78397904_))))
                      (_g78357901_ _g78397904_)))))
          (_g78347923_ _rest7831_)))))
  (begin
    (define gxc#generate-runtime-letrec-values%__opt-lambda7504
      (lambda (_stx7506_ _compiled-body?7507_)
        (letrec ((_generate-simple7509_
                  (lambda (_hd7813_ _body7814_)
                    (gxc#generate-runtime-simple-let
                     'letrec
                     _hd7813_
                     _body7814_
                     _compiled-body?7507_)))
                 (_generate-values7510_
                  (lambda (_hd7590_ _body7591_)
                    (let _lp7593_ ((_rest7595_ _hd7590_)
                                   (_bind7596_ '())
                                   (_check7597_ '())
                                   (_post7598_ '()))
                      (let* ((_g76017612_
                              (lambda (_g76027609_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g76027609_)))
                             (_g76007626_
                              (lambda (_g76027615_)
                                ((lambda ()
                                   (let* ((_body7619_
                                           (if _compiled-body?7507_
                                               _body7591_
                                               (gxc#compile-e _body7591_)))
                                          (_body7621_
                                           (_generate-values-post7512_
                                            _post7598_
                                            _body7619_))
                                          (_body7623_
                                           (_generate-values-check7511_
                                            _check7597_
                                            _body7621_)))
                                     (cons 'letrec
                                           (cons (reverse _bind7596_)
                                                 (cons _body7623_ '()))))))))
                             (_g75997810_
                              (lambda (_g76027629_)
                                (if (gx#stx-pair? _g76027629_)
                                    (let ((_e76057631_ (gx#stx-e _g76027629_)))
                                      (let ((_hd76067634_ (##car _e76057631_))
                                            (_tl76077636_ (##cdr _e76057631_)))
                                        ((lambda (_L7639_ _L7640_)
                                           (let* ((_g76557680_
                                                   (lambda (_g76567677_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g76567677_)))
                                                  (_g76547760_
                                                   (lambda (_g76567683_)
                                                     (if (gx#stx-pair?
                                                          _g76567683_)
                                                         (let ((_e76707685_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g76567683_)))
                   (let ((_hd76717688_ (##car _e76707685_))
                         (_tl76727690_ (##cdr _e76707685_)))
                     (if (gx#stx-pair? _tl76727690_)
                         (let ((_e76737693_ (gx#stx-e _tl76727690_)))
                           (let ((_hd76747696_ (##car _e76737693_))
                                 (_tl76757698_ (##cdr _e76737693_)))
                             (if (gx#stx-null? _tl76757698_)
                                 ((lambda (_L7701_ _L7702_)
                                    (let* ((_vals7715_
                                            (gxc#generate-runtime-temporary__0))
                                           (_expr7717_ (gxc#compile-e _L7701_))
                                           (_check-values7719_
                                            (gxc#generate-runtime-check-values
                                             _vals7715_
                                             _L7702_))
                                           (_refs7721_
                                            (gxc#generate-runtime-let-values-bind
                                             _vals7715_
                                             _L7702_)))
                                      (_lp7593_
                                       _L7639_
                                       (foldl1 cons
                                               (cons (cons _vals7715_
                                                           (cons _expr7717_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _bind7596_)
                                               (map (lambda (_e77237725_)
                                                      (let* ((_g77277736_
                                                              _e77237725_)
                                                             (_E77297740_
                                                              (lambda ()
                                                                (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g77277736_)))
                     (_K77307745_
                      (lambda (_eid7743_)
                        (cons _eid7743_ (cons '#!void '())))))
                (if (##pair? _g77277736_)
                    (let ((_hd77317748_ (##car _g77277736_))
                          (_tl77327750_ (##cdr _g77277736_)))
                      (let ((_eid7753_ _hd77317748_))
                        (if (##pair? _tl77327750_)
                            (let ((_hd77337755_ (##car _tl77327750_))
                                  (_tl77347757_ (##cdr _tl77327750_)))
                              (if (##null? _tl77347757_)
                                  (_K77307745_ _eid7753_)
                                  (_E77297740_)))
                            (_E77297740_))))
                    (_E77297740_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _refs7721_))
                                       (cons _check-values7719_ _check7597_)
                                       (foldl1 cons _refs7721_ _post7598_))))
                                  _hd76747696_
                                  _hd76717688_)
                                 (_g76557680_ _g76567683_))))
                         (_g76557680_ _g76567683_))))
                 (_g76557680_ _g76567683_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g76537807_
                                                   (lambda (_g76567763_)
                                                     (if (gx#stx-pair?
                                                          _g76567763_)
                                                         (let ((_e76597765_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g76567763_)))
                   (let ((_hd76607768_ (##car _e76597765_))
                         (_tl76617770_ (##cdr _e76597765_)))
                     (if (gx#stx-pair? _hd76607768_)
                         (let ((_e76627773_ (gx#stx-e _hd76607768_)))
                           (let ((_hd76637776_ (##car _e76627773_))
                                 (_tl76647778_ (##cdr _e76627773_)))
                             (if (gx#stx-null? _tl76647778_)
                                 (if (gx#stx-pair? _tl76617770_)
                                     (let ((_e76657781_
                                            (gx#stx-e _tl76617770_)))
                                       (let ((_hd76667784_ (##car _e76657781_))
                                             (_tl76677786_
                                              (##cdr _e76657781_)))
                                         (if (gx#stx-null? _tl76677786_)
                                             ((lambda (_L7789_ _L7790_)
                                                (let ((_eid7804_
                                                       (gxc#generate-runtime-binding-id*
                                                        _L7790_))
                                                      (_expr7805_
                                                       (gxc#compile-e
                                                        _L7789_)))
                                                  (_lp7593_
                                                   _L7639_
                                                   (cons (cons _eid7804_
                                                               (cons _expr7805_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 _bind7596_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _check7597_
                                                   _post7598_)))
                                              _hd76667784_
                                              _hd76637776_)
                                             (_g76547760_ _g76567763_))))
                                     (_g76547760_ _g76567763_))
                                 (_g76547760_ _g76567763_))))
                         (_g76547760_ _g76567763_))))
                 (_g76547760_ _g76567763_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g76537807_ _L7640_)))
                                         _tl76077636_
                                         _hd76067634_)))
                                    (_g76007626_ _g76027629_)))))
                        (_g75997810_ _rest7595_)))))
                 (_generate-values-check7511_
                  (lambda (_check7587_ _body7588_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body7588_ '())
                                  (reverse _check7587_)))))
                 (_generate-values-post7512_
                  (lambda (_post7580_ _body7581_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body7581_ '())
                                  (map (lambda (_g75827584_)
                                         (cons 'set! _g75827584_))
                                       (reverse _post7580_)))))))
          (let* ((_g75147531_
                  (lambda (_g75157528_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g75157528_)))
                 (_g75137577_
                  (lambda (_g75157534_)
                    (if (gx#stx-pair? _g75157534_)
                        (let ((_e75187536_ (gx#stx-e _g75157534_)))
                          (let ((_hd75197539_ (##car _e75187536_))
                                (_tl75207541_ (##cdr _e75187536_)))
                            (if (gx#stx-pair? _tl75207541_)
                                (let ((_e75217544_ (gx#stx-e _tl75207541_)))
                                  (let ((_hd75227547_ (##car _e75217544_))
                                        (_tl75237549_ (##cdr _e75217544_)))
                                    (if (gx#stx-pair? _tl75237549_)
                                        (let ((_e75247552_
                                               (gx#stx-e _tl75237549_)))
                                          (let ((_hd75257555_
                                                 (##car _e75247552_))
                                                (_tl75267557_
                                                 (##cdr _e75247552_)))
                                            (if (gx#stx-null? _tl75267557_)
                                                ((lambda (_L7560_ _L7561_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _L7561_)
                                                       (_generate-simple7509_
                                                        _L7561_
                                                        _L7560_)
                                                       (_generate-values7510_
                                                        _L7561_
                                                        _L7560_)))
                                                 _hd75257555_
                                                 _hd75227547_)
                                                (_g75147531_ _g75157534_))))
                                        (_g75147531_ _g75157534_))))
                                (_g75147531_ _g75157534_))))
                        (_g75147531_ _g75157534_)))))
            (_g75137577_ _stx7506_)))))
    (begin
      (define gxc#generate-runtime-letrec-values%__0
        (lambda (_stx7819_)
          (let ((_compiled-body?7821_ '#f))
            (gxc#generate-runtime-letrec-values%__opt-lambda7504
             _stx7819_
             _compiled-body?7821_))))
      (define gxc#generate-runtime-letrec-values%
        (lambda _g12086_
          (let ((_g12085_ (length _g12086_)))
            (cond ((fx= _g12085_ 1)
                   (apply gxc#generate-runtime-letrec-values%__0 _g12086_))
                  ((fx= _g12085_ 2)
                   (apply gxc#generate-runtime-letrec-values%__opt-lambda7504
                          _g12086_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-letrec-values%
                    _g12086_))))))))
  (define gxc#generate-runtime-letrec*-values%
    (lambda (_stx7088_)
      (letrec ((_generate-values7090_
                (lambda (_hd7333_ _body7334_)
                  (let _lp7336_ ((_rest7338_ _hd7333_) (_bind7339_ '()))
                    (let* ((_rest73407348_ _rest7338_)
                           (_E73437352_
                            (lambda ()
                              (error '"No clause matching" _rest73407348_)))
                           (_else73427359_
                            (lambda ()
                              (let ((_bind7356_ (reverse _bind7339_))
                                    (_body7357_ (gxc#compile-e _body7334_)))
                                (cons 'letrec*
                                      (cons _bind7356_
                                            (cons _body7357_ '()))))))
                           (_K73447493_
                            (lambda (_rest7362_ _hd-bind7363_)
                              (let* ((_g73667391_
                                      (lambda (_g73677388_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g73677388_)))
                                     (_g73657443_
                                      (lambda (_g73677394_)
                                        (if (gx#stx-pair? _g73677394_)
                                            (let ((_e73817396_
                                                   (gx#stx-e _g73677394_)))
                                              (let ((_hd73827399_
                                                     (##car _e73817396_))
                                                    (_tl73837401_
                                                     (##cdr _e73817396_)))
                                                (if (gx#stx-pair? _tl73837401_)
                                                    (let ((_e73847404_
                                                           (gx#stx-e
                                                            _tl73837401_)))
                                                      (let ((_hd73857407_
                                                             (##car _e73847404_))
                                                            (_tl73867409_
                                                             (##cdr _e73847404_)))
                                                        (if (gx#stx-null?
                                                             _tl73867409_)
                                                            ((lambda (_L7412_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L7413_)
                       (let* ((_vals7432_ (gxc#generate-runtime-temporary__0))
                              (_tmp7434_ (gxc#generate-runtime-temporary__0))
                              (_expr7436_ (gxc#compile-e _L7412_))
                              (_check-values7438_
                               (gxc#generate-runtime-check-values
                                _tmp7434_
                                _L7413_))
                              (_refs7440_
                               (gxc#generate-runtime-let-values-bind
                                _vals7432_
                                _L7413_)))
                         (_lp7336_
                          _rest7362_
                          (foldl1 cons
                                  (cons (cons _vals7432_
                                              (cons (cons 'let
                                                          (cons (cons (cons _tmp7434_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _expr7436_ '()))
                              '())
                        (cons _check-values7438_ (cons _tmp7434_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        _bind7339_)
                                  _refs7440_))))
                     _hd73857407_
                     _hd73827399_)
                    (_g73667391_ _g73677394_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g73667391_
                                                     _g73677394_))))
                                            (_g73667391_ _g73677394_))))
                                     (_g73647490_
                                      (lambda (_g73677446_)
                                        (if (gx#stx-pair? _g73677446_)
                                            (let ((_e73707448_
                                                   (gx#stx-e _g73677446_)))
                                              (let ((_hd73717451_
                                                     (##car _e73707448_))
                                                    (_tl73727453_
                                                     (##cdr _e73707448_)))
                                                (if (gx#stx-pair? _hd73717451_)
                                                    (let ((_e73737456_
                                                           (gx#stx-e
                                                            _hd73717451_)))
                                                      (let ((_hd73747459_
                                                             (##car _e73737456_))
                                                            (_tl73757461_
                                                             (##cdr _e73737456_)))
                                                        (if (gx#stx-null?
                                                             _tl73757461_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl73727453_)
                        (let ((_e73767464_ (gx#stx-e _tl73727453_)))
                          (let ((_hd73777467_ (##car _e73767464_))
                                (_tl73787469_ (##cdr _e73767464_)))
                            (if (gx#stx-null? _tl73787469_)
                                ((lambda (_L7472_ _L7473_)
                                   (let ((_eid7487_
                                          (gxc#generate-runtime-binding-id*
                                           _L7473_))
                                         (_expr7488_ (gxc#compile-e _L7472_)))
                                     (_lp7336_
                                      _rest7362_
                                      (cons (cons _eid7487_
                                                  (cons _expr7488_ '()))
                                            _bind7339_))))
                                 _hd73777467_
                                 _hd73747459_)
                                (_g73657443_ _g73677446_))))
                        (_g73657443_ _g73677446_))
                    (_g73657443_ _g73677446_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g73657443_
                                                     _g73677446_))))
                                            (_g73657443_ _g73677446_)))))
                                (_g73647490_ _hd-bind7363_)))))
                      (if (##pair? _rest73407348_)
                          (let ((_hd73457496_ (##car _rest73407348_))
                                (_tl73467498_ (##cdr _rest73407348_)))
                            (let* ((_hd-bind7501_ _hd73457496_)
                                   (_rest7503_ _tl73467498_))
                              (_K73447493_ _rest7503_ _hd-bind7501_)))
                          (_else73427359_))))))
               (_generate-letrec?7091_
                (lambda (_hd7223_)
                  (let _lp7225_ ((_rest7227_ _hd7223_))
                    (let* ((_rest72287236_ _rest7227_)
                           (_E72317240_
                            (lambda ()
                              (error '"No clause matching" _rest72287236_)))
                           (_else72307244_ (lambda () '#t))
                           (_K72327321_
                            (lambda (_rest7247_ _hd-bind7248_)
                              (let* ((_g72507267_
                                      (lambda (_g72517264_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g72517264_)))
                                     (_g72497318_
                                      (lambda (_g72517270_)
                                        (if (gx#stx-pair? _g72517270_)
                                            (let ((_e72547272_
                                                   (gx#stx-e _g72517270_)))
                                              (let ((_hd72557275_
                                                     (##car _e72547272_))
                                                    (_tl72567277_
                                                     (##cdr _e72547272_)))
                                                (if (gx#stx-pair? _hd72557275_)
                                                    (let ((_e72577280_
                                                           (gx#stx-e
                                                            _hd72557275_)))
                                                      (let ((_hd72587283_
                                                             (##car _e72577280_))
                                                            (_tl72597285_
                                                             (##cdr _e72577280_)))
                                                        (if (gx#stx-null?
                                                             _tl72597285_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl72567277_)
                        (let ((_e72607288_ (gx#stx-e _tl72567277_)))
                          (let ((_hd72617291_ (##car _e72607288_))
                                (_tl72627293_ (##cdr _e72607288_)))
                            (if (gx#stx-null? _tl72627293_)
                                ((lambda (_L7296_ _L7297_)
                                   (if (_is-lambda-expr?7092_ _L7296_)
                                       (_lp7225_ _rest7247_)
                                       '#f))
                                 _hd72617291_
                                 _hd72587283_)
                                (_g72507267_ _g72517270_))))
                        (_g72507267_ _g72517270_))
                    (_g72507267_ _g72517270_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g72507267_
                                                     _g72517270_))))
                                            (_g72507267_ _g72517270_)))))
                                (_g72497318_ _hd-bind7248_)))))
                      (if (##pair? _rest72287236_)
                          (let ((_hd72337324_ (##car _rest72287236_))
                                (_tl72347326_ (##cdr _rest72287236_)))
                            (let* ((_hd-bind7329_ _hd72337324_)
                                   (_rest7331_ _tl72347326_))
                              (_K72327321_ _rest7331_ _hd-bind7329_)))
                          (_else72307244_))))))
               (_is-lambda-expr?7092_
                (lambda (_expr7160_)
                  (let* ((_g71637177_
                          (lambda (_g71647174_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g71647174_)))
                         (_g71627184_ (lambda (_g71647180_) ((lambda () '#f))))
                         (_g71617220_
                          (lambda (_g71647187_)
                            (if (gx#stx-pair? _g71647187_)
                                (let ((_e71677189_ (gx#stx-e _g71647187_)))
                                  (let ((_hd71687192_ (##car _e71677189_))
                                        (_tl71697194_ (##cdr _e71677189_)))
                                    (if (gx#identifier? _hd71687192_)
                                        (if (gx#stx-eq? '%#lambda _hd71687192_)
                                            (if (gx#stx-pair? _tl71697194_)
                                                (let ((_e71707197_
                                                       (gx#stx-e
                                                        _tl71697194_)))
                                                  (let ((_hd71717200_
                                                         (##car _e71707197_))
                                                        (_tl71727202_
                                                         (##cdr _e71707197_)))
                                                    ((lambda (_L7205_ _L7206_)
                                                       '#t)
                                                     _tl71727202_
                                                     _hd71717200_)))
                                                (_g71627184_ _g71647187_))
                                            (_g71627184_ _g71647187_))
                                        (_g71627184_ _g71647187_))))
                                (_g71627184_ _g71647187_)))))
                    (_g71617220_ _expr7160_)))))
        (let* ((_g70947111_
                (lambda (_g70957108_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g70957108_)))
               (_g70937157_
                (lambda (_g70957114_)
                  (if (gx#stx-pair? _g70957114_)
                      (let ((_e70987116_ (gx#stx-e _g70957114_)))
                        (let ((_hd70997119_ (##car _e70987116_))
                              (_tl71007121_ (##cdr _e70987116_)))
                          (if (gx#stx-pair? _tl71007121_)
                              (let ((_e71017124_ (gx#stx-e _tl71007121_)))
                                (let ((_hd71027127_ (##car _e71017124_))
                                      (_tl71037129_ (##cdr _e71017124_)))
                                  (if (gx#stx-pair? _tl71037129_)
                                      (let ((_e71047132_
                                             (gx#stx-e _tl71037129_)))
                                        (let ((_hd71057135_
                                               (##car _e71047132_))
                                              (_tl71067137_
                                               (##cdr _e71047132_)))
                                          (if (gx#stx-null? _tl71067137_)
                                              ((lambda (_L7140_ _L7141_)
                                                 (if (gxc#generate-runtime-simple-let?
                                                      _L7141_)
                                                     (if (_generate-letrec?7091_
                                                          _L7141_)
                                                         (gxc#generate-runtime-simple-let
                                                          'letrec
                                                          _L7141_
                                                          _L7140_
                                                          '#f)
                                                         (gxc#generate-runtime-simple-let
                                                          'letrec*
                                                          _L7141_
                                                          _L7140_
                                                          '#f))
                                                     (_generate-values7090_
                                                      _L7141_
                                                      _L7140_)))
                                               _hd71057135_
                                               _hd71027127_)
                                              (_g70947111_ _g70957114_))))
                                      (_g70947111_ _g70957114_))))
                              (_g70947111_ _g70957114_))))
                      (_g70947111_ _g70957114_)))))
          (_g70937157_ _stx7088_)))))
  (define gxc#generate-runtime-simple-let?
    (lambda (_hd6981_)
      (let _lp6983_ ((_rest6985_ _hd6981_))
        (let* ((_g69897010_
                (lambda (_g69907007_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g69907007_)))
               (_g69887017_ (lambda (_g69907013_) ((lambda () '#f))))
               (_g69877024_
                (lambda (_g69907020_)
                  (if (gx#stx-null? _g69907020_)
                      ((lambda () '#t))
                      (_g69887017_ _g69907020_))))
               (_g69867085_
                (lambda (_g69907027_)
                  (if (gx#stx-pair? _g69907027_)
                      (let ((_e69947029_ (gx#stx-e _g69907027_)))
                        (let ((_hd69957032_ (##car _e69947029_))
                              (_tl69967034_ (##cdr _e69947029_)))
                          (if (gx#stx-pair? _hd69957032_)
                              (let ((_e69977037_ (gx#stx-e _hd69957032_)))
                                (let ((_hd69987040_ (##car _e69977037_))
                                      (_tl69997042_ (##cdr _e69977037_)))
                                  (if (gx#stx-pair? _hd69987040_)
                                      (let ((_e70007045_
                                             (gx#stx-e _hd69987040_)))
                                        (let ((_hd70017048_
                                               (##car _e70007045_))
                                              (_tl70027050_
                                               (##cdr _e70007045_)))
                                          (if (gx#stx-null? _tl70027050_)
                                              (if (gx#stx-pair? _tl69997042_)
                                                  (let ((_e70037053_
                                                         (gx#stx-e
                                                          _tl69997042_)))
                                                    (let ((_hd70047056_
                                                           (##car _e70037053_))
                                                          (_tl70057058_
                                                           (##cdr _e70037053_)))
                                                      (if (gx#stx-null?
                                                           _tl70057058_)
                                                          ((lambda (_L7061_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L7062_
                            _L7063_)
                     (_lp6983_ _L7061_))
                   _tl69967034_
                   _hd70047056_
                   _hd70017048_)
                  (_g69877024_ _g69907027_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g69877024_ _g69907027_))
                                              (_g69877024_ _g69907027_))))
                                      (_g69877024_ _g69907027_))))
                              (_g69877024_ _g69907027_))))
                      (_g69877024_ _g69907027_)))))
          (_g69867085_ _rest6985_)))))
  (define gxc#generate-runtime-simple-let
    (lambda (_form6905_ _hd6906_ _body6907_ _compiled-body?6908_)
      (letrec ((_generate16910_
                (lambda (_bind6912_)
                  (let* ((_g69146931_
                          (lambda (_g69156928_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g69156928_)))
                         (_g69136978_
                          (lambda (_g69156934_)
                            (if (gx#stx-pair? _g69156934_)
                                (let ((_e69186936_ (gx#stx-e _g69156934_)))
                                  (let ((_hd69196939_ (##car _e69186936_))
                                        (_tl69206941_ (##cdr _e69186936_)))
                                    (if (gx#stx-pair? _hd69196939_)
                                        (let ((_e69216944_
                                               (gx#stx-e _hd69196939_)))
                                          (let ((_hd69226947_
                                                 (##car _e69216944_))
                                                (_tl69236949_
                                                 (##cdr _e69216944_)))
                                            (if (gx#stx-null? _tl69236949_)
                                                (if (gx#stx-pair? _tl69206941_)
                                                    (let ((_e69246952_
                                                           (gx#stx-e
                                                            _tl69206941_)))
                                                      (let ((_hd69256955_
                                                             (##car _e69246952_))
                                                            (_tl69266957_
                                                             (##cdr _e69246952_)))
                                                        (if (gx#stx-null?
                                                             _tl69266957_)
                                                            ((lambda (_L6960_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L6961_)
                       (cons (gxc#generate-runtime-binding-id* _L6961_)
                             (cons (gxc#compile-e _L6960_) '())))
                     _hd69256955_
                     _hd69226947_)
                    (_g69146931_ _g69156934_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g69146931_ _g69156934_))
                                                (_g69146931_ _g69156934_))))
                                        (_g69146931_ _g69156934_))))
                                (_g69146931_ _g69156934_)))))
                    (_g69136978_ _bind6912_)))))
        (cons _form6905_
              (cons (map _generate16910_ _hd6906_)
                    (cons (if _compiled-body?6908_
                              _body6907_
                              (gxc#compile-e _body6907_))
                          '()))))))
  (define gxc#generate-runtime-quote%
    (lambda (_stx6813_)
      (letrec ((_generate16815_
                (lambda (_datum6867_)
                  (if (let ((_$e6869_ (null? _datum6867_)))
                        (if _$e6869_
                            _$e6869_
                            (let ((_$e6872_ (interned-symbol? _datum6867_)))
                              (if _$e6872_
                                  _$e6872_
                                  (let ((_$e6875_
                                         (gx#self-quoting? _datum6867_)))
                                    (if _$e6875_
                                        _$e6875_
                                        (eof-object? _datum6867_)))))))
                      _datum6867_
                      (if (uninterned-symbol? _datum6867_)
                          (gxc#generate-runtime-gensym-reference__opt-lambda10934
                           _datum6867_
                           '#t)
                          (if (pair? _datum6867_)
                              (cons (_generate16815_ (car _datum6867_))
                                    (_generate16815_ (cdr _datum6867_)))
                              (if (box? _datum6867_)
                                  (box (_generate16815_ (unbox _datum6867_)))
                                  (if (vector? _datum6867_)
                                      (vector-map _generate16815_ _datum6867_)
                                      (if (let ((_$e6878_
                                                 (s8vector? _datum6867_)))
                                            (if _$e6878_
                                                _$e6878_
                                                (let ((_$e6881_
                                                       (u8vector?
                                                        _datum6867_)))
                                                  (if _$e6881_
                                                      _$e6881_
                                                      (let ((_$e6884_
                                                             (s16vector?
                                                              _datum6867_)))
                                                        (if _$e6884_
                                                            _$e6884_
                                                            (let ((_$e6887_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (u16vector? _datum6867_)))
                      (if _$e6887_
                          _$e6887_
                          (let ((_$e6890_ (s32vector? _datum6867_)))
                            (if _$e6890_
                                _$e6890_
                                (let ((_$e6893_ (u32vector? _datum6867_)))
                                  (if _$e6893_
                                      _$e6893_
                                      (let ((_$e6896_
                                             (s64vector? _datum6867_)))
                                        (if _$e6896_
                                            _$e6896_
                                            (let ((_$e6899_
                                                   (u64vector? _datum6867_)))
                                              (if _$e6899_
                                                  _$e6899_
                                                  (let ((_$e6902_
                                                         (f32vector?
                                                          _datum6867_)))
                                                    (if _$e6902_
                                                        _$e6902_
                                                        (f64vector?
                                                         _datum6867_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _datum6867_
                                          (gxc#raise-compile-error
                                           '"Cannot compile non-primitive quote"
                                           _stx6813_))))))))))
        (let* ((_g68176830_
                (lambda (_g68186827_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g68186827_)))
               (_g68166864_
                (lambda (_g68186833_)
                  (if (gx#stx-pair? _g68186833_)
                      (let ((_e68206835_ (gx#stx-e _g68186833_)))
                        (let ((_hd68216838_ (##car _e68206835_))
                              (_tl68226840_ (##cdr _e68206835_)))
                          (if (gx#stx-pair? _tl68226840_)
                              (let ((_e68236843_ (gx#stx-e _tl68226840_)))
                                (let ((_hd68246846_ (##car _e68236843_))
                                      (_tl68256848_ (##cdr _e68236843_)))
                                  (if (gx#stx-null? _tl68256848_)
                                      ((lambda (_L6851_)
                                         (cons 'quote
                                               (cons (_generate16815_
                                                      (gx#stx-e _L6851_))
                                                     '())))
                                       _hd68246846_)
                                      (_g68176830_ _g68186833_))))
                              (_g68176830_ _g68186833_))))
                      (_g68176830_ _g68186833_)))))
          (_g68166864_ _stx6813_)))))
  (define gxc#generate-runtime-call%
    (lambda (_stx6506_)
      (let* ((_g65086522_
              (lambda (_g65096519_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g65096519_)))
             (_g65076810_
              (lambda (_g65096525_)
                (if (gx#stx-pair? _g65096525_)
                    (let ((_e65126527_ (gx#stx-e _g65096525_)))
                      (let ((_hd65136530_ (##car _e65126527_))
                            (_tl65146532_ (##cdr _e65126527_)))
                        (if (gx#stx-pair? _tl65146532_)
                            (let ((_e65156535_ (gx#stx-e _tl65146532_)))
                              (let ((_hd65166538_ (##car _e65156535_))
                                    (_tl65176540_ (##cdr _e65156535_)))
                                ((lambda (_L6543_ _L6544_)
                                   (let ((_rator6557_ (gxc#compile-e _L6544_))
                                         (_rands6558_
                                          (map gxc#compile-e _L6543_)))
                                     (let* ((_g65616613_
                                             (lambda (_g65626610_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g65626610_)))
                                            (_g65606620_
                                             (lambda (_g65626616_)
                                               ((lambda ()
                                                  (cons _rator6557_
                                                        _rands6558_)))))
                                            (_g65596807_
                                             (lambda (_g65626623_)
                                               (if (gx#stx-pair? _g65626623_)
                                                   (let ((_e65676625_
                                                          (gx#stx-e
                                                           _g65626623_)))
                                                     (let ((_hd65686628_
                                                            (##car _e65676625_))
                                                           (_tl65696630_
                                                            (##cdr _e65676625_)))
                                                       (if (gx#identifier?
                                                            _hd65686628_)
                                                           (if (gx#stx-eq?
                                                                'letrec
                                                                _hd65686628_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl65696630_)
                           (let ((_e65706633_ (gx#stx-e _tl65696630_)))
                             (let ((_hd65716636_ (##car _e65706633_))
                                   (_tl65726638_ (##cdr _e65706633_)))
                               (if (gx#stx-pair? _hd65716636_)
                                   (let ((_e65736641_ (gx#stx-e _hd65716636_)))
                                     (let ((_hd65746644_ (##car _e65736641_))
                                           (_tl65756646_ (##cdr _e65736641_)))
                                       (if (gx#stx-pair? _hd65746644_)
                                           (let ((_e65766649_
                                                  (gx#stx-e _hd65746644_)))
                                             (let ((_hd65776652_
                                                    (##car _e65766649_))
                                                   (_tl65786654_
                                                    (##cdr _e65766649_)))
                                               (if (gx#stx-pair? _tl65786654_)
                                                   (let ((_e65796657_
                                                          (gx#stx-e
                                                           _tl65786654_)))
                                                     (let ((_hd65806660_
                                                            (##car _e65796657_))
                                                           (_tl65816662_
                                                            (##cdr _e65796657_)))
                                                       (if (gx#stx-pair?
                                                            _hd65806660_)
                                                           (let ((_e65826665_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd65806660_)))
                     (let ((_hd65836668_ (##car _e65826665_))
                           (_tl65846670_ (##cdr _e65826665_)))
                       (if (gx#identifier? _hd65836668_)
                           (if (gx#stx-eq? 'lambda _hd65836668_)
                               (if (gx#stx-pair? _tl65846670_)
                                   (let ((_e65856673_ (gx#stx-e _tl65846670_)))
                                     (let ((_hd65866676_ (##car _e65856673_))
                                           (_tl65876678_ (##cdr _e65856673_)))
                                       (if (gx#stx-pair/null? _hd65866676_)
                                           (if (fx>= (gx#stx-length
                                                      _hd65866676_)
                                                     '0)
                                               (let ((_g12087_
                                                      (gx#syntax-split-splice
                                                       _hd65866676_
                                                       '0)))
                                                 (begin
                                                   (let ((_g12088_
                                                          (values-count
                                                           _g12087_)))
                                                     (if (not (fx= _g12088_ 2))
                                                         (error "Context expects 2 values"
                                                                _g12088_)))
                                                   (let ((_target65886681_
                                                          (values-ref
                                                           _g12087_
                                                           0))
                                                         (_tl65906683_
                                                          (values-ref
                                                           _g12087_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl65906683_)
                                                         (letrec ((_loop65916686_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd65896689_ _arg65956691_)
                             (if (gx#stx-pair? _hd65896689_)
                                 (let ((_e65926694_ (gx#stx-e _hd65896689_)))
                                   (let ((_lp-hd65936697_ (##car _e65926694_))
                                         (_lp-tl65946699_ (##cdr _e65926694_)))
                                     (_loop65916686_
                                      _lp-tl65946699_
                                      (cons _lp-hd65936697_ _arg65956691_))))
                                 (let ((_arg65966702_ (reverse _arg65956691_)))
                                   (if (gx#stx-pair/null? _tl65876678_)
                                       (if (fx>= (gx#stx-length _tl65876678_)
                                                 '0)
                                           (let ((_g12089_
                                                  (gx#syntax-split-splice
                                                   _tl65876678_
                                                   '0)))
                                             (begin
                                               (let ((_g12090_
                                                      (values-count _g12089_)))
                                                 (if (not (fx= _g12090_ 2))
                                                     (error "Context expects 2 values"
                                                            _g12090_)))
                                               (let ((_target65976705_
                                                      (values-ref _g12089_ 0))
                                                     (_tl65996707_
                                                      (values-ref _g12089_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl65996707_)
                                                     (letrec ((_loop66006710_
                                                               (lambda (_hd65986713_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _body66046715_)
                         (if (gx#stx-pair? _hd65986713_)
                             (let ((_e66016718_ (gx#stx-e _hd65986713_)))
                               (let ((_lp-hd66026721_ (##car _e66016718_))
                                     (_lp-tl66036723_ (##cdr _e66016718_)))
                                 (_loop66006710_
                                  _lp-tl66036723_
                                  (cons _lp-hd66026721_ _body66046715_))))
                             (let ((_body66056726_ (reverse _body66046715_)))
                               (if (gx#stx-null? _tl65816662_)
                                   (if (gx#stx-null? _tl65756646_)
                                       (if (gx#stx-pair? _tl65726638_)
                                           (let ((_e66066729_
                                                  (gx#stx-e _tl65726638_)))
                                             (let ((_hd66076732_
                                                    (##car _e66066729_))
                                                   (_tl66086734_
                                                    (##cdr _e66066729_)))
                                               (if (gx#stx-null? _tl66086734_)
                                                   ((lambda (_L6737_
                                                             _L6738_
                                                             _L6739_
                                                             _L6740_)
                                                      (if (eq? _L6740_ _L6737_)
                                                          (if (fx= (length _rands6558_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (length (begin
                                     '#!void
                                     (foldr1 (lambda (_g67766779_ _g67776781_)
                                               (cons _g67766779_ _g67776781_))
                                             '()
                                             _L6739_))))
                      (let* ((_id6784_ _L6740_)
                             (_args6793_
                              (begin
                                '#!void
                                (foldr1 (lambda (_g67856788_ _g67866790_)
                                          (cons _g67856788_ _g67866790_))
                                        '()
                                        _L6739_)))
                             (_body6802_
                              (begin
                                '#!void
                                (foldr1 (lambda (_g67946797_ _g67956799_)
                                          (cons _g67946797_ _g67956799_))
                                        '()
                                        _L6738_)))
                             (_init6804_ (map list _args6793_ _rands6558_)))
                        (cons 'let
                              (cons _id6784_ (cons _init6804_ _body6802_))))
                      (gxc#raise-compile-error
                       '"Illegal loop application; arity mismatch"
                       _stx6506_))
                  (_g65606620_ _g65626623_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd66076732_
                                                    _body66056726_
                                                    _arg65966702_
                                                    _hd65776652_)
                                                   (_g65606620_ _g65626623_))))
                                           (_g65606620_ _g65626623_))
                                       (_g65606620_ _g65626623_))
                                   (_g65606620_ _g65626623_)))))))
               (_loop66006710_ _target65976705_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g65606620_
                                                      _g65626623_)))))
                                           (_g65606620_ _g65626623_))
                                       (_g65606620_ _g65626623_)))))))
                   (_loop65916686_ _target65886681_ '()))
                 (_g65606620_ _g65626623_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g65606620_ _g65626623_))
                                           (_g65606620_ _g65626623_))))
                                   (_g65606620_ _g65626623_))
                               (_g65606620_ _g65626623_))
                           (_g65606620_ _g65626623_))))
                   (_g65606620_ _g65626623_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g65606620_ _g65626623_))))
                                           (_g65606620_ _g65626623_))))
                                   (_g65606620_ _g65626623_))))
                           (_g65606620_ _g65626623_))
                       (_g65606620_ _g65626623_))
                   (_g65606620_ _g65626623_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g65606620_
                                                    _g65626623_)))))
                                       (_g65596807_ _rator6557_))))
                                 _tl65176540_
                                 _hd65166538_)))
                            (_g65086522_ _g65096525_))))
                    (_g65086522_ _g65096525_)))))
        (_g65076810_ _stx6506_))))
  (define gxc#generate-runtime-if%
    (lambda (_stx6468_)
      (let* ((_g64706480_
              (lambda (_g64716477_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g64716477_)))
             (_g64696503_
              (lambda (_g64716483_)
                (if (gx#stx-pair? _g64716483_)
                    (let ((_e64736485_ (gx#stx-e _g64716483_)))
                      (let ((_hd64746488_ (##car _e64736485_))
                            (_tl64756490_ (##cdr _e64736485_)))
                        ((lambda (_L6493_)
                           (cons 'if (map gxc#compile-e _L6493_)))
                         _tl64756490_)))
                    (_g64706480_ _g64716483_)))))
        (_g64696503_ _stx6468_))))
  (define gxc#generate-runtime-ref%
    (lambda (_stx6417_)
      (let* ((_g64196432_
              (lambda (_g64206429_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g64206429_)))
             (_g64186465_
              (lambda (_g64206435_)
                (if (gx#stx-pair? _g64206435_)
                    (let ((_e64226437_ (gx#stx-e _g64206435_)))
                      (let ((_hd64236440_ (##car _e64226437_))
                            (_tl64246442_ (##cdr _e64226437_)))
                        (if (gx#stx-pair? _tl64246442_)
                            (let ((_e64256445_ (gx#stx-e _tl64246442_)))
                              (let ((_hd64266448_ (##car _e64256445_))
                                    (_tl64276450_ (##cdr _e64256445_)))
                                (if (gx#stx-null? _tl64276450_)
                                    ((lambda (_L6453_)
                                       (gxc#generate-runtime-binding-id
                                        _L6453_))
                                     _hd64266448_)
                                    (_g64196432_ _g64206435_))))
                            (_g64196432_ _g64206435_))))
                    (_g64196432_ _g64206435_)))))
        (_g64186465_ _stx6417_))))
  (define gxc#generate-runtime-setq%
    (lambda (_stx6350_)
      (let* ((_g63526369_
              (lambda (_g63536366_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g63536366_)))
             (_g63516414_
              (lambda (_g63536372_)
                (if (gx#stx-pair? _g63536372_)
                    (let ((_e63566374_ (gx#stx-e _g63536372_)))
                      (let ((_hd63576377_ (##car _e63566374_))
                            (_tl63586379_ (##cdr _e63566374_)))
                        (if (gx#stx-pair? _tl63586379_)
                            (let ((_e63596382_ (gx#stx-e _tl63586379_)))
                              (let ((_hd63606385_ (##car _e63596382_))
                                    (_tl63616387_ (##cdr _e63596382_)))
                                (if (gx#stx-pair? _tl63616387_)
                                    (let ((_e63626390_
                                           (gx#stx-e _tl63616387_)))
                                      (let ((_hd63636393_ (##car _e63626390_))
                                            (_tl63646395_ (##cdr _e63626390_)))
                                        (if (gx#stx-null? _tl63646395_)
                                            ((lambda (_L6398_ _L6399_)
                                               (cons 'set!
                                                     (cons (gxc#generate-runtime-binding-id
                                                            _L6399_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L6398_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd63636393_
                                             _hd63606385_)
                                            (_g63526369_ _g63536372_))))
                                    (_g63526369_ _g63536372_))))
                            (_g63526369_ _g63536372_))))
                    (_g63526369_ _g63536372_)))))
        (_g63516414_ _stx6350_))))
  (define gxc#generate-runtime-struct-instancep%
    (lambda (_stx6283_)
      (let* ((_g62856302_
              (lambda (_g62866299_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g62866299_)))
             (_g62846347_
              (lambda (_g62866305_)
                (if (gx#stx-pair? _g62866305_)
                    (let ((_e62896307_ (gx#stx-e _g62866305_)))
                      (let ((_hd62906310_ (##car _e62896307_))
                            (_tl62916312_ (##cdr _e62896307_)))
                        (if (gx#stx-pair? _tl62916312_)
                            (let ((_e62926315_ (gx#stx-e _tl62916312_)))
                              (let ((_hd62936318_ (##car _e62926315_))
                                    (_tl62946320_ (##cdr _e62926315_)))
                                (if (gx#stx-pair? _tl62946320_)
                                    (let ((_e62956323_
                                           (gx#stx-e _tl62946320_)))
                                      (let ((_hd62966326_ (##car _e62956323_))
                                            (_tl62976328_ (##cdr _e62956323_)))
                                        (if (gx#stx-null? _tl62976328_)
                                            ((lambda (_L6331_ _L6332_)
                                               (cons '##structure-instance-of?
                                                     (cons (gxc#compile-e
                                                            _L6331_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L6332_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd62966326_
                                             _hd62936318_)
                                            (_g62856302_ _g62866305_))))
                                    (_g62856302_ _g62866305_))))
                            (_g62856302_ _g62866305_))))
                    (_g62856302_ _g62866305_)))))
        (_g62846347_ _stx6283_))))
  (define gxc#generate-runtime-struct-direct-instancep%
    (lambda (_stx6216_)
      (let* ((_g62186235_
              (lambda (_g62196232_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g62196232_)))
             (_g62176280_
              (lambda (_g62196238_)
                (if (gx#stx-pair? _g62196238_)
                    (let ((_e62226240_ (gx#stx-e _g62196238_)))
                      (let ((_hd62236243_ (##car _e62226240_))
                            (_tl62246245_ (##cdr _e62226240_)))
                        (if (gx#stx-pair? _tl62246245_)
                            (let ((_e62256248_ (gx#stx-e _tl62246245_)))
                              (let ((_hd62266251_ (##car _e62256248_))
                                    (_tl62276253_ (##cdr _e62256248_)))
                                (if (gx#stx-pair? _tl62276253_)
                                    (let ((_e62286256_
                                           (gx#stx-e _tl62276253_)))
                                      (let ((_hd62296259_ (##car _e62286256_))
                                            (_tl62306261_ (##cdr _e62286256_)))
                                        (if (gx#stx-null? _tl62306261_)
                                            ((lambda (_L6264_ _L6265_)
                                               (cons '##structure-direct-instance-of?
                                                     (cons (gxc#compile-e
                                                            _L6264_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L6265_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd62296259_
                                             _hd62266251_)
                                            (_g62186235_ _g62196238_))))
                                    (_g62186235_ _g62196238_))))
                            (_g62186235_ _g62196238_))))
                    (_g62186235_ _g62196238_)))))
        (_g62176280_ _stx6216_))))
  (define gxc#generate-runtime-struct-ref%
    (lambda (_stx6133_)
      (let* ((_g61356156_
              (lambda (_g61366153_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g61366153_)))
             (_g61346213_
              (lambda (_g61366159_)
                (if (gx#stx-pair? _g61366159_)
                    (let ((_e61406161_ (gx#stx-e _g61366159_)))
                      (let ((_hd61416164_ (##car _e61406161_))
                            (_tl61426166_ (##cdr _e61406161_)))
                        (if (gx#stx-pair? _tl61426166_)
                            (let ((_e61436169_ (gx#stx-e _tl61426166_)))
                              (let ((_hd61446172_ (##car _e61436169_))
                                    (_tl61456174_ (##cdr _e61436169_)))
                                (if (gx#stx-pair? _tl61456174_)
                                    (let ((_e61466177_
                                           (gx#stx-e _tl61456174_)))
                                      (let ((_hd61476180_ (##car _e61466177_))
                                            (_tl61486182_ (##cdr _e61466177_)))
                                        (if (gx#stx-pair? _tl61486182_)
                                            (let ((_e61496185_
                                                   (gx#stx-e _tl61486182_)))
                                              (let ((_hd61506188_
                                                     (##car _e61496185_))
                                                    (_tl61516190_
                                                     (##cdr _e61496185_)))
                                                (if (gx#stx-null? _tl61516190_)
                                                    ((lambda (_L6193_
                                                              _L6194_
                                                              _L6195_)
                                                       (cons '##structure-ref
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L6193_)
                           (cons (gxc#compile-e _L6194_)
                                 (cons (gxc#compile-e _L6195_)
                                       (cons ''#f '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd61506188_
                                                     _hd61476180_
                                                     _hd61446172_)
                                                    (_g61356156_
                                                     _g61366159_))))
                                            (_g61356156_ _g61366159_))))
                                    (_g61356156_ _g61366159_))))
                            (_g61356156_ _g61366159_))))
                    (_g61356156_ _g61366159_)))))
        (_g61346213_ _stx6133_))))
  (define gxc#generate-runtime-struct-setq%
    (lambda (_stx6034_)
      (let* ((_g60366061_
              (lambda (_g60376058_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g60376058_)))
             (_g60356130_
              (lambda (_g60376064_)
                (if (gx#stx-pair? _g60376064_)
                    (let ((_e60426066_ (gx#stx-e _g60376064_)))
                      (let ((_hd60436069_ (##car _e60426066_))
                            (_tl60446071_ (##cdr _e60426066_)))
                        (if (gx#stx-pair? _tl60446071_)
                            (let ((_e60456074_ (gx#stx-e _tl60446071_)))
                              (let ((_hd60466077_ (##car _e60456074_))
                                    (_tl60476079_ (##cdr _e60456074_)))
                                (if (gx#stx-pair? _tl60476079_)
                                    (let ((_e60486082_
                                           (gx#stx-e _tl60476079_)))
                                      (let ((_hd60496085_ (##car _e60486082_))
                                            (_tl60506087_ (##cdr _e60486082_)))
                                        (if (gx#stx-pair? _tl60506087_)
                                            (let ((_e60516090_
                                                   (gx#stx-e _tl60506087_)))
                                              (let ((_hd60526093_
                                                     (##car _e60516090_))
                                                    (_tl60536095_
                                                     (##cdr _e60516090_)))
                                                (if (gx#stx-pair? _tl60536095_)
                                                    (let ((_e60546098_
                                                           (gx#stx-e
                                                            _tl60536095_)))
                                                      (let ((_hd60556101_
                                                             (##car _e60546098_))
                                                            (_tl60566103_
                                                             (##cdr _e60546098_)))
                                                        (if (gx#stx-null?
                                                             _tl60566103_)
                                                            ((lambda (_L6106_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L6107_
                              _L6108_
                              _L6109_)
                       (cons '##structure-set!
                             (cons (gxc#compile-e _L6107_)
                                   (cons (gxc#compile-e _L6106_)
                                         (cons (gxc#compile-e _L6108_)
                                               (cons (gxc#compile-e _L6109_)
                                                     (cons ''#f '())))))))
                     _hd60556101_
                     _hd60526093_
                     _hd60496085_
                     _hd60466077_)
                    (_g60366061_ _g60376064_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g60366061_
                                                     _g60376064_))))
                                            (_g60366061_ _g60376064_))))
                                    (_g60366061_ _g60376064_))))
                            (_g60366061_ _g60376064_))))
                    (_g60366061_ _g60376064_)))))
        (_g60356130_ _stx6034_))))
  (define gxc#generate-runtime-struct-direct-ref%
    (lambda (_stx5951_)
      (let* ((_g59535974_
              (lambda (_g59545971_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g59545971_)))
             (_g59526031_
              (lambda (_g59545977_)
                (if (gx#stx-pair? _g59545977_)
                    (let ((_e59585979_ (gx#stx-e _g59545977_)))
                      (let ((_hd59595982_ (##car _e59585979_))
                            (_tl59605984_ (##cdr _e59585979_)))
                        (if (gx#stx-pair? _tl59605984_)
                            (let ((_e59615987_ (gx#stx-e _tl59605984_)))
                              (let ((_hd59625990_ (##car _e59615987_))
                                    (_tl59635992_ (##cdr _e59615987_)))
                                (if (gx#stx-pair? _tl59635992_)
                                    (let ((_e59645995_
                                           (gx#stx-e _tl59635992_)))
                                      (let ((_hd59655998_ (##car _e59645995_))
                                            (_tl59666000_ (##cdr _e59645995_)))
                                        (if (gx#stx-pair? _tl59666000_)
                                            (let ((_e59676003_
                                                   (gx#stx-e _tl59666000_)))
                                              (let ((_hd59686006_
                                                     (##car _e59676003_))
                                                    (_tl59696008_
                                                     (##cdr _e59676003_)))
                                                (if (gx#stx-null? _tl59696008_)
                                                    ((lambda (_L6011_
                                                              _L6012_
                                                              _L6013_)
                                                       (cons '##direct-structure-ref
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L6011_)
                           (cons (gxc#compile-e _L6012_)
                                 (cons (gxc#compile-e _L6013_)
                                       (cons ''#f '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd59686006_
                                                     _hd59655998_
                                                     _hd59625990_)
                                                    (_g59535974_
                                                     _g59545977_))))
                                            (_g59535974_ _g59545977_))))
                                    (_g59535974_ _g59545977_))))
                            (_g59535974_ _g59545977_))))
                    (_g59535974_ _g59545977_)))))
        (_g59526031_ _stx5951_))))
  (define gxc#generate-runtime-struct-direct-setq%
    (lambda (_stx5852_)
      (let* ((_g58545879_
              (lambda (_g58555876_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g58555876_)))
             (_g58535948_
              (lambda (_g58555882_)
                (if (gx#stx-pair? _g58555882_)
                    (let ((_e58605884_ (gx#stx-e _g58555882_)))
                      (let ((_hd58615887_ (##car _e58605884_))
                            (_tl58625889_ (##cdr _e58605884_)))
                        (if (gx#stx-pair? _tl58625889_)
                            (let ((_e58635892_ (gx#stx-e _tl58625889_)))
                              (let ((_hd58645895_ (##car _e58635892_))
                                    (_tl58655897_ (##cdr _e58635892_)))
                                (if (gx#stx-pair? _tl58655897_)
                                    (let ((_e58665900_
                                           (gx#stx-e _tl58655897_)))
                                      (let ((_hd58675903_ (##car _e58665900_))
                                            (_tl58685905_ (##cdr _e58665900_)))
                                        (if (gx#stx-pair? _tl58685905_)
                                            (let ((_e58695908_
                                                   (gx#stx-e _tl58685905_)))
                                              (let ((_hd58705911_
                                                     (##car _e58695908_))
                                                    (_tl58715913_
                                                     (##cdr _e58695908_)))
                                                (if (gx#stx-pair? _tl58715913_)
                                                    (let ((_e58725916_
                                                           (gx#stx-e
                                                            _tl58715913_)))
                                                      (let ((_hd58735919_
                                                             (##car _e58725916_))
                                                            (_tl58745921_
                                                             (##cdr _e58725916_)))
                                                        (if (gx#stx-null?
                                                             _tl58745921_)
                                                            ((lambda (_L5924_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L5925_
                              _L5926_
                              _L5927_)
                       (cons '##direct-structure-set!
                             (cons (gxc#compile-e _L5925_)
                                   (cons (gxc#compile-e _L5924_)
                                         (cons (gxc#compile-e _L5926_)
                                               (cons (gxc#compile-e _L5927_)
                                                     (cons ''#f '())))))))
                     _hd58735919_
                     _hd58705911_
                     _hd58675903_
                     _hd58645895_)
                    (_g58545879_ _g58555882_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g58545879_
                                                     _g58555882_))))
                                            (_g58545879_ _g58555882_))))
                                    (_g58545879_ _g58555882_))))
                            (_g58545879_ _g58555882_))))
                    (_g58545879_ _g58555882_)))))
        (_g58535948_ _stx5852_))))
  (define gxc#generate-runtime-struct-unchecked-ref%
    (lambda (_stx5769_)
      (let* ((_g57715792_
              (lambda (_g57725789_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g57725789_)))
             (_g57705849_
              (lambda (_g57725795_)
                (if (gx#stx-pair? _g57725795_)
                    (let ((_e57765797_ (gx#stx-e _g57725795_)))
                      (let ((_hd57775800_ (##car _e57765797_))
                            (_tl57785802_ (##cdr _e57765797_)))
                        (if (gx#stx-pair? _tl57785802_)
                            (let ((_e57795805_ (gx#stx-e _tl57785802_)))
                              (let ((_hd57805808_ (##car _e57795805_))
                                    (_tl57815810_ (##cdr _e57795805_)))
                                (if (gx#stx-pair? _tl57815810_)
                                    (let ((_e57825813_
                                           (gx#stx-e _tl57815810_)))
                                      (let ((_hd57835816_ (##car _e57825813_))
                                            (_tl57845818_ (##cdr _e57825813_)))
                                        (if (gx#stx-pair? _tl57845818_)
                                            (let ((_e57855821_
                                                   (gx#stx-e _tl57845818_)))
                                              (let ((_hd57865824_
                                                     (##car _e57855821_))
                                                    (_tl57875826_
                                                     (##cdr _e57855821_)))
                                                (if (gx#stx-null? _tl57875826_)
                                                    ((lambda (_L5829_
                                                              _L5830_
                                                              _L5831_)
                                                       (cons '##unchecked-structure-ref
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L5829_)
                           (cons (gxc#compile-e _L5830_)
                                 (cons (gxc#compile-e _L5831_)
                                       (cons ''#f '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd57865824_
                                                     _hd57835816_
                                                     _hd57805808_)
                                                    (_g57715792_
                                                     _g57725795_))))
                                            (_g57715792_ _g57725795_))))
                                    (_g57715792_ _g57725795_))))
                            (_g57715792_ _g57725795_))))
                    (_g57715792_ _g57725795_)))))
        (_g57705849_ _stx5769_))))
  (define gxc#generate-runtime-struct-unchecked-setq%
    (lambda (_stx5670_)
      (let* ((_g56725697_
              (lambda (_g56735694_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g56735694_)))
             (_g56715766_
              (lambda (_g56735700_)
                (if (gx#stx-pair? _g56735700_)
                    (let ((_e56785702_ (gx#stx-e _g56735700_)))
                      (let ((_hd56795705_ (##car _e56785702_))
                            (_tl56805707_ (##cdr _e56785702_)))
                        (if (gx#stx-pair? _tl56805707_)
                            (let ((_e56815710_ (gx#stx-e _tl56805707_)))
                              (let ((_hd56825713_ (##car _e56815710_))
                                    (_tl56835715_ (##cdr _e56815710_)))
                                (if (gx#stx-pair? _tl56835715_)
                                    (let ((_e56845718_
                                           (gx#stx-e _tl56835715_)))
                                      (let ((_hd56855721_ (##car _e56845718_))
                                            (_tl56865723_ (##cdr _e56845718_)))
                                        (if (gx#stx-pair? _tl56865723_)
                                            (let ((_e56875726_
                                                   (gx#stx-e _tl56865723_)))
                                              (let ((_hd56885729_
                                                     (##car _e56875726_))
                                                    (_tl56895731_
                                                     (##cdr _e56875726_)))
                                                (if (gx#stx-pair? _tl56895731_)
                                                    (let ((_e56905734_
                                                           (gx#stx-e
                                                            _tl56895731_)))
                                                      (let ((_hd56915737_
                                                             (##car _e56905734_))
                                                            (_tl56925739_
                                                             (##cdr _e56905734_)))
                                                        (if (gx#stx-null?
                                                             _tl56925739_)
                                                            ((lambda (_L5742_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L5743_
                              _L5744_
                              _L5745_)
                       (cons '##unchecked-structure-set!
                             (cons (gxc#compile-e _L5743_)
                                   (cons (gxc#compile-e _L5742_)
                                         (cons (gxc#compile-e _L5744_)
                                               (cons (gxc#compile-e _L5745_)
                                                     (cons ''#f '())))))))
                     _hd56915737_
                     _hd56885729_
                     _hd56855721_
                     _hd56825713_)
                    (_g56725697_ _g56735700_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g56725697_
                                                     _g56735700_))))
                                            (_g56725697_ _g56735700_))))
                                    (_g56725697_ _g56735700_))))
                            (_g56725697_ _g56735700_))))
                    (_g56725697_ _g56735700_)))))
        (_g56715766_ _stx5670_))))
  (define gxc#generate-runtime-loader-import%
    (lambda (_stx5579_)
      (let* ((_g55815591_
              (lambda (_g55825588_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g55825588_)))
             (_g55805667_
              (lambda (_g55825594_)
                (if (gx#stx-pair? _g55825594_)
                    (let ((_e55845596_ (gx#stx-e _g55825594_)))
                      (let ((_hd55855599_ (##car _e55845596_))
                            (_tl55865601_ (##cdr _e55845596_)))
                        ((lambda (_L5604_)
                           (let ((_ht5614_ (make-hash-table-eq)))
                             (let _lp5616_ ((_rest5618_ _L5604_)
                                            (_loads5619_ '()))
                               (letrec ((_K5621_ (lambda (_ctx5660_ _rest5661_)
                                                   (let ((_id5663_
                                                          (##structure-ref
                                                           _ctx5660_
                                                           '1
                                                           gx#expander-context::t
                                                           '#f)))
                                                     (if (table-ref
                                                          _ht5614_
                                                          _id5663_
                                                          '#f)
                                                         (_lp5616_
                                                          _rest5661_
                                                          _loads5619_)
                                                         (let ((_rt5665_
                                                                (string-append
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (symbol->string _id5663_)
                         '"__rt")))
                   (begin
                     (table-set! _ht5614_ _id5663_ _rt5665_)
                     (_lp5616_ _rest5661_ (cons _rt5665_ _loads5619_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (let* ((_rest56225630_ _rest5618_)
                                        (_E56255634_
                                         (lambda ()
                                           (error '"No clause matching"
                                                  _rest56225630_)))
                                        (_else56245642_
                                         (lambda ()
                                           (cons 'begin
                                                 (map (lambda (_g56375639_)
                                                        (list 'load-module
                                                              _g56375639_))
                                                      (reverse _loads5619_)))))
                                        (_K56265648_
                                         (lambda (_rest5645_ _in5646_)
                                           (if (##structure-instance-of?
                                                _in5646_
                                                'gx#module-context::t)
                                               (_K5621_ _in5646_ _rest5645_)
                                               (if (##structure-direct-instance-of?
                                                    _in5646_
                                                    'gx#module-import::t)
                                                   (if (fxpositive?
                                                        (##direct-structure-ref
                                                         _in5646_
                                                         '3
                                                         gx#module-import::t
                                                         '#f))
                                                       (_lp5616_
                                                        _rest5645_
                                                        _loads5619_)
                                                       (_K5621_ (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##direct-structure-ref
                          _in5646_
                          '1
                          gx#module-import::t
                          '#f)
                         '1
                         gx#module-export::t
                         '#f)
                        _rest5645_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (##structure-direct-instance-of?
                                                        _in5646_
                                                        'gx#import-set::t)
                                                       (if (fxpositive?
                                                            (##direct-structure-ref
                                                             _in5646_
                                                             '2
                                                             gx#import-set::t
                                                             '#f))
                                                           (_lp5616_
                                                            _rest5645_
                                                            _loads5619_)
                                                           (_K5621_ (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _in5646_
                             '1
                             gx#import-set::t
                             '#f)
                            _rest5645_))
               (gxc#raise-compile-error
                '"Unexpected import"
                _stx5579_
                _in5646_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (##pair? _rest56225630_)
                                       (let ((_hd56275651_
                                              (##car _rest56225630_))
                                             (_tl56285653_
                                              (##cdr _rest56225630_)))
                                         (let* ((_in5656_ _hd56275651_)
                                                (_rest5658_ _tl56285653_))
                                           (_K56265648_ _rest5658_ _in5656_)))
                                       (_else56245642_)))))))
                         _tl55865601_)))
                    (_g55815591_ _g55825594_)))))
        (_g55805667_ _stx5579_))))
  (define gxc#generate-runtime-phi-quote-syntax%
    (lambda (_stx5402_)
      (letrec ((_add-lift!5404_
                (lambda (_expr5577_)
                  (set-box!
                   (gxc#current-compile-lift)
                   (cons _expr5577_ (unbox (gxc#current-compile-lift))))))
               (_generate-simple5405_
                (lambda (_stxq5572_)
                  (let ((_gid5574_
                         (gxc#generate-runtime-temporary__opt-lambda10878 '#t))
                        (_qid5575_
                         (gxc#generate-runtime-identifier _stxq5572_)))
                    (begin
                      (_add-lift!5404_
                       (cons 'define
                             (cons _gid5574_
                                   (cons (cons 'gx#make-syntax-quote
                                               (cons (cons 'quote
                                                           (cons _qid5575_
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
                      _gid5574_))))
               (_generate-serialized5406_
                (lambda (_stxq5562_ _marks5563_)
                  (let* ((_mark-refs5565_
                          (map _generate-mark5407_ _marks5563_))
                         (_gid5567_
                          (gxc#generate-runtime-temporary__opt-lambda10878
                           '#t))
                         (_qid5569_
                          (gxc#generate-runtime-identifier _stxq5562_)))
                    (begin
                      (_add-lift!5404_
                       (cons 'define
                             (cons _gid5567_
                                   (cons (cons 'gx#make-syntax-quote
                                               (cons (cons 'quote
                                                           (cons _qid5569_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons '#f
                                                           (cons (cons 'gx#current-expander-context
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '())
                         (cons (cons 'list _mark-refs5565_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                      _gid5567_))))
               (_generate-mark5407_
                (lambda (_mark5548_)
                  (let ((_$e5550_
                         (table-ref
                          (gxc#current-compile-marks)
                          _mark5548_
                          '#f)))
                    (if _$e5550_
                        (values _$e5550_)
                        (let* ((_gid5553_
                                (gxc#generate-runtime-temporary__opt-lambda10878
                                 '#t))
                               (_repr5555_ (_serialize-mark5408_ _mark5548_))
                               (_ctx5557_
                                (gx#core-context-top__1
                                 (##structure-ref
                                  _mark5548_
                                  '2
                                  gx#expander-mark::t
                                  '#f)))
                               (_ctx-ref5559_
                                (if (eq? _ctx5557_
                                         (gx#current-expander-context))
                                    (cons 'gx#current-expander-context '())
                                    (cons 'gx#import-module
                                          (cons (cons 'quote
                                                      (cons (_context-ref5409_
                                                             _ctx5557_)
                                                            '()))
                                                '())))))
                          (begin
                            (table-set!
                             (gxc#current-compile-marks)
                             _mark5548_
                             _gid5553_)
                            (_add-lift!5404_
                             (cons 'define
                                   (cons _gid5553_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _repr5555_ '()))
                   (cons _ctx-ref5559_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _gid5553_))))))
               (_serialize-mark5408_
                (lambda (_mark5495_)
                  (letrec ((_quote-e5497_
                            (lambda (_sym5546_)
                              (if (interned-symbol? _sym5546_)
                                  _sym5546_
                                  (gxc#generate-runtime-gensym-reference__0
                                   _sym5546_)))))
                    (let* ((_mark54985507_ _mark5495_)
                           (_E55005511_
                            (lambda ()
                              (error '"No clause matching" _mark54985507_)))
                           (_K55015523_
                            (lambda (_trace5514_
                                     _phi5515_
                                     _ctx5516_
                                     _subst5517_)
                              (let ((_subs5519_
                                     (if _subst5517_
                                         (table->list _subst5517_)
                                         '())))
                                (cons _phi5515_
                                      (map (lambda (_pair5521_)
                                             (cons (_quote-e5497_
                                                    (car _pair5521_))
                                                   (_quote-e5497_
                                                    (cdr _pair5521_))))
                                           _subs5519_))))))
                      (if (##structure-instance-of?
                           _mark54985507_
                           (##type-id gx#expander-mark::t))
                          (let* ((_e55025526_ (##vector-ref _mark54985507_ '1))
                                 (_subst5529_ _e55025526_)
                                 (_e55035531_ (##vector-ref _mark54985507_ '2))
                                 (_ctx5534_ _e55035531_)
                                 (_e55045536_ (##vector-ref _mark54985507_ '3))
                                 (_phi5539_ _e55045536_)
                                 (_e55055541_ (##vector-ref _mark54985507_ '4))
                                 (_trace5544_ _e55055541_))
                            (_K55015523_
                             _trace5544_
                             _phi5539_
                             _ctx5534_
                             _subst5529_))
                          (_E55005511_))))))
               (_context-ref5409_
                (lambda (_ctx5482_)
                  (if (##structure-instance-of?
                       (##structure-ref _ctx5482_ '3 gx#phi-context::t '#f)
                       'gx#module-context::t)
                      (let ((_ctx-ref5484_
                             (_context-ref-nested5411_ _ctx5482_))
                            (_ctx-origin5485_
                             (_context-ref-origin5410_ _ctx5482_))
                            (_origin5486_
                             (_context-ref-origin5410_
                              (gx#current-expander-context))))
                        (if (eq? _origin5486_ _ctx-origin5485_)
                            (let ((_ref5488_
                                   (_context-ref-nested5411_
                                    (gx#current-expander-context))))
                              (let _lp5490_ ((_ref5492_ (cdr _ref5488_))
                                             (_ctx-ref5493_
                                              (cdr _ctx-ref5484_)))
                                (if (if (pair? _ref5492_)
                                        (eq? (car _ref5492_)
                                             (car _ctx-ref5493_))
                                        '#f)
                                    (_lp5490_
                                     (cdr _ref5492_)
                                     (cdr _ctx-ref5493_))
                                    (cons '#f _ctx-ref5493_))))
                            _ctx-ref5484_))
                      (make-symbol
                       '":"
                       (##structure-ref
                        _ctx5482_
                        '1
                        gx#expander-context::t
                        '#f)))))
               (_context-ref-origin5410_
                (lambda (_ctx5474_)
                  (let _lp5476_ ((_ctx5478_ _ctx5474_))
                    (let ((_super5480_
                           (##structure-ref
                            _ctx5478_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if (##structure-instance-of?
                           _super5480_
                           'gx#module-context::t)
                          (_lp5476_ _super5480_)
                          _ctx5478_)))))
               (_context-ref-nested5411_
                (lambda (_ctx5465_)
                  (let _lp5467_ ((_ctx5469_ _ctx5465_) (_r5470_ '()))
                    (let ((_super5472_
                           (##structure-ref
                            _ctx5469_
                            '3
                            gx#phi-context::t
                            '#f)))
                      (if (##structure-instance-of?
                           _super5472_
                           'gx#module-context::t)
                          (_lp5467_
                           _super5472_
                           (cons (car (##structure-ref
                                       _ctx5469_
                                       '7
                                       gx#module-context::t
                                       '#f))
                                 _r5470_))
                          (cons (make-symbol
                                 '":"
                                 (##structure-ref
                                  _ctx5469_
                                  '1
                                  gx#expander-context::t
                                  '#f))
                                _r5470_)))))))
        (let* ((_g54135426_
                (lambda (_g54145423_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g54145423_)))
               (_g54125462_
                (lambda (_g54145429_)
                  (if (gx#stx-pair? _g54145429_)
                      (let ((_e54165431_ (gx#stx-e _g54145429_)))
                        (let ((_hd54175434_ (##car _e54165431_))
                              (_tl54185436_ (##cdr _e54165431_)))
                          (if (gx#stx-pair? _tl54185436_)
                              (let ((_e54195439_ (gx#stx-e _tl54185436_)))
                                (let ((_hd54205442_ (##car _e54195439_))
                                      (_tl54215444_ (##cdr _e54195439_)))
                                  (if (gx#stx-null? _tl54215444_)
                                      ((lambda (_L5447_)
                                         (if (gx#identifier? _L5447_)
                                             (let ((_marks5460_
                                                    (##direct-structure-ref
                                                     _L5447_
                                                     '4
                                                     gx#syntax-quote::t
                                                     '#f)))
                                               (if (null? _marks5460_)
                                                   (_generate-simple5405_
                                                    _L5447_)
                                                   (_generate-serialized5406_
                                                    _L5447_
                                                    _marks5460_)))
                                             (gxc#raise-compile-error
                                              '"Cannot quote non-identifier syntax"
                                              _L5447_)))
                                       _hd54205442_)
                                      (_g54135426_ _g54145429_))))
                              (_g54135426_ _g54145429_))))
                      (_g54135426_ _g54145429_)))))
          (_g54125462_ _stx5402_)))))
  (define gxc#generate-runtime-phi-define-runtime%
    (lambda (_stx5335_)
      (let* ((_g53375354_
              (lambda (_g53385351_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g53385351_)))
             (_g53365399_
              (lambda (_g53385357_)
                (if (gx#stx-pair? _g53385357_)
                    (let ((_e53415359_ (gx#stx-e _g53385357_)))
                      (let ((_hd53425362_ (##car _e53415359_))
                            (_tl53435364_ (##cdr _e53415359_)))
                        (if (gx#stx-pair? _tl53435364_)
                            (let ((_e53445367_ (gx#stx-e _tl53435364_)))
                              (let ((_hd53455370_ (##car _e53445367_))
                                    (_tl53465372_ (##cdr _e53445367_)))
                                (if (gx#stx-pair? _tl53465372_)
                                    (let ((_e53475375_
                                           (gx#stx-e _tl53465372_)))
                                      (let ((_hd53485378_ (##car _e53475375_))
                                            (_tl53495380_ (##cdr _e53475375_)))
                                        (if (gx#stx-null? _tl53495380_)
                                            ((lambda (_L5383_ _L5384_)
                                               (cons 'define
                                                     (cons (gx#stx-e _L5384_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L5383_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd53485378_
                                             _hd53455370_)
                                            (_g53375354_ _g53385357_))))
                                    (_g53375354_ _g53385357_))))
                            (_g53375354_ _g53385357_))))
                    (_g53375354_ _g53385357_)))))
        (_g53365399_ _stx5335_))))
  (define gxc#generate-meta-begin%
    (lambda (_stx5284_ _state5285_)
      (let* ((_g52875297_
              (lambda (_g52885294_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g52885294_)))
             (_g52865332_
              (lambda (_g52885300_)
                (if (gx#stx-pair? _g52885300_)
                    (let ((_e52905302_ (gx#stx-e _g52885300_)))
                      (let ((_hd52915305_ (##car _e52905302_))
                            (_tl52925307_ (##cdr _e52905302_)))
                        ((lambda (_L5310_)
                           (let* ((_c-body5324_
                                   (map (lambda (_g53195321_)
                                          (gxc#compile-e
                                           _g53195321_
                                           _state5285_))
                                        _L5310_))
                                  (_c-body5329_
                                   (filter (lambda (_$obj5326_)
                                             (not (eq? _$obj5326_ '#!void)))
                                           _c-body5324_)))
                             (cons '%#begin _c-body5329_)))
                         _tl52925307_)))
                    (_g52875297_ _g52885300_)))))
        (_g52865332_ _stx5284_))))
  (define gxc#generate-meta-begin-syntax%
    (lambda (_stx5192_ _state5193_)
      (let* ((_g51955205_
              (lambda (_g51965202_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g51965202_)))
             (_g51945281_
              (lambda (_g51965208_)
                (if (gx#stx-pair? _g51965208_)
                    (let ((_e51985210_ (gx#stx-e _g51965208_)))
                      (let ((_hd51995213_ (##car _e51985210_))
                            (_tl52005215_ (##cdr _e51985210_)))
                        ((lambda (_L5218_)
                           (let* ((_phi5228_
                                   (fx+ (gx#current-expander-phi) '1))
                                  (_block5230_
                                   (gxc#meta-state-begin-phi!
                                    _state5193_
                                    _phi5228_))
                                  (_compiled5233_
                                   (call-with-parameters
                                    (lambda ()
                                      (gxc#apply-generate-meta-phi
                                       (cons (gx#datum->syntax__0 '#f '%#begin)
                                             _L5218_)
                                       _state5193_))
                                    gx#current-expander-phi
                                    _phi5228_)))
                             (let* ((_g52365246_
                                     (lambda (_g52375243_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g52375243_)))
                                    (_g52355278_
                                     (lambda (_g52375249_)
                                       (if (gx#stx-pair? _g52375249_)
                                           (let ((_e52395251_
                                                  (gx#stx-e _g52375249_)))
                                             (let ((_hd52405254_
                                                    (##car _e52395251_))
                                                   (_tl52415256_
                                                    (##cdr _e52395251_)))
                                               (if (gx#identifier?
                                                    _hd52405254_)
                                                   (if (gx#stx-eq?
                                                        '%#begin
                                                        _hd52405254_)
                                                       ((lambda (_L5259_)
                                                          (let ((_c-body5276_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_$obj5273_)
                                   (not (eq? _$obj5273_ '#!void)))
                                 _L5259_)))
                    (if _block5230_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons '_gx#load-module
                                                            '()))
                                                (cons (cons '%#quote
                                                            (cons _block5230_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _c-body5276_))
                        (if (null? _c-body5276_)
                            '#!void
                            (cons '%#begin-syntax _c-body5276_)))))
                _tl52415256_)
               (_g52365246_ _g52375249_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g52365246_ _g52375249_))))
                                           (_g52365246_ _g52375249_)))))
                               (_g52355278_ _compiled5233_))))
                         _tl52005215_)))
                    (_g51955205_ _g51965208_)))))
        (_g51945281_ _stx5192_))))
  (define gxc#generate-meta-module%
    (lambda (_stx5123_ _state5124_)
      (begin
        (gxc#meta-state-end-phi! _state5124_)
        (let* ((_g51265140_
                (lambda (_g51275137_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g51275137_)))
               (_g51255189_
                (lambda (_g51275143_)
                  (if (gx#stx-pair? _g51275143_)
                      (let ((_e51305145_ (gx#stx-e _g51275143_)))
                        (let ((_hd51315148_ (##car _e51305145_))
                              (_tl51325150_ (##cdr _e51305145_)))
                          (if (gx#stx-pair? _tl51325150_)
                              (let ((_e51335153_ (gx#stx-e _tl51325150_)))
                                (let ((_hd51345156_ (##car _e51335153_))
                                      (_tl51355158_ (##cdr _e51335153_)))
                                  ((lambda (_L5161_ _L5162_)
                                     (let ((_key5175_
                                            (gx#core-identifier-key _L5162_)))
                                       (begin
                                         (if (interned-symbol? _key5175_)
                                             '#!void
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _stx5123_
                                              _L5162_
                                              _key5175_))
                                         (let* ((_ctx5177_
                                                 (gx#syntax-local-e__0
                                                  _L5162_))
                                                (_code5180_
                                                 (call-with-parameters
                                                  (lambda ()
                                                    (gxc#compile-e
                                                     (##structure-ref
                                                      _ctx5177_
                                                      '11
                                                      gx#module-context::t
                                                      '#f)
                                                     _state5124_))
                                                  gx#current-expander-context
                                                  _ctx5177_))
                                                (_rt5182_
                                                 (table-ref
                                                  (gxc#current-compile-runtime-sections)
                                                  _ctx5177_
                                                  '#f))
                                                (_loader5184_
                                                 (if _rt5182_
                                                     (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref (cons '_gx#load-module '()))
                               (cons (cons '%#quote (cons _rt5182_ '())) '())))
                   '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                                (_modid5186_
                                                 (gx#stx-e _L5162_)))
                                           (begin
                                             (gxc#meta-state-end-phi!
                                              _state5124_)
                                             (cons '%#module
                                                   (cons _modid5186_
                                                         (cons _code5180_
                                                               _loader5184_))))))))
                                   _tl51355158_
                                   _hd51345156_)))
                              (_g51265140_ _g51275143_))))
                      (_g51265140_ _g51275143_)))))
          (_g51255189_ _stx5123_)))))
  (define gxc#generate-meta-import-path
    (lambda (_ctx5113_ _context-chain5114_)
      (let _lp5116_ ((_ctx5118_ _ctx5113_) (_path5119_ '()))
        (let ((_super5121_
               (##structure-ref _ctx5118_ '3 gx#phi-context::t '#f)))
          (if (memq _super5121_ _context-chain5114_)
              (cons* '#f
                     (car (##structure-ref
                           _ctx5118_
                           '7
                           gx#module-context::t
                           '#f))
                     _path5119_)
              (if (##structure-instance-of? _super5121_ 'gx#module-context::t)
                  (_lp5116_
                   _super5121_
                   (cons (car (##structure-ref
                               _ctx5118_
                               '7
                               gx#module-context::t
                               '#f))
                         _path5119_))
                  (cons (make-symbol
                         '":"
                         (##structure-ref
                          _ctx5118_
                          '1
                          gx#expander-context::t
                          '#f))
                        _path5119_)))))))
  (define gxc#current-context-chain
    (lambda ()
      (let _lp5108_ ((_ctx5110_ (gx#current-expander-context)) (_r5111_ '()))
        (if (##structure-instance-of? _ctx5110_ 'gx#module-context::t)
            (_lp5108_
             (##structure-ref _ctx5110_ '3 gx#phi-context::t '#f)
             (cons _ctx5110_ _r5111_))
            _r5111_))))
  (define gxc#generate-meta-import%
    (lambda (_stx4877_ _state4878_)
      (letrec* ((_context-chain4880_ (gxc#current-context-chain))
                (_make-import-spec4881_
                 (lambda (_in5044_)
                   (let* ((_in50455057_ _in5044_)
                          (_E50475061_
                           (lambda ()
                             (error '"No clause matching" _in50455057_)))
                          (_K50485071_
                           (lambda (_phi5064_
                                    _name5065_
                                    _src-name5066_
                                    _src-phi5067_
                                    _src-key5068_
                                    _src-ctx5069_)
                             (cons _phi5064_
                                   (cons (gxc#generate-runtime-identifier-key
                                          _name5065_)
                                         (cons _src-phi5067_
                                               (cons (gxc#generate-runtime-identifier-key
                                                      _src-name5066_)
                                                     '())))))))
                     (if (##structure-direct-instance-of?
                          _in50455057_
                          (##type-id gx#module-import::t))
                         (let ((_e50495074_ (##vector-ref _in50455057_ '1)))
                           (if (##structure-direct-instance-of?
                                _e50495074_
                                (##type-id gx#module-export::t))
                               (let* ((_e50525077_
                                       (##vector-ref _e50495074_ '1))
                                      (_src-ctx5080_ _e50525077_)
                                      (_e50535082_
                                       (##vector-ref _e50495074_ '2))
                                      (_src-key5085_ _e50535082_)
                                      (_e50545087_
                                       (##vector-ref _e50495074_ '3))
                                      (_src-phi5090_ _e50545087_)
                                      (_e50555092_
                                       (##vector-ref _e50495074_ '4))
                                      (_src-name5095_ _e50555092_)
                                      (_e50505097_
                                       (##vector-ref _in50455057_ '2))
                                      (_name5100_ _e50505097_)
                                      (_e50515102_
                                       (##vector-ref _in50455057_ '3))
                                      (_phi5105_ _e50515102_))
                                 (_K50485071_
                                  _phi5105_
                                  _name5100_
                                  _src-name5095_
                                  _src-phi5090_
                                  _src-key5085_
                                  _src-ctx5080_))
                               (_E50475061_)))
                         (_E50475061_)))))
                (_make-import-path4882_
                 (lambda (_ctx5042_)
                   (gxc#generate-meta-import-path
                    _ctx5042_
                    _context-chain4880_)))
                (_make-import-spec-in4883_
                 (lambda (_ctx5039_ _in5040_)
                   (cons 'spec:
                         (cons (_make-import-path4882_ _ctx5039_)
                               (reverse _in5040_))))))
        (begin
          (gxc#meta-state-end-phi! _state4878_)
          (let* ((_g48854895_
                  (lambda (_g48864892_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g48864892_)))
                 (_g48845036_
                  (lambda (_g48864898_)
                    (if (gx#stx-pair? _g48864898_)
                        (let ((_e48884900_ (gx#stx-e _g48864898_)))
                          (let ((_hd48894903_ (##car _e48884900_))
                                (_tl48904905_ (##cdr _e48884900_)))
                            ((lambda (_L4908_)
                               (let _lp4919_ ((_rest4921_ _L4908_)
                                              (_current-src4922_ '#f)
                                              (_current-in4923_ '())
                                              (_r4924_ '()))
                                 (let* ((_rest49254933_ _rest4921_)
                                        (_E49284937_
                                         (lambda ()
                                           (error '"No clause matching"
                                                  _rest49254933_)))
                                        (_else49274943_
                                         (lambda ()
                                           (let ((_r4941_ (if _current-src4922_
                                                              (cons (_make-import-spec-in4883_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _current-src4922_
                             _current-in4923_)
                            _r4924_)
                      _r4924_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons '%#import
                                                   (reverse _r4941_)))))
                                        (_K49295024_
                                         (lambda (_rest4946_ _in4947_)
                                           (if (##structure-direct-instance-of?
                                                _in4947_
                                                'gx#module-import::t)
                                               (let* ((_in49484955_ _in4947_)
                                                      (_E49504959_
                                                       (lambda ()
                                                         (error '"No clause matching"
                                                                _in49484955_)))
                                                      (_K49514964_
                                                       (lambda (_src-ctx4962_)
                                                         (if (eq? _current-src4922_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-ctx4962_)
                     (_lp4919_
                      _rest4946_
                      _current-src4922_
                      (cons (_make-import-spec4881_ _in4947_) _current-in4923_)
                      _r4924_)
                     (if _current-src4922_
                         (_lp4919_
                          _rest4946_
                          _src-ctx4962_
                          (cons (_make-import-spec4881_ _in4947_) '())
                          (cons (_make-import-spec-in4883_
                                 _current-src4922_
                                 _current-in4923_)
                                _r4924_))
                         (_lp4919_
                          _rest4946_
                          _src-ctx4962_
                          (cons (_make-import-spec4881_ _in4947_) '())
                          _r4924_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (##structure-direct-instance-of?
                                                      _in49484955_
                                                      (##type-id
                                                       gx#module-import::t))
                                                     (let ((_e49524967_
                                                            (##vector-ref
                                                             _in49484955_
                                                             '1)))
                                                       (if (##structure-direct-instance-of?
                                                            _e49524967_
                                                            (##type-id
                                                             gx#module-export::t))
                                                           (let* ((_e49534970_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##vector-ref _e49524967_ '1))
                          (_src-ctx4973_ _e49534970_))
                     (_K49514964_ _src-ctx4973_))
                   (_E49504959_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E49504959_)))
                                               (if (##structure-direct-instance-of?
                                                    _in4947_
                                                    'gx#import-set::t)
                                                   (let* ((_phi4975_
                                                           (##direct-structure-ref
                                                            _in4947_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src4977_
                                                           (##direct-structure-ref
                                                            _in4947_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src-in5017_
                                                           (let* ((_g49784987_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_make-import-path4882_ _src4977_))
                          (_E49814991_
                           (lambda ()
                             (error '"No clause matching" _g49784987_)))
                          (_try-match49805002_
                           (lambda ()
                             (let* ((_K49824997_
                                     (lambda (_path4995_)
                                       (cons 'in: _path4995_)))
                                    (_path5000_ _g49784987_))
                               (_K49824997_ _path5000_))))
                          (_K49835007_ (lambda (_path5005_) _path5005_)))
                     (if (##pair? _g49784987_)
                         (let ((_hd49845010_ (##car _g49784987_))
                               (_tl49855012_ (##cdr _g49784987_)))
                           (let ((_path5015_ _hd49845010_))
                             (if (##null? _tl49855012_)
                                 (_K49835007_ _path5015_)
                                 (_try-match49805002_))))
                         (_try-match49805002_))))
                  (_r5019_ (if _current-src4922_
                               (cons (_make-import-spec-in4883_
                                      _current-src4922_
                                      _current-in4923_)
                                     _r4924_)
                               _r4924_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_lp4919_
                                                      _rest4946_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _phi4975_)
                                                                _src-in5017_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _phi4975_ (cons _src-in5017_ '()))))
                    _r5019_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (##structure-instance-of?
                                                        _in4947_
                                                        'gx#module-context::t)
                                                       (let ((_r5022_ (if _current-src4922_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (_make-import-spec-in4883_
                                         _current-src4922_
                                         _current-in4923_)
                                        _r4924_)
                                  _r4924_)))
                 (_lp4919_
                  _rest4946_
                  '#f
                  '()
                  (cons (cons 'runtime: (_make-import-path4882_ _in4947_))
                        _r5022_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (##pair? _rest49254933_)
                                       (let ((_hd49305027_
                                              (##car _rest49254933_))
                                             (_tl49315029_
                                              (##cdr _rest49254933_)))
                                         (let* ((_in5032_ _hd49305027_)
                                                (_rest5034_ _tl49315029_))
                                           (_K49295024_ _rest5034_ _in5032_)))
                                       (_else49274943_)))))
                             _tl48904905_)))
                        (_g48854895_ _g48864898_)))))
            (_g48845036_ _stx4877_))))))
  (define gxc#generate-meta-export%
    (lambda (_stx4687_ _state4688_)
      (letrec* ((_context-chain4690_ (gxc#current-context-chain))
                (_make-import-path4691_
                 (lambda (_ctx4875_)
                   (gxc#generate-meta-import-path
                    _ctx4875_
                    _context-chain4690_))))
        (let* ((_g46934703_
                (lambda (_g46944700_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g46944700_)))
               (_g46924872_
                (lambda (_g46944706_)
                  (if (gx#stx-pair? _g46944706_)
                      (let ((_e46964708_ (gx#stx-e _g46944706_)))
                        (let ((_hd46974711_ (##car _e46964708_))
                              (_tl46984713_ (##cdr _e46964708_)))
                          ((lambda (_L4716_)
                             (let _lp4727_ ((_rest4729_ _L4716_) (_r4730_ '()))
                               (let* ((_rest47314739_ _rest4729_)
                                      (_E47344743_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _rest47314739_)))
                                      (_else47334747_
                                       (lambda ()
                                         (cons '%#export (reverse _r4730_))))
                                      (_K47354860_
                                       (lambda (_rest4750_ _out4751_)
                                         (let* ((_out47524765_ _out4751_)
                                                (_E47554769_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _out47524765_)))
                                                (_try-match47544832_
                                                 (lambda ()
                                                   (let ((_K47564819_
                                                          (lambda (_phi4773_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _src4774_)
                    (let* ((_out4814_
                            (if _src4774_
                                (cons 'import:
                                      (cons (let* ((_g47754784_
                                                    (_make-import-path4691_
                                                     _src4774_))
                                                   (_E47784788_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _g47754784_)))
                                                   (_try-match47774799_
                                                    (lambda ()
                                                      (let* ((_K47794794_
                                                              (lambda (_path4792_)
                                                                (cons 'in:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _path4792_)))
                     (_path4797_ _g47754784_))
                (_K47794794_ _path4797_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K47804804_
                                                    (lambda (_path4802_)
                                                      _path4802_)))
                                              (if (##pair? _g47754784_)
                                                  (let ((_hd47814807_
                                                         (##car _g47754784_))
                                                        (_tl47824809_
                                                         (##cdr _g47754784_)))
                                                    (let ((_path4812_
                                                           _hd47814807_))
                                                      (if (##null? _tl47824809_)
                                                          (_K47804804_
                                                           _path4812_)
                                                          (_try-match47774799_))))
                                                  (_try-match47774799_)))
                                            '()))
                                '#t))
                           (_out4816_
                            (if (fxzero? _phi4773_)
                                _out4814_
                                (cons 'phi:
                                      (cons _phi4773_ (cons _out4814_ '()))))))
                      (_lp4727_ _rest4750_ (cons _out4816_ _r4730_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##structure-direct-instance-of?
                                                          _out47524765_
                                                          (##type-id
                                                           gx#export-set::t))
                                                         (let* ((_e47574822_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref _out47524765_ '1))
                        (_src4825_ _e47574822_)
                        (_e47584827_ (##vector-ref _out47524765_ '2))
                        (_phi4830_ _e47584827_))
                   (_K47564819_ _phi4830_ _src4825_))
                 (_E47554769_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_K47594839_
                                                 (lambda (_name4835_
                                                          _phi4836_
                                                          _key4837_)
                                                   (_lp4727_
                                                    _rest4750_
                                                    (cons (cons 'spec:
                                                                (cons _phi4836_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gxc#generate-runtime-identifier-key
                                     _key4837_)
                                    (cons (gxc#generate-runtime-identifier-key
                                           _name4835_)
                                          '()))))
                  _r4730_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (##structure-direct-instance-of?
                                                _out47524765_
                                                (##type-id
                                                 gx#module-export::t))
                                               (let* ((_e47604842_
                                                       (##vector-ref
                                                        _out47524765_
                                                        '1))
                                                      (_e47614845_
                                                       (##vector-ref
                                                        _out47524765_
                                                        '2))
                                                      (_key4848_ _e47614845_)
                                                      (_e47624850_
                                                       (##vector-ref
                                                        _out47524765_
                                                        '3))
                                                      (_phi4853_ _e47624850_)
                                                      (_e47634855_
                                                       (##vector-ref
                                                        _out47524765_
                                                        '4))
                                                      (_name4858_ _e47634855_))
                                                 (_K47594839_
                                                  _name4858_
                                                  _phi4853_
                                                  _key4848_))
                                               (_try-match47544832_))))))
                                 (if (##pair? _rest47314739_)
                                     (let ((_hd47364863_
                                            (##car _rest47314739_))
                                           (_tl47374865_
                                            (##cdr _rest47314739_)))
                                       (let* ((_out4868_ _hd47364863_)
                                              (_rest4870_ _tl47374865_))
                                         (_K47354860_ _rest4870_ _out4868_)))
                                     (_else47334747_)))))
                           _tl46984713_)))
                      (_g46934703_ _g46944706_)))))
          (_g46924872_ _stx4687_)))))
  (define gxc#generate-meta-provide%
    (lambda (_stx4648_ _state4649_)
      (begin
        (gxc#meta-state-end-phi! _state4649_)
        (let* ((_g46514661_
                (lambda (_g46524658_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g46524658_)))
               (_g46504684_
                (lambda (_g46524664_)
                  (if (gx#stx-pair? _g46524664_)
                      (let ((_e46544666_ (gx#stx-e _g46524664_)))
                        (let ((_hd46554669_ (##car _e46544666_))
                              (_tl46564671_ (##cdr _e46544666_)))
                          ((lambda (_L4674_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _L4674_)))
                           _tl46564671_)))
                      (_g46514661_ _g46524664_)))))
          (_g46504684_ _stx4648_)))))
  (define gxc#generate-meta-extern%
    (lambda (_stx4519_ _state4520_)
      (letrec ((_generate14522_
                (lambda (_id4643_ _eid4644_)
                  (let ((_eid4646_ (gx#stx-e _eid4644_)))
                    (begin
                      (if (interned-symbol? _eid4646_)
                          '#!void
                          (gxc#raise-compile-error
                           '"Cannot compile extern reference"
                           _stx4519_
                           _eid4646_))
                      (cons (gxc#generate-runtime-identifier _id4643_)
                            (cons _eid4646_ '())))))))
        (let* ((_g45244552_
                (lambda (_g45254549_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g45254549_)))
               (_g45234640_
                (lambda (_g45254555_)
                  (if (gx#stx-pair? _g45254555_)
                      (let ((_e45284557_ (gx#stx-e _g45254555_)))
                        (let ((_hd45294560_ (##car _e45284557_))
                              (_tl45304562_ (##cdr _e45284557_)))
                          (if (gx#stx-pair/null? _tl45304562_)
                              (if (fx>= (gx#stx-length _tl45304562_) '0)
                                  (let ((_g12091_
                                         (gx#syntax-split-splice
                                          _tl45304562_
                                          '0)))
                                    (begin
                                      (let ((_g12092_ (values-count _g12091_)))
                                        (if (not (fx= _g12092_ 2))
                                            (error "Context expects 2 values"
                                                   _g12092_)))
                                      (let ((_target45314565_
                                             (values-ref _g12091_ 0))
                                            (_tl45334567_
                                             (values-ref _g12091_ 1)))
                                        (if (gx#stx-null? _tl45334567_)
                                            (letrec ((_loop45344570_
                                                      (lambda (_hd45324573_
                                                               _eid45384575_
                                                               _id45394577_)
                                                        (if (gx#stx-pair?
                                                             _hd45324573_)
                                                            (let ((_e45354580_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd45324573_)))
                      (let ((_lp-hd45364583_ (##car _e45354580_))
                            (_lp-tl45374585_ (##cdr _e45354580_)))
                        (if (gx#stx-pair? _lp-hd45364583_)
                            (let ((_e45424588_ (gx#stx-e _lp-hd45364583_)))
                              (let ((_hd45434591_ (##car _e45424588_))
                                    (_tl45444593_ (##cdr _e45424588_)))
                                (if (gx#stx-pair? _tl45444593_)
                                    (let ((_e45454596_
                                           (gx#stx-e _tl45444593_)))
                                      (let ((_hd45464599_ (##car _e45454596_))
                                            (_tl45474601_ (##cdr _e45454596_)))
                                        (if (gx#stx-null? _tl45474601_)
                                            (_loop45344570_
                                             _lp-tl45374585_
                                             (cons _hd45464599_ _eid45384575_)
                                             (cons _hd45434591_ _id45394577_))
                                            (_g45244552_ _g45254555_))))
                                    (_g45244552_ _g45254555_))))
                            (_g45244552_ _g45254555_))))
                    (let ((_eid45404604_ (reverse _eid45384575_))
                          (_id45414606_ (reverse _id45394577_)))
                      ((lambda (_L4609_ _L4610_)
                         (cons '%#extern
                               (map _generate14522_
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g46254628_ _g46264630_)
                                                (cons _g46254628_ _g46264630_))
                                              '()
                                              _L4610_))
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g46324635_ _g46334637_)
                                                (cons _g46324635_ _g46334637_))
                                              '()
                                              _L4609_)))))
                       _eid45404604_
                       _id45414606_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop45344570_
                                               _target45314565_
                                               '()
                                               '()))
                                            (_g45244552_ _g45254555_)))))
                                  (_g45244552_ _g45254555_))
                              (_g45244552_ _g45254555_))))
                      (_g45244552_ _g45254555_)))))
          (_g45234640_ _stx4519_)))))
  (define gxc#generate-meta-define-values%
    (lambda (_stx4314_ _state4315_)
      (letrec ((_generate14317_
                (lambda (_id4514_)
                  (let ((_eid4516_ (gxc#generate-runtime-binding-id _id4514_))
                        (_ident4517_
                         (gxc#generate-runtime-identifier _id4514_)))
                    (cons '%#define-runtime
                          (cons _ident4517_ (cons _eid4516_ '()))))))
               (_generate*4318_
                (lambda (_all4482_)
                  (let* ((_all44834491_ _all4482_)
                         (_E44864495_
                          (lambda ()
                            (error '"No clause matching" _all44834491_)))
                         (_else44854499_ (lambda () (cons '%#begin _all4482_)))
                         (_K44874504_ (lambda (_one4502_) _one4502_)))
                    (if (##pair? _all44834491_)
                        (let ((_hd44884507_ (##car _all44834491_))
                              (_tl44894509_ (##cdr _all44834491_)))
                          (let ((_one4512_ _hd44884507_))
                            (if (##null? _tl44894509_)
                                (_K44874504_ _one4512_)
                                (_else44854499_))))
                        (_else44854499_))))))
        (let* ((_g43204337_
                (lambda (_g43214334_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g43214334_)))
               (_g43194479_
                (lambda (_g43214340_)
                  (if (gx#stx-pair? _g43214340_)
                      (let ((_e43244342_ (gx#stx-e _g43214340_)))
                        (let ((_hd43254345_ (##car _e43244342_))
                              (_tl43264347_ (##cdr _e43244342_)))
                          (if (gx#stx-pair? _tl43264347_)
                              (let ((_e43274350_ (gx#stx-e _tl43264347_)))
                                (let ((_hd43284353_ (##car _e43274350_))
                                      (_tl43294355_ (##cdr _e43274350_)))
                                  (if (gx#stx-pair? _tl43294355_)
                                      (let ((_e43304358_
                                             (gx#stx-e _tl43294355_)))
                                        (let ((_hd43314361_
                                               (##car _e43304358_))
                                              (_tl43324363_
                                               (##cdr _e43304358_)))
                                          (if (gx#stx-null? _tl43324363_)
                                              ((lambda (_L4366_ _L4367_)
                                                 (let _lp4383_ ((_rest4385_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L4367_)
                        (_r4386_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_g43914407_
                                                           (lambda (_g43924404_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g43924404_)))
                                                          (_g43904414_
                                                           (lambda (_g43924410_)
                                                             ((lambda ()
                                                                (_generate*4318_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (reverse _r4386_))))))
                  (_g43894430_
                   (lambda (_g43924417_)
                     ((lambda (_L4419_)
                        (if (gx#identifier? _L4419_)
                            (_generate*4318_
                             (foldl1 cons
                                     (cons (_generate14317_ _L4419_) '())
                                     _r4386_))
                            (_g43904414_ _g43924417_)))
                      _g43924417_)))
                  (_g43884454_
                   (lambda (_g43924433_)
                     (if (gx#stx-pair? _g43924433_)
                         (let ((_e43994435_ (gx#stx-e _g43924433_)))
                           (let ((_hd44004438_ (##car _e43994435_))
                                 (_tl44014440_ (##cdr _e43994435_)))
                             ((lambda (_L4443_ _L4444_)
                                (_lp4383_
                                 _L4443_
                                 (cons (_generate14317_ _L4444_) _r4386_)))
                              _tl44014440_
                              _hd44004438_)))
                         (_g43894430_ _g43924433_))))
                  (_g43874476_
                   (lambda (_g43924457_)
                     (if (gx#stx-pair? _g43924457_)
                         (let ((_e43944459_ (gx#stx-e _g43924457_)))
                           (let ((_hd43954462_ (##car _e43944459_))
                                 (_tl43964464_ (##cdr _e43944459_)))
                             (if (gx#stx-datum? _hd43954462_)
                                 (if (equal? (gx#stx-e _hd43954462_) '#f)
                                     ((lambda (_L4467_)
                                        (_lp4383_ _L4467_ _r4386_))
                                      _tl43964464_)
                                     (_g43884454_ _g43924457_))
                                 (_g43884454_ _g43924457_))))
                         (_g43884454_ _g43924457_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g43874476_
                                                      _rest4385_))))
                                               _hd43314361_
                                               _hd43284353_)
                                              (_g43204337_ _g43214340_))))
                                      (_g43204337_ _g43214340_))))
                              (_g43204337_ _g43214340_))))
                      (_g43204337_ _g43214340_)))))
          (_g43194479_ _stx4314_)))))
  (define gxc#generate-meta-define-syntax%
    (lambda (_stx4211_ _state4212_)
      (let* ((_g42144231_
              (lambda (_g42154228_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g42154228_)))
             (_g42134311_
              (lambda (_g42154234_)
                (if (gx#stx-pair? _g42154234_)
                    (let ((_e42184236_ (gx#stx-e _g42154234_)))
                      (let ((_hd42194239_ (##car _e42184236_))
                            (_tl42204241_ (##cdr _e42184236_)))
                        (if (gx#stx-pair? _tl42204241_)
                            (let ((_e42214244_ (gx#stx-e _tl42204241_)))
                              (let ((_hd42224247_ (##car _e42214244_))
                                    (_tl42234249_ (##cdr _e42214244_)))
                                (if (gx#stx-pair? _tl42234249_)
                                    (let ((_e42244252_
                                           (gx#stx-e _tl42234249_)))
                                      (let ((_hd42254255_ (##car _e42244252_))
                                            (_tl42264257_ (##cdr _e42244252_)))
                                        (if (gx#stx-null? _tl42264257_)
                                            ((lambda (_L4260_ _L4261_)
                                               (let* ((_eid4276_
                                                       (gxc#generate-runtime-binding-id
                                                        _L4261_))
                                                      (_phi4278_
                                                       (fx+ (gx#current-expander-phi)
                                                            '1))
                                                      (_block4280_
                                                       (gxc#meta-state-begin-phi!
                                                        _state4212_
                                                        _phi4278_)))
                                                 (begin
                                                   (let* ((_g42834290_
                                                           (lambda (_g42844287_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g42844287_)))
                                                          (_g42824308_
                                                           (lambda (_g42844293_)
                                                             ((lambda (_L4295_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#meta-state-add-phi!
                           _state4212_
                           _phi4278_
                           (cons (gx#datum->syntax__0 '#f '%#define-runtime)
                                 (cons _L4295_ (cons _L4260_ '()))))))
                      _g42844293_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g42824308_ _eid4276_))
                                                   (if _block4280_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons '_gx#load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _block4280_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (gxc#generate-runtime-identifier
                                              _L4261_)
                                             (cons _eid4276_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (gxc#generate-runtime-identifier _L4261_)
                           (cons _eid4276_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd42254255_
                                             _hd42224247_)
                                            (_g42144231_ _g42154234_))))
                                    (_g42144231_ _g42154234_))))
                            (_g42144231_ _g42154234_))))
                    (_g42144231_ _g42154234_)))))
        (_g42134311_ _stx4211_))))
  (define gxc#generate-meta-define-alias%
    (lambda (_stx4143_ _state4144_)
      (let* ((_g41464163_
              (lambda (_g41474160_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g41474160_)))
             (_g41454208_
              (lambda (_g41474166_)
                (if (gx#stx-pair? _g41474166_)
                    (let ((_e41504168_ (gx#stx-e _g41474166_)))
                      (let ((_hd41514171_ (##car _e41504168_))
                            (_tl41524173_ (##cdr _e41504168_)))
                        (if (gx#stx-pair? _tl41524173_)
                            (let ((_e41534176_ (gx#stx-e _tl41524173_)))
                              (let ((_hd41544179_ (##car _e41534176_))
                                    (_tl41554181_ (##cdr _e41534176_)))
                                (if (gx#stx-pair? _tl41554181_)
                                    (let ((_e41564184_
                                           (gx#stx-e _tl41554181_)))
                                      (let ((_hd41574187_ (##car _e41564184_))
                                            (_tl41584189_ (##cdr _e41564184_)))
                                        (if (gx#stx-null? _tl41584189_)
                                            ((lambda (_L4192_ _L4193_)
                                               (cons '%#define-alias
                                                     (cons (gxc#generate-runtime-identifier
                                                            _L4193_)
                                                           (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L4192_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd41574187_
                                             _hd41544179_)
                                            (_g41464163_ _g41474166_))))
                                    (_g41464163_ _g41474166_))))
                            (_g41464163_ _g41474166_))))
                    (_g41464163_ _g41474166_)))))
        (_g41454208_ _stx4143_))))
  (define gxc#generate-meta-phi-define-values%
    (lambda (_stx4140_ _state4141_)
      (begin
        (gxc#meta-state-add-phi!
         _state4141_
         (gx#current-expander-phi)
         _stx4140_)
        (gxc#generate-meta-define-values% _stx4140_ _state4141_))))
  (define gxc#generate-meta-phi-expr
    (lambda (_stx4137_ _state4138_)
      (begin
        (gxc#meta-state-add-phi!
         _state4138_
         (gx#current-expander-phi)
         _stx4137_)
        '#!void)))
  (define gxc#meta-state::t
    (make-struct-type 'gxc#meta-state::t '#f '4 'meta-state '() ':init!))
  (define gxc#meta-state? (make-struct-predicate gxc#meta-state::t))
  (define gxc#make-meta-state
    (lambda _$args4134_
      (apply make-struct-instance gxc#meta-state::t _$args4134_)))
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
    (lambda (_self4131_ _ctx4132_)
      (if (##fx< '4 (##vector-length _self4131_))
          (begin
            (##vector-set!
             _self4131_
             '1
             (symbol->string
              (##structure-ref _ctx4132_ '1 gx#expander-context::t '#f)))
            (##vector-set! _self4131_ '2 '1)
            (##vector-set! _self4131_ '3 (make-hash-table-eq))
            (##vector-set! _self4131_ '4 '()))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self4131_))))
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
    (lambda _$args4006_
      (apply make-struct-instance gxc#meta-state-block::t _$args4006_)))
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
    (lambda (_state3965_ _phi3966_)
      (let* ((_state39673975_ _state3965_)
             (_E39693979_
              (lambda () (error '"No clause matching" _state39673975_)))
             (_K39703988_
              (lambda (_open3982_ _n3983_ _src3984_)
                (if (table-ref _open3982_ _phi3966_ '#f)
                    '#f
                    (let ((_block-ref3986_
                           (string-append
                            _src3984_
                            '"__"
                            (number->string _n3983_))))
                      (begin
                        (##structure-set!
                         _state3965_
                         (fx+ _n3983_ '1)
                         '2
                         gxc#meta-state::t
                         '#f)
                        (table-set!
                         _open3982_
                         _phi3966_
                         (##structure
                          gxc#meta-state-block::t
                          (gx#current-expander-context)
                          _phi3966_
                          _n3983_
                          '()))
                        _block-ref3986_))))))
        (if (##structure-instance-of?
             _state39673975_
             (##type-id gxc#meta-state::t))
            (let* ((_e39713991_ (##vector-ref _state39673975_ '1))
                   (_src3994_ _e39713991_)
                   (_e39723996_ (##vector-ref _state39673975_ '2))
                   (_n3999_ _e39723996_)
                   (_e39734001_ (##vector-ref _state39673975_ '3))
                   (_open4004_ _e39734001_))
              (_K39703988_ _open4004_ _n3999_ _src3994_))
            (_E39693979_)))))
  (define gxc#meta-state-add-phi!
    (lambda (_state3959_ _phi3960_ _stx3961_)
      (let ((_block3963_
             (table-ref
              (##structure-ref _state3959_ '3 gxc#meta-state::t '#f)
              _phi3960_
              '#f)))
        (##structure-set!
         _block3963_
         (cons _stx3961_
               (##structure-ref _block3963_ '4 gxc#meta-state-block::t '#f))
         '4
         gxc#meta-state-block::t
         '#f))))
  (define gxc#meta-state-end-phi!
    (lambda (_state3954_)
      (begin
        (##structure-set!
         _state3954_
         (hash-fold
          (lambda (_g12093_ _block3956_ _r3957_) (cons _block3956_ _r3957_))
          (##structure-ref _state3954_ '4 gxc#meta-state::t '#f)
          (##structure-ref _state3954_ '3 gxc#meta-state::t '#f))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _state3954_
         (make-hash-table-eq)
         '3
         gxc#meta-state::t
         '#f))))
  (define gxc#meta-state-end!
    (lambda (_state3906_)
      (begin
        (gxc#meta-state-end-phi! _state3906_)
        (foldl1 (lambda (_block3908_ _r3909_)
                  (let* ((_block39103919_ _block3908_)
                         (_E39123923_
                          (lambda ()
                            (error '"No clause matching" _block39103919_)))
                         (_K39133931_
                          (lambda (_code3926_ _n3927_ _phi3928_ _ctx3929_)
                            (if (null? _code3926_)
                                _r3909_
                                (cons (cons _ctx3929_
                                            (cons _phi3928_
                                                  (cons _n3927_
                                                        (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (reverse _code3926_))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _r3909_)))))
                    (if (##structure-instance-of?
                         _block39103919_
                         (##type-id gxc#meta-state-block::t))
                        (let* ((_e39143934_ (##vector-ref _block39103919_ '1))
                               (_ctx3937_ _e39143934_)
                               (_e39153939_ (##vector-ref _block39103919_ '2))
                               (_phi3942_ _e39153939_)
                               (_e39163944_ (##vector-ref _block39103919_ '3))
                               (_n3947_ _e39163944_)
                               (_e39173949_ (##vector-ref _block39103919_ '4))
                               (_code3952_ _e39173949_))
                          (_K39133931_ _code3952_ _n3947_ _phi3942_ _ctx3937_))
                        (_E39123923_))))
                '()
                (##structure-ref _state3906_ '4 gxc#meta-state::t '#f)))))
  (define gxc#collect-expression-refs
    (lambda (_stx3902_)
      (let ((_ht3904_ (make-hash-table-eq)))
        (begin
          (gxc#apply-collect-expression-refs _stx3902_ _ht3904_)
          _ht3904_))))
  (define gxc#collect-refs-ref%
    (lambda (_stx3845_ _ht3846_)
      (let* ((_g38483861_
              (lambda (_g38493858_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g38493858_)))
             (_g38473899_
              (lambda (_g38493864_)
                (if (gx#stx-pair? _g38493864_)
                    (let ((_e38513866_ (gx#stx-e _g38493864_)))
                      (let ((_hd38523869_ (##car _e38513866_))
                            (_tl38533871_ (##cdr _e38513866_)))
                        (if (gx#stx-pair? _tl38533871_)
                            (let ((_e38543874_ (gx#stx-e _tl38533871_)))
                              (let ((_hd38553877_ (##car _e38543874_))
                                    (_tl38563879_ (##cdr _e38543874_)))
                                (if (gx#stx-null? _tl38563879_)
                                    ((lambda (_L3882_)
                                       (let* ((_bind3894_
                                               (gx#resolve-identifier__0
                                                _L3882_))
                                              (_eid3896_
                                               (if _bind3894_
                                                   (##structure-ref
                                                    _bind3894_
                                                    '1
                                                    gx#binding::t
                                                    '#f)
                                                   (gx#stx-e _L3882_))))
                                         (table-set!
                                          _ht3846_
                                          _eid3896_
                                          _eid3896_)))
                                     _hd38553877_)
                                    (_g38483861_ _g38493864_))))
                            (_g38483861_ _g38493864_))))
                    (_g38483861_ _g38493864_)))))
        (_g38473899_ _stx3845_))))
  (define gxc#collect-refs-setq%
    (lambda (_stx3772_ _ht3773_)
      (let* ((_g37753792_
              (lambda (_g37763789_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g37763789_)))
             (_g37743842_
              (lambda (_g37763795_)
                (if (gx#stx-pair? _g37763795_)
                    (let ((_e37793797_ (gx#stx-e _g37763795_)))
                      (let ((_hd37803800_ (##car _e37793797_))
                            (_tl37813802_ (##cdr _e37793797_)))
                        (if (gx#stx-pair? _tl37813802_)
                            (let ((_e37823805_ (gx#stx-e _tl37813802_)))
                              (let ((_hd37833808_ (##car _e37823805_))
                                    (_tl37843810_ (##cdr _e37823805_)))
                                (if (gx#stx-pair? _tl37843810_)
                                    (let ((_e37853813_
                                           (gx#stx-e _tl37843810_)))
                                      (let ((_hd37863816_ (##car _e37853813_))
                                            (_tl37873818_ (##cdr _e37853813_)))
                                        (if (gx#stx-null? _tl37873818_)
                                            ((lambda (_L3821_ _L3822_)
                                               (let* ((_bind3837_
                                                       (gx#resolve-identifier__0
                                                        _L3822_))
                                                      (_eid3839_
                                                       (if _bind3837_
                                                           (##structure-ref
                                                            _bind3837_
                                                            '1
                                                            gx#binding::t
                                                            '#f)
                                                           (gx#stx-e
                                                            _L3822_))))
                                                 (begin
                                                   (table-set!
                                                    _ht3773_
                                                    _eid3839_
                                                    _eid3839_)
                                                   (gxc#compile-e
                                                    _L3821_
                                                    _ht3773_))))
                                             _hd37863816_
                                             _hd37833808_)
                                            (_g37753792_ _g37763795_))))
                                    (_g37753792_ _g37763795_))))
                            (_g37753792_ _g37763795_))))
                    (_g37753792_ _g37763795_)))))
        (_g37743842_ _stx3772_))))
  (define gxc#find-runtime-begin%
    (lambda (_stx3734_)
      (let* ((_g37363746_
              (lambda (_g37373743_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g37373743_)))
             (_g37353769_
              (lambda (_g37373749_)
                (if (gx#stx-pair? _g37373749_)
                    (let ((_e37393751_ (gx#stx-e _g37373749_)))
                      (let ((_hd37403754_ (##car _e37393751_))
                            (_tl37413756_ (##cdr _e37393751_)))
                        ((lambda (_L3759_) (ormap1 gxc#compile-e _L3759_))
                         _tl37413756_)))
                    (_g37363746_ _g37373749_)))))
        (_g37353769_ _stx3734_))))
  (define gxc#find-lambda-expression-begin%
    (lambda (_stx3696_)
      (let* ((_g36983708_
              (lambda (_g36993705_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g36993705_)))
             (_g36973731_
              (lambda (_g36993711_)
                (if (gx#stx-pair? _g36993711_)
                    (let ((_e37013713_ (gx#stx-e _g36993711_)))
                      (let ((_hd37023716_ (##car _e37013713_))
                            (_tl37033718_ (##cdr _e37013713_)))
                        ((lambda (_L3721_) (gxc#compile-e (last _L3721_)))
                         _tl37033718_)))
                    (_g36983708_ _g36993711_)))))
        (_g36973731_ _stx3696_))))
  (define gxc#find-lambda-expression-begin-annotation%
    (lambda (_stx3629_)
      (let* ((_g36313648_
              (lambda (_g36323645_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g36323645_)))
             (_g36303693_
              (lambda (_g36323651_)
                (if (gx#stx-pair? _g36323651_)
                    (let ((_e36353653_ (gx#stx-e _g36323651_)))
                      (let ((_hd36363656_ (##car _e36353653_))
                            (_tl36373658_ (##cdr _e36353653_)))
                        (if (gx#stx-pair? _tl36373658_)
                            (let ((_e36383661_ (gx#stx-e _tl36373658_)))
                              (let ((_hd36393664_ (##car _e36383661_))
                                    (_tl36403666_ (##cdr _e36383661_)))
                                (if (gx#stx-pair? _tl36403666_)
                                    (let ((_e36413669_
                                           (gx#stx-e _tl36403666_)))
                                      (let ((_hd36423672_ (##car _e36413669_))
                                            (_tl36433674_ (##cdr _e36413669_)))
                                        (if (gx#stx-null? _tl36433674_)
                                            ((lambda (_L3677_ _L3678_)
                                               (gxc#compile-e _L3677_))
                                             _hd36423672_
                                             _hd36393664_)
                                            (_g36313648_ _g36323651_))))
                                    (_g36313648_ _g36323651_))))
                            (_g36313648_ _g36323651_))))
                    (_g36313648_ _g36323651_)))))
        (_g36303693_ _stx3629_))))
  (define gxc#find-lambda-expression-let-values%
    (lambda (_stx3562_)
      (let* ((_g35643581_
              (lambda (_g35653578_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g35653578_)))
             (_g35633626_
              (lambda (_g35653584_)
                (if (gx#stx-pair? _g35653584_)
                    (let ((_e35683586_ (gx#stx-e _g35653584_)))
                      (let ((_hd35693589_ (##car _e35683586_))
                            (_tl35703591_ (##cdr _e35683586_)))
                        (if (gx#stx-pair? _tl35703591_)
                            (let ((_e35713594_ (gx#stx-e _tl35703591_)))
                              (let ((_hd35723597_ (##car _e35713594_))
                                    (_tl35733599_ (##cdr _e35713594_)))
                                (if (gx#stx-pair? _tl35733599_)
                                    (let ((_e35743602_
                                           (gx#stx-e _tl35733599_)))
                                      (let ((_hd35753605_ (##car _e35743602_))
                                            (_tl35763607_ (##cdr _e35743602_)))
                                        (if (gx#stx-null? _tl35763607_)
                                            ((lambda (_L3610_ _L3611_)
                                               (gxc#compile-e _L3610_))
                                             _hd35753605_
                                             _hd35723597_)
                                            (_g35643581_ _g35653584_))))
                                    (_g35643581_ _g35653584_))))
                            (_g35643581_ _g35653584_))))
                    (_g35643581_ _g35653584_)))))
        (_g35633626_ _stx3562_)))))
