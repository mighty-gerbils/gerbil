(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#current-compile-methods (make-parameter '#f))
  (define gxc#current-compile-lift (make-parameter '#f))
  (define gxc#current-compile-marks (make-parameter '#f))
  (define gxc#compile-e
    (lambda (_stx12010_ . _args12011_)
      (let* ((_g1201312023_
              (lambda (_g1201412020_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1201412020_)))
             (_g1201212051_
              (lambda (_g1201412026_)
                (if (gx#stx-pair? _g1201412026_)
                    (let ((_e1201612028_ (gx#stx-e _g1201412026_)))
                      (let ((_hd1201712031_ (##car _e1201612028_))
                            (_tl1201812033_ (##cdr _e1201612028_)))
                        ((lambda (_L12036_)
                           (let ((_$e12046_
                                  (table-ref
                                   (gxc#current-compile-methods)
                                   (gx#stx-e _L12036_)
                                   '#f)))
                             (if _$e12046_
                                 ((lambda (_method12049_)
                                    (apply _method12049_
                                           _stx12010_
                                           _args12011_))
                                  _$e12046_)
                                 (gxc#raise-compile-error
                                  '"Cannot compile; missing method"
                                  _stx12010_
                                  _L12036_))))
                         _hd1201712031_)))
                    (_g1201312023_ _g1201412026_)))))
        (_g1201212051_ _stx12010_))))
  (define gxc#&void-expression
    (make-promise
     (lambda ()
       (let ((_tbl12007_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12007_ '%#begin-annotation void)
           (table-set! _tbl12007_ '%#lambda void)
           (table-set! _tbl12007_ '%#case-lambda void)
           (table-set! _tbl12007_ '%#let-values void)
           (table-set! _tbl12007_ '%#letrec-values void)
           (table-set! _tbl12007_ '%#letrec*-values void)
           (table-set! _tbl12007_ '%#quote void)
           (table-set! _tbl12007_ '%#quote-syntax void)
           (table-set! _tbl12007_ '%#call void)
           (table-set! _tbl12007_ '%#if void)
           (table-set! _tbl12007_ '%#ref void)
           (table-set! _tbl12007_ '%#set! void)
           (table-set! _tbl12007_ '%#struct-instance? void)
           (table-set! _tbl12007_ '%#struct-direct-instance? void)
           (table-set! _tbl12007_ '%#struct-ref void)
           (table-set! _tbl12007_ '%#struct-set! void)
           (table-set! _tbl12007_ '%#struct-direct-ref void)
           (table-set! _tbl12007_ '%#struct-direct-set! void)
           (table-set! _tbl12007_ '%#struct-unchecked-ref void)
           (table-set! _tbl12007_ '%#struct-unchecked-set! void)
           _tbl12007_)))))
  (define gxc#&void-special-form
    (make-promise
     (lambda ()
       (let ((_tbl12003_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl12003_ '%#begin void)
           (table-set! _tbl12003_ '%#begin-syntax void)
           (table-set! _tbl12003_ '%#begin-foreign void)
           (table-set! _tbl12003_ '%#module void)
           (table-set! _tbl12003_ '%#import void)
           (table-set! _tbl12003_ '%#export void)
           (table-set! _tbl12003_ '%#provide void)
           (table-set! _tbl12003_ '%#extern void)
           (table-set! _tbl12003_ '%#define-values void)
           (table-set! _tbl12003_ '%#define-syntax void)
           (table-set! _tbl12003_ '%#define-alias void)
           (table-set! _tbl12003_ '%#declare void)
           _tbl12003_)))))
  (define gxc#&void
    (make-promise
     (lambda ()
       (let ((_tbl11999_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl11999_ (force gxc#&void-special-form))
           (hash-copy! _tbl11999_ (force gxc#&void-expression))
           _tbl11999_)))))
  (define gxc#&false-expression
    (make-promise
     (lambda ()
       (let ((_tbl11995_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl11995_ '%#begin-annotation false)
           (table-set! _tbl11995_ '%#lambda false)
           (table-set! _tbl11995_ '%#case-lambda false)
           (table-set! _tbl11995_ '%#let-values false)
           (table-set! _tbl11995_ '%#letrec-values false)
           (table-set! _tbl11995_ '%#letrec*-values false)
           (table-set! _tbl11995_ '%#quote false)
           (table-set! _tbl11995_ '%#quote-syntax false)
           (table-set! _tbl11995_ '%#call false)
           (table-set! _tbl11995_ '%#if false)
           (table-set! _tbl11995_ '%#ref false)
           (table-set! _tbl11995_ '%#set! false)
           (table-set! _tbl11995_ '%#struct-instance? false)
           (table-set! _tbl11995_ '%#struct-direct-instance? false)
           (table-set! _tbl11995_ '%#struct-ref false)
           (table-set! _tbl11995_ '%#struct-set! false)
           (table-set! _tbl11995_ '%#struct-direct-ref false)
           (table-set! _tbl11995_ '%#struct-direct-set! false)
           (table-set! _tbl11995_ '%#struct-unchecked-ref false)
           (table-set! _tbl11995_ '%#struct-unchecked-set! false)
           _tbl11995_)))))
  (define gxc#&false-special-form
    (make-promise
     (lambda ()
       (let ((_tbl11991_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl11991_ '%#begin false)
           (table-set! _tbl11991_ '%#begin-syntax false)
           (table-set! _tbl11991_ '%#begin-foreign false)
           (table-set! _tbl11991_ '%#module false)
           (table-set! _tbl11991_ '%#import false)
           (table-set! _tbl11991_ '%#export false)
           (table-set! _tbl11991_ '%#provide false)
           (table-set! _tbl11991_ '%#extern false)
           (table-set! _tbl11991_ '%#define-values false)
           (table-set! _tbl11991_ '%#define-syntax false)
           (table-set! _tbl11991_ '%#define-alias false)
           (table-set! _tbl11991_ '%#declare false)
           _tbl11991_)))))
  (define gxc#&false
    (make-promise
     (lambda ()
       (let ((_tbl11987_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl11987_ (force gxc#&false-special-form))
           (hash-copy! _tbl11987_ (force gxc#&false-expression))
           _tbl11987_)))))
  (define gxc#&collect-bindings
    (make-promise
     (lambda ()
       (let ((_tbl11983_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl11983_ (force gxc#&void-expression))
           (hash-copy! _tbl11983_ (force gxc#&void-special-form))
           (table-set! _tbl11983_ '%#begin gxc#collect-begin%)
           (table-set! _tbl11983_ '%#begin-syntax gxc#collect-begin-syntax%)
           (table-set! _tbl11983_ '%#module gxc#collect-module%)
           (table-set!
            _tbl11983_
            '%#define-values
            gxc#collect-bindings-define-values%)
           (table-set!
            _tbl11983_
            '%#define-syntax
            gxc#collect-bindings-define-syntax%)
           _tbl11983_)))))
  (define gxc#apply-collect-bindings
    (lambda (_stx11976_ . _args11978_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11976_ _args11978_))
       gxc#current-compile-methods
       (force gxc#&collect-bindings))))
  (define gxc#&lift-modules
    (make-promise
     (lambda ()
       (let ((_tbl11973_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl11973_ (force gxc#&void))
           (table-set! _tbl11973_ '%#begin gxc#collect-begin%)
           (table-set! _tbl11973_ '%#module gxc#lift-modules-module%)
           _tbl11973_)))))
  (define gxc#apply-lift-modules
    (lambda (_stx11966_ . _args11968_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11966_ _args11968_))
       gxc#current-compile-methods
       (force gxc#&lift-modules))))
  (define gxc#&find-runtime-code
    (make-promise
     (lambda ()
       (let ((_tbl11963_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl11963_ '%#begin gxc#find-runtime-begin%)
           (table-set! _tbl11963_ '%#begin-syntax false)
           (table-set! _tbl11963_ '%#begin-foreign true)
           (table-set! _tbl11963_ '%#begin-annotation true)
           (table-set! _tbl11963_ '%#module false)
           (table-set! _tbl11963_ '%#import false)
           (table-set! _tbl11963_ '%#export false)
           (table-set! _tbl11963_ '%#provide false)
           (table-set! _tbl11963_ '%#extern false)
           (table-set! _tbl11963_ '%#define-values true)
           (table-set! _tbl11963_ '%#define-syntax false)
           (table-set! _tbl11963_ '%#define-alias false)
           (table-set! _tbl11963_ '%#declare false)
           (table-set! _tbl11963_ '%#lambda true)
           (table-set! _tbl11963_ '%#case-lambda true)
           (table-set! _tbl11963_ '%#let-values true)
           (table-set! _tbl11963_ '%#letrec-values true)
           (table-set! _tbl11963_ '%#letrec*-values true)
           (table-set! _tbl11963_ '%#quote true)
           (table-set! _tbl11963_ '%#call true)
           (table-set! _tbl11963_ '%#if true)
           (table-set! _tbl11963_ '%#ref true)
           (table-set! _tbl11963_ '%#set! true)
           (table-set! _tbl11963_ '%#struct-instance? true)
           (table-set! _tbl11963_ '%#struct-direct-instance? true)
           (table-set! _tbl11963_ '%#struct-ref true)
           (table-set! _tbl11963_ '%#struct-set! true)
           (table-set! _tbl11963_ '%#struct-direct-ref true)
           (table-set! _tbl11963_ '%#struct-direct-set! true)
           (table-set! _tbl11963_ '%#struct-unchecked-ref true)
           (table-set! _tbl11963_ '%#struct-unchecked-set! true)
           _tbl11963_)))))
  (define gxc#apply-find-runtime-code
    (lambda (_stx11956_ . _args11958_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11956_ _args11958_))
       gxc#current-compile-methods
       (force gxc#&find-runtime-code))))
  (define gxc#&find-lambda-expression
    (make-promise
     (lambda ()
       (let ((_tbl11953_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl11953_ (force gxc#&false))
           (table-set! _tbl11953_ '%#begin gxc#find-lambda-expression-begin%)
           (table-set!
            _tbl11953_
            '%#begin-annotation
            gxc#find-lambda-expression-begin-annotation%)
           (table-set! _tbl11953_ '%#lambda values)
           (table-set! _tbl11953_ '%#case-lambda values)
           (table-set!
            _tbl11953_
            '%#let-values
            gxc#find-lambda-expression-let-values%)
           (table-set!
            _tbl11953_
            '%#letrec-values
            gxc#find-lambda-expression-let-values%)
           (table-set!
            _tbl11953_
            '%#letrec*-values
            gxc#find-lambda-expression-let-values%)
           _tbl11953_)))))
  (define gxc#apply-find-lambda-expression
    (lambda (_stx11946_ . _args11948_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11946_ _args11948_))
       gxc#current-compile-methods
       (force gxc#&find-lambda-expression))))
  (define gxc#&generate-runtime-empty
    (make-promise
     (lambda ()
       (let ((_tbl11943_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl11943_ '%#begin gxc#generate-runtime-empty)
           (table-set! _tbl11943_ '%#begin-syntax gxc#generate-runtime-empty)
           (table-set! _tbl11943_ '%#begin-foreign gxc#generate-runtime-empty)
           (table-set!
            _tbl11943_
            '%#begin-annotation
            gxc#generate-runtime-empty)
           (table-set! _tbl11943_ '%#module gxc#generate-runtime-empty)
           (table-set! _tbl11943_ '%#import gxc#generate-runtime-empty)
           (table-set! _tbl11943_ '%#export gxc#generate-runtime-empty)
           (table-set! _tbl11943_ '%#provide gxc#generate-runtime-empty)
           (table-set! _tbl11943_ '%#extern gxc#generate-runtime-empty)
           (table-set! _tbl11943_ '%#define-values gxc#generate-runtime-empty)
           (table-set! _tbl11943_ '%#define-syntax gxc#generate-runtime-empty)
           (table-set! _tbl11943_ '%#define-alias gxc#generate-runtime-empty)
           (table-set! _tbl11943_ '%#declare gxc#generate-runtime-empty)
           (table-set! _tbl11943_ '%#lambda gxc#generate-runtime-empty)
           (table-set! _tbl11943_ '%#case-lambda gxc#generate-runtime-empty)
           (table-set! _tbl11943_ '%#let-values gxc#generate-runtime-empty)
           (table-set! _tbl11943_ '%#letrec-values gxc#generate-runtime-empty)
           (table-set! _tbl11943_ '%#letrec*-values gxc#generate-runtime-empty)
           (table-set! _tbl11943_ '%#quote gxc#generate-runtime-empty)
           (table-set! _tbl11943_ '%#call gxc#generate-runtime-empty)
           (table-set! _tbl11943_ '%#if gxc#generate-runtime-empty)
           (table-set! _tbl11943_ '%#ref gxc#generate-runtime-empty)
           (table-set! _tbl11943_ '%#set! gxc#generate-runtime-empty)
           (table-set!
            _tbl11943_
            '%#struct-instance?
            gxc#generate-runtime-empty)
           (table-set!
            _tbl11943_
            '%#struct-direct-instance?
            gxc#generate-runtime-empty)
           (table-set! _tbl11943_ '%#struct-ref gxc#generate-runtime-empty)
           (table-set! _tbl11943_ '%#struct-set! gxc#generate-runtime-empty)
           (table-set!
            _tbl11943_
            '%#struct-direct-ref
            gxc#generate-runtime-empty)
           (table-set!
            _tbl11943_
            '%#struct-direct-set!
            gxc#generate-runtime-empty)
           (table-set!
            _tbl11943_
            '%#struct-unchecked-ref
            gxc#generate-runtime-empty)
           (table-set!
            _tbl11943_
            '%#struct-unchecked-set!
            gxc#generate-runtime-empty)
           _tbl11943_)))))
  (define gxc#&generate-loader
    (make-promise
     (lambda ()
       (let ((_tbl11939_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl11939_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl11939_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl11939_
            '%#import
            gxc#generate-runtime-loader-import%)
           _tbl11939_)))))
  (define gxc#apply-generate-loader
    (lambda (_stx11932_ . _args11934_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11932_ _args11934_))
       gxc#current-compile-methods
       (force gxc#&generate-loader))))
  (define gxc#&generate-runtime
    (make-promise
     (lambda ()
       (let ((_tbl11929_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl11929_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl11929_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl11929_
            '%#begin-foreign
            gxc#generate-runtime-begin-foreign%)
           (table-set!
            _tbl11929_
            '%#begin-annotation
            gxc#generate-runtime-begin-annotation%)
           (table-set!
            _tbl11929_
            '%#define-values
            gxc#generate-runtime-define-values%)
           (table-set! _tbl11929_ '%#declare gxc#generate-runtime-declare%)
           (table-set! _tbl11929_ '%#lambda gxc#generate-runtime-lambda%)
           (table-set!
            _tbl11929_
            '%#case-lambda
            gxc#generate-runtime-case-lambda%)
           (table-set!
            _tbl11929_
            '%#let-values
            gxc#generate-runtime-let-values%)
           (table-set!
            _tbl11929_
            '%#letrec-values
            gxc#generate-runtime-letrec-values%)
           (table-set!
            _tbl11929_
            '%#letrec*-values
            gxc#generate-runtime-letrec*-values%)
           (table-set! _tbl11929_ '%#quote gxc#generate-runtime-quote%)
           (table-set! _tbl11929_ '%#call gxc#generate-runtime-call%)
           (table-set! _tbl11929_ '%#if gxc#generate-runtime-if%)
           (table-set! _tbl11929_ '%#ref gxc#generate-runtime-ref%)
           (table-set! _tbl11929_ '%#set! gxc#generate-runtime-setq%)
           (table-set!
            _tbl11929_
            '%#struct-instance?
            gxc#generate-runtime-struct-instancep%)
           (table-set!
            _tbl11929_
            '%#struct-direct-instance?
            gxc#generate-runtime-struct-direct-instancep%)
           (table-set!
            _tbl11929_
            '%#struct-ref
            gxc#generate-runtime-struct-ref%)
           (table-set!
            _tbl11929_
            '%#struct-set!
            gxc#generate-runtime-struct-setq%)
           (table-set!
            _tbl11929_
            '%#struct-direct-ref
            gxc#generate-runtime-struct-direct-ref%)
           (table-set!
            _tbl11929_
            '%#struct-direct-set!
            gxc#generate-runtime-struct-direct-setq%)
           (table-set!
            _tbl11929_
            '%#struct-unchecked-ref
            gxc#generate-runtime-struct-unchecked-ref%)
           (table-set!
            _tbl11929_
            '%#struct-unchecked-set!
            gxc#generate-runtime-struct-unchecked-setq%)
           _tbl11929_)))))
  (define gxc#apply-generate-runtime
    (lambda (_stx11922_ . _args11924_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11922_ _args11924_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime))))
  (define gxc#&generate-runtime-phi
    (make-promise
     (lambda ()
       (let ((_tbl11919_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl11919_ (force gxc#&generate-runtime))
           (table-set!
            _tbl11919_
            '%#quote-syntax
            gxc#generate-runtime-phi-quote-syntax%)
           (table-set!
            _tbl11919_
            '%#define-runtime
            gxc#generate-runtime-phi-define-runtime%)
           _tbl11919_)))))
  (define gxc#apply-generate-runtime-phi
    (lambda (_stx11912_ . _args11914_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11912_ _args11914_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime-phi))))
  (define gxc#&collect-expression-refs
    (make-promise
     (lambda ()
       (let ((_tbl11909_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl11909_ '%#begin gxc#collect-begin%)
           (table-set!
            _tbl11909_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl11909_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl11909_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl11909_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl11909_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl11909_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl11909_ '%#quote void)
           (table-set! _tbl11909_ '%#quote-syntax void)
           (table-set! _tbl11909_ '%#call gxc#collect-operands)
           (table-set! _tbl11909_ '%#if gxc#collect-operands)
           (table-set! _tbl11909_ '%#ref gxc#collect-refs-ref%)
           (table-set! _tbl11909_ '%#set! gxc#collect-refs-setq%)
           (table-set! _tbl11909_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl11909_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl11909_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl11909_ '%#struct-set! gxc#collect-operands)
           (table-set! _tbl11909_ '%#struct-direct-ref gxc#collect-operands)
           (table-set! _tbl11909_ '%#struct-direct-set! gxc#collect-operands)
           (table-set! _tbl11909_ '%#struct-unchecked-ref gxc#collect-operands)
           (table-set!
            _tbl11909_
            '%#struct-unchecked-set!
            gxc#collect-operands)
           _tbl11909_)))))
  (define gxc#apply-collect-expression-refs
    (lambda (_stx11902_ . _args11904_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11902_ _args11904_))
       gxc#current-compile-methods
       (force gxc#&collect-expression-refs))))
  (define gxc#&generate-meta
    (make-promise
     (lambda ()
       (let ((_tbl11899_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl11899_ (force gxc#&void-expression))
           (table-set! _tbl11899_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl11899_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set! _tbl11899_ '%#module gxc#generate-meta-module%)
           (table-set! _tbl11899_ '%#import gxc#generate-meta-import%)
           (table-set! _tbl11899_ '%#export gxc#generate-meta-export%)
           (table-set! _tbl11899_ '%#provide gxc#generate-meta-provide%)
           (table-set! _tbl11899_ '%#extern gxc#generate-meta-extern%)
           (table-set!
            _tbl11899_
            '%#define-values
            gxc#generate-meta-define-values%)
           (table-set!
            _tbl11899_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl11899_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set! _tbl11899_ '%#begin-foreign void)
           (table-set! _tbl11899_ '%#declare void)
           _tbl11899_)))))
  (define gxc#apply-generate-meta
    (lambda (_stx11892_ . _args11894_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11892_ _args11894_))
       gxc#current-compile-methods
       (force gxc#&generate-meta))))
  (define gxc#&generate-meta-phi
    (make-promise
     (lambda ()
       (let ((_tbl11889_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl11889_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl11889_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set!
            _tbl11889_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl11889_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set!
            _tbl11889_
            '%#define-values
            gxc#generate-meta-phi-define-values%)
           (table-set!
            _tbl11889_
            '%#begin-annotation
            gxc#generate-meta-phi-expr)
           (table-set! _tbl11889_ '%#lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl11889_ '%#case-lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl11889_ '%#let-values gxc#generate-meta-phi-expr)
           (table-set! _tbl11889_ '%#letrec-values gxc#generate-meta-phi-expr)
           (table-set! _tbl11889_ '%#letrec*-values gxc#generate-meta-phi-expr)
           (table-set! _tbl11889_ '%#quote gxc#generate-meta-phi-expr)
           (table-set! _tbl11889_ '%#quote-syntax gxc#generate-meta-phi-expr)
           (table-set! _tbl11889_ '%#call gxc#generate-meta-phi-expr)
           (table-set! _tbl11889_ '%#if gxc#generate-meta-phi-expr)
           (table-set! _tbl11889_ '%#ref gxc#generate-meta-phi-expr)
           (table-set! _tbl11889_ '%#set! gxc#generate-meta-phi-expr)
           (table-set!
            _tbl11889_
            '%#struct-instance?
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl11889_
            '%#struct-direct-instance?
            gxc#generate-meta-phi-expr)
           (table-set! _tbl11889_ '%#struct-ref gxc#generate-meta-phi-expr)
           (table-set! _tbl11889_ '%#struct-set! gxc#generate-meta-phi-expr)
           (table-set!
            _tbl11889_
            '%#struct-direct-ref
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl11889_
            '%#struct-direct-set!
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl11889_
            '%#struct-unchecked-ref
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl11889_
            '%#struct-unchecked-set!
            gxc#generate-meta-phi-expr)
           (table-set! _tbl11889_ '%#declare void)
           _tbl11889_)))))
  (define gxc#apply-generate-meta-phi
    (lambda (_stx11882_ . _args11884_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx11882_ _args11884_))
       gxc#current-compile-methods
       (force gxc#&generate-meta-phi))))
  (define gxc#collect-begin%
    (lambda (_stx11839_ . _args11840_)
      (let* ((_g1184211852_
              (lambda (_g1184311849_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1184311849_)))
             (_g1184111879_
              (lambda (_g1184311855_)
                (if (gx#stx-pair? _g1184311855_)
                    (let ((_e1184511857_ (gx#stx-e _g1184311855_)))
                      (let ((_hd1184611860_ (##car _e1184511857_))
                            (_tl1184711862_ (##cdr _e1184511857_)))
                        ((lambda (_L11865_)
                           (for-each
                            (lambda (_g1187411876_)
                              (apply gxc#compile-e _g1187411876_ _args11840_))
                            (gx#stx-e _L11865_)))
                         _tl1184711862_)))
                    (_g1184211852_ _g1184311855_)))))
        (_g1184111879_ _stx11839_))))
  (define gxc#collect-begin-syntax%
    (lambda (_stx11795_ . _args11796_)
      (let* ((_g1179811808_
              (lambda (_g1179911805_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1179911805_)))
             (_g1179711836_
              (lambda (_g1179911811_)
                (if (gx#stx-pair? _g1179911811_)
                    (let ((_e1180111813_ (gx#stx-e _g1179911811_)))
                      (let ((_hd1180211816_ (##car _e1180111813_))
                            (_tl1180311818_ (##cdr _e1180111813_)))
                        ((lambda (_L11821_)
                           (call-with-parameters
                            (lambda ()
                              (for-each
                               (lambda (_g1183111833_)
                                 (apply gxc#compile-e
                                        _g1183111833_
                                        _args11796_))
                               (gx#stx-e _L11821_)))
                            gx#current-expander-phi
                            (fx+ (gx#current-expander-phi) '1)))
                         _tl1180311818_)))
                    (_g1179811808_ _g1179911811_)))))
        (_g1179711836_ _stx11795_))))
  (define gxc#collect-module%
    (lambda (_stx11737_ . _args11738_)
      (let* ((_g1174011754_
              (lambda (_g1174111751_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1174111751_)))
             (_g1173911792_
              (lambda (_g1174111757_)
                (if (gx#stx-pair? _g1174111757_)
                    (let ((_e1174411759_ (gx#stx-e _g1174111757_)))
                      (let ((_hd1174511762_ (##car _e1174411759_))
                            (_tl1174611764_ (##cdr _e1174411759_)))
                        (if (gx#stx-pair? _tl1174611764_)
                            (let ((_e1174711767_ (gx#stx-e _tl1174611764_)))
                              (let ((_hd1174811770_ (##car _e1174711767_))
                                    (_tl1174911772_ (##cdr _e1174711767_)))
                                ((lambda (_L11775_ _L11776_)
                                   (let ((_ctx11789_
                                          (gx#syntax-local-e__0 _L11776_)))
                                     (call-with-parameters
                                      (lambda ()
                                        (apply gxc#compile-e
                                               (##structure-ref
                                                _ctx11789_
                                                '11
                                                gx#module-context::t
                                                '#f)
                                               _args11738_))
                                      gx#current-expander-context
                                      _ctx11789_)))
                                 _tl1174911772_
                                 _hd1174811770_)))
                            (_g1174011754_ _g1174111757_))))
                    (_g1174011754_ _g1174111757_)))))
        (_g1173911792_ _stx11737_))))
  (define gxc#collect-begin-annotation%
    (lambda (_stx11669_ . _args11670_)
      (let* ((_g1167211689_
              (lambda (_g1167311686_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1167311686_)))
             (_g1167111734_
              (lambda (_g1167311692_)
                (if (gx#stx-pair? _g1167311692_)
                    (let ((_e1167611694_ (gx#stx-e _g1167311692_)))
                      (let ((_hd1167711697_ (##car _e1167611694_))
                            (_tl1167811699_ (##cdr _e1167611694_)))
                        (if (gx#stx-pair? _tl1167811699_)
                            (let ((_e1167911702_ (gx#stx-e _tl1167811699_)))
                              (let ((_hd1168011705_ (##car _e1167911702_))
                                    (_tl1168111707_ (##cdr _e1167911702_)))
                                (if (gx#stx-pair? _tl1168111707_)
                                    (let ((_e1168211710_
                                           (gx#stx-e _tl1168111707_)))
                                      (let ((_hd1168311713_
                                             (##car _e1168211710_))
                                            (_tl1168411715_
                                             (##cdr _e1168211710_)))
                                        (if (gx#stx-null? _tl1168411715_)
                                            ((lambda (_L11718_ _L11719_)
                                               (apply gxc#compile-e
                                                      _L11718_
                                                      _args11670_))
                                             _hd1168311713_
                                             _hd1168011705_)
                                            (_g1167211689_ _g1167311692_))))
                                    (_g1167211689_ _g1167311692_))))
                            (_g1167211689_ _g1167311692_))))
                    (_g1167211689_ _g1167311692_)))))
        (_g1167111734_ _stx11669_))))
  (define gxc#collect-body-lambda%
    (lambda (_stx11601_ . _args11602_)
      (let* ((_g1160411621_
              (lambda (_g1160511618_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1160511618_)))
             (_g1160311666_
              (lambda (_g1160511624_)
                (if (gx#stx-pair? _g1160511624_)
                    (let ((_e1160811626_ (gx#stx-e _g1160511624_)))
                      (let ((_hd1160911629_ (##car _e1160811626_))
                            (_tl1161011631_ (##cdr _e1160811626_)))
                        (if (gx#stx-pair? _tl1161011631_)
                            (let ((_e1161111634_ (gx#stx-e _tl1161011631_)))
                              (let ((_hd1161211637_ (##car _e1161111634_))
                                    (_tl1161311639_ (##cdr _e1161111634_)))
                                (if (gx#stx-pair? _tl1161311639_)
                                    (let ((_e1161411642_
                                           (gx#stx-e _tl1161311639_)))
                                      (let ((_hd1161511645_
                                             (##car _e1161411642_))
                                            (_tl1161611647_
                                             (##cdr _e1161411642_)))
                                        (if (gx#stx-null? _tl1161611647_)
                                            ((lambda (_L11650_ _L11651_)
                                               (apply gxc#compile-e
                                                      _L11650_
                                                      _args11602_))
                                             _hd1161511645_
                                             _hd1161211637_)
                                            (_g1160411621_ _g1160511624_))))
                                    (_g1160411621_ _g1160511624_))))
                            (_g1160411621_ _g1160511624_))))
                    (_g1160411621_ _g1160511624_)))))
        (_g1160311666_ _stx11601_))))
  (define gxc#collect-body-case-lambda%
    (lambda (_stx11483_ . _args11484_)
      (let* ((_g1148611514_
              (lambda (_g1148711511_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1148711511_)))
             (_g1148511598_
              (lambda (_g1148711517_)
                (if (gx#stx-pair? _g1148711517_)
                    (let ((_e1149011519_ (gx#stx-e _g1148711517_)))
                      (let ((_hd1149111522_ (##car _e1149011519_))
                            (_tl1149211524_ (##cdr _e1149011519_)))
                        (if (gx#stx-pair/null? _tl1149211524_)
                            (if (fx>= (gx#stx-length _tl1149211524_) '0)
                                (let ((_g12053_
                                       (gx#syntax-split-splice
                                        _tl1149211524_
                                        '0)))
                                  (begin
                                    (let ((_g12054_ (values-count _g12053_)))
                                      (if (not (fx= _g12054_ 2))
                                          (error "Context expects 2 values"
                                                 _g12054_)))
                                    (let ((_target1149311527_
                                           (values-ref _g12053_ 0))
                                          (_tl1149511529_
                                           (values-ref _g12053_ 1)))
                                      (if (gx#stx-null? _tl1149511529_)
                                          (letrec ((_loop1149611532_
                                                    (lambda (_hd1149411535_
                                                             _body1150011537_
                                                             _hd1150111539_)
                                                      (if (gx#stx-pair?
                                                           _hd1149411535_)
                                                          (let ((_e1149711542_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd1149411535_)))
                    (let ((_lp-hd1149811545_ (##car _e1149711542_))
                          (_lp-tl1149911547_ (##cdr _e1149711542_)))
                      (if (gx#stx-pair? _lp-hd1149811545_)
                          (let ((_e1150411550_ (gx#stx-e _lp-hd1149811545_)))
                            (let ((_hd1150511553_ (##car _e1150411550_))
                                  (_tl1150611555_ (##cdr _e1150411550_)))
                              (if (gx#stx-pair? _tl1150611555_)
                                  (let ((_e1150711558_
                                         (gx#stx-e _tl1150611555_)))
                                    (let ((_hd1150811561_
                                           (##car _e1150711558_))
                                          (_tl1150911563_
                                           (##cdr _e1150711558_)))
                                      (if (gx#stx-null? _tl1150911563_)
                                          (_loop1149611532_
                                           _lp-tl1149911547_
                                           (cons _hd1150811561_
                                                 _body1150011537_)
                                           (cons _hd1150511553_
                                                 _hd1150111539_))
                                          (_g1148611514_ _g1148711517_))))
                                  (_g1148611514_ _g1148711517_))))
                          (_g1148611514_ _g1148711517_))))
                  (let ((_body1150211566_ (reverse _body1150011537_))
                        (_hd1150311568_ (reverse _hd1150111539_)))
                    ((lambda (_L11571_ _L11572_)
                       (for-each
                        (lambda (_g1158611588_)
                          (apply gxc#compile-e _g1158611588_ _args11484_))
                        (begin
                          '#!void
                          (foldr1 (lambda (_g1159011593_ _g1159111595_)
                                    (cons _g1159011593_ _g1159111595_))
                                  '()
                                  _L11571_))))
                     _body1150211566_
                     _hd1150311568_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1149611532_
                                             _target1149311527_
                                             '()
                                             '()))
                                          (_g1148611514_ _g1148711517_)))))
                                (_g1148611514_ _g1148711517_))
                            (_g1148611514_ _g1148711517_))))
                    (_g1148611514_ _g1148711517_)))))
        (_g1148511598_ _stx11483_))))
  (define gxc#collect-body-let-values%
    (lambda (_stx11336_ . _args11337_)
      (let* ((_g1133911374_
              (lambda (_g1134011371_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1134011371_)))
             (_g1133811480_
              (lambda (_g1134011377_)
                (if (gx#stx-pair? _g1134011377_)
                    (let ((_e1134411379_ (gx#stx-e _g1134011377_)))
                      (let ((_hd1134511382_ (##car _e1134411379_))
                            (_tl1134611384_ (##cdr _e1134411379_)))
                        (if (gx#stx-pair? _tl1134611384_)
                            (let ((_e1134711387_ (gx#stx-e _tl1134611384_)))
                              (let ((_hd1134811390_ (##car _e1134711387_))
                                    (_tl1134911392_ (##cdr _e1134711387_)))
                                (if (gx#stx-pair/null? _hd1134811390_)
                                    (if (fx>= (gx#stx-length _hd1134811390_)
                                              '0)
                                        (let ((_g12055_
                                               (gx#syntax-split-splice
                                                _hd1134811390_
                                                '0)))
                                          (begin
                                            (let ((_g12056_
                                                   (values-count _g12055_)))
                                              (if (not (fx= _g12056_ 2))
                                                  (error "Context expects 2 values"
                                                         _g12056_)))
                                            (let ((_target1135011395_
                                                   (values-ref _g12055_ 0))
                                                  (_tl1135211397_
                                                   (values-ref _g12055_ 1)))
                                              (if (gx#stx-null? _tl1135211397_)
                                                  (letrec ((_loop1135311400_
                                                            (lambda (_hd1135111403_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr1135711405_
                             _hd1135811407_)
                      (if (gx#stx-pair? _hd1135111403_)
                          (let ((_e1135411410_ (gx#stx-e _hd1135111403_)))
                            (let ((_lp-hd1135511413_ (##car _e1135411410_))
                                  (_lp-tl1135611415_ (##cdr _e1135411410_)))
                              (if (gx#stx-pair? _lp-hd1135511413_)
                                  (let ((_e1136111418_
                                         (gx#stx-e _lp-hd1135511413_)))
                                    (let ((_hd1136211421_
                                           (##car _e1136111418_))
                                          (_tl1136311423_
                                           (##cdr _e1136111418_)))
                                      (if (gx#stx-pair? _tl1136311423_)
                                          (let ((_e1136411426_
                                                 (gx#stx-e _tl1136311423_)))
                                            (let ((_hd1136511429_
                                                   (##car _e1136411426_))
                                                  (_tl1136611431_
                                                   (##cdr _e1136411426_)))
                                              (if (gx#stx-null? _tl1136611431_)
                                                  (_loop1135311400_
                                                   _lp-tl1135611415_
                                                   (cons _hd1136511429_
                                                         _expr1135711405_)
                                                   (cons _hd1136211421_
                                                         _hd1135811407_))
                                                  (_g1133911374_
                                                   _g1134011377_))))
                                          (_g1133911374_ _g1134011377_))))
                                  (_g1133911374_ _g1134011377_))))
                          (let ((_expr1135911434_ (reverse _expr1135711405_))
                                (_hd1136011436_ (reverse _hd1135811407_)))
                            (if (gx#stx-pair? _tl1134911392_)
                                (let ((_e1136711439_
                                       (gx#stx-e _tl1134911392_)))
                                  (let ((_hd1136811442_ (##car _e1136711439_))
                                        (_tl1136911444_ (##cdr _e1136711439_)))
                                    (if (gx#stx-null? _tl1136911444_)
                                        ((lambda (_L11447_ _L11448_ _L11449_)
                                           (for-each
                                            (lambda (_g1146811470_)
                                              (apply gxc#compile-e
                                                     _g1146811470_
                                                     _args11337_))
                                            (begin
                                              '#!void
                                              (foldr1 (lambda (_g1147211475_
                                                               _g1147311477_)
                                                        (cons _g1147211475_
                                                              _g1147311477_))
                                                      (cons _L11447_ '())
                                                      _L11448_))))
                                         _hd1136811442_
                                         _expr1135911434_
                                         _hd1136011436_)
                                        (_g1133911374_ _g1134011377_))))
                                (_g1133911374_ _g1134011377_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1135311400_
                                                     _target1135011395_
                                                     '()
                                                     '()))
                                                  (_g1133911374_
                                                   _g1134011377_)))))
                                        (_g1133911374_ _g1134011377_))
                                    (_g1133911374_ _g1134011377_))))
                            (_g1133911374_ _g1134011377_))))
                    (_g1133911374_ _g1134011377_)))))
        (_g1133811480_ _stx11336_))))
  (define gxc#collect-body-setq%
    (lambda (_stx11268_ . _args11269_)
      (let* ((_g1127111288_
              (lambda (_g1127211285_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1127211285_)))
             (_g1127011333_
              (lambda (_g1127211291_)
                (if (gx#stx-pair? _g1127211291_)
                    (let ((_e1127511293_ (gx#stx-e _g1127211291_)))
                      (let ((_hd1127611296_ (##car _e1127511293_))
                            (_tl1127711298_ (##cdr _e1127511293_)))
                        (if (gx#stx-pair? _tl1127711298_)
                            (let ((_e1127811301_ (gx#stx-e _tl1127711298_)))
                              (let ((_hd1127911304_ (##car _e1127811301_))
                                    (_tl1128011306_ (##cdr _e1127811301_)))
                                (if (gx#stx-pair? _tl1128011306_)
                                    (let ((_e1128111309_
                                           (gx#stx-e _tl1128011306_)))
                                      (let ((_hd1128211312_
                                             (##car _e1128111309_))
                                            (_tl1128311314_
                                             (##cdr _e1128111309_)))
                                        (if (gx#stx-null? _tl1128311314_)
                                            ((lambda (_L11317_ _L11318_)
                                               (apply gxc#compile-e
                                                      _L11317_
                                                      _args11269_))
                                             _hd1128211312_
                                             _hd1127911304_)
                                            (_g1127111288_ _g1127211291_))))
                                    (_g1127111288_ _g1127211291_))))
                            (_g1127111288_ _g1127211291_))))
                    (_g1127111288_ _g1127211291_)))))
        (_g1127011333_ _stx11268_))))
  (define gxc#collect-operands
    (lambda (_stx11181_ . _args11182_)
      (let* ((_g1118411203_
              (lambda (_g1118511200_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1118511200_)))
             (_g1118311265_
              (lambda (_g1118511206_)
                (if (gx#stx-pair? _g1118511206_)
                    (let ((_e1118711208_ (gx#stx-e _g1118511206_)))
                      (let ((_hd1118811211_ (##car _e1118711208_))
                            (_tl1118911213_ (##cdr _e1118711208_)))
                        (if (gx#stx-pair/null? _tl1118911213_)
                            (if (fx>= (gx#stx-length _tl1118911213_) '0)
                                (let ((_g12057_
                                       (gx#syntax-split-splice
                                        _tl1118911213_
                                        '0)))
                                  (begin
                                    (let ((_g12058_ (values-count _g12057_)))
                                      (if (not (fx= _g12058_ 2))
                                          (error "Context expects 2 values"
                                                 _g12058_)))
                                    (let ((_target1119011216_
                                           (values-ref _g12057_ 0))
                                          (_tl1119211218_
                                           (values-ref _g12057_ 1)))
                                      (if (gx#stx-null? _tl1119211218_)
                                          (letrec ((_loop1119311221_
                                                    (lambda (_hd1119111224_
                                                             _rands1119711226_)
                                                      (if (gx#stx-pair?
                                                           _hd1119111224_)
                                                          (let ((_e1119411229_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd1119111224_)))
                    (let ((_lp-hd1119511232_ (##car _e1119411229_))
                          (_lp-tl1119611234_ (##cdr _e1119411229_)))
                      (_loop1119311221_
                       _lp-tl1119611234_
                       (cons _lp-hd1119511232_ _rands1119711226_))))
                  (let ((_rands1119811237_ (reverse _rands1119711226_)))
                    ((lambda (_L11240_)
                       (for-each
                        (lambda (_g1125311255_)
                          (apply gxc#compile-e _g1125311255_ _args11182_))
                        (begin
                          '#!void
                          (foldr1 (lambda (_g1125711260_ _g1125811262_)
                                    (cons _g1125711260_ _g1125811262_))
                                  '()
                                  _L11240_))))
                     _rands1119811237_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1119311221_
                                             _target1119011216_
                                             '()))
                                          (_g1118411203_ _g1118511206_)))))
                                (_g1118411203_ _g1118511206_))
                            (_g1118411203_ _g1118511206_))))
                    (_g1118411203_ _g1118511206_)))))
        (_g1118311265_ _stx11181_))))
  (define gxc#collect-bindings-define-values%
    (lambda (_stx11112_)
      (let* ((_g1111411131_
              (lambda (_g1111511128_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1111511128_)))
             (_g1111311178_
              (lambda (_g1111511134_)
                (if (gx#stx-pair? _g1111511134_)
                    (let ((_e1111811136_ (gx#stx-e _g1111511134_)))
                      (let ((_hd1111911139_ (##car _e1111811136_))
                            (_tl1112011141_ (##cdr _e1111811136_)))
                        (if (gx#stx-pair? _tl1112011141_)
                            (let ((_e1112111144_ (gx#stx-e _tl1112011141_)))
                              (let ((_hd1112211147_ (##car _e1112111144_))
                                    (_tl1112311149_ (##cdr _e1112111144_)))
                                (if (gx#stx-pair? _tl1112311149_)
                                    (let ((_e1112411152_
                                           (gx#stx-e _tl1112311149_)))
                                      (let ((_hd1112511155_
                                             (##car _e1112411152_))
                                            (_tl1112611157_
                                             (##cdr _e1112411152_)))
                                        (if (gx#stx-null? _tl1112611157_)
                                            ((lambda (_L11160_ _L11161_)
                                               (gx#stx-for-each1
                                                (lambda (_bind11176_)
                                                  (if (gx#identifier?
                                                       _bind11176_)
                                                      (gxc#add-module-binding!
                                                       _bind11176_
                                                       '#f)
                                                      '#!void))
                                                _L11161_))
                                             _hd1112511155_
                                             _hd1112211147_)
                                            (_g1111411131_ _g1111511134_))))
                                    (_g1111411131_ _g1111511134_))))
                            (_g1111411131_ _g1111511134_))))
                    (_g1111411131_ _g1111511134_)))))
        (_g1111311178_ _stx11112_))))
  (define gxc#collect-bindings-define-syntax%
    (lambda (_stx11045_)
      (let* ((_g1104711064_
              (lambda (_g1104811061_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1104811061_)))
             (_g1104611109_
              (lambda (_g1104811067_)
                (if (gx#stx-pair? _g1104811067_)
                    (let ((_e1105111069_ (gx#stx-e _g1104811067_)))
                      (let ((_hd1105211072_ (##car _e1105111069_))
                            (_tl1105311074_ (##cdr _e1105111069_)))
                        (if (gx#stx-pair? _tl1105311074_)
                            (let ((_e1105411077_ (gx#stx-e _tl1105311074_)))
                              (let ((_hd1105511080_ (##car _e1105411077_))
                                    (_tl1105611082_ (##cdr _e1105411077_)))
                                (if (gx#stx-pair? _tl1105611082_)
                                    (let ((_e1105711085_
                                           (gx#stx-e _tl1105611082_)))
                                      (let ((_hd1105811088_
                                             (##car _e1105711085_))
                                            (_tl1105911090_
                                             (##cdr _e1105711085_)))
                                        (if (gx#stx-null? _tl1105911090_)
                                            ((lambda (_L11093_ _L11094_)
                                               (gxc#add-module-binding!
                                                _L11094_
                                                '#t))
                                             _hd1105811088_
                                             _hd1105511080_)
                                            (_g1104711064_ _g1104811067_))))
                                    (_g1104711064_ _g1104811067_))))
                            (_g1104711064_ _g1104811067_))))
                    (_g1104711064_ _g1104811067_)))))
        (_g1104611109_ _stx11045_))))
  (define gxc#lift-modules-module%
    (lambda (_stx10987_ _modules10988_)
      (let* ((_g1099011004_
              (lambda (_g1099111001_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1099111001_)))
             (_g1098911042_
              (lambda (_g1099111007_)
                (if (gx#stx-pair? _g1099111007_)
                    (let ((_e1099411009_ (gx#stx-e _g1099111007_)))
                      (let ((_hd1099511012_ (##car _e1099411009_))
                            (_tl1099611014_ (##cdr _e1099411009_)))
                        (if (gx#stx-pair? _tl1099611014_)
                            (let ((_e1099711017_ (gx#stx-e _tl1099611014_)))
                              (let ((_hd1099811020_ (##car _e1099711017_))
                                    (_tl1099911022_ (##cdr _e1099711017_)))
                                ((lambda (_L11025_ _L11026_)
                                   (let ((_ctx11039_
                                          (gx#syntax-local-e__0 _L11026_)))
                                     (begin
                                       (set-box!
                                        _modules10988_
                                        (cons _ctx11039_
                                              (unbox _modules10988_)))
                                       (call-with-parameters
                                        (lambda ()
                                          (gxc#compile-e
                                           (##structure-ref
                                            _ctx11039_
                                            '11
                                            gx#module-context::t
                                            '#f)
                                           _modules10988_))
                                        gx#current-expander-context
                                        _ctx11039_))))
                                 _tl1099911022_
                                 _hd1099811020_)))
                            (_g1099011004_ _g1099111007_))))
                    (_g1099011004_ _g1099111007_)))))
        (_g1098911042_ _stx10987_))))
  (define gxc#add-module-binding!
    (lambda (_id10981_ _syntax?10982_)
      (let ((_eid10984_
             (##structure-ref
              (gx#resolve-identifier__0 _id10981_)
              '1
              gx#binding::t
              '#f))
            (_ht10985_
             (##structure-ref
              (gxc#current-compile-symbol-table)
              '2
              gxc#symbol-table::t
              '#f)))
        (if (interned-symbol? _eid10984_)
            '#!void
            (table-set!
             _ht10985_
             _eid10984_
             (gx#make-binding-id__1
              (gxc#generate-runtime-gensym-reference__0 _eid10984_)
              _syntax?10982_))))))
  (define gxc#generate-runtime-binding-id
    (lambda (_id10962_)
      (let ((_bind10964_ (gx#resolve-identifier__0 _id10962_)))
        (if _bind10964_
            (let ((_eid10966_
                   (##structure-ref _bind10964_ '1 gx#binding::t '#f))
                  (_ht10967_
                   (##structure-ref
                    (gxc#current-compile-symbol-table)
                    '2
                    gxc#symbol-table::t
                    '#f)))
              (if (interned-symbol? _eid10966_)
                  _eid10966_
                  (let ((_$e10969_ (table-ref _ht10967_ _eid10966_ '#f)))
                    (if _$e10969_
                        (values _$e10969_)
                        (if (##structure-instance-of?
                             _bind10964_
                             'gx#local-binding::t)
                            (let ((_gid10972_
                                   (gxc#generate-runtime-gensym-reference__0
                                    _eid10966_)))
                              (begin
                                (table-set! _ht10967_ _eid10966_ _gid10972_)
                                _gid10972_))
                            (if (##structure-instance-of?
                                 _bind10964_
                                 'gx#module-binding::t)
                                (let ((_gid10979_
                                       (let ((_$e10974_
                                              (##structure-ref
                                               (##structure-ref
                                                _bind10964_
                                                '4
                                                gx#module-binding::t
                                                '#f)
                                               '6
                                               gx#module-context::t
                                               '#f)))
                                         (if _$e10974_
                                             ((lambda (_ns10977_)
                                                (make-symbol
                                                 _ns10977_
                                                 '"#"
                                                 _eid10966_))
                                              _$e10974_)
                                             (gxc#generate-runtime-gensym-reference__0
                                              _eid10966_)))))
                                  (begin
                                    (table-set!
                                     _ht10967_
                                     _eid10966_
                                     _gid10979_)
                                    _gid10979_))
                                (gxc#raise-compile-error
                                 '"Cannot compile reference to uninterned binding"
                                 _id10962_
                                 _eid10966_
                                 _bind10964_)))))))
            (if (interned-symbol? (gx#stx-e _id10962_))
                (gx#stx-e _id10962_)
                (gxc#raise-compile-error
                 '"Cannot compile reference to uninterned identifier"
                 _id10962_))))))
  (define gxc#generate-runtime-binding-id*
    (lambda (_id10960_)
      (if (gx#identifier? _id10960_)
          (gxc#generate-runtime-binding-id _id10960_)
          (gxc#generate-runtime-temporary__0))))
  (begin
    (define gxc#generate-runtime-gensym-reference__opt-lambda10938
      (lambda (_sym10940_ _quote?10941_)
        (let* ((_ht10943_
                (##structure-ref
                 (gxc#current-compile-symbol-table)
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_$e10945_ (table-ref _ht10943_ _sym10940_ '#f)))
          (if _$e10945_
              (values _$e10945_)
              (let ((_g10948_
                     (if _quote?10941_
                         (make-symbol
                          '"__"
                          _sym10940_
                          '"__"
                          (gxc#current-compile-timestamp))
                         (make-symbol '"_" _sym10940_ '"_"))))
                (begin
                  (table-set! _ht10943_ _sym10940_ _g10948_)
                  _g10948_))))))
    (begin
      (define gxc#generate-runtime-gensym-reference__0
        (lambda (_sym10953_)
          (let ((_quote?10955_ '#f))
            (gxc#generate-runtime-gensym-reference__opt-lambda10938
             _sym10953_
             _quote?10955_))))
      (define gxc#generate-runtime-gensym-reference
        (lambda _g12060_
          (let ((_g12059_ (length _g12060_)))
            (cond ((fx= _g12059_ 1)
                   (apply gxc#generate-runtime-gensym-reference__0 _g12060_))
                  ((fx= _g12059_ 2)
                   (apply gxc#generate-runtime-gensym-reference__opt-lambda10938
                          _g12060_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-gensym-reference
                    _g12060_))))))))
  (define gxc#generate-runtime-identifier
    (lambda (_id10937_)
      (gxc#generate-runtime-identifier-key
       (gx#core-identifier-key _id10937_))))
  (define gxc#generate-runtime-identifier-key
    (lambda (_key10897_)
      (if (interned-symbol? _key10897_)
          _key10897_
          (if (uninterned-symbol? _key10897_)
              (gxc#generate-runtime-gensym-reference__0 _key10897_)
              (let* ((_key1089810905_ _key10897_)
                     (_E1090010909_
                      (lambda ()
                        (error '"No clause matching" _key1089810905_)))
                     (_K1090110925_
                      (lambda (_mark10912_ _eid10913_)
                        (let ((_$e10915_
                               (##structure-ref
                                _mark10912_
                                '1
                                gx#expander-mark::t
                                '#f)))
                          (if _$e10915_
                              ((lambda (_ht10918_)
                                 (let ((_$e10920_
                                        (table-ref _ht10918_ _eid10913_ '#f)))
                                   (if _$e10920_
                                       ((lambda (_id10923_)
                                          (if (interned-symbol? _id10923_)
                                              _id10923_
                                              (gxc#generate-runtime-gensym-reference__0
                                               _id10923_)))
                                        _$e10920_)
                                       (gxc#generate-runtime-identifier-key
                                        _eid10913_))))
                               _$e10915_)
                              (gxc#generate-runtime-identifier-key
                               _eid10913_))))))
                (if (##pair? _key1089810905_)
                    (let ((_hd1090210928_ (##car _key1089810905_))
                          (_tl1090310930_ (##cdr _key1089810905_)))
                      (let* ((_eid10933_ _hd1090210928_)
                             (_mark10935_ _tl1090310930_))
                        (_K1090110925_ _mark10935_ _eid10933_)))
                    (_E1090010909_)))))))
  (begin
    (define gxc#generate-runtime-temporary__opt-lambda10882
      (lambda (_top10884_)
        (if _top10884_
            (let ((_ns10886_
                   (##structure-ref
                    (gx#current-expander-context)
                    '6
                    gx#module-context::t
                    '#f))
                  (_phi10887_ (gx#current-expander-phi)))
              (if (fxpositive? _phi10887_)
                  (make-symbol
                   _ns10886_
                   '"["
                   (number->string _phi10887_)
                   '"]#_"
                   (gensym)
                   '"_")
                  (make-symbol _ns10886_ '"#_" (gensym) '"_")))
            (make-symbol '"_" (gensym) '"_"))))
    (begin
      (define gxc#generate-runtime-temporary__0
        (lambda ()
          (let ((_top10893_ '#f))
            (gxc#generate-runtime-temporary__opt-lambda10882 _top10893_))))
      (define gxc#generate-runtime-temporary
        (lambda _g12062_
          (let ((_g12061_ (length _g12062_)))
            (cond ((fx= _g12061_ 0)
                   (apply gxc#generate-runtime-temporary__0 _g12062_))
                  ((fx= _g12061_ 1)
                   (apply gxc#generate-runtime-temporary__opt-lambda10882
                          _g12062_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-temporary
                    _g12062_))))))))
  (define gxc#generate-runtime-empty (lambda (_stx10881_) '(begin)))
  (define gxc#generate-runtime-begin%
    (lambda (_stx10801_)
      (let* ((_g1080310813_
              (lambda (_g1080410810_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1080410810_)))
             (_g1080210878_
              (lambda (_g1080410816_)
                (if (gx#stx-pair? _g1080410816_)
                    (let ((_e1080610818_ (gx#stx-e _g1080410816_)))
                      (let ((_hd1080710821_ (##car _e1080610818_))
                            (_tl1080810823_ (##cdr _e1080610818_)))
                        ((lambda (_L10826_)
                           (let* ((_body10836_
                                   (gx#stx-map1 gxc#compile-e _L10826_))
                                  (_body10875_
                                   (filter (lambda (_stx10838_)
                                             (let* ((_g1084110850_
                                                     (lambda (_g1084210847_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1084210847_)))
                                                    (_g1084010857_
                                                     (lambda (_g1084210853_)
                                                       ((lambda () '#t))))
                                                    (_g1083910872_
                                                     (lambda (_g1084210860_)
                                                       (if (gx#stx-pair?
                                                            _g1084210860_)
                                                           (let ((_e1084310862_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _g1084210860_)))
                     (let ((_hd1084410865_ (##car _e1084310862_))
                           (_tl1084510867_ (##cdr _e1084310862_)))
                       (if (gx#identifier? _hd1084410865_)
                           (if (gx#stx-eq? 'begin _hd1084410865_)
                               (if (gx#stx-null? _tl1084510867_)
                                   ((lambda () '#f))
                                   (_g1084010857_ _g1084210860_))
                               (_g1084010857_ _g1084210860_))
                           (_g1084010857_ _g1084210860_))))
                   (_g1084010857_ _g1084210860_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1083910872_ _stx10838_)))
                                           _body10836_)))
                             (if (fx= (length _body10875_) '1)
                                 (car _body10875_)
                                 (cons 'begin _body10875_))))
                         _tl1080810823_)))
                    (_g1080310813_ _g1080410816_)))))
        (_g1080210878_ _stx10801_))))
  (define gxc#generate-runtime-begin-foreign%
    (lambda (_stx10763_)
      (let* ((_g1076510775_
              (lambda (_g1076610772_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1076610772_)))
             (_g1076410798_
              (lambda (_g1076610778_)
                (if (gx#stx-pair? _g1076610778_)
                    (let ((_e1076810780_ (gx#stx-e _g1076610778_)))
                      (let ((_hd1076910783_ (##car _e1076810780_))
                            (_tl1077010785_ (##cdr _e1076810780_)))
                        ((lambda (_L10788_)
                           (cons 'begin (gx#syntax->datum _L10788_)))
                         _tl1077010785_)))
                    (_g1076510775_ _g1076610778_)))))
        (_g1076410798_ _stx10763_))))
  (define gxc#generate-runtime-begin-annotation%
    (lambda (_stx10696_)
      (let* ((_g1069810715_
              (lambda (_g1069910712_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1069910712_)))
             (_g1069710760_
              (lambda (_g1069910718_)
                (if (gx#stx-pair? _g1069910718_)
                    (let ((_e1070210720_ (gx#stx-e _g1069910718_)))
                      (let ((_hd1070310723_ (##car _e1070210720_))
                            (_tl1070410725_ (##cdr _e1070210720_)))
                        (if (gx#stx-pair? _tl1070410725_)
                            (let ((_e1070510728_ (gx#stx-e _tl1070410725_)))
                              (let ((_hd1070610731_ (##car _e1070510728_))
                                    (_tl1070710733_ (##cdr _e1070510728_)))
                                (if (gx#stx-pair? _tl1070710733_)
                                    (let ((_e1070810736_
                                           (gx#stx-e _tl1070710733_)))
                                      (let ((_hd1070910739_
                                             (##car _e1070810736_))
                                            (_tl1071010741_
                                             (##cdr _e1070810736_)))
                                        (if (gx#stx-null? _tl1071010741_)
                                            ((lambda (_L10744_ _L10745_)
                                               (cons 'begin
                                                     (cons (cons 'declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (map gx#syntax->datum _L10745_))
                   (cons (gxc#compile-e _L10744_) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd1070910739_
                                             _hd1070610731_)
                                            (_g1069810715_ _g1069910718_))))
                                    (_g1069810715_ _g1069910718_))))
                            (_g1069810715_ _g1069910718_))))
                    (_g1069810715_ _g1069910718_)))))
        (_g1069710760_ _stx10696_))))
  (define gxc#generate-runtime-declare%
    (lambda (_stx10658_)
      (let* ((_g1066010670_
              (lambda (_g1066110667_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1066110667_)))
             (_g1065910693_
              (lambda (_g1066110673_)
                (if (gx#stx-pair? _g1066110673_)
                    (let ((_e1066310675_ (gx#stx-e _g1066110673_)))
                      (let ((_hd1066410678_ (##car _e1066310675_))
                            (_tl1066510680_ (##cdr _e1066310675_)))
                        ((lambda (_L10683_)
                           (cons 'declare (map gx#syntax->datum _L10683_)))
                         _tl1066510680_)))
                    (_g1066010670_ _g1066110673_)))))
        (_g1065910693_ _stx10658_))))
  (define gxc#generate-runtime-define-values%
    (lambda (_stx10414_)
      (let* ((_g1041610433_
              (lambda (_g1041710430_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1041710430_)))
             (_g1041510655_
              (lambda (_g1041710436_)
                (if (gx#stx-pair? _g1041710436_)
                    (let ((_e1042010438_ (gx#stx-e _g1041710436_)))
                      (let ((_hd1042110441_ (##car _e1042010438_))
                            (_tl1042210443_ (##cdr _e1042010438_)))
                        (if (gx#stx-pair? _tl1042210443_)
                            (let ((_e1042310446_ (gx#stx-e _tl1042210443_)))
                              (let ((_hd1042410449_ (##car _e1042310446_))
                                    (_tl1042510451_ (##cdr _e1042310446_)))
                                (if (gx#stx-pair? _tl1042510451_)
                                    (let ((_e1042610454_
                                           (gx#stx-e _tl1042510451_)))
                                      (let ((_hd1042710457_
                                             (##car _e1042610454_))
                                            (_tl1042810459_
                                             (##cdr _e1042610454_)))
                                        (if (gx#stx-null? _tl1042810459_)
                                            ((lambda (_L10462_ _L10463_)
                                               (let* ((_g1048010493_
                                                       (lambda (_g1048110490_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1048110490_)))
                                                      (_g1047910607_
                                                       (lambda (_g1048110496_)
                                                         ((lambda ()
                                                            (let* ((_tmp10500_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#generate-runtime-temporary__opt-lambda10882
                             '#t))
                           (_body10604_
                            (let _lp10502_ ((_rest10504_ _L10463_)
                                            (_k10505_ '0)
                                            (_r10506_ '()))
                              (let* ((_g1051110527_
                                      (lambda (_g1051210524_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g1051210524_)))
                                     (_g1051010534_
                                      (lambda (_g1051210530_)
                                        ((lambda () (reverse _r10506_)))))
                                     (_g1050910555_
                                      (lambda (_g1051210537_)
                                        ((lambda (_L10539_)
                                           (if (gx#identifier? _L10539_)
                                               (foldl1 cons
                                                       (cons (cons 'define
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gxc#generate-runtime-binding-id _L10539_)
                                 (cons (cons 'values->list
                                             (cons _tmp10500_
                                                   (cons _k10505_ '())))
                                       '())))
                     '())
               _r10506_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1051010534_ _g1051210537_)))
                                         _g1051210537_)))
                                     (_g1050810579_
                                      (lambda (_g1051210558_)
                                        (if (gx#stx-pair? _g1051210558_)
                                            (let ((_e1051910560_
                                                   (gx#stx-e _g1051210558_)))
                                              (let ((_hd1052010563_
                                                     (##car _e1051910560_))
                                                    (_tl1052110565_
                                                     (##cdr _e1051910560_)))
                                                ((lambda (_L10568_ _L10569_)
                                                   (_lp10502_
                                                    _L10568_
                                                    (fx+ _k10505_ '1)
                                                    (cons (cons 'define
                                                                (cons (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L10569_)
                              (cons (cons 'values-ref
                                          (cons _tmp10500_
                                                (cons _k10505_ '())))
                                    '())))
                  _r10506_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _tl1052110565_
                                                 _hd1052010563_)))
                                            (_g1050910555_ _g1051210558_))))
                                     (_g1050710601_
                                      (lambda (_g1051210582_)
                                        (if (gx#stx-pair? _g1051210582_)
                                            (let ((_e1051410584_
                                                   (gx#stx-e _g1051210582_)))
                                              (let ((_hd1051510587_
                                                     (##car _e1051410584_))
                                                    (_tl1051610589_
                                                     (##cdr _e1051410584_)))
                                                (if (gx#stx-datum?
                                                     _hd1051510587_)
                                                    (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1051510587_)
                        '#f)
                ((lambda (_L10592_)
                   (_lp10502_ _L10592_ (fx+ _k10505_ '1) _r10506_))
                 _tl1051610589_)
                (_g1050810579_ _g1051210582_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1050810579_
                                                     _g1051210582_))))
                                            (_g1050810579_ _g1051210582_)))))
                                (_g1050710601_ _rest10504_)))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _tmp10500_
                                              (cons (gxc#compile-e _L10462_)
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _tmp10500_
                                         _L10463_)
                                        _body10604_))))))))
              (_g1047810637_
               (lambda (_g1048110610_)
                 (if (gx#stx-pair? _g1048110610_)
                     (let ((_e1048610612_ (gx#stx-e _g1048110610_)))
                       (let ((_hd1048710615_ (##car _e1048610612_))
                             (_tl1048810617_ (##cdr _e1048610612_)))
                         (if (gx#stx-null? _tl1048810617_)
                             ((lambda (_L10620_)
                                (let ((_eid10629_
                                       (gxc#generate-runtime-binding-id
                                        _L10620_)))
                                  (begin
                                    (let ((_lambda-expr1063010632_
                                           (gxc#apply-find-lambda-expression
                                            _L10462_)))
                                      (if _lambda-expr1063010632_
                                          (let ((_lambda-expr10635_
                                                 _lambda-expr1063010632_))
                                            (table-set!
                                             (gxc#current-compile-runtime-names)
                                             _lambda-expr10635_
                                             _eid10629_))
                                          '#f))
                                    (cons 'define
                                          (cons _eid10629_
                                                (cons (gxc#compile-e _L10462_)
                                                      '()))))))
                              _hd1048710615_)
                             (_g1047910607_ _g1048110610_))))
                     (_g1047910607_ _g1048110610_))))
              (_g1047710652_
               (lambda (_g1048110640_)
                 (if (gx#stx-pair? _g1048110640_)
                     (let ((_e1048210642_ (gx#stx-e _g1048110640_)))
                       (let ((_hd1048310645_ (##car _e1048210642_))
                             (_tl1048410647_ (##cdr _e1048210642_)))
                         (if (gx#stx-datum? _hd1048310645_)
                             (if (equal? (gx#stx-e _hd1048310645_) '#f)
                                 (if (gx#stx-null? _tl1048410647_)
                                     ((lambda () (gxc#compile-e _L10462_)))
                                     (_g1047810637_ _g1048110640_))
                                 (_g1047810637_ _g1048110640_))
                             (_g1047810637_ _g1048110640_))))
                     (_g1047810637_ _g1048110640_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1047710652_ _L10463_)))
                                             _hd1042710457_
                                             _hd1042410449_)
                                            (_g1041610433_ _g1041710436_))))
                                    (_g1041610433_ _g1041710436_))))
                            (_g1041610433_ _g1041710436_))))
                    (_g1041610433_ _g1041710436_)))))
        (_g1041510655_ _stx10414_))))
  (define gxc#generate-runtime-check-values
    (lambda (_vals10402_ _hd10403_)
      (let* ((_len10405_ (gx#stx-length _hd10403_))
             (_cmp10407_ (if (gx#stx-list? _hd10403_) 'fx= 'fx>=))
             (_errmsg10409_
              (string-append
               (if (gx#stx-list? _hd10403_)
                   '"Context expects "
                   '"Context expects at least ")
               (number->string _len10405_)
               '" values"))
             (_count10411_ (gxc#generate-runtime-temporary__0)))
        (if (if (not (gx#stx-list? _hd10403_)) (fx= _len10405_ '0) '#f)
            '#!void
            (cons 'let
                  (cons (cons (cons _count10411_
                                    (cons (cons 'values-count
                                                (cons _vals10402_ '()))
                                          '()))
                              '())
                        (cons (cons 'if
                                    (cons (cons 'not
                                                (cons (cons _cmp10407_
                                                            (cons _count10411_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _len10405_ '())))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons 'error
                                                      (cons _errmsg10409_
                                                            (cons _count10411_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))))
  (define gxc#generate-runtime-lambda%
    (lambda (_stx10335_)
      (let* ((_g1033710354_
              (lambda (_g1033810351_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1033810351_)))
             (_g1033610399_
              (lambda (_g1033810357_)
                (if (gx#stx-pair? _g1033810357_)
                    (let ((_e1034110359_ (gx#stx-e _g1033810357_)))
                      (let ((_hd1034210362_ (##car _e1034110359_))
                            (_tl1034310364_ (##cdr _e1034110359_)))
                        (if (gx#stx-pair? _tl1034310364_)
                            (let ((_e1034410367_ (gx#stx-e _tl1034310364_)))
                              (let ((_hd1034510370_ (##car _e1034410367_))
                                    (_tl1034610372_ (##cdr _e1034410367_)))
                                (if (gx#stx-pair? _tl1034610372_)
                                    (let ((_e1034710375_
                                           (gx#stx-e _tl1034610372_)))
                                      (let ((_hd1034810378_
                                             (##car _e1034710375_))
                                            (_tl1034910380_
                                             (##cdr _e1034710375_)))
                                        (if (gx#stx-null? _tl1034910380_)
                                            ((lambda (_L10383_ _L10384_)
                                               (cons 'lambda
                                                     (cons (gxc#generate-runtime-lambda-head
                                                            _L10384_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L10383_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd1034810378_
                                             _hd1034510370_)
                                            (_g1033710354_ _g1033810357_))))
                                    (_g1033710354_ _g1033810357_))))
                            (_g1033710354_ _g1033810357_))))
                    (_g1033710354_ _g1033810357_)))))
        (_g1033610399_ _stx10335_))))
  (define gxc#generate-runtime-lambda-head
    (lambda (_hd10333_)
      (gx#stx-map1 gxc#generate-runtime-binding-id* _hd10333_)))
  (define gxc#generate-runtime-case-lambda%
    (lambda (_stx8866_)
      (letrec ((_runtime-identifier=?8868_
                (lambda (_id-stx10324_ _sym10325_)
                  (let ((_bind1032610328_
                         (gx#resolve-identifier__0 _id-stx10324_)))
                    (if _bind1032610328_
                        (let ((_bind10331_ _bind1032610328_))
                          (eq? (##structure-ref
                                _bind10331_
                                '1
                                gx#binding::t
                                '#f)
                               _sym10325_))
                        '#f))))
               (_dispatch-case?8869_
                (lambda (_hd9554_ _body9555_)
                  (let* ((_form9557_ (cons _hd9554_ (cons _body9555_ '())))
                         (_g95629719_
                          (lambda (_g95639716_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g95639716_)))
                         (_g95619726_ (lambda (_g95639722_) ((lambda () '#f))))
                         (_g95609867_
                          (lambda (_g95639729_)
                            (if (gx#stx-pair? _g95639729_)
                                (let ((_e96799731_ (gx#stx-e _g95639729_)))
                                  (let ((_hd96809734_ (##car _e96799731_))
                                        (_tl96819736_ (##cdr _e96799731_)))
                                    (if (gx#stx-pair? _tl96819736_)
                                        (let ((_e96829739_
                                               (gx#stx-e _tl96819736_)))
                                          (let ((_hd96839742_
                                                 (##car _e96829739_))
                                                (_tl96849744_
                                                 (##cdr _e96829739_)))
                                            (if (gx#stx-pair? _hd96839742_)
                                                (let ((_e96859747_
                                                       (gx#stx-e
                                                        _hd96839742_)))
                                                  (let ((_hd96869750_
                                                         (##car _e96859747_))
                                                        (_tl96879752_
                                                         (##cdr _e96859747_)))
                                                    (if (gx#identifier?
                                                         _hd96869750_)
                                                        (if (gx#stx-eq?
                                                             '%#call
                                                             _hd96869750_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl96879752_)
                        (let ((_e96889755_ (gx#stx-e _tl96879752_)))
                          (let ((_hd96899758_ (##car _e96889755_))
                                (_tl96909760_ (##cdr _e96889755_)))
                            (if (gx#stx-pair? _hd96899758_)
                                (let ((_e96919763_ (gx#stx-e _hd96899758_)))
                                  (let ((_hd96929766_ (##car _e96919763_))
                                        (_tl96939768_ (##cdr _e96919763_)))
                                    (if (gx#identifier? _hd96929766_)
                                        (if (gx#stx-eq? '%#ref _hd96929766_)
                                            (if (gx#stx-pair? _tl96939768_)
                                                (let ((_e96949771_
                                                       (gx#stx-e
                                                        _tl96939768_)))
                                                  (let ((_hd96959774_
                                                         (##car _e96949771_))
                                                        (_tl96969776_
                                                         (##cdr _e96949771_)))
                                                    (if (gx#stx-null?
                                                         _tl96969776_)
                                                        (if (gx#stx-pair?
                                                             _tl96909760_)
                                                            (let ((_e96979779_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl96909760_)))
                      (let ((_hd96989782_ (##car _e96979779_))
                            (_tl96999784_ (##cdr _e96979779_)))
                        (if (gx#stx-pair? _hd96989782_)
                            (let ((_e97009787_ (gx#stx-e _hd96989782_)))
                              (let ((_hd97019790_ (##car _e97009787_))
                                    (_tl97029792_ (##cdr _e97009787_)))
                                (if (gx#identifier? _hd97019790_)
                                    (if (gx#stx-eq? '%#ref _hd97019790_)
                                        (if (gx#stx-pair? _tl97029792_)
                                            (let ((_e97039795_
                                                   (gx#stx-e _tl97029792_)))
                                              (let ((_hd97049798_
                                                     (##car _e97039795_))
                                                    (_tl97059800_
                                                     (##cdr _e97039795_)))
                                                (if (gx#stx-null? _tl97059800_)
                                                    (if (gx#stx-pair?
                                                         _tl96999784_)
                                                        (let ((_e97069803_
                                                               (gx#stx-e
                                                                _tl96999784_)))
                                                          (let ((_hd97079806_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e97069803_))
                        (_tl97089808_ (##cdr _e97069803_)))
                    (if (gx#stx-pair? _hd97079806_)
                        (let ((_e97099811_ (gx#stx-e _hd97079806_)))
                          (let ((_hd97109814_ (##car _e97099811_))
                                (_tl97119816_ (##cdr _e97099811_)))
                            (if (gx#identifier? _hd97109814_)
                                (if (gx#stx-eq? '%#ref _hd97109814_)
                                    (if (gx#stx-pair? _tl97119816_)
                                        (let ((_e97129819_
                                               (gx#stx-e _tl97119816_)))
                                          (let ((_hd97139822_
                                                 (##car _e97129819_))
                                                (_tl97149824_
                                                 (##cdr _e97129819_)))
                                            (if (gx#stx-null? _tl97149824_)
                                                (if (gx#stx-null? _tl97089808_)
                                                    (if (gx#stx-null?
                                                         _tl96849744_)
                                                        ((lambda (_L9827_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L9828_
                          _L9829_
                          _L9830_)
                   (if (if (gx#identifier? _L9830_)
                           (if (_runtime-identifier=?8868_ _L9829_ 'apply)
                               (if (gx#free-identifier=? _L9830_ _L9827_)
                                   (not (gx#free-identifier=? _L9828_ _L9830_))
                                   '#f)
                               '#f)
                           '#f)
                       '#t
                       (_g95619726_ _g95639729_)))
                 _hd97139822_
                 _hd97049798_
                 _hd96959774_
                 _hd96809734_)
                (_g95619726_ _g95639729_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g95619726_ _g95639729_))
                                                (_g95619726_ _g95639729_))))
                                        (_g95619726_ _g95639729_))
                                    (_g95619726_ _g95639729_))
                                (_g95619726_ _g95639729_))))
                        (_g95619726_ _g95639729_))))
                (_g95619726_ _g95639729_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g95619726_
                                                     _g95639729_))))
                                            (_g95619726_ _g95639729_))
                                        (_g95619726_ _g95639729_))
                                    (_g95619726_ _g95639729_))))
                            (_g95619726_ _g95639729_))))
                    (_g95619726_ _g95639729_))
                (_g95619726_ _g95639729_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g95619726_ _g95639729_))
                                            (_g95619726_ _g95639729_))
                                        (_g95619726_ _g95639729_))))
                                (_g95619726_ _g95639729_))))
                        (_g95619726_ _g95639729_))
                    (_g95619726_ _g95639729_))
                (_g95619726_ _g95639729_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g95619726_ _g95639729_))))
                                        (_g95619726_ _g95639729_))))
                                (_g95619726_ _g95639729_))))
                         (_g955910127_
                          (lambda (_g95639870_)
                            (if (gx#stx-pair? _g95639870_)
                                (let ((_e96159872_ (gx#stx-e _g95639870_)))
                                  (let ((_hd96169875_ (##car _e96159872_))
                                        (_tl96179877_ (##cdr _e96159872_)))
                                    (if (gx#stx-pair/null? _hd96169875_)
                                        (if (fx>= (gx#stx-length _hd96169875_)
                                                  '0)
                                            (let ((_g12063_
                                                   (gx#syntax-split-splice
                                                    _hd96169875_
                                                    '0)))
                                              (begin
                                                (let ((_g12064_
                                                       (values-count
                                                        _g12063_)))
                                                  (if (not (fx= _g12064_ 2))
                                                      (error "Context expects 2 values"
                                                             _g12064_)))
                                                (let ((_target96189880_
                                                       (values-ref _g12063_ 0))
                                                      (_tl96209882_
                                                       (values-ref
                                                        _g12063_
                                                        1)))
                                                  (letrec ((_loop96219885_
                                                            (lambda (_hd96199888_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _arg96259890_)
                      (if (gx#stx-pair? _hd96199888_)
                          (let ((_e96229893_ (gx#stx-e _hd96199888_)))
                            (let ((_lp-hd96239896_ (##car _e96229893_))
                                  (_lp-tl96249898_ (##cdr _e96229893_)))
                              (_loop96219885_
                               _lp-tl96249898_
                               (cons _lp-hd96239896_ _arg96259890_))))
                          (let ((_arg96269901_ (reverse _arg96259890_)))
                            (if (gx#stx-pair? _tl96179877_)
                                (let ((_e96279904_ (gx#stx-e _tl96179877_)))
                                  (let ((_hd96289907_ (##car _e96279904_))
                                        (_tl96299909_ (##cdr _e96279904_)))
                                    (if (gx#stx-pair? _hd96289907_)
                                        (let ((_e96309912_
                                               (gx#stx-e _hd96289907_)))
                                          (let ((_hd96319915_
                                                 (##car _e96309912_))
                                                (_tl96329917_
                                                 (##cdr _e96309912_)))
                                            (if (gx#identifier? _hd96319915_)
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd96319915_)
                                                    (if (gx#stx-pair?
                                                         _tl96329917_)
                                                        (let ((_e96339920_
                                                               (gx#stx-e
                                                                _tl96329917_)))
                                                          (let ((_hd96349923_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e96339920_))
                        (_tl96359925_ (##cdr _e96339920_)))
                    (if (gx#stx-pair? _hd96349923_)
                        (let ((_e96369928_ (gx#stx-e _hd96349923_)))
                          (let ((_hd96379931_ (##car _e96369928_))
                                (_tl96389933_ (##cdr _e96369928_)))
                            (if (gx#identifier? _hd96379931_)
                                (if (gx#stx-eq? '%#ref _hd96379931_)
                                    (if (gx#stx-pair? _tl96389933_)
                                        (let ((_e96399936_
                                               (gx#stx-e _tl96389933_)))
                                          (let ((_hd96409939_
                                                 (##car _e96399936_))
                                                (_tl96419941_
                                                 (##cdr _e96399936_)))
                                            (if (gx#stx-null? _tl96419941_)
                                                (if (gx#stx-pair? _tl96359925_)
                                                    (let ((_e96429944_
                                                           (gx#stx-e
                                                            _tl96359925_)))
                                                      (let ((_hd96439947_
                                                             (##car _e96429944_))
                                                            (_tl96449949_
                                                             (##cdr _e96429944_)))
                                                        (if (gx#stx-pair?
                                                             _hd96439947_)
                                                            (let ((_e96459952_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd96439947_)))
                      (let ((_hd96469955_ (##car _e96459952_))
                            (_tl96479957_ (##cdr _e96459952_)))
                        (if (gx#identifier? _hd96469955_)
                            (if (gx#stx-eq? '%#ref _hd96469955_)
                                (if (gx#stx-pair? _tl96479957_)
                                    (let ((_e96489960_
                                           (gx#stx-e _tl96479957_)))
                                      (let ((_hd96499963_ (##car _e96489960_))
                                            (_tl96509965_ (##cdr _e96489960_)))
                                        (if (gx#stx-null? _tl96509965_)
                                            (if (gx#stx-pair/null?
                                                 _tl96449949_)
                                                (if (fx>= (gx#stx-length
                                                           _tl96449949_)
                                                          '1)
                                                    (let ((_g12065_
                                                           (gx#syntax-split-splice
                                                            _tl96449949_
                                                            '1)))
                                                      (begin
                                                        (let ((_g12066_
                                                               (values-count
                                                                _g12065_)))
                                                          (if (not (fx= _g12066_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                2))
                      (error "Context expects 2 values" _g12066_)))
                (let ((_target96519968_ (values-ref _g12065_ 0))
                      (_tl96539970_ (values-ref _g12065_ 1)))
                  (if (gx#stx-pair? _tl96539970_)
                      (let ((_e96609973_ (gx#stx-e _tl96539970_)))
                        (let ((_hd96619976_ (##car _e96609973_))
                              (_tl96629978_ (##cdr _e96609973_)))
                          (if (gx#stx-pair? _hd96619976_)
                              (let ((_e96639981_ (gx#stx-e _hd96619976_)))
                                (let ((_hd96649984_ (##car _e96639981_))
                                      (_tl96659986_ (##cdr _e96639981_)))
                                  (if (gx#identifier? _hd96649984_)
                                      (if (gx#stx-eq? '%#ref _hd96649984_)
                                          (if (gx#stx-pair? _tl96659986_)
                                              (let ((_e96669989_
                                                     (gx#stx-e _tl96659986_)))
                                                (let ((_hd96679992_
                                                       (##car _e96669989_))
                                                      (_tl96689994_
                                                       (##cdr _e96669989_)))
                                                  (if (gx#stx-null?
                                                       _tl96689994_)
                                                      (if (gx#stx-null?
                                                           _tl96629978_)
                                                          (letrec ((_loop96549997_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd965210000_ _xarg965810002_)
                              (if (gx#stx-pair? _hd965210000_)
                                  (let ((_e965510005_
                                         (gx#stx-e _hd965210000_)))
                                    (let ((_lp-hd965610008_
                                           (##car _e965510005_))
                                          (_lp-tl965710010_
                                           (##cdr _e965510005_)))
                                      (if (gx#stx-pair? _lp-hd965610008_)
                                          (let ((_e966910013_
                                                 (gx#stx-e _lp-hd965610008_)))
                                            (let ((_hd967010016_
                                                   (##car _e966910013_))
                                                  (_tl967110018_
                                                   (##cdr _e966910013_)))
                                              (if (gx#identifier?
                                                   _hd967010016_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd967010016_)
                                                      (if (gx#stx-pair?
                                                           _tl967110018_)
                                                          (let ((_e967210021_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl967110018_)))
                    (let ((_hd967310024_ (##car _e967210021_))
                          (_tl967410026_ (##cdr _e967210021_)))
                      (if (gx#stx-null? _tl967410026_)
                          (_loop96549997_
                           _lp-tl965710010_
                           (cons _hd967310024_ _xarg965810002_))
                          (_g95609867_ _g95639870_))))
                  (_g95609867_ _g95639870_))
              (_g95609867_ _g95639870_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g95609867_ _g95639870_))))
                                          (_g95609867_ _g95639870_))))
                                  (let ((_xarg965910029_
                                         (reverse _xarg965810002_)))
                                    (if (gx#stx-null? _tl96299909_)
                                        ((lambda (_L10032_
                                                  _L10033_
                                                  _L10034_
                                                  _L10035_
                                                  _L10036_
                                                  _L10037_)
                                           (if (if (gx#identifier-list?
                                                    (begin
                                                      '#!void
                                                      (foldr1 (lambda (_g1008010083_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1008110085_)
                        (cons _g1008010083_ _g1008110085_))
                      '()
                      _L10037_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#identifier?
                                                        _L10036_)
                                                       (if (_runtime-identifier=?8868_
                                                            _L10035_
                                                            'apply)
                                                           (if (fx= (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '#!void
                                      (foldr1 (lambda (_g1008710090_
                                                       _g1008810092_)
                                                (cons _g1008710090_
                                                      _g1008810092_))
                                              '()
                                              _L10037_)))
                            (length (begin
                                      '#!void
                                      (foldr1 (lambda (_g1009410097_
                                                       _g1009510099_)
                                                (cons _g1009410097_
                                                      _g1009510099_))
                                              '()
                                              _L10033_))))
                       (if (andmap gx#free-identifier=?
                                   (begin
                                     '#!void
                                     (foldr1 (lambda (_g1010110104_
                                                      _g1010210106_)
                                               (cons _g1010110104_
                                                     _g1010210106_))
                                             '()
                                             _L10037_))
                                   (begin
                                     '#!void
                                     (foldr1 (lambda (_g1010810111_
                                                      _g1010910113_)
                                               (cons _g1010810111_
                                                     _g1010910113_))
                                             '()
                                             _L10033_)))
                           (if (gx#free-identifier=? _L10036_ _L10032_)
                               (not (find (lambda (_g1011510117_)
                                            (gx#free-identifier=?
                                             _g1011510117_
                                             _L10034_))
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g1011910122_
                                                             _g1012010124_)
                                                      (cons _g1011910122_
                                                            _g1012010124_))
                                                    (cons _L10036_ '())
                                                    _L10037_))))
                               '#f)
                           '#f)
                       '#f)
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#f)
                                               '#t
                                               (_g95609867_ _g95639870_)))
                                         _hd96679992_
                                         _xarg965910029_
                                         _hd96499963_
                                         _hd96409939_
                                         _tl96209882_
                                         _arg96269901_)
                                        (_g95609867_ _g95639870_)))))))
                    (_loop96549997_ _target96519968_ '()))
                  (_g95609867_ _g95639870_))
              (_g95609867_ _g95639870_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g95609867_ _g95639870_))
                                          (_g95609867_ _g95639870_))
                                      (_g95609867_ _g95639870_))))
                              (_g95609867_ _g95639870_))))
                      (_g95609867_ _g95639870_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g95609867_ _g95639870_))
                                                (_g95609867_ _g95639870_))
                                            (_g95609867_ _g95639870_))))
                                    (_g95609867_ _g95639870_))
                                (_g95609867_ _g95639870_))
                            (_g95609867_ _g95639870_))))
                    (_g95609867_ _g95639870_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g95609867_ _g95639870_))
                                                (_g95609867_ _g95639870_))))
                                        (_g95609867_ _g95639870_))
                                    (_g95609867_ _g95639870_))
                                (_g95609867_ _g95639870_))))
                        (_g95609867_ _g95639870_))))
                (_g95609867_ _g95639870_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g95609867_ _g95639870_))
                                                (_g95609867_ _g95639870_))))
                                        (_g95609867_ _g95639870_))))
                                (_g95609867_ _g95639870_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop96219885_
                                                     _target96189880_
                                                     '())))))
                                            (_g95609867_ _g95639870_))
                                        (_g95609867_ _g95639870_))))
                                (_g95609867_ _g95639870_))))
                         (_g955810321_
                          (lambda (_g956310130_)
                            (if (gx#stx-pair? _g956310130_)
                                (let ((_e956710132_ (gx#stx-e _g956310130_)))
                                  (let ((_hd956810135_ (##car _e956710132_))
                                        (_tl956910137_ (##cdr _e956710132_)))
                                    (if (gx#stx-pair/null? _hd956810135_)
                                        (if (fx>= (gx#stx-length _hd956810135_)
                                                  '0)
                                            (let ((_g12067_
                                                   (gx#syntax-split-splice
                                                    _hd956810135_
                                                    '0)))
                                              (begin
                                                (let ((_g12068_
                                                       (values-count
                                                        _g12067_)))
                                                  (if (not (fx= _g12068_ 2))
                                                      (error "Context expects 2 values"
                                                             _g12068_)))
                                                (let ((_target957010140_
                                                       (values-ref _g12067_ 0))
                                                      (_tl957210142_
                                                       (values-ref
                                                        _g12067_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl957210142_)
                                                      (letrec ((_loop957310145_
                                                                (lambda (_hd957110148_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _arg957710150_)
                          (if (gx#stx-pair? _hd957110148_)
                              (let ((_e957410153_ (gx#stx-e _hd957110148_)))
                                (let ((_lp-hd957510156_ (##car _e957410153_))
                                      (_lp-tl957610158_ (##cdr _e957410153_)))
                                  (_loop957310145_
                                   _lp-tl957610158_
                                   (cons _lp-hd957510156_ _arg957710150_))))
                              (let ((_arg957810161_ (reverse _arg957710150_)))
                                (if (gx#stx-pair? _tl956910137_)
                                    (let ((_e957910164_
                                           (gx#stx-e _tl956910137_)))
                                      (let ((_hd958010167_
                                             (##car _e957910164_))
                                            (_tl958110169_
                                             (##cdr _e957910164_)))
                                        (if (gx#stx-pair? _hd958010167_)
                                            (let ((_e958210172_
                                                   (gx#stx-e _hd958010167_)))
                                              (let ((_hd958310175_
                                                     (##car _e958210172_))
                                                    (_tl958410177_
                                                     (##cdr _e958210172_)))
                                                (if (gx#identifier?
                                                     _hd958310175_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd958310175_)
                                                        (if (gx#stx-pair?
                                                             _tl958410177_)
                                                            (let ((_e958510180_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl958410177_)))
                      (let ((_hd958610183_ (##car _e958510180_))
                            (_tl958710185_ (##cdr _e958510180_)))
                        (if (gx#stx-pair? _hd958610183_)
                            (let ((_e958810188_ (gx#stx-e _hd958610183_)))
                              (let ((_hd958910191_ (##car _e958810188_))
                                    (_tl959010193_ (##cdr _e958810188_)))
                                (if (gx#identifier? _hd958910191_)
                                    (if (gx#stx-eq? '%#ref _hd958910191_)
                                        (if (gx#stx-pair? _tl959010193_)
                                            (let ((_e959110196_
                                                   (gx#stx-e _tl959010193_)))
                                              (let ((_hd959210199_
                                                     (##car _e959110196_))
                                                    (_tl959310201_
                                                     (##cdr _e959110196_)))
                                                (if (gx#stx-null?
                                                     _tl959310201_)
                                                    (if (gx#stx-pair/null?
                                                         _tl958710185_)
                                                        (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl958710185_)
                          '0)
                    (let ((_g12069_ (gx#syntax-split-splice _tl958710185_ '0)))
                      (begin
                        (let ((_g12070_ (values-count _g12069_)))
                          (if (not (fx= _g12070_ 2))
                              (error "Context expects 2 values" _g12070_)))
                        (let ((_target959410204_ (values-ref _g12069_ 0))
                              (_tl959610206_ (values-ref _g12069_ 1)))
                          (if (gx#stx-null? _tl959610206_)
                              (letrec ((_loop959710209_
                                        (lambda (_hd959510212_ _xarg960110214_)
                                          (if (gx#stx-pair? _hd959510212_)
                                              (let ((_e959810217_
                                                     (gx#stx-e _hd959510212_)))
                                                (let ((_lp-hd959910220_
                                                       (##car _e959810217_))
                                                      (_lp-tl960010222_
                                                       (##cdr _e959810217_)))
                                                  (if (gx#stx-pair?
                                                       _lp-hd959910220_)
                                                      (let ((_e960310225_
                                                             (gx#stx-e
                                                              _lp-hd959910220_)))
                                                        (let ((_hd960410228_
                                                               (##car _e960310225_))
                                                              (_tl960510230_
                                                               (##cdr _e960310225_)))
                                                          (if (gx#identifier?
                                                               _hd960410228_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#ref
                           _hd960410228_)
                          (if (gx#stx-pair? _tl960510230_)
                              (let ((_e960610233_ (gx#stx-e _tl960510230_)))
                                (let ((_hd960710236_ (##car _e960610233_))
                                      (_tl960810238_ (##cdr _e960610233_)))
                                  (if (gx#stx-null? _tl960810238_)
                                      (_loop959710209_
                                       _lp-tl960010222_
                                       (cons _hd960710236_ _xarg960110214_))
                                      (_g955910127_ _g956310130_))))
                              (_g955910127_ _g956310130_))
                          (_g955910127_ _g956310130_))
                      (_g955910127_ _g956310130_))))
              (_g955910127_ _g956310130_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_xarg960210241_
                                                     (reverse _xarg960110214_)))
                                                (if (gx#stx-null?
                                                     _tl958110169_)
                                                    ((lambda (_L10244_
                                                              _L10245_
                                                              _L10246_)
                                                       (if (if (gx#identifier-list?
                                                                (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr1 (lambda (_g1027410277_ _g1027510279_)
                                    (cons _g1027410277_ _g1027510279_))
                                  '()
                                  _L10246_)))
                       (if (fx= (length (begin
                                          '#!void
                                          (foldr1 (lambda (_g1028110284_
                                                           _g1028210286_)
                                                    (cons _g1028110284_
                                                          _g1028210286_))
                                                  '()
                                                  _L10246_)))
                                (length (begin
                                          '#!void
                                          (foldr1 (lambda (_g1028810291_
                                                           _g1028910293_)
                                                    (cons _g1028810291_
                                                          _g1028910293_))
                                                  '()
                                                  _L10244_))))
                           (if (andmap gx#free-identifier=?
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g1029510298_
                                                          _g1029610300_)
                                                   (cons _g1029510298_
                                                         _g1029610300_))
                                                 '()
                                                 _L10246_))
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g1030210305_
                                                          _g1030310307_)
                                                   (cons _g1030210305_
                                                         _g1030310307_))
                                                 '()
                                                 _L10244_)))
                               (not (find (lambda (_g1030910311_)
                                            (gx#free-identifier=?
                                             _g1030910311_
                                             _L10245_))
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g1031310316_
                                                             _g1031410318_)
                                                      (cons _g1031310316_
                                                            _g1031410318_))
                                                    '()
                                                    _L10246_))))
                               '#f)
                           '#f)
                       '#f)
                   '#t
                   (_g955910127_ _g956310130_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _xarg960210241_
                                                     _hd959210199_
                                                     _arg957810161_)
                                                    (_g955910127_
                                                     _g956310130_)))))))
                                (_loop959710209_ _target959410204_ '()))
                              (_g955910127_ _g956310130_)))))
                    (_g955910127_ _g956310130_))
                (_g955910127_ _g956310130_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g955910127_
                                                     _g956310130_))))
                                            (_g955910127_ _g956310130_))
                                        (_g955910127_ _g956310130_))
                                    (_g955910127_ _g956310130_))))
                            (_g955910127_ _g956310130_))))
                    (_g955910127_ _g956310130_))
                (_g955910127_ _g956310130_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g955910127_
                                                     _g956310130_))))
                                            (_g955910127_ _g956310130_))))
                                    (_g955910127_ _g956310130_)))))))
                (_loop957310145_ _target957010140_ '()))
              (_g955910127_ _g956310130_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g955910127_ _g956310130_))
                                        (_g955910127_ _g956310130_))))
                                (_g955910127_ _g956310130_)))))
                    (_g955810321_ _form9557_))))
               (_dispatch-case-e8870_
                (lambda (_hd9018_ _body9019_)
                  (let* ((_form9021_ (cons _hd9018_ (cons _body9019_ '())))
                         (_g90259149_
                          (lambda (_g90269146_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g90269146_)))
                         (_g90249267_
                          (lambda (_g90269152_)
                            (if (gx#stx-pair? _g90269152_)
                                (let ((_e91159154_ (gx#stx-e _g90269152_)))
                                  (let ((_hd91169157_ (##car _e91159154_))
                                        (_tl91179159_ (##cdr _e91159154_)))
                                    (if (gx#stx-pair? _tl91179159_)
                                        (let ((_e91189162_
                                               (gx#stx-e _tl91179159_)))
                                          (let ((_hd91199165_
                                                 (##car _e91189162_))
                                                (_tl91209167_
                                                 (##cdr _e91189162_)))
                                            (if (gx#stx-pair? _hd91199165_)
                                                (let ((_e91219170_
                                                       (gx#stx-e
                                                        _hd91199165_)))
                                                  (let ((_hd91229173_
                                                         (##car _e91219170_))
                                                        (_tl91239175_
                                                         (##cdr _e91219170_)))
                                                    (if (gx#identifier?
                                                         _hd91229173_)
                                                        (if (gx#stx-eq?
                                                             '%#call
                                                             _hd91229173_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl91239175_)
                        (let ((_e91249178_ (gx#stx-e _tl91239175_)))
                          (let ((_hd91259181_ (##car _e91249178_))
                                (_tl91269183_ (##cdr _e91249178_)))
                            (if (gx#stx-pair? _hd91259181_)
                                (let ((_e91279186_ (gx#stx-e _hd91259181_)))
                                  (let ((_hd91289189_ (##car _e91279186_))
                                        (_tl91299191_ (##cdr _e91279186_)))
                                    (if (gx#identifier? _hd91289189_)
                                        (if (gx#stx-eq? '%#ref _hd91289189_)
                                            (if (gx#stx-pair? _tl91299191_)
                                                (let ((_e91309194_
                                                       (gx#stx-e
                                                        _tl91299191_)))
                                                  (let ((_hd91319197_
                                                         (##car _e91309194_))
                                                        (_tl91329199_
                                                         (##cdr _e91309194_)))
                                                    (if (gx#stx-null?
                                                         _tl91329199_)
                                                        (if (gx#stx-pair?
                                                             _tl91269183_)
                                                            (let ((_e91339202_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl91269183_)))
                      (let ((_hd91349205_ (##car _e91339202_))
                            (_tl91359207_ (##cdr _e91339202_)))
                        (if (gx#stx-pair? _hd91349205_)
                            (let ((_e91369210_ (gx#stx-e _hd91349205_)))
                              (let ((_hd91379213_ (##car _e91369210_))
                                    (_tl91389215_ (##cdr _e91369210_)))
                                (if (gx#identifier? _hd91379213_)
                                    (if (gx#stx-eq? '%#ref _hd91379213_)
                                        (if (gx#stx-pair? _tl91389215_)
                                            (let ((_e91399218_
                                                   (gx#stx-e _tl91389215_)))
                                              (let ((_hd91409221_
                                                     (##car _e91399218_))
                                                    (_tl91419223_
                                                     (##cdr _e91399218_)))
                                                (if (gx#stx-null? _tl91419223_)
                                                    (if (gx#stx-pair?
                                                         _tl91359207_)
                                                        (let ((_e91429226_
                                                               (gx#stx-e
                                                                _tl91359207_)))
                                                          (let ((_hd91439229_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e91429226_))
                        (_tl91449231_ (##cdr _e91429226_)))
                    (if (gx#stx-null? _tl91449231_)
                        (if (gx#stx-null? _tl91209167_)
                            ((lambda (_L9234_ _L9235_ _L9236_)
                               (gxc#compile-e
                                (cons (gx#datum->syntax__0 '#f '%#ref)
                                      (cons _L9234_ '()))))
                             _hd91409221_
                             _hd91319197_
                             _hd91169157_)
                            (_g90259149_ _g90269152_))
                        (_g90259149_ _g90269152_))))
                (_g90259149_ _g90269152_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g90259149_
                                                     _g90269152_))))
                                            (_g90259149_ _g90269152_))
                                        (_g90259149_ _g90269152_))
                                    (_g90259149_ _g90269152_))))
                            (_g90259149_ _g90269152_))))
                    (_g90259149_ _g90269152_))
                (_g90259149_ _g90269152_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g90259149_ _g90269152_))
                                            (_g90259149_ _g90269152_))
                                        (_g90259149_ _g90269152_))))
                                (_g90259149_ _g90269152_))))
                        (_g90259149_ _g90269152_))
                    (_g90259149_ _g90269152_))
                (_g90259149_ _g90269152_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g90259149_ _g90269152_))))
                                        (_g90259149_ _g90269152_))))
                                (_g90259149_ _g90269152_))))
                         (_g90239403_
                          (lambda (_g90269270_)
                            (if (gx#stx-pair? _g90269270_)
                                (let ((_e90769272_ (gx#stx-e _g90269270_)))
                                  (let ((_hd90779275_ (##car _e90769272_))
                                        (_tl90789277_ (##cdr _e90769272_)))
                                    (if (gx#stx-pair/null? _hd90779275_)
                                        (if (fx>= (gx#stx-length _hd90779275_)
                                                  '0)
                                            (let ((_g12071_
                                                   (gx#syntax-split-splice
                                                    _hd90779275_
                                                    '0)))
                                              (begin
                                                (let ((_g12072_
                                                       (values-count
                                                        _g12071_)))
                                                  (if (not (fx= _g12072_ 2))
                                                      (error "Context expects 2 values"
                                                             _g12072_)))
                                                (let ((_target90799280_
                                                       (values-ref _g12071_ 0))
                                                      (_tl90819282_
                                                       (values-ref
                                                        _g12071_
                                                        1)))
                                                  (letrec ((_loop90829285_
                                                            (lambda (_hd90809288_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _arg90869290_)
                      (if (gx#stx-pair? _hd90809288_)
                          (let ((_e90839293_ (gx#stx-e _hd90809288_)))
                            (let ((_lp-hd90849296_ (##car _e90839293_))
                                  (_lp-tl90859298_ (##cdr _e90839293_)))
                              (_loop90829285_
                               _lp-tl90859298_
                               (cons _lp-hd90849296_ _arg90869290_))))
                          (let ((_arg90879301_ (reverse _arg90869290_)))
                            (if (gx#stx-pair? _tl90789277_)
                                (let ((_e90889304_ (gx#stx-e _tl90789277_)))
                                  (let ((_hd90899307_ (##car _e90889304_))
                                        (_tl90909309_ (##cdr _e90889304_)))
                                    (if (gx#stx-pair? _hd90899307_)
                                        (let ((_e90919312_
                                               (gx#stx-e _hd90899307_)))
                                          (let ((_hd90929315_
                                                 (##car _e90919312_))
                                                (_tl90939317_
                                                 (##cdr _e90919312_)))
                                            (if (gx#identifier? _hd90929315_)
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd90929315_)
                                                    (if (gx#stx-pair?
                                                         _tl90939317_)
                                                        (let ((_e90949320_
                                                               (gx#stx-e
                                                                _tl90939317_)))
                                                          (let ((_hd90959323_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e90949320_))
                        (_tl90969325_ (##cdr _e90949320_)))
                    (if (gx#stx-pair? _hd90959323_)
                        (let ((_e90979328_ (gx#stx-e _hd90959323_)))
                          (let ((_hd90989331_ (##car _e90979328_))
                                (_tl90999333_ (##cdr _e90979328_)))
                            (if (gx#identifier? _hd90989331_)
                                (if (gx#stx-eq? '%#ref _hd90989331_)
                                    (if (gx#stx-pair? _tl90999333_)
                                        (let ((_e91009336_
                                               (gx#stx-e _tl90999333_)))
                                          (let ((_hd91019339_
                                                 (##car _e91009336_))
                                                (_tl91029341_
                                                 (##cdr _e91009336_)))
                                            (if (gx#stx-null? _tl91029341_)
                                                (if (gx#stx-pair? _tl90969325_)
                                                    (let ((_e91039344_
                                                           (gx#stx-e
                                                            _tl90969325_)))
                                                      (let ((_hd91049347_
                                                             (##car _e91039344_))
                                                            (_tl91059349_
                                                             (##cdr _e91039344_)))
                                                        (if (gx#stx-pair?
                                                             _hd91049347_)
                                                            (let ((_e91069352_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd91049347_)))
                      (let ((_hd91079355_ (##car _e91069352_))
                            (_tl91089357_ (##cdr _e91069352_)))
                        (if (gx#identifier? _hd91079355_)
                            (if (gx#stx-eq? '%#ref _hd91079355_)
                                (if (gx#stx-pair? _tl91089357_)
                                    (let ((_e91099360_
                                           (gx#stx-e _tl91089357_)))
                                      (let ((_hd91109363_ (##car _e91099360_))
                                            (_tl91119365_ (##cdr _e91099360_)))
                                        (if (gx#stx-null? _tl91119365_)
                                            (if (gx#stx-null? _tl90909309_)
                                                ((lambda (_L9368_
                                                          _L9369_
                                                          _L9370_
                                                          _L9371_)
                                                   (gxc#compile-e
                                                    (cons (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)
                                                          (cons _L9368_ '()))))
                                                 _hd91109363_
                                                 _hd91019339_
                                                 _tl90819282_
                                                 _arg90879301_)
                                                (_g90249267_ _g90269270_))
                                            (_g90249267_ _g90269270_))))
                                    (_g90249267_ _g90269270_))
                                (_g90249267_ _g90269270_))
                            (_g90249267_ _g90269270_))))
                    (_g90249267_ _g90269270_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g90249267_ _g90269270_))
                                                (_g90249267_ _g90269270_))))
                                        (_g90249267_ _g90269270_))
                                    (_g90249267_ _g90269270_))
                                (_g90249267_ _g90269270_))))
                        (_g90249267_ _g90269270_))))
                (_g90249267_ _g90269270_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g90249267_ _g90269270_))
                                                (_g90249267_ _g90269270_))))
                                        (_g90249267_ _g90269270_))))
                                (_g90249267_ _g90269270_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop90829285_
                                                     _target90799280_
                                                     '())))))
                                            (_g90249267_ _g90269270_))
                                        (_g90249267_ _g90269270_))))
                                (_g90249267_ _g90269270_))))
                         (_g90229551_
                          (lambda (_g90269406_)
                            (if (gx#stx-pair? _g90269406_)
                                (let ((_e90309408_ (gx#stx-e _g90269406_)))
                                  (let ((_hd90319411_ (##car _e90309408_))
                                        (_tl90329413_ (##cdr _e90309408_)))
                                    (if (gx#stx-pair/null? _hd90319411_)
                                        (if (fx>= (gx#stx-length _hd90319411_)
                                                  '0)
                                            (let ((_g12073_
                                                   (gx#syntax-split-splice
                                                    _hd90319411_
                                                    '0)))
                                              (begin
                                                (let ((_g12074_
                                                       (values-count
                                                        _g12073_)))
                                                  (if (not (fx= _g12074_ 2))
                                                      (error "Context expects 2 values"
                                                             _g12074_)))
                                                (let ((_target90339416_
                                                       (values-ref _g12073_ 0))
                                                      (_tl90359418_
                                                       (values-ref
                                                        _g12073_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl90359418_)
                                                      (letrec ((_loop90369421_
                                                                (lambda (_hd90349424_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _arg90409426_)
                          (if (gx#stx-pair? _hd90349424_)
                              (let ((_e90379429_ (gx#stx-e _hd90349424_)))
                                (let ((_lp-hd90389432_ (##car _e90379429_))
                                      (_lp-tl90399434_ (##cdr _e90379429_)))
                                  (_loop90369421_
                                   _lp-tl90399434_
                                   (cons _lp-hd90389432_ _arg90409426_))))
                              (let ((_arg90419437_ (reverse _arg90409426_)))
                                (if (gx#stx-pair? _tl90329413_)
                                    (let ((_e90429440_
                                           (gx#stx-e _tl90329413_)))
                                      (let ((_hd90439443_ (##car _e90429440_))
                                            (_tl90449445_ (##cdr _e90429440_)))
                                        (if (gx#stx-pair? _hd90439443_)
                                            (let ((_e90459448_
                                                   (gx#stx-e _hd90439443_)))
                                              (let ((_hd90469451_
                                                     (##car _e90459448_))
                                                    (_tl90479453_
                                                     (##cdr _e90459448_)))
                                                (if (gx#identifier?
                                                     _hd90469451_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd90469451_)
                                                        (if (gx#stx-pair?
                                                             _tl90479453_)
                                                            (let ((_e90489456_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl90479453_)))
                      (let ((_hd90499459_ (##car _e90489456_))
                            (_tl90509461_ (##cdr _e90489456_)))
                        (if (gx#stx-pair? _hd90499459_)
                            (let ((_e90519464_ (gx#stx-e _hd90499459_)))
                              (let ((_hd90529467_ (##car _e90519464_))
                                    (_tl90539469_ (##cdr _e90519464_)))
                                (if (gx#identifier? _hd90529467_)
                                    (if (gx#stx-eq? '%#ref _hd90529467_)
                                        (if (gx#stx-pair? _tl90539469_)
                                            (let ((_e90549472_
                                                   (gx#stx-e _tl90539469_)))
                                              (let ((_hd90559475_
                                                     (##car _e90549472_))
                                                    (_tl90569477_
                                                     (##cdr _e90549472_)))
                                                (if (gx#stx-null? _tl90569477_)
                                                    (if (gx#stx-pair/null?
                                                         _tl90509461_)
                                                        (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl90509461_)
                          '0)
                    (let ((_g12075_ (gx#syntax-split-splice _tl90509461_ '0)))
                      (begin
                        (let ((_g12076_ (values-count _g12075_)))
                          (if (not (fx= _g12076_ 2))
                              (error "Context expects 2 values" _g12076_)))
                        (let ((_target90579480_ (values-ref _g12075_ 0))
                              (_tl90599482_ (values-ref _g12075_ 1)))
                          (if (gx#stx-null? _tl90599482_)
                              (letrec ((_loop90609485_
                                        (lambda (_hd90589488_ _xarg90649490_)
                                          (if (gx#stx-pair? _hd90589488_)
                                              (let ((_e90619493_
                                                     (gx#stx-e _hd90589488_)))
                                                (let ((_lp-hd90629496_
                                                       (##car _e90619493_))
                                                      (_lp-tl90639498_
                                                       (##cdr _e90619493_)))
                                                  (if (gx#stx-pair?
                                                       _lp-hd90629496_)
                                                      (let ((_e90669501_
                                                             (gx#stx-e
                                                              _lp-hd90629496_)))
                                                        (let ((_hd90679504_
                                                               (##car _e90669501_))
                                                              (_tl90689506_
                                                               (##cdr _e90669501_)))
                                                          (if (gx#identifier?
                                                               _hd90679504_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#ref
                           _hd90679504_)
                          (if (gx#stx-pair? _tl90689506_)
                              (let ((_e90699509_ (gx#stx-e _tl90689506_)))
                                (let ((_hd90709512_ (##car _e90699509_))
                                      (_tl90719514_ (##cdr _e90699509_)))
                                  (if (gx#stx-null? _tl90719514_)
                                      (_loop90609485_
                                       _lp-tl90639498_
                                       (cons _hd90709512_ _xarg90649490_))
                                      (_g90239403_ _g90269406_))))
                              (_g90239403_ _g90269406_))
                          (_g90239403_ _g90269406_))
                      (_g90239403_ _g90269406_))))
              (_g90239403_ _g90269406_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_xarg90659517_
                                                     (reverse _xarg90649490_)))
                                                (if (gx#stx-null? _tl90449445_)
                                                    ((lambda (_L9520_
                                                              _L9521_
                                                              _L9522_)
                                                       (gxc#compile-e
                                                        (cons (gx#datum->syntax__0
                                                               '#f
                                                               '%#ref)
                                                              (cons _L9521_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _xarg90659517_
                                                     _hd90559475_
                                                     _arg90419437_)
                                                    (_g90239403_
                                                     _g90269406_)))))))
                                (_loop90609485_ _target90579480_ '()))
                              (_g90239403_ _g90269406_)))))
                    (_g90239403_ _g90269406_))
                (_g90239403_ _g90269406_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g90239403_
                                                     _g90269406_))))
                                            (_g90239403_ _g90269406_))
                                        (_g90239403_ _g90269406_))
                                    (_g90239403_ _g90269406_))))
                            (_g90239403_ _g90269406_))))
                    (_g90239403_ _g90269406_))
                (_g90239403_ _g90269406_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g90239403_
                                                     _g90269406_))))
                                            (_g90239403_ _g90269406_))))
                                    (_g90239403_ _g90269406_)))))))
                (_loop90369421_ _target90339416_ '()))
              (_g90239403_ _g90269406_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g90239403_ _g90269406_))
                                        (_g90239403_ _g90269406_))))
                                (_g90239403_ _g90269406_)))))
                    (_g90229551_ _form9021_))))
               (_generate18871_
                (lambda (_args9006_ _arglen9007_ _hd9008_ _body9009_)
                  (let* ((_len9011_ (gx#stx-length _hd9008_))
                         (_condition9013_
                          (if (gx#stx-list? _hd9008_)
                              (cons 'fx=
                                    (cons _arglen9007_ (cons _len9011_ '())))
                              (if (> _len9011_ '0)
                                  (cons 'fx>=
                                        (cons _arglen9007_
                                              (cons _len9011_ '())))
                                  '#t)))
                         (_dispatch9015_
                          (if (_dispatch-case?8869_ _hd9008_ _body9009_)
                              (_dispatch-case-e8870_ _hd9008_ _body9009_)
                              (cons 'lambda
                                    (cons (gxc#generate-runtime-lambda-head
                                           _hd9008_)
                                          (cons (gxc#compile-e _body9009_)
                                                '()))))))
                    (cons _condition9013_
                          (cons (cons 'apply
                                      (cons _dispatch9015_
                                            (cons _args9006_ '())))
                                '()))))))
        (let* ((_g88738901_
                (lambda (_g88748898_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g88748898_)))
               (_g88729003_
                (lambda (_g88748904_)
                  (if (gx#stx-pair? _g88748904_)
                      (let ((_e88778906_ (gx#stx-e _g88748904_)))
                        (let ((_hd88788909_ (##car _e88778906_))
                              (_tl88798911_ (##cdr _e88778906_)))
                          (if (gx#stx-pair/null? _tl88798911_)
                              (if (fx>= (gx#stx-length _tl88798911_) '0)
                                  (let ((_g12077_
                                         (gx#syntax-split-splice
                                          _tl88798911_
                                          '0)))
                                    (begin
                                      (let ((_g12078_ (values-count _g12077_)))
                                        (if (not (fx= _g12078_ 2))
                                            (error "Context expects 2 values"
                                                   _g12078_)))
                                      (let ((_target88808914_
                                             (values-ref _g12077_ 0))
                                            (_tl88828916_
                                             (values-ref _g12077_ 1)))
                                        (if (gx#stx-null? _tl88828916_)
                                            (letrec ((_loop88838919_
                                                      (lambda (_hd88818922_
                                                               _body88878924_
                                                               _hd88888926_)
                                                        (if (gx#stx-pair?
                                                             _hd88818922_)
                                                            (let ((_e88848929_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd88818922_)))
                      (let ((_lp-hd88858932_ (##car _e88848929_))
                            (_lp-tl88868934_ (##cdr _e88848929_)))
                        (if (gx#stx-pair? _lp-hd88858932_)
                            (let ((_e88918937_ (gx#stx-e _lp-hd88858932_)))
                              (let ((_hd88928940_ (##car _e88918937_))
                                    (_tl88938942_ (##cdr _e88918937_)))
                                (if (gx#stx-pair? _tl88938942_)
                                    (let ((_e88948945_
                                           (gx#stx-e _tl88938942_)))
                                      (let ((_hd88958948_ (##car _e88948945_))
                                            (_tl88968950_ (##cdr _e88948945_)))
                                        (if (gx#stx-null? _tl88968950_)
                                            (_loop88838919_
                                             _lp-tl88868934_
                                             (cons _hd88958948_ _body88878924_)
                                             (cons _hd88928940_ _hd88888926_))
                                            (_g88738901_ _g88748904_))))
                                    (_g88738901_ _g88748904_))))
                            (_g88738901_ _g88748904_))))
                    (let ((_body88898953_ (reverse _body88878924_))
                          (_hd88908955_ (reverse _hd88888926_)))
                      ((lambda (_L8958_ _L8959_)
                         (let ((_args8978_ (gxc#generate-runtime-temporary__0))
                               (_arglen8979_
                                (gxc#generate-runtime-temporary__0))
                               (_name8980_
                                (let ((_$e8975_
                                       (table-ref
                                        (gxc#current-compile-runtime-names)
                                        _stx8866_
                                        '#f)))
                                  (if _$e8975_
                                      _$e8975_
                                      ''case-lambda-dispatch))))
                           (cons 'lambda
                                 (cons _args8978_
                                       (cons (cons 'let
                                                   (cons (cons (cons _arglen8979_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons 'length (cons _args8978_ '())) '()))
                       '())
                 (cons (cons 'cond
                             (foldr1 cons
                                     (cons (cons 'else
                                                 (cons (cons '##raise-wrong-number-of-arguments-exception
                                                             (cons _name8980_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _args8978_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (map (lambda (_g89818984_ _g89828986_)
                                            (_generate18871_
                                             _args8978_
                                             _arglen8979_
                                             _g89818984_
                                             _g89828986_))
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g89888991_
                                                             _g89898993_)
                                                      (cons _g89888991_
                                                            _g89898993_))
                                                    '()
                                                    _L8959_))
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g89958998_
                                                             _g89969000_)
                                                      (cons _g89958998_
                                                            _g89969000_))
                                                    '()
                                                    _L8958_)))))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))))
                       _body88898953_
                       _hd88908955_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop88838919_
                                               _target88808914_
                                               '()
                                               '()))
                                            (_g88738901_ _g88748904_)))))
                                  (_g88738901_ _g88748904_))
                              (_g88738901_ _g88748904_))))
                      (_g88738901_ _g88748904_)))))
          (_g88729003_ _stx8866_)))))
  (begin
    (define gxc#generate-runtime-let-values%__opt-lambda7929
      (lambda (_stx7931_ _compiled-body?7932_)
        (letrec ((_generate-simple7934_
                  (lambda (_hd8853_ _body8854_)
                    (_coalesce-let*7935_
                     (gxc#generate-runtime-simple-let
                      'let
                      _hd8853_
                      _body8854_
                      _compiled-body?7932_))))
                 (_coalesce-let*7935_
                  (lambda (_code8237_)
                    (let* ((_g82428377_
                            (lambda (_g82438374_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g82438374_)))
                           (_g82418384_
                            (lambda (_g82438380_) ((lambda () _code8237_))))
                           (_g82408554_
                            (lambda (_g82438387_)
                              (if (gx#stx-pair? _g82438387_)
                                  (let ((_e83318389_ (gx#stx-e _g82438387_)))
                                    (let ((_hd83328392_ (##car _e83318389_))
                                          (_tl83338394_ (##cdr _e83318389_)))
                                      (if (gx#identifier? _hd83328392_)
                                          (if (gx#stx-eq? 'let _hd83328392_)
                                              (if (gx#stx-pair? _tl83338394_)
                                                  (let ((_e83348397_
                                                         (gx#stx-e
                                                          _tl83338394_)))
                                                    (let ((_hd83358400_
                                                           (##car _e83348397_))
                                                          (_tl83368402_
                                                           (##cdr _e83348397_)))
                                                      (if (gx#stx-pair?
                                                           _hd83358400_)
                                                          (let ((_e83378405_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd83358400_)))
                    (let ((_hd83388408_ (##car _e83378405_))
                          (_tl83398410_ (##cdr _e83378405_)))
                      (if (gx#stx-pair? _hd83388408_)
                          (let ((_e83408413_ (gx#stx-e _hd83388408_)))
                            (let ((_hd83418416_ (##car _e83408413_))
                                  (_tl83428418_ (##cdr _e83408413_)))
                              (if (gx#stx-pair? _tl83428418_)
                                  (let ((_e83438421_ (gx#stx-e _tl83428418_)))
                                    (let ((_hd83448424_ (##car _e83438421_))
                                          (_tl83458426_ (##cdr _e83438421_)))
                                      (if (gx#stx-null? _tl83458426_)
                                          (if (gx#stx-null? _tl83398410_)
                                              (if (gx#stx-pair? _tl83368402_)
                                                  (let ((_e83468429_
                                                         (gx#stx-e
                                                          _tl83368402_)))
                                                    (let ((_hd83478432_
                                                           (##car _e83468429_))
                                                          (_tl83488434_
                                                           (##cdr _e83468429_)))
                                                      (if (gx#stx-pair?
                                                           _hd83478432_)
                                                          (let ((_e83498437_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd83478432_)))
                    (let ((_hd83508440_ (##car _e83498437_))
                          (_tl83518442_ (##cdr _e83498437_)))
                      (if (gx#identifier? _hd83508440_)
                          (if (gx#stx-eq? 'let* _hd83508440_)
                              (if (gx#stx-pair? _tl83518442_)
                                  (let ((_e83528445_ (gx#stx-e _tl83518442_)))
                                    (let ((_hd83538448_ (##car _e83528445_))
                                          (_tl83548450_ (##cdr _e83528445_)))
                                      (if (gx#stx-pair/null? _hd83538448_)
                                          (if (fx>= (gx#stx-length
                                                     _hd83538448_)
                                                    '0)
                                              (let ((_g12079_
                                                     (gx#syntax-split-splice
                                                      _hd83538448_
                                                      '0)))
                                                (begin
                                                  (let ((_g12080_
                                                         (values-count
                                                          _g12079_)))
                                                    (if (not (fx= _g12080_ 2))
                                                        (error "Context expects 2 values"
                                                               _g12080_)))
                                                  (let ((_target83558453_
                                                         (values-ref
                                                          _g12079_
                                                          0))
                                                        (_tl83578455_
                                                         (values-ref
                                                          _g12079_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl83578455_)
                                                        (letrec ((_loop83588458_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd83568461_ _bind83628463_)
                            (if (gx#stx-pair? _hd83568461_)
                                (let ((_e83598466_ (gx#stx-e _hd83568461_)))
                                  (let ((_lp-hd83608469_ (##car _e83598466_))
                                        (_lp-tl83618471_ (##cdr _e83598466_)))
                                    (_loop83588458_
                                     _lp-tl83618471_
                                     (cons _lp-hd83608469_ _bind83628463_))))
                                (let ((_bind83638474_
                                       (reverse _bind83628463_)))
                                  (if (gx#stx-pair/null? _tl83548450_)
                                      (if (fx>= (gx#stx-length _tl83548450_)
                                                '0)
                                          (let ((_g12081_
                                                 (gx#syntax-split-splice
                                                  _tl83548450_
                                                  '0)))
                                            (begin
                                              (let ((_g12082_
                                                     (values-count _g12081_)))
                                                (if (not (fx= _g12082_ 2))
                                                    (error "Context expects 2 values"
                                                           _g12082_)))
                                              (let ((_target83648477_
                                                     (values-ref _g12081_ 0))
                                                    (_tl83668479_
                                                     (values-ref _g12081_ 1)))
                                                (if (gx#stx-null? _tl83668479_)
                                                    (letrec ((_loop83678482_
                                                              (lambda (_hd83658485_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body83718487_)
                        (if (gx#stx-pair? _hd83658485_)
                            (let ((_e83688490_ (gx#stx-e _hd83658485_)))
                              (let ((_lp-hd83698493_ (##car _e83688490_))
                                    (_lp-tl83708495_ (##cdr _e83688490_)))
                                (_loop83678482_
                                 _lp-tl83708495_
                                 (cons _lp-hd83698493_ _body83718487_))))
                            (let ((_body83728498_ (reverse _body83718487_)))
                              (if (gx#stx-null? _tl83488434_)
                                  ((lambda (_L8501_ _L8502_ _L8503_ _L8504_)
                                     (cons 'let*
                                           (cons (cons (cons _L8504_
                                                             (cons _L8503_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (begin
                 '#!void
                 (foldr1 (lambda (_g85398542_ _g85408544_)
                           (cons _g85398542_ _g85408544_))
                         '()
                         _L8502_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g85468549_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g85478551_)
                     (cons _g85468549_ _g85478551_))
                   '()
                   _L8501_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _body83728498_
                                   _bind83638474_
                                   _hd83448424_
                                   _hd83418416_)
                                  (_g82418384_ _g82438387_)))))))
              (_loop83678482_ _target83648477_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g82418384_
                                                     _g82438387_)))))
                                          (_g82418384_ _g82438387_))
                                      (_g82418384_ _g82438387_)))))))
                  (_loop83588458_ _target83558453_ '()))
                (_g82418384_ _g82438387_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g82418384_ _g82438387_))
                                          (_g82418384_ _g82438387_))))
                                  (_g82418384_ _g82438387_))
                              (_g82418384_ _g82438387_))
                          (_g82418384_ _g82438387_))))
                  (_g82418384_ _g82438387_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g82418384_ _g82438387_))
                                              (_g82418384_ _g82438387_))
                                          (_g82418384_ _g82438387_))))
                                  (_g82418384_ _g82438387_))))
                          (_g82418384_ _g82438387_))))
                  (_g82418384_ _g82438387_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g82418384_ _g82438387_))
                                              (_g82418384_ _g82438387_))
                                          (_g82418384_ _g82438387_))))
                                  (_g82418384_ _g82438387_))))
                           (_g82398719_
                            (lambda (_g82438557_)
                              (if (gx#stx-pair? _g82438557_)
                                  (let ((_e82858559_ (gx#stx-e _g82438557_)))
                                    (let ((_hd82868562_ (##car _e82858559_))
                                          (_tl82878564_ (##cdr _e82858559_)))
                                      (if (gx#identifier? _hd82868562_)
                                          (if (gx#stx-eq? 'let _hd82868562_)
                                              (if (gx#stx-pair? _tl82878564_)
                                                  (let ((_e82888567_
                                                         (gx#stx-e
                                                          _tl82878564_)))
                                                    (let ((_hd82898570_
                                                           (##car _e82888567_))
                                                          (_tl82908572_
                                                           (##cdr _e82888567_)))
                                                      (if (gx#stx-pair?
                                                           _hd82898570_)
                                                          (let ((_e82918575_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd82898570_)))
                    (let ((_hd82928578_ (##car _e82918575_))
                          (_tl82938580_ (##cdr _e82918575_)))
                      (if (gx#stx-pair? _hd82928578_)
                          (let ((_e82948583_ (gx#stx-e _hd82928578_)))
                            (let ((_hd82958586_ (##car _e82948583_))
                                  (_tl82968588_ (##cdr _e82948583_)))
                              (if (gx#stx-pair? _tl82968588_)
                                  (let ((_e82978591_ (gx#stx-e _tl82968588_)))
                                    (let ((_hd82988594_ (##car _e82978591_))
                                          (_tl82998596_ (##cdr _e82978591_)))
                                      (if (gx#stx-null? _tl82998596_)
                                          (if (gx#stx-null? _tl82938580_)
                                              (if (gx#stx-pair? _tl82908572_)
                                                  (let ((_e83008599_
                                                         (gx#stx-e
                                                          _tl82908572_)))
                                                    (let ((_hd83018602_
                                                           (##car _e83008599_))
                                                          (_tl83028604_
                                                           (##cdr _e83008599_)))
                                                      (if (gx#stx-pair?
                                                           _hd83018602_)
                                                          (let ((_e83038607_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd83018602_)))
                    (let ((_hd83048610_ (##car _e83038607_))
                          (_tl83058612_ (##cdr _e83038607_)))
                      (if (gx#identifier? _hd83048610_)
                          (if (gx#stx-eq? 'let _hd83048610_)
                              (if (gx#stx-pair? _tl83058612_)
                                  (let ((_e83068615_ (gx#stx-e _tl83058612_)))
                                    (let ((_hd83078618_ (##car _e83068615_))
                                          (_tl83088620_ (##cdr _e83068615_)))
                                      (if (gx#stx-pair? _hd83078618_)
                                          (let ((_e83098623_
                                                 (gx#stx-e _hd83078618_)))
                                            (let ((_hd83108626_
                                                   (##car _e83098623_))
                                                  (_tl83118628_
                                                   (##cdr _e83098623_)))
                                              (if (gx#stx-pair? _hd83108626_)
                                                  (let ((_e83128631_
                                                         (gx#stx-e
                                                          _hd83108626_)))
                                                    (let ((_hd83138634_
                                                           (##car _e83128631_))
                                                          (_tl83148636_
                                                           (##cdr _e83128631_)))
                                                      (if (gx#stx-pair?
                                                           _tl83148636_)
                                                          (let ((_e83158639_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl83148636_)))
                    (let ((_hd83168642_ (##car _e83158639_))
                          (_tl83178644_ (##cdr _e83158639_)))
                      (if (gx#stx-null? _tl83178644_)
                          (if (gx#stx-null? _tl83118628_)
                              (if (gx#stx-pair/null? _tl83088620_)
                                  (if (fx>= (gx#stx-length _tl83088620_) '0)
                                      (let ((_g12083_
                                             (gx#syntax-split-splice
                                              _tl83088620_
                                              '0)))
                                        (begin
                                          (let ((_g12084_
                                                 (values-count _g12083_)))
                                            (if (not (fx= _g12084_ 2))
                                                (error "Context expects 2 values"
                                                       _g12084_)))
                                          (let ((_target83188647_
                                                 (values-ref _g12083_ 0))
                                                (_tl83208649_
                                                 (values-ref _g12083_ 1)))
                                            (if (gx#stx-null? _tl83208649_)
                                                (letrec ((_loop83218652_
                                                          (lambda (_hd83198655_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body83258657_)
                    (if (gx#stx-pair? _hd83198655_)
                        (let ((_e83228660_ (gx#stx-e _hd83198655_)))
                          (let ((_lp-hd83238663_ (##car _e83228660_))
                                (_lp-tl83248665_ (##cdr _e83228660_)))
                            (_loop83218652_
                             _lp-tl83248665_
                             (cons _lp-hd83238663_ _body83258657_))))
                        (let ((_body83268668_ (reverse _body83258657_)))
                          (if (gx#stx-null? _tl83028604_)
                              ((lambda (_L8671_
                                        _L8672_
                                        _L8673_
                                        _L8674_
                                        _L8675_)
                                 (cons 'let*
                                       (cons (cons (cons _L8675_
                                                         (cons _L8674_ '()))
                                                   (cons (cons _L8673_
                                                               (cons _L8672_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (begin
                                               '#!void
                                               (foldr1 (lambda (_g87118714_
                                                                _g87128716_)
                                                         (cons _g87118714_
                                                               _g87128716_))
                                                       '()
                                                       _L8671_)))))
                               _body83268668_
                               _hd83168642_
                               _hd83138634_
                               _hd82988594_
                               _hd82958586_)
                              (_g82408554_ _g82438557_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop83218652_
                                                   _target83188647_
                                                   '()))
                                                (_g82408554_ _g82438557_)))))
                                      (_g82408554_ _g82438557_))
                                  (_g82408554_ _g82438557_))
                              (_g82408554_ _g82438557_))
                          (_g82408554_ _g82438557_))))
                  (_g82408554_ _g82438557_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g82408554_ _g82438557_))))
                                          (_g82408554_ _g82438557_))))
                                  (_g82408554_ _g82438557_))
                              (_g82408554_ _g82438557_))
                          (_g82408554_ _g82438557_))))
                  (_g82408554_ _g82438557_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g82408554_ _g82438557_))
                                              (_g82408554_ _g82438557_))
                                          (_g82408554_ _g82438557_))))
                                  (_g82408554_ _g82438557_))))
                          (_g82408554_ _g82438557_))))
                  (_g82408554_ _g82438557_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g82408554_ _g82438557_))
                                              (_g82408554_ _g82438557_))
                                          (_g82408554_ _g82438557_))))
                                  (_g82408554_ _g82438557_))))
                           (_g82388850_
                            (lambda (_g82438722_)
                              (if (gx#stx-pair? _g82438722_)
                                  (let ((_e82478724_ (gx#stx-e _g82438722_)))
                                    (let ((_hd82488727_ (##car _e82478724_))
                                          (_tl82498729_ (##cdr _e82478724_)))
                                      (if (gx#identifier? _hd82488727_)
                                          (if (gx#stx-eq? 'let _hd82488727_)
                                              (if (gx#stx-pair? _tl82498729_)
                                                  (let ((_e82508732_
                                                         (gx#stx-e
                                                          _tl82498729_)))
                                                    (let ((_hd82518735_
                                                           (##car _e82508732_))
                                                          (_tl82528737_
                                                           (##cdr _e82508732_)))
                                                      (if (gx#stx-pair?
                                                           _hd82518735_)
                                                          (let ((_e82538740_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd82518735_)))
                    (let ((_hd82548743_ (##car _e82538740_))
                          (_tl82558745_ (##cdr _e82538740_)))
                      (if (gx#stx-pair? _hd82548743_)
                          (let ((_e82568748_ (gx#stx-e _hd82548743_)))
                            (let ((_hd82578751_ (##car _e82568748_))
                                  (_tl82588753_ (##cdr _e82568748_)))
                              (if (gx#stx-pair? _tl82588753_)
                                  (let ((_e82598756_ (gx#stx-e _tl82588753_)))
                                    (let ((_hd82608759_ (##car _e82598756_))
                                          (_tl82618761_ (##cdr _e82598756_)))
                                      (if (gx#stx-null? _tl82618761_)
                                          (if (gx#stx-null? _tl82558745_)
                                              (if (gx#stx-pair? _tl82528737_)
                                                  (let ((_e82628764_
                                                         (gx#stx-e
                                                          _tl82528737_)))
                                                    (let ((_hd82638767_
                                                           (##car _e82628764_))
                                                          (_tl82648769_
                                                           (##cdr _e82628764_)))
                                                      (if (gx#stx-pair?
                                                           _hd82638767_)
                                                          (let ((_e82658772_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd82638767_)))
                    (let ((_hd82668775_ (##car _e82658772_))
                          (_tl82678777_ (##cdr _e82658772_)))
                      (if (gx#identifier? _hd82668775_)
                          (if (gx#stx-eq? 'let _hd82668775_)
                              (if (gx#stx-pair? _tl82678777_)
                                  (let ((_e82688780_ (gx#stx-e _tl82678777_)))
                                    (let ((_hd82698783_ (##car _e82688780_))
                                          (_tl82708785_ (##cdr _e82688780_)))
                                      (if (gx#stx-null? _hd82698783_)
                                          (if (gx#stx-pair/null? _tl82708785_)
                                              (if (fx>= (gx#stx-length
                                                         _tl82708785_)
                                                        '0)
                                                  (let ((_g12085_
                                                         (gx#syntax-split-splice
                                                          _tl82708785_
                                                          '0)))
                                                    (begin
                                                      (let ((_g12086_
                                                             (values-count
                                                              _g12085_)))
                                                        (if (not (fx= _g12086_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g12086_)))
              (let ((_target82718788_ (values-ref _g12085_ 0))
                    (_tl82738790_ (values-ref _g12085_ 1)))
                (if (gx#stx-null? _tl82738790_)
                    (letrec ((_loop82748793_
                              (lambda (_hd82728796_ _body82788798_)
                                (if (gx#stx-pair? _hd82728796_)
                                    (let ((_e82758801_
                                           (gx#stx-e _hd82728796_)))
                                      (let ((_lp-hd82768804_
                                             (##car _e82758801_))
                                            (_lp-tl82778806_
                                             (##cdr _e82758801_)))
                                        (_loop82748793_
                                         _lp-tl82778806_
                                         (cons _lp-hd82768804_
                                               _body82788798_))))
                                    (let ((_body82798809_
                                           (reverse _body82788798_)))
                                      (if (gx#stx-null? _tl82648769_)
                                          ((lambda (_L8812_ _L8813_ _L8814_)
                                             (cons 'let
                                                   (cons (cons (cons _L8814_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L8813_ '()))
                       '())
                 (begin
                   '#!void
                   (foldr1 (lambda (_g88428845_ _g88438847_)
                             (cons _g88428845_ _g88438847_))
                           '()
                           _L8812_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _body82798809_
                                           _hd82608759_
                                           _hd82578751_)
                                          (_g82398719_ _g82438722_)))))))
                      (_loop82748793_ _target82718788_ '()))
                    (_g82398719_ _g82438722_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g82398719_ _g82438722_))
                                              (_g82398719_ _g82438722_))
                                          (_g82398719_ _g82438722_))))
                                  (_g82398719_ _g82438722_))
                              (_g82398719_ _g82438722_))
                          (_g82398719_ _g82438722_))))
                  (_g82398719_ _g82438722_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g82398719_ _g82438722_))
                                              (_g82398719_ _g82438722_))
                                          (_g82398719_ _g82438722_))))
                                  (_g82398719_ _g82438722_))))
                          (_g82398719_ _g82438722_))))
                  (_g82398719_ _g82438722_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g82398719_ _g82438722_))
                                              (_g82398719_ _g82438722_))
                                          (_g82398719_ _g82438722_))))
                                  (_g82398719_ _g82438722_)))))
                      (_g82388850_ _code8237_))))
                 (_generate-values7936_
                  (lambda (_hd8050_ _body8051_)
                    (let _lp8053_ ((_rest8055_ _hd8050_)
                                   (_bind8056_ '())
                                   (_check8057_ '())
                                   (_post8058_ '()))
                      (let* ((_g80618072_
                              (lambda (_g80628069_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g80628069_)))
                             (_g80608086_
                              (lambda (_g80628075_)
                                ((lambda ()
                                   (let* ((_body8079_
                                           (if _compiled-body?7932_
                                               _body8051_
                                               (gxc#compile-e _body8051_)))
                                          (_body8081_
                                           (_generate-values-post7937_
                                            _post8058_
                                            _body8079_))
                                          (_body8083_
                                           (_generate-values-check7938_
                                            _check8057_
                                            _body8081_)))
                                     (cons 'let
                                           (cons (reverse _bind8056_)
                                                 (cons _body8083_ '()))))))))
                             (_g80598234_
                              (lambda (_g80628089_)
                                (if (gx#stx-pair? _g80628089_)
                                    (let ((_e80658091_ (gx#stx-e _g80628089_)))
                                      (let ((_hd80668094_ (##car _e80658091_))
                                            (_tl80678096_ (##cdr _e80658091_)))
                                        ((lambda (_L8099_ _L8100_)
                                           (let* ((_g81158140_
                                                   (lambda (_g81168137_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g81168137_)))
                                                  (_g81148184_
                                                   (lambda (_g81168143_)
                                                     (if (gx#stx-pair?
                                                          _g81168143_)
                                                         (let ((_e81308145_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g81168143_)))
                   (let ((_hd81318148_ (##car _e81308145_))
                         (_tl81328150_ (##cdr _e81308145_)))
                     (if (gx#stx-pair? _tl81328150_)
                         (let ((_e81338153_ (gx#stx-e _tl81328150_)))
                           (let ((_hd81348156_ (##car _e81338153_))
                                 (_tl81358158_ (##cdr _e81338153_)))
                             (if (gx#stx-null? _tl81358158_)
                                 ((lambda (_L8161_ _L8162_)
                                    (let* ((_vals8175_
                                            (gxc#generate-runtime-temporary__0))
                                           (_expr8177_ (gxc#compile-e _L8161_))
                                           (_check-values8179_
                                            (gxc#generate-runtime-check-values
                                             _vals8175_
                                             _L8162_))
                                           (_refs8181_
                                            (gxc#generate-runtime-let-values-bind
                                             _vals8175_
                                             _L8162_)))
                                      (_lp8053_
                                       _L8099_
                                       (cons (cons _vals8175_
                                                   (cons _expr8177_ '()))
                                             _bind8056_)
                                       (cons _check-values8179_ _check8057_)
                                       (cons _refs8181_ _post8058_))))
                                  _hd81348156_
                                  _hd81318148_)
                                 (_g81158140_ _g81168143_))))
                         (_g81158140_ _g81168143_))))
                 (_g81158140_ _g81168143_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g81138231_
                                                   (lambda (_g81168187_)
                                                     (if (gx#stx-pair?
                                                          _g81168187_)
                                                         (let ((_e81198189_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g81168187_)))
                   (let ((_hd81208192_ (##car _e81198189_))
                         (_tl81218194_ (##cdr _e81198189_)))
                     (if (gx#stx-pair? _hd81208192_)
                         (let ((_e81228197_ (gx#stx-e _hd81208192_)))
                           (let ((_hd81238200_ (##car _e81228197_))
                                 (_tl81248202_ (##cdr _e81228197_)))
                             (if (gx#stx-null? _tl81248202_)
                                 (if (gx#stx-pair? _tl81218194_)
                                     (let ((_e81258205_
                                            (gx#stx-e _tl81218194_)))
                                       (let ((_hd81268208_ (##car _e81258205_))
                                             (_tl81278210_
                                              (##cdr _e81258205_)))
                                         (if (gx#stx-null? _tl81278210_)
                                             ((lambda (_L8213_ _L8214_)
                                                (let ((_eid8228_
                                                       (gxc#generate-runtime-binding-id*
                                                        _L8214_))
                                                      (_expr8229_
                                                       (gxc#compile-e
                                                        _L8213_)))
                                                  (_lp8053_
                                                   _L8099_
                                                   (cons (cons _eid8228_
                                                               (cons _expr8229_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 _bind8056_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _check8057_
                                                   _post8058_)))
                                              _hd81268208_
                                              _hd81238200_)
                                             (_g81148184_ _g81168187_))))
                                     (_g81148184_ _g81168187_))
                                 (_g81148184_ _g81168187_))))
                         (_g81148184_ _g81168187_))))
                 (_g81148184_ _g81168187_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g81138231_ _L8100_)))
                                         _tl80678096_
                                         _hd80668094_)))
                                    (_g80608086_ _g80628089_)))))
                        (_g80598234_ _rest8055_)))))
                 (_generate-values-post7937_
                  (lambda (_post8009_ _body8010_)
                    (let _lp8012_ ((_rest8014_ _post8009_)
                                   (_body8015_ _body8010_))
                      (let* ((_rest80168024_ _rest8014_)
                             (_E80198028_
                              (lambda ()
                                (error '"No clause matching" _rest80168024_)))
                             (_else80188032_ (lambda () _body8015_))
                             (_K80208038_
                              (lambda (_rest8035_ _bind8036_)
                                (_lp8012_
                                 _rest8035_
                                 (cons 'let
                                       (cons _bind8036_
                                             (cons _body8015_ '())))))))
                        (if (##pair? _rest80168024_)
                            (let ((_hd80218041_ (##car _rest80168024_))
                                  (_tl80228043_ (##cdr _rest80168024_)))
                              (let* ((_bind8046_ _hd80218041_)
                                     (_rest8048_ _tl80228043_))
                                (_K80208038_ _rest8048_ _bind8046_)))
                            (_else80188032_))))))
                 (_generate-values-check7938_
                  (lambda (_check8006_ _body8007_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body8007_ '())
                                  (reverse _check8006_))))))
          (let* ((_g79407957_
                  (lambda (_g79417954_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g79417954_)))
                 (_g79398003_
                  (lambda (_g79417960_)
                    (if (gx#stx-pair? _g79417960_)
                        (let ((_e79447962_ (gx#stx-e _g79417960_)))
                          (let ((_hd79457965_ (##car _e79447962_))
                                (_tl79467967_ (##cdr _e79447962_)))
                            (if (gx#stx-pair? _tl79467967_)
                                (let ((_e79477970_ (gx#stx-e _tl79467967_)))
                                  (let ((_hd79487973_ (##car _e79477970_))
                                        (_tl79497975_ (##cdr _e79477970_)))
                                    (if (gx#stx-pair? _tl79497975_)
                                        (let ((_e79507978_
                                               (gx#stx-e _tl79497975_)))
                                          (let ((_hd79517981_
                                                 (##car _e79507978_))
                                                (_tl79527983_
                                                 (##cdr _e79507978_)))
                                            (if (gx#stx-null? _tl79527983_)
                                                ((lambda (_L7986_ _L7987_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _L7987_)
                                                       (_generate-simple7934_
                                                        _L7987_
                                                        _L7986_)
                                                       (_generate-values7936_
                                                        _L7987_
                                                        _L7986_)))
                                                 _hd79517981_
                                                 _hd79487973_)
                                                (_g79407957_ _g79417960_))))
                                        (_g79407957_ _g79417960_))))
                                (_g79407957_ _g79417960_))))
                        (_g79407957_ _g79417960_)))))
            (_g79398003_ _stx7931_)))))
    (begin
      (define gxc#generate-runtime-let-values%__0
        (lambda (_stx8859_)
          (let ((_compiled-body?8861_ '#f))
            (gxc#generate-runtime-let-values%__opt-lambda7929
             _stx8859_
             _compiled-body?8861_))))
      (define gxc#generate-runtime-let-values%
        (lambda _g12088_
          (let ((_g12087_ (length _g12088_)))
            (cond ((fx= _g12087_ 1)
                   (apply gxc#generate-runtime-let-values%__0 _g12088_))
                  ((fx= _g12087_ 2)
                   (apply gxc#generate-runtime-let-values%__opt-lambda7929
                          _g12088_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-let-values%
                    _g12088_))))))))
  (define gxc#generate-runtime-let-values-bind
    (lambda (_vals7830_ _hd7831_)
      (let _lp7833_ ((_rest7835_ _hd7831_) (_k7836_ '0) (_r7837_ '()))
        (let* ((_g78427858_
                (lambda (_g78437855_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g78437855_)))
               (_g78417865_
                (lambda (_g78437861_) ((lambda () (reverse _r7837_)))))
               (_g78407881_
                (lambda (_g78437868_)
                  ((lambda (_L7870_)
                     (if (gx#identifier? _L7870_)
                         (foldl1 cons
                                 (cons (cons (gxc#generate-runtime-binding-id
                                              _L7870_)
                                             (cons (cons 'values->list
                                                         (cons _vals7830_
                                                               (cons _k7836_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                       '())
                                 _r7837_)
                         (_g78417865_ _g78437868_)))
                   _g78437868_)))
               (_g78397905_
                (lambda (_g78437884_)
                  (if (gx#stx-pair? _g78437884_)
                      (let ((_e78507886_ (gx#stx-e _g78437884_)))
                        (let ((_hd78517889_ (##car _e78507886_))
                              (_tl78527891_ (##cdr _e78507886_)))
                          ((lambda (_L7894_ _L7895_)
                             (_lp7833_
                              _L7894_
                              (fx+ _k7836_ '1)
                              (cons (cons (gxc#generate-runtime-binding-id
                                           _L7895_)
                                          (cons (cons 'values-ref
                                                      (cons _vals7830_
                                                            (cons _k7836_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    _r7837_)))
                           _tl78527891_
                           _hd78517889_)))
                      (_g78407881_ _g78437884_))))
               (_g78387927_
                (lambda (_g78437908_)
                  (if (gx#stx-pair? _g78437908_)
                      (let ((_e78457910_ (gx#stx-e _g78437908_)))
                        (let ((_hd78467913_ (##car _e78457910_))
                              (_tl78477915_ (##cdr _e78457910_)))
                          (if (gx#stx-datum? _hd78467913_)
                              (if (equal? (gx#stx-e _hd78467913_) '#f)
                                  ((lambda (_L7918_)
                                     (_lp7833_
                                      _L7918_
                                      (fx+ _k7836_ '1)
                                      _r7837_))
                                   _tl78477915_)
                                  (_g78397905_ _g78437908_))
                              (_g78397905_ _g78437908_))))
                      (_g78397905_ _g78437908_)))))
          (_g78387927_ _rest7835_)))))
  (begin
    (define gxc#generate-runtime-letrec-values%__opt-lambda7508
      (lambda (_stx7510_ _compiled-body?7511_)
        (letrec ((_generate-simple7513_
                  (lambda (_hd7817_ _body7818_)
                    (gxc#generate-runtime-simple-let
                     'letrec
                     _hd7817_
                     _body7818_
                     _compiled-body?7511_)))
                 (_generate-values7514_
                  (lambda (_hd7594_ _body7595_)
                    (let _lp7597_ ((_rest7599_ _hd7594_)
                                   (_bind7600_ '())
                                   (_check7601_ '())
                                   (_post7602_ '()))
                      (let* ((_g76057616_
                              (lambda (_g76067613_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g76067613_)))
                             (_g76047630_
                              (lambda (_g76067619_)
                                ((lambda ()
                                   (let* ((_body7623_
                                           (if _compiled-body?7511_
                                               _body7595_
                                               (gxc#compile-e _body7595_)))
                                          (_body7625_
                                           (_generate-values-post7516_
                                            _post7602_
                                            _body7623_))
                                          (_body7627_
                                           (_generate-values-check7515_
                                            _check7601_
                                            _body7625_)))
                                     (cons 'letrec
                                           (cons (reverse _bind7600_)
                                                 (cons _body7627_ '()))))))))
                             (_g76037814_
                              (lambda (_g76067633_)
                                (if (gx#stx-pair? _g76067633_)
                                    (let ((_e76097635_ (gx#stx-e _g76067633_)))
                                      (let ((_hd76107638_ (##car _e76097635_))
                                            (_tl76117640_ (##cdr _e76097635_)))
                                        ((lambda (_L7643_ _L7644_)
                                           (let* ((_g76597684_
                                                   (lambda (_g76607681_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g76607681_)))
                                                  (_g76587764_
                                                   (lambda (_g76607687_)
                                                     (if (gx#stx-pair?
                                                          _g76607687_)
                                                         (let ((_e76747689_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g76607687_)))
                   (let ((_hd76757692_ (##car _e76747689_))
                         (_tl76767694_ (##cdr _e76747689_)))
                     (if (gx#stx-pair? _tl76767694_)
                         (let ((_e76777697_ (gx#stx-e _tl76767694_)))
                           (let ((_hd76787700_ (##car _e76777697_))
                                 (_tl76797702_ (##cdr _e76777697_)))
                             (if (gx#stx-null? _tl76797702_)
                                 ((lambda (_L7705_ _L7706_)
                                    (let* ((_vals7719_
                                            (gxc#generate-runtime-temporary__0))
                                           (_expr7721_ (gxc#compile-e _L7705_))
                                           (_check-values7723_
                                            (gxc#generate-runtime-check-values
                                             _vals7719_
                                             _L7706_))
                                           (_refs7725_
                                            (gxc#generate-runtime-let-values-bind
                                             _vals7719_
                                             _L7706_)))
                                      (_lp7597_
                                       _L7643_
                                       (foldl1 cons
                                               (cons (cons _vals7719_
                                                           (cons _expr7721_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _bind7600_)
                                               (map (lambda (_e77277729_)
                                                      (let* ((_g77317740_
                                                              _e77277729_)
                                                             (_E77337744_
                                                              (lambda ()
                                                                (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g77317740_)))
                     (_K77347749_
                      (lambda (_eid7747_)
                        (cons _eid7747_ (cons '#!void '())))))
                (if (##pair? _g77317740_)
                    (let ((_hd77357752_ (##car _g77317740_))
                          (_tl77367754_ (##cdr _g77317740_)))
                      (let ((_eid7757_ _hd77357752_))
                        (if (##pair? _tl77367754_)
                            (let ((_hd77377759_ (##car _tl77367754_))
                                  (_tl77387761_ (##cdr _tl77367754_)))
                              (if (##null? _tl77387761_)
                                  (_K77347749_ _eid7757_)
                                  (_E77337744_)))
                            (_E77337744_))))
                    (_E77337744_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _refs7725_))
                                       (cons _check-values7723_ _check7601_)
                                       (foldl1 cons _refs7725_ _post7602_))))
                                  _hd76787700_
                                  _hd76757692_)
                                 (_g76597684_ _g76607687_))))
                         (_g76597684_ _g76607687_))))
                 (_g76597684_ _g76607687_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g76577811_
                                                   (lambda (_g76607767_)
                                                     (if (gx#stx-pair?
                                                          _g76607767_)
                                                         (let ((_e76637769_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g76607767_)))
                   (let ((_hd76647772_ (##car _e76637769_))
                         (_tl76657774_ (##cdr _e76637769_)))
                     (if (gx#stx-pair? _hd76647772_)
                         (let ((_e76667777_ (gx#stx-e _hd76647772_)))
                           (let ((_hd76677780_ (##car _e76667777_))
                                 (_tl76687782_ (##cdr _e76667777_)))
                             (if (gx#stx-null? _tl76687782_)
                                 (if (gx#stx-pair? _tl76657774_)
                                     (let ((_e76697785_
                                            (gx#stx-e _tl76657774_)))
                                       (let ((_hd76707788_ (##car _e76697785_))
                                             (_tl76717790_
                                              (##cdr _e76697785_)))
                                         (if (gx#stx-null? _tl76717790_)
                                             ((lambda (_L7793_ _L7794_)
                                                (let ((_eid7808_
                                                       (gxc#generate-runtime-binding-id*
                                                        _L7794_))
                                                      (_expr7809_
                                                       (gxc#compile-e
                                                        _L7793_)))
                                                  (_lp7597_
                                                   _L7643_
                                                   (cons (cons _eid7808_
                                                               (cons _expr7809_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 _bind7600_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _check7601_
                                                   _post7602_)))
                                              _hd76707788_
                                              _hd76677780_)
                                             (_g76587764_ _g76607767_))))
                                     (_g76587764_ _g76607767_))
                                 (_g76587764_ _g76607767_))))
                         (_g76587764_ _g76607767_))))
                 (_g76587764_ _g76607767_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g76577811_ _L7644_)))
                                         _tl76117640_
                                         _hd76107638_)))
                                    (_g76047630_ _g76067633_)))))
                        (_g76037814_ _rest7599_)))))
                 (_generate-values-check7515_
                  (lambda (_check7591_ _body7592_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body7592_ '())
                                  (reverse _check7591_)))))
                 (_generate-values-post7516_
                  (lambda (_post7584_ _body7585_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body7585_ '())
                                  (map (lambda (_g75867588_)
                                         (cons 'set! _g75867588_))
                                       (reverse _post7584_)))))))
          (let* ((_g75187535_
                  (lambda (_g75197532_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g75197532_)))
                 (_g75177581_
                  (lambda (_g75197538_)
                    (if (gx#stx-pair? _g75197538_)
                        (let ((_e75227540_ (gx#stx-e _g75197538_)))
                          (let ((_hd75237543_ (##car _e75227540_))
                                (_tl75247545_ (##cdr _e75227540_)))
                            (if (gx#stx-pair? _tl75247545_)
                                (let ((_e75257548_ (gx#stx-e _tl75247545_)))
                                  (let ((_hd75267551_ (##car _e75257548_))
                                        (_tl75277553_ (##cdr _e75257548_)))
                                    (if (gx#stx-pair? _tl75277553_)
                                        (let ((_e75287556_
                                               (gx#stx-e _tl75277553_)))
                                          (let ((_hd75297559_
                                                 (##car _e75287556_))
                                                (_tl75307561_
                                                 (##cdr _e75287556_)))
                                            (if (gx#stx-null? _tl75307561_)
                                                ((lambda (_L7564_ _L7565_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _L7565_)
                                                       (_generate-simple7513_
                                                        _L7565_
                                                        _L7564_)
                                                       (_generate-values7514_
                                                        _L7565_
                                                        _L7564_)))
                                                 _hd75297559_
                                                 _hd75267551_)
                                                (_g75187535_ _g75197538_))))
                                        (_g75187535_ _g75197538_))))
                                (_g75187535_ _g75197538_))))
                        (_g75187535_ _g75197538_)))))
            (_g75177581_ _stx7510_)))))
    (begin
      (define gxc#generate-runtime-letrec-values%__0
        (lambda (_stx7823_)
          (let ((_compiled-body?7825_ '#f))
            (gxc#generate-runtime-letrec-values%__opt-lambda7508
             _stx7823_
             _compiled-body?7825_))))
      (define gxc#generate-runtime-letrec-values%
        (lambda _g12090_
          (let ((_g12089_ (length _g12090_)))
            (cond ((fx= _g12089_ 1)
                   (apply gxc#generate-runtime-letrec-values%__0 _g12090_))
                  ((fx= _g12089_ 2)
                   (apply gxc#generate-runtime-letrec-values%__opt-lambda7508
                          _g12090_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-letrec-values%
                    _g12090_))))))))
  (define gxc#generate-runtime-letrec*-values%
    (lambda (_stx7092_)
      (letrec ((_generate-values7094_
                (lambda (_hd7337_ _body7338_)
                  (let _lp7340_ ((_rest7342_ _hd7337_) (_bind7343_ '()))
                    (let* ((_rest73447352_ _rest7342_)
                           (_E73477356_
                            (lambda ()
                              (error '"No clause matching" _rest73447352_)))
                           (_else73467363_
                            (lambda ()
                              (let ((_bind7360_ (reverse _bind7343_))
                                    (_body7361_ (gxc#compile-e _body7338_)))
                                (cons 'letrec*
                                      (cons _bind7360_
                                            (cons _body7361_ '()))))))
                           (_K73487497_
                            (lambda (_rest7366_ _hd-bind7367_)
                              (let* ((_g73707395_
                                      (lambda (_g73717392_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g73717392_)))
                                     (_g73697447_
                                      (lambda (_g73717398_)
                                        (if (gx#stx-pair? _g73717398_)
                                            (let ((_e73857400_
                                                   (gx#stx-e _g73717398_)))
                                              (let ((_hd73867403_
                                                     (##car _e73857400_))
                                                    (_tl73877405_
                                                     (##cdr _e73857400_)))
                                                (if (gx#stx-pair? _tl73877405_)
                                                    (let ((_e73887408_
                                                           (gx#stx-e
                                                            _tl73877405_)))
                                                      (let ((_hd73897411_
                                                             (##car _e73887408_))
                                                            (_tl73907413_
                                                             (##cdr _e73887408_)))
                                                        (if (gx#stx-null?
                                                             _tl73907413_)
                                                            ((lambda (_L7416_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L7417_)
                       (let* ((_vals7436_ (gxc#generate-runtime-temporary__0))
                              (_tmp7438_ (gxc#generate-runtime-temporary__0))
                              (_expr7440_ (gxc#compile-e _L7416_))
                              (_check-values7442_
                               (gxc#generate-runtime-check-values
                                _tmp7438_
                                _L7417_))
                              (_refs7444_
                               (gxc#generate-runtime-let-values-bind
                                _vals7436_
                                _L7417_)))
                         (_lp7340_
                          _rest7366_
                          (foldl1 cons
                                  (cons (cons _vals7436_
                                              (cons (cons 'let
                                                          (cons (cons (cons _tmp7438_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _expr7440_ '()))
                              '())
                        (cons _check-values7442_ (cons _tmp7438_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        _bind7343_)
                                  _refs7444_))))
                     _hd73897411_
                     _hd73867403_)
                    (_g73707395_ _g73717398_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g73707395_
                                                     _g73717398_))))
                                            (_g73707395_ _g73717398_))))
                                     (_g73687494_
                                      (lambda (_g73717450_)
                                        (if (gx#stx-pair? _g73717450_)
                                            (let ((_e73747452_
                                                   (gx#stx-e _g73717450_)))
                                              (let ((_hd73757455_
                                                     (##car _e73747452_))
                                                    (_tl73767457_
                                                     (##cdr _e73747452_)))
                                                (if (gx#stx-pair? _hd73757455_)
                                                    (let ((_e73777460_
                                                           (gx#stx-e
                                                            _hd73757455_)))
                                                      (let ((_hd73787463_
                                                             (##car _e73777460_))
                                                            (_tl73797465_
                                                             (##cdr _e73777460_)))
                                                        (if (gx#stx-null?
                                                             _tl73797465_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl73767457_)
                        (let ((_e73807468_ (gx#stx-e _tl73767457_)))
                          (let ((_hd73817471_ (##car _e73807468_))
                                (_tl73827473_ (##cdr _e73807468_)))
                            (if (gx#stx-null? _tl73827473_)
                                ((lambda (_L7476_ _L7477_)
                                   (let ((_eid7491_
                                          (gxc#generate-runtime-binding-id*
                                           _L7477_))
                                         (_expr7492_ (gxc#compile-e _L7476_)))
                                     (_lp7340_
                                      _rest7366_
                                      (cons (cons _eid7491_
                                                  (cons _expr7492_ '()))
                                            _bind7343_))))
                                 _hd73817471_
                                 _hd73787463_)
                                (_g73697447_ _g73717450_))))
                        (_g73697447_ _g73717450_))
                    (_g73697447_ _g73717450_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g73697447_
                                                     _g73717450_))))
                                            (_g73697447_ _g73717450_)))))
                                (_g73687494_ _hd-bind7367_)))))
                      (if (##pair? _rest73447352_)
                          (let ((_hd73497500_ (##car _rest73447352_))
                                (_tl73507502_ (##cdr _rest73447352_)))
                            (let* ((_hd-bind7505_ _hd73497500_)
                                   (_rest7507_ _tl73507502_))
                              (_K73487497_ _rest7507_ _hd-bind7505_)))
                          (_else73467363_))))))
               (_generate-letrec?7095_
                (lambda (_hd7227_)
                  (let _lp7229_ ((_rest7231_ _hd7227_))
                    (let* ((_rest72327240_ _rest7231_)
                           (_E72357244_
                            (lambda ()
                              (error '"No clause matching" _rest72327240_)))
                           (_else72347248_ (lambda () '#t))
                           (_K72367325_
                            (lambda (_rest7251_ _hd-bind7252_)
                              (let* ((_g72547271_
                                      (lambda (_g72557268_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g72557268_)))
                                     (_g72537322_
                                      (lambda (_g72557274_)
                                        (if (gx#stx-pair? _g72557274_)
                                            (let ((_e72587276_
                                                   (gx#stx-e _g72557274_)))
                                              (let ((_hd72597279_
                                                     (##car _e72587276_))
                                                    (_tl72607281_
                                                     (##cdr _e72587276_)))
                                                (if (gx#stx-pair? _hd72597279_)
                                                    (let ((_e72617284_
                                                           (gx#stx-e
                                                            _hd72597279_)))
                                                      (let ((_hd72627287_
                                                             (##car _e72617284_))
                                                            (_tl72637289_
                                                             (##cdr _e72617284_)))
                                                        (if (gx#stx-null?
                                                             _tl72637289_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl72607281_)
                        (let ((_e72647292_ (gx#stx-e _tl72607281_)))
                          (let ((_hd72657295_ (##car _e72647292_))
                                (_tl72667297_ (##cdr _e72647292_)))
                            (if (gx#stx-null? _tl72667297_)
                                ((lambda (_L7300_ _L7301_)
                                   (if (_is-lambda-expr?7096_ _L7300_)
                                       (_lp7229_ _rest7251_)
                                       '#f))
                                 _hd72657295_
                                 _hd72627287_)
                                (_g72547271_ _g72557274_))))
                        (_g72547271_ _g72557274_))
                    (_g72547271_ _g72557274_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g72547271_
                                                     _g72557274_))))
                                            (_g72547271_ _g72557274_)))))
                                (_g72537322_ _hd-bind7252_)))))
                      (if (##pair? _rest72327240_)
                          (let ((_hd72377328_ (##car _rest72327240_))
                                (_tl72387330_ (##cdr _rest72327240_)))
                            (let* ((_hd-bind7333_ _hd72377328_)
                                   (_rest7335_ _tl72387330_))
                              (_K72367325_ _rest7335_ _hd-bind7333_)))
                          (_else72347248_))))))
               (_is-lambda-expr?7096_
                (lambda (_expr7164_)
                  (let* ((_g71677181_
                          (lambda (_g71687178_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g71687178_)))
                         (_g71667188_ (lambda (_g71687184_) ((lambda () '#f))))
                         (_g71657224_
                          (lambda (_g71687191_)
                            (if (gx#stx-pair? _g71687191_)
                                (let ((_e71717193_ (gx#stx-e _g71687191_)))
                                  (let ((_hd71727196_ (##car _e71717193_))
                                        (_tl71737198_ (##cdr _e71717193_)))
                                    (if (gx#identifier? _hd71727196_)
                                        (if (gx#stx-eq? '%#lambda _hd71727196_)
                                            (if (gx#stx-pair? _tl71737198_)
                                                (let ((_e71747201_
                                                       (gx#stx-e
                                                        _tl71737198_)))
                                                  (let ((_hd71757204_
                                                         (##car _e71747201_))
                                                        (_tl71767206_
                                                         (##cdr _e71747201_)))
                                                    ((lambda (_L7209_ _L7210_)
                                                       '#t)
                                                     _tl71767206_
                                                     _hd71757204_)))
                                                (_g71667188_ _g71687191_))
                                            (_g71667188_ _g71687191_))
                                        (_g71667188_ _g71687191_))))
                                (_g71667188_ _g71687191_)))))
                    (_g71657224_ _expr7164_)))))
        (let* ((_g70987115_
                (lambda (_g70997112_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g70997112_)))
               (_g70977161_
                (lambda (_g70997118_)
                  (if (gx#stx-pair? _g70997118_)
                      (let ((_e71027120_ (gx#stx-e _g70997118_)))
                        (let ((_hd71037123_ (##car _e71027120_))
                              (_tl71047125_ (##cdr _e71027120_)))
                          (if (gx#stx-pair? _tl71047125_)
                              (let ((_e71057128_ (gx#stx-e _tl71047125_)))
                                (let ((_hd71067131_ (##car _e71057128_))
                                      (_tl71077133_ (##cdr _e71057128_)))
                                  (if (gx#stx-pair? _tl71077133_)
                                      (let ((_e71087136_
                                             (gx#stx-e _tl71077133_)))
                                        (let ((_hd71097139_
                                               (##car _e71087136_))
                                              (_tl71107141_
                                               (##cdr _e71087136_)))
                                          (if (gx#stx-null? _tl71107141_)
                                              ((lambda (_L7144_ _L7145_)
                                                 (if (gxc#generate-runtime-simple-let?
                                                      _L7145_)
                                                     (if (_generate-letrec?7095_
                                                          _L7145_)
                                                         (gxc#generate-runtime-simple-let
                                                          'letrec
                                                          _L7145_
                                                          _L7144_
                                                          '#f)
                                                         (gxc#generate-runtime-simple-let
                                                          'letrec*
                                                          _L7145_
                                                          _L7144_
                                                          '#f))
                                                     (_generate-values7094_
                                                      _L7145_
                                                      _L7144_)))
                                               _hd71097139_
                                               _hd71067131_)
                                              (_g70987115_ _g70997118_))))
                                      (_g70987115_ _g70997118_))))
                              (_g70987115_ _g70997118_))))
                      (_g70987115_ _g70997118_)))))
          (_g70977161_ _stx7092_)))))
  (define gxc#generate-runtime-simple-let?
    (lambda (_hd6985_)
      (let _lp6987_ ((_rest6989_ _hd6985_))
        (let* ((_g69937014_
                (lambda (_g69947011_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g69947011_)))
               (_g69927021_ (lambda (_g69947017_) ((lambda () '#f))))
               (_g69917028_
                (lambda (_g69947024_)
                  (if (gx#stx-null? _g69947024_)
                      ((lambda () '#t))
                      (_g69927021_ _g69947024_))))
               (_g69907089_
                (lambda (_g69947031_)
                  (if (gx#stx-pair? _g69947031_)
                      (let ((_e69987033_ (gx#stx-e _g69947031_)))
                        (let ((_hd69997036_ (##car _e69987033_))
                              (_tl70007038_ (##cdr _e69987033_)))
                          (if (gx#stx-pair? _hd69997036_)
                              (let ((_e70017041_ (gx#stx-e _hd69997036_)))
                                (let ((_hd70027044_ (##car _e70017041_))
                                      (_tl70037046_ (##cdr _e70017041_)))
                                  (if (gx#stx-pair? _hd70027044_)
                                      (let ((_e70047049_
                                             (gx#stx-e _hd70027044_)))
                                        (let ((_hd70057052_
                                               (##car _e70047049_))
                                              (_tl70067054_
                                               (##cdr _e70047049_)))
                                          (if (gx#stx-null? _tl70067054_)
                                              (if (gx#stx-pair? _tl70037046_)
                                                  (let ((_e70077057_
                                                         (gx#stx-e
                                                          _tl70037046_)))
                                                    (let ((_hd70087060_
                                                           (##car _e70077057_))
                                                          (_tl70097062_
                                                           (##cdr _e70077057_)))
                                                      (if (gx#stx-null?
                                                           _tl70097062_)
                                                          ((lambda (_L7065_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L7066_
                            _L7067_)
                     (_lp6987_ _L7065_))
                   _tl70007038_
                   _hd70087060_
                   _hd70057052_)
                  (_g69917028_ _g69947031_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g69917028_ _g69947031_))
                                              (_g69917028_ _g69947031_))))
                                      (_g69917028_ _g69947031_))))
                              (_g69917028_ _g69947031_))))
                      (_g69917028_ _g69947031_)))))
          (_g69907089_ _rest6989_)))))
  (define gxc#generate-runtime-simple-let
    (lambda (_form6909_ _hd6910_ _body6911_ _compiled-body?6912_)
      (letrec ((_generate16914_
                (lambda (_bind6916_)
                  (let* ((_g69186935_
                          (lambda (_g69196932_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g69196932_)))
                         (_g69176982_
                          (lambda (_g69196938_)
                            (if (gx#stx-pair? _g69196938_)
                                (let ((_e69226940_ (gx#stx-e _g69196938_)))
                                  (let ((_hd69236943_ (##car _e69226940_))
                                        (_tl69246945_ (##cdr _e69226940_)))
                                    (if (gx#stx-pair? _hd69236943_)
                                        (let ((_e69256948_
                                               (gx#stx-e _hd69236943_)))
                                          (let ((_hd69266951_
                                                 (##car _e69256948_))
                                                (_tl69276953_
                                                 (##cdr _e69256948_)))
                                            (if (gx#stx-null? _tl69276953_)
                                                (if (gx#stx-pair? _tl69246945_)
                                                    (let ((_e69286956_
                                                           (gx#stx-e
                                                            _tl69246945_)))
                                                      (let ((_hd69296959_
                                                             (##car _e69286956_))
                                                            (_tl69306961_
                                                             (##cdr _e69286956_)))
                                                        (if (gx#stx-null?
                                                             _tl69306961_)
                                                            ((lambda (_L6964_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L6965_)
                       (cons (gxc#generate-runtime-binding-id* _L6965_)
                             (cons (gxc#compile-e _L6964_) '())))
                     _hd69296959_
                     _hd69266951_)
                    (_g69186935_ _g69196938_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g69186935_ _g69196938_))
                                                (_g69186935_ _g69196938_))))
                                        (_g69186935_ _g69196938_))))
                                (_g69186935_ _g69196938_)))))
                    (_g69176982_ _bind6916_)))))
        (cons _form6909_
              (cons (map _generate16914_ _hd6910_)
                    (cons (if _compiled-body?6912_
                              _body6911_
                              (gxc#compile-e _body6911_))
                          '()))))))
  (define gxc#generate-runtime-quote%
    (lambda (_stx6817_)
      (letrec ((_generate16819_
                (lambda (_datum6871_)
                  (if (let ((_$e6873_ (null? _datum6871_)))
                        (if _$e6873_
                            _$e6873_
                            (let ((_$e6876_ (interned-symbol? _datum6871_)))
                              (if _$e6876_
                                  _$e6876_
                                  (let ((_$e6879_
                                         (gx#self-quoting? _datum6871_)))
                                    (if _$e6879_
                                        _$e6879_
                                        (eof-object? _datum6871_)))))))
                      _datum6871_
                      (if (uninterned-symbol? _datum6871_)
                          (gxc#generate-runtime-gensym-reference__opt-lambda10938
                           _datum6871_
                           '#t)
                          (if (pair? _datum6871_)
                              (cons (_generate16819_ (car _datum6871_))
                                    (_generate16819_ (cdr _datum6871_)))
                              (if (box? _datum6871_)
                                  (box (_generate16819_ (unbox _datum6871_)))
                                  (if (vector? _datum6871_)
                                      (vector-map _generate16819_ _datum6871_)
                                      (if (let ((_$e6882_
                                                 (s8vector? _datum6871_)))
                                            (if _$e6882_
                                                _$e6882_
                                                (let ((_$e6885_
                                                       (u8vector?
                                                        _datum6871_)))
                                                  (if _$e6885_
                                                      _$e6885_
                                                      (let ((_$e6888_
                                                             (s16vector?
                                                              _datum6871_)))
                                                        (if _$e6888_
                                                            _$e6888_
                                                            (let ((_$e6891_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (u16vector? _datum6871_)))
                      (if _$e6891_
                          _$e6891_
                          (let ((_$e6894_ (s32vector? _datum6871_)))
                            (if _$e6894_
                                _$e6894_
                                (let ((_$e6897_ (u32vector? _datum6871_)))
                                  (if _$e6897_
                                      _$e6897_
                                      (let ((_$e6900_
                                             (s64vector? _datum6871_)))
                                        (if _$e6900_
                                            _$e6900_
                                            (let ((_$e6903_
                                                   (u64vector? _datum6871_)))
                                              (if _$e6903_
                                                  _$e6903_
                                                  (let ((_$e6906_
                                                         (f32vector?
                                                          _datum6871_)))
                                                    (if _$e6906_
                                                        _$e6906_
                                                        (f64vector?
                                                         _datum6871_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _datum6871_
                                          (gxc#raise-compile-error
                                           '"Cannot compile non-primitive quote"
                                           _stx6817_))))))))))
        (let* ((_g68216834_
                (lambda (_g68226831_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g68226831_)))
               (_g68206868_
                (lambda (_g68226837_)
                  (if (gx#stx-pair? _g68226837_)
                      (let ((_e68246839_ (gx#stx-e _g68226837_)))
                        (let ((_hd68256842_ (##car _e68246839_))
                              (_tl68266844_ (##cdr _e68246839_)))
                          (if (gx#stx-pair? _tl68266844_)
                              (let ((_e68276847_ (gx#stx-e _tl68266844_)))
                                (let ((_hd68286850_ (##car _e68276847_))
                                      (_tl68296852_ (##cdr _e68276847_)))
                                  (if (gx#stx-null? _tl68296852_)
                                      ((lambda (_L6855_)
                                         (cons 'quote
                                               (cons (_generate16819_
                                                      (gx#stx-e _L6855_))
                                                     '())))
                                       _hd68286850_)
                                      (_g68216834_ _g68226837_))))
                              (_g68216834_ _g68226837_))))
                      (_g68216834_ _g68226837_)))))
          (_g68206868_ _stx6817_)))))
  (define gxc#generate-runtime-call%
    (lambda (_stx6510_)
      (let* ((_g65126526_
              (lambda (_g65136523_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g65136523_)))
             (_g65116814_
              (lambda (_g65136529_)
                (if (gx#stx-pair? _g65136529_)
                    (let ((_e65166531_ (gx#stx-e _g65136529_)))
                      (let ((_hd65176534_ (##car _e65166531_))
                            (_tl65186536_ (##cdr _e65166531_)))
                        (if (gx#stx-pair? _tl65186536_)
                            (let ((_e65196539_ (gx#stx-e _tl65186536_)))
                              (let ((_hd65206542_ (##car _e65196539_))
                                    (_tl65216544_ (##cdr _e65196539_)))
                                ((lambda (_L6547_ _L6548_)
                                   (let ((_rator6561_ (gxc#compile-e _L6548_))
                                         (_rands6562_
                                          (map gxc#compile-e _L6547_)))
                                     (let* ((_g65656617_
                                             (lambda (_g65666614_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g65666614_)))
                                            (_g65646624_
                                             (lambda (_g65666620_)
                                               ((lambda ()
                                                  (cons _rator6561_
                                                        _rands6562_)))))
                                            (_g65636811_
                                             (lambda (_g65666627_)
                                               (if (gx#stx-pair? _g65666627_)
                                                   (let ((_e65716629_
                                                          (gx#stx-e
                                                           _g65666627_)))
                                                     (let ((_hd65726632_
                                                            (##car _e65716629_))
                                                           (_tl65736634_
                                                            (##cdr _e65716629_)))
                                                       (if (gx#identifier?
                                                            _hd65726632_)
                                                           (if (gx#stx-eq?
                                                                'letrec
                                                                _hd65726632_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl65736634_)
                           (let ((_e65746637_ (gx#stx-e _tl65736634_)))
                             (let ((_hd65756640_ (##car _e65746637_))
                                   (_tl65766642_ (##cdr _e65746637_)))
                               (if (gx#stx-pair? _hd65756640_)
                                   (let ((_e65776645_ (gx#stx-e _hd65756640_)))
                                     (let ((_hd65786648_ (##car _e65776645_))
                                           (_tl65796650_ (##cdr _e65776645_)))
                                       (if (gx#stx-pair? _hd65786648_)
                                           (let ((_e65806653_
                                                  (gx#stx-e _hd65786648_)))
                                             (let ((_hd65816656_
                                                    (##car _e65806653_))
                                                   (_tl65826658_
                                                    (##cdr _e65806653_)))
                                               (if (gx#stx-pair? _tl65826658_)
                                                   (let ((_e65836661_
                                                          (gx#stx-e
                                                           _tl65826658_)))
                                                     (let ((_hd65846664_
                                                            (##car _e65836661_))
                                                           (_tl65856666_
                                                            (##cdr _e65836661_)))
                                                       (if (gx#stx-pair?
                                                            _hd65846664_)
                                                           (let ((_e65866669_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd65846664_)))
                     (let ((_hd65876672_ (##car _e65866669_))
                           (_tl65886674_ (##cdr _e65866669_)))
                       (if (gx#identifier? _hd65876672_)
                           (if (gx#stx-eq? 'lambda _hd65876672_)
                               (if (gx#stx-pair? _tl65886674_)
                                   (let ((_e65896677_ (gx#stx-e _tl65886674_)))
                                     (let ((_hd65906680_ (##car _e65896677_))
                                           (_tl65916682_ (##cdr _e65896677_)))
                                       (if (gx#stx-pair/null? _hd65906680_)
                                           (if (fx>= (gx#stx-length
                                                      _hd65906680_)
                                                     '0)
                                               (let ((_g12091_
                                                      (gx#syntax-split-splice
                                                       _hd65906680_
                                                       '0)))
                                                 (begin
                                                   (let ((_g12092_
                                                          (values-count
                                                           _g12091_)))
                                                     (if (not (fx= _g12092_ 2))
                                                         (error "Context expects 2 values"
                                                                _g12092_)))
                                                   (let ((_target65926685_
                                                          (values-ref
                                                           _g12091_
                                                           0))
                                                         (_tl65946687_
                                                          (values-ref
                                                           _g12091_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl65946687_)
                                                         (letrec ((_loop65956690_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd65936693_ _arg65996695_)
                             (if (gx#stx-pair? _hd65936693_)
                                 (let ((_e65966698_ (gx#stx-e _hd65936693_)))
                                   (let ((_lp-hd65976701_ (##car _e65966698_))
                                         (_lp-tl65986703_ (##cdr _e65966698_)))
                                     (_loop65956690_
                                      _lp-tl65986703_
                                      (cons _lp-hd65976701_ _arg65996695_))))
                                 (let ((_arg66006706_ (reverse _arg65996695_)))
                                   (if (gx#stx-pair/null? _tl65916682_)
                                       (if (fx>= (gx#stx-length _tl65916682_)
                                                 '0)
                                           (let ((_g12093_
                                                  (gx#syntax-split-splice
                                                   _tl65916682_
                                                   '0)))
                                             (begin
                                               (let ((_g12094_
                                                      (values-count _g12093_)))
                                                 (if (not (fx= _g12094_ 2))
                                                     (error "Context expects 2 values"
                                                            _g12094_)))
                                               (let ((_target66016709_
                                                      (values-ref _g12093_ 0))
                                                     (_tl66036711_
                                                      (values-ref _g12093_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl66036711_)
                                                     (letrec ((_loop66046714_
                                                               (lambda (_hd66026717_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _body66086719_)
                         (if (gx#stx-pair? _hd66026717_)
                             (let ((_e66056722_ (gx#stx-e _hd66026717_)))
                               (let ((_lp-hd66066725_ (##car _e66056722_))
                                     (_lp-tl66076727_ (##cdr _e66056722_)))
                                 (_loop66046714_
                                  _lp-tl66076727_
                                  (cons _lp-hd66066725_ _body66086719_))))
                             (let ((_body66096730_ (reverse _body66086719_)))
                               (if (gx#stx-null? _tl65856666_)
                                   (if (gx#stx-null? _tl65796650_)
                                       (if (gx#stx-pair? _tl65766642_)
                                           (let ((_e66106733_
                                                  (gx#stx-e _tl65766642_)))
                                             (let ((_hd66116736_
                                                    (##car _e66106733_))
                                                   (_tl66126738_
                                                    (##cdr _e66106733_)))
                                               (if (gx#stx-null? _tl66126738_)
                                                   ((lambda (_L6741_
                                                             _L6742_
                                                             _L6743_
                                                             _L6744_)
                                                      (if (eq? _L6744_ _L6741_)
                                                          (if (fx= (length _rands6562_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (length (begin
                                     '#!void
                                     (foldr1 (lambda (_g67806783_ _g67816785_)
                                               (cons _g67806783_ _g67816785_))
                                             '()
                                             _L6743_))))
                      (let* ((_id6788_ _L6744_)
                             (_args6797_
                              (begin
                                '#!void
                                (foldr1 (lambda (_g67896792_ _g67906794_)
                                          (cons _g67896792_ _g67906794_))
                                        '()
                                        _L6743_)))
                             (_body6806_
                              (begin
                                '#!void
                                (foldr1 (lambda (_g67986801_ _g67996803_)
                                          (cons _g67986801_ _g67996803_))
                                        '()
                                        _L6742_)))
                             (_init6808_ (map list _args6797_ _rands6562_)))
                        (cons 'let
                              (cons _id6788_ (cons _init6808_ _body6806_))))
                      (gxc#raise-compile-error
                       '"Illegal loop application; arity mismatch"
                       _stx6510_))
                  (_g65646624_ _g65666627_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd66116736_
                                                    _body66096730_
                                                    _arg66006706_
                                                    _hd65816656_)
                                                   (_g65646624_ _g65666627_))))
                                           (_g65646624_ _g65666627_))
                                       (_g65646624_ _g65666627_))
                                   (_g65646624_ _g65666627_)))))))
               (_loop66046714_ _target66016709_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g65646624_
                                                      _g65666627_)))))
                                           (_g65646624_ _g65666627_))
                                       (_g65646624_ _g65666627_)))))))
                   (_loop65956690_ _target65926685_ '()))
                 (_g65646624_ _g65666627_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g65646624_ _g65666627_))
                                           (_g65646624_ _g65666627_))))
                                   (_g65646624_ _g65666627_))
                               (_g65646624_ _g65666627_))
                           (_g65646624_ _g65666627_))))
                   (_g65646624_ _g65666627_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g65646624_ _g65666627_))))
                                           (_g65646624_ _g65666627_))))
                                   (_g65646624_ _g65666627_))))
                           (_g65646624_ _g65666627_))
                       (_g65646624_ _g65666627_))
                   (_g65646624_ _g65666627_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g65646624_
                                                    _g65666627_)))))
                                       (_g65636811_ _rator6561_))))
                                 _tl65216544_
                                 _hd65206542_)))
                            (_g65126526_ _g65136529_))))
                    (_g65126526_ _g65136529_)))))
        (_g65116814_ _stx6510_))))
  (define gxc#generate-runtime-if%
    (lambda (_stx6472_)
      (let* ((_g64746484_
              (lambda (_g64756481_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g64756481_)))
             (_g64736507_
              (lambda (_g64756487_)
                (if (gx#stx-pair? _g64756487_)
                    (let ((_e64776489_ (gx#stx-e _g64756487_)))
                      (let ((_hd64786492_ (##car _e64776489_))
                            (_tl64796494_ (##cdr _e64776489_)))
                        ((lambda (_L6497_)
                           (cons 'if (map gxc#compile-e _L6497_)))
                         _tl64796494_)))
                    (_g64746484_ _g64756487_)))))
        (_g64736507_ _stx6472_))))
  (define gxc#generate-runtime-ref%
    (lambda (_stx6421_)
      (let* ((_g64236436_
              (lambda (_g64246433_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g64246433_)))
             (_g64226469_
              (lambda (_g64246439_)
                (if (gx#stx-pair? _g64246439_)
                    (let ((_e64266441_ (gx#stx-e _g64246439_)))
                      (let ((_hd64276444_ (##car _e64266441_))
                            (_tl64286446_ (##cdr _e64266441_)))
                        (if (gx#stx-pair? _tl64286446_)
                            (let ((_e64296449_ (gx#stx-e _tl64286446_)))
                              (let ((_hd64306452_ (##car _e64296449_))
                                    (_tl64316454_ (##cdr _e64296449_)))
                                (if (gx#stx-null? _tl64316454_)
                                    ((lambda (_L6457_)
                                       (gxc#generate-runtime-binding-id
                                        _L6457_))
                                     _hd64306452_)
                                    (_g64236436_ _g64246439_))))
                            (_g64236436_ _g64246439_))))
                    (_g64236436_ _g64246439_)))))
        (_g64226469_ _stx6421_))))
  (define gxc#generate-runtime-setq%
    (lambda (_stx6354_)
      (let* ((_g63566373_
              (lambda (_g63576370_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g63576370_)))
             (_g63556418_
              (lambda (_g63576376_)
                (if (gx#stx-pair? _g63576376_)
                    (let ((_e63606378_ (gx#stx-e _g63576376_)))
                      (let ((_hd63616381_ (##car _e63606378_))
                            (_tl63626383_ (##cdr _e63606378_)))
                        (if (gx#stx-pair? _tl63626383_)
                            (let ((_e63636386_ (gx#stx-e _tl63626383_)))
                              (let ((_hd63646389_ (##car _e63636386_))
                                    (_tl63656391_ (##cdr _e63636386_)))
                                (if (gx#stx-pair? _tl63656391_)
                                    (let ((_e63666394_
                                           (gx#stx-e _tl63656391_)))
                                      (let ((_hd63676397_ (##car _e63666394_))
                                            (_tl63686399_ (##cdr _e63666394_)))
                                        (if (gx#stx-null? _tl63686399_)
                                            ((lambda (_L6402_ _L6403_)
                                               (cons 'set!
                                                     (cons (gxc#generate-runtime-binding-id
                                                            _L6403_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L6402_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd63676397_
                                             _hd63646389_)
                                            (_g63566373_ _g63576376_))))
                                    (_g63566373_ _g63576376_))))
                            (_g63566373_ _g63576376_))))
                    (_g63566373_ _g63576376_)))))
        (_g63556418_ _stx6354_))))
  (define gxc#generate-runtime-struct-instancep%
    (lambda (_stx6287_)
      (let* ((_g62896306_
              (lambda (_g62906303_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g62906303_)))
             (_g62886351_
              (lambda (_g62906309_)
                (if (gx#stx-pair? _g62906309_)
                    (let ((_e62936311_ (gx#stx-e _g62906309_)))
                      (let ((_hd62946314_ (##car _e62936311_))
                            (_tl62956316_ (##cdr _e62936311_)))
                        (if (gx#stx-pair? _tl62956316_)
                            (let ((_e62966319_ (gx#stx-e _tl62956316_)))
                              (let ((_hd62976322_ (##car _e62966319_))
                                    (_tl62986324_ (##cdr _e62966319_)))
                                (if (gx#stx-pair? _tl62986324_)
                                    (let ((_e62996327_
                                           (gx#stx-e _tl62986324_)))
                                      (let ((_hd63006330_ (##car _e62996327_))
                                            (_tl63016332_ (##cdr _e62996327_)))
                                        (if (gx#stx-null? _tl63016332_)
                                            ((lambda (_L6335_ _L6336_)
                                               (cons '##structure-instance-of?
                                                     (cons (gxc#compile-e
                                                            _L6335_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L6336_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd63006330_
                                             _hd62976322_)
                                            (_g62896306_ _g62906309_))))
                                    (_g62896306_ _g62906309_))))
                            (_g62896306_ _g62906309_))))
                    (_g62896306_ _g62906309_)))))
        (_g62886351_ _stx6287_))))
  (define gxc#generate-runtime-struct-direct-instancep%
    (lambda (_stx6220_)
      (let* ((_g62226239_
              (lambda (_g62236236_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g62236236_)))
             (_g62216284_
              (lambda (_g62236242_)
                (if (gx#stx-pair? _g62236242_)
                    (let ((_e62266244_ (gx#stx-e _g62236242_)))
                      (let ((_hd62276247_ (##car _e62266244_))
                            (_tl62286249_ (##cdr _e62266244_)))
                        (if (gx#stx-pair? _tl62286249_)
                            (let ((_e62296252_ (gx#stx-e _tl62286249_)))
                              (let ((_hd62306255_ (##car _e62296252_))
                                    (_tl62316257_ (##cdr _e62296252_)))
                                (if (gx#stx-pair? _tl62316257_)
                                    (let ((_e62326260_
                                           (gx#stx-e _tl62316257_)))
                                      (let ((_hd62336263_ (##car _e62326260_))
                                            (_tl62346265_ (##cdr _e62326260_)))
                                        (if (gx#stx-null? _tl62346265_)
                                            ((lambda (_L6268_ _L6269_)
                                               (cons '##structure-direct-instance-of?
                                                     (cons (gxc#compile-e
                                                            _L6268_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L6269_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd62336263_
                                             _hd62306255_)
                                            (_g62226239_ _g62236242_))))
                                    (_g62226239_ _g62236242_))))
                            (_g62226239_ _g62236242_))))
                    (_g62226239_ _g62236242_)))))
        (_g62216284_ _stx6220_))))
  (define gxc#generate-runtime-struct-ref%
    (lambda (_stx6137_)
      (let* ((_g61396160_
              (lambda (_g61406157_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g61406157_)))
             (_g61386217_
              (lambda (_g61406163_)
                (if (gx#stx-pair? _g61406163_)
                    (let ((_e61446165_ (gx#stx-e _g61406163_)))
                      (let ((_hd61456168_ (##car _e61446165_))
                            (_tl61466170_ (##cdr _e61446165_)))
                        (if (gx#stx-pair? _tl61466170_)
                            (let ((_e61476173_ (gx#stx-e _tl61466170_)))
                              (let ((_hd61486176_ (##car _e61476173_))
                                    (_tl61496178_ (##cdr _e61476173_)))
                                (if (gx#stx-pair? _tl61496178_)
                                    (let ((_e61506181_
                                           (gx#stx-e _tl61496178_)))
                                      (let ((_hd61516184_ (##car _e61506181_))
                                            (_tl61526186_ (##cdr _e61506181_)))
                                        (if (gx#stx-pair? _tl61526186_)
                                            (let ((_e61536189_
                                                   (gx#stx-e _tl61526186_)))
                                              (let ((_hd61546192_
                                                     (##car _e61536189_))
                                                    (_tl61556194_
                                                     (##cdr _e61536189_)))
                                                (if (gx#stx-null? _tl61556194_)
                                                    ((lambda (_L6197_
                                                              _L6198_
                                                              _L6199_)
                                                       (cons '##structure-ref
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L6197_)
                           (cons (gxc#compile-e _L6198_)
                                 (cons (gxc#compile-e _L6199_)
                                       (cons ''#f '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd61546192_
                                                     _hd61516184_
                                                     _hd61486176_)
                                                    (_g61396160_
                                                     _g61406163_))))
                                            (_g61396160_ _g61406163_))))
                                    (_g61396160_ _g61406163_))))
                            (_g61396160_ _g61406163_))))
                    (_g61396160_ _g61406163_)))))
        (_g61386217_ _stx6137_))))
  (define gxc#generate-runtime-struct-setq%
    (lambda (_stx6038_)
      (let* ((_g60406065_
              (lambda (_g60416062_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g60416062_)))
             (_g60396134_
              (lambda (_g60416068_)
                (if (gx#stx-pair? _g60416068_)
                    (let ((_e60466070_ (gx#stx-e _g60416068_)))
                      (let ((_hd60476073_ (##car _e60466070_))
                            (_tl60486075_ (##cdr _e60466070_)))
                        (if (gx#stx-pair? _tl60486075_)
                            (let ((_e60496078_ (gx#stx-e _tl60486075_)))
                              (let ((_hd60506081_ (##car _e60496078_))
                                    (_tl60516083_ (##cdr _e60496078_)))
                                (if (gx#stx-pair? _tl60516083_)
                                    (let ((_e60526086_
                                           (gx#stx-e _tl60516083_)))
                                      (let ((_hd60536089_ (##car _e60526086_))
                                            (_tl60546091_ (##cdr _e60526086_)))
                                        (if (gx#stx-pair? _tl60546091_)
                                            (let ((_e60556094_
                                                   (gx#stx-e _tl60546091_)))
                                              (let ((_hd60566097_
                                                     (##car _e60556094_))
                                                    (_tl60576099_
                                                     (##cdr _e60556094_)))
                                                (if (gx#stx-pair? _tl60576099_)
                                                    (let ((_e60586102_
                                                           (gx#stx-e
                                                            _tl60576099_)))
                                                      (let ((_hd60596105_
                                                             (##car _e60586102_))
                                                            (_tl60606107_
                                                             (##cdr _e60586102_)))
                                                        (if (gx#stx-null?
                                                             _tl60606107_)
                                                            ((lambda (_L6110_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L6111_
                              _L6112_
                              _L6113_)
                       (cons '##structure-set!
                             (cons (gxc#compile-e _L6111_)
                                   (cons (gxc#compile-e _L6110_)
                                         (cons (gxc#compile-e _L6112_)
                                               (cons (gxc#compile-e _L6113_)
                                                     (cons ''#f '())))))))
                     _hd60596105_
                     _hd60566097_
                     _hd60536089_
                     _hd60506081_)
                    (_g60406065_ _g60416068_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g60406065_
                                                     _g60416068_))))
                                            (_g60406065_ _g60416068_))))
                                    (_g60406065_ _g60416068_))))
                            (_g60406065_ _g60416068_))))
                    (_g60406065_ _g60416068_)))))
        (_g60396134_ _stx6038_))))
  (define gxc#generate-runtime-struct-direct-ref%
    (lambda (_stx5955_)
      (let* ((_g59575978_
              (lambda (_g59585975_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g59585975_)))
             (_g59566035_
              (lambda (_g59585981_)
                (if (gx#stx-pair? _g59585981_)
                    (let ((_e59625983_ (gx#stx-e _g59585981_)))
                      (let ((_hd59635986_ (##car _e59625983_))
                            (_tl59645988_ (##cdr _e59625983_)))
                        (if (gx#stx-pair? _tl59645988_)
                            (let ((_e59655991_ (gx#stx-e _tl59645988_)))
                              (let ((_hd59665994_ (##car _e59655991_))
                                    (_tl59675996_ (##cdr _e59655991_)))
                                (if (gx#stx-pair? _tl59675996_)
                                    (let ((_e59685999_
                                           (gx#stx-e _tl59675996_)))
                                      (let ((_hd59696002_ (##car _e59685999_))
                                            (_tl59706004_ (##cdr _e59685999_)))
                                        (if (gx#stx-pair? _tl59706004_)
                                            (let ((_e59716007_
                                                   (gx#stx-e _tl59706004_)))
                                              (let ((_hd59726010_
                                                     (##car _e59716007_))
                                                    (_tl59736012_
                                                     (##cdr _e59716007_)))
                                                (if (gx#stx-null? _tl59736012_)
                                                    ((lambda (_L6015_
                                                              _L6016_
                                                              _L6017_)
                                                       (cons '##direct-structure-ref
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L6015_)
                           (cons (gxc#compile-e _L6016_)
                                 (cons (gxc#compile-e _L6017_)
                                       (cons ''#f '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd59726010_
                                                     _hd59696002_
                                                     _hd59665994_)
                                                    (_g59575978_
                                                     _g59585981_))))
                                            (_g59575978_ _g59585981_))))
                                    (_g59575978_ _g59585981_))))
                            (_g59575978_ _g59585981_))))
                    (_g59575978_ _g59585981_)))))
        (_g59566035_ _stx5955_))))
  (define gxc#generate-runtime-struct-direct-setq%
    (lambda (_stx5856_)
      (let* ((_g58585883_
              (lambda (_g58595880_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g58595880_)))
             (_g58575952_
              (lambda (_g58595886_)
                (if (gx#stx-pair? _g58595886_)
                    (let ((_e58645888_ (gx#stx-e _g58595886_)))
                      (let ((_hd58655891_ (##car _e58645888_))
                            (_tl58665893_ (##cdr _e58645888_)))
                        (if (gx#stx-pair? _tl58665893_)
                            (let ((_e58675896_ (gx#stx-e _tl58665893_)))
                              (let ((_hd58685899_ (##car _e58675896_))
                                    (_tl58695901_ (##cdr _e58675896_)))
                                (if (gx#stx-pair? _tl58695901_)
                                    (let ((_e58705904_
                                           (gx#stx-e _tl58695901_)))
                                      (let ((_hd58715907_ (##car _e58705904_))
                                            (_tl58725909_ (##cdr _e58705904_)))
                                        (if (gx#stx-pair? _tl58725909_)
                                            (let ((_e58735912_
                                                   (gx#stx-e _tl58725909_)))
                                              (let ((_hd58745915_
                                                     (##car _e58735912_))
                                                    (_tl58755917_
                                                     (##cdr _e58735912_)))
                                                (if (gx#stx-pair? _tl58755917_)
                                                    (let ((_e58765920_
                                                           (gx#stx-e
                                                            _tl58755917_)))
                                                      (let ((_hd58775923_
                                                             (##car _e58765920_))
                                                            (_tl58785925_
                                                             (##cdr _e58765920_)))
                                                        (if (gx#stx-null?
                                                             _tl58785925_)
                                                            ((lambda (_L5928_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L5929_
                              _L5930_
                              _L5931_)
                       (cons '##direct-structure-set!
                             (cons (gxc#compile-e _L5929_)
                                   (cons (gxc#compile-e _L5928_)
                                         (cons (gxc#compile-e _L5930_)
                                               (cons (gxc#compile-e _L5931_)
                                                     (cons ''#f '())))))))
                     _hd58775923_
                     _hd58745915_
                     _hd58715907_
                     _hd58685899_)
                    (_g58585883_ _g58595886_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g58585883_
                                                     _g58595886_))))
                                            (_g58585883_ _g58595886_))))
                                    (_g58585883_ _g58595886_))))
                            (_g58585883_ _g58595886_))))
                    (_g58585883_ _g58595886_)))))
        (_g58575952_ _stx5856_))))
  (define gxc#generate-runtime-struct-unchecked-ref%
    (lambda (_stx5773_)
      (let* ((_g57755796_
              (lambda (_g57765793_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g57765793_)))
             (_g57745853_
              (lambda (_g57765799_)
                (if (gx#stx-pair? _g57765799_)
                    (let ((_e57805801_ (gx#stx-e _g57765799_)))
                      (let ((_hd57815804_ (##car _e57805801_))
                            (_tl57825806_ (##cdr _e57805801_)))
                        (if (gx#stx-pair? _tl57825806_)
                            (let ((_e57835809_ (gx#stx-e _tl57825806_)))
                              (let ((_hd57845812_ (##car _e57835809_))
                                    (_tl57855814_ (##cdr _e57835809_)))
                                (if (gx#stx-pair? _tl57855814_)
                                    (let ((_e57865817_
                                           (gx#stx-e _tl57855814_)))
                                      (let ((_hd57875820_ (##car _e57865817_))
                                            (_tl57885822_ (##cdr _e57865817_)))
                                        (if (gx#stx-pair? _tl57885822_)
                                            (let ((_e57895825_
                                                   (gx#stx-e _tl57885822_)))
                                              (let ((_hd57905828_
                                                     (##car _e57895825_))
                                                    (_tl57915830_
                                                     (##cdr _e57895825_)))
                                                (if (gx#stx-null? _tl57915830_)
                                                    ((lambda (_L5833_
                                                              _L5834_
                                                              _L5835_)
                                                       (cons '##unchecked-structure-ref
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L5833_)
                           (cons (gxc#compile-e _L5834_)
                                 (cons (gxc#compile-e _L5835_)
                                       (cons ''#f '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd57905828_
                                                     _hd57875820_
                                                     _hd57845812_)
                                                    (_g57755796_
                                                     _g57765799_))))
                                            (_g57755796_ _g57765799_))))
                                    (_g57755796_ _g57765799_))))
                            (_g57755796_ _g57765799_))))
                    (_g57755796_ _g57765799_)))))
        (_g57745853_ _stx5773_))))
  (define gxc#generate-runtime-struct-unchecked-setq%
    (lambda (_stx5674_)
      (let* ((_g56765701_
              (lambda (_g56775698_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g56775698_)))
             (_g56755770_
              (lambda (_g56775704_)
                (if (gx#stx-pair? _g56775704_)
                    (let ((_e56825706_ (gx#stx-e _g56775704_)))
                      (let ((_hd56835709_ (##car _e56825706_))
                            (_tl56845711_ (##cdr _e56825706_)))
                        (if (gx#stx-pair? _tl56845711_)
                            (let ((_e56855714_ (gx#stx-e _tl56845711_)))
                              (let ((_hd56865717_ (##car _e56855714_))
                                    (_tl56875719_ (##cdr _e56855714_)))
                                (if (gx#stx-pair? _tl56875719_)
                                    (let ((_e56885722_
                                           (gx#stx-e _tl56875719_)))
                                      (let ((_hd56895725_ (##car _e56885722_))
                                            (_tl56905727_ (##cdr _e56885722_)))
                                        (if (gx#stx-pair? _tl56905727_)
                                            (let ((_e56915730_
                                                   (gx#stx-e _tl56905727_)))
                                              (let ((_hd56925733_
                                                     (##car _e56915730_))
                                                    (_tl56935735_
                                                     (##cdr _e56915730_)))
                                                (if (gx#stx-pair? _tl56935735_)
                                                    (let ((_e56945738_
                                                           (gx#stx-e
                                                            _tl56935735_)))
                                                      (let ((_hd56955741_
                                                             (##car _e56945738_))
                                                            (_tl56965743_
                                                             (##cdr _e56945738_)))
                                                        (if (gx#stx-null?
                                                             _tl56965743_)
                                                            ((lambda (_L5746_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L5747_
                              _L5748_
                              _L5749_)
                       (cons '##unchecked-structure-set!
                             (cons (gxc#compile-e _L5747_)
                                   (cons (gxc#compile-e _L5746_)
                                         (cons (gxc#compile-e _L5748_)
                                               (cons (gxc#compile-e _L5749_)
                                                     (cons ''#f '())))))))
                     _hd56955741_
                     _hd56925733_
                     _hd56895725_
                     _hd56865717_)
                    (_g56765701_ _g56775704_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g56765701_
                                                     _g56775704_))))
                                            (_g56765701_ _g56775704_))))
                                    (_g56765701_ _g56775704_))))
                            (_g56765701_ _g56775704_))))
                    (_g56765701_ _g56775704_)))))
        (_g56755770_ _stx5674_))))
  (define gxc#generate-runtime-loader-import%
    (lambda (_stx5583_)
      (let* ((_g55855595_
              (lambda (_g55865592_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g55865592_)))
             (_g55845671_
              (lambda (_g55865598_)
                (if (gx#stx-pair? _g55865598_)
                    (let ((_e55885600_ (gx#stx-e _g55865598_)))
                      (let ((_hd55895603_ (##car _e55885600_))
                            (_tl55905605_ (##cdr _e55885600_)))
                        ((lambda (_L5608_)
                           (let ((_ht5618_ (make-hash-table-eq)))
                             (let _lp5620_ ((_rest5622_ _L5608_)
                                            (_loads5623_ '()))
                               (letrec ((_K5625_ (lambda (_ctx5664_ _rest5665_)
                                                   (let ((_id5667_
                                                          (##structure-ref
                                                           _ctx5664_
                                                           '1
                                                           gx#expander-context::t
                                                           '#f)))
                                                     (if (table-ref
                                                          _ht5618_
                                                          _id5667_
                                                          '#f)
                                                         (_lp5620_
                                                          _rest5665_
                                                          _loads5623_)
                                                         (let ((_rt5669_
                                                                (string-append
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (symbol->string _id5667_)
                         '"__rt")))
                   (begin
                     (table-set! _ht5618_ _id5667_ _rt5669_)
                     (_lp5620_ _rest5665_ (cons _rt5669_ _loads5623_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (let* ((_rest56265634_ _rest5622_)
                                        (_E56295638_
                                         (lambda ()
                                           (error '"No clause matching"
                                                  _rest56265634_)))
                                        (_else56285646_
                                         (lambda ()
                                           (cons 'begin
                                                 (map (lambda (_g56415643_)
                                                        (list 'load-module
                                                              _g56415643_))
                                                      (reverse _loads5623_)))))
                                        (_K56305652_
                                         (lambda (_rest5649_ _in5650_)
                                           (if (##structure-instance-of?
                                                _in5650_
                                                'gx#module-context::t)
                                               (_K5625_ _in5650_ _rest5649_)
                                               (if (##structure-direct-instance-of?
                                                    _in5650_
                                                    'gx#module-import::t)
                                                   (if (fxpositive?
                                                        (##direct-structure-ref
                                                         _in5650_
                                                         '3
                                                         gx#module-import::t
                                                         '#f))
                                                       (_lp5620_
                                                        _rest5649_
                                                        _loads5623_)
                                                       (_K5625_ (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##direct-structure-ref
                          _in5650_
                          '1
                          gx#module-import::t
                          '#f)
                         '1
                         gx#module-export::t
                         '#f)
                        _rest5649_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (##structure-direct-instance-of?
                                                        _in5650_
                                                        'gx#import-set::t)
                                                       (if (fxpositive?
                                                            (##direct-structure-ref
                                                             _in5650_
                                                             '2
                                                             gx#import-set::t
                                                             '#f))
                                                           (_lp5620_
                                                            _rest5649_
                                                            _loads5623_)
                                                           (_K5625_ (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _in5650_
                             '1
                             gx#import-set::t
                             '#f)
                            _rest5649_))
               (gxc#raise-compile-error
                '"Unexpected import"
                _stx5583_
                _in5650_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (##pair? _rest56265634_)
                                       (let ((_hd56315655_
                                              (##car _rest56265634_))
                                             (_tl56325657_
                                              (##cdr _rest56265634_)))
                                         (let* ((_in5660_ _hd56315655_)
                                                (_rest5662_ _tl56325657_))
                                           (_K56305652_ _rest5662_ _in5660_)))
                                       (_else56285646_)))))))
                         _tl55905605_)))
                    (_g55855595_ _g55865598_)))))
        (_g55845671_ _stx5583_))))
  (define gxc#generate-runtime-phi-quote-syntax%
    (lambda (_stx5406_)
      (letrec ((_add-lift!5408_
                (lambda (_expr5581_)
                  (set-box!
                   (gxc#current-compile-lift)
                   (cons _expr5581_ (unbox (gxc#current-compile-lift))))))
               (_generate-simple5409_
                (lambda (_stxq5576_)
                  (let ((_gid5578_
                         (gxc#generate-runtime-temporary__opt-lambda10882 '#t))
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
                          (gxc#generate-runtime-temporary__opt-lambda10882
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
                                (gxc#generate-runtime-temporary__opt-lambda10882
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
                                  (let ((_g12095_
                                         (gx#syntax-split-splice
                                          _tl45344566_
                                          '0)))
                                    (begin
                                      (let ((_g12096_ (values-count _g12095_)))
                                        (if (not (fx= _g12096_ 2))
                                            (error "Context expects 2 values"
                                                   _g12096_)))
                                      (let ((_target45354569_
                                             (values-ref _g12095_ 0))
                                            (_tl45374571_
                                             (values-ref _g12095_ 1)))
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
          (lambda (_g12097_ _block3960_ _r3961_) (cons _block3960_ _r3961_))
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
