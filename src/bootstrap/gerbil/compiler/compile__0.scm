(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#current-compile-methods (make-parameter '#f))
  (define gxc#current-compile-lift (make-parameter '#f))
  (define gxc#compile-e
    (lambda (_stx10593_ . _args10594_)
      (let ((_g1059610606_
             (lambda (_g1059710603_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1059710603_))))
        (let ((_g1059510634_
               (lambda (_g1059710609_)
                 (if (gx#stx-pair? _g1059710609_)
                     (let ((_e1059910611_ (gx#stx-e _g1059710609_)))
                       (let ((_hd1060010614_ (##car _e1059910611_))
                             (_tl1060110616_ (##cdr _e1059910611_)))
                         ((lambda (_L10619_)
                            (let ((_$e10629_
                                   (table-ref
                                    (gxc#current-compile-methods)
                                    (gx#stx-e _L10619_)
                                    '#f)))
                              (if _$e10629_
                                  ((lambda (_method10632_)
                                     (apply _method10632_
                                            _stx10593_
                                            _args10594_))
                                   _$e10629_)
                                  (gxc#raise-compile-error
                                   '"Cannot compile; missing method"
                                   _stx10593_
                                   _L10619_))))
                          _hd1060010614_)))
                     (_g1059610606_ _g1059710609_)))))
          (_g1059510634_ _stx10593_)))))
  (define gxc#&void-expression
    (make-promise
     (lambda ()
       (let ((_tbl10590_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl10590_ '%#lambda void)
           (table-set! _tbl10590_ '%#case-lambda void)
           (table-set! _tbl10590_ '%#let-values void)
           (table-set! _tbl10590_ '%#letrec-values void)
           (table-set! _tbl10590_ '%#letrec*-values void)
           (table-set! _tbl10590_ '%#quote void)
           (table-set! _tbl10590_ '%#quote-syntax void)
           (table-set! _tbl10590_ '%#call void)
           (table-set! _tbl10590_ '%#if void)
           (table-set! _tbl10590_ '%#ref void)
           (table-set! _tbl10590_ '%#set! void)
           (table-set! _tbl10590_ '%#struct-instance? void)
           (table-set! _tbl10590_ '%#struct-direct-instance? void)
           (table-set! _tbl10590_ '%#struct-ref void)
           (table-set! _tbl10590_ '%#struct-set! void)
           (table-set! _tbl10590_ '%#struct-direct-ref void)
           (table-set! _tbl10590_ '%#struct-direct-set! void)
           (table-set! _tbl10590_ '%#struct-unchecked-ref void)
           (table-set! _tbl10590_ '%#struct-unchecked-set! void)
           _tbl10590_)))))
  (define gxc#&void-special-form
    (make-promise
     (lambda ()
       (let ((_tbl10586_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl10586_ '%#begin void)
           (table-set! _tbl10586_ '%#begin-syntax void)
           (table-set! _tbl10586_ '%#begin-foreign void)
           (table-set! _tbl10586_ '%#module void)
           (table-set! _tbl10586_ '%#import void)
           (table-set! _tbl10586_ '%#export void)
           (table-set! _tbl10586_ '%#provide void)
           (table-set! _tbl10586_ '%#extern void)
           (table-set! _tbl10586_ '%#define-values void)
           (table-set! _tbl10586_ '%#define-syntax void)
           (table-set! _tbl10586_ '%#define-alias void)
           (table-set! _tbl10586_ '%#declare void)
           _tbl10586_)))))
  (define gxc#&void
    (make-promise
     (lambda ()
       (let ((_tbl10582_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10582_ (force gxc#&void-special-form))
           (hash-copy! _tbl10582_ (force gxc#&void-expression))
           _tbl10582_)))))
  (define gxc#&false-expression
    (make-promise
     (lambda ()
       (let ((_tbl10578_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl10578_ '%#lambda false)
           (table-set! _tbl10578_ '%#case-lambda false)
           (table-set! _tbl10578_ '%#let-values false)
           (table-set! _tbl10578_ '%#letrec-values false)
           (table-set! _tbl10578_ '%#letrec*-values false)
           (table-set! _tbl10578_ '%#quote false)
           (table-set! _tbl10578_ '%#quote-syntax false)
           (table-set! _tbl10578_ '%#call false)
           (table-set! _tbl10578_ '%#if false)
           (table-set! _tbl10578_ '%#ref false)
           (table-set! _tbl10578_ '%#set! false)
           (table-set! _tbl10578_ '%#struct-instance? false)
           (table-set! _tbl10578_ '%#struct-direct-instance? false)
           (table-set! _tbl10578_ '%#struct-ref false)
           (table-set! _tbl10578_ '%#struct-set! false)
           (table-set! _tbl10578_ '%#struct-direct-ref false)
           (table-set! _tbl10578_ '%#struct-direct-set! false)
           (table-set! _tbl10578_ '%#struct-unchecked-ref false)
           (table-set! _tbl10578_ '%#struct-unchecked-set! false)
           _tbl10578_)))))
  (define gxc#&false-special-form
    (make-promise
     (lambda ()
       (let ((_tbl10574_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl10574_ '%#begin false)
           (table-set! _tbl10574_ '%#begin-syntax false)
           (table-set! _tbl10574_ '%#begin-foreign false)
           (table-set! _tbl10574_ '%#module false)
           (table-set! _tbl10574_ '%#import false)
           (table-set! _tbl10574_ '%#export false)
           (table-set! _tbl10574_ '%#provide false)
           (table-set! _tbl10574_ '%#extern false)
           (table-set! _tbl10574_ '%#define-values false)
           (table-set! _tbl10574_ '%#define-syntax false)
           (table-set! _tbl10574_ '%#define-alias false)
           (table-set! _tbl10574_ '%#declare false)
           _tbl10574_)))))
  (define gxc#&false
    (make-promise
     (lambda ()
       (let ((_tbl10570_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10570_ (force gxc#&false-special-form))
           (hash-copy! _tbl10570_ (force gxc#&false-expression))
           _tbl10570_)))))
  (define gxc#&collect-bindings
    (make-promise
     (lambda ()
       (let ((_tbl10566_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10566_ (force gxc#&void-expression))
           (hash-copy! _tbl10566_ (force gxc#&void-special-form))
           (table-set! _tbl10566_ '%#begin gxc#collect-begin%)
           (table-set! _tbl10566_ '%#begin-syntax gxc#collect-begin-syntax%)
           (table-set! _tbl10566_ '%#module gxc#collect-module%)
           (table-set!
            _tbl10566_
            '%#define-values
            gxc#collect-bindings-define-values%)
           (table-set!
            _tbl10566_
            '%#define-syntax
            gxc#collect-bindings-define-syntax%)
           _tbl10566_)))))
  (define gxc#apply-collect-bindings
    (lambda (_stx10559_ . _args10561_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10559_ _args10561_))
       gxc#current-compile-methods
       (force gxc#&collect-bindings))))
  (define gxc#&lift-modules
    (make-promise
     (lambda ()
       (let ((_tbl10556_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10556_ (force gxc#&void))
           (table-set! _tbl10556_ '%#begin gxc#collect-begin%)
           (table-set! _tbl10556_ '%#module gxc#lift-modules-module%)
           _tbl10556_)))))
  (define gxc#apply-lift-modules
    (lambda (_stx10549_ . _args10551_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10549_ _args10551_))
       gxc#current-compile-methods
       (force gxc#&lift-modules))))
  (define gxc#&find-runtime-code
    (make-promise
     (lambda ()
       (let ((_tbl10546_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl10546_ '%#begin gxc#find-runtime-begin%)
           (table-set! _tbl10546_ '%#begin-syntax false)
           (table-set! _tbl10546_ '%#begin-foreign true)
           (table-set! _tbl10546_ '%#module false)
           (table-set! _tbl10546_ '%#import false)
           (table-set! _tbl10546_ '%#export false)
           (table-set! _tbl10546_ '%#provide false)
           (table-set! _tbl10546_ '%#extern false)
           (table-set! _tbl10546_ '%#define-values true)
           (table-set! _tbl10546_ '%#define-syntax false)
           (table-set! _tbl10546_ '%#define-alias false)
           (table-set! _tbl10546_ '%#declare false)
           (table-set! _tbl10546_ '%#lambda true)
           (table-set! _tbl10546_ '%#case-lambda true)
           (table-set! _tbl10546_ '%#let-values true)
           (table-set! _tbl10546_ '%#letrec-values true)
           (table-set! _tbl10546_ '%#letrec*-values true)
           (table-set! _tbl10546_ '%#quote true)
           (table-set! _tbl10546_ '%#call true)
           (table-set! _tbl10546_ '%#if true)
           (table-set! _tbl10546_ '%#ref true)
           (table-set! _tbl10546_ '%#set! true)
           (table-set! _tbl10546_ '%#struct-instance? true)
           (table-set! _tbl10546_ '%#struct-direct-instance? true)
           (table-set! _tbl10546_ '%#struct-ref true)
           (table-set! _tbl10546_ '%#struct-set! true)
           (table-set! _tbl10546_ '%#struct-direct-ref true)
           (table-set! _tbl10546_ '%#struct-direct-set! true)
           (table-set! _tbl10546_ '%#struct-unchecked-ref true)
           (table-set! _tbl10546_ '%#struct-unchecked-set! true)
           _tbl10546_)))))
  (define gxc#apply-find-runtime-code
    (lambda (_stx10539_ . _args10541_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10539_ _args10541_))
       gxc#current-compile-methods
       (force gxc#&find-runtime-code))))
  (define gxc#&find-lambda-expression
    (make-promise
     (lambda ()
       (let ((_tbl10536_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10536_ (force gxc#&false))
           (table-set! _tbl10536_ '%#begin gxc#find-lambda-expression-begin%)
           (table-set! _tbl10536_ '%#lambda values)
           (table-set! _tbl10536_ '%#case-lambda values)
           (table-set!
            _tbl10536_
            '%#let-values
            gxc#find-lambda-expression-let-values%)
           (table-set!
            _tbl10536_
            '%#letrec-values
            gxc#find-lambda-expression-let-values%)
           (table-set!
            _tbl10536_
            '%#letrec*-values
            gxc#find-lambda-expression-let-values%)
           _tbl10536_)))))
  (define gxc#apply-find-lambda-expression
    (lambda (_stx10529_ . _args10531_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10529_ _args10531_))
       gxc#current-compile-methods
       (force gxc#&find-lambda-expression))))
  (define gxc#&generate-runtime-empty
    (make-promise
     (lambda ()
       (let ((_tbl10526_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl10526_ '%#begin gxc#generate-runtime-empty)
           (table-set! _tbl10526_ '%#begin-syntax gxc#generate-runtime-empty)
           (table-set! _tbl10526_ '%#begin-foreign gxc#generate-runtime-empty)
           (table-set! _tbl10526_ '%#module gxc#generate-runtime-empty)
           (table-set! _tbl10526_ '%#import gxc#generate-runtime-empty)
           (table-set! _tbl10526_ '%#export gxc#generate-runtime-empty)
           (table-set! _tbl10526_ '%#provide gxc#generate-runtime-empty)
           (table-set! _tbl10526_ '%#extern gxc#generate-runtime-empty)
           (table-set! _tbl10526_ '%#define-values gxc#generate-runtime-empty)
           (table-set! _tbl10526_ '%#define-syntax gxc#generate-runtime-empty)
           (table-set! _tbl10526_ '%#define-alias gxc#generate-runtime-empty)
           (table-set! _tbl10526_ '%#declare gxc#generate-runtime-empty)
           (table-set! _tbl10526_ '%#lambda gxc#generate-runtime-empty)
           (table-set! _tbl10526_ '%#case-lambda gxc#generate-runtime-empty)
           (table-set! _tbl10526_ '%#let-values gxc#generate-runtime-empty)
           (table-set! _tbl10526_ '%#letrec-values gxc#generate-runtime-empty)
           (table-set! _tbl10526_ '%#letrec*-values gxc#generate-runtime-empty)
           (table-set! _tbl10526_ '%#quote gxc#generate-runtime-empty)
           (table-set! _tbl10526_ '%#call gxc#generate-runtime-empty)
           (table-set! _tbl10526_ '%#if gxc#generate-runtime-empty)
           (table-set! _tbl10526_ '%#ref gxc#generate-runtime-empty)
           (table-set! _tbl10526_ '%#set! gxc#generate-runtime-empty)
           (table-set!
            _tbl10526_
            '%#struct-instance?
            gxc#generate-runtime-empty)
           (table-set!
            _tbl10526_
            '%#struct-direct-instance?
            gxc#generate-runtime-empty)
           (table-set! _tbl10526_ '%#struct-ref gxc#generate-runtime-empty)
           (table-set! _tbl10526_ '%#struct-set! gxc#generate-runtime-empty)
           (table-set!
            _tbl10526_
            '%#struct-direct-ref
            gxc#generate-runtime-empty)
           (table-set!
            _tbl10526_
            '%#struct-direct-set!
            gxc#generate-runtime-empty)
           (table-set!
            _tbl10526_
            '%#struct-unchecked-ref
            gxc#generate-runtime-empty)
           (table-set!
            _tbl10526_
            '%#struct-unchecked-set!
            gxc#generate-runtime-empty)
           _tbl10526_)))))
  (define gxc#&generate-loader
    (make-promise
     (lambda ()
       (let ((_tbl10522_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10522_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl10522_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl10522_
            '%#import
            gxc#generate-runtime-loader-import%)
           _tbl10522_)))))
  (define gxc#apply-generate-loader
    (lambda (_stx10515_ . _args10517_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10515_ _args10517_))
       gxc#current-compile-methods
       (force gxc#&generate-loader))))
  (define gxc#&generate-runtime
    (make-promise
     (lambda ()
       (let ((_tbl10512_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10512_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl10512_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl10512_
            '%#begin-foreign
            gxc#generate-runtime-begin-foreign%)
           (table-set!
            _tbl10512_
            '%#define-values
            gxc#generate-runtime-define-values%)
           (table-set! _tbl10512_ '%#declare gxc#generate-runtime-declare%)
           (table-set! _tbl10512_ '%#lambda gxc#generate-runtime-lambda%)
           (table-set!
            _tbl10512_
            '%#case-lambda
            gxc#generate-runtime-case-lambda%)
           (table-set!
            _tbl10512_
            '%#let-values
            gxc#generate-runtime-let-values%)
           (table-set!
            _tbl10512_
            '%#letrec-values
            gxc#generate-runtime-letrec-values%)
           (table-set!
            _tbl10512_
            '%#letrec*-values
            gxc#generate-runtime-letrec*-values%)
           (table-set! _tbl10512_ '%#quote gxc#generate-runtime-quote%)
           (table-set! _tbl10512_ '%#call gxc#generate-runtime-call%)
           (table-set! _tbl10512_ '%#if gxc#generate-runtime-if%)
           (table-set! _tbl10512_ '%#ref gxc#generate-runtime-ref%)
           (table-set! _tbl10512_ '%#set! gxc#generate-runtime-setq%)
           (table-set!
            _tbl10512_
            '%#struct-instance?
            gxc#generate-runtime-struct-instancep%)
           (table-set!
            _tbl10512_
            '%#struct-direct-instance?
            gxc#generate-runtime-struct-direct-instancep%)
           (table-set!
            _tbl10512_
            '%#struct-ref
            gxc#generate-runtime-struct-ref%)
           (table-set!
            _tbl10512_
            '%#struct-set!
            gxc#generate-runtime-struct-setq%)
           (table-set!
            _tbl10512_
            '%#struct-direct-ref
            gxc#generate-runtime-struct-direct-ref%)
           (table-set!
            _tbl10512_
            '%#struct-direct-set!
            gxc#generate-runtime-struct-direct-setq%)
           (table-set!
            _tbl10512_
            '%#struct-unchecked-ref
            gxc#generate-runtime-struct-unchecked-ref%)
           (table-set!
            _tbl10512_
            '%#struct-unchecked-set!
            gxc#generate-runtime-struct-unchecked-setq%)
           _tbl10512_)))))
  (define gxc#apply-generate-runtime
    (lambda (_stx10505_ . _args10507_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10505_ _args10507_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime))))
  (define gxc#&generate-runtime-phi
    (make-promise
     (lambda ()
       (let ((_tbl10502_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10502_ (force gxc#&generate-runtime))
           (table-set!
            _tbl10502_
            '%#quote-syntax
            gxc#generate-runtime-phi-quote-syntax%)
           (table-set!
            _tbl10502_
            '%#define-runtime
            gxc#generate-runtime-phi-define-runtime%)
           _tbl10502_)))))
  (define gxc#apply-generate-runtime-phi
    (lambda (_stx10495_ . _args10497_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10495_ _args10497_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime-phi))))
  (define gxc#&collect-expression-refs
    (make-promise
     (lambda ()
       (let ((_tbl10492_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl10492_ '%#begin gxc#collect-begin%)
           (table-set! _tbl10492_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl10492_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl10492_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl10492_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl10492_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl10492_ '%#quote void)
           (table-set! _tbl10492_ '%#quote-syntax void)
           (table-set! _tbl10492_ '%#call gxc#collect-operands)
           (table-set! _tbl10492_ '%#if gxc#collect-operands)
           (table-set! _tbl10492_ '%#ref gxc#collect-refs-ref%)
           (table-set! _tbl10492_ '%#set! gxc#collect-refs-setq%)
           (table-set! _tbl10492_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl10492_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl10492_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl10492_ '%#struct-set! gxc#collect-operands)
           (table-set! _tbl10492_ '%#struct-direct-ref gxc#collect-operands)
           (table-set! _tbl10492_ '%#struct-direct-set! gxc#collect-operands)
           (table-set! _tbl10492_ '%#struct-unchecked-ref gxc#collect-operands)
           (table-set!
            _tbl10492_
            '%#struct-unchecked-set!
            gxc#collect-operands)
           _tbl10492_)))))
  (define gxc#apply-collect-expression-refs
    (lambda (_stx10485_ . _args10487_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10485_ _args10487_))
       gxc#current-compile-methods
       (force gxc#&collect-expression-refs))))
  (define gxc#&generate-meta
    (make-promise
     (lambda ()
       (let ((_tbl10482_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10482_ (force gxc#&void-expression))
           (table-set! _tbl10482_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl10482_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set! _tbl10482_ '%#module gxc#generate-meta-module%)
           (table-set! _tbl10482_ '%#import gxc#generate-meta-import%)
           (table-set! _tbl10482_ '%#export gxc#generate-meta-export%)
           (table-set! _tbl10482_ '%#provide gxc#generate-meta-provide%)
           (table-set! _tbl10482_ '%#extern gxc#generate-meta-extern%)
           (table-set!
            _tbl10482_
            '%#define-values
            gxc#generate-meta-define-values%)
           (table-set!
            _tbl10482_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl10482_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set! _tbl10482_ '%#begin-foreign void)
           (table-set! _tbl10482_ '%#declare void)
           _tbl10482_)))))
  (define gxc#apply-generate-meta
    (lambda (_stx10475_ . _args10477_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10475_ _args10477_))
       gxc#current-compile-methods
       (force gxc#&generate-meta))))
  (define gxc#&generate-meta-phi
    (make-promise
     (lambda ()
       (let ((_tbl10472_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl10472_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl10472_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set!
            _tbl10472_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl10472_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set!
            _tbl10472_
            '%#define-values
            gxc#generate-meta-phi-define-values%)
           (table-set! _tbl10472_ '%#lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl10472_ '%#case-lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl10472_ '%#let-values gxc#generate-meta-phi-expr)
           (table-set! _tbl10472_ '%#letrec-values gxc#generate-meta-phi-expr)
           (table-set! _tbl10472_ '%#letrec*-values gxc#generate-meta-phi-expr)
           (table-set! _tbl10472_ '%#quote gxc#generate-meta-phi-expr)
           (table-set! _tbl10472_ '%#quote-syntax gxc#generate-meta-phi-expr)
           (table-set! _tbl10472_ '%#call gxc#generate-meta-phi-expr)
           (table-set! _tbl10472_ '%#if gxc#generate-meta-phi-expr)
           (table-set! _tbl10472_ '%#ref gxc#generate-meta-phi-expr)
           (table-set! _tbl10472_ '%#set! gxc#generate-meta-phi-expr)
           (table-set!
            _tbl10472_
            '%#struct-instance?
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl10472_
            '%#struct-direct-instance?
            gxc#generate-meta-phi-expr)
           (table-set! _tbl10472_ '%#struct-ref gxc#generate-meta-phi-expr)
           (table-set! _tbl10472_ '%#struct-set! gxc#generate-meta-phi-expr)
           (table-set!
            _tbl10472_
            '%#struct-direct-ref
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl10472_
            '%#struct-direct-set!
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl10472_
            '%#struct-unchecked-ref
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl10472_
            '%#struct-unchecked-set!
            gxc#generate-meta-phi-expr)
           (table-set! _tbl10472_ '%#declare void)
           _tbl10472_)))))
  (define gxc#apply-generate-meta-phi
    (lambda (_stx10465_ . _args10467_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10465_ _args10467_))
       gxc#current-compile-methods
       (force gxc#&generate-meta-phi))))
  (define gxc#collect-begin%
    (lambda (_stx10422_ . _args10423_)
      (let ((_g1042510435_
             (lambda (_g1042610432_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1042610432_))))
        (let ((_g1042410462_
               (lambda (_g1042610438_)
                 (if (gx#stx-pair? _g1042610438_)
                     (let ((_e1042810440_ (gx#stx-e _g1042610438_)))
                       (let ((_hd1042910443_ (##car _e1042810440_))
                             (_tl1043010445_ (##cdr _e1042810440_)))
                         ((lambda (_L10448_)
                            (for-each
                             (lambda (_g1045710459_)
                               (apply gxc#compile-e _g1045710459_ _args10423_))
                             (gx#stx-e _L10448_)))
                          _tl1043010445_)))
                     (_g1042510435_ _g1042610438_)))))
          (_g1042410462_ _stx10422_)))))
  (define gxc#collect-begin-syntax%
    (lambda (_stx10378_ . _args10379_)
      (let ((_g1038110391_
             (lambda (_g1038210388_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1038210388_))))
        (let ((_g1038010419_
               (lambda (_g1038210394_)
                 (if (gx#stx-pair? _g1038210394_)
                     (let ((_e1038410396_ (gx#stx-e _g1038210394_)))
                       (let ((_hd1038510399_ (##car _e1038410396_))
                             (_tl1038610401_ (##cdr _e1038410396_)))
                         ((lambda (_L10404_)
                            (call-with-parameters
                             (lambda ()
                               (for-each
                                (lambda (_g1041410416_)
                                  (apply gxc#compile-e
                                         _g1041410416_
                                         _args10379_))
                                (gx#stx-e _L10404_)))
                             gx#current-expander-phi
                             (fx+ (gx#current-expander-phi) '1)))
                          _tl1038610401_)))
                     (_g1038110391_ _g1038210394_)))))
          (_g1038010419_ _stx10378_)))))
  (define gxc#collect-module%
    (lambda (_stx10320_ . _args10321_)
      (let ((_g1032310337_
             (lambda (_g1032410334_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1032410334_))))
        (let ((_g1032210375_
               (lambda (_g1032410340_)
                 (if (gx#stx-pair? _g1032410340_)
                     (let ((_e1032710342_ (gx#stx-e _g1032410340_)))
                       (let ((_hd1032810345_ (##car _e1032710342_))
                             (_tl1032910347_ (##cdr _e1032710342_)))
                         (if (gx#stx-pair? _tl1032910347_)
                             (let ((_e1033010350_ (gx#stx-e _tl1032910347_)))
                               (let ((_hd1033110353_ (##car _e1033010350_))
                                     (_tl1033210355_ (##cdr _e1033010350_)))
                                 ((lambda (_L10358_ _L10359_)
                                    (let ((_ctx10372_
                                           (gx#syntax-local-e__0 _L10359_)))
                                      (call-with-parameters
                                       (lambda ()
                                         (apply gxc#compile-e
                                                (##structure-ref
                                                 _ctx10372_
                                                 '11
                                                 gx#module-context::t
                                                 '#f)
                                                _args10321_))
                                       gx#current-expander-context
                                       _ctx10372_)))
                                  _tl1033210355_
                                  _hd1033110353_)))
                             (_g1032310337_ _g1032410340_))))
                     (_g1032310337_ _g1032410340_)))))
          (_g1032210375_ _stx10320_)))))
  (define gxc#collect-body-lambda%
    (lambda (_stx10252_ . _args10253_)
      (let ((_g1025510272_
             (lambda (_g1025610269_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1025610269_))))
        (let ((_g1025410317_
               (lambda (_g1025610275_)
                 (if (gx#stx-pair? _g1025610275_)
                     (let ((_e1025910277_ (gx#stx-e _g1025610275_)))
                       (let ((_hd1026010280_ (##car _e1025910277_))
                             (_tl1026110282_ (##cdr _e1025910277_)))
                         (if (gx#stx-pair? _tl1026110282_)
                             (let ((_e1026210285_ (gx#stx-e _tl1026110282_)))
                               (let ((_hd1026310288_ (##car _e1026210285_))
                                     (_tl1026410290_ (##cdr _e1026210285_)))
                                 (if (gx#stx-pair? _tl1026410290_)
                                     (let ((_e1026510293_
                                            (gx#stx-e _tl1026410290_)))
                                       (let ((_hd1026610296_
                                              (##car _e1026510293_))
                                             (_tl1026710298_
                                              (##cdr _e1026510293_)))
                                         (if (gx#stx-null? _tl1026710298_)
                                             ((lambda (_L10301_ _L10302_)
                                                (apply gxc#compile-e
                                                       _L10301_
                                                       _args10253_))
                                              _hd1026610296_
                                              _hd1026310288_)
                                             (_g1025510272_ _g1025610275_))))
                                     (_g1025510272_ _g1025610275_))))
                             (_g1025510272_ _g1025610275_))))
                     (_g1025510272_ _g1025610275_)))))
          (_g1025410317_ _stx10252_)))))
  (define gxc#collect-body-case-lambda%
    (lambda (_stx10134_ . _args10135_)
      (let ((_g1013710165_
             (lambda (_g1013810162_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1013810162_))))
        (let ((_g1013610249_
               (lambda (_g1013810168_)
                 (if (gx#stx-pair? _g1013810168_)
                     (let ((_e1014110170_ (gx#stx-e _g1013810168_)))
                       (let ((_hd1014210173_ (##car _e1014110170_))
                             (_tl1014310175_ (##cdr _e1014110170_)))
                         (if (gx#stx-pair/null? _tl1014310175_)
                             (if (fx>= (gx#stx-length _tl1014310175_) '0)
                                 (let ((_g10636_
                                        (gx#syntax-split-splice
                                         _tl1014310175_
                                         '0)))
                                   (begin
                                     (let ((_g10637_ (values-count _g10636_)))
                                       (if (not (fx= _g10637_ 2))
                                           (error "Context expects 2 values"
                                                  _g10637_)))
                                     (let ((_target1014410178_
                                            (values-ref _g10636_ 0))
                                           (_tl1014610180_
                                            (values-ref _g10636_ 1)))
                                       (if (gx#stx-null? _tl1014610180_)
                                           (letrec ((_loop1014710183_
                                                     (lambda (_hd1014510186_
                                                              _body1015110188_
                                                              _hd1015210190_)
                                                       (if (gx#stx-pair?
                                                            _hd1014510186_)
                                                           (let ((_e1014810193_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1014510186_)))
                     (let ((_lp-hd1014910196_ (##car _e1014810193_))
                           (_lp-tl1015010198_ (##cdr _e1014810193_)))
                       (if (gx#stx-pair? _lp-hd1014910196_)
                           (let ((_e1015510201_ (gx#stx-e _lp-hd1014910196_)))
                             (let ((_hd1015610204_ (##car _e1015510201_))
                                   (_tl1015710206_ (##cdr _e1015510201_)))
                               (if (gx#stx-pair? _tl1015710206_)
                                   (let ((_e1015810209_
                                          (gx#stx-e _tl1015710206_)))
                                     (let ((_hd1015910212_
                                            (##car _e1015810209_))
                                           (_tl1016010214_
                                            (##cdr _e1015810209_)))
                                       (if (gx#stx-null? _tl1016010214_)
                                           (_loop1014710183_
                                            _lp-tl1015010198_
                                            (cons _hd1015910212_
                                                  _body1015110188_)
                                            (cons _hd1015610204_
                                                  _hd1015210190_))
                                           (_g1013710165_ _g1013810168_))))
                                   (_g1013710165_ _g1013810168_))))
                           (_g1013710165_ _g1013810168_))))
                   (let ((_body1015310217_ (reverse _body1015110188_))
                         (_hd1015410219_ (reverse _hd1015210190_)))
                     ((lambda (_L10222_ _L10223_)
                        (for-each
                         (lambda (_g1023710239_)
                           (apply gxc#compile-e _g1023710239_ _args10135_))
                         (begin
                           '#!void
                           (foldr1 (lambda (_g1024110244_ _g1024210246_)
                                     (cons _g1024110244_ _g1024210246_))
                                   '()
                                   _L10222_))))
                      _body1015310217_
                      _hd1015410219_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop1014710183_
                                              _target1014410178_
                                              '()
                                              '()))
                                           (_g1013710165_ _g1013810168_)))))
                                 (_g1013710165_ _g1013810168_))
                             (_g1013710165_ _g1013810168_))))
                     (_g1013710165_ _g1013810168_)))))
          (_g1013610249_ _stx10134_)))))
  (define gxc#collect-body-let-values%
    (lambda (_stx9987_ . _args9988_)
      (let ((_g999010025_
             (lambda (_g999110022_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g999110022_))))
        (let ((_g998910131_
               (lambda (_g999110028_)
                 (if (gx#stx-pair? _g999110028_)
                     (let ((_e999510030_ (gx#stx-e _g999110028_)))
                       (let ((_hd999610033_ (##car _e999510030_))
                             (_tl999710035_ (##cdr _e999510030_)))
                         (if (gx#stx-pair? _tl999710035_)
                             (let ((_e999810038_ (gx#stx-e _tl999710035_)))
                               (let ((_hd999910041_ (##car _e999810038_))
                                     (_tl1000010043_ (##cdr _e999810038_)))
                                 (if (gx#stx-pair/null? _hd999910041_)
                                     (if (fx>= (gx#stx-length _hd999910041_)
                                               '0)
                                         (let ((_g10638_
                                                (gx#syntax-split-splice
                                                 _hd999910041_
                                                 '0)))
                                           (begin
                                             (let ((_g10639_
                                                    (values-count _g10638_)))
                                               (if (not (fx= _g10639_ 2))
                                                   (error "Context expects 2 values"
                                                          _g10639_)))
                                             (let ((_target1000110046_
                                                    (values-ref _g10638_ 0))
                                                   (_tl1000310048_
                                                    (values-ref _g10638_ 1)))
                                               (if (gx#stx-null?
                                                    _tl1000310048_)
                                                   (letrec ((_loop1000410051_
                                                             (lambda (_hd1000210054_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr1000810056_
                              _hd1000910058_)
                       (if (gx#stx-pair? _hd1000210054_)
                           (let ((_e1000510061_ (gx#stx-e _hd1000210054_)))
                             (let ((_lp-hd1000610064_ (##car _e1000510061_))
                                   (_lp-tl1000710066_ (##cdr _e1000510061_)))
                               (if (gx#stx-pair? _lp-hd1000610064_)
                                   (let ((_e1001210069_
                                          (gx#stx-e _lp-hd1000610064_)))
                                     (let ((_hd1001310072_
                                            (##car _e1001210069_))
                                           (_tl1001410074_
                                            (##cdr _e1001210069_)))
                                       (if (gx#stx-pair? _tl1001410074_)
                                           (let ((_e1001510077_
                                                  (gx#stx-e _tl1001410074_)))
                                             (let ((_hd1001610080_
                                                    (##car _e1001510077_))
                                                   (_tl1001710082_
                                                    (##cdr _e1001510077_)))
                                               (if (gx#stx-null?
                                                    _tl1001710082_)
                                                   (_loop1000410051_
                                                    _lp-tl1000710066_
                                                    (cons _hd1001610080_
                                                          _expr1000810056_)
                                                    (cons _hd1001310072_
                                                          _hd1000910058_))
                                                   (_g999010025_
                                                    _g999110028_))))
                                           (_g999010025_ _g999110028_))))
                                   (_g999010025_ _g999110028_))))
                           (let ((_expr1001010085_ (reverse _expr1000810056_))
                                 (_hd1001110087_ (reverse _hd1000910058_)))
                             (if (gx#stx-pair? _tl1000010043_)
                                 (let ((_e1001810090_
                                        (gx#stx-e _tl1000010043_)))
                                   (let ((_hd1001910093_ (##car _e1001810090_))
                                         (_tl1002010095_
                                          (##cdr _e1001810090_)))
                                     (if (gx#stx-null? _tl1002010095_)
                                         ((lambda (_L10098_ _L10099_ _L10100_)
                                            (for-each
                                             (lambda (_g1011910121_)
                                               (apply gxc#compile-e
                                                      _g1011910121_
                                                      _args9988_))
                                             (begin
                                               '#!void
                                               (foldr1 (lambda (_g1012310126_
                                                                _g1012410128_)
                                                         (cons _g1012310126_
                                                               _g1012410128_))
                                                       (cons _L10098_ '())
                                                       _L10099_))))
                                          _hd1001910093_
                                          _expr1001010085_
                                          _hd1001110087_)
                                         (_g999010025_ _g999110028_))))
                                 (_g999010025_ _g999110028_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1000410051_
                                                      _target1000110046_
                                                      '()
                                                      '()))
                                                   (_g999010025_
                                                    _g999110028_)))))
                                         (_g999010025_ _g999110028_))
                                     (_g999010025_ _g999110028_))))
                             (_g999010025_ _g999110028_))))
                     (_g999010025_ _g999110028_)))))
          (_g998910131_ _stx9987_)))))
  (define gxc#collect-body-setq%
    (lambda (_stx9919_ . _args9920_)
      (let ((_g99229939_
             (lambda (_g99239936_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g99239936_))))
        (let ((_g99219984_
               (lambda (_g99239942_)
                 (if (gx#stx-pair? _g99239942_)
                     (let ((_e99269944_ (gx#stx-e _g99239942_)))
                       (let ((_hd99279947_ (##car _e99269944_))
                             (_tl99289949_ (##cdr _e99269944_)))
                         (if (gx#stx-pair? _tl99289949_)
                             (let ((_e99299952_ (gx#stx-e _tl99289949_)))
                               (let ((_hd99309955_ (##car _e99299952_))
                                     (_tl99319957_ (##cdr _e99299952_)))
                                 (if (gx#stx-pair? _tl99319957_)
                                     (let ((_e99329960_
                                            (gx#stx-e _tl99319957_)))
                                       (let ((_hd99339963_ (##car _e99329960_))
                                             (_tl99349965_
                                              (##cdr _e99329960_)))
                                         (if (gx#stx-null? _tl99349965_)
                                             ((lambda (_L9968_ _L9969_)
                                                (apply gxc#compile-e
                                                       _L9968_
                                                       _args9920_))
                                              _hd99339963_
                                              _hd99309955_)
                                             (_g99229939_ _g99239942_))))
                                     (_g99229939_ _g99239942_))))
                             (_g99229939_ _g99239942_))))
                     (_g99229939_ _g99239942_)))))
          (_g99219984_ _stx9919_)))))
  (define gxc#collect-operands
    (lambda (_stx9832_ . _args9833_)
      (let ((_g98359854_
             (lambda (_g98369851_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g98369851_))))
        (let ((_g98349916_
               (lambda (_g98369857_)
                 (if (gx#stx-pair? _g98369857_)
                     (let ((_e98389859_ (gx#stx-e _g98369857_)))
                       (let ((_hd98399862_ (##car _e98389859_))
                             (_tl98409864_ (##cdr _e98389859_)))
                         (if (gx#stx-pair/null? _tl98409864_)
                             (if (fx>= (gx#stx-length _tl98409864_) '0)
                                 (let ((_g10640_
                                        (gx#syntax-split-splice
                                         _tl98409864_
                                         '0)))
                                   (begin
                                     (let ((_g10641_ (values-count _g10640_)))
                                       (if (not (fx= _g10641_ 2))
                                           (error "Context expects 2 values"
                                                  _g10641_)))
                                     (let ((_target98419867_
                                            (values-ref _g10640_ 0))
                                           (_tl98439869_
                                            (values-ref _g10640_ 1)))
                                       (if (gx#stx-null? _tl98439869_)
                                           (letrec ((_loop98449872_
                                                     (lambda (_hd98429875_
                                                              _rands98489877_)
                                                       (if (gx#stx-pair?
                                                            _hd98429875_)
                                                           (let ((_e98459880_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd98429875_)))
                     (let ((_lp-hd98469883_ (##car _e98459880_))
                           (_lp-tl98479885_ (##cdr _e98459880_)))
                       (_loop98449872_
                        _lp-tl98479885_
                        (cons _lp-hd98469883_ _rands98489877_))))
                   (let ((_rands98499888_ (reverse _rands98489877_)))
                     ((lambda (_L9891_)
                        (for-each
                         (lambda (_g99049906_)
                           (apply gxc#compile-e _g99049906_ _args9833_))
                         (begin
                           '#!void
                           (foldr1 (lambda (_g99089911_ _g99099913_)
                                     (cons _g99089911_ _g99099913_))
                                   '()
                                   _L9891_))))
                      _rands98499888_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop98449872_
                                              _target98419867_
                                              '()))
                                           (_g98359854_ _g98369857_)))))
                                 (_g98359854_ _g98369857_))
                             (_g98359854_ _g98369857_))))
                     (_g98359854_ _g98369857_)))))
          (_g98349916_ _stx9832_)))))
  (define gxc#collect-bindings-define-values%
    (lambda (_stx9763_)
      (let ((_g97659782_
             (lambda (_g97669779_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g97669779_))))
        (let ((_g97649829_
               (lambda (_g97669785_)
                 (if (gx#stx-pair? _g97669785_)
                     (let ((_e97699787_ (gx#stx-e _g97669785_)))
                       (let ((_hd97709790_ (##car _e97699787_))
                             (_tl97719792_ (##cdr _e97699787_)))
                         (if (gx#stx-pair? _tl97719792_)
                             (let ((_e97729795_ (gx#stx-e _tl97719792_)))
                               (let ((_hd97739798_ (##car _e97729795_))
                                     (_tl97749800_ (##cdr _e97729795_)))
                                 (if (gx#stx-pair? _tl97749800_)
                                     (let ((_e97759803_
                                            (gx#stx-e _tl97749800_)))
                                       (let ((_hd97769806_ (##car _e97759803_))
                                             (_tl97779808_
                                              (##cdr _e97759803_)))
                                         (if (gx#stx-null? _tl97779808_)
                                             ((lambda (_L9811_ _L9812_)
                                                (gx#stx-for-each1
                                                 (lambda (_bind9827_)
                                                   (if (gx#identifier?
                                                        _bind9827_)
                                                       (gxc#add-module-binding!
                                                        _bind9827_
                                                        '#f)
                                                       '#!void))
                                                 _L9812_))
                                              _hd97769806_
                                              _hd97739798_)
                                             (_g97659782_ _g97669785_))))
                                     (_g97659782_ _g97669785_))))
                             (_g97659782_ _g97669785_))))
                     (_g97659782_ _g97669785_)))))
          (_g97649829_ _stx9763_)))))
  (define gxc#collect-bindings-define-syntax%
    (lambda (_stx9696_)
      (let ((_g96989715_
             (lambda (_g96999712_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g96999712_))))
        (let ((_g96979760_
               (lambda (_g96999718_)
                 (if (gx#stx-pair? _g96999718_)
                     (let ((_e97029720_ (gx#stx-e _g96999718_)))
                       (let ((_hd97039723_ (##car _e97029720_))
                             (_tl97049725_ (##cdr _e97029720_)))
                         (if (gx#stx-pair? _tl97049725_)
                             (let ((_e97059728_ (gx#stx-e _tl97049725_)))
                               (let ((_hd97069731_ (##car _e97059728_))
                                     (_tl97079733_ (##cdr _e97059728_)))
                                 (if (gx#stx-pair? _tl97079733_)
                                     (let ((_e97089736_
                                            (gx#stx-e _tl97079733_)))
                                       (let ((_hd97099739_ (##car _e97089736_))
                                             (_tl97109741_
                                              (##cdr _e97089736_)))
                                         (if (gx#stx-null? _tl97109741_)
                                             ((lambda (_L9744_ _L9745_)
                                                (gxc#add-module-binding!
                                                 _L9745_
                                                 '#t))
                                              _hd97099739_
                                              _hd97069731_)
                                             (_g96989715_ _g96999718_))))
                                     (_g96989715_ _g96999718_))))
                             (_g96989715_ _g96999718_))))
                     (_g96989715_ _g96999718_)))))
          (_g96979760_ _stx9696_)))))
  (define gxc#lift-modules-module%
    (lambda (_stx9638_ _modules9639_)
      (let ((_g96419655_
             (lambda (_g96429652_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g96429652_))))
        (let ((_g96409693_
               (lambda (_g96429658_)
                 (if (gx#stx-pair? _g96429658_)
                     (let ((_e96459660_ (gx#stx-e _g96429658_)))
                       (let ((_hd96469663_ (##car _e96459660_))
                             (_tl96479665_ (##cdr _e96459660_)))
                         (if (gx#stx-pair? _tl96479665_)
                             (let ((_e96489668_ (gx#stx-e _tl96479665_)))
                               (let ((_hd96499671_ (##car _e96489668_))
                                     (_tl96509673_ (##cdr _e96489668_)))
                                 ((lambda (_L9676_ _L9677_)
                                    (let ((_ctx9690_
                                           (gx#syntax-local-e__0 _L9677_)))
                                      (begin
                                        (set-box!
                                         _modules9639_
                                         (cons _ctx9690_
                                               (unbox _modules9639_)))
                                        (call-with-parameters
                                         (lambda ()
                                           (gxc#compile-e
                                            (##structure-ref
                                             _ctx9690_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            _modules9639_))
                                         gx#current-expander-context
                                         _ctx9690_))))
                                  _tl96509673_
                                  _hd96499671_)))
                             (_g96419655_ _g96429658_))))
                     (_g96419655_ _g96429658_)))))
          (_g96409693_ _stx9638_)))))
  (define gxc#add-module-binding!
    (lambda (_id9632_ _syntax?9633_)
      (let ((_eid9635_
             (##structure-ref
              (gx#resolve-identifier__0 _id9632_)
              '1
              gx#binding::t
              '#f))
            (_ht9636_
             (##structure-ref
              (gxc#current-compile-symbol-table)
              '2
              gxc#symbol-table::t
              '#f)))
        (if (interned-symbol? _eid9635_)
            '#!void
            (table-set!
             _ht9636_
             _eid9635_
             (gx#make-binding-id__1
              (gxc#generate-runtime-gensym-reference__0 _eid9635_)
              _syntax?9633_))))))
  (define gxc#generate-runtime-binding-id
    (lambda (_id9613_)
      (let ((_bind9615_ (gx#resolve-identifier__0 _id9613_)))
        (if _bind9615_
            (let ((_eid9617_ (##structure-ref _bind9615_ '1 gx#binding::t '#f))
                  (_ht9618_
                   (##structure-ref
                    (gxc#current-compile-symbol-table)
                    '2
                    gxc#symbol-table::t
                    '#f)))
              (if (interned-symbol? _eid9617_)
                  _eid9617_
                  (let ((_$e9620_ (table-ref _ht9618_ _eid9617_ '#f)))
                    (if _$e9620_
                        (values _$e9620_)
                        (if (##structure-instance-of?
                             _bind9615_
                             'gx#local-binding::t)
                            (let ((_gid9623_
                                   (gxc#generate-runtime-gensym-reference__0
                                    _eid9617_)))
                              (begin
                                (table-set! _ht9618_ _eid9617_ _gid9623_)
                                _gid9623_))
                            (if (##structure-instance-of?
                                 _bind9615_
                                 'gx#module-binding::t)
                                (let ((_gid9630_
                                       (let ((_$e9625_
                                              (##structure-ref
                                               (##structure-ref
                                                _bind9615_
                                                '4
                                                gx#module-binding::t
                                                '#f)
                                               '6
                                               gx#module-context::t
                                               '#f)))
                                         (if _$e9625_
                                             ((lambda (_ns9628_)
                                                (make-symbol
                                                 _ns9628_
                                                 '"#"
                                                 _eid9617_))
                                              _$e9625_)
                                             (gxc#generate-runtime-gensym-reference__0
                                              _eid9617_)))))
                                  (begin
                                    (table-set! _ht9618_ _eid9617_ _gid9630_)
                                    _gid9630_))
                                (gxc#raise-compile-error
                                 '"Cannot compile reference to uninterned binding"
                                 _id9613_
                                 _eid9617_
                                 _bind9615_)))))))
            (if (interned-symbol? (gx#stx-e _id9613_))
                (gx#stx-e _id9613_)
                (gxc#raise-compile-error
                 '"Cannot compile reference to uninterned identifier"
                 _id9613_))))))
  (define gxc#generate-runtime-binding-id*
    (lambda (_id9611_)
      (if (gx#identifier? _id9611_)
          (gxc#generate-runtime-binding-id _id9611_)
          (gxc#generate-runtime-temporary__0))))
  (begin
    (define gxc#generate-runtime-gensym-reference__opt-lambda9589
      (lambda (_sym9591_ _quote?9592_)
        (let ((_ht9594_
               (##structure-ref
                (gxc#current-compile-symbol-table)
                '1
                gxc#symbol-table::t
                '#f)))
          (let ((_$e9596_ (table-ref _ht9594_ _sym9591_ '#f)))
            (if _$e9596_
                (values _$e9596_)
                (let ((_g9599_ (if _quote?9592_
                                   (make-symbol
                                    '"__"
                                    _sym9591_
                                    '"__"
                                    (gxc#current-compile-timestamp))
                                   (make-symbol '"_" _sym9591_ '"_"))))
                  (begin (table-set! _ht9594_ _sym9591_ _g9599_) _g9599_)))))))
    (begin
      (define gxc#generate-runtime-gensym-reference__0
        (lambda (_sym9604_)
          (let ((_quote?9606_ '#f))
            (gxc#generate-runtime-gensym-reference__opt-lambda9589
             _sym9604_
             _quote?9606_))))
      (define gxc#generate-runtime-gensym-reference
        (lambda _g10643_
          (let ((_g10642_ (length _g10643_)))
            (cond ((fx= _g10642_ 1)
                   (apply gxc#generate-runtime-gensym-reference__0 _g10643_))
                  ((fx= _g10642_ 2)
                   (apply gxc#generate-runtime-gensym-reference__opt-lambda9589
                          _g10643_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-gensym-reference
                    _g10643_))))))))
  (define gxc#generate-runtime-identifier
    (lambda (_id9588_)
      (gxc#generate-runtime-identifier-key (gx#core-identifier-key _id9588_))))
  (define gxc#generate-runtime-identifier-key
    (lambda (_key9550_)
      (if (interned-symbol? _key9550_)
          _key9550_
          (if (uninterned-symbol? _key9550_)
              (gxc#generate-runtime-gensym-reference__0 _key9550_)
              (let ((_key95519558_ _key9550_))
                (let ((_E95539562_
                       (lambda ()
                         (error '"No clause matching" _key95519558_))))
                  (let ((_K95549576_
                         (lambda (_mark9565_ _eid9566_)
                           (let ((_$e9568_
                                  (##structure-ref
                                   _mark9565_
                                   '1
                                   gx#expander-mark::t
                                   '#f)))
                             (if _$e9568_
                                 ((lambda (_ht9571_)
                                    (let ((_$e9573_
                                           (table-ref _ht9571_ _eid9566_ '#f)))
                                      (if _$e9573_
                                          (values _$e9573_)
                                          (gxc#generate-runtime-identifier-key
                                           _eid9566_))))
                                  _$e9568_)
                                 (gxc#generate-runtime-identifier-key
                                  _eid9566_))))))
                    (if (##pair? _key95519558_)
                        (let ((_hd95559579_ (##car _key95519558_))
                              (_tl95569581_ (##cdr _key95519558_)))
                          (let ((_eid9584_ _hd95559579_))
                            (let ((_mark9586_ _tl95569581_))
                              (_K95549576_ _mark9586_ _eid9584_))))
                        (_E95539562_)))))))))
  (begin
    (define gxc#generate-runtime-temporary__opt-lambda9535
      (lambda (_top9537_)
        (if _top9537_
            (let ((_ns9539_
                   (##structure-ref
                    (gx#current-expander-context)
                    '6
                    gx#module-context::t
                    '#f))
                  (_phi9540_ (gx#current-expander-phi)))
              (if (fxpositive? _phi9540_)
                  (make-symbol
                   _ns9539_
                   '"["
                   (number->string _phi9540_)
                   '"]#_"
                   (gensym)
                   '"_")
                  (make-symbol _ns9539_ '"#_" (gensym) '"_")))
            (make-symbol '"_" (gensym) '"_"))))
    (begin
      (define gxc#generate-runtime-temporary__0
        (lambda ()
          (let ((_top9546_ '#f))
            (gxc#generate-runtime-temporary__opt-lambda9535 _top9546_))))
      (define gxc#generate-runtime-temporary
        (lambda _g10645_
          (let ((_g10644_ (length _g10645_)))
            (cond ((fx= _g10644_ 0)
                   (apply gxc#generate-runtime-temporary__0 _g10645_))
                  ((fx= _g10644_ 1)
                   (apply gxc#generate-runtime-temporary__opt-lambda9535
                          _g10645_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-temporary
                    _g10645_))))))))
  (define gxc#generate-runtime-empty (lambda (_stx9534_) '(begin)))
  (define gxc#generate-runtime-begin%
    (lambda (_stx9454_)
      (let ((_g94569466_
             (lambda (_g94579463_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g94579463_))))
        (let ((_g94559531_
               (lambda (_g94579469_)
                 (if (gx#stx-pair? _g94579469_)
                     (let ((_e94599471_ (gx#stx-e _g94579469_)))
                       (let ((_hd94609474_ (##car _e94599471_))
                             (_tl94619476_ (##cdr _e94599471_)))
                         ((lambda (_L9479_)
                            (let ((_body9489_
                                   (gx#stx-map1 gxc#compile-e _L9479_)))
                              (let ((_body9528_
                                     (filter (lambda (_stx9491_)
                                               (let ((_g94949503_
                                                      (lambda (_g94959500_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g94959500_))))
                                                 (let ((_g94939510_
                                                        (lambda (_g94959506_)
                                                          ((lambda () '#t)))))
                                                   (let ((_g94929525_
                                                          (lambda (_g94959513_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g94959513_)
                        (let ((_e94969515_ (gx#stx-e _g94959513_)))
                          (let ((_hd94979518_ (##car _e94969515_))
                                (_tl94989520_ (##cdr _e94969515_)))
                            (if (gx#identifier? _hd94979518_)
                                (if (gx#stx-eq? 'begin _hd94979518_)
                                    (if (gx#stx-null? _tl94989520_)
                                        ((lambda () '#f))
                                        (_g94939510_ _g94959513_))
                                    (_g94939510_ _g94959513_))
                                (_g94939510_ _g94959513_))))
                        (_g94939510_ _g94959513_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g94929525_
                                                      _stx9491_)))))
                                             _body9489_)))
                                (let ()
                                  (if (fx= (length _body9528_) '1)
                                      (car _body9528_)
                                      (cons 'begin _body9528_))))))
                          _tl94619476_)))
                     (_g94569466_ _g94579469_)))))
          (_g94559531_ _stx9454_)))))
  (define gxc#generate-runtime-begin-foreign%
    (lambda (_stx9416_)
      (let ((_g94189428_
             (lambda (_g94199425_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g94199425_))))
        (let ((_g94179451_
               (lambda (_g94199431_)
                 (if (gx#stx-pair? _g94199431_)
                     (let ((_e94219433_ (gx#stx-e _g94199431_)))
                       (let ((_hd94229436_ (##car _e94219433_))
                             (_tl94239438_ (##cdr _e94219433_)))
                         ((lambda (_L9441_)
                            (cons 'begin (gx#syntax->datum _L9441_)))
                          _tl94239438_)))
                     (_g94189428_ _g94199431_)))))
          (_g94179451_ _stx9416_)))))
  (define gxc#generate-runtime-declare%
    (lambda (_stx9378_)
      (let ((_g93809390_
             (lambda (_g93819387_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g93819387_))))
        (let ((_g93799413_
               (lambda (_g93819393_)
                 (if (gx#stx-pair? _g93819393_)
                     (let ((_e93839395_ (gx#stx-e _g93819393_)))
                       (let ((_hd93849398_ (##car _e93839395_))
                             (_tl93859400_ (##cdr _e93839395_)))
                         ((lambda (_L9403_)
                            (cons 'declare (map gx#syntax->datum _L9403_)))
                          _tl93859400_)))
                     (_g93809390_ _g93819393_)))))
          (_g93799413_ _stx9378_)))))
  (define gxc#generate-runtime-define-values%
    (lambda (_stx9134_)
      (let ((_g91369153_
             (lambda (_g91379150_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g91379150_))))
        (let ((_g91359375_
               (lambda (_g91379156_)
                 (if (gx#stx-pair? _g91379156_)
                     (let ((_e91409158_ (gx#stx-e _g91379156_)))
                       (let ((_hd91419161_ (##car _e91409158_))
                             (_tl91429163_ (##cdr _e91409158_)))
                         (if (gx#stx-pair? _tl91429163_)
                             (let ((_e91439166_ (gx#stx-e _tl91429163_)))
                               (let ((_hd91449169_ (##car _e91439166_))
                                     (_tl91459171_ (##cdr _e91439166_)))
                                 (if (gx#stx-pair? _tl91459171_)
                                     (let ((_e91469174_
                                            (gx#stx-e _tl91459171_)))
                                       (let ((_hd91479177_ (##car _e91469174_))
                                             (_tl91489179_
                                              (##cdr _e91469174_)))
                                         (if (gx#stx-null? _tl91489179_)
                                             ((lambda (_L9182_ _L9183_)
                                                (let ((_g92009213_
                                                       (lambda (_g92019210_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g92019210_))))
                                                  (let ((_g91999327_
                                                         (lambda (_g92019216_)
                                                           ((lambda ()
                                                              (let ((_tmp9220_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gxc#generate-runtime-temporary__opt-lambda9535
                              '#t)))
                        (let ((_body9324_
                               ((letrec ((_lp9222_
                                          (lambda (_rest9224_ _k9225_ _r9226_)
                                            (let ((_g92319247_
                                                   (lambda (_g92329244_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g92329244_))))
                                              (let ((_g92309254_
                                                     (lambda (_g92329250_)
                                                       ((lambda ()
                                                          (reverse _r9226_))))))
                                                (let ((_g92299275_
                                                       (lambda (_g92329257_)
                                                         ((lambda (_L9259_)
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L9259_)
                        (foldl1 cons
                                (cons (cons 'define
                                            (cons (gxc#generate-runtime-binding-id
                                                   _L9259_)
                                                  (cons (cons 'values->list
                                                              (cons _tmp9220_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _k9225_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())
                                _r9226_)
                        (_g92309254_ _g92329257_)))
                  _g92329257_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g92289299_
                                                         (lambda (_g92329278_)
                                                           (if (gx#stx-pair?
                                                                _g92329278_)
                                                               (let ((_e92399280_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _g92329278_)))
                         (let ((_hd92409283_ (##car _e92399280_))
                               (_tl92419285_ (##cdr _e92399280_)))
                           ((lambda (_L9288_ _L9289_)
                              (_lp9222_
                               _L9288_
                               (fx+ _k9225_ '1)
                               (cons (cons 'define
                                           (cons (gxc#generate-runtime-binding-id
                                                  _L9289_)
                                                 (cons (cons 'values-ref
                                                             (cons _tmp9220_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _k9225_ '())))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _r9226_)))
                            _tl92419285_
                            _hd92409283_)))
                       (_g92299275_ _g92329278_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g92279321_
                                                           (lambda (_g92329302_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g92329302_)
                         (let ((_e92349304_ (gx#stx-e _g92329302_)))
                           (let ((_hd92359307_ (##car _e92349304_))
                                 (_tl92369309_ (##cdr _e92349304_)))
                             (if (gx#stx-datum? _hd92359307_)
                                 (if (equal? (gx#stx-e _hd92359307_) '#f)
                                     ((lambda (_L9312_)
                                        (_lp9222_
                                         _L9312_
                                         (fx+ _k9225_ '1)
                                         _r9226_))
                                      _tl92369309_)
                                     (_g92289299_ _g92329302_))
                                 (_g92289299_ _g92329302_))))
                         (_g92289299_ _g92329302_)))))
              (_g92279321_ _rest9224_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _lp9222_)
                                _L9183_
                                '0
                                '())))
                          (let ()
                            (cons 'begin
                                  (cons (cons 'define
                                              (cons _tmp9220_
                                                    (cons (gxc#compile-e
                                                           _L9182_)
                                                          '())))
                                        (cons (gxc#generate-runtime-check-values
                                               _tmp9220_
                                               _L9183_)
                                              _body9324_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g91989357_
                                                           (lambda (_g92019330_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g92019330_)
                         (let ((_e92069332_ (gx#stx-e _g92019330_)))
                           (let ((_hd92079335_ (##car _e92069332_))
                                 (_tl92089337_ (##cdr _e92069332_)))
                             (if (gx#stx-null? _tl92089337_)
                                 ((lambda (_L9340_)
                                    (let ((_eid9349_
                                           (gxc#generate-runtime-binding-id
                                            _L9340_)))
                                      (begin
                                        (let ((_lambda-expr93509352_
                                               (gxc#apply-find-lambda-expression
                                                _L9182_)))
                                          (if _lambda-expr93509352_
                                              (let ((_lambda-expr9355_
                                                     _lambda-expr93509352_))
                                                (table-set!
                                                 (gxc#current-compile-runtime-names)
                                                 _lambda-expr9355_
                                                 _eid9349_))
                                              '#f))
                                        (cons 'define
                                              (cons _eid9349_
                                                    (cons (gxc#compile-e
                                                           _L9182_)
                                                          '()))))))
                                  _hd92079335_)
                                 (_g91999327_ _g92019330_))))
                         (_g91999327_ _g92019330_)))))
              (let ((_g91979372_
                     (lambda (_g92019360_)
                       (if (gx#stx-pair? _g92019360_)
                           (let ((_e92029362_ (gx#stx-e _g92019360_)))
                             (let ((_hd92039365_ (##car _e92029362_))
                                   (_tl92049367_ (##cdr _e92029362_)))
                               (if (gx#stx-datum? _hd92039365_)
                                   (if (equal? (gx#stx-e _hd92039365_) '#f)
                                       (if (gx#stx-null? _tl92049367_)
                                           ((lambda ()
                                              (gxc#compile-e _L9182_)))
                                           (_g91989357_ _g92019360_))
                                       (_g91989357_ _g92019360_))
                                   (_g91989357_ _g92019360_))))
                           (_g91989357_ _g92019360_)))))
                (_g91979372_ _L9183_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd91479177_
                                              _hd91449169_)
                                             (_g91369153_ _g91379156_))))
                                     (_g91369153_ _g91379156_))))
                             (_g91369153_ _g91379156_))))
                     (_g91369153_ _g91379156_)))))
          (_g91359375_ _stx9134_)))))
  (define gxc#generate-runtime-check-values
    (lambda (_vals9122_ _hd9123_)
      (let ((_len9125_ (gx#stx-length _hd9123_)))
        (let ((_cmp9127_ (if (gx#stx-list? _hd9123_) 'fx= 'fx>=)))
          (let ((_errmsg9129_
                 (string-append
                  (if (gx#stx-list? _hd9123_)
                      '"Context expects "
                      '"Context expects at least ")
                  (number->string _len9125_)
                  '" values")))
            (let ((_count9131_ (gxc#generate-runtime-temporary__0)))
              (let ()
                (if (if (not (gx#stx-list? _hd9123_)) (fx= _len9125_ '0) '#f)
                    '#!void
                    (cons 'let
                          (cons (cons (cons _count9131_
                                            (cons (cons 'values-count
                                                        (cons _vals9122_ '()))
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (cons _cmp9127_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _count9131_ (cons _len9125_ '())))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _errmsg9129_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _count9131_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))))
  (define gxc#generate-runtime-lambda%
    (lambda (_stx9055_)
      (let ((_g90579074_
             (lambda (_g90589071_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g90589071_))))
        (let ((_g90569119_
               (lambda (_g90589077_)
                 (if (gx#stx-pair? _g90589077_)
                     (let ((_e90619079_ (gx#stx-e _g90589077_)))
                       (let ((_hd90629082_ (##car _e90619079_))
                             (_tl90639084_ (##cdr _e90619079_)))
                         (if (gx#stx-pair? _tl90639084_)
                             (let ((_e90649087_ (gx#stx-e _tl90639084_)))
                               (let ((_hd90659090_ (##car _e90649087_))
                                     (_tl90669092_ (##cdr _e90649087_)))
                                 (if (gx#stx-pair? _tl90669092_)
                                     (let ((_e90679095_
                                            (gx#stx-e _tl90669092_)))
                                       (let ((_hd90689098_ (##car _e90679095_))
                                             (_tl90699100_
                                              (##cdr _e90679095_)))
                                         (if (gx#stx-null? _tl90699100_)
                                             ((lambda (_L9103_ _L9104_)
                                                (cons 'lambda
                                                      (cons (gxc#generate-runtime-lambda-head
                                                             _L9104_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L9103_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd90689098_
                                              _hd90659090_)
                                             (_g90579074_ _g90589077_))))
                                     (_g90579074_ _g90589077_))))
                             (_g90579074_ _g90589077_))))
                     (_g90579074_ _g90589077_)))))
          (_g90569119_ _stx9055_)))))
  (define gxc#generate-runtime-lambda-head
    (lambda (_hd9053_)
      (gx#stx-map1 gxc#generate-runtime-binding-id* _hd9053_)))
  (define gxc#generate-runtime-case-lambda%
    (lambda (_stx7586_)
      (let ((_runtime-identifier=?7588_
             (lambda (_id-stx9044_ _sym9045_)
               (let ((_bind90469048_ (gx#resolve-identifier__0 _id-stx9044_)))
                 (if _bind90469048_
                     (let ((_bind9051_ _bind90469048_))
                       (eq? (##structure-ref _bind9051_ '1 gx#binding::t '#f)
                            _sym9045_))
                     '#f)))))
        (let ((_dispatch-case?7589_
               (lambda (_hd8274_ _body8275_)
                 (let ((_form8277_ (cons _hd8274_ (cons _body8275_ '()))))
                   (let ((_g82828439_
                          (lambda (_g82838436_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g82838436_))))
                     (let ((_g82818446_
                            (lambda (_g82838442_) ((lambda () '#f)))))
                       (let ((_g82808587_
                              (lambda (_g82838449_)
                                (if (gx#stx-pair? _g82838449_)
                                    (let ((_e83998451_ (gx#stx-e _g82838449_)))
                                      (let ((_hd84008454_ (##car _e83998451_))
                                            (_tl84018456_ (##cdr _e83998451_)))
                                        (if (gx#stx-pair? _tl84018456_)
                                            (let ((_e84028459_
                                                   (gx#stx-e _tl84018456_)))
                                              (let ((_hd84038462_
                                                     (##car _e84028459_))
                                                    (_tl84048464_
                                                     (##cdr _e84028459_)))
                                                (if (gx#stx-pair? _hd84038462_)
                                                    (let ((_e84058467_
                                                           (gx#stx-e
                                                            _hd84038462_)))
                                                      (let ((_hd84068470_
                                                             (##car _e84058467_))
                                                            (_tl84078472_
                                                             (##cdr _e84058467_)))
                                                        (if (gx#identifier?
                                                             _hd84068470_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd84068470_)
                        (if (gx#stx-pair? _tl84078472_)
                            (let ((_e84088475_ (gx#stx-e _tl84078472_)))
                              (let ((_hd84098478_ (##car _e84088475_))
                                    (_tl84108480_ (##cdr _e84088475_)))
                                (if (gx#stx-pair? _hd84098478_)
                                    (let ((_e84118483_
                                           (gx#stx-e _hd84098478_)))
                                      (let ((_hd84128486_ (##car _e84118483_))
                                            (_tl84138488_ (##cdr _e84118483_)))
                                        (if (gx#identifier? _hd84128486_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd84128486_)
                                                (if (gx#stx-pair? _tl84138488_)
                                                    (let ((_e84148491_
                                                           (gx#stx-e
                                                            _tl84138488_)))
                                                      (let ((_hd84158494_
                                                             (##car _e84148491_))
                                                            (_tl84168496_
                                                             (##cdr _e84148491_)))
                                                        (if (gx#stx-null?
                                                             _tl84168496_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl84108480_)
                        (let ((_e84178499_ (gx#stx-e _tl84108480_)))
                          (let ((_hd84188502_ (##car _e84178499_))
                                (_tl84198504_ (##cdr _e84178499_)))
                            (if (gx#stx-pair? _hd84188502_)
                                (let ((_e84208507_ (gx#stx-e _hd84188502_)))
                                  (let ((_hd84218510_ (##car _e84208507_))
                                        (_tl84228512_ (##cdr _e84208507_)))
                                    (if (gx#identifier? _hd84218510_)
                                        (if (gx#stx-eq? '%#ref _hd84218510_)
                                            (if (gx#stx-pair? _tl84228512_)
                                                (let ((_e84238515_
                                                       (gx#stx-e
                                                        _tl84228512_)))
                                                  (let ((_hd84248518_
                                                         (##car _e84238515_))
                                                        (_tl84258520_
                                                         (##cdr _e84238515_)))
                                                    (if (gx#stx-null?
                                                         _tl84258520_)
                                                        (if (gx#stx-pair?
                                                             _tl84198504_)
                                                            (let ((_e84268523_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl84198504_)))
                      (let ((_hd84278526_ (##car _e84268523_))
                            (_tl84288528_ (##cdr _e84268523_)))
                        (if (gx#stx-pair? _hd84278526_)
                            (let ((_e84298531_ (gx#stx-e _hd84278526_)))
                              (let ((_hd84308534_ (##car _e84298531_))
                                    (_tl84318536_ (##cdr _e84298531_)))
                                (if (gx#identifier? _hd84308534_)
                                    (if (gx#stx-eq? '%#ref _hd84308534_)
                                        (if (gx#stx-pair? _tl84318536_)
                                            (let ((_e84328539_
                                                   (gx#stx-e _tl84318536_)))
                                              (let ((_hd84338542_
                                                     (##car _e84328539_))
                                                    (_tl84348544_
                                                     (##cdr _e84328539_)))
                                                (if (gx#stx-null? _tl84348544_)
                                                    (if (gx#stx-null?
                                                         _tl84288528_)
                                                        (if (gx#stx-null?
                                                             _tl84048464_)
                                                            ((lambda (_L8547_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L8548_
                              _L8549_
                              _L8550_)
                       (if (if (gx#identifier? _L8550_)
                               (if (_runtime-identifier=?7588_ _L8549_ 'apply)
                                   (if (gx#free-identifier=? _L8550_ _L8547_)
                                       (not (gx#free-identifier=?
                                             _L8548_
                                             _L8550_))
                                       '#f)
                                   '#f)
                               '#f)
                           '#t
                           (_g82818446_ _g82838449_)))
                     _hd84338542_
                     _hd84248518_
                     _hd84158494_
                     _hd84008454_)
                    (_g82818446_ _g82838449_))
                (_g82818446_ _g82838449_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g82818446_
                                                     _g82838449_))))
                                            (_g82818446_ _g82838449_))
                                        (_g82818446_ _g82838449_))
                                    (_g82818446_ _g82838449_))))
                            (_g82818446_ _g82838449_))))
                    (_g82818446_ _g82838449_))
                (_g82818446_ _g82838449_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g82818446_ _g82838449_))
                                            (_g82818446_ _g82838449_))
                                        (_g82818446_ _g82838449_))))
                                (_g82818446_ _g82838449_))))
                        (_g82818446_ _g82838449_))
                    (_g82818446_ _g82838449_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g82818446_ _g82838449_))
                                                (_g82818446_ _g82838449_))
                                            (_g82818446_ _g82838449_))))
                                    (_g82818446_ _g82838449_))))
                            (_g82818446_ _g82838449_))
                        (_g82818446_ _g82838449_))
                    (_g82818446_ _g82838449_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g82818446_
                                                     _g82838449_))))
                                            (_g82818446_ _g82838449_))))
                                    (_g82818446_ _g82838449_)))))
                         (let ((_g82798847_
                                (lambda (_g82838590_)
                                  (if (gx#stx-pair? _g82838590_)
                                      (let ((_e83358592_
                                             (gx#stx-e _g82838590_)))
                                        (let ((_hd83368595_
                                               (##car _e83358592_))
                                              (_tl83378597_
                                               (##cdr _e83358592_)))
                                          (if (gx#stx-pair/null? _hd83368595_)
                                              (if (fx>= (gx#stx-length
                                                         _hd83368595_)
                                                        '0)
                                                  (let ((_g10654_
                                                         (gx#syntax-split-splice
                                                          _hd83368595_
                                                          '0)))
                                                    (begin
                                                      (let ((_g10655_
                                                             (values-count
                                                              _g10654_)))
                                                        (if (not (fx= _g10655_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g10655_)))
              (let ((_target83388600_ (values-ref _g10654_ 0))
                    (_tl83408602_ (values-ref _g10654_ 1)))
                (letrec ((_loop83418605_
                          (lambda (_hd83398608_ _arg83458610_)
                            (if (gx#stx-pair? _hd83398608_)
                                (let ((_e83428613_ (gx#stx-e _hd83398608_)))
                                  (let ((_lp-hd83438616_ (##car _e83428613_))
                                        (_lp-tl83448618_ (##cdr _e83428613_)))
                                    (_loop83418605_
                                     _lp-tl83448618_
                                     (cons _lp-hd83438616_ _arg83458610_))))
                                (let ((_arg83468621_ (reverse _arg83458610_)))
                                  (if (gx#stx-pair? _tl83378597_)
                                      (let ((_e83478624_
                                             (gx#stx-e _tl83378597_)))
                                        (let ((_hd83488627_
                                               (##car _e83478624_))
                                              (_tl83498629_
                                               (##cdr _e83478624_)))
                                          (if (gx#stx-pair? _hd83488627_)
                                              (let ((_e83508632_
                                                     (gx#stx-e _hd83488627_)))
                                                (let ((_hd83518635_
                                                       (##car _e83508632_))
                                                      (_tl83528637_
                                                       (##cdr _e83508632_)))
                                                  (if (gx#identifier?
                                                       _hd83518635_)
                                                      (if (gx#stx-eq?
                                                           '%#call
                                                           _hd83518635_)
                                                          (if (gx#stx-pair?
                                                               _tl83528637_)
                                                              (let ((_e83538640_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl83528637_)))
                        (let ((_hd83548643_ (##car _e83538640_))
                              (_tl83558645_ (##cdr _e83538640_)))
                          (if (gx#stx-pair? _hd83548643_)
                              (let ((_e83568648_ (gx#stx-e _hd83548643_)))
                                (let ((_hd83578651_ (##car _e83568648_))
                                      (_tl83588653_ (##cdr _e83568648_)))
                                  (if (gx#identifier? _hd83578651_)
                                      (if (gx#stx-eq? '%#ref _hd83578651_)
                                          (if (gx#stx-pair? _tl83588653_)
                                              (let ((_e83598656_
                                                     (gx#stx-e _tl83588653_)))
                                                (let ((_hd83608659_
                                                       (##car _e83598656_))
                                                      (_tl83618661_
                                                       (##cdr _e83598656_)))
                                                  (if (gx#stx-null?
                                                       _tl83618661_)
                                                      (if (gx#stx-pair?
                                                           _tl83558645_)
                                                          (let ((_e83628664_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl83558645_)))
                    (let ((_hd83638667_ (##car _e83628664_))
                          (_tl83648669_ (##cdr _e83628664_)))
                      (if (gx#stx-pair? _hd83638667_)
                          (let ((_e83658672_ (gx#stx-e _hd83638667_)))
                            (let ((_hd83668675_ (##car _e83658672_))
                                  (_tl83678677_ (##cdr _e83658672_)))
                              (if (gx#identifier? _hd83668675_)
                                  (if (gx#stx-eq? '%#ref _hd83668675_)
                                      (if (gx#stx-pair? _tl83678677_)
                                          (let ((_e83688680_
                                                 (gx#stx-e _tl83678677_)))
                                            (let ((_hd83698683_
                                                   (##car _e83688680_))
                                                  (_tl83708685_
                                                   (##cdr _e83688680_)))
                                              (if (gx#stx-null? _tl83708685_)
                                                  (if (gx#stx-pair/null?
                                                       _tl83648669_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl83648669_)
                        '1)
                  (let ((_g10656_ (gx#syntax-split-splice _tl83648669_ '1)))
                    (begin
                      (let ((_g10657_ (values-count _g10656_)))
                        (if (not (fx= _g10657_ 2))
                            (error "Context expects 2 values" _g10657_)))
                      (let ((_target83718688_ (values-ref _g10656_ 0))
                            (_tl83738690_ (values-ref _g10656_ 1)))
                        (if (gx#stx-pair? _tl83738690_)
                            (let ((_e83808693_ (gx#stx-e _tl83738690_)))
                              (let ((_hd83818696_ (##car _e83808693_))
                                    (_tl83828698_ (##cdr _e83808693_)))
                                (if (gx#stx-pair? _hd83818696_)
                                    (let ((_e83838701_
                                           (gx#stx-e _hd83818696_)))
                                      (let ((_hd83848704_ (##car _e83838701_))
                                            (_tl83858706_ (##cdr _e83838701_)))
                                        (if (gx#identifier? _hd83848704_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd83848704_)
                                                (if (gx#stx-pair? _tl83858706_)
                                                    (let ((_e83868709_
                                                           (gx#stx-e
                                                            _tl83858706_)))
                                                      (let ((_hd83878712_
                                                             (##car _e83868709_))
                                                            (_tl83888714_
                                                             (##cdr _e83868709_)))
                                                        (if (gx#stx-null?
                                                             _tl83888714_)
                                                            (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl83828698_)
                        (letrec ((_loop83748717_
                                  (lambda (_hd83728720_ _xarg83788722_)
                                    (if (gx#stx-pair? _hd83728720_)
                                        (let ((_e83758725_
                                               (gx#stx-e _hd83728720_)))
                                          (let ((_lp-hd83768728_
                                                 (##car _e83758725_))
                                                (_lp-tl83778730_
                                                 (##cdr _e83758725_)))
                                            (if (gx#stx-pair? _lp-hd83768728_)
                                                (let ((_e83898733_
                                                       (gx#stx-e
                                                        _lp-hd83768728_)))
                                                  (let ((_hd83908736_
                                                         (##car _e83898733_))
                                                        (_tl83918738_
                                                         (##cdr _e83898733_)))
                                                    (if (gx#identifier?
                                                         _hd83908736_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd83908736_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl83918738_)
                        (let ((_e83928741_ (gx#stx-e _tl83918738_)))
                          (let ((_hd83938744_ (##car _e83928741_))
                                (_tl83948746_ (##cdr _e83928741_)))
                            (if (gx#stx-null? _tl83948746_)
                                (_loop83748717_
                                 _lp-tl83778730_
                                 (cons _hd83938744_ _xarg83788722_))
                                (_g82808587_ _g82838590_))))
                        (_g82808587_ _g82838590_))
                    (_g82808587_ _g82838590_))
                (_g82808587_ _g82838590_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g82808587_ _g82838590_))))
                                        (let ((_xarg83798749_
                                               (reverse _xarg83788722_)))
                                          (if (gx#stx-null? _tl83498629_)
                                              ((lambda (_L8752_
                                                        _L8753_
                                                        _L8754_
                                                        _L8755_
                                                        _L8756_
                                                        _L8757_)
                                                 (if (if (gx#identifier-list?
                                                          (begin
                                                            '#!void
                                                            (foldr1 (lambda (_g88008803_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g88018805_)
                              (cons _g88008803_ _g88018805_))
                            '()
                            _L8757_)))
                 (if (gx#identifier? _L8756_)
                     (if (_runtime-identifier=?7588_ _L8755_ 'apply)
                         (if (fx= (length (begin
                                            '#!void
                                            (foldr1 (lambda (_g88078810_
                                                             _g88088812_)
                                                      (cons _g88078810_
                                                            _g88088812_))
                                                    '()
                                                    _L8757_)))
                                  (length (begin
                                            '#!void
                                            (foldr1 (lambda (_g88148817_
                                                             _g88158819_)
                                                      (cons _g88148817_
                                                            _g88158819_))
                                                    '()
                                                    _L8753_))))
                             (if (andmap gx#free-identifier=?
                                         (begin
                                           '#!void
                                           (foldr1 (lambda (_g88218824_
                                                            _g88228826_)
                                                     (cons _g88218824_
                                                           _g88228826_))
                                                   '()
                                                   _L8757_))
                                         (begin
                                           '#!void
                                           (foldr1 (lambda (_g88288831_
                                                            _g88298833_)
                                                     (cons _g88288831_
                                                           _g88298833_))
                                                   '()
                                                   _L8753_)))
                                 (if (gx#free-identifier=? _L8756_ _L8752_)
                                     (not (find (lambda (_g88358837_)
                                                  (gx#free-identifier=?
                                                   _g88358837_
                                                   _L8754_))
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g88398842_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g88408844_)
                    (cons _g88398842_ _g88408844_))
                  (cons _L8756_ '())
                  _L8757_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '#f)
                                 '#f)
                             '#f)
                         '#f)
                     '#f)
                 '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#t
                                                     (_g82808587_
                                                      _g82838590_)))
                                               _hd83878712_
                                               _xarg83798749_
                                               _hd83698683_
                                               _hd83608659_
                                               _tl83408602_
                                               _arg83468621_)
                                              (_g82808587_ _g82838590_)))))))
                          (_loop83748717_ _target83718688_ '()))
                        (_g82808587_ _g82838590_))
                    (_g82808587_ _g82838590_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g82808587_ _g82838590_))
                                                (_g82808587_ _g82838590_))
                                            (_g82808587_ _g82838590_))))
                                    (_g82808587_ _g82838590_))))
                            (_g82808587_ _g82838590_)))))
                  (_g82808587_ _g82838590_))
              (_g82808587_ _g82838590_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g82808587_ _g82838590_))))
                                          (_g82808587_ _g82838590_))
                                      (_g82808587_ _g82838590_))
                                  (_g82808587_ _g82838590_))))
                          (_g82808587_ _g82838590_))))
                  (_g82808587_ _g82838590_))
              (_g82808587_ _g82838590_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g82808587_ _g82838590_))
                                          (_g82808587_ _g82838590_))
                                      (_g82808587_ _g82838590_))))
                              (_g82808587_ _g82838590_))))
                      (_g82808587_ _g82838590_))
                  (_g82808587_ _g82838590_))
              (_g82808587_ _g82838590_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g82808587_ _g82838590_))))
                                      (_g82808587_ _g82838590_)))))))
                  (_loop83418605_ _target83388600_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g82808587_ _g82838590_))
                                              (_g82808587_ _g82838590_))))
                                      (_g82808587_ _g82838590_)))))
                           (let ((_g82789041_
                                  (lambda (_g82838850_)
                                    (if (gx#stx-pair? _g82838850_)
                                        (let ((_e82878852_
                                               (gx#stx-e _g82838850_)))
                                          (let ((_hd82888855_
                                                 (##car _e82878852_))
                                                (_tl82898857_
                                                 (##cdr _e82878852_)))
                                            (if (gx#stx-pair/null?
                                                 _hd82888855_)
                                                (if (fx>= (gx#stx-length
                                                           _hd82888855_)
                                                          '0)
                                                    (let ((_g10658_
                                                           (gx#syntax-split-splice
                                                            _hd82888855_
                                                            '0)))
                                                      (begin
                                                        (let ((_g10659_
                                                               (values-count
                                                                _g10658_)))
                                                          (if (not (fx= _g10659_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                2))
                      (error "Context expects 2 values" _g10659_)))
                (let ((_target82908860_ (values-ref _g10658_ 0))
                      (_tl82928862_ (values-ref _g10658_ 1)))
                  (if (gx#stx-null? _tl82928862_)
                      (letrec ((_loop82938865_
                                (lambda (_hd82918868_ _arg82978870_)
                                  (if (gx#stx-pair? _hd82918868_)
                                      (let ((_e82948873_
                                             (gx#stx-e _hd82918868_)))
                                        (let ((_lp-hd82958876_
                                               (##car _e82948873_))
                                              (_lp-tl82968878_
                                               (##cdr _e82948873_)))
                                          (_loop82938865_
                                           _lp-tl82968878_
                                           (cons _lp-hd82958876_
                                                 _arg82978870_))))
                                      (let ((_arg82988881_
                                             (reverse _arg82978870_)))
                                        (if (gx#stx-pair? _tl82898857_)
                                            (let ((_e82998884_
                                                   (gx#stx-e _tl82898857_)))
                                              (let ((_hd83008887_
                                                     (##car _e82998884_))
                                                    (_tl83018889_
                                                     (##cdr _e82998884_)))
                                                (if (gx#stx-pair? _hd83008887_)
                                                    (let ((_e83028892_
                                                           (gx#stx-e
                                                            _hd83008887_)))
                                                      (let ((_hd83038895_
                                                             (##car _e83028892_))
                                                            (_tl83048897_
                                                             (##cdr _e83028892_)))
                                                        (if (gx#identifier?
                                                             _hd83038895_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd83038895_)
                        (if (gx#stx-pair? _tl83048897_)
                            (let ((_e83058900_ (gx#stx-e _tl83048897_)))
                              (let ((_hd83068903_ (##car _e83058900_))
                                    (_tl83078905_ (##cdr _e83058900_)))
                                (if (gx#stx-pair? _hd83068903_)
                                    (let ((_e83088908_
                                           (gx#stx-e _hd83068903_)))
                                      (let ((_hd83098911_ (##car _e83088908_))
                                            (_tl83108913_ (##cdr _e83088908_)))
                                        (if (gx#identifier? _hd83098911_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd83098911_)
                                                (if (gx#stx-pair? _tl83108913_)
                                                    (let ((_e83118916_
                                                           (gx#stx-e
                                                            _tl83108913_)))
                                                      (let ((_hd83128919_
                                                             (##car _e83118916_))
                                                            (_tl83138921_
                                                             (##cdr _e83118916_)))
                                                        (if (gx#stx-null?
                                                             _tl83138921_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl83078905_)
                        (if (fx>= (gx#stx-length _tl83078905_) '0)
                            (let ((_g10660_
                                   (gx#syntax-split-splice _tl83078905_ '0)))
                              (begin
                                (let ((_g10661_ (values-count _g10660_)))
                                  (if (not (fx= _g10661_ 2))
                                      (error "Context expects 2 values"
                                             _g10661_)))
                                (let ((_target83148924_
                                       (values-ref _g10660_ 0))
                                      (_tl83168926_ (values-ref _g10660_ 1)))
                                  (if (gx#stx-null? _tl83168926_)
                                      (letrec ((_loop83178929_
                                                (lambda (_hd83158932_
                                                         _xarg83218934_)
                                                  (if (gx#stx-pair?
                                                       _hd83158932_)
                                                      (let ((_e83188937_
                                                             (gx#stx-e
                                                              _hd83158932_)))
                                                        (let ((_lp-hd83198940_
                                                               (##car _e83188937_))
                                                              (_lp-tl83208942_
                                                               (##cdr _e83188937_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd83198940_)
                                                              (let ((_e83238945_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _lp-hd83198940_)))
                        (let ((_hd83248948_ (##car _e83238945_))
                              (_tl83258950_ (##cdr _e83238945_)))
                          (if (gx#identifier? _hd83248948_)
                              (if (gx#stx-eq? '%#ref _hd83248948_)
                                  (if (gx#stx-pair? _tl83258950_)
                                      (let ((_e83268953_
                                             (gx#stx-e _tl83258950_)))
                                        (let ((_hd83278956_
                                               (##car _e83268953_))
                                              (_tl83288958_
                                               (##cdr _e83268953_)))
                                          (if (gx#stx-null? _tl83288958_)
                                              (_loop83178929_
                                               _lp-tl83208942_
                                               (cons _hd83278956_
                                                     _xarg83218934_))
                                              (_g82798847_ _g82838850_))))
                                      (_g82798847_ _g82838850_))
                                  (_g82798847_ _g82838850_))
                              (_g82798847_ _g82838850_))))
                      (_g82798847_ _g82838850_))))
              (let ((_xarg83228961_ (reverse _xarg83218934_)))
                (if (gx#stx-null? _tl83018889_)
                    ((lambda (_L8964_ _L8965_ _L8966_)
                       (if (if (gx#identifier-list?
                                (begin
                                  '#!void
                                  (foldr1 (lambda (_g89948997_ _g89958999_)
                                            (cons _g89948997_ _g89958999_))
                                          '()
                                          _L8966_)))
                               (if (fx= (length (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g90019004_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g90029006_)
                    (cons _g90019004_ _g90029006_))
                  '()
                  _L8966_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (length (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g90089011_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g90099013_)
                    (cons _g90089011_ _g90099013_))
                  '()
                  _L8964_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (andmap gx#free-identifier=?
                                               (begin
                                                 '#!void
                                                 (foldr1 (lambda (_g90159018_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g90169020_)
                   (cons _g90159018_ _g90169020_))
                 '()
                 _L8966_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (begin
                                                 '#!void
                                                 (foldr1 (lambda (_g90229025_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g90239027_)
                   (cons _g90229025_ _g90239027_))
                 '()
                 _L8964_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (not (find (lambda (_g90299031_)
                                                    (gx#free-identifier=?
                                                     _g90299031_
                                                     _L8965_))
                                                  (begin
                                                    '#!void
                                                    (foldr1 (lambda (_g90339036_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g90349038_)
                      (cons _g90339036_ _g90349038_))
                    '()
                    _L8966_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '#f)
                                   '#f)
                               '#f)
                           '#t
                           (_g82798847_ _g82838850_)))
                     _xarg83228961_
                     _hd83128919_
                     _arg82988881_)
                    (_g82798847_ _g82838850_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop83178929_ _target83148924_ '()))
                                      (_g82798847_ _g82838850_)))))
                            (_g82798847_ _g82838850_))
                        (_g82798847_ _g82838850_))
                    (_g82798847_ _g82838850_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g82798847_ _g82838850_))
                                                (_g82798847_ _g82838850_))
                                            (_g82798847_ _g82838850_))))
                                    (_g82798847_ _g82838850_))))
                            (_g82798847_ _g82838850_))
                        (_g82798847_ _g82838850_))
                    (_g82798847_ _g82838850_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g82798847_
                                                     _g82838850_))))
                                            (_g82798847_ _g82838850_)))))))
                        (_loop82938865_ _target82908860_ '()))
                      (_g82798847_ _g82838850_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g82798847_ _g82838850_))
                                                (_g82798847_ _g82838850_))))
                                        (_g82798847_ _g82838850_)))))
                             (_g82789041_ _form8277_))))))))))
          (let ((_dispatch-case-e7590_
                 (lambda (_hd7738_ _body7739_)
                   (let ((_form7741_ (cons _hd7738_ (cons _body7739_ '()))))
                     (let ((_g77457869_
                            (lambda (_g77467866_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g77467866_))))
                       (let ((_g77447987_
                              (lambda (_g77467872_)
                                (if (gx#stx-pair? _g77467872_)
                                    (let ((_e78357874_ (gx#stx-e _g77467872_)))
                                      (let ((_hd78367877_ (##car _e78357874_))
                                            (_tl78377879_ (##cdr _e78357874_)))
                                        (if (gx#stx-pair? _tl78377879_)
                                            (let ((_e78387882_
                                                   (gx#stx-e _tl78377879_)))
                                              (let ((_hd78397885_
                                                     (##car _e78387882_))
                                                    (_tl78407887_
                                                     (##cdr _e78387882_)))
                                                (if (gx#stx-pair? _hd78397885_)
                                                    (let ((_e78417890_
                                                           (gx#stx-e
                                                            _hd78397885_)))
                                                      (let ((_hd78427893_
                                                             (##car _e78417890_))
                                                            (_tl78437895_
                                                             (##cdr _e78417890_)))
                                                        (if (gx#identifier?
                                                             _hd78427893_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd78427893_)
                        (if (gx#stx-pair? _tl78437895_)
                            (let ((_e78447898_ (gx#stx-e _tl78437895_)))
                              (let ((_hd78457901_ (##car _e78447898_))
                                    (_tl78467903_ (##cdr _e78447898_)))
                                (if (gx#stx-pair? _hd78457901_)
                                    (let ((_e78477906_
                                           (gx#stx-e _hd78457901_)))
                                      (let ((_hd78487909_ (##car _e78477906_))
                                            (_tl78497911_ (##cdr _e78477906_)))
                                        (if (gx#identifier? _hd78487909_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd78487909_)
                                                (if (gx#stx-pair? _tl78497911_)
                                                    (let ((_e78507914_
                                                           (gx#stx-e
                                                            _tl78497911_)))
                                                      (let ((_hd78517917_
                                                             (##car _e78507914_))
                                                            (_tl78527919_
                                                             (##cdr _e78507914_)))
                                                        (if (gx#stx-null?
                                                             _tl78527919_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl78467903_)
                        (let ((_e78537922_ (gx#stx-e _tl78467903_)))
                          (let ((_hd78547925_ (##car _e78537922_))
                                (_tl78557927_ (##cdr _e78537922_)))
                            (if (gx#stx-pair? _hd78547925_)
                                (let ((_e78567930_ (gx#stx-e _hd78547925_)))
                                  (let ((_hd78577933_ (##car _e78567930_))
                                        (_tl78587935_ (##cdr _e78567930_)))
                                    (if (gx#identifier? _hd78577933_)
                                        (if (gx#stx-eq? '%#ref _hd78577933_)
                                            (if (gx#stx-pair? _tl78587935_)
                                                (let ((_e78597938_
                                                       (gx#stx-e
                                                        _tl78587935_)))
                                                  (let ((_hd78607941_
                                                         (##car _e78597938_))
                                                        (_tl78617943_
                                                         (##cdr _e78597938_)))
                                                    (if (gx#stx-null?
                                                         _tl78617943_)
                                                        (if (gx#stx-pair?
                                                             _tl78557927_)
                                                            (let ((_e78627946_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl78557927_)))
                      (let ((_hd78637949_ (##car _e78627946_))
                            (_tl78647951_ (##cdr _e78627946_)))
                        (if (gx#stx-null? _tl78647951_)
                            (if (gx#stx-null? _tl78407887_)
                                ((lambda (_L7954_ _L7955_ _L7956_)
                                   (gxc#compile-e
                                    (cons (gx#datum->syntax__0 '#f '%#ref)
                                          (cons _L7954_ '()))))
                                 _hd78607941_
                                 _hd78517917_
                                 _hd78367877_)
                                (_g77457869_ _g77467872_))
                            (_g77457869_ _g77467872_))))
                    (_g77457869_ _g77467872_))
                (_g77457869_ _g77467872_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g77457869_ _g77467872_))
                                            (_g77457869_ _g77467872_))
                                        (_g77457869_ _g77467872_))))
                                (_g77457869_ _g77467872_))))
                        (_g77457869_ _g77467872_))
                    (_g77457869_ _g77467872_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g77457869_ _g77467872_))
                                                (_g77457869_ _g77467872_))
                                            (_g77457869_ _g77467872_))))
                                    (_g77457869_ _g77467872_))))
                            (_g77457869_ _g77467872_))
                        (_g77457869_ _g77467872_))
                    (_g77457869_ _g77467872_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g77457869_
                                                     _g77467872_))))
                                            (_g77457869_ _g77467872_))))
                                    (_g77457869_ _g77467872_)))))
                         (let ((_g77438123_
                                (lambda (_g77467990_)
                                  (if (gx#stx-pair? _g77467990_)
                                      (let ((_e77967992_
                                             (gx#stx-e _g77467990_)))
                                        (let ((_hd77977995_
                                               (##car _e77967992_))
                                              (_tl77987997_
                                               (##cdr _e77967992_)))
                                          (if (gx#stx-pair/null? _hd77977995_)
                                              (if (fx>= (gx#stx-length
                                                         _hd77977995_)
                                                        '0)
                                                  (let ((_g10648_
                                                         (gx#syntax-split-splice
                                                          _hd77977995_
                                                          '0)))
                                                    (begin
                                                      (let ((_g10649_
                                                             (values-count
                                                              _g10648_)))
                                                        (if (not (fx= _g10649_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g10649_)))
              (let ((_target77998000_ (values-ref _g10648_ 0))
                    (_tl78018002_ (values-ref _g10648_ 1)))
                (letrec ((_loop78028005_
                          (lambda (_hd78008008_ _arg78068010_)
                            (if (gx#stx-pair? _hd78008008_)
                                (let ((_e78038013_ (gx#stx-e _hd78008008_)))
                                  (let ((_lp-hd78048016_ (##car _e78038013_))
                                        (_lp-tl78058018_ (##cdr _e78038013_)))
                                    (_loop78028005_
                                     _lp-tl78058018_
                                     (cons _lp-hd78048016_ _arg78068010_))))
                                (let ((_arg78078021_ (reverse _arg78068010_)))
                                  (if (gx#stx-pair? _tl77987997_)
                                      (let ((_e78088024_
                                             (gx#stx-e _tl77987997_)))
                                        (let ((_hd78098027_
                                               (##car _e78088024_))
                                              (_tl78108029_
                                               (##cdr _e78088024_)))
                                          (if (gx#stx-pair? _hd78098027_)
                                              (let ((_e78118032_
                                                     (gx#stx-e _hd78098027_)))
                                                (let ((_hd78128035_
                                                       (##car _e78118032_))
                                                      (_tl78138037_
                                                       (##cdr _e78118032_)))
                                                  (if (gx#identifier?
                                                       _hd78128035_)
                                                      (if (gx#stx-eq?
                                                           '%#call
                                                           _hd78128035_)
                                                          (if (gx#stx-pair?
                                                               _tl78138037_)
                                                              (let ((_e78148040_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl78138037_)))
                        (let ((_hd78158043_ (##car _e78148040_))
                              (_tl78168045_ (##cdr _e78148040_)))
                          (if (gx#stx-pair? _hd78158043_)
                              (let ((_e78178048_ (gx#stx-e _hd78158043_)))
                                (let ((_hd78188051_ (##car _e78178048_))
                                      (_tl78198053_ (##cdr _e78178048_)))
                                  (if (gx#identifier? _hd78188051_)
                                      (if (gx#stx-eq? '%#ref _hd78188051_)
                                          (if (gx#stx-pair? _tl78198053_)
                                              (let ((_e78208056_
                                                     (gx#stx-e _tl78198053_)))
                                                (let ((_hd78218059_
                                                       (##car _e78208056_))
                                                      (_tl78228061_
                                                       (##cdr _e78208056_)))
                                                  (if (gx#stx-null?
                                                       _tl78228061_)
                                                      (if (gx#stx-pair?
                                                           _tl78168045_)
                                                          (let ((_e78238064_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl78168045_)))
                    (let ((_hd78248067_ (##car _e78238064_))
                          (_tl78258069_ (##cdr _e78238064_)))
                      (if (gx#stx-pair? _hd78248067_)
                          (let ((_e78268072_ (gx#stx-e _hd78248067_)))
                            (let ((_hd78278075_ (##car _e78268072_))
                                  (_tl78288077_ (##cdr _e78268072_)))
                              (if (gx#identifier? _hd78278075_)
                                  (if (gx#stx-eq? '%#ref _hd78278075_)
                                      (if (gx#stx-pair? _tl78288077_)
                                          (let ((_e78298080_
                                                 (gx#stx-e _tl78288077_)))
                                            (let ((_hd78308083_
                                                   (##car _e78298080_))
                                                  (_tl78318085_
                                                   (##cdr _e78298080_)))
                                              (if (gx#stx-null? _tl78318085_)
                                                  (if (gx#stx-null?
                                                       _tl78108029_)
                                                      ((lambda (_L8088_
                                                                _L8089_
                                                                _L8090_
                                                                _L8091_)
                                                         (gxc#compile-e
                                                          (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '%#ref)
                        (cons _L8088_ '()))))
               _hd78308083_
               _hd78218059_
               _tl78018002_
               _arg78078021_)
              (_g77447987_ _g77467990_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g77447987_ _g77467990_))))
                                          (_g77447987_ _g77467990_))
                                      (_g77447987_ _g77467990_))
                                  (_g77447987_ _g77467990_))))
                          (_g77447987_ _g77467990_))))
                  (_g77447987_ _g77467990_))
              (_g77447987_ _g77467990_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g77447987_ _g77467990_))
                                          (_g77447987_ _g77467990_))
                                      (_g77447987_ _g77467990_))))
                              (_g77447987_ _g77467990_))))
                      (_g77447987_ _g77467990_))
                  (_g77447987_ _g77467990_))
              (_g77447987_ _g77467990_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g77447987_ _g77467990_))))
                                      (_g77447987_ _g77467990_)))))))
                  (_loop78028005_ _target77998000_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g77447987_ _g77467990_))
                                              (_g77447987_ _g77467990_))))
                                      (_g77447987_ _g77467990_)))))
                           (let ((_g77428271_
                                  (lambda (_g77468126_)
                                    (if (gx#stx-pair? _g77468126_)
                                        (let ((_e77508128_
                                               (gx#stx-e _g77468126_)))
                                          (let ((_hd77518131_
                                                 (##car _e77508128_))
                                                (_tl77528133_
                                                 (##cdr _e77508128_)))
                                            (if (gx#stx-pair/null?
                                                 _hd77518131_)
                                                (if (fx>= (gx#stx-length
                                                           _hd77518131_)
                                                          '0)
                                                    (let ((_g10650_
                                                           (gx#syntax-split-splice
                                                            _hd77518131_
                                                            '0)))
                                                      (begin
                                                        (let ((_g10651_
                                                               (values-count
                                                                _g10650_)))
                                                          (if (not (fx= _g10651_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                2))
                      (error "Context expects 2 values" _g10651_)))
                (let ((_target77538136_ (values-ref _g10650_ 0))
                      (_tl77558138_ (values-ref _g10650_ 1)))
                  (if (gx#stx-null? _tl77558138_)
                      (letrec ((_loop77568141_
                                (lambda (_hd77548144_ _arg77608146_)
                                  (if (gx#stx-pair? _hd77548144_)
                                      (let ((_e77578149_
                                             (gx#stx-e _hd77548144_)))
                                        (let ((_lp-hd77588152_
                                               (##car _e77578149_))
                                              (_lp-tl77598154_
                                               (##cdr _e77578149_)))
                                          (_loop77568141_
                                           _lp-tl77598154_
                                           (cons _lp-hd77588152_
                                                 _arg77608146_))))
                                      (let ((_arg77618157_
                                             (reverse _arg77608146_)))
                                        (if (gx#stx-pair? _tl77528133_)
                                            (let ((_e77628160_
                                                   (gx#stx-e _tl77528133_)))
                                              (let ((_hd77638163_
                                                     (##car _e77628160_))
                                                    (_tl77648165_
                                                     (##cdr _e77628160_)))
                                                (if (gx#stx-pair? _hd77638163_)
                                                    (let ((_e77658168_
                                                           (gx#stx-e
                                                            _hd77638163_)))
                                                      (let ((_hd77668171_
                                                             (##car _e77658168_))
                                                            (_tl77678173_
                                                             (##cdr _e77658168_)))
                                                        (if (gx#identifier?
                                                             _hd77668171_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd77668171_)
                        (if (gx#stx-pair? _tl77678173_)
                            (let ((_e77688176_ (gx#stx-e _tl77678173_)))
                              (let ((_hd77698179_ (##car _e77688176_))
                                    (_tl77708181_ (##cdr _e77688176_)))
                                (if (gx#stx-pair? _hd77698179_)
                                    (let ((_e77718184_
                                           (gx#stx-e _hd77698179_)))
                                      (let ((_hd77728187_ (##car _e77718184_))
                                            (_tl77738189_ (##cdr _e77718184_)))
                                        (if (gx#identifier? _hd77728187_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd77728187_)
                                                (if (gx#stx-pair? _tl77738189_)
                                                    (let ((_e77748192_
                                                           (gx#stx-e
                                                            _tl77738189_)))
                                                      (let ((_hd77758195_
                                                             (##car _e77748192_))
                                                            (_tl77768197_
                                                             (##cdr _e77748192_)))
                                                        (if (gx#stx-null?
                                                             _tl77768197_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl77708181_)
                        (if (fx>= (gx#stx-length _tl77708181_) '0)
                            (let ((_g10652_
                                   (gx#syntax-split-splice _tl77708181_ '0)))
                              (begin
                                (let ((_g10653_ (values-count _g10652_)))
                                  (if (not (fx= _g10653_ 2))
                                      (error "Context expects 2 values"
                                             _g10653_)))
                                (let ((_target77778200_
                                       (values-ref _g10652_ 0))
                                      (_tl77798202_ (values-ref _g10652_ 1)))
                                  (if (gx#stx-null? _tl77798202_)
                                      (letrec ((_loop77808205_
                                                (lambda (_hd77788208_
                                                         _xarg77848210_)
                                                  (if (gx#stx-pair?
                                                       _hd77788208_)
                                                      (let ((_e77818213_
                                                             (gx#stx-e
                                                              _hd77788208_)))
                                                        (let ((_lp-hd77828216_
                                                               (##car _e77818213_))
                                                              (_lp-tl77838218_
                                                               (##cdr _e77818213_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd77828216_)
                                                              (let ((_e77868221_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _lp-hd77828216_)))
                        (let ((_hd77878224_ (##car _e77868221_))
                              (_tl77888226_ (##cdr _e77868221_)))
                          (if (gx#identifier? _hd77878224_)
                              (if (gx#stx-eq? '%#ref _hd77878224_)
                                  (if (gx#stx-pair? _tl77888226_)
                                      (let ((_e77898229_
                                             (gx#stx-e _tl77888226_)))
                                        (let ((_hd77908232_
                                               (##car _e77898229_))
                                              (_tl77918234_
                                               (##cdr _e77898229_)))
                                          (if (gx#stx-null? _tl77918234_)
                                              (_loop77808205_
                                               _lp-tl77838218_
                                               (cons _hd77908232_
                                                     _xarg77848210_))
                                              (_g77438123_ _g77468126_))))
                                      (_g77438123_ _g77468126_))
                                  (_g77438123_ _g77468126_))
                              (_g77438123_ _g77468126_))))
                      (_g77438123_ _g77468126_))))
              (let ((_xarg77858237_ (reverse _xarg77848210_)))
                (if (gx#stx-null? _tl77648165_)
                    ((lambda (_L8240_ _L8241_ _L8242_)
                       (gxc#compile-e
                        (cons (gx#datum->syntax__0 '#f '%#ref)
                              (cons _L8241_ '()))))
                     _xarg77858237_
                     _hd77758195_
                     _arg77618157_)
                    (_g77438123_ _g77468126_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop77808205_ _target77778200_ '()))
                                      (_g77438123_ _g77468126_)))))
                            (_g77438123_ _g77468126_))
                        (_g77438123_ _g77468126_))
                    (_g77438123_ _g77468126_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g77438123_ _g77468126_))
                                                (_g77438123_ _g77468126_))
                                            (_g77438123_ _g77468126_))))
                                    (_g77438123_ _g77468126_))))
                            (_g77438123_ _g77468126_))
                        (_g77438123_ _g77468126_))
                    (_g77438123_ _g77468126_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g77438123_
                                                     _g77468126_))))
                                            (_g77438123_ _g77468126_)))))))
                        (_loop77568141_ _target77538136_ '()))
                      (_g77438123_ _g77468126_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g77438123_ _g77468126_))
                                                (_g77438123_ _g77468126_))))
                                        (_g77438123_ _g77468126_)))))
                             (_g77428271_ _form7741_)))))))))
            (let ((_generate17591_
                   (lambda (_args7726_ _arglen7727_ _hd7728_ _body7729_)
                     (let ((_len7731_ (gx#stx-length _hd7728_)))
                       (let ((_condition7733_
                              (if (gx#stx-list? _hd7728_)
                                  (cons 'fx=
                                        (cons _arglen7727_
                                              (cons _len7731_ '())))
                                  (if (> _len7731_ '0)
                                      (cons 'fx>=
                                            (cons _arglen7727_
                                                  (cons _len7731_ '())))
                                      '#t))))
                         (let ((_dispatch7735_
                                (if (_dispatch-case?7589_ _hd7728_ _body7729_)
                                    (_dispatch-case-e7590_ _hd7728_ _body7729_)
                                    (cons 'lambda
                                          (cons (gxc#generate-runtime-lambda-head
                                                 _hd7728_)
                                                (cons (gxc#compile-e
                                                       _body7729_)
                                                      '()))))))
                           (let ()
                             (cons _condition7733_
                                   (cons (cons 'apply
                                               (cons _dispatch7735_
                                                     (cons _args7726_ '())))
                                         '())))))))))
              (let ((_g75937621_
                     (lambda (_g75947618_)
                       (gx#raise-syntax-error '#f '"Bad syntax" _g75947618_))))
                (let ((_g75927723_
                       (lambda (_g75947624_)
                         (if (gx#stx-pair? _g75947624_)
                             (let ((_e75977626_ (gx#stx-e _g75947624_)))
                               (let ((_hd75987629_ (##car _e75977626_))
                                     (_tl75997631_ (##cdr _e75977626_)))
                                 (if (gx#stx-pair/null? _tl75997631_)
                                     (if (fx>= (gx#stx-length _tl75997631_) '0)
                                         (let ((_g10646_
                                                (gx#syntax-split-splice
                                                 _tl75997631_
                                                 '0)))
                                           (begin
                                             (let ((_g10647_
                                                    (values-count _g10646_)))
                                               (if (not (fx= _g10647_ 2))
                                                   (error "Context expects 2 values"
                                                          _g10647_)))
                                             (let ((_target76007634_
                                                    (values-ref _g10646_ 0))
                                                   (_tl76027636_
                                                    (values-ref _g10646_ 1)))
                                               (if (gx#stx-null? _tl76027636_)
                                                   (letrec ((_loop76037639_
                                                             (lambda (_hd76017642_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _body76077644_
                              _hd76087646_)
                       (if (gx#stx-pair? _hd76017642_)
                           (let ((_e76047649_ (gx#stx-e _hd76017642_)))
                             (let ((_lp-hd76057652_ (##car _e76047649_))
                                   (_lp-tl76067654_ (##cdr _e76047649_)))
                               (if (gx#stx-pair? _lp-hd76057652_)
                                   (let ((_e76117657_
                                          (gx#stx-e _lp-hd76057652_)))
                                     (let ((_hd76127660_ (##car _e76117657_))
                                           (_tl76137662_ (##cdr _e76117657_)))
                                       (if (gx#stx-pair? _tl76137662_)
                                           (let ((_e76147665_
                                                  (gx#stx-e _tl76137662_)))
                                             (let ((_hd76157668_
                                                    (##car _e76147665_))
                                                   (_tl76167670_
                                                    (##cdr _e76147665_)))
                                               (if (gx#stx-null? _tl76167670_)
                                                   (_loop76037639_
                                                    _lp-tl76067654_
                                                    (cons _hd76157668_
                                                          _body76077644_)
                                                    (cons _hd76127660_
                                                          _hd76087646_))
                                                   (_g75937621_ _g75947624_))))
                                           (_g75937621_ _g75947624_))))
                                   (_g75937621_ _g75947624_))))
                           (let ((_body76097673_ (reverse _body76077644_))
                                 (_hd76107675_ (reverse _hd76087646_)))
                             ((lambda (_L7678_ _L7679_)
                                (let ((_args7698_
                                       (gxc#generate-runtime-temporary__0))
                                      (_arglen7699_
                                       (gxc#generate-runtime-temporary__0))
                                      (_name7700_
                                       (let ((_$e7695_
                                              (table-ref
                                               (gxc#current-compile-runtime-names)
                                               _stx7586_
                                               '#f)))
                                         (if _$e7695_
                                             _$e7695_
                                             ''case-lambda-dispatch))))
                                  (cons 'lambda
                                        (cons _args7698_
                                              (cons (cons 'let
                                                          (cons (cons (cons _arglen7699_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons 'length (cons _args7698_ '()))
                                          '()))
                              '())
                        (cons (cons 'cond
                                    (foldr1 cons
                                            (cons (cons 'else
                                                        (cons (cons '##raise-wrong-number-of-arguments-exception
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _name7700_ (cons _args7698_ '())))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())
                                            (map (lambda (_g77017704_
                                                          _g77027706_)
                                                   (_generate17591_
                                                    _args7698_
                                                    _arglen7699_
                                                    _g77017704_
                                                    _g77027706_))
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g77087711_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g77097713_)
                     (cons _g77087711_ _g77097713_))
                   '()
                   _L7679_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g77157718_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g77167720_)
                     (cons _g77157718_ _g77167720_))
                   '()
                   _L7678_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))))
                              _body76097673_
                              _hd76107675_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop76037639_
                                                      _target76007634_
                                                      '()
                                                      '()))
                                                   (_g75937621_
                                                    _g75947624_)))))
                                         (_g75937621_ _g75947624_))
                                     (_g75937621_ _g75947624_))))
                             (_g75937621_ _g75947624_)))))
                  (_g75927723_ _stx7586_)))))))))
  (begin
    (define gxc#generate-runtime-let-values%__opt-lambda7266
      (lambda (_stx7268_ _compiled-body?7269_)
        (let ((_generate-simple7271_
               (lambda (_hd7573_ _body7574_)
                 (gxc#generate-runtime-simple-let
                  'let
                  _hd7573_
                  _body7574_
                  _compiled-body?7269_))))
          (let ((_generate-values-post7273_
                 (lambda (_post7345_ _body7346_)
                   ((letrec ((_lp7348_
                              (lambda (_rest7350_ _body7351_)
                                (let ((_rest73527360_ _rest7350_))
                                  (let ((_E73557364_
                                         (lambda ()
                                           (error '"No clause matching"
                                                  _rest73527360_))))
                                    (let ((_else73547368_
                                           (lambda () _body7351_)))
                                      (let ((_K73567374_
                                             (lambda (_rest7371_ _bind7372_)
                                               (_lp7348_
                                                _rest7371_
                                                (cons 'let
                                                      (cons _bind7372_
                                                            (cons _body7351_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (##pair? _rest73527360_)
                                            (let ((_hd73577377_
                                                   (##car _rest73527360_))
                                                  (_tl73587379_
                                                   (##cdr _rest73527360_)))
                                              (let ((_bind7382_ _hd73577377_))
                                                (let ((_rest7384_
                                                       _tl73587379_))
                                                  (_K73567374_
                                                   _rest7384_
                                                   _bind7382_))))
                                            (_else73547368_)))))))))
                      _lp7348_)
                    _post7345_
                    _body7346_))))
            (let ((_generate-values-check7274_
                   (lambda (_check7342_ _body7343_)
                     (cons 'begin
                           (foldr1 cons
                                   (cons _body7343_ '())
                                   (reverse _check7342_))))))
              (let ((_generate-values7272_
                     (lambda (_hd7386_ _body7387_)
                       ((letrec ((_lp7389_
                                  (lambda (_rest7391_
                                           _bind7392_
                                           _check7393_
                                           _post7394_)
                                    (let ((_g73977408_
                                           (lambda (_g73987405_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g73987405_))))
                                      (let ((_g73967422_
                                             (lambda (_g73987411_)
                                               ((lambda ()
                                                  (let ((_body7415_
                                                         (if _compiled-body?7269_
                                                             _body7387_
                                                             (gxc#compile-e
                                                              _body7387_))))
                                                    (let ((_body7417_
                                                           (_generate-values-post7273_
                                                            _post7394_
                                                            _body7415_)))
                                                      (let ((_body7419_
                                                             (_generate-values-check7274_
                                                              _check7393_
                                                              _body7417_)))
                                                        (let ()
                                                          (cons 'let
                                                                (cons (reverse _bind7392_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _body7419_ '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_g73957570_
                                               (lambda (_g73987425_)
                                                 (if (gx#stx-pair? _g73987425_)
                                                     (let ((_e74017427_
                                                            (gx#stx-e
                                                             _g73987425_)))
                                                       (let ((_hd74027430_
                                                              (##car _e74017427_))
                                                             (_tl74037432_
                                                              (##cdr _e74017427_)))
                                                         ((lambda (_L7435_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L7436_)
                    (let ((_g74517476_
                           (lambda (_g74527473_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g74527473_))))
                      (let ((_g74507520_
                             (lambda (_g74527479_)
                               (if (gx#stx-pair? _g74527479_)
                                   (let ((_e74667481_ (gx#stx-e _g74527479_)))
                                     (let ((_hd74677484_ (##car _e74667481_))
                                           (_tl74687486_ (##cdr _e74667481_)))
                                       (if (gx#stx-pair? _tl74687486_)
                                           (let ((_e74697489_
                                                  (gx#stx-e _tl74687486_)))
                                             (let ((_hd74707492_
                                                    (##car _e74697489_))
                                                   (_tl74717494_
                                                    (##cdr _e74697489_)))
                                               (if (gx#stx-null? _tl74717494_)
                                                   ((lambda (_L7497_ _L7498_)
                                                      (let ((_vals7511_
                                                             (gxc#generate-runtime-temporary__0)))
                                                        (let ((_expr7513_
                                                               (gxc#compile-e
                                                                _L7497_)))
                                                          (let ((_check-values7515_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#generate-runtime-check-values
                          _vals7511_
                          _L7498_)))
                    (let ((_refs7517_
                           (gxc#generate-runtime-let-values-bind
                            _vals7511_
                            _L7498_)))
                      (let ()
                        (_lp7389_
                         _L7435_
                         (cons (cons _vals7511_ (cons _expr7513_ '()))
                               _bind7392_)
                         (cons _check-values7515_ _check7393_)
                         (cons _refs7517_ _post7394_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd74707492_
                                                    _hd74677484_)
                                                   (_g74517476_ _g74527479_))))
                                           (_g74517476_ _g74527479_))))
                                   (_g74517476_ _g74527479_)))))
                        (let ((_g74497567_
                               (lambda (_g74527523_)
                                 (if (gx#stx-pair? _g74527523_)
                                     (let ((_e74557525_
                                            (gx#stx-e _g74527523_)))
                                       (let ((_hd74567528_ (##car _e74557525_))
                                             (_tl74577530_
                                              (##cdr _e74557525_)))
                                         (if (gx#stx-pair? _hd74567528_)
                                             (let ((_e74587533_
                                                    (gx#stx-e _hd74567528_)))
                                               (let ((_hd74597536_
                                                      (##car _e74587533_))
                                                     (_tl74607538_
                                                      (##cdr _e74587533_)))
                                                 (if (gx#stx-null?
                                                      _tl74607538_)
                                                     (if (gx#stx-pair?
                                                          _tl74577530_)
                                                         (let ((_e74617541_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl74577530_)))
                   (let ((_hd74627544_ (##car _e74617541_))
                         (_tl74637546_ (##cdr _e74617541_)))
                     (if (gx#stx-null? _tl74637546_)
                         ((lambda (_L7549_ _L7550_)
                            (let ((_eid7564_
                                   (gxc#generate-runtime-binding-id* _L7550_))
                                  (_expr7565_ (gxc#compile-e _L7549_)))
                              (_lp7389_
                               _L7435_
                               (cons (cons _eid7564_ (cons _expr7565_ '()))
                                     _bind7392_)
                               _check7393_
                               _post7394_)))
                          _hd74627544_
                          _hd74597536_)
                         (_g74507520_ _g74527523_))))
                 (_g74507520_ _g74527523_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g74507520_
                                                      _g74527523_))))
                                             (_g74507520_ _g74527523_))))
                                     (_g74507520_ _g74527523_)))))
                          (_g74497567_ _L7436_)))))
                  _tl74037432_
                  _hd74027430_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g73967422_
                                                      _g73987425_)))))
                                          (_g73957570_ _rest7391_)))))))
                          _lp7389_)
                        _hd7386_
                        '()
                        '()
                        '()))))
                (let ((_g72767293_
                       (lambda (_g72777290_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g72777290_))))
                  (let ((_g72757339_
                         (lambda (_g72777296_)
                           (if (gx#stx-pair? _g72777296_)
                               (let ((_e72807298_ (gx#stx-e _g72777296_)))
                                 (let ((_hd72817301_ (##car _e72807298_))
                                       (_tl72827303_ (##cdr _e72807298_)))
                                   (if (gx#stx-pair? _tl72827303_)
                                       (let ((_e72837306_
                                              (gx#stx-e _tl72827303_)))
                                         (let ((_hd72847309_
                                                (##car _e72837306_))
                                               (_tl72857311_
                                                (##cdr _e72837306_)))
                                           (if (gx#stx-pair? _tl72857311_)
                                               (let ((_e72867314_
                                                      (gx#stx-e _tl72857311_)))
                                                 (let ((_hd72877317_
                                                        (##car _e72867314_))
                                                       (_tl72887319_
                                                        (##cdr _e72867314_)))
                                                   (if (gx#stx-null?
                                                        _tl72887319_)
                                                       ((lambda (_L7322_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L7323_)
                  (if (gxc#generate-runtime-simple-let? _L7323_)
                      (_generate-simple7271_ _L7323_ _L7322_)
                      (_generate-values7272_ _L7323_ _L7322_)))
                _hd72877317_
                _hd72847309_)
               (_g72767293_ _g72777296_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g72767293_ _g72777296_))))
                                       (_g72767293_ _g72777296_))))
                               (_g72767293_ _g72777296_)))))
                    (_g72757339_ _stx7268_)))))))))
    (begin
      (define gxc#generate-runtime-let-values%__0
        (lambda (_stx7579_)
          (let ((_compiled-body?7581_ '#f))
            (gxc#generate-runtime-let-values%__opt-lambda7266
             _stx7579_
             _compiled-body?7581_))))
      (define gxc#generate-runtime-let-values%
        (lambda _g10663_
          (let ((_g10662_ (length _g10663_)))
            (cond ((fx= _g10662_ 1)
                   (apply gxc#generate-runtime-let-values%__0 _g10663_))
                  ((fx= _g10662_ 2)
                   (apply gxc#generate-runtime-let-values%__opt-lambda7266
                          _g10663_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-let-values%
                    _g10663_))))))))
  (define gxc#generate-runtime-let-values-bind
    (lambda (_vals7167_ _hd7168_)
      ((letrec ((_lp7170_
                 (lambda (_rest7172_ _k7173_ _r7174_)
                   (let ((_g71797195_
                          (lambda (_g71807192_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g71807192_))))
                     (let ((_g71787202_
                            (lambda (_g71807198_)
                              ((lambda () (reverse _r7174_))))))
                       (let ((_g71777218_
                              (lambda (_g71807205_)
                                ((lambda (_L7207_)
                                   (if (gx#identifier? _L7207_)
                                       (foldl1 cons
                                               (cons (cons (gxc#generate-runtime-binding-id
                                                            _L7207_)
                                                           (cons (cons 'values->list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _vals7167_ (cons _k7173_ '())))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               _r7174_)
                                       (_g71787202_ _g71807205_)))
                                 _g71807205_))))
                         (let ((_g71767242_
                                (lambda (_g71807221_)
                                  (if (gx#stx-pair? _g71807221_)
                                      (let ((_e71877223_
                                             (gx#stx-e _g71807221_)))
                                        (let ((_hd71887226_
                                               (##car _e71877223_))
                                              (_tl71897228_
                                               (##cdr _e71877223_)))
                                          ((lambda (_L7231_ _L7232_)
                                             (_lp7170_
                                              _L7231_
                                              (fx+ _k7173_ '1)
                                              (cons (cons (gxc#generate-runtime-binding-id
                                                           _L7232_)
                                                          (cons (cons 'values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _vals7167_ (cons _k7173_ '())))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _r7174_)))
                                           _tl71897228_
                                           _hd71887226_)))
                                      (_g71777218_ _g71807221_)))))
                           (let ((_g71757264_
                                  (lambda (_g71807245_)
                                    (if (gx#stx-pair? _g71807245_)
                                        (let ((_e71827247_
                                               (gx#stx-e _g71807245_)))
                                          (let ((_hd71837250_
                                                 (##car _e71827247_))
                                                (_tl71847252_
                                                 (##cdr _e71827247_)))
                                            (if (gx#stx-datum? _hd71837250_)
                                                (if (equal? (gx#stx-e
                                                             _hd71837250_)
                                                            '#f)
                                                    ((lambda (_L7255_)
                                                       (_lp7170_
                                                        _L7255_
                                                        (fx+ _k7173_ '1)
                                                        _r7174_))
                                                     _tl71847252_)
                                                    (_g71767242_ _g71807245_))
                                                (_g71767242_ _g71807245_))))
                                        (_g71767242_ _g71807245_)))))
                             (_g71757264_ _rest7172_)))))))))
         _lp7170_)
       _hd7168_
       '0
       '())))
  (begin
    (define gxc#generate-runtime-letrec-values%__opt-lambda6845
      (lambda (_stx6847_ _compiled-body?6848_)
        (let ((_generate-simple6850_
               (lambda (_hd7154_ _body7155_)
                 (gxc#generate-runtime-simple-let
                  'letrec
                  _hd7154_
                  _body7155_
                  _compiled-body?6848_))))
          (let ((_generate-values-check6852_
                 (lambda (_check6928_ _body6929_)
                   (cons 'begin
                         (foldr1 cons
                                 (cons _body6929_ '())
                                 (reverse _check6928_))))))
            (let ((_generate-values-post6853_
                   (lambda (_post6921_ _body6922_)
                     (cons 'begin
                           (foldr1 cons
                                   (cons _body6922_ '())
                                   (map (lambda (_g69236925_)
                                          (cons 'set! _g69236925_))
                                        (reverse _post6921_)))))))
              (let ((_generate-values6851_
                     (lambda (_hd6931_ _body6932_)
                       ((letrec ((_lp6934_
                                  (lambda (_rest6936_
                                           _bind6937_
                                           _check6938_
                                           _post6939_)
                                    (let ((_g69426953_
                                           (lambda (_g69436950_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g69436950_))))
                                      (let ((_g69416967_
                                             (lambda (_g69436956_)
                                               ((lambda ()
                                                  (let ((_body6960_
                                                         (if _compiled-body?6848_
                                                             _body6932_
                                                             (gxc#compile-e
                                                              _body6932_))))
                                                    (let ((_body6962_
                                                           (_generate-values-post6853_
                                                            _post6939_
                                                            _body6960_)))
                                                      (let ((_body6964_
                                                             (_generate-values-check6852_
                                                              _check6938_
                                                              _body6962_)))
                                                        (let ()
                                                          (cons 'letrec
                                                                (cons (reverse _bind6937_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _body6964_ '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_g69407151_
                                               (lambda (_g69436970_)
                                                 (if (gx#stx-pair? _g69436970_)
                                                     (let ((_e69466972_
                                                            (gx#stx-e
                                                             _g69436970_)))
                                                       (let ((_hd69476975_
                                                              (##car _e69466972_))
                                                             (_tl69486977_
                                                              (##cdr _e69466972_)))
                                                         ((lambda (_L6980_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L6981_)
                    (let ((_g69967021_
                           (lambda (_g69977018_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g69977018_))))
                      (let ((_g69957101_
                             (lambda (_g69977024_)
                               (if (gx#stx-pair? _g69977024_)
                                   (let ((_e70117026_ (gx#stx-e _g69977024_)))
                                     (let ((_hd70127029_ (##car _e70117026_))
                                           (_tl70137031_ (##cdr _e70117026_)))
                                       (if (gx#stx-pair? _tl70137031_)
                                           (let ((_e70147034_
                                                  (gx#stx-e _tl70137031_)))
                                             (let ((_hd70157037_
                                                    (##car _e70147034_))
                                                   (_tl70167039_
                                                    (##cdr _e70147034_)))
                                               (if (gx#stx-null? _tl70167039_)
                                                   ((lambda (_L7042_ _L7043_)
                                                      (let ((_vals7056_
                                                             (gxc#generate-runtime-temporary__0)))
                                                        (let ((_expr7058_
                                                               (gxc#compile-e
                                                                _L7042_)))
                                                          (let ((_check-values7060_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#generate-runtime-check-values
                          _vals7056_
                          _L7043_)))
                    (let ((_refs7062_
                           (gxc#generate-runtime-let-values-bind
                            _vals7056_
                            _L7043_)))
                      (let ()
                        (_lp6934_
                         _L6980_
                         (foldl1 cons
                                 (cons (cons _vals7056_ (cons _expr7058_ '()))
                                       _bind6937_)
                                 (map (lambda (_e70647066_)
                                        (let ((_g70687077_ _e70647066_))
                                          (let ((_E70707081_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _g70687077_))))
                                            (let ((_K70717086_
                                                   (lambda (_eid7084_)
                                                     (cons _eid7084_
                                                           (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##pair? _g70687077_)
                                                  (let ((_hd70727089_
                                                         (##car _g70687077_))
                                                        (_tl70737091_
                                                         (##cdr _g70687077_)))
                                                    (let ((_eid7094_
                                                           _hd70727089_))
                                                      (if (##pair? _tl70737091_)
                                                          (let ((_hd70747096_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _tl70737091_))
                        (_tl70757098_ (##cdr _tl70737091_)))
                    (if (##null? _tl70757098_)
                        (_K70717086_ _eid7094_)
                        (_E70707081_)))
                  (_E70707081_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E70707081_))))))
                                      _refs7062_))
                         (cons _check-values7060_ _check6938_)
                         (foldl1 cons _refs7062_ _post6939_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd70157037_
                                                    _hd70127029_)
                                                   (_g69967021_ _g69977024_))))
                                           (_g69967021_ _g69977024_))))
                                   (_g69967021_ _g69977024_)))))
                        (let ((_g69947148_
                               (lambda (_g69977104_)
                                 (if (gx#stx-pair? _g69977104_)
                                     (let ((_e70007106_
                                            (gx#stx-e _g69977104_)))
                                       (let ((_hd70017109_ (##car _e70007106_))
                                             (_tl70027111_
                                              (##cdr _e70007106_)))
                                         (if (gx#stx-pair? _hd70017109_)
                                             (let ((_e70037114_
                                                    (gx#stx-e _hd70017109_)))
                                               (let ((_hd70047117_
                                                      (##car _e70037114_))
                                                     (_tl70057119_
                                                      (##cdr _e70037114_)))
                                                 (if (gx#stx-null?
                                                      _tl70057119_)
                                                     (if (gx#stx-pair?
                                                          _tl70027111_)
                                                         (let ((_e70067122_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl70027111_)))
                   (let ((_hd70077125_ (##car _e70067122_))
                         (_tl70087127_ (##cdr _e70067122_)))
                     (if (gx#stx-null? _tl70087127_)
                         ((lambda (_L7130_ _L7131_)
                            (let ((_eid7145_
                                   (gxc#generate-runtime-binding-id* _L7131_))
                                  (_expr7146_ (gxc#compile-e _L7130_)))
                              (_lp6934_
                               _L6980_
                               (cons (cons _eid7145_ (cons _expr7146_ '()))
                                     _bind6937_)
                               _check6938_
                               _post6939_)))
                          _hd70077125_
                          _hd70047117_)
                         (_g69957101_ _g69977104_))))
                 (_g69957101_ _g69977104_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g69957101_
                                                      _g69977104_))))
                                             (_g69957101_ _g69977104_))))
                                     (_g69957101_ _g69977104_)))))
                          (_g69947148_ _L6981_)))))
                  _tl69486977_
                  _hd69476975_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g69416967_
                                                      _g69436970_)))))
                                          (_g69407151_ _rest6936_)))))))
                          _lp6934_)
                        _hd6931_
                        '()
                        '()
                        '()))))
                (let ((_g68556872_
                       (lambda (_g68566869_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g68566869_))))
                  (let ((_g68546918_
                         (lambda (_g68566875_)
                           (if (gx#stx-pair? _g68566875_)
                               (let ((_e68596877_ (gx#stx-e _g68566875_)))
                                 (let ((_hd68606880_ (##car _e68596877_))
                                       (_tl68616882_ (##cdr _e68596877_)))
                                   (if (gx#stx-pair? _tl68616882_)
                                       (let ((_e68626885_
                                              (gx#stx-e _tl68616882_)))
                                         (let ((_hd68636888_
                                                (##car _e68626885_))
                                               (_tl68646890_
                                                (##cdr _e68626885_)))
                                           (if (gx#stx-pair? _tl68646890_)
                                               (let ((_e68656893_
                                                      (gx#stx-e _tl68646890_)))
                                                 (let ((_hd68666896_
                                                        (##car _e68656893_))
                                                       (_tl68676898_
                                                        (##cdr _e68656893_)))
                                                   (if (gx#stx-null?
                                                        _tl68676898_)
                                                       ((lambda (_L6901_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L6902_)
                  (if (gxc#generate-runtime-simple-let? _L6902_)
                      (_generate-simple6850_ _L6902_ _L6901_)
                      (_generate-values6851_ _L6902_ _L6901_)))
                _hd68666896_
                _hd68636888_)
               (_g68556872_ _g68566875_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g68556872_ _g68566875_))))
                                       (_g68556872_ _g68566875_))))
                               (_g68556872_ _g68566875_)))))
                    (_g68546918_ _stx6847_)))))))))
    (begin
      (define gxc#generate-runtime-letrec-values%__0
        (lambda (_stx7160_)
          (let ((_compiled-body?7162_ '#f))
            (gxc#generate-runtime-letrec-values%__opt-lambda6845
             _stx7160_
             _compiled-body?7162_))))
      (define gxc#generate-runtime-letrec-values%
        (lambda _g10665_
          (let ((_g10664_ (length _g10665_)))
            (cond ((fx= _g10664_ 1)
                   (apply gxc#generate-runtime-letrec-values%__0 _g10665_))
                  ((fx= _g10664_ 2)
                   (apply gxc#generate-runtime-letrec-values%__opt-lambda6845
                          _g10665_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-letrec-values%
                    _g10665_))))))))
  (define gxc#generate-runtime-letrec*-values%
    (lambda (_stx5966_)
      (let ((_collect-closures5969_
             (lambda (_forms6787_)
               (map (lambda (_e67886790_)
                      (let ((_g67926801_ _e67886790_))
                        (let ((_E67946805_
                               (lambda ()
                                 (error '"No clause matching" _g67926801_))))
                          (let ((_K67956810_
                                 (lambda (_expr6808_)
                                   (gxc#collect-expression-refs _expr6808_))))
                            (if (##pair? _g67926801_)
                                (let ((_hd67966813_ (##car _g67926801_))
                                      (_tl67976815_ (##cdr _g67926801_)))
                                  (if (##pair? _tl67976815_)
                                      (let ((_hd67986818_ (##car _tl67976815_))
                                            (_tl67996820_
                                             (##cdr _tl67976815_)))
                                        (let ((_expr6823_ _hd67986818_))
                                          (if (##null? _tl67996820_)
                                              (_K67956810_ _expr6823_)
                                              (_E67946805_))))
                                      (_E67946805_)))
                                (_E67946805_))))))
                    _forms6787_))))
        (let ((_collect-bindings5970_
               (lambda (_forms6711_)
                 (map (lambda (_e67126714_)
                        (let ((_g67166725_ _e67126714_))
                          (let ((_E67186729_
                                 (lambda ()
                                   (error '"No clause matching" _g67166725_))))
                            (let ((_K67196772_
                                   (lambda (_bind6732_)
                                     ((letrec ((_lp6734_
                                                (lambda (_rest6736_ _r6737_)
                                                  (let ((_rest67386746_
                                                         _rest6736_))
                                                    (let ((_E67416750_
                                                           (lambda ()
                                                             (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _rest67386746_))))
              (let ((_else67406754_
                     (lambda ()
                       (if (gx#identifier? _rest6736_)
                           (cons _rest6736_ _r6737_)
                           _r6737_))))
                (let ((_K67426760_
                       (lambda (_rest6757_ _id6758_)
                         (if (gx#identifier? _id6758_)
                             (_lp6734_
                              _rest6757_
                              (cons (##structure-ref
                                     (gx#resolve-identifier__0 _id6758_)
                                     '1
                                     gx#binding::t
                                     '#f)
                                    _r6737_))
                             (_lp6734_ _rest6757_ _r6737_)))))
                  (if (##pair? _rest67386746_)
                      (let ((_hd67436763_ (##car _rest67386746_))
                            (_tl67446765_ (##cdr _rest67386746_)))
                        (let ((_id6768_ _hd67436763_))
                          (let ((_rest6770_ _tl67446765_))
                            (_K67426760_ _rest6770_ _id6768_))))
                      (_else67406754_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _lp6734_)
                                      _bind6732_
                                      '()))))
                              (if (##pair? _g67166725_)
                                  (let ((_hd67206775_ (##car _g67166725_))
                                        (_tl67216777_ (##cdr _g67166725_)))
                                    (let ((_bind6780_ _hd67206775_))
                                      (if (##pair? _tl67216777_)
                                          (let ((_hd67226782_
                                                 (##car _tl67216777_))
                                                (_tl67236784_
                                                 (##cdr _tl67216777_)))
                                            (if (##null? _tl67236784_)
                                                (_K67196772_ _bind6780_)
                                                (_E67186729_)))
                                          (_E67186729_))))
                                  (_E67186729_))))))
                      _forms6711_))))
          (let ((_closure-reference?5974_
                 (lambda (_closure6263_ _bindings6264_)
                   (ormap1 (lambda (_g62656267_)
                             (table-ref _closure6263_ _g62656267_ '#f))
                           _bindings6264_))))
            (let ((_is-effect-expr?5976_
                   (lambda (_expr6174_)
                     (let ((_g61766186_
                            (lambda (_g61776183_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g61776183_))))
                       (let ((_g61756209_
                              (lambda (_g61776189_)
                                (if (gx#stx-pair? _g61776189_)
                                    (let ((_e61796191_ (gx#stx-e _g61776189_)))
                                      (let ((_hd61806194_ (##car _e61796191_))
                                            (_tl61816196_ (##cdr _e61796191_)))
                                        ((lambda (_L6199_)
                                           (not (memq (gx#stx-e _L6199_)
                                                      '(%#lambda
                                                        %#case-lambda
                                                        %#quote
                                                        %#quote-syntax
                                                        %#ref))))
                                         _hd61806194_)))
                                    (_g61766186_ _g61776189_)))))
                         (_g61756209_ _expr6174_))))))
              (let ((_is-lambda-expr?5977_
                     (lambda (_expr6136_)
                       (let ((_g61386148_
                              (lambda (_g61396145_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g61396145_))))
                         (let ((_g61376171_
                                (lambda (_g61396151_)
                                  (if (gx#stx-pair? _g61396151_)
                                      (let ((_e61416153_
                                             (gx#stx-e _g61396151_)))
                                        (let ((_hd61426156_
                                               (##car _e61416153_))
                                              (_tl61436158_
                                               (##cdr _e61416153_)))
                                          ((lambda (_L6161_)
                                             (memq (gx#stx-e _L6161_)
                                                   '(%#lambda %#case-lambda)))
                                           _hd61426156_)))
                                      (_g61386148_ _g61396151_)))))
                           (_g61376171_ _expr6136_))))))
                (let ((_lift-rec5973_
                       (lambda (_forms6270_)
                         ((letrec ((_lp6272_
                                    (lambda (_rest6274_
                                             _pre6275_
                                             _bind6276_
                                             _init6277_)
                                      (let ((_rest62786286_ _rest6274_))
                                        (let ((_E62816290_
                                               (lambda ()
                                                 (error '"No clause matching"
                                                        _rest62786286_))))
                                          (let ((_else62806294_
                                                 (lambda ()
                                                   (values (reverse _pre6275_)
                                                           (reverse _bind6276_)
                                                           (reverse _init6277_)))))
                                            (let ((_K62826485_
                                                   (lambda (_rest6297_
                                                            _bind-hd6298_)
                                                     (let ((_g63026337_
                                                            (lambda (_g63036334_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g63036334_))))
                                                       (let ((_g63016394_
                                                              (lambda (_g63036340_)
                                                                (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g63036340_)
                            (let ((_e63276342_ (gx#stx-e _g63036340_)))
                              (let ((_hd63286345_ (##car _e63276342_))
                                    (_tl63296347_ (##cdr _e63276342_)))
                                (if (gx#stx-pair? _tl63296347_)
                                    (let ((_e63306350_
                                           (gx#stx-e _tl63296347_)))
                                      (let ((_hd63316353_ (##car _e63306350_))
                                            (_tl63326355_ (##cdr _e63306350_)))
                                        (if (gx#stx-null? _tl63326355_)
                                            ((lambda (_L6358_ _L6359_)
                                               (let ((_vals6378_
                                                      (gxc#generate-runtime-temporary__0)))
                                                 (let ((_expr6380_
                                                        (gxc#compile-e
                                                         _L6358_)))
                                                   (let ((_check-values6382_
                                                          (gxc#generate-runtime-check-values
                                                           _vals6378_
                                                           _L6359_)))
                                                     (let ((_refs6384_
                                                            (gxc#generate-runtime-let-values-bind
                                                             _vals6378_
                                                             _L6359_)))
                                                       (let ()
                                                         (_lp6272_
                                                          _rest6297_
                                                          (foldl1 (lambda (_ref6387_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _r6388_)
                            (cons (cons (car _ref6387_) (cons '#!void '()))
                                  _r6388_))
                          _pre6275_
                          _refs6384_)
                  _bind6276_
                  (cons (cons 'let
                              (cons (cons (cons _vals6378_
                                                (cons _expr6380_ '()))
                                          '())
                                    (cons _check-values6382_
                                          (cons (map (lambda (_g63896391_)
                                                       (cons 'set!
                                                             _g63896391_))
                                                     _refs6384_)
                                                '()))))
                        _init6277_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd63316353_
                                             _hd63286345_)
                                            (_g63026337_ _g63036340_))))
                                    (_g63026337_ _g63036340_))))
                            (_g63026337_ _g63036340_)))))
                 (let ((_g63006440_
                        (lambda (_g63036397_)
                          (if (gx#stx-pair? _g63036397_)
                              (let ((_e63166399_ (gx#stx-e _g63036397_)))
                                (let ((_hd63176402_ (##car _e63166399_))
                                      (_tl63186404_ (##cdr _e63166399_)))
                                  (if (gx#stx-pair? _hd63176402_)
                                      (let ((_e63196407_
                                             (gx#stx-e _hd63176402_)))
                                        (let ((_hd63206410_
                                               (##car _e63196407_))
                                              (_tl63216412_
                                               (##cdr _e63196407_)))
                                          (if (gx#stx-null? _tl63216412_)
                                              (if (gx#stx-pair? _tl63186404_)
                                                  (let ((_e63226415_
                                                         (gx#stx-e
                                                          _tl63186404_)))
                                                    (let ((_hd63236418_
                                                           (##car _e63226415_))
                                                          (_tl63246420_
                                                           (##cdr _e63226415_)))
                                                      (if (gx#stx-null?
                                                           _tl63246420_)
                                                          ((lambda (_L6423_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L6424_)
                     (let ((_eid6438_
                            (gxc#generate-runtime-binding-id _L6424_)))
                       (if (_is-lambda-expr?5977_ _L6423_)
                           (_lp6272_
                            _rest6297_
                            _pre6275_
                            (cons (cons _eid6438_
                                        (cons (gxc#compile-e _L6423_) '()))
                                  _bind6276_)
                            _init6277_)
                           (_lp6272_
                            _rest6297_
                            (cons (cons _eid6438_ (cons '#!void '()))
                                  _pre6275_)
                            _bind6276_
                            (cons (cons 'set!
                                        (cons _eid6438_
                                              (cons (gxc#compile-e _L6423_)
                                                    '())))
                                  _init6277_)))))
                   _hd63236418_
                   _hd63206410_)
                  (_g63016394_ _g63036397_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g63016394_ _g63036397_))
                                              (_g63016394_ _g63036397_))))
                                      (_g63016394_ _g63036397_))))
                              (_g63016394_ _g63036397_)))))
                   (let ((_g62996482_
                          (lambda (_g63036443_)
                            (if (gx#stx-pair? _g63036443_)
                                (let ((_e63056445_ (gx#stx-e _g63036443_)))
                                  (let ((_hd63066448_ (##car _e63056445_))
                                        (_tl63076450_ (##cdr _e63056445_)))
                                    (if (gx#stx-pair? _hd63066448_)
                                        (let ((_e63086453_
                                               (gx#stx-e _hd63066448_)))
                                          (let ((_hd63096456_
                                                 (##car _e63086453_))
                                                (_tl63106458_
                                                 (##cdr _e63086453_)))
                                            (if (gx#stx-datum? _hd63096456_)
                                                (if (equal? (gx#stx-e
                                                             _hd63096456_)
                                                            '#f)
                                                    (if (gx#stx-null?
                                                         _tl63106458_)
                                                        (if (gx#stx-pair?
                                                             _tl63076450_)
                                                            (let ((_e63116461_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl63076450_)))
                      (let ((_hd63126464_ (##car _e63116461_))
                            (_tl63136466_ (##cdr _e63116461_)))
                        (if (gx#stx-null? _tl63136466_)
                            ((lambda (_L6469_)
                               (_lp6272_
                                _rest6297_
                                _pre6275_
                                _bind6276_
                                (cons (gxc#compile-e _L6469_) _init6277_)))
                             _hd63126464_)
                            (_g63006440_ _g63036443_))))
                    (_g63006440_ _g63036443_))
                (_g63006440_ _g63036443_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g63006440_ _g63036443_))
                                                (_g63006440_ _g63036443_))))
                                        (_g63006440_ _g63036443_))))
                                (_g63006440_ _g63036443_)))))
                     (_g62996482_ _bind-hd6298_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##pair? _rest62786286_)
                                                  (let ((_hd62836488_
                                                         (##car _rest62786286_))
                                                        (_tl62846490_
                                                         (##cdr _rest62786286_)))
                                                    (let ((_bind-hd6493_
                                                           _hd62836488_))
                                                      (let ((_rest6495_
                                                             _tl62846490_))
                                                        (_K62826485_
                                                         _rest6495_
                                                         _bind-hd6493_))))
                                                  (_else62806294_)))))))))
                            _lp6272_)
                          _forms6270_
                          '()
                          '()
                          '()))))
                  (let ((_is-effect-bind?5975_
                         (lambda (_hd-bind6212_)
                           (let ((_g62146227_
                                  (lambda (_g62156224_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g62156224_))))
                             (let ((_g62136260_
                                    (lambda (_g62156230_)
                                      (if (gx#stx-pair? _g62156230_)
                                          (let ((_e62176232_
                                                 (gx#stx-e _g62156230_)))
                                            (let ((_hd62186235_
                                                   (##car _e62176232_))
                                                  (_tl62196237_
                                                   (##cdr _e62176232_)))
                                              (if (gx#stx-pair? _tl62196237_)
                                                  (let ((_e62206240_
                                                         (gx#stx-e
                                                          _tl62196237_)))
                                                    (let ((_hd62216243_
                                                           (##car _e62206240_))
                                                          (_tl62226245_
                                                           (##cdr _e62206240_)))
                                                      (if (gx#stx-null?
                                                           _tl62226245_)
                                                          ((lambda (_L6248_)
                                                             (_is-effect-expr?5976_
                                                              _L6248_))
                                                           _hd62216243_)
                                                          (_g62146227_
                                                           _g62156230_))))
                                                  (_g62146227_ _g62156230_))))
                                          (_g62146227_ _g62156230_)))))
                               (_g62136260_ _hd-bind6212_))))))
                    (let ((_lift-pre5971_
                           (lambda (_hd6604_ _bindings6605_ _closures6606_)
                             ((letrec ((_lp6608_
                                        (lambda (_rest-forms6610_
                                                 _rest-bindings6611_
                                                 _rest-closures6612_
                                                 _post-forms6613_
                                                 _post-bindings6614_
                                                 _post-closures6615_
                                                 _pre-forms6616_
                                                 _lifted?6617_)
                                          (let ((_rest-forms66186634_
                                                 _rest-forms6610_)
                                                (_rest-bindings66196636_
                                                 _rest-bindings6611_)
                                                (_rest-closures66206638_
                                                 _rest-closures6612_))
                                            (let ((_E66236642_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _rest-forms66186634_
                                                            _rest-bindings66196636_
                                                            _rest-closures66206638_))))
                                              (let ((_else66226646_
                                                     (lambda ()
                                                       (if _lifted?6617_
                                                           (_lp6608_
                                                            (reverse _post-forms6613_)
                                                            (reverse _post-bindings6614_)
                                                            (reverse _post-closures6615_)
                                                            '()
                                                            '()
                                                            '()
                                                            _pre-forms6616_
                                                            '#f)
                                                           (values (reverse _pre-forms6616_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _post-forms6613_)
                           (reverse _post-bindings6614_)
                           (reverse _post-closures6615_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_K66246699_
                                                       (lambda (_rest-forms6649_
                                                                _form6650_)
                                                         (let ((_K66256687_
                                                                (lambda (_rest-bindings6652_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _bindings6653_)
                          (let ((_K66266675_
                                 (lambda (_rest-closures6655_ _closure6656_)
                                   (if (let ((_$e6658_
                                              (_closure-reference?5974_
                                               _closure6656_
                                               _bindings6653_)))
                                         (if _$e6658_
                                             _$e6658_
                                             (let ((_$e6665_
                                                    (ormap1 (lambda (_g66606662_)
                                                              (_closure-reference?5974_
                                                               _closure6656_
                                                               _g66606662_))
                                                            _rest-bindings6652_)))
                                               (if _$e6665_
                                                   _$e6665_
                                                   (let ((_$e6672_
                                                          (ormap1 (lambda (_g66676669_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (_closure-reference?5974_
                             _closure6656_
                             _g66676669_))
                          _post-bindings6614_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e6672_
                                                         _$e6672_
                                                         (if (_is-effect-bind?5975_
                                                              _form6650_)
                                                             (find _is-effect-bind?5975_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _post-forms6613_)
                     '#f)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_lp6608_
                                        _rest-forms6649_
                                        _rest-bindings6652_
                                        _rest-closures6655_
                                        (cons _form6650_ _post-forms6613_)
                                        (cons _bindings6653_
                                              _post-bindings6614_)
                                        (cons _closure6656_
                                              _post-closures6615_)
                                        _pre-forms6616_
                                        _lifted?6617_)
                                       (_lp6608_
                                        _rest-forms6649_
                                        _rest-bindings6652_
                                        _rest-closures6655_
                                        _post-forms6613_
                                        _post-bindings6614_
                                        _post-closures6615_
                                        (cons _form6650_ _pre-forms6616_)
                                        '#t)))))
                            (if (##pair? _rest-closures66206638_)
                                (let ((_hd66276678_
                                       (##car _rest-closures66206638_))
                                      (_tl66286680_
                                       (##cdr _rest-closures66206638_)))
                                  (let ((_closure6683_ _hd66276678_))
                                    (let ((_rest-closures6685_ _tl66286680_))
                                      (_K66266675_
                                       _rest-closures6685_
                                       _closure6683_))))
                                (_else66226646_))))))
                   (if (##pair? _rest-bindings66196636_)
                       (let ((_hd66296690_ (##car _rest-bindings66196636_))
                             (_tl66306692_ (##cdr _rest-bindings66196636_)))
                         (let ((_bindings6695_ _hd66296690_))
                           (let ((_rest-bindings6697_ _tl66306692_))
                             (_K66256687_
                              _rest-bindings6697_
                              _bindings6695_))))
                       (_else66226646_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (##pair? _rest-forms66186634_)
                                                      (let ((_hd66316702_
                                                             (##car _rest-forms66186634_))
                                                            (_tl66326704_
                                                             (##cdr _rest-forms66186634_)))
                                                        (let ((_form6707_
                                                               _hd66316702_))
                                                          (let ((_rest-forms6709_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl66326704_))
                    (_K66246699_ _rest-forms6709_ _form6707_))))
              (_else66226646_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _lp6608_)
                              _hd6604_
                              _bindings6605_
                              _closures6606_
                              '()
                              '()
                              '()
                              '()
                              '#f))))
                      (let ((_lift-post5972_
                             (lambda (_hd6497_ _bindings6498_ _closures6499_)
                               ((letrec ((_lp6501_
                                          (lambda (_rest-forms6503_
                                                   _rest-bindings6504_
                                                   _rest-closures6505_
                                                   _pre-forms6506_
                                                   _pre-bindings6507_
                                                   _pre-closures6508_
                                                   _post-forms6509_
                                                   _lifted?6510_)
                                            (let ((_rest-forms65116527_
                                                   _rest-forms6503_)
                                                  (_rest-bindings65126529_
                                                   _rest-bindings6504_)
                                                  (_rest-closures65136531_
                                                   _rest-closures6505_))
                                              (let ((_E65166535_
                                                     (lambda ()
                                                       (error '"No clause matching"
                                                              _rest-forms65116527_
                                                              _rest-bindings65126529_
                                                              _rest-closures65136531_))))
                                                (let ((_else65156539_
                                                       (lambda ()
                                                         (if _lifted?6510_
                                                             (_lp6501_
                                                              (reverse _pre-forms6506_)
                                                              (reverse _pre-bindings6507_)
                                                              (reverse _pre-closures6508_)
                                                              '()
                                                              '()
                                                              '()
                                                              _post-forms6509_
                                                              '#f)
                                                             (values _post-forms6509_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _pre-forms6506_
                             _pre-bindings6507_
                             _pre-closures6508_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_K65176592_
                                                         (lambda (_rest-forms6542_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _form6543_)
                   (let ((_K65186580_
                          (lambda (_rest-bindings6545_ _bindings6546_)
                            (let ((_K65196568_
                                   (lambda (_rest-closures6548_ _closure6549_)
                                     (if (let ((_$e6551_
                                                (_closure-reference?5974_
                                                 _closure6549_
                                                 _bindings6546_)))
                                           (if _$e6551_
                                               _$e6551_
                                               (let ((_$e6558_
                                                      (ormap1 (lambda (_g65536555_)
                                                                (_closure-reference?5974_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g65536555_
                         _bindings6546_))
                      _rest-closures6548_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e6558_
                                                     _$e6558_
                                                     (let ((_$e6565_
                                                            (ormap1 (lambda (_g65606562_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (_closure-reference?5974_
                               _g65606562_
                               _bindings6546_))
                            _pre-closures6508_)))
               (if _$e6565_
                   _$e6565_
                   (if (_is-effect-bind?5975_ _form6543_)
                       (find _is-effect-bind?5975_ _pre-forms6506_)
                       '#f)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_lp6501_
                                          _rest-forms6542_
                                          _rest-bindings6545_
                                          _rest-closures6548_
                                          (cons _form6543_ _pre-forms6506_)
                                          (cons _bindings6546_
                                                _pre-bindings6507_)
                                          (cons _closure6549_
                                                _pre-closures6508_)
                                          _post-forms6509_
                                          _lifted?6510_)
                                         (_lp6501_
                                          _rest-forms6542_
                                          _rest-bindings6545_
                                          _rest-closures6548_
                                          _pre-forms6506_
                                          _pre-bindings6507_
                                          _pre-closures6508_
                                          (cons _form6543_ _post-forms6509_)
                                          '#t)))))
                              (if (##pair? _rest-closures65136531_)
                                  (let ((_hd65206571_
                                         (##car _rest-closures65136531_))
                                        (_tl65216573_
                                         (##cdr _rest-closures65136531_)))
                                    (let ((_closure6576_ _hd65206571_))
                                      (let ((_rest-closures6578_ _tl65216573_))
                                        (_K65196568_
                                         _rest-closures6578_
                                         _closure6576_))))
                                  (_else65156539_))))))
                     (if (##pair? _rest-bindings65126529_)
                         (let ((_hd65226583_ (##car _rest-bindings65126529_))
                               (_tl65236585_ (##cdr _rest-bindings65126529_)))
                           (let ((_bindings6588_ _hd65226583_))
                             (let ((_rest-bindings6590_ _tl65236585_))
                               (_K65186580_
                                _rest-bindings6590_
                                _bindings6588_))))
                         (_else65156539_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (##pair? _rest-forms65116527_)
                                                        (let ((_hd65246595_
                                                               (##car _rest-forms65116527_))
                                                              (_tl65256597_
                                                               (##cdr _rest-forms65116527_)))
                                                          (let ((_form6600_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd65246595_))
                    (let ((_rest-forms6602_ _tl65256597_))
                      (_K65176592_ _rest-forms6602_ _form6600_))))
                (_else65156539_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _lp6501_)
                                (reverse _hd6497_)
                                (reverse _bindings6498_)
                                (reverse _closures6499_)
                                '()
                                '()
                                '()
                                '()
                                '#f))))
                        (let ((_linearize5968_
                               (lambda (_forms6825_)
                                 (let ((_closures6827_
                                        (_collect-closures5969_ _forms6825_)))
                                   (let ((_bindings6829_
                                          (_collect-bindings5970_
                                           _forms6825_)))
                                     (let ((_g10668_
                                            (_lift-pre5971_
                                             _forms6825_
                                             _bindings6829_
                                             _closures6827_)))
                                       (begin
                                         (let ((_g10669_
                                                (values-count _g10668_)))
                                           (if (not (fx= _g10669_ 4))
                                               (error "Context expects 4 values"
                                                      _g10669_)))
                                         (let ((_pre-bind6831_
                                                (values-ref _g10668_ 0))
                                               (_forms6832_
                                                (values-ref _g10668_ 1))
                                               (_bindings6833_
                                                (values-ref _g10668_ 2))
                                               (_closures6834_
                                                (values-ref _g10668_ 3)))
                                           (let ((_g10670_
                                                  (_lift-post5972_
                                                   _forms6832_
                                                   _bindings6833_
                                                   _closures6834_)))
                                             (begin
                                               (let ((_g10671_
                                                      (values-count _g10670_)))
                                                 (if (not (fx= _g10671_ 4))
                                                     (error "Context expects 4 values"
                                                            _g10671_)))
                                               (let ((_post-bind6836_
                                                      (values-ref _g10670_ 0))
                                                     (_forms6837_
                                                      (values-ref _g10670_ 1))
                                                     (_bindings6838_
                                                      (values-ref _g10670_ 2))
                                                     (_closures6839_
                                                      (values-ref _g10670_ 3)))
                                                 (let ((_g10672_
                                                        (_lift-rec5973_
                                                         _forms6837_)))
                                                   (begin
                                                     (let ((_g10673_
                                                            (values-count
                                                             _g10672_)))
                                                       (if (not (fx= _g10673_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             3))
                   (error "Context expects 3 values" _g10673_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_rec-pre6841_
                                                            (values-ref
                                                             _g10672_
                                                             0))
                                                           (_rec-bind6842_
                                                            (values-ref
                                                             _g10672_
                                                             1))
                                                           (_rec-init6843_
                                                            (values-ref
                                                             _g10672_
                                                             2)))
                                                       (let ()
                                                         (values _pre-bind6831_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _rec-pre6841_
                         _rec-bind6842_
                         _rec-init6843_
                         _post-bind6836_))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (letrec ((_generate-let*5978_
                                    (lambda (_hd6065_ _body6066_)
                                      (let ((_hd60676075_ _hd6065_))
                                        (let ((_E60706079_
                                               (lambda ()
                                                 (error '"No clause matching"
                                                        _hd60676075_))))
                                          (let ((_else60696083_
                                                 (lambda () _body6066_)))
                                            (let ((_K60716124_
                                                   (lambda (_rest6086_
                                                            _bind6087_)
                                                     (let ((_bind60886097_
                                                            _bind6087_))
                                                       (let ((_E60906101_
                                                              (lambda ()
                                                                (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind60886097_))))
                 (let ((_K60916107_
                        (lambda (_expr6104_ _hd6105_)
                          (if (gx#stx-ormap gx#identifier? _hd6105_)
                              (gxc#generate-runtime-let-values%__opt-lambda7266
                               (cons '%#let-values
                                     (cons (cons _bind6087_ '())
                                           (cons (_generate-let*5978_
                                                  _rest6086_
                                                  _body6066_)
                                                 '())))
                               '#t)
                              (cons 'begin
                                    (cons (gxc#compile-e _expr6104_)
                                          (cons (_generate-let*5978_
                                                 _rest6086_
                                                 _body6066_)
                                                '())))))))
                   (if (##pair? _bind60886097_)
                       (let ((_hd60926110_ (##car _bind60886097_))
                             (_tl60936112_ (##cdr _bind60886097_)))
                         (let ((_hd6115_ _hd60926110_))
                           (if (##pair? _tl60936112_)
                               (let ((_hd60946117_ (##car _tl60936112_))
                                     (_tl60956119_ (##cdr _tl60936112_)))
                                 (let ((_expr6122_ _hd60946117_))
                                   (if (##null? _tl60956119_)
                                       (_K60916107_ _expr6122_ _hd6115_)
                                       (_E60906101_))))
                               (_E60906101_))))
                       (_E60906101_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##pair? _hd60676075_)
                                                  (let ((_hd60726127_
                                                         (##car _hd60676075_))
                                                        (_tl60736129_
                                                         (##cdr _hd60676075_)))
                                                    (let ((_bind6132_
                                                           _hd60726127_))
                                                      (let ((_rest6134_
                                                             _tl60736129_))
                                                        (_K60716124_
                                                         _rest6134_
                                                         _bind6132_))))
                                                  (_else60696083_)))))))))
                            (let ((_g59805997_
                                   (lambda (_g59815994_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g59815994_))))
                              (let ((_g59796062_
                                     (lambda (_g59816000_)
                                       (if (gx#stx-pair? _g59816000_)
                                           (let ((_e59846002_
                                                  (gx#stx-e _g59816000_)))
                                             (let ((_hd59856005_
                                                    (##car _e59846002_))
                                                   (_tl59866007_
                                                    (##cdr _e59846002_)))
                                               (if (gx#stx-pair? _tl59866007_)
                                                   (let ((_e59876010_
                                                          (gx#stx-e
                                                           _tl59866007_)))
                                                     (let ((_hd59886013_
                                                            (##car _e59876010_))
                                                           (_tl59896015_
                                                            (##cdr _e59876010_)))
                                                       (if (gx#stx-pair?
                                                            _tl59896015_)
                                                           (let ((_e59906018_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl59896015_)))
                     (let ((_hd59916021_ (##car _e59906018_))
                           (_tl59926023_ (##cdr _e59906018_)))
                       (if (gx#stx-null? _tl59926023_)
                           ((lambda (_L6026_ _L6027_)
                              (let ((_g10666_ (_linearize5968_ _L6027_)))
                                (begin
                                  (let ((_g10667_ (values-count _g10666_)))
                                    (if (not (fx= _g10667_ 5))
                                        (error "Context expects 5 values"
                                               _g10667_)))
                                  (let ((_pre6043_ (values-ref _g10666_ 0))
                                        (_rec-pre6044_ (values-ref _g10666_ 1))
                                        (_rec-bind6045_
                                         (values-ref _g10666_ 2))
                                        (_rec-init6046_
                                         (values-ref _g10666_ 3))
                                        (_post6047_ (values-ref _g10666_ 4)))
                                    (let ((_body6049_ (gxc#compile-e _L6026_)))
                                      (let ((_body6051_
                                             (if (null? _post6047_)
                                                 _body6049_
                                                 (_generate-let*5978_
                                                  _post6047_
                                                  _body6049_))))
                                        (let ((_body6053_
                                               (if (null? _rec-init6046_)
                                                   _body6051_
                                                   (cons 'begin
                                                         (foldr1 cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _body6051_ '())
                         _rec-init6046_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ((_body6055_
                                                 (if (null? _rec-bind6045_)
                                                     _body6053_
                                                     (cons 'letrec
                                                           (cons _rec-bind6045_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _body6053_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_body6057_
                                                   (if (null? _rec-pre6044_)
                                                       _body6055_
                                                       (cons 'let
                                                             (cons _rec-pre6044_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _body6055_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_body6059_
                                                     (if (null? _pre6043_)
                                                         _body6057_
                                                         (_generate-let*5978_
                                                          _pre6043_
                                                          _body6057_))))
                                                (let () _body6059_)))))))))))
                            _hd59916021_
                            _hd59886013_)
                           (_g59805997_ _g59816000_))))
                   (_g59805997_ _g59816000_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g59805997_ _g59816000_))))
                                           (_g59805997_ _g59816000_)))))
                                (_g59796062_ _stx5966_))))))))))))))))
  (define gxc#generate-runtime-simple-let?
    (lambda (_hd5859_)
      ((letrec ((_lp5861_
                 (lambda (_rest5863_)
                   (let ((_g58675888_
                          (lambda (_g58685885_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g58685885_))))
                     (let ((_g58665895_
                            (lambda (_g58685891_) ((lambda () '#f)))))
                       (let ((_g58655902_
                              (lambda (_g58685898_)
                                (if (gx#stx-null? _g58685898_)
                                    ((lambda () '#t))
                                    (_g58665895_ _g58685898_)))))
                         (let ((_g58645963_
                                (lambda (_g58685905_)
                                  (if (gx#stx-pair? _g58685905_)
                                      (let ((_e58725907_
                                             (gx#stx-e _g58685905_)))
                                        (let ((_hd58735910_
                                               (##car _e58725907_))
                                              (_tl58745912_
                                               (##cdr _e58725907_)))
                                          (if (gx#stx-pair? _hd58735910_)
                                              (let ((_e58755915_
                                                     (gx#stx-e _hd58735910_)))
                                                (let ((_hd58765918_
                                                       (##car _e58755915_))
                                                      (_tl58775920_
                                                       (##cdr _e58755915_)))
                                                  (if (gx#stx-pair?
                                                       _hd58765918_)
                                                      (let ((_e58785923_
                                                             (gx#stx-e
                                                              _hd58765918_)))
                                                        (let ((_hd58795926_
                                                               (##car _e58785923_))
                                                              (_tl58805928_
                                                               (##cdr _e58785923_)))
                                                          (if (gx#stx-null?
                                                               _tl58805928_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl58775920_)
                          (let ((_e58815931_ (gx#stx-e _tl58775920_)))
                            (let ((_hd58825934_ (##car _e58815931_))
                                  (_tl58835936_ (##cdr _e58815931_)))
                              (if (gx#stx-null? _tl58835936_)
                                  ((lambda (_L5939_ _L5940_ _L5941_)
                                     (_lp5861_ _L5939_))
                                   _tl58745912_
                                   _hd58825934_
                                   _hd58795926_)
                                  (_g58655902_ _g58685905_))))
                          (_g58655902_ _g58685905_))
                      (_g58655902_ _g58685905_))))
              (_g58655902_ _g58685905_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g58655902_ _g58685905_))))
                                      (_g58655902_ _g58685905_)))))
                           (_g58645963_ _rest5863_))))))))
         _lp5861_)
       _hd5859_)))
  (define gxc#generate-runtime-simple-let
    (lambda (_form5783_ _hd5784_ _body5785_ _compiled-body?5786_)
      (let ((_generate15788_
             (lambda (_bind5790_)
               (let ((_g57925809_
                      (lambda (_g57935806_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g57935806_))))
                 (let ((_g57915856_
                        (lambda (_g57935812_)
                          (if (gx#stx-pair? _g57935812_)
                              (let ((_e57965814_ (gx#stx-e _g57935812_)))
                                (let ((_hd57975817_ (##car _e57965814_))
                                      (_tl57985819_ (##cdr _e57965814_)))
                                  (if (gx#stx-pair? _hd57975817_)
                                      (let ((_e57995822_
                                             (gx#stx-e _hd57975817_)))
                                        (let ((_hd58005825_
                                               (##car _e57995822_))
                                              (_tl58015827_
                                               (##cdr _e57995822_)))
                                          (if (gx#stx-null? _tl58015827_)
                                              (if (gx#stx-pair? _tl57985819_)
                                                  (let ((_e58025830_
                                                         (gx#stx-e
                                                          _tl57985819_)))
                                                    (let ((_hd58035833_
                                                           (##car _e58025830_))
                                                          (_tl58045835_
                                                           (##cdr _e58025830_)))
                                                      (if (gx#stx-null?
                                                           _tl58045835_)
                                                          ((lambda (_L5838_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L5839_)
                     (cons (gxc#generate-runtime-binding-id* _L5839_)
                           (cons (gxc#compile-e _L5838_) '())))
                   _hd58035833_
                   _hd58005825_)
                  (_g57925809_ _g57935812_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g57925809_ _g57935812_))
                                              (_g57925809_ _g57935812_))))
                                      (_g57925809_ _g57935812_))))
                              (_g57925809_ _g57935812_)))))
                   (_g57915856_ _bind5790_))))))
        (cons _form5783_
              (cons (map _generate15788_ _hd5784_)
                    (cons (if _compiled-body?5786_
                              _body5785_
                              (gxc#compile-e _body5785_))
                          '()))))))
  (define gxc#generate-runtime-quote%
    (lambda (_stx5694_)
      (letrec ((_generate15696_
                (lambda (_datum5748_)
                  (if (let ((_$e5750_ (null? _datum5748_)))
                        (if _$e5750_
                            _$e5750_
                            (let ((_$e5753_ (interned-symbol? _datum5748_)))
                              (if _$e5753_
                                  _$e5753_
                                  (gx#self-quoting? _datum5748_)))))
                      _datum5748_
                      (if (uninterned-symbol? _datum5748_)
                          (gxc#generate-runtime-gensym-reference__opt-lambda9589
                           _datum5748_
                           '#t)
                          (if (pair? _datum5748_)
                              (cons (_generate15696_ (car _datum5748_))
                                    (_generate15696_ (cdr _datum5748_)))
                              (if (box? _datum5748_)
                                  (box (_generate15696_ (unbox _datum5748_)))
                                  (if (vector? _datum5748_)
                                      (vector-map _generate15696_ _datum5748_)
                                      (if (let ((_$e5756_
                                                 (s8vector? _datum5748_)))
                                            (if _$e5756_
                                                _$e5756_
                                                (let ((_$e5759_
                                                       (u8vector?
                                                        _datum5748_)))
                                                  (if _$e5759_
                                                      _$e5759_
                                                      (let ((_$e5762_
                                                             (s16vector?
                                                              _datum5748_)))
                                                        (if _$e5762_
                                                            _$e5762_
                                                            (let ((_$e5765_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (u16vector? _datum5748_)))
                      (if _$e5765_
                          _$e5765_
                          (let ((_$e5768_ (s32vector? _datum5748_)))
                            (if _$e5768_
                                _$e5768_
                                (let ((_$e5771_ (u32vector? _datum5748_)))
                                  (if _$e5771_
                                      _$e5771_
                                      (let ((_$e5774_
                                             (s64vector? _datum5748_)))
                                        (if _$e5774_
                                            _$e5774_
                                            (let ((_$e5777_
                                                   (u64vector? _datum5748_)))
                                              (if _$e5777_
                                                  _$e5777_
                                                  (let ((_$e5780_
                                                         (f32vector?
                                                          _datum5748_)))
                                                    (if _$e5780_
                                                        _$e5780_
                                                        (f64vector?
                                                         _datum5748_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _datum5748_
                                          (gxc#raise-compile-error
                                           '"Cannot compile non-primitive quote"
                                           _stx5694_))))))))))
        (let ((_g56985711_
               (lambda (_g56995708_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g56995708_))))
          (let ((_g56975745_
                 (lambda (_g56995714_)
                   (if (gx#stx-pair? _g56995714_)
                       (let ((_e57015716_ (gx#stx-e _g56995714_)))
                         (let ((_hd57025719_ (##car _e57015716_))
                               (_tl57035721_ (##cdr _e57015716_)))
                           (if (gx#stx-pair? _tl57035721_)
                               (let ((_e57045724_ (gx#stx-e _tl57035721_)))
                                 (let ((_hd57055727_ (##car _e57045724_))
                                       (_tl57065729_ (##cdr _e57045724_)))
                                   (if (gx#stx-null? _tl57065729_)
                                       ((lambda (_L5732_)
                                          (cons 'quote
                                                (cons (_generate15696_
                                                       (gx#stx-e _L5732_))
                                                      '())))
                                        _hd57055727_)
                                       (_g56985711_ _g56995714_))))
                               (_g56985711_ _g56995714_))))
                       (_g56985711_ _g56995714_)))))
            (_g56975745_ _stx5694_))))))
  (define gxc#generate-runtime-call%
    (lambda (_stx5656_)
      (let ((_g56585668_
             (lambda (_g56595665_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g56595665_))))
        (let ((_g56575691_
               (lambda (_g56595671_)
                 (if (gx#stx-pair? _g56595671_)
                     (let ((_e56615673_ (gx#stx-e _g56595671_)))
                       (let ((_hd56625676_ (##car _e56615673_))
                             (_tl56635678_ (##cdr _e56615673_)))
                         ((lambda (_L5681_) (map gxc#compile-e _L5681_))
                          _tl56635678_)))
                     (_g56585668_ _g56595671_)))))
          (_g56575691_ _stx5656_)))))
  (define gxc#generate-runtime-if%
    (lambda (_stx5618_)
      (let ((_g56205630_
             (lambda (_g56215627_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g56215627_))))
        (let ((_g56195653_
               (lambda (_g56215633_)
                 (if (gx#stx-pair? _g56215633_)
                     (let ((_e56235635_ (gx#stx-e _g56215633_)))
                       (let ((_hd56245638_ (##car _e56235635_))
                             (_tl56255640_ (##cdr _e56235635_)))
                         ((lambda (_L5643_)
                            (cons 'if (map gxc#compile-e _L5643_)))
                          _tl56255640_)))
                     (_g56205630_ _g56215633_)))))
          (_g56195653_ _stx5618_)))))
  (define gxc#generate-runtime-ref%
    (lambda (_stx5567_)
      (let ((_g55695582_
             (lambda (_g55705579_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g55705579_))))
        (let ((_g55685615_
               (lambda (_g55705585_)
                 (if (gx#stx-pair? _g55705585_)
                     (let ((_e55725587_ (gx#stx-e _g55705585_)))
                       (let ((_hd55735590_ (##car _e55725587_))
                             (_tl55745592_ (##cdr _e55725587_)))
                         (if (gx#stx-pair? _tl55745592_)
                             (let ((_e55755595_ (gx#stx-e _tl55745592_)))
                               (let ((_hd55765598_ (##car _e55755595_))
                                     (_tl55775600_ (##cdr _e55755595_)))
                                 (if (gx#stx-null? _tl55775600_)
                                     ((lambda (_L5603_)
                                        (gxc#generate-runtime-binding-id
                                         _L5603_))
                                      _hd55765598_)
                                     (_g55695582_ _g55705585_))))
                             (_g55695582_ _g55705585_))))
                     (_g55695582_ _g55705585_)))))
          (_g55685615_ _stx5567_)))))
  (define gxc#generate-runtime-setq%
    (lambda (_stx5500_)
      (let ((_g55025519_
             (lambda (_g55035516_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g55035516_))))
        (let ((_g55015564_
               (lambda (_g55035522_)
                 (if (gx#stx-pair? _g55035522_)
                     (let ((_e55065524_ (gx#stx-e _g55035522_)))
                       (let ((_hd55075527_ (##car _e55065524_))
                             (_tl55085529_ (##cdr _e55065524_)))
                         (if (gx#stx-pair? _tl55085529_)
                             (let ((_e55095532_ (gx#stx-e _tl55085529_)))
                               (let ((_hd55105535_ (##car _e55095532_))
                                     (_tl55115537_ (##cdr _e55095532_)))
                                 (if (gx#stx-pair? _tl55115537_)
                                     (let ((_e55125540_
                                            (gx#stx-e _tl55115537_)))
                                       (let ((_hd55135543_ (##car _e55125540_))
                                             (_tl55145545_
                                              (##cdr _e55125540_)))
                                         (if (gx#stx-null? _tl55145545_)
                                             ((lambda (_L5548_ _L5549_)
                                                (cons 'set!
                                                      (cons (gxc#generate-runtime-binding-id
                                                             _L5549_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L5548_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd55135543_
                                              _hd55105535_)
                                             (_g55025519_ _g55035522_))))
                                     (_g55025519_ _g55035522_))))
                             (_g55025519_ _g55035522_))))
                     (_g55025519_ _g55035522_)))))
          (_g55015564_ _stx5500_)))))
  (define gxc#generate-runtime-struct-instancep%
    (lambda (_stx5433_)
      (let ((_g54355452_
             (lambda (_g54365449_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g54365449_))))
        (let ((_g54345497_
               (lambda (_g54365455_)
                 (if (gx#stx-pair? _g54365455_)
                     (let ((_e54395457_ (gx#stx-e _g54365455_)))
                       (let ((_hd54405460_ (##car _e54395457_))
                             (_tl54415462_ (##cdr _e54395457_)))
                         (if (gx#stx-pair? _tl54415462_)
                             (let ((_e54425465_ (gx#stx-e _tl54415462_)))
                               (let ((_hd54435468_ (##car _e54425465_))
                                     (_tl54445470_ (##cdr _e54425465_)))
                                 (if (gx#stx-pair? _tl54445470_)
                                     (let ((_e54455473_
                                            (gx#stx-e _tl54445470_)))
                                       (let ((_hd54465476_ (##car _e54455473_))
                                             (_tl54475478_
                                              (##cdr _e54455473_)))
                                         (if (gx#stx-null? _tl54475478_)
                                             ((lambda (_L5481_ _L5482_)
                                                (cons '##structure-instance-of?
                                                      (cons (gxc#compile-e
                                                             _L5481_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L5482_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd54465476_
                                              _hd54435468_)
                                             (_g54355452_ _g54365455_))))
                                     (_g54355452_ _g54365455_))))
                             (_g54355452_ _g54365455_))))
                     (_g54355452_ _g54365455_)))))
          (_g54345497_ _stx5433_)))))
  (define gxc#generate-runtime-struct-direct-instancep%
    (lambda (_stx5366_)
      (let ((_g53685385_
             (lambda (_g53695382_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g53695382_))))
        (let ((_g53675430_
               (lambda (_g53695388_)
                 (if (gx#stx-pair? _g53695388_)
                     (let ((_e53725390_ (gx#stx-e _g53695388_)))
                       (let ((_hd53735393_ (##car _e53725390_))
                             (_tl53745395_ (##cdr _e53725390_)))
                         (if (gx#stx-pair? _tl53745395_)
                             (let ((_e53755398_ (gx#stx-e _tl53745395_)))
                               (let ((_hd53765401_ (##car _e53755398_))
                                     (_tl53775403_ (##cdr _e53755398_)))
                                 (if (gx#stx-pair? _tl53775403_)
                                     (let ((_e53785406_
                                            (gx#stx-e _tl53775403_)))
                                       (let ((_hd53795409_ (##car _e53785406_))
                                             (_tl53805411_
                                              (##cdr _e53785406_)))
                                         (if (gx#stx-null? _tl53805411_)
                                             ((lambda (_L5414_ _L5415_)
                                                (cons '##structure-direct-instance-of?
                                                      (cons (gxc#compile-e
                                                             _L5414_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L5415_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd53795409_
                                              _hd53765401_)
                                             (_g53685385_ _g53695388_))))
                                     (_g53685385_ _g53695388_))))
                             (_g53685385_ _g53695388_))))
                     (_g53685385_ _g53695388_)))))
          (_g53675430_ _stx5366_)))))
  (define gxc#generate-runtime-struct-ref%
    (lambda (_stx5283_)
      (let ((_g52855306_
             (lambda (_g52865303_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g52865303_))))
        (let ((_g52845363_
               (lambda (_g52865309_)
                 (if (gx#stx-pair? _g52865309_)
                     (let ((_e52905311_ (gx#stx-e _g52865309_)))
                       (let ((_hd52915314_ (##car _e52905311_))
                             (_tl52925316_ (##cdr _e52905311_)))
                         (if (gx#stx-pair? _tl52925316_)
                             (let ((_e52935319_ (gx#stx-e _tl52925316_)))
                               (let ((_hd52945322_ (##car _e52935319_))
                                     (_tl52955324_ (##cdr _e52935319_)))
                                 (if (gx#stx-pair? _tl52955324_)
                                     (let ((_e52965327_
                                            (gx#stx-e _tl52955324_)))
                                       (let ((_hd52975330_ (##car _e52965327_))
                                             (_tl52985332_
                                              (##cdr _e52965327_)))
                                         (if (gx#stx-pair? _tl52985332_)
                                             (let ((_e52995335_
                                                    (gx#stx-e _tl52985332_)))
                                               (let ((_hd53005338_
                                                      (##car _e52995335_))
                                                     (_tl53015340_
                                                      (##cdr _e52995335_)))
                                                 (if (gx#stx-null?
                                                      _tl53015340_)
                                                     ((lambda (_L5343_
                                                               _L5344_
                                                               _L5345_)
                                                        (cons '##structure-ref
                                                              (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L5343_)
                            (cons (gxc#compile-e _L5344_)
                                  (cons (gxc#compile-e _L5345_)
                                        (cons ''#f '()))))))
              _hd53005338_
              _hd52975330_
              _hd52945322_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g52855306_
                                                      _g52865309_))))
                                             (_g52855306_ _g52865309_))))
                                     (_g52855306_ _g52865309_))))
                             (_g52855306_ _g52865309_))))
                     (_g52855306_ _g52865309_)))))
          (_g52845363_ _stx5283_)))))
  (define gxc#generate-runtime-struct-setq%
    (lambda (_stx5184_)
      (let ((_g51865211_
             (lambda (_g51875208_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g51875208_))))
        (let ((_g51855280_
               (lambda (_g51875214_)
                 (if (gx#stx-pair? _g51875214_)
                     (let ((_e51925216_ (gx#stx-e _g51875214_)))
                       (let ((_hd51935219_ (##car _e51925216_))
                             (_tl51945221_ (##cdr _e51925216_)))
                         (if (gx#stx-pair? _tl51945221_)
                             (let ((_e51955224_ (gx#stx-e _tl51945221_)))
                               (let ((_hd51965227_ (##car _e51955224_))
                                     (_tl51975229_ (##cdr _e51955224_)))
                                 (if (gx#stx-pair? _tl51975229_)
                                     (let ((_e51985232_
                                            (gx#stx-e _tl51975229_)))
                                       (let ((_hd51995235_ (##car _e51985232_))
                                             (_tl52005237_
                                              (##cdr _e51985232_)))
                                         (if (gx#stx-pair? _tl52005237_)
                                             (let ((_e52015240_
                                                    (gx#stx-e _tl52005237_)))
                                               (let ((_hd52025243_
                                                      (##car _e52015240_))
                                                     (_tl52035245_
                                                      (##cdr _e52015240_)))
                                                 (if (gx#stx-pair?
                                                      _tl52035245_)
                                                     (let ((_e52045248_
                                                            (gx#stx-e
                                                             _tl52035245_)))
                                                       (let ((_hd52055251_
                                                              (##car _e52045248_))
                                                             (_tl52065253_
                                                              (##cdr _e52045248_)))
                                                         (if (gx#stx-null?
                                                              _tl52065253_)
                                                             ((lambda (_L5256_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L5257_
                               _L5258_
                               _L5259_)
                        (cons '##structure-set!
                              (cons (gxc#compile-e _L5257_)
                                    (cons (gxc#compile-e _L5256_)
                                          (cons (gxc#compile-e _L5258_)
                                                (cons (gxc#compile-e _L5259_)
                                                      (cons ''#f '())))))))
                      _hd52055251_
                      _hd52025243_
                      _hd51995235_
                      _hd51965227_)
                     (_g51865211_ _g51875214_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g51865211_
                                                      _g51875214_))))
                                             (_g51865211_ _g51875214_))))
                                     (_g51865211_ _g51875214_))))
                             (_g51865211_ _g51875214_))))
                     (_g51865211_ _g51875214_)))))
          (_g51855280_ _stx5184_)))))
  (define gxc#generate-runtime-struct-direct-ref%
    (lambda (_stx5101_)
      (let ((_g51035124_
             (lambda (_g51045121_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g51045121_))))
        (let ((_g51025181_
               (lambda (_g51045127_)
                 (if (gx#stx-pair? _g51045127_)
                     (let ((_e51085129_ (gx#stx-e _g51045127_)))
                       (let ((_hd51095132_ (##car _e51085129_))
                             (_tl51105134_ (##cdr _e51085129_)))
                         (if (gx#stx-pair? _tl51105134_)
                             (let ((_e51115137_ (gx#stx-e _tl51105134_)))
                               (let ((_hd51125140_ (##car _e51115137_))
                                     (_tl51135142_ (##cdr _e51115137_)))
                                 (if (gx#stx-pair? _tl51135142_)
                                     (let ((_e51145145_
                                            (gx#stx-e _tl51135142_)))
                                       (let ((_hd51155148_ (##car _e51145145_))
                                             (_tl51165150_
                                              (##cdr _e51145145_)))
                                         (if (gx#stx-pair? _tl51165150_)
                                             (let ((_e51175153_
                                                    (gx#stx-e _tl51165150_)))
                                               (let ((_hd51185156_
                                                      (##car _e51175153_))
                                                     (_tl51195158_
                                                      (##cdr _e51175153_)))
                                                 (if (gx#stx-null?
                                                      _tl51195158_)
                                                     ((lambda (_L5161_
                                                               _L5162_
                                                               _L5163_)
                                                        (cons '##direct-structure-ref
                                                              (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L5161_)
                            (cons (gxc#compile-e _L5162_)
                                  (cons (gxc#compile-e _L5163_)
                                        (cons ''#f '()))))))
              _hd51185156_
              _hd51155148_
              _hd51125140_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g51035124_
                                                      _g51045127_))))
                                             (_g51035124_ _g51045127_))))
                                     (_g51035124_ _g51045127_))))
                             (_g51035124_ _g51045127_))))
                     (_g51035124_ _g51045127_)))))
          (_g51025181_ _stx5101_)))))
  (define gxc#generate-runtime-struct-direct-setq%
    (lambda (_stx5002_)
      (let ((_g50045029_
             (lambda (_g50055026_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g50055026_))))
        (let ((_g50035098_
               (lambda (_g50055032_)
                 (if (gx#stx-pair? _g50055032_)
                     (let ((_e50105034_ (gx#stx-e _g50055032_)))
                       (let ((_hd50115037_ (##car _e50105034_))
                             (_tl50125039_ (##cdr _e50105034_)))
                         (if (gx#stx-pair? _tl50125039_)
                             (let ((_e50135042_ (gx#stx-e _tl50125039_)))
                               (let ((_hd50145045_ (##car _e50135042_))
                                     (_tl50155047_ (##cdr _e50135042_)))
                                 (if (gx#stx-pair? _tl50155047_)
                                     (let ((_e50165050_
                                            (gx#stx-e _tl50155047_)))
                                       (let ((_hd50175053_ (##car _e50165050_))
                                             (_tl50185055_
                                              (##cdr _e50165050_)))
                                         (if (gx#stx-pair? _tl50185055_)
                                             (let ((_e50195058_
                                                    (gx#stx-e _tl50185055_)))
                                               (let ((_hd50205061_
                                                      (##car _e50195058_))
                                                     (_tl50215063_
                                                      (##cdr _e50195058_)))
                                                 (if (gx#stx-pair?
                                                      _tl50215063_)
                                                     (let ((_e50225066_
                                                            (gx#stx-e
                                                             _tl50215063_)))
                                                       (let ((_hd50235069_
                                                              (##car _e50225066_))
                                                             (_tl50245071_
                                                              (##cdr _e50225066_)))
                                                         (if (gx#stx-null?
                                                              _tl50245071_)
                                                             ((lambda (_L5074_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L5075_
                               _L5076_
                               _L5077_)
                        (cons '##direct-structure-set!
                              (cons (gxc#compile-e _L5075_)
                                    (cons (gxc#compile-e _L5074_)
                                          (cons (gxc#compile-e _L5076_)
                                                (cons (gxc#compile-e _L5077_)
                                                      (cons ''#f '())))))))
                      _hd50235069_
                      _hd50205061_
                      _hd50175053_
                      _hd50145045_)
                     (_g50045029_ _g50055032_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g50045029_
                                                      _g50055032_))))
                                             (_g50045029_ _g50055032_))))
                                     (_g50045029_ _g50055032_))))
                             (_g50045029_ _g50055032_))))
                     (_g50045029_ _g50055032_)))))
          (_g50035098_ _stx5002_)))))
  (define gxc#generate-runtime-struct-unchecked-ref%
    (lambda (_stx4919_)
      (let ((_g49214942_
             (lambda (_g49224939_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g49224939_))))
        (let ((_g49204999_
               (lambda (_g49224945_)
                 (if (gx#stx-pair? _g49224945_)
                     (let ((_e49264947_ (gx#stx-e _g49224945_)))
                       (let ((_hd49274950_ (##car _e49264947_))
                             (_tl49284952_ (##cdr _e49264947_)))
                         (if (gx#stx-pair? _tl49284952_)
                             (let ((_e49294955_ (gx#stx-e _tl49284952_)))
                               (let ((_hd49304958_ (##car _e49294955_))
                                     (_tl49314960_ (##cdr _e49294955_)))
                                 (if (gx#stx-pair? _tl49314960_)
                                     (let ((_e49324963_
                                            (gx#stx-e _tl49314960_)))
                                       (let ((_hd49334966_ (##car _e49324963_))
                                             (_tl49344968_
                                              (##cdr _e49324963_)))
                                         (if (gx#stx-pair? _tl49344968_)
                                             (let ((_e49354971_
                                                    (gx#stx-e _tl49344968_)))
                                               (let ((_hd49364974_
                                                      (##car _e49354971_))
                                                     (_tl49374976_
                                                      (##cdr _e49354971_)))
                                                 (if (gx#stx-null?
                                                      _tl49374976_)
                                                     ((lambda (_L4979_
                                                               _L4980_
                                                               _L4981_)
                                                        (cons '##unchecked-structure-ref
                                                              (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L4979_)
                            (cons (gxc#compile-e _L4980_)
                                  (cons (gxc#compile-e _L4981_)
                                        (cons ''#f '()))))))
              _hd49364974_
              _hd49334966_
              _hd49304958_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g49214942_
                                                      _g49224945_))))
                                             (_g49214942_ _g49224945_))))
                                     (_g49214942_ _g49224945_))))
                             (_g49214942_ _g49224945_))))
                     (_g49214942_ _g49224945_)))))
          (_g49204999_ _stx4919_)))))
  (define gxc#generate-runtime-struct-unchecked-setq%
    (lambda (_stx4820_)
      (let ((_g48224847_
             (lambda (_g48234844_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g48234844_))))
        (let ((_g48214916_
               (lambda (_g48234850_)
                 (if (gx#stx-pair? _g48234850_)
                     (let ((_e48284852_ (gx#stx-e _g48234850_)))
                       (let ((_hd48294855_ (##car _e48284852_))
                             (_tl48304857_ (##cdr _e48284852_)))
                         (if (gx#stx-pair? _tl48304857_)
                             (let ((_e48314860_ (gx#stx-e _tl48304857_)))
                               (let ((_hd48324863_ (##car _e48314860_))
                                     (_tl48334865_ (##cdr _e48314860_)))
                                 (if (gx#stx-pair? _tl48334865_)
                                     (let ((_e48344868_
                                            (gx#stx-e _tl48334865_)))
                                       (let ((_hd48354871_ (##car _e48344868_))
                                             (_tl48364873_
                                              (##cdr _e48344868_)))
                                         (if (gx#stx-pair? _tl48364873_)
                                             (let ((_e48374876_
                                                    (gx#stx-e _tl48364873_)))
                                               (let ((_hd48384879_
                                                      (##car _e48374876_))
                                                     (_tl48394881_
                                                      (##cdr _e48374876_)))
                                                 (if (gx#stx-pair?
                                                      _tl48394881_)
                                                     (let ((_e48404884_
                                                            (gx#stx-e
                                                             _tl48394881_)))
                                                       (let ((_hd48414887_
                                                              (##car _e48404884_))
                                                             (_tl48424889_
                                                              (##cdr _e48404884_)))
                                                         (if (gx#stx-null?
                                                              _tl48424889_)
                                                             ((lambda (_L4892_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L4893_
                               _L4894_
                               _L4895_)
                        (cons '##unchecked-structure-set!
                              (cons (gxc#compile-e _L4893_)
                                    (cons (gxc#compile-e _L4892_)
                                          (cons (gxc#compile-e _L4894_)
                                                (cons (gxc#compile-e _L4895_)
                                                      (cons ''#f '())))))))
                      _hd48414887_
                      _hd48384879_
                      _hd48354871_
                      _hd48324863_)
                     (_g48224847_ _g48234850_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g48224847_
                                                      _g48234850_))))
                                             (_g48224847_ _g48234850_))))
                                     (_g48224847_ _g48234850_))))
                             (_g48224847_ _g48234850_))))
                     (_g48224847_ _g48234850_)))))
          (_g48214916_ _stx4820_)))))
  (define gxc#generate-runtime-loader-import%
    (lambda (_stx4729_)
      (let ((_g47314741_
             (lambda (_g47324738_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g47324738_))))
        (let ((_g47304817_
               (lambda (_g47324744_)
                 (if (gx#stx-pair? _g47324744_)
                     (let ((_e47344746_ (gx#stx-e _g47324744_)))
                       (let ((_hd47354749_ (##car _e47344746_))
                             (_tl47364751_ (##cdr _e47344746_)))
                         ((lambda (_L4754_)
                            (let ((_ht4764_ (make-hash-table-eq)))
                              ((letrec ((_lp4766_
                                         (lambda (_rest4768_ _loads4769_)
                                           (let ((_K4771_ (lambda (_ctx4810_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _rest4811_)
                    (let ((_id4813_
                           (##structure-ref
                            _ctx4810_
                            '1
                            gx#expander-context::t
                            '#f)))
                      (if (table-ref _ht4764_ _id4813_ '#f)
                          (_lp4766_ _rest4811_ _loads4769_)
                          (let ((_rt4815_
                                 (string-append
                                  (symbol->string _id4813_)
                                  '"__rt")))
                            (begin
                              (table-set! _ht4764_ _id4813_ _rt4815_)
                              (_lp4766_
                               _rest4811_
                               (cons _rt4815_ _loads4769_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_rest47724780_ _rest4768_))
                                               (let ((_E47754784_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _rest47724780_))))
                                                 (let ((_else47744792_
                                                        (lambda ()
                                                          (cons 'begin
                                                                (map (lambda (_g47874789_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (list 'load-module _g47874789_))
                             (reverse _loads4769_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_K47764798_
                                                          (lambda (_rest4795_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in4796_)
                    (if (##structure-instance-of?
                         _in4796_
                         'gx#module-context::t)
                        (_K4771_ _in4796_ _rest4795_)
                        (if (##structure-direct-instance-of?
                             _in4796_
                             'gx#module-import::t)
                            (if (fxpositive?
                                 (##direct-structure-ref
                                  _in4796_
                                  '3
                                  gx#module-import::t
                                  '#f))
                                (_lp4766_ _rest4795_ _loads4769_)
                                (_K4771_ (##direct-structure-ref
                                          (##direct-structure-ref
                                           _in4796_
                                           '1
                                           gx#module-import::t
                                           '#f)
                                          '1
                                          gx#module-export::t
                                          '#f)
                                         _rest4795_))
                            (if (##structure-direct-instance-of?
                                 _in4796_
                                 'gx#import-set::t)
                                (if (fxpositive?
                                     (##direct-structure-ref
                                      _in4796_
                                      '2
                                      gx#import-set::t
                                      '#f))
                                    (_lp4766_ _rest4795_ _loads4769_)
                                    (_K4771_ (##direct-structure-ref
                                              _in4796_
                                              '1
                                              gx#import-set::t
                                              '#f)
                                             _rest4795_))
                                (gxc#raise-compile-error
                                 '"Unexpected import"
                                 _stx4729_
                                 _in4796_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##pair? _rest47724780_)
                                                         (let ((_hd47774801_
                                                                (##car _rest47724780_))
                                                               (_tl47784803_
                                                                (##cdr _rest47724780_)))
                                                           (let ((_in4806_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd47774801_))
                     (let ((_rest4808_ _tl47784803_))
                       (_K47764798_ _rest4808_ _in4806_))))
                 (_else47744792_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _lp4766_)
                               _L4754_
                               '())))
                          _tl47364751_)))
                     (_g47314741_ _g47324744_)))))
          (_g47304817_ _stx4729_)))))
  (define gxc#generate-runtime-phi-quote-syntax%
    (lambda (_stx4670_)
      (let ((_generate-quote4672_
             (lambda (_q4727_)
               (if (gx#identifier? _q4727_)
                   (gxc#generate-runtime-identifier _q4727_)
                   (gxc#raise-compile-error
                    '"Cannot quote non-identifier syntax"
                    _stx4670_
                    _q4727_)))))
        (let ((_g46744687_
               (lambda (_g46754684_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g46754684_))))
          (let ((_g46734724_
                 (lambda (_g46754690_)
                   (if (gx#stx-pair? _g46754690_)
                       (let ((_e46774692_ (gx#stx-e _g46754690_)))
                         (let ((_hd46784695_ (##car _e46774692_))
                               (_tl46794697_ (##cdr _e46774692_)))
                           (if (gx#stx-pair? _tl46794697_)
                               (let ((_e46804700_ (gx#stx-e _tl46794697_)))
                                 (let ((_hd46814703_ (##car _e46804700_))
                                       (_tl46824705_ (##cdr _e46804700_)))
                                   (if (gx#stx-null? _tl46824705_)
                                       ((lambda (_L4708_)
                                          (let ((_gid4721_
                                                 (gxc#generate-runtime-temporary__opt-lambda9535
                                                  '#t))
                                                (_quote-e4722_
                                                 (_generate-quote4672_
                                                  _L4708_)))
                                            (begin
                                              (set-box!
                                               (gxc#current-compile-lift)
                                               (cons (cons 'define
                                                           (cons _gid4721_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'gx#core-quote-syntax
                                     (cons (cons 'quote
                                                 (cons _quote-e4722_ '()))
                                           '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (unbox (gxc#current-compile-lift))))
                                              _gid4721_)))
                                        _hd46814703_)
                                       (_g46744687_ _g46754690_))))
                               (_g46744687_ _g46754690_))))
                       (_g46744687_ _g46754690_)))))
            (_g46734724_ _stx4670_))))))
  (define gxc#generate-runtime-phi-define-runtime%
    (lambda (_stx4603_)
      (let ((_g46054622_
             (lambda (_g46064619_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g46064619_))))
        (let ((_g46044667_
               (lambda (_g46064625_)
                 (if (gx#stx-pair? _g46064625_)
                     (let ((_e46094627_ (gx#stx-e _g46064625_)))
                       (let ((_hd46104630_ (##car _e46094627_))
                             (_tl46114632_ (##cdr _e46094627_)))
                         (if (gx#stx-pair? _tl46114632_)
                             (let ((_e46124635_ (gx#stx-e _tl46114632_)))
                               (let ((_hd46134638_ (##car _e46124635_))
                                     (_tl46144640_ (##cdr _e46124635_)))
                                 (if (gx#stx-pair? _tl46144640_)
                                     (let ((_e46154643_
                                            (gx#stx-e _tl46144640_)))
                                       (let ((_hd46164646_ (##car _e46154643_))
                                             (_tl46174648_
                                              (##cdr _e46154643_)))
                                         (if (gx#stx-null? _tl46174648_)
                                             ((lambda (_L4651_ _L4652_)
                                                (cons 'define
                                                      (cons (gx#stx-e _L4652_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L4651_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd46164646_
                                              _hd46134638_)
                                             (_g46054622_ _g46064625_))))
                                     (_g46054622_ _g46064625_))))
                             (_g46054622_ _g46064625_))))
                     (_g46054622_ _g46064625_)))))
          (_g46044667_ _stx4603_)))))
  (define gxc#generate-meta-begin%
    (lambda (_stx4552_ _state4553_)
      (let ((_g45554565_
             (lambda (_g45564562_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g45564562_))))
        (let ((_g45544600_
               (lambda (_g45564568_)
                 (if (gx#stx-pair? _g45564568_)
                     (let ((_e45584570_ (gx#stx-e _g45564568_)))
                       (let ((_hd45594573_ (##car _e45584570_))
                             (_tl45604575_ (##cdr _e45584570_)))
                         ((lambda (_L4578_)
                            (let ((_c-body4592_
                                   (map (lambda (_g45874589_)
                                          (gxc#compile-e
                                           _g45874589_
                                           _state4553_))
                                        _L4578_)))
                              (let ((_c-body4597_
                                     (filter (lambda (_$obj4594_)
                                               (not (eq? _$obj4594_ '#!void)))
                                             _c-body4592_)))
                                (let () (cons '%#begin _c-body4597_)))))
                          _tl45604575_)))
                     (_g45554565_ _g45564568_)))))
          (_g45544600_ _stx4552_)))))
  (define gxc#generate-meta-begin-syntax%
    (lambda (_stx4460_ _state4461_)
      (let ((_g44634473_
             (lambda (_g44644470_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g44644470_))))
        (let ((_g44624549_
               (lambda (_g44644476_)
                 (if (gx#stx-pair? _g44644476_)
                     (let ((_e44664478_ (gx#stx-e _g44644476_)))
                       (let ((_hd44674481_ (##car _e44664478_))
                             (_tl44684483_ (##cdr _e44664478_)))
                         ((lambda (_L4486_)
                            (let ((_phi4496_
                                   (fx+ (gx#current-expander-phi) '1)))
                              (let ((_block4498_
                                     (gxc#meta-state-begin-phi!
                                      _state4461_
                                      _phi4496_)))
                                (let ((_compiled4501_
                                       (call-with-parameters
                                        (lambda ()
                                          (gxc#apply-generate-meta-phi
                                           (cons (gx#datum->syntax__0
                                                  '#f
                                                  '%#begin)
                                                 _L4486_)
                                           _state4461_))
                                        gx#current-expander-phi
                                        _phi4496_)))
                                  (let ()
                                    (let ((_g45044514_
                                           (lambda (_g45054511_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g45054511_))))
                                      (let ((_g45034546_
                                             (lambda (_g45054517_)
                                               (if (gx#stx-pair? _g45054517_)
                                                   (let ((_e45074519_
                                                          (gx#stx-e
                                                           _g45054517_)))
                                                     (let ((_hd45084522_
                                                            (##car _e45074519_))
                                                           (_tl45094524_
                                                            (##cdr _e45074519_)))
                                                       (if (gx#identifier?
                                                            _hd45084522_)
                                                           (if (gx#stx-eq?
                                                                '%#begin
                                                                _hd45084522_)
                                                               ((lambda (_L4527_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_c-body4544_
                                 (filter (lambda (_$obj4541_)
                                           (not (eq? _$obj4541_ '#!void)))
                                         _L4527_)))
                            (if _block4498_
                                (cons '%#begin-syntax
                                      (cons (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote (cons _block4498_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _c-body4544_))
                                (if (null? _c-body4544_)
                                    '#!void
                                    (cons '%#begin-syntax _c-body4544_)))))
                        _tl45094524_)
                       (_g45044514_ _g45054517_))
                   (_g45044514_ _g45054517_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g45044514_
                                                    _g45054517_)))))
                                        (_g45034546_ _compiled4501_))))))))
                          _tl44684483_)))
                     (_g44634473_ _g44644476_)))))
          (_g44624549_ _stx4460_)))))
  (define gxc#generate-meta-module%
    (lambda (_stx4391_ _state4392_)
      (begin
        (gxc#meta-state-end-phi! _state4392_)
        (let ((_g43944408_
               (lambda (_g43954405_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g43954405_))))
          (let ((_g43934457_
                 (lambda (_g43954411_)
                   (if (gx#stx-pair? _g43954411_)
                       (let ((_e43984413_ (gx#stx-e _g43954411_)))
                         (let ((_hd43994416_ (##car _e43984413_))
                               (_tl44004418_ (##cdr _e43984413_)))
                           (if (gx#stx-pair? _tl44004418_)
                               (let ((_e44014421_ (gx#stx-e _tl44004418_)))
                                 (let ((_hd44024424_ (##car _e44014421_))
                                       (_tl44034426_ (##cdr _e44014421_)))
                                   ((lambda (_L4429_ _L4430_)
                                      (let ((_key4443_
                                             (gx#core-identifier-key _L4430_)))
                                        (begin
                                          (if (interned-symbol? _key4443_)
                                              '#!void
                                              (gxc#raise-compile-error
                                               '"Cannot compile module with uninterned id"
                                               _stx4391_
                                               _L4430_
                                               _key4443_))
                                          (let ((_ctx4445_
                                                 (gx#syntax-local-e__0
                                                  _L4430_)))
                                            (let ((_code4448_
                                                   (call-with-parameters
                                                    (lambda ()
                                                      (gxc#compile-e
                                                       (##structure-ref
                                                        _ctx4445_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)
                                                       _state4392_))
                                                    gx#current-expander-context
                                                    _ctx4445_)))
                                              (let ((_rt4450_
                                                     (table-ref
                                                      (gxc#current-compile-runtime-sections)
                                                      _ctx4445_
                                                      '#f)))
                                                (let ((_loader4452_
                                                       (if _rt4450_
                                                           (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons '%#ref (cons '_gx#load-module '()))
                                     (cons (cons '%#quote (cons _rt4450_ '()))
                                           '())))
                         '())
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_modid4454_
                                                         (gx#stx-e _L4430_)))
                                                    (let ()
                                                      (begin
                                                        (gxc#meta-state-end-phi!
                                                         _state4392_)
                                                        (cons '%#module
                                                              (cons _modid4454_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _code4448_ _loader4452_)))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _tl44034426_
                                    _hd44024424_)))
                               (_g43944408_ _g43954411_))))
                       (_g43944408_ _g43954411_)))))
            (_g43934457_ _stx4391_))))))
  (define gxc#generate-meta-import-path
    (lambda (_ctx4381_ _context-chain4382_)
      ((letrec ((_lp4384_
                 (lambda (_ctx4386_ _path4387_)
                   (let ((_super4389_
                          (##structure-ref
                           _ctx4386_
                           '3
                           gx#phi-context::t
                           '#f)))
                     (if (memq _super4389_ _context-chain4382_)
                         (cons* '#f
                                (car (##structure-ref
                                      _ctx4386_
                                      '7
                                      gx#module-context::t
                                      '#f))
                                _path4387_)
                         (if (##structure-instance-of?
                              _super4389_
                              'gx#module-context::t)
                             (_lp4384_
                              _super4389_
                              (cons (car (##structure-ref
                                          _ctx4386_
                                          '7
                                          gx#module-context::t
                                          '#f))
                                    _path4387_))
                             (cons (make-symbol
                                    '":"
                                    (##structure-ref
                                     _ctx4386_
                                     '1
                                     gx#expander-context::t
                                     '#f))
                                   _path4387_)))))))
         _lp4384_)
       _ctx4381_
       '())))
  (define gxc#current-context-chain
    (lambda ()
      ((letrec ((_lp4376_
                 (lambda (_ctx4378_ _r4379_)
                   (if (##structure-instance-of?
                        _ctx4378_
                        'gx#module-context::t)
                       (_lp4376_
                        (##structure-ref _ctx4378_ '3 gx#phi-context::t '#f)
                        (cons _ctx4378_ _r4379_))
                       _r4379_))))
         _lp4376_)
       (gx#current-expander-context)
       '())))
  (define gxc#generate-meta-import%
    (lambda (_stx4145_ _state4146_)
      (let ((_context-chain4148_ (gxc#current-context-chain)))
        (let ((_make-import-spec4149_
               (lambda (_in4312_)
                 (let ((_in43134325_ _in4312_))
                   (let ((_E43154329_
                          (lambda ()
                            (error '"No clause matching" _in43134325_))))
                     (let ((_K43164339_
                            (lambda (_phi4332_
                                     _name4333_
                                     _src-name4334_
                                     _src-phi4335_
                                     _src-key4336_
                                     _src-ctx4337_)
                              (cons _phi4332_
                                    (cons (gxc#generate-runtime-identifier-key
                                           _name4333_)
                                          (cons _src-phi4335_
                                                (cons (gxc#generate-runtime-identifier-key
                                                       _src-name4334_)
                                                      '())))))))
                       (if (##structure-direct-instance-of?
                            _in43134325_
                            (##type-id gx#module-import::t))
                           (let ((_e43174342_ (##vector-ref _in43134325_ '1)))
                             (if (##structure-direct-instance-of?
                                  _e43174342_
                                  (##type-id gx#module-export::t))
                                 (let ((_e43204345_
                                        (##vector-ref _e43174342_ '1)))
                                   (let ((_src-ctx4348_ _e43204345_))
                                     (let ((_e43214350_
                                            (##vector-ref _e43174342_ '2)))
                                       (let ((_src-key4353_ _e43214350_))
                                         (let ((_e43224355_
                                                (##vector-ref _e43174342_ '3)))
                                           (let ((_src-phi4358_ _e43224355_))
                                             (let ((_e43234360_
                                                    (##vector-ref
                                                     _e43174342_
                                                     '4)))
                                               (let ((_src-name4363_
                                                      _e43234360_))
                                                 (let ((_e43184365_
                                                        (##vector-ref
                                                         _in43134325_
                                                         '2)))
                                                   (let ((_name4368_
                                                          _e43184365_))
                                                     (let ((_e43194370_
                                                            (##vector-ref
                                                             _in43134325_
                                                             '3)))
                                                       (let ((_phi4373_
                                                              _e43194370_))
                                                         (_K43164339_
                                                          _phi4373_
                                                          _name4368_
                                                          _src-name4363_
                                                          _src-phi4358_
                                                          _src-key4353_
                                                          _src-ctx4348_)))))))))))))
                                 (_E43154329_)))
                           (_E43154329_))))))))
          (let ((_make-import-path4150_
                 (lambda (_ctx4310_)
                   (gxc#generate-meta-import-path
                    _ctx4310_
                    _context-chain4148_))))
            (let ((_make-import-spec-in4151_
                   (lambda (_ctx4307_ _in4308_)
                     (cons 'spec:
                           (cons (_make-import-path4150_ _ctx4307_)
                                 (reverse _in4308_))))))
              (begin
                (gxc#meta-state-end-phi! _state4146_)
                (let ((_g41534163_
                       (lambda (_g41544160_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g41544160_))))
                  (let ((_g41524304_
                         (lambda (_g41544166_)
                           (if (gx#stx-pair? _g41544166_)
                               (let ((_e41564168_ (gx#stx-e _g41544166_)))
                                 (let ((_hd41574171_ (##car _e41564168_))
                                       (_tl41584173_ (##cdr _e41564168_)))
                                   ((lambda (_L4176_)
                                      ((letrec ((_lp4187_
                                                 (lambda (_rest4189_
                                                          _current-src4190_
                                                          _current-in4191_
                                                          _r4192_)
                                                   (let ((_rest41934201_
                                                          _rest4189_))
                                                     (let ((_E41964205_
                                                            (lambda ()
                                                              (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _rest41934201_))))
               (let ((_else41954211_
                      (lambda ()
                        (let ((_r4209_ (if _current-src4190_
                                           (cons (_make-import-spec-in4151_
                                                  _current-src4190_
                                                  _current-in4191_)
                                                 _r4192_)
                                           _r4192_)))
                          (cons '%#import (reverse _r4209_))))))
                 (let ((_K41974292_
                        (lambda (_rest4214_ _in4215_)
                          (if (##structure-direct-instance-of?
                               _in4215_
                               'gx#module-import::t)
                              (let ((_in42164223_ _in4215_))
                                (let ((_E42184227_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _in42164223_))))
                                  (let ((_K42194232_
                                         (lambda (_src-ctx4230_)
                                           (if (eq? _current-src4190_
                                                    _src-ctx4230_)
                                               (_lp4187_
                                                _rest4214_
                                                _current-src4190_
                                                (cons (_make-import-spec4149_
                                                       _in4215_)
                                                      _current-in4191_)
                                                _r4192_)
                                               (if _current-src4190_
                                                   (_lp4187_
                                                    _rest4214_
                                                    _src-ctx4230_
                                                    (cons (_make-import-spec4149_
                                                           _in4215_)
                                                          '())
                                                    (cons (_make-import-spec-in4151_
                                                           _current-src4190_
                                                           _current-in4191_)
                                                          _r4192_))
                                                   (_lp4187_
                                                    _rest4214_
                                                    _src-ctx4230_
                                                    (cons (_make-import-spec4149_
                                                           _in4215_)
                                                          '())
                                                    _r4192_))))))
                                    (if (##structure-direct-instance-of?
                                         _in42164223_
                                         (##type-id gx#module-import::t))
                                        (let ((_e42204235_
                                               (##vector-ref _in42164223_ '1)))
                                          (if (##structure-direct-instance-of?
                                               _e42204235_
                                               (##type-id gx#module-export::t))
                                              (let ((_e42214238_
                                                     (##vector-ref
                                                      _e42204235_
                                                      '1)))
                                                (let ((_src-ctx4241_
                                                       _e42214238_))
                                                  (_K42194232_ _src-ctx4241_)))
                                              (_E42184227_)))
                                        (_E42184227_)))))
                              (if (##structure-direct-instance-of?
                                   _in4215_
                                   'gx#import-set::t)
                                  (let ((_phi4243_
                                         (##direct-structure-ref
                                          _in4215_
                                          '2
                                          gx#import-set::t
                                          '#f)))
                                    (let ((_src4245_
                                           (##direct-structure-ref
                                            _in4215_
                                            '1
                                            gx#import-set::t
                                            '#f)))
                                      (let ((_src-in4285_
                                             (let ((_g42464255_
                                                    (_make-import-path4150_
                                                     _src4245_)))
                                               (let ((_E42494259_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _g42464255_))))
                                                 (let ((_try-match42484270_
                                                        (lambda ()
                                                          (let ((_K42504265_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_path4263_) (cons 'in: _path4263_))))
                    (let ((_path4268_ _g42464255_))
                      (_K42504265_ _path4268_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_K42514275_
                                                          (lambda (_path4273_)
                                                            _path4273_)))
                                                     (if (##pair? _g42464255_)
                                                         (let ((_hd42524278_
                                                                (##car _g42464255_))
                                                               (_tl42534280_
                                                                (##cdr _g42464255_)))
                                                           (let ((_path4283_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd42524278_))
                     (if (##null? _tl42534280_)
                         (_K42514275_ _path4283_)
                         (_try-match42484270_))))
                 (_try-match42484270_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_r4287_ (if _current-src4190_
                                                           (cons (_make-import-spec-in4151_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _current-src4190_
                          _current-in4191_)
                         _r4192_)
                   _r4192_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (_lp4187_
                                             _rest4214_
                                             '#f
                                             '()
                                             (cons (if (fxzero? _phi4243_)
                                                       _src-in4285_
                                                       (cons 'phi:
                                                             (cons _phi4243_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _src-in4285_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _r4287_)))))))
                                  (if (##structure-instance-of?
                                       _in4215_
                                       'gx#module-context::t)
                                      (let ((_r4290_ (if _current-src4190_
                                                         (cons (_make-import-spec-in4151_
                                                                _current-src4190_
                                                                _current-in4191_)
                                                               _r4192_)
                                                         _r4192_)))
                                        (_lp4187_
                                         _rest4214_
                                         '#f
                                         '()
                                         (cons (cons 'runtime:
                                                     (_make-import-path4150_
                                                      _in4215_))
                                               _r4290_)))
                                      '#!void))))))
                   (if (##pair? _rest41934201_)
                       (let ((_hd41984295_ (##car _rest41934201_))
                             (_tl41994297_ (##cdr _rest41934201_)))
                         (let ((_in4300_ _hd41984295_))
                           (let ((_rest4302_ _tl41994297_))
                             (_K41974292_ _rest4302_ _in4300_))))
                       (_else41954211_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _lp4187_)
                                       _L4176_
                                       '#f
                                       '()
                                       '()))
                                    _tl41584173_)))
                               (_g41534163_ _g41544166_)))))
                    (_g41524304_ _stx4145_))))))))))
  (define gxc#generate-meta-export%
    (lambda (_stx3955_ _state3956_)
      (let ((_context-chain3958_ (gxc#current-context-chain)))
        (let ((_make-import-path3959_
               (lambda (_ctx4143_)
                 (gxc#generate-meta-import-path
                  _ctx4143_
                  _context-chain3958_))))
          (let ((_g39613971_
                 (lambda (_g39623968_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g39623968_))))
            (let ((_g39604140_
                   (lambda (_g39623974_)
                     (if (gx#stx-pair? _g39623974_)
                         (let ((_e39643976_ (gx#stx-e _g39623974_)))
                           (let ((_hd39653979_ (##car _e39643976_))
                                 (_tl39663981_ (##cdr _e39643976_)))
                             ((lambda (_L3984_)
                                ((letrec ((_lp3995_
                                           (lambda (_rest3997_ _r3998_)
                                             (let ((_rest39994007_ _rest3997_))
                                               (let ((_E40024011_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _rest39994007_))))
                                                 (let ((_else40014015_
                                                        (lambda ()
                                                          (cons '%#export
                                                                (reverse _r3998_)))))
                                                   (let ((_K40034128_
                                                          (lambda (_rest4018_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _out4019_)
                    (let ((_out40204033_ _out4019_))
                      (let ((_E40234037_
                             (lambda ()
                               (error '"No clause matching" _out40204033_))))
                        (let ((_try-match40224100_
                               (lambda ()
                                 (let ((_K40244087_
                                        (lambda (_phi4041_ _src4042_)
                                          (let ((_out4082_
                                                 (if _src4042_
                                                     (cons 'import:
                                                           (cons (let ((_g40434052_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (_make-import-path3959_ _src4042_)))
                           (let ((_E40464056_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _g40434052_))))
                             (let ((_try-match40454067_
                                    (lambda ()
                                      (let ((_K40474062_
                                             (lambda (_path4060_)
                                               (cons 'in: _path4060_))))
                                        (let ((_path4065_ _g40434052_))
                                          (_K40474062_ _path4065_))))))
                               (let ((_K40484072_
                                      (lambda (_path4070_) _path4070_)))
                                 (if (##pair? _g40434052_)
                                     (let ((_hd40494075_ (##car _g40434052_))
                                           (_tl40504077_ (##cdr _g40434052_)))
                                       (let ((_path4080_ _hd40494075_))
                                         (if (##null? _tl40504077_)
                                             (_K40484072_ _path4080_)
                                             (_try-match40454067_))))
                                     (_try-match40454067_))))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#t)))
                                            (let ((_out4084_
                                                   (if (fxzero? _phi4041_)
                                                       _out4082_
                                                       (cons 'phi:
                                                             (cons _phi4041_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _out4082_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (_lp3995_
                                                 _rest4018_
                                                 (cons _out4084_
                                                       _r3998_))))))))
                                   (if (##structure-direct-instance-of?
                                        _out40204033_
                                        (##type-id gx#export-set::t))
                                       (let ((_e40254090_
                                              (##vector-ref _out40204033_ '1)))
                                         (let ((_src4093_ _e40254090_))
                                           (let ((_e40264095_
                                                  (##vector-ref
                                                   _out40204033_
                                                   '2)))
                                             (let ((_phi4098_ _e40264095_))
                                               (_K40244087_
                                                _phi4098_
                                                _src4093_)))))
                                       (_E40234037_))))))
                          (let ((_K40274107_
                                 (lambda (_name4103_ _phi4104_ _key4105_)
                                   (_lp3995_
                                    _rest4018_
                                    (cons (cons 'spec:
                                                (cons _phi4104_
                                                      (cons (gxc#generate-runtime-identifier-key
                                                             _key4105_)
                                                            (cons (gxc#generate-runtime-identifier-key
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _name4103_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _r3998_)))))
                            (if (##structure-direct-instance-of?
                                 _out40204033_
                                 (##type-id gx#module-export::t))
                                (let ((_e40284110_
                                       (##vector-ref _out40204033_ '1)))
                                  (let ((_e40294113_
                                         (##vector-ref _out40204033_ '2)))
                                    (let ((_key4116_ _e40294113_))
                                      (let ((_e40304118_
                                             (##vector-ref _out40204033_ '3)))
                                        (let ((_phi4121_ _e40304118_))
                                          (let ((_e40314123_
                                                 (##vector-ref
                                                  _out40204033_
                                                  '4)))
                                            (let ((_name4126_ _e40314123_))
                                              (_K40274107_
                                               _name4126_
                                               _phi4121_
                                               _key4116_))))))))
                                (_try-match40224100_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##pair? _rest39994007_)
                                                         (let ((_hd40044131_
                                                                (##car _rest39994007_))
                                                               (_tl40054133_
                                                                (##cdr _rest39994007_)))
                                                           (let ((_out4136_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd40044131_))
                     (let ((_rest4138_ _tl40054133_))
                       (_K40034128_ _rest4138_ _out4136_))))
                 (_else40014015_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _lp3995_)
                                 _L3984_
                                 '()))
                              _tl39663981_)))
                         (_g39613971_ _g39623974_)))))
              (_g39604140_ _stx3955_)))))))
  (define gxc#generate-meta-provide%
    (lambda (_stx3916_ _state3917_)
      (begin
        (gxc#meta-state-end-phi! _state3917_)
        (let ((_g39193929_
               (lambda (_g39203926_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g39203926_))))
          (let ((_g39183952_
                 (lambda (_g39203932_)
                   (if (gx#stx-pair? _g39203932_)
                       (let ((_e39223934_ (gx#stx-e _g39203932_)))
                         (let ((_hd39233937_ (##car _e39223934_))
                               (_tl39243939_ (##cdr _e39223934_)))
                           ((lambda (_L3942_)
                              (cons '%#provide
                                    (map gxc#generate-runtime-identifier
                                         _L3942_)))
                            _tl39243939_)))
                       (_g39193929_ _g39203932_)))))
            (_g39183952_ _stx3916_))))))
  (define gxc#generate-meta-extern%
    (lambda (_stx3787_ _state3788_)
      (let ((_generate13790_
             (lambda (_id3911_ _eid3912_)
               (let ((_eid3914_ (gx#stx-e _eid3912_)))
                 (begin
                   (if (interned-symbol? _eid3914_)
                       '#!void
                       (gxc#raise-compile-error
                        '"Cannot compile extern reference"
                        _stx3787_
                        _eid3914_))
                   (cons (gxc#generate-runtime-identifier _id3911_)
                         (cons _eid3914_ '())))))))
        (let ((_g37923820_
               (lambda (_g37933817_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g37933817_))))
          (let ((_g37913908_
                 (lambda (_g37933823_)
                   (if (gx#stx-pair? _g37933823_)
                       (let ((_e37963825_ (gx#stx-e _g37933823_)))
                         (let ((_hd37973828_ (##car _e37963825_))
                               (_tl37983830_ (##cdr _e37963825_)))
                           (if (gx#stx-pair/null? _tl37983830_)
                               (if (fx>= (gx#stx-length _tl37983830_) '0)
                                   (let ((_g10674_
                                          (gx#syntax-split-splice
                                           _tl37983830_
                                           '0)))
                                     (begin
                                       (let ((_g10675_
                                              (values-count _g10674_)))
                                         (if (not (fx= _g10675_ 2))
                                             (error "Context expects 2 values"
                                                    _g10675_)))
                                       (let ((_target37993833_
                                              (values-ref _g10674_ 0))
                                             (_tl38013835_
                                              (values-ref _g10674_ 1)))
                                         (if (gx#stx-null? _tl38013835_)
                                             (letrec ((_loop38023838_
                                                       (lambda (_hd38003841_
                                                                _eid38063843_
                                                                _id38073845_)
                                                         (if (gx#stx-pair?
                                                              _hd38003841_)
                                                             (let ((_e38033848_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd38003841_)))
                       (let ((_lp-hd38043851_ (##car _e38033848_))
                             (_lp-tl38053853_ (##cdr _e38033848_)))
                         (if (gx#stx-pair? _lp-hd38043851_)
                             (let ((_e38103856_ (gx#stx-e _lp-hd38043851_)))
                               (let ((_hd38113859_ (##car _e38103856_))
                                     (_tl38123861_ (##cdr _e38103856_)))
                                 (if (gx#stx-pair? _tl38123861_)
                                     (let ((_e38133864_
                                            (gx#stx-e _tl38123861_)))
                                       (let ((_hd38143867_ (##car _e38133864_))
                                             (_tl38153869_
                                              (##cdr _e38133864_)))
                                         (if (gx#stx-null? _tl38153869_)
                                             (_loop38023838_
                                              _lp-tl38053853_
                                              (cons _hd38143867_ _eid38063843_)
                                              (cons _hd38113859_ _id38073845_))
                                             (_g37923820_ _g37933823_))))
                                     (_g37923820_ _g37933823_))))
                             (_g37923820_ _g37933823_))))
                     (let ((_eid38083872_ (reverse _eid38063843_))
                           (_id38093874_ (reverse _id38073845_)))
                       ((lambda (_L3877_ _L3878_)
                          (cons '%#extern
                                (map _generate13790_
                                     (begin
                                       '#!void
                                       (foldr1 (lambda (_g38933896_
                                                        _g38943898_)
                                                 (cons _g38933896_
                                                       _g38943898_))
                                               '()
                                               _L3878_))
                                     (begin
                                       '#!void
                                       (foldr1 (lambda (_g39003903_
                                                        _g39013905_)
                                                 (cons _g39003903_
                                                       _g39013905_))
                                               '()
                                               _L3877_)))))
                        _eid38083872_
                        _id38093874_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop38023838_
                                                _target37993833_
                                                '()
                                                '()))
                                             (_g37923820_ _g37933823_)))))
                                   (_g37923820_ _g37933823_))
                               (_g37923820_ _g37933823_))))
                       (_g37923820_ _g37933823_)))))
            (_g37913908_ _stx3787_))))))
  (define gxc#generate-meta-define-values%
    (lambda (_stx3582_ _state3583_)
      (let ((_generate13585_
             (lambda (_id3782_)
               (let ((_eid3784_ (gxc#generate-runtime-binding-id _id3782_))
                     (_ident3785_ (gxc#generate-runtime-identifier _id3782_)))
                 (cons '%#define-runtime
                       (cons _ident3785_ (cons _eid3784_ '())))))))
        (let ((_generate*3586_
               (lambda (_all3750_)
                 (let ((_all37513759_ _all3750_))
                   (let ((_E37543763_
                          (lambda ()
                            (error '"No clause matching" _all37513759_))))
                     (let ((_else37533767_
                            (lambda () (cons '%#begin _all3750_))))
                       (let ((_K37553772_ (lambda (_one3770_) _one3770_)))
                         (if (##pair? _all37513759_)
                             (let ((_hd37563775_ (##car _all37513759_))
                                   (_tl37573777_ (##cdr _all37513759_)))
                               (let ((_one3780_ _hd37563775_))
                                 (if (##null? _tl37573777_)
                                     (_K37553772_ _one3780_)
                                     (_else37533767_))))
                             (_else37533767_)))))))))
          (let ((_g35883605_
                 (lambda (_g35893602_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g35893602_))))
            (let ((_g35873747_
                   (lambda (_g35893608_)
                     (if (gx#stx-pair? _g35893608_)
                         (let ((_e35923610_ (gx#stx-e _g35893608_)))
                           (let ((_hd35933613_ (##car _e35923610_))
                                 (_tl35943615_ (##cdr _e35923610_)))
                             (if (gx#stx-pair? _tl35943615_)
                                 (let ((_e35953618_ (gx#stx-e _tl35943615_)))
                                   (let ((_hd35963621_ (##car _e35953618_))
                                         (_tl35973623_ (##cdr _e35953618_)))
                                     (if (gx#stx-pair? _tl35973623_)
                                         (let ((_e35983626_
                                                (gx#stx-e _tl35973623_)))
                                           (let ((_hd35993629_
                                                  (##car _e35983626_))
                                                 (_tl36003631_
                                                  (##cdr _e35983626_)))
                                             (if (gx#stx-null? _tl36003631_)
                                                 ((lambda (_L3634_ _L3635_)
                                                    ((letrec ((_lp3651_
                                                               (lambda (_rest3653_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _r3654_)
                         (let ((_g36593675_
                                (lambda (_g36603672_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g36603672_))))
                           (let ((_g36583682_
                                  (lambda (_g36603678_)
                                    ((lambda ()
                                       (_generate*3586_ (reverse _r3654_)))))))
                             (let ((_g36573698_
                                    (lambda (_g36603685_)
                                      ((lambda (_L3687_)
                                         (if (gx#identifier? _L3687_)
                                             (_generate*3586_
                                              (foldl1 cons
                                                      (cons (_generate13585_
                                                             _L3687_)
                                                            '())
                                                      _r3654_))
                                             (_g36583682_ _g36603685_)))
                                       _g36603685_))))
                               (let ((_g36563722_
                                      (lambda (_g36603701_)
                                        (if (gx#stx-pair? _g36603701_)
                                            (let ((_e36673703_
                                                   (gx#stx-e _g36603701_)))
                                              (let ((_hd36683706_
                                                     (##car _e36673703_))
                                                    (_tl36693708_
                                                     (##cdr _e36673703_)))
                                                ((lambda (_L3711_ _L3712_)
                                                   (_lp3651_
                                                    _L3711_
                                                    (cons (_generate13585_
                                                           _L3712_)
                                                          _r3654_)))
                                                 _tl36693708_
                                                 _hd36683706_)))
                                            (_g36573698_ _g36603701_)))))
                                 (let ((_g36553744_
                                        (lambda (_g36603725_)
                                          (if (gx#stx-pair? _g36603725_)
                                              (let ((_e36623727_
                                                     (gx#stx-e _g36603725_)))
                                                (let ((_hd36633730_
                                                       (##car _e36623727_))
                                                      (_tl36643732_
                                                       (##cdr _e36623727_)))
                                                  (if (gx#stx-datum?
                                                       _hd36633730_)
                                                      (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd36633730_)
                          '#f)
                  ((lambda (_L3735_) (_lp3651_ _L3735_ _r3654_)) _tl36643732_)
                  (_g36563722_ _g36603725_))
              (_g36563722_ _g36603725_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g36563722_ _g36603725_)))))
                                   (_g36553744_ _rest3653_)))))))))
               _lp3651_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _L3635_
                                                     '()))
                                                  _hd35993629_
                                                  _hd35963621_)
                                                 (_g35883605_ _g35893608_))))
                                         (_g35883605_ _g35893608_))))
                                 (_g35883605_ _g35893608_))))
                         (_g35883605_ _g35893608_)))))
              (_g35873747_ _stx3582_)))))))
  (define gxc#generate-meta-define-syntax%
    (lambda (_stx3479_ _state3480_)
      (let ((_g34823499_
             (lambda (_g34833496_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g34833496_))))
        (let ((_g34813579_
               (lambda (_g34833502_)
                 (if (gx#stx-pair? _g34833502_)
                     (let ((_e34863504_ (gx#stx-e _g34833502_)))
                       (let ((_hd34873507_ (##car _e34863504_))
                             (_tl34883509_ (##cdr _e34863504_)))
                         (if (gx#stx-pair? _tl34883509_)
                             (let ((_e34893512_ (gx#stx-e _tl34883509_)))
                               (let ((_hd34903515_ (##car _e34893512_))
                                     (_tl34913517_ (##cdr _e34893512_)))
                                 (if (gx#stx-pair? _tl34913517_)
                                     (let ((_e34923520_
                                            (gx#stx-e _tl34913517_)))
                                       (let ((_hd34933523_ (##car _e34923520_))
                                             (_tl34943525_
                                              (##cdr _e34923520_)))
                                         (if (gx#stx-null? _tl34943525_)
                                             ((lambda (_L3528_ _L3529_)
                                                (let ((_eid3544_
                                                       (gxc#generate-runtime-binding-id
                                                        _L3529_)))
                                                  (let ((_phi3546_
                                                         (fx+ (gx#current-expander-phi)
                                                              '1)))
                                                    (let ((_block3548_
                                                           (gxc#meta-state-begin-phi!
                                                            _state3480_
                                                            _phi3546_)))
                                                      (let ()
                                                        (begin
                                                          (let ((_g35513558_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g35523555_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g35523555_))))
                    (let ((_g35503576_
                           (lambda (_g35523561_)
                             ((lambda (_L3563_)
                                (let ()
                                  (gxc#meta-state-add-phi!
                                   _state3480_
                                   _phi3546_
                                   (cons (gx#datum->syntax__0
                                          '#f
                                          '%#define-runtime)
                                         (cons _L3563_ (cons _L3528_ '()))))))
                              _g35523561_))))
                      (_g35503576_ _eid3544_)))
                  (if _block3548_
                      (cons '%#begin
                            (cons (cons '%#begin-syntax
                                        (cons (cons '%#call
                                                    (cons (cons '%#ref
                                                                (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote (cons _block3548_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))
                                  (cons (cons '%#define-syntax
                                              (cons (gxc#generate-runtime-identifier
                                                     _L3529_)
                                                    (cons _eid3544_ '())))
                                        '())))
                      (cons '%#define-syntax
                            (cons (gxc#generate-runtime-identifier _L3529_)
                                  (cons _eid3544_ '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd34933523_
                                              _hd34903515_)
                                             (_g34823499_ _g34833502_))))
                                     (_g34823499_ _g34833502_))))
                             (_g34823499_ _g34833502_))))
                     (_g34823499_ _g34833502_)))))
          (_g34813579_ _stx3479_)))))
  (define gxc#generate-meta-define-alias%
    (lambda (_stx3411_ _state3412_)
      (let ((_g34143431_
             (lambda (_g34153428_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g34153428_))))
        (let ((_g34133476_
               (lambda (_g34153434_)
                 (if (gx#stx-pair? _g34153434_)
                     (let ((_e34183436_ (gx#stx-e _g34153434_)))
                       (let ((_hd34193439_ (##car _e34183436_))
                             (_tl34203441_ (##cdr _e34183436_)))
                         (if (gx#stx-pair? _tl34203441_)
                             (let ((_e34213444_ (gx#stx-e _tl34203441_)))
                               (let ((_hd34223447_ (##car _e34213444_))
                                     (_tl34233449_ (##cdr _e34213444_)))
                                 (if (gx#stx-pair? _tl34233449_)
                                     (let ((_e34243452_
                                            (gx#stx-e _tl34233449_)))
                                       (let ((_hd34253455_ (##car _e34243452_))
                                             (_tl34263457_
                                              (##cdr _e34243452_)))
                                         (if (gx#stx-null? _tl34263457_)
                                             ((lambda (_L3460_ _L3461_)
                                                (cons '%#define-alias
                                                      (cons (gxc#generate-runtime-identifier
                                                             _L3461_)
                                                            (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L3460_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd34253455_
                                              _hd34223447_)
                                             (_g34143431_ _g34153434_))))
                                     (_g34143431_ _g34153434_))))
                             (_g34143431_ _g34153434_))))
                     (_g34143431_ _g34153434_)))))
          (_g34133476_ _stx3411_)))))
  (define gxc#generate-meta-phi-define-values%
    (lambda (_stx3408_ _state3409_)
      (begin
        (gxc#meta-state-add-phi!
         _state3409_
         (gx#current-expander-phi)
         _stx3408_)
        (gxc#generate-meta-define-values% _stx3408_ _state3409_))))
  (define gxc#generate-meta-phi-expr
    (lambda (_stx3405_ _state3406_)
      (begin
        (gxc#meta-state-add-phi!
         _state3406_
         (gx#current-expander-phi)
         _stx3405_)
        '#!void)))
  (define gxc#meta-state::t
    (make-struct-type 'gxc#meta-state::t '#f '4 'meta-state '() ':init!))
  (define gxc#meta-state? (make-struct-predicate gxc#meta-state::t))
  (define gxc#make-meta-state
    (lambda _$args3402_
      (apply make-struct-instance gxc#meta-state::t _$args3402_)))
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
    (lambda (_self3399_ _ctx3400_)
      (struct-instance-init!
       _self3399_
       (symbol->string
        (##structure-ref _ctx3400_ '1 gx#expander-context::t '#f))
       '1
       (make-hash-table-eq)
       '())))
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
    (lambda _$args3396_
      (apply make-struct-instance gxc#meta-state-block::t _$args3396_)))
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
    (lambda (_state3355_ _phi3356_)
      (let ((_state33573365_ _state3355_))
        (let ((_E33593369_
               (lambda () (error '"No clause matching" _state33573365_))))
          (let ((_K33603378_
                 (lambda (_open3372_ _n3373_ _src3374_)
                   (if (table-ref _open3372_ _phi3356_ '#f)
                       '#f
                       (let ((_block-ref3376_
                              (string-append
                               _src3374_
                               '"__"
                               (number->string _n3373_))))
                         (begin
                           (##structure-set!
                            _state3355_
                            (fx+ _n3373_ '1)
                            '2
                            gxc#meta-state::t
                            '#f)
                           (table-set!
                            _open3372_
                            _phi3356_
                            (##structure
                             gxc#meta-state-block::t
                             (gx#current-expander-context)
                             _phi3356_
                             _n3373_
                             '()))
                           _block-ref3376_))))))
            (if (##structure-instance-of?
                 _state33573365_
                 (##type-id gxc#meta-state::t))
                (let ((_e33613381_ (##vector-ref _state33573365_ '1)))
                  (let ((_src3384_ _e33613381_))
                    (let ((_e33623386_ (##vector-ref _state33573365_ '2)))
                      (let ((_n3389_ _e33623386_))
                        (let ((_e33633391_ (##vector-ref _state33573365_ '3)))
                          (let ((_open3394_ _e33633391_))
                            (_K33603378_ _open3394_ _n3389_ _src3384_)))))))
                (_E33593369_)))))))
  (define gxc#meta-state-add-phi!
    (lambda (_state3349_ _phi3350_ _stx3351_)
      (let ((_block3353_
             (table-ref
              (##structure-ref _state3349_ '3 gxc#meta-state::t '#f)
              _phi3350_
              '#f)))
        (##structure-set!
         _block3353_
         (cons _stx3351_
               (##structure-ref _block3353_ '4 gxc#meta-state-block::t '#f))
         '4
         gxc#meta-state-block::t
         '#f))))
  (define gxc#meta-state-end-phi!
    (lambda (_state3344_)
      (begin
        (##structure-set!
         _state3344_
         (hash-fold
          (lambda (_g10676_ _block3346_ _r3347_) (cons _block3346_ _r3347_))
          (##structure-ref _state3344_ '4 gxc#meta-state::t '#f)
          (##structure-ref _state3344_ '3 gxc#meta-state::t '#f))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _state3344_
         (make-hash-table-eq)
         '3
         gxc#meta-state::t
         '#f))))
  (define gxc#meta-state-end!
    (lambda (_state3296_)
      (begin
        (gxc#meta-state-end-phi! _state3296_)
        (foldl1 (lambda (_block3298_ _r3299_)
                  (let ((_block33003309_ _block3298_))
                    (let ((_E33023313_
                           (lambda ()
                             (error '"No clause matching" _block33003309_))))
                      (let ((_K33033321_
                             (lambda (_code3316_ _n3317_ _phi3318_ _ctx3319_)
                               (if (null? _code3316_)
                                   _r3299_
                                   (cons (cons _ctx3319_
                                               (cons _phi3318_
                                                     (cons _n3317_
                                                           (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (reverse _code3316_))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _r3299_)))))
                        (if (##structure-instance-of?
                             _block33003309_
                             (##type-id gxc#meta-state-block::t))
                            (let ((_e33043324_
                                   (##vector-ref _block33003309_ '1)))
                              (let ((_ctx3327_ _e33043324_))
                                (let ((_e33053329_
                                       (##vector-ref _block33003309_ '2)))
                                  (let ((_phi3332_ _e33053329_))
                                    (let ((_e33063334_
                                           (##vector-ref _block33003309_ '3)))
                                      (let ((_n3337_ _e33063334_))
                                        (let ((_e33073339_
                                               (##vector-ref
                                                _block33003309_
                                                '4)))
                                          (let ((_code3342_ _e33073339_))
                                            (_K33033321_
                                             _code3342_
                                             _n3337_
                                             _phi3332_
                                             _ctx3327_)))))))))
                            (_E33023313_))))))
                '()
                (##structure-ref _state3296_ '4 gxc#meta-state::t '#f)))))
  (define gxc#collect-expression-refs
    (lambda (_stx3292_)
      (let ((_ht3294_ (make-hash-table-eq)))
        (begin
          (gxc#apply-collect-expression-refs _stx3292_ _ht3294_)
          _ht3294_))))
  (define gxc#collect-refs-ref%
    (lambda (_stx3235_ _ht3236_)
      (let ((_g32383251_
             (lambda (_g32393248_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g32393248_))))
        (let ((_g32373289_
               (lambda (_g32393254_)
                 (if (gx#stx-pair? _g32393254_)
                     (let ((_e32413256_ (gx#stx-e _g32393254_)))
                       (let ((_hd32423259_ (##car _e32413256_))
                             (_tl32433261_ (##cdr _e32413256_)))
                         (if (gx#stx-pair? _tl32433261_)
                             (let ((_e32443264_ (gx#stx-e _tl32433261_)))
                               (let ((_hd32453267_ (##car _e32443264_))
                                     (_tl32463269_ (##cdr _e32443264_)))
                                 (if (gx#stx-null? _tl32463269_)
                                     ((lambda (_L3272_)
                                        (let ((_bind3284_
                                               (gx#resolve-identifier__0
                                                _L3272_)))
                                          (let ((_eid3286_
                                                 (if _bind3284_
                                                     (##structure-ref
                                                      _bind3284_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (gx#stx-e _L3272_))))
                                            (let ()
                                              (table-set!
                                               _ht3236_
                                               _eid3286_
                                               _eid3286_)))))
                                      _hd32453267_)
                                     (_g32383251_ _g32393254_))))
                             (_g32383251_ _g32393254_))))
                     (_g32383251_ _g32393254_)))))
          (_g32373289_ _stx3235_)))))
  (define gxc#collect-refs-setq%
    (lambda (_stx3162_ _ht3163_)
      (let ((_g31653182_
             (lambda (_g31663179_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g31663179_))))
        (let ((_g31643232_
               (lambda (_g31663185_)
                 (if (gx#stx-pair? _g31663185_)
                     (let ((_e31693187_ (gx#stx-e _g31663185_)))
                       (let ((_hd31703190_ (##car _e31693187_))
                             (_tl31713192_ (##cdr _e31693187_)))
                         (if (gx#stx-pair? _tl31713192_)
                             (let ((_e31723195_ (gx#stx-e _tl31713192_)))
                               (let ((_hd31733198_ (##car _e31723195_))
                                     (_tl31743200_ (##cdr _e31723195_)))
                                 (if (gx#stx-pair? _tl31743200_)
                                     (let ((_e31753203_
                                            (gx#stx-e _tl31743200_)))
                                       (let ((_hd31763206_ (##car _e31753203_))
                                             (_tl31773208_
                                              (##cdr _e31753203_)))
                                         (if (gx#stx-null? _tl31773208_)
                                             ((lambda (_L3211_ _L3212_)
                                                (let ((_bind3227_
                                                       (gx#resolve-identifier__0
                                                        _L3212_)))
                                                  (let ((_eid3229_
                                                         (if _bind3227_
                                                             (##structure-ref
                                                              _bind3227_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (gx#stx-e
                                                              _L3212_))))
                                                    (let ()
                                                      (begin
                                                        (table-set!
                                                         _ht3163_
                                                         _eid3229_
                                                         _eid3229_)
                                                        (gxc#compile-e
                                                         _L3211_
                                                         _ht3163_))))))
                                              _hd31763206_
                                              _hd31733198_)
                                             (_g31653182_ _g31663185_))))
                                     (_g31653182_ _g31663185_))))
                             (_g31653182_ _g31663185_))))
                     (_g31653182_ _g31663185_)))))
          (_g31643232_ _stx3162_)))))
  (define gxc#find-runtime-begin%
    (lambda (_stx3124_)
      (let ((_g31263136_
             (lambda (_g31273133_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g31273133_))))
        (let ((_g31253159_
               (lambda (_g31273139_)
                 (if (gx#stx-pair? _g31273139_)
                     (let ((_e31293141_ (gx#stx-e _g31273139_)))
                       (let ((_hd31303144_ (##car _e31293141_))
                             (_tl31313146_ (##cdr _e31293141_)))
                         ((lambda (_L3149_) (ormap1 gxc#compile-e _L3149_))
                          _tl31313146_)))
                     (_g31263136_ _g31273139_)))))
          (_g31253159_ _stx3124_)))))
  (define gxc#find-lambda-expression-begin%
    (lambda (_stx3086_)
      (let ((_g30883098_
             (lambda (_g30893095_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g30893095_))))
        (let ((_g30873121_
               (lambda (_g30893101_)
                 (if (gx#stx-pair? _g30893101_)
                     (let ((_e30913103_ (gx#stx-e _g30893101_)))
                       (let ((_hd30923106_ (##car _e30913103_))
                             (_tl30933108_ (##cdr _e30913103_)))
                         ((lambda (_L3111_) (gxc#compile-e (last _L3111_)))
                          _tl30933108_)))
                     (_g30883098_ _g30893101_)))))
          (_g30873121_ _stx3086_)))))
  (define gxc#find-lambda-expression-let-values%
    (lambda (_stx3019_)
      (let ((_g30213038_
             (lambda (_g30223035_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g30223035_))))
        (let ((_g30203083_
               (lambda (_g30223041_)
                 (if (gx#stx-pair? _g30223041_)
                     (let ((_e30253043_ (gx#stx-e _g30223041_)))
                       (let ((_hd30263046_ (##car _e30253043_))
                             (_tl30273048_ (##cdr _e30253043_)))
                         (if (gx#stx-pair? _tl30273048_)
                             (let ((_e30283051_ (gx#stx-e _tl30273048_)))
                               (let ((_hd30293054_ (##car _e30283051_))
                                     (_tl30303056_ (##cdr _e30283051_)))
                                 (if (gx#stx-pair? _tl30303056_)
                                     (let ((_e30313059_
                                            (gx#stx-e _tl30303056_)))
                                       (let ((_hd30323062_ (##car _e30313059_))
                                             (_tl30333064_
                                              (##cdr _e30313059_)))
                                         (if (gx#stx-null? _tl30333064_)
                                             ((lambda (_L3067_ _L3068_)
                                                (gxc#compile-e _L3067_))
                                              _hd30323062_
                                              _hd30293054_)
                                             (_g30213038_ _g30223041_))))
                                     (_g30213038_ _g30223041_))))
                             (_g30213038_ _g30223041_))))
                     (_g30213038_ _g30223041_)))))
          (_g30203083_ _stx3019_))))))
