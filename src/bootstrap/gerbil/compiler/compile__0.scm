(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#current-compile-methods (make-parameter '#f))
  (define gxc#current-compile-lift (make-parameter '#f))
  (define gxc#compile-e
    (lambda (_stx11020_ . _args11021_)
      (let* ((_g1102311033_
              (lambda (_g1102411030_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1102411030_)))
             (_g1102211061_
              (lambda (_g1102411036_)
                (if (gx#stx-pair? _g1102411036_)
                    (let ((_e1102611038_ (gx#stx-e _g1102411036_)))
                      (let ((_hd1102711041_ (##car _e1102611038_))
                            (_tl1102811043_ (##cdr _e1102611038_)))
                        ((lambda (_L11046_)
                           (let ((_$e11056_
                                  (table-ref
                                   (gxc#current-compile-methods)
                                   (gx#stx-e _L11046_)
                                   '#f)))
                             (if _$e11056_
                                 ((lambda (_method11059_)
                                    (apply _method11059_
                                           _stx11020_
                                           _args11021_))
                                  _$e11056_)
                                 (gxc#raise-compile-error
                                  '"Cannot compile; missing method"
                                  _stx11020_
                                  _L11046_))))
                         _hd1102711041_)))
                    (_g1102311033_ _g1102411036_)))))
        (_g1102211061_ _stx11020_))))
  (define gxc#&void-expression
    (make-promise
     (lambda ()
       (let ((_tbl11017_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl11017_ '%#lambda void)
           (table-set! _tbl11017_ '%#case-lambda void)
           (table-set! _tbl11017_ '%#let-values void)
           (table-set! _tbl11017_ '%#letrec-values void)
           (table-set! _tbl11017_ '%#letrec*-values void)
           (table-set! _tbl11017_ '%#quote void)
           (table-set! _tbl11017_ '%#quote-syntax void)
           (table-set! _tbl11017_ '%#call void)
           (table-set! _tbl11017_ '%#if void)
           (table-set! _tbl11017_ '%#ref void)
           (table-set! _tbl11017_ '%#set! void)
           (table-set! _tbl11017_ '%#struct-instance? void)
           (table-set! _tbl11017_ '%#struct-direct-instance? void)
           (table-set! _tbl11017_ '%#struct-ref void)
           (table-set! _tbl11017_ '%#struct-set! void)
           (table-set! _tbl11017_ '%#struct-direct-ref void)
           (table-set! _tbl11017_ '%#struct-direct-set! void)
           (table-set! _tbl11017_ '%#struct-unchecked-ref void)
           (table-set! _tbl11017_ '%#struct-unchecked-set! void)
           _tbl11017_)))))
  (define gxc#&void-special-form
    (make-promise
     (lambda ()
       (let ((_tbl11013_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl11013_ '%#begin void)
           (table-set! _tbl11013_ '%#begin-syntax void)
           (table-set! _tbl11013_ '%#begin-foreign void)
           (table-set! _tbl11013_ '%#module void)
           (table-set! _tbl11013_ '%#import void)
           (table-set! _tbl11013_ '%#export void)
           (table-set! _tbl11013_ '%#provide void)
           (table-set! _tbl11013_ '%#extern void)
           (table-set! _tbl11013_ '%#define-values void)
           (table-set! _tbl11013_ '%#define-syntax void)
           (table-set! _tbl11013_ '%#define-alias void)
           (table-set! _tbl11013_ '%#declare void)
           _tbl11013_)))))
  (define gxc#&void
    (make-promise
     (lambda ()
       (let ((_tbl11009_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl11009_ (force gxc#&void-special-form))
           (hash-copy! _tbl11009_ (force gxc#&void-expression))
           _tbl11009_)))))
  (define gxc#&false-expression
    (make-promise
     (lambda ()
       (let ((_tbl11005_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl11005_ '%#lambda false)
           (table-set! _tbl11005_ '%#case-lambda false)
           (table-set! _tbl11005_ '%#let-values false)
           (table-set! _tbl11005_ '%#letrec-values false)
           (table-set! _tbl11005_ '%#letrec*-values false)
           (table-set! _tbl11005_ '%#quote false)
           (table-set! _tbl11005_ '%#quote-syntax false)
           (table-set! _tbl11005_ '%#call false)
           (table-set! _tbl11005_ '%#if false)
           (table-set! _tbl11005_ '%#ref false)
           (table-set! _tbl11005_ '%#set! false)
           (table-set! _tbl11005_ '%#struct-instance? false)
           (table-set! _tbl11005_ '%#struct-direct-instance? false)
           (table-set! _tbl11005_ '%#struct-ref false)
           (table-set! _tbl11005_ '%#struct-set! false)
           (table-set! _tbl11005_ '%#struct-direct-ref false)
           (table-set! _tbl11005_ '%#struct-direct-set! false)
           (table-set! _tbl11005_ '%#struct-unchecked-ref false)
           (table-set! _tbl11005_ '%#struct-unchecked-set! false)
           _tbl11005_)))))
  (define gxc#&false-special-form
    (make-promise
     (lambda ()
       (let ((_tbl11001_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl11001_ '%#begin false)
           (table-set! _tbl11001_ '%#begin-syntax false)
           (table-set! _tbl11001_ '%#begin-foreign false)
           (table-set! _tbl11001_ '%#module false)
           (table-set! _tbl11001_ '%#import false)
           (table-set! _tbl11001_ '%#export false)
           (table-set! _tbl11001_ '%#provide false)
           (table-set! _tbl11001_ '%#extern false)
           (table-set! _tbl11001_ '%#define-values false)
           (table-set! _tbl11001_ '%#define-syntax false)
           (table-set! _tbl11001_ '%#define-alias false)
           (table-set! _tbl11001_ '%#declare false)
           _tbl11001_)))))
  (define gxc#&false
    (make-promise
     (lambda ()
       (let ((_tbl10997_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10997_ (force gxc#&false-special-form))
           (hash-copy! _tbl10997_ (force gxc#&false-expression))
           _tbl10997_)))))
  (define gxc#&collect-bindings
    (make-promise
     (lambda ()
       (let ((_tbl10993_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10993_ (force gxc#&void-expression))
           (hash-copy! _tbl10993_ (force gxc#&void-special-form))
           (table-set! _tbl10993_ '%#begin gxc#collect-begin%)
           (table-set! _tbl10993_ '%#begin-syntax gxc#collect-begin-syntax%)
           (table-set! _tbl10993_ '%#module gxc#collect-module%)
           (table-set!
            _tbl10993_
            '%#define-values
            gxc#collect-bindings-define-values%)
           (table-set!
            _tbl10993_
            '%#define-syntax
            gxc#collect-bindings-define-syntax%)
           _tbl10993_)))))
  (define gxc#apply-collect-bindings
    (lambda (_stx10986_ . _args10988_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10986_ _args10988_))
       gxc#current-compile-methods
       (force gxc#&collect-bindings))))
  (define gxc#&lift-modules
    (make-promise
     (lambda ()
       (let ((_tbl10983_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10983_ (force gxc#&void))
           (table-set! _tbl10983_ '%#begin gxc#collect-begin%)
           (table-set! _tbl10983_ '%#module gxc#lift-modules-module%)
           _tbl10983_)))))
  (define gxc#apply-lift-modules
    (lambda (_stx10976_ . _args10978_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10976_ _args10978_))
       gxc#current-compile-methods
       (force gxc#&lift-modules))))
  (define gxc#&find-runtime-code
    (make-promise
     (lambda ()
       (let ((_tbl10973_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl10973_ '%#begin gxc#find-runtime-begin%)
           (table-set! _tbl10973_ '%#begin-syntax false)
           (table-set! _tbl10973_ '%#begin-foreign true)
           (table-set! _tbl10973_ '%#module false)
           (table-set! _tbl10973_ '%#import false)
           (table-set! _tbl10973_ '%#export false)
           (table-set! _tbl10973_ '%#provide false)
           (table-set! _tbl10973_ '%#extern false)
           (table-set! _tbl10973_ '%#define-values true)
           (table-set! _tbl10973_ '%#define-syntax false)
           (table-set! _tbl10973_ '%#define-alias false)
           (table-set! _tbl10973_ '%#declare false)
           (table-set! _tbl10973_ '%#lambda true)
           (table-set! _tbl10973_ '%#case-lambda true)
           (table-set! _tbl10973_ '%#let-values true)
           (table-set! _tbl10973_ '%#letrec-values true)
           (table-set! _tbl10973_ '%#letrec*-values true)
           (table-set! _tbl10973_ '%#quote true)
           (table-set! _tbl10973_ '%#call true)
           (table-set! _tbl10973_ '%#if true)
           (table-set! _tbl10973_ '%#ref true)
           (table-set! _tbl10973_ '%#set! true)
           (table-set! _tbl10973_ '%#struct-instance? true)
           (table-set! _tbl10973_ '%#struct-direct-instance? true)
           (table-set! _tbl10973_ '%#struct-ref true)
           (table-set! _tbl10973_ '%#struct-set! true)
           (table-set! _tbl10973_ '%#struct-direct-ref true)
           (table-set! _tbl10973_ '%#struct-direct-set! true)
           (table-set! _tbl10973_ '%#struct-unchecked-ref true)
           (table-set! _tbl10973_ '%#struct-unchecked-set! true)
           _tbl10973_)))))
  (define gxc#apply-find-runtime-code
    (lambda (_stx10966_ . _args10968_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10966_ _args10968_))
       gxc#current-compile-methods
       (force gxc#&find-runtime-code))))
  (define gxc#&find-lambda-expression
    (make-promise
     (lambda ()
       (let ((_tbl10963_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10963_ (force gxc#&false))
           (table-set! _tbl10963_ '%#begin gxc#find-lambda-expression-begin%)
           (table-set! _tbl10963_ '%#lambda values)
           (table-set! _tbl10963_ '%#case-lambda values)
           (table-set!
            _tbl10963_
            '%#let-values
            gxc#find-lambda-expression-let-values%)
           (table-set!
            _tbl10963_
            '%#letrec-values
            gxc#find-lambda-expression-let-values%)
           (table-set!
            _tbl10963_
            '%#letrec*-values
            gxc#find-lambda-expression-let-values%)
           _tbl10963_)))))
  (define gxc#apply-find-lambda-expression
    (lambda (_stx10956_ . _args10958_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10956_ _args10958_))
       gxc#current-compile-methods
       (force gxc#&find-lambda-expression))))
  (define gxc#&generate-runtime-empty
    (make-promise
     (lambda ()
       (let ((_tbl10953_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl10953_ '%#begin gxc#generate-runtime-empty)
           (table-set! _tbl10953_ '%#begin-syntax gxc#generate-runtime-empty)
           (table-set! _tbl10953_ '%#begin-foreign gxc#generate-runtime-empty)
           (table-set! _tbl10953_ '%#module gxc#generate-runtime-empty)
           (table-set! _tbl10953_ '%#import gxc#generate-runtime-empty)
           (table-set! _tbl10953_ '%#export gxc#generate-runtime-empty)
           (table-set! _tbl10953_ '%#provide gxc#generate-runtime-empty)
           (table-set! _tbl10953_ '%#extern gxc#generate-runtime-empty)
           (table-set! _tbl10953_ '%#define-values gxc#generate-runtime-empty)
           (table-set! _tbl10953_ '%#define-syntax gxc#generate-runtime-empty)
           (table-set! _tbl10953_ '%#define-alias gxc#generate-runtime-empty)
           (table-set! _tbl10953_ '%#declare gxc#generate-runtime-empty)
           (table-set! _tbl10953_ '%#lambda gxc#generate-runtime-empty)
           (table-set! _tbl10953_ '%#case-lambda gxc#generate-runtime-empty)
           (table-set! _tbl10953_ '%#let-values gxc#generate-runtime-empty)
           (table-set! _tbl10953_ '%#letrec-values gxc#generate-runtime-empty)
           (table-set! _tbl10953_ '%#letrec*-values gxc#generate-runtime-empty)
           (table-set! _tbl10953_ '%#quote gxc#generate-runtime-empty)
           (table-set! _tbl10953_ '%#call gxc#generate-runtime-empty)
           (table-set! _tbl10953_ '%#if gxc#generate-runtime-empty)
           (table-set! _tbl10953_ '%#ref gxc#generate-runtime-empty)
           (table-set! _tbl10953_ '%#set! gxc#generate-runtime-empty)
           (table-set!
            _tbl10953_
            '%#struct-instance?
            gxc#generate-runtime-empty)
           (table-set!
            _tbl10953_
            '%#struct-direct-instance?
            gxc#generate-runtime-empty)
           (table-set! _tbl10953_ '%#struct-ref gxc#generate-runtime-empty)
           (table-set! _tbl10953_ '%#struct-set! gxc#generate-runtime-empty)
           (table-set!
            _tbl10953_
            '%#struct-direct-ref
            gxc#generate-runtime-empty)
           (table-set!
            _tbl10953_
            '%#struct-direct-set!
            gxc#generate-runtime-empty)
           (table-set!
            _tbl10953_
            '%#struct-unchecked-ref
            gxc#generate-runtime-empty)
           (table-set!
            _tbl10953_
            '%#struct-unchecked-set!
            gxc#generate-runtime-empty)
           _tbl10953_)))))
  (define gxc#&generate-loader
    (make-promise
     (lambda ()
       (let ((_tbl10949_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10949_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl10949_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl10949_
            '%#import
            gxc#generate-runtime-loader-import%)
           _tbl10949_)))))
  (define gxc#apply-generate-loader
    (lambda (_stx10942_ . _args10944_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10942_ _args10944_))
       gxc#current-compile-methods
       (force gxc#&generate-loader))))
  (define gxc#&generate-runtime
    (make-promise
     (lambda ()
       (let ((_tbl10939_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10939_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl10939_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl10939_
            '%#begin-foreign
            gxc#generate-runtime-begin-foreign%)
           (table-set!
            _tbl10939_
            '%#define-values
            gxc#generate-runtime-define-values%)
           (table-set! _tbl10939_ '%#declare gxc#generate-runtime-declare%)
           (table-set! _tbl10939_ '%#lambda gxc#generate-runtime-lambda%)
           (table-set!
            _tbl10939_
            '%#case-lambda
            gxc#generate-runtime-case-lambda%)
           (table-set!
            _tbl10939_
            '%#let-values
            gxc#generate-runtime-let-values%)
           (table-set!
            _tbl10939_
            '%#letrec-values
            gxc#generate-runtime-letrec-values%)
           (table-set!
            _tbl10939_
            '%#letrec*-values
            gxc#generate-runtime-letrec*-values%)
           (table-set! _tbl10939_ '%#quote gxc#generate-runtime-quote%)
           (table-set! _tbl10939_ '%#call gxc#generate-runtime-call%)
           (table-set! _tbl10939_ '%#if gxc#generate-runtime-if%)
           (table-set! _tbl10939_ '%#ref gxc#generate-runtime-ref%)
           (table-set! _tbl10939_ '%#set! gxc#generate-runtime-setq%)
           (table-set!
            _tbl10939_
            '%#struct-instance?
            gxc#generate-runtime-struct-instancep%)
           (table-set!
            _tbl10939_
            '%#struct-direct-instance?
            gxc#generate-runtime-struct-direct-instancep%)
           (table-set!
            _tbl10939_
            '%#struct-ref
            gxc#generate-runtime-struct-ref%)
           (table-set!
            _tbl10939_
            '%#struct-set!
            gxc#generate-runtime-struct-setq%)
           (table-set!
            _tbl10939_
            '%#struct-direct-ref
            gxc#generate-runtime-struct-direct-ref%)
           (table-set!
            _tbl10939_
            '%#struct-direct-set!
            gxc#generate-runtime-struct-direct-setq%)
           (table-set!
            _tbl10939_
            '%#struct-unchecked-ref
            gxc#generate-runtime-struct-unchecked-ref%)
           (table-set!
            _tbl10939_
            '%#struct-unchecked-set!
            gxc#generate-runtime-struct-unchecked-setq%)
           _tbl10939_)))))
  (define gxc#apply-generate-runtime
    (lambda (_stx10932_ . _args10934_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10932_ _args10934_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime))))
  (define gxc#&generate-runtime-phi
    (make-promise
     (lambda ()
       (let ((_tbl10929_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10929_ (force gxc#&generate-runtime))
           (table-set!
            _tbl10929_
            '%#quote-syntax
            gxc#generate-runtime-phi-quote-syntax%)
           (table-set!
            _tbl10929_
            '%#define-runtime
            gxc#generate-runtime-phi-define-runtime%)
           _tbl10929_)))))
  (define gxc#apply-generate-runtime-phi
    (lambda (_stx10922_ . _args10924_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10922_ _args10924_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime-phi))))
  (define gxc#&collect-expression-refs
    (make-promise
     (lambda ()
       (let ((_tbl10919_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl10919_ '%#begin gxc#collect-begin%)
           (table-set! _tbl10919_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl10919_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl10919_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl10919_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl10919_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl10919_ '%#quote void)
           (table-set! _tbl10919_ '%#quote-syntax void)
           (table-set! _tbl10919_ '%#call gxc#collect-operands)
           (table-set! _tbl10919_ '%#if gxc#collect-operands)
           (table-set! _tbl10919_ '%#ref gxc#collect-refs-ref%)
           (table-set! _tbl10919_ '%#set! gxc#collect-refs-setq%)
           (table-set! _tbl10919_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl10919_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl10919_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl10919_ '%#struct-set! gxc#collect-operands)
           (table-set! _tbl10919_ '%#struct-direct-ref gxc#collect-operands)
           (table-set! _tbl10919_ '%#struct-direct-set! gxc#collect-operands)
           (table-set! _tbl10919_ '%#struct-unchecked-ref gxc#collect-operands)
           (table-set!
            _tbl10919_
            '%#struct-unchecked-set!
            gxc#collect-operands)
           _tbl10919_)))))
  (define gxc#apply-collect-expression-refs
    (lambda (_stx10912_ . _args10914_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10912_ _args10914_))
       gxc#current-compile-methods
       (force gxc#&collect-expression-refs))))
  (define gxc#&generate-meta
    (make-promise
     (lambda ()
       (let ((_tbl10909_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10909_ (force gxc#&void-expression))
           (table-set! _tbl10909_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl10909_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set! _tbl10909_ '%#module gxc#generate-meta-module%)
           (table-set! _tbl10909_ '%#import gxc#generate-meta-import%)
           (table-set! _tbl10909_ '%#export gxc#generate-meta-export%)
           (table-set! _tbl10909_ '%#provide gxc#generate-meta-provide%)
           (table-set! _tbl10909_ '%#extern gxc#generate-meta-extern%)
           (table-set!
            _tbl10909_
            '%#define-values
            gxc#generate-meta-define-values%)
           (table-set!
            _tbl10909_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl10909_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set! _tbl10909_ '%#begin-foreign void)
           (table-set! _tbl10909_ '%#declare void)
           _tbl10909_)))))
  (define gxc#apply-generate-meta
    (lambda (_stx10902_ . _args10904_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10902_ _args10904_))
       gxc#current-compile-methods
       (force gxc#&generate-meta))))
  (define gxc#&generate-meta-phi
    (make-promise
     (lambda ()
       (let ((_tbl10899_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl10899_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl10899_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set!
            _tbl10899_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl10899_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set!
            _tbl10899_
            '%#define-values
            gxc#generate-meta-phi-define-values%)
           (table-set! _tbl10899_ '%#lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl10899_ '%#case-lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl10899_ '%#let-values gxc#generate-meta-phi-expr)
           (table-set! _tbl10899_ '%#letrec-values gxc#generate-meta-phi-expr)
           (table-set! _tbl10899_ '%#letrec*-values gxc#generate-meta-phi-expr)
           (table-set! _tbl10899_ '%#quote gxc#generate-meta-phi-expr)
           (table-set! _tbl10899_ '%#quote-syntax gxc#generate-meta-phi-expr)
           (table-set! _tbl10899_ '%#call gxc#generate-meta-phi-expr)
           (table-set! _tbl10899_ '%#if gxc#generate-meta-phi-expr)
           (table-set! _tbl10899_ '%#ref gxc#generate-meta-phi-expr)
           (table-set! _tbl10899_ '%#set! gxc#generate-meta-phi-expr)
           (table-set!
            _tbl10899_
            '%#struct-instance?
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl10899_
            '%#struct-direct-instance?
            gxc#generate-meta-phi-expr)
           (table-set! _tbl10899_ '%#struct-ref gxc#generate-meta-phi-expr)
           (table-set! _tbl10899_ '%#struct-set! gxc#generate-meta-phi-expr)
           (table-set!
            _tbl10899_
            '%#struct-direct-ref
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl10899_
            '%#struct-direct-set!
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl10899_
            '%#struct-unchecked-ref
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl10899_
            '%#struct-unchecked-set!
            gxc#generate-meta-phi-expr)
           (table-set! _tbl10899_ '%#declare void)
           _tbl10899_)))))
  (define gxc#apply-generate-meta-phi
    (lambda (_stx10892_ . _args10894_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10892_ _args10894_))
       gxc#current-compile-methods
       (force gxc#&generate-meta-phi))))
  (define gxc#collect-begin%
    (lambda (_stx10849_ . _args10850_)
      (let* ((_g1085210862_
              (lambda (_g1085310859_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1085310859_)))
             (_g1085110889_
              (lambda (_g1085310865_)
                (if (gx#stx-pair? _g1085310865_)
                    (let ((_e1085510867_ (gx#stx-e _g1085310865_)))
                      (let ((_hd1085610870_ (##car _e1085510867_))
                            (_tl1085710872_ (##cdr _e1085510867_)))
                        ((lambda (_L10875_)
                           (for-each
                            (lambda (_g1088410886_)
                              (apply gxc#compile-e _g1088410886_ _args10850_))
                            (gx#stx-e _L10875_)))
                         _tl1085710872_)))
                    (_g1085210862_ _g1085310865_)))))
        (_g1085110889_ _stx10849_))))
  (define gxc#collect-begin-syntax%
    (lambda (_stx10805_ . _args10806_)
      (let* ((_g1080810818_
              (lambda (_g1080910815_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1080910815_)))
             (_g1080710846_
              (lambda (_g1080910821_)
                (if (gx#stx-pair? _g1080910821_)
                    (let ((_e1081110823_ (gx#stx-e _g1080910821_)))
                      (let ((_hd1081210826_ (##car _e1081110823_))
                            (_tl1081310828_ (##cdr _e1081110823_)))
                        ((lambda (_L10831_)
                           (call-with-parameters
                            (lambda ()
                              (for-each
                               (lambda (_g1084110843_)
                                 (apply gxc#compile-e
                                        _g1084110843_
                                        _args10806_))
                               (gx#stx-e _L10831_)))
                            gx#current-expander-phi
                            (fx+ (gx#current-expander-phi) '1)))
                         _tl1081310828_)))
                    (_g1080810818_ _g1080910821_)))))
        (_g1080710846_ _stx10805_))))
  (define gxc#collect-module%
    (lambda (_stx10747_ . _args10748_)
      (let* ((_g1075010764_
              (lambda (_g1075110761_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1075110761_)))
             (_g1074910802_
              (lambda (_g1075110767_)
                (if (gx#stx-pair? _g1075110767_)
                    (let ((_e1075410769_ (gx#stx-e _g1075110767_)))
                      (let ((_hd1075510772_ (##car _e1075410769_))
                            (_tl1075610774_ (##cdr _e1075410769_)))
                        (if (gx#stx-pair? _tl1075610774_)
                            (let ((_e1075710777_ (gx#stx-e _tl1075610774_)))
                              (let ((_hd1075810780_ (##car _e1075710777_))
                                    (_tl1075910782_ (##cdr _e1075710777_)))
                                ((lambda (_L10785_ _L10786_)
                                   (let ((_ctx10799_
                                          (gx#syntax-local-e__0 _L10786_)))
                                     (call-with-parameters
                                      (lambda ()
                                        (apply gxc#compile-e
                                               (##structure-ref
                                                _ctx10799_
                                                '11
                                                gx#module-context::t
                                                '#f)
                                               _args10748_))
                                      gx#current-expander-context
                                      _ctx10799_)))
                                 _tl1075910782_
                                 _hd1075810780_)))
                            (_g1075010764_ _g1075110767_))))
                    (_g1075010764_ _g1075110767_)))))
        (_g1074910802_ _stx10747_))))
  (define gxc#collect-body-lambda%
    (lambda (_stx10679_ . _args10680_)
      (let* ((_g1068210699_
              (lambda (_g1068310696_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1068310696_)))
             (_g1068110744_
              (lambda (_g1068310702_)
                (if (gx#stx-pair? _g1068310702_)
                    (let ((_e1068610704_ (gx#stx-e _g1068310702_)))
                      (let ((_hd1068710707_ (##car _e1068610704_))
                            (_tl1068810709_ (##cdr _e1068610704_)))
                        (if (gx#stx-pair? _tl1068810709_)
                            (let ((_e1068910712_ (gx#stx-e _tl1068810709_)))
                              (let ((_hd1069010715_ (##car _e1068910712_))
                                    (_tl1069110717_ (##cdr _e1068910712_)))
                                (if (gx#stx-pair? _tl1069110717_)
                                    (let ((_e1069210720_
                                           (gx#stx-e _tl1069110717_)))
                                      (let ((_hd1069310723_
                                             (##car _e1069210720_))
                                            (_tl1069410725_
                                             (##cdr _e1069210720_)))
                                        (if (gx#stx-null? _tl1069410725_)
                                            ((lambda (_L10728_ _L10729_)
                                               (apply gxc#compile-e
                                                      _L10728_
                                                      _args10680_))
                                             _hd1069310723_
                                             _hd1069010715_)
                                            (_g1068210699_ _g1068310702_))))
                                    (_g1068210699_ _g1068310702_))))
                            (_g1068210699_ _g1068310702_))))
                    (_g1068210699_ _g1068310702_)))))
        (_g1068110744_ _stx10679_))))
  (define gxc#collect-body-case-lambda%
    (lambda (_stx10561_ . _args10562_)
      (let* ((_g1056410592_
              (lambda (_g1056510589_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1056510589_)))
             (_g1056310676_
              (lambda (_g1056510595_)
                (if (gx#stx-pair? _g1056510595_)
                    (let ((_e1056810597_ (gx#stx-e _g1056510595_)))
                      (let ((_hd1056910600_ (##car _e1056810597_))
                            (_tl1057010602_ (##cdr _e1056810597_)))
                        (if (gx#stx-pair/null? _tl1057010602_)
                            (if (fx>= (gx#stx-length _tl1057010602_) '0)
                                (let ((_g11063_
                                       (gx#syntax-split-splice
                                        _tl1057010602_
                                        '0)))
                                  (begin
                                    (let ((_g11064_ (values-count _g11063_)))
                                      (if (not (fx= _g11064_ 2))
                                          (error "Context expects 2 values"
                                                 _g11064_)))
                                    (let ((_target1057110605_
                                           (values-ref _g11063_ 0))
                                          (_tl1057310607_
                                           (values-ref _g11063_ 1)))
                                      (if (gx#stx-null? _tl1057310607_)
                                          (letrec ((_loop1057410610_
                                                    (lambda (_hd1057210613_
                                                             _body1057810615_
                                                             _hd1057910617_)
                                                      (if (gx#stx-pair?
                                                           _hd1057210613_)
                                                          (let ((_e1057510620_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd1057210613_)))
                    (let ((_lp-hd1057610623_ (##car _e1057510620_))
                          (_lp-tl1057710625_ (##cdr _e1057510620_)))
                      (if (gx#stx-pair? _lp-hd1057610623_)
                          (let ((_e1058210628_ (gx#stx-e _lp-hd1057610623_)))
                            (let ((_hd1058310631_ (##car _e1058210628_))
                                  (_tl1058410633_ (##cdr _e1058210628_)))
                              (if (gx#stx-pair? _tl1058410633_)
                                  (let ((_e1058510636_
                                         (gx#stx-e _tl1058410633_)))
                                    (let ((_hd1058610639_
                                           (##car _e1058510636_))
                                          (_tl1058710641_
                                           (##cdr _e1058510636_)))
                                      (if (gx#stx-null? _tl1058710641_)
                                          (_loop1057410610_
                                           _lp-tl1057710625_
                                           (cons _hd1058610639_
                                                 _body1057810615_)
                                           (cons _hd1058310631_
                                                 _hd1057910617_))
                                          (_g1056410592_ _g1056510595_))))
                                  (_g1056410592_ _g1056510595_))))
                          (_g1056410592_ _g1056510595_))))
                  (let ((_body1058010644_ (reverse _body1057810615_))
                        (_hd1058110646_ (reverse _hd1057910617_)))
                    ((lambda (_L10649_ _L10650_)
                       (for-each
                        (lambda (_g1066410666_)
                          (apply gxc#compile-e _g1066410666_ _args10562_))
                        (begin
                          '#!void
                          (foldr1 (lambda (_g1066810671_ _g1066910673_)
                                    (cons _g1066810671_ _g1066910673_))
                                  '()
                                  _L10649_))))
                     _body1058010644_
                     _hd1058110646_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1057410610_
                                             _target1057110605_
                                             '()
                                             '()))
                                          (_g1056410592_ _g1056510595_)))))
                                (_g1056410592_ _g1056510595_))
                            (_g1056410592_ _g1056510595_))))
                    (_g1056410592_ _g1056510595_)))))
        (_g1056310676_ _stx10561_))))
  (define gxc#collect-body-let-values%
    (lambda (_stx10414_ . _args10415_)
      (let* ((_g1041710452_
              (lambda (_g1041810449_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1041810449_)))
             (_g1041610558_
              (lambda (_g1041810455_)
                (if (gx#stx-pair? _g1041810455_)
                    (let ((_e1042210457_ (gx#stx-e _g1041810455_)))
                      (let ((_hd1042310460_ (##car _e1042210457_))
                            (_tl1042410462_ (##cdr _e1042210457_)))
                        (if (gx#stx-pair? _tl1042410462_)
                            (let ((_e1042510465_ (gx#stx-e _tl1042410462_)))
                              (let ((_hd1042610468_ (##car _e1042510465_))
                                    (_tl1042710470_ (##cdr _e1042510465_)))
                                (if (gx#stx-pair/null? _hd1042610468_)
                                    (if (fx>= (gx#stx-length _hd1042610468_)
                                              '0)
                                        (let ((_g11065_
                                               (gx#syntax-split-splice
                                                _hd1042610468_
                                                '0)))
                                          (begin
                                            (let ((_g11066_
                                                   (values-count _g11065_)))
                                              (if (not (fx= _g11066_ 2))
                                                  (error "Context expects 2 values"
                                                         _g11066_)))
                                            (let ((_target1042810473_
                                                   (values-ref _g11065_ 0))
                                                  (_tl1043010475_
                                                   (values-ref _g11065_ 1)))
                                              (if (gx#stx-null? _tl1043010475_)
                                                  (letrec ((_loop1043110478_
                                                            (lambda (_hd1042910481_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr1043510483_
                             _hd1043610485_)
                      (if (gx#stx-pair? _hd1042910481_)
                          (let ((_e1043210488_ (gx#stx-e _hd1042910481_)))
                            (let ((_lp-hd1043310491_ (##car _e1043210488_))
                                  (_lp-tl1043410493_ (##cdr _e1043210488_)))
                              (if (gx#stx-pair? _lp-hd1043310491_)
                                  (let ((_e1043910496_
                                         (gx#stx-e _lp-hd1043310491_)))
                                    (let ((_hd1044010499_
                                           (##car _e1043910496_))
                                          (_tl1044110501_
                                           (##cdr _e1043910496_)))
                                      (if (gx#stx-pair? _tl1044110501_)
                                          (let ((_e1044210504_
                                                 (gx#stx-e _tl1044110501_)))
                                            (let ((_hd1044310507_
                                                   (##car _e1044210504_))
                                                  (_tl1044410509_
                                                   (##cdr _e1044210504_)))
                                              (if (gx#stx-null? _tl1044410509_)
                                                  (_loop1043110478_
                                                   _lp-tl1043410493_
                                                   (cons _hd1044310507_
                                                         _expr1043510483_)
                                                   (cons _hd1044010499_
                                                         _hd1043610485_))
                                                  (_g1041710452_
                                                   _g1041810455_))))
                                          (_g1041710452_ _g1041810455_))))
                                  (_g1041710452_ _g1041810455_))))
                          (let ((_expr1043710512_ (reverse _expr1043510483_))
                                (_hd1043810514_ (reverse _hd1043610485_)))
                            (if (gx#stx-pair? _tl1042710470_)
                                (let ((_e1044510517_
                                       (gx#stx-e _tl1042710470_)))
                                  (let ((_hd1044610520_ (##car _e1044510517_))
                                        (_tl1044710522_ (##cdr _e1044510517_)))
                                    (if (gx#stx-null? _tl1044710522_)
                                        ((lambda (_L10525_ _L10526_ _L10527_)
                                           (for-each
                                            (lambda (_g1054610548_)
                                              (apply gxc#compile-e
                                                     _g1054610548_
                                                     _args10415_))
                                            (begin
                                              '#!void
                                              (foldr1 (lambda (_g1055010553_
                                                               _g1055110555_)
                                                        (cons _g1055010553_
                                                              _g1055110555_))
                                                      (cons _L10525_ '())
                                                      _L10526_))))
                                         _hd1044610520_
                                         _expr1043710512_
                                         _hd1043810514_)
                                        (_g1041710452_ _g1041810455_))))
                                (_g1041710452_ _g1041810455_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1043110478_
                                                     _target1042810473_
                                                     '()
                                                     '()))
                                                  (_g1041710452_
                                                   _g1041810455_)))))
                                        (_g1041710452_ _g1041810455_))
                                    (_g1041710452_ _g1041810455_))))
                            (_g1041710452_ _g1041810455_))))
                    (_g1041710452_ _g1041810455_)))))
        (_g1041610558_ _stx10414_))))
  (define gxc#collect-body-setq%
    (lambda (_stx10346_ . _args10347_)
      (let* ((_g1034910366_
              (lambda (_g1035010363_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1035010363_)))
             (_g1034810411_
              (lambda (_g1035010369_)
                (if (gx#stx-pair? _g1035010369_)
                    (let ((_e1035310371_ (gx#stx-e _g1035010369_)))
                      (let ((_hd1035410374_ (##car _e1035310371_))
                            (_tl1035510376_ (##cdr _e1035310371_)))
                        (if (gx#stx-pair? _tl1035510376_)
                            (let ((_e1035610379_ (gx#stx-e _tl1035510376_)))
                              (let ((_hd1035710382_ (##car _e1035610379_))
                                    (_tl1035810384_ (##cdr _e1035610379_)))
                                (if (gx#stx-pair? _tl1035810384_)
                                    (let ((_e1035910387_
                                           (gx#stx-e _tl1035810384_)))
                                      (let ((_hd1036010390_
                                             (##car _e1035910387_))
                                            (_tl1036110392_
                                             (##cdr _e1035910387_)))
                                        (if (gx#stx-null? _tl1036110392_)
                                            ((lambda (_L10395_ _L10396_)
                                               (apply gxc#compile-e
                                                      _L10395_
                                                      _args10347_))
                                             _hd1036010390_
                                             _hd1035710382_)
                                            (_g1034910366_ _g1035010369_))))
                                    (_g1034910366_ _g1035010369_))))
                            (_g1034910366_ _g1035010369_))))
                    (_g1034910366_ _g1035010369_)))))
        (_g1034810411_ _stx10346_))))
  (define gxc#collect-operands
    (lambda (_stx10259_ . _args10260_)
      (let* ((_g1026210281_
              (lambda (_g1026310278_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1026310278_)))
             (_g1026110343_
              (lambda (_g1026310284_)
                (if (gx#stx-pair? _g1026310284_)
                    (let ((_e1026510286_ (gx#stx-e _g1026310284_)))
                      (let ((_hd1026610289_ (##car _e1026510286_))
                            (_tl1026710291_ (##cdr _e1026510286_)))
                        (if (gx#stx-pair/null? _tl1026710291_)
                            (if (fx>= (gx#stx-length _tl1026710291_) '0)
                                (let ((_g11067_
                                       (gx#syntax-split-splice
                                        _tl1026710291_
                                        '0)))
                                  (begin
                                    (let ((_g11068_ (values-count _g11067_)))
                                      (if (not (fx= _g11068_ 2))
                                          (error "Context expects 2 values"
                                                 _g11068_)))
                                    (let ((_target1026810294_
                                           (values-ref _g11067_ 0))
                                          (_tl1027010296_
                                           (values-ref _g11067_ 1)))
                                      (if (gx#stx-null? _tl1027010296_)
                                          (letrec ((_loop1027110299_
                                                    (lambda (_hd1026910302_
                                                             _rands1027510304_)
                                                      (if (gx#stx-pair?
                                                           _hd1026910302_)
                                                          (let ((_e1027210307_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd1026910302_)))
                    (let ((_lp-hd1027310310_ (##car _e1027210307_))
                          (_lp-tl1027410312_ (##cdr _e1027210307_)))
                      (_loop1027110299_
                       _lp-tl1027410312_
                       (cons _lp-hd1027310310_ _rands1027510304_))))
                  (let ((_rands1027610315_ (reverse _rands1027510304_)))
                    ((lambda (_L10318_)
                       (for-each
                        (lambda (_g1033110333_)
                          (apply gxc#compile-e _g1033110333_ _args10260_))
                        (begin
                          '#!void
                          (foldr1 (lambda (_g1033510338_ _g1033610340_)
                                    (cons _g1033510338_ _g1033610340_))
                                  '()
                                  _L10318_))))
                     _rands1027610315_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1027110299_
                                             _target1026810294_
                                             '()))
                                          (_g1026210281_ _g1026310284_)))))
                                (_g1026210281_ _g1026310284_))
                            (_g1026210281_ _g1026310284_))))
                    (_g1026210281_ _g1026310284_)))))
        (_g1026110343_ _stx10259_))))
  (define gxc#collect-bindings-define-values%
    (lambda (_stx10190_)
      (let* ((_g1019210209_
              (lambda (_g1019310206_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1019310206_)))
             (_g1019110256_
              (lambda (_g1019310212_)
                (if (gx#stx-pair? _g1019310212_)
                    (let ((_e1019610214_ (gx#stx-e _g1019310212_)))
                      (let ((_hd1019710217_ (##car _e1019610214_))
                            (_tl1019810219_ (##cdr _e1019610214_)))
                        (if (gx#stx-pair? _tl1019810219_)
                            (let ((_e1019910222_ (gx#stx-e _tl1019810219_)))
                              (let ((_hd1020010225_ (##car _e1019910222_))
                                    (_tl1020110227_ (##cdr _e1019910222_)))
                                (if (gx#stx-pair? _tl1020110227_)
                                    (let ((_e1020210230_
                                           (gx#stx-e _tl1020110227_)))
                                      (let ((_hd1020310233_
                                             (##car _e1020210230_))
                                            (_tl1020410235_
                                             (##cdr _e1020210230_)))
                                        (if (gx#stx-null? _tl1020410235_)
                                            ((lambda (_L10238_ _L10239_)
                                               (gx#stx-for-each1
                                                (lambda (_bind10254_)
                                                  (if (gx#identifier?
                                                       _bind10254_)
                                                      (gxc#add-module-binding!
                                                       _bind10254_
                                                       '#f)
                                                      '#!void))
                                                _L10239_))
                                             _hd1020310233_
                                             _hd1020010225_)
                                            (_g1019210209_ _g1019310212_))))
                                    (_g1019210209_ _g1019310212_))))
                            (_g1019210209_ _g1019310212_))))
                    (_g1019210209_ _g1019310212_)))))
        (_g1019110256_ _stx10190_))))
  (define gxc#collect-bindings-define-syntax%
    (lambda (_stx10123_)
      (let* ((_g1012510142_
              (lambda (_g1012610139_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1012610139_)))
             (_g1012410187_
              (lambda (_g1012610145_)
                (if (gx#stx-pair? _g1012610145_)
                    (let ((_e1012910147_ (gx#stx-e _g1012610145_)))
                      (let ((_hd1013010150_ (##car _e1012910147_))
                            (_tl1013110152_ (##cdr _e1012910147_)))
                        (if (gx#stx-pair? _tl1013110152_)
                            (let ((_e1013210155_ (gx#stx-e _tl1013110152_)))
                              (let ((_hd1013310158_ (##car _e1013210155_))
                                    (_tl1013410160_ (##cdr _e1013210155_)))
                                (if (gx#stx-pair? _tl1013410160_)
                                    (let ((_e1013510163_
                                           (gx#stx-e _tl1013410160_)))
                                      (let ((_hd1013610166_
                                             (##car _e1013510163_))
                                            (_tl1013710168_
                                             (##cdr _e1013510163_)))
                                        (if (gx#stx-null? _tl1013710168_)
                                            ((lambda (_L10171_ _L10172_)
                                               (gxc#add-module-binding!
                                                _L10172_
                                                '#t))
                                             _hd1013610166_
                                             _hd1013310158_)
                                            (_g1012510142_ _g1012610145_))))
                                    (_g1012510142_ _g1012610145_))))
                            (_g1012510142_ _g1012610145_))))
                    (_g1012510142_ _g1012610145_)))))
        (_g1012410187_ _stx10123_))))
  (define gxc#lift-modules-module%
    (lambda (_stx10065_ _modules10066_)
      (let* ((_g1006810082_
              (lambda (_g1006910079_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1006910079_)))
             (_g1006710120_
              (lambda (_g1006910085_)
                (if (gx#stx-pair? _g1006910085_)
                    (let ((_e1007210087_ (gx#stx-e _g1006910085_)))
                      (let ((_hd1007310090_ (##car _e1007210087_))
                            (_tl1007410092_ (##cdr _e1007210087_)))
                        (if (gx#stx-pair? _tl1007410092_)
                            (let ((_e1007510095_ (gx#stx-e _tl1007410092_)))
                              (let ((_hd1007610098_ (##car _e1007510095_))
                                    (_tl1007710100_ (##cdr _e1007510095_)))
                                ((lambda (_L10103_ _L10104_)
                                   (let ((_ctx10117_
                                          (gx#syntax-local-e__0 _L10104_)))
                                     (begin
                                       (set-box!
                                        _modules10066_
                                        (cons _ctx10117_
                                              (unbox _modules10066_)))
                                       (call-with-parameters
                                        (lambda ()
                                          (gxc#compile-e
                                           (##structure-ref
                                            _ctx10117_
                                            '11
                                            gx#module-context::t
                                            '#f)
                                           _modules10066_))
                                        gx#current-expander-context
                                        _ctx10117_))))
                                 _tl1007710100_
                                 _hd1007610098_)))
                            (_g1006810082_ _g1006910085_))))
                    (_g1006810082_ _g1006910085_)))))
        (_g1006710120_ _stx10065_))))
  (define gxc#add-module-binding!
    (lambda (_id10059_ _syntax?10060_)
      (let ((_eid10062_
             (##structure-ref
              (gx#resolve-identifier__0 _id10059_)
              '1
              gx#binding::t
              '#f))
            (_ht10063_
             (##structure-ref
              (gxc#current-compile-symbol-table)
              '2
              gxc#symbol-table::t
              '#f)))
        (if (interned-symbol? _eid10062_)
            '#!void
            (table-set!
             _ht10063_
             _eid10062_
             (gx#make-binding-id__1
              (gxc#generate-runtime-gensym-reference__0 _eid10062_)
              _syntax?10060_))))))
  (define gxc#generate-runtime-binding-id
    (lambda (_id10040_)
      (let ((_bind10042_ (gx#resolve-identifier__0 _id10040_)))
        (if _bind10042_
            (let ((_eid10044_
                   (##structure-ref _bind10042_ '1 gx#binding::t '#f))
                  (_ht10045_
                   (##structure-ref
                    (gxc#current-compile-symbol-table)
                    '2
                    gxc#symbol-table::t
                    '#f)))
              (if (interned-symbol? _eid10044_)
                  _eid10044_
                  (let ((_$e10047_ (table-ref _ht10045_ _eid10044_ '#f)))
                    (if _$e10047_
                        (values _$e10047_)
                        (if (##structure-instance-of?
                             _bind10042_
                             'gx#local-binding::t)
                            (let ((_gid10050_
                                   (gxc#generate-runtime-gensym-reference__0
                                    _eid10044_)))
                              (begin
                                (table-set! _ht10045_ _eid10044_ _gid10050_)
                                _gid10050_))
                            (if (##structure-instance-of?
                                 _bind10042_
                                 'gx#module-binding::t)
                                (let ((_gid10057_
                                       (let ((_$e10052_
                                              (##structure-ref
                                               (##structure-ref
                                                _bind10042_
                                                '4
                                                gx#module-binding::t
                                                '#f)
                                               '6
                                               gx#module-context::t
                                               '#f)))
                                         (if _$e10052_
                                             ((lambda (_ns10055_)
                                                (make-symbol
                                                 _ns10055_
                                                 '"#"
                                                 _eid10044_))
                                              _$e10052_)
                                             (gxc#generate-runtime-gensym-reference__0
                                              _eid10044_)))))
                                  (begin
                                    (table-set!
                                     _ht10045_
                                     _eid10044_
                                     _gid10057_)
                                    _gid10057_))
                                (gxc#raise-compile-error
                                 '"Cannot compile reference to uninterned binding"
                                 _id10040_
                                 _eid10044_
                                 _bind10042_)))))))
            (if (interned-symbol? (gx#stx-e _id10040_))
                (gx#stx-e _id10040_)
                (gxc#raise-compile-error
                 '"Cannot compile reference to uninterned identifier"
                 _id10040_))))))
  (define gxc#generate-runtime-binding-id*
    (lambda (_id10038_)
      (if (gx#identifier? _id10038_)
          (gxc#generate-runtime-binding-id _id10038_)
          (gxc#generate-runtime-temporary__0))))
  (begin
    (define gxc#generate-runtime-gensym-reference__opt-lambda10016
      (lambda (_sym10018_ _quote?10019_)
        (let* ((_ht10021_
                (##structure-ref
                 (gxc#current-compile-symbol-table)
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_$e10023_ (table-ref _ht10021_ _sym10018_ '#f)))
          (if _$e10023_
              (values _$e10023_)
              (let ((_g10026_
                     (if _quote?10019_
                         (make-symbol
                          '"__"
                          _sym10018_
                          '"__"
                          (gxc#current-compile-timestamp))
                         (make-symbol '"_" _sym10018_ '"_"))))
                (begin
                  (table-set! _ht10021_ _sym10018_ _g10026_)
                  _g10026_))))))
    (begin
      (define gxc#generate-runtime-gensym-reference__0
        (lambda (_sym10031_)
          (let ((_quote?10033_ '#f))
            (gxc#generate-runtime-gensym-reference__opt-lambda10016
             _sym10031_
             _quote?10033_))))
      (define gxc#generate-runtime-gensym-reference
        (lambda _g11070_
          (let ((_g11069_ (length _g11070_)))
            (cond ((fx= _g11069_ 1)
                   (apply gxc#generate-runtime-gensym-reference__0 _g11070_))
                  ((fx= _g11069_ 2)
                   (apply gxc#generate-runtime-gensym-reference__opt-lambda10016
                          _g11070_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-gensym-reference
                    _g11070_))))))))
  (define gxc#generate-runtime-identifier
    (lambda (_id10015_)
      (gxc#generate-runtime-identifier-key
       (gx#core-identifier-key _id10015_))))
  (define gxc#generate-runtime-identifier-key
    (lambda (_key9977_)
      (if (interned-symbol? _key9977_)
          _key9977_
          (if (uninterned-symbol? _key9977_)
              (gxc#generate-runtime-gensym-reference__0 _key9977_)
              (let* ((_key99789985_ _key9977_)
                     (_E99809989_
                      (lambda () (error '"No clause matching" _key99789985_)))
                     (_K998110003_
                      (lambda (_mark9992_ _eid9993_)
                        (let ((_$e9995_
                               (##structure-ref
                                _mark9992_
                                '1
                                gx#expander-mark::t
                                '#f)))
                          (if _$e9995_
                              ((lambda (_ht9998_)
                                 (let ((_$e10000_
                                        (table-ref _ht9998_ _eid9993_ '#f)))
                                   (if _$e10000_
                                       (values _$e10000_)
                                       (gxc#generate-runtime-identifier-key
                                        _eid9993_))))
                               _$e9995_)
                              (gxc#generate-runtime-identifier-key
                               _eid9993_))))))
                (if (##pair? _key99789985_)
                    (let ((_hd998210006_ (##car _key99789985_))
                          (_tl998310008_ (##cdr _key99789985_)))
                      (let* ((_eid10011_ _hd998210006_)
                             (_mark10013_ _tl998310008_))
                        (_K998110003_ _mark10013_ _eid10011_)))
                    (_E99809989_)))))))
  (begin
    (define gxc#generate-runtime-temporary__opt-lambda9962
      (lambda (_top9964_)
        (if _top9964_
            (let ((_ns9966_
                   (##structure-ref
                    (gx#current-expander-context)
                    '6
                    gx#module-context::t
                    '#f))
                  (_phi9967_ (gx#current-expander-phi)))
              (if (fxpositive? _phi9967_)
                  (make-symbol
                   _ns9966_
                   '"["
                   (number->string _phi9967_)
                   '"]#_"
                   (gensym)
                   '"_")
                  (make-symbol _ns9966_ '"#_" (gensym) '"_")))
            (make-symbol '"_" (gensym) '"_"))))
    (begin
      (define gxc#generate-runtime-temporary__0
        (lambda ()
          (let ((_top9973_ '#f))
            (gxc#generate-runtime-temporary__opt-lambda9962 _top9973_))))
      (define gxc#generate-runtime-temporary
        (lambda _g11072_
          (let ((_g11071_ (length _g11072_)))
            (cond ((fx= _g11071_ 0)
                   (apply gxc#generate-runtime-temporary__0 _g11072_))
                  ((fx= _g11071_ 1)
                   (apply gxc#generate-runtime-temporary__opt-lambda9962
                          _g11072_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-temporary
                    _g11072_))))))))
  (define gxc#generate-runtime-empty (lambda (_stx9961_) '(begin)))
  (define gxc#generate-runtime-begin%
    (lambda (_stx9881_)
      (let* ((_g98839893_
              (lambda (_g98849890_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g98849890_)))
             (_g98829958_
              (lambda (_g98849896_)
                (if (gx#stx-pair? _g98849896_)
                    (let ((_e98869898_ (gx#stx-e _g98849896_)))
                      (let ((_hd98879901_ (##car _e98869898_))
                            (_tl98889903_ (##cdr _e98869898_)))
                        ((lambda (_L9906_)
                           (let* ((_body9916_
                                   (gx#stx-map1 gxc#compile-e _L9906_))
                                  (_body9955_
                                   (filter (lambda (_stx9918_)
                                             (let* ((_g99219930_
                                                     (lambda (_g99229927_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g99229927_)))
                                                    (_g99209937_
                                                     (lambda (_g99229933_)
                                                       ((lambda () '#t))))
                                                    (_g99199952_
                                                     (lambda (_g99229940_)
                                                       (if (gx#stx-pair?
                                                            _g99229940_)
                                                           (let ((_e99239942_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _g99229940_)))
                     (let ((_hd99249945_ (##car _e99239942_))
                           (_tl99259947_ (##cdr _e99239942_)))
                       (if (gx#identifier? _hd99249945_)
                           (if (gx#stx-eq? 'begin _hd99249945_)
                               (if (gx#stx-null? _tl99259947_)
                                   ((lambda () '#f))
                                   (_g99209937_ _g99229940_))
                               (_g99209937_ _g99229940_))
                           (_g99209937_ _g99229940_))))
                   (_g99209937_ _g99229940_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g99199952_ _stx9918_)))
                                           _body9916_)))
                             (if (fx= (length _body9955_) '1)
                                 (car _body9955_)
                                 (cons 'begin _body9955_))))
                         _tl98889903_)))
                    (_g98839893_ _g98849896_)))))
        (_g98829958_ _stx9881_))))
  (define gxc#generate-runtime-begin-foreign%
    (lambda (_stx9843_)
      (let* ((_g98459855_
              (lambda (_g98469852_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g98469852_)))
             (_g98449878_
              (lambda (_g98469858_)
                (if (gx#stx-pair? _g98469858_)
                    (let ((_e98489860_ (gx#stx-e _g98469858_)))
                      (let ((_hd98499863_ (##car _e98489860_))
                            (_tl98509865_ (##cdr _e98489860_)))
                        ((lambda (_L9868_)
                           (cons 'begin (gx#syntax->datum _L9868_)))
                         _tl98509865_)))
                    (_g98459855_ _g98469858_)))))
        (_g98449878_ _stx9843_))))
  (define gxc#generate-runtime-declare%
    (lambda (_stx9805_)
      (let* ((_g98079817_
              (lambda (_g98089814_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g98089814_)))
             (_g98069840_
              (lambda (_g98089820_)
                (if (gx#stx-pair? _g98089820_)
                    (let ((_e98109822_ (gx#stx-e _g98089820_)))
                      (let ((_hd98119825_ (##car _e98109822_))
                            (_tl98129827_ (##cdr _e98109822_)))
                        ((lambda (_L9830_)
                           (cons 'declare (map gx#syntax->datum _L9830_)))
                         _tl98129827_)))
                    (_g98079817_ _g98089820_)))))
        (_g98069840_ _stx9805_))))
  (define gxc#generate-runtime-define-values%
    (lambda (_stx9561_)
      (let* ((_g95639580_
              (lambda (_g95649577_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g95649577_)))
             (_g95629802_
              (lambda (_g95649583_)
                (if (gx#stx-pair? _g95649583_)
                    (let ((_e95679585_ (gx#stx-e _g95649583_)))
                      (let ((_hd95689588_ (##car _e95679585_))
                            (_tl95699590_ (##cdr _e95679585_)))
                        (if (gx#stx-pair? _tl95699590_)
                            (let ((_e95709593_ (gx#stx-e _tl95699590_)))
                              (let ((_hd95719596_ (##car _e95709593_))
                                    (_tl95729598_ (##cdr _e95709593_)))
                                (if (gx#stx-pair? _tl95729598_)
                                    (let ((_e95739601_
                                           (gx#stx-e _tl95729598_)))
                                      (let ((_hd95749604_ (##car _e95739601_))
                                            (_tl95759606_ (##cdr _e95739601_)))
                                        (if (gx#stx-null? _tl95759606_)
                                            ((lambda (_L9609_ _L9610_)
                                               (let* ((_g96279640_
                                                       (lambda (_g96289637_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g96289637_)))
                                                      (_g96269754_
                                                       (lambda (_g96289643_)
                                                         ((lambda ()
                                                            (let* ((_tmp9647_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#generate-runtime-temporary__opt-lambda9962
                             '#t))
                           (_body9751_
                            (let _lp9649_ ((_rest9651_ _L9610_)
                                           (_k9652_ '0)
                                           (_r9653_ '()))
                              (let* ((_g96589674_
                                      (lambda (_g96599671_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g96599671_)))
                                     (_g96579681_
                                      (lambda (_g96599677_)
                                        ((lambda () (reverse _r9653_)))))
                                     (_g96569702_
                                      (lambda (_g96599684_)
                                        ((lambda (_L9686_)
                                           (if (gx#identifier? _L9686_)
                                               (foldl1 cons
                                                       (cons (cons 'define
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gxc#generate-runtime-binding-id _L9686_)
                                 (cons (cons 'values->list
                                             (cons _tmp9647_
                                                   (cons _k9652_ '())))
                                       '())))
                     '())
               _r9653_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g96579681_ _g96599684_)))
                                         _g96599684_)))
                                     (_g96559726_
                                      (lambda (_g96599705_)
                                        (if (gx#stx-pair? _g96599705_)
                                            (let ((_e96669707_
                                                   (gx#stx-e _g96599705_)))
                                              (let ((_hd96679710_
                                                     (##car _e96669707_))
                                                    (_tl96689712_
                                                     (##cdr _e96669707_)))
                                                ((lambda (_L9715_ _L9716_)
                                                   (_lp9649_
                                                    _L9715_
                                                    (fx+ _k9652_ '1)
                                                    (cons (cons 'define
                                                                (cons (gxc#generate-runtime-binding-id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L9716_)
                              (cons (cons 'values-ref
                                          (cons _tmp9647_ (cons _k9652_ '())))
                                    '())))
                  _r9653_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _tl96689712_
                                                 _hd96679710_)))
                                            (_g96569702_ _g96599705_))))
                                     (_g96549748_
                                      (lambda (_g96599729_)
                                        (if (gx#stx-pair? _g96599729_)
                                            (let ((_e96619731_
                                                   (gx#stx-e _g96599729_)))
                                              (let ((_hd96629734_
                                                     (##car _e96619731_))
                                                    (_tl96639736_
                                                     (##cdr _e96619731_)))
                                                (if (gx#stx-datum?
                                                     _hd96629734_)
                                                    (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd96629734_)
                        '#f)
                ((lambda (_L9739_) (_lp9649_ _L9739_ (fx+ _k9652_ '1) _r9653_))
                 _tl96639736_)
                (_g96559726_ _g96599729_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g96559726_
                                                     _g96599729_))))
                                            (_g96559726_ _g96599729_)))))
                                (_g96549748_ _rest9651_)))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _tmp9647_
                                              (cons (gxc#compile-e _L9609_)
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _tmp9647_
                                         _L9610_)
                                        _body9751_))))))))
              (_g96259784_
               (lambda (_g96289757_)
                 (if (gx#stx-pair? _g96289757_)
                     (let ((_e96339759_ (gx#stx-e _g96289757_)))
                       (let ((_hd96349762_ (##car _e96339759_))
                             (_tl96359764_ (##cdr _e96339759_)))
                         (if (gx#stx-null? _tl96359764_)
                             ((lambda (_L9767_)
                                (let ((_eid9776_
                                       (gxc#generate-runtime-binding-id
                                        _L9767_)))
                                  (begin
                                    (let ((_lambda-expr97779779_
                                           (gxc#apply-find-lambda-expression
                                            _L9609_)))
                                      (if _lambda-expr97779779_
                                          (let ((_lambda-expr9782_
                                                 _lambda-expr97779779_))
                                            (table-set!
                                             (gxc#current-compile-runtime-names)
                                             _lambda-expr9782_
                                             _eid9776_))
                                          '#f))
                                    (cons 'define
                                          (cons _eid9776_
                                                (cons (gxc#compile-e _L9609_)
                                                      '()))))))
                              _hd96349762_)
                             (_g96269754_ _g96289757_))))
                     (_g96269754_ _g96289757_))))
              (_g96249799_
               (lambda (_g96289787_)
                 (if (gx#stx-pair? _g96289787_)
                     (let ((_e96299789_ (gx#stx-e _g96289787_)))
                       (let ((_hd96309792_ (##car _e96299789_))
                             (_tl96319794_ (##cdr _e96299789_)))
                         (if (gx#stx-datum? _hd96309792_)
                             (if (equal? (gx#stx-e _hd96309792_) '#f)
                                 (if (gx#stx-null? _tl96319794_)
                                     ((lambda () (gxc#compile-e _L9609_)))
                                     (_g96259784_ _g96289787_))
                                 (_g96259784_ _g96289787_))
                             (_g96259784_ _g96289787_))))
                     (_g96259784_ _g96289787_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g96249799_ _L9610_)))
                                             _hd95749604_
                                             _hd95719596_)
                                            (_g95639580_ _g95649583_))))
                                    (_g95639580_ _g95649583_))))
                            (_g95639580_ _g95649583_))))
                    (_g95639580_ _g95649583_)))))
        (_g95629802_ _stx9561_))))
  (define gxc#generate-runtime-check-values
    (lambda (_vals9549_ _hd9550_)
      (let* ((_len9552_ (gx#stx-length _hd9550_))
             (_cmp9554_ (if (gx#stx-list? _hd9550_) 'fx= 'fx>=))
             (_errmsg9556_
              (string-append
               (if (gx#stx-list? _hd9550_)
                   '"Context expects "
                   '"Context expects at least ")
               (number->string _len9552_)
               '" values"))
             (_count9558_ (gxc#generate-runtime-temporary__0)))
        (if (if (not (gx#stx-list? _hd9550_)) (fx= _len9552_ '0) '#f)
            '#!void
            (cons 'let
                  (cons (cons (cons _count9558_
                                    (cons (cons 'values-count
                                                (cons _vals9549_ '()))
                                          '()))
                              '())
                        (cons (cons 'if
                                    (cons (cons 'not
                                                (cons (cons _cmp9554_
                                                            (cons _count9558_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _len9552_ '())))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons 'error
                                                      (cons _errmsg9556_
                                                            (cons _count9558_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))))))
  (define gxc#generate-runtime-lambda%
    (lambda (_stx9482_)
      (let* ((_g94849501_
              (lambda (_g94859498_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g94859498_)))
             (_g94839546_
              (lambda (_g94859504_)
                (if (gx#stx-pair? _g94859504_)
                    (let ((_e94889506_ (gx#stx-e _g94859504_)))
                      (let ((_hd94899509_ (##car _e94889506_))
                            (_tl94909511_ (##cdr _e94889506_)))
                        (if (gx#stx-pair? _tl94909511_)
                            (let ((_e94919514_ (gx#stx-e _tl94909511_)))
                              (let ((_hd94929517_ (##car _e94919514_))
                                    (_tl94939519_ (##cdr _e94919514_)))
                                (if (gx#stx-pair? _tl94939519_)
                                    (let ((_e94949522_
                                           (gx#stx-e _tl94939519_)))
                                      (let ((_hd94959525_ (##car _e94949522_))
                                            (_tl94969527_ (##cdr _e94949522_)))
                                        (if (gx#stx-null? _tl94969527_)
                                            ((lambda (_L9530_ _L9531_)
                                               (cons 'lambda
                                                     (cons (gxc#generate-runtime-lambda-head
                                                            _L9531_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L9530_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd94959525_
                                             _hd94929517_)
                                            (_g94849501_ _g94859504_))))
                                    (_g94849501_ _g94859504_))))
                            (_g94849501_ _g94859504_))))
                    (_g94849501_ _g94859504_)))))
        (_g94839546_ _stx9482_))))
  (define gxc#generate-runtime-lambda-head
    (lambda (_hd9480_)
      (gx#stx-map1 gxc#generate-runtime-binding-id* _hd9480_)))
  (define gxc#generate-runtime-case-lambda%
    (lambda (_stx8013_)
      (letrec ((_runtime-identifier=?8015_
                (lambda (_id-stx9471_ _sym9472_)
                  (let ((_bind94739475_
                         (gx#resolve-identifier__0 _id-stx9471_)))
                    (if _bind94739475_
                        (let ((_bind9478_ _bind94739475_))
                          (eq? (##structure-ref
                                _bind9478_
                                '1
                                gx#binding::t
                                '#f)
                               _sym9472_))
                        '#f))))
               (_dispatch-case?8016_
                (lambda (_hd8701_ _body8702_)
                  (let* ((_form8704_ (cons _hd8701_ (cons _body8702_ '())))
                         (_g87098866_
                          (lambda (_g87108863_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g87108863_)))
                         (_g87088873_ (lambda (_g87108869_) ((lambda () '#f))))
                         (_g87079014_
                          (lambda (_g87108876_)
                            (if (gx#stx-pair? _g87108876_)
                                (let ((_e88268878_ (gx#stx-e _g87108876_)))
                                  (let ((_hd88278881_ (##car _e88268878_))
                                        (_tl88288883_ (##cdr _e88268878_)))
                                    (if (gx#stx-pair? _tl88288883_)
                                        (let ((_e88298886_
                                               (gx#stx-e _tl88288883_)))
                                          (let ((_hd88308889_
                                                 (##car _e88298886_))
                                                (_tl88318891_
                                                 (##cdr _e88298886_)))
                                            (if (gx#stx-pair? _hd88308889_)
                                                (let ((_e88328894_
                                                       (gx#stx-e
                                                        _hd88308889_)))
                                                  (let ((_hd88338897_
                                                         (##car _e88328894_))
                                                        (_tl88348899_
                                                         (##cdr _e88328894_)))
                                                    (if (gx#identifier?
                                                         _hd88338897_)
                                                        (if (gx#stx-eq?
                                                             '%#call
                                                             _hd88338897_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl88348899_)
                        (let ((_e88358902_ (gx#stx-e _tl88348899_)))
                          (let ((_hd88368905_ (##car _e88358902_))
                                (_tl88378907_ (##cdr _e88358902_)))
                            (if (gx#stx-pair? _hd88368905_)
                                (let ((_e88388910_ (gx#stx-e _hd88368905_)))
                                  (let ((_hd88398913_ (##car _e88388910_))
                                        (_tl88408915_ (##cdr _e88388910_)))
                                    (if (gx#identifier? _hd88398913_)
                                        (if (gx#stx-eq? '%#ref _hd88398913_)
                                            (if (gx#stx-pair? _tl88408915_)
                                                (let ((_e88418918_
                                                       (gx#stx-e
                                                        _tl88408915_)))
                                                  (let ((_hd88428921_
                                                         (##car _e88418918_))
                                                        (_tl88438923_
                                                         (##cdr _e88418918_)))
                                                    (if (gx#stx-null?
                                                         _tl88438923_)
                                                        (if (gx#stx-pair?
                                                             _tl88378907_)
                                                            (let ((_e88448926_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl88378907_)))
                      (let ((_hd88458929_ (##car _e88448926_))
                            (_tl88468931_ (##cdr _e88448926_)))
                        (if (gx#stx-pair? _hd88458929_)
                            (let ((_e88478934_ (gx#stx-e _hd88458929_)))
                              (let ((_hd88488937_ (##car _e88478934_))
                                    (_tl88498939_ (##cdr _e88478934_)))
                                (if (gx#identifier? _hd88488937_)
                                    (if (gx#stx-eq? '%#ref _hd88488937_)
                                        (if (gx#stx-pair? _tl88498939_)
                                            (let ((_e88508942_
                                                   (gx#stx-e _tl88498939_)))
                                              (let ((_hd88518945_
                                                     (##car _e88508942_))
                                                    (_tl88528947_
                                                     (##cdr _e88508942_)))
                                                (if (gx#stx-null? _tl88528947_)
                                                    (if (gx#stx-pair?
                                                         _tl88468931_)
                                                        (let ((_e88538950_
                                                               (gx#stx-e
                                                                _tl88468931_)))
                                                          (let ((_hd88548953_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e88538950_))
                        (_tl88558955_ (##cdr _e88538950_)))
                    (if (gx#stx-pair? _hd88548953_)
                        (let ((_e88568958_ (gx#stx-e _hd88548953_)))
                          (let ((_hd88578961_ (##car _e88568958_))
                                (_tl88588963_ (##cdr _e88568958_)))
                            (if (gx#identifier? _hd88578961_)
                                (if (gx#stx-eq? '%#ref _hd88578961_)
                                    (if (gx#stx-pair? _tl88588963_)
                                        (let ((_e88598966_
                                               (gx#stx-e _tl88588963_)))
                                          (let ((_hd88608969_
                                                 (##car _e88598966_))
                                                (_tl88618971_
                                                 (##cdr _e88598966_)))
                                            (if (gx#stx-null? _tl88618971_)
                                                (if (gx#stx-null? _tl88558955_)
                                                    (if (gx#stx-null?
                                                         _tl88318891_)
                                                        ((lambda (_L8974_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L8975_
                          _L8976_
                          _L8977_)
                   (if (if (gx#identifier? _L8977_)
                           (if (_runtime-identifier=?8015_ _L8976_ 'apply)
                               (if (gx#free-identifier=? _L8977_ _L8974_)
                                   (not (gx#free-identifier=? _L8975_ _L8977_))
                                   '#f)
                               '#f)
                           '#f)
                       '#t
                       (_g87088873_ _g87108876_)))
                 _hd88608969_
                 _hd88518945_
                 _hd88428921_
                 _hd88278881_)
                (_g87088873_ _g87108876_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g87088873_ _g87108876_))
                                                (_g87088873_ _g87108876_))))
                                        (_g87088873_ _g87108876_))
                                    (_g87088873_ _g87108876_))
                                (_g87088873_ _g87108876_))))
                        (_g87088873_ _g87108876_))))
                (_g87088873_ _g87108876_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g87088873_
                                                     _g87108876_))))
                                            (_g87088873_ _g87108876_))
                                        (_g87088873_ _g87108876_))
                                    (_g87088873_ _g87108876_))))
                            (_g87088873_ _g87108876_))))
                    (_g87088873_ _g87108876_))
                (_g87088873_ _g87108876_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g87088873_ _g87108876_))
                                            (_g87088873_ _g87108876_))
                                        (_g87088873_ _g87108876_))))
                                (_g87088873_ _g87108876_))))
                        (_g87088873_ _g87108876_))
                    (_g87088873_ _g87108876_))
                (_g87088873_ _g87108876_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g87088873_ _g87108876_))))
                                        (_g87088873_ _g87108876_))))
                                (_g87088873_ _g87108876_))))
                         (_g87069274_
                          (lambda (_g87109017_)
                            (if (gx#stx-pair? _g87109017_)
                                (let ((_e87629019_ (gx#stx-e _g87109017_)))
                                  (let ((_hd87639022_ (##car _e87629019_))
                                        (_tl87649024_ (##cdr _e87629019_)))
                                    (if (gx#stx-pair/null? _hd87639022_)
                                        (if (fx>= (gx#stx-length _hd87639022_)
                                                  '0)
                                            (let ((_g11073_
                                                   (gx#syntax-split-splice
                                                    _hd87639022_
                                                    '0)))
                                              (begin
                                                (let ((_g11074_
                                                       (values-count
                                                        _g11073_)))
                                                  (if (not (fx= _g11074_ 2))
                                                      (error "Context expects 2 values"
                                                             _g11074_)))
                                                (let ((_target87659027_
                                                       (values-ref _g11073_ 0))
                                                      (_tl87679029_
                                                       (values-ref
                                                        _g11073_
                                                        1)))
                                                  (letrec ((_loop87689032_
                                                            (lambda (_hd87669035_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _arg87729037_)
                      (if (gx#stx-pair? _hd87669035_)
                          (let ((_e87699040_ (gx#stx-e _hd87669035_)))
                            (let ((_lp-hd87709043_ (##car _e87699040_))
                                  (_lp-tl87719045_ (##cdr _e87699040_)))
                              (_loop87689032_
                               _lp-tl87719045_
                               (cons _lp-hd87709043_ _arg87729037_))))
                          (let ((_arg87739048_ (reverse _arg87729037_)))
                            (if (gx#stx-pair? _tl87649024_)
                                (let ((_e87749051_ (gx#stx-e _tl87649024_)))
                                  (let ((_hd87759054_ (##car _e87749051_))
                                        (_tl87769056_ (##cdr _e87749051_)))
                                    (if (gx#stx-pair? _hd87759054_)
                                        (let ((_e87779059_
                                               (gx#stx-e _hd87759054_)))
                                          (let ((_hd87789062_
                                                 (##car _e87779059_))
                                                (_tl87799064_
                                                 (##cdr _e87779059_)))
                                            (if (gx#identifier? _hd87789062_)
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd87789062_)
                                                    (if (gx#stx-pair?
                                                         _tl87799064_)
                                                        (let ((_e87809067_
                                                               (gx#stx-e
                                                                _tl87799064_)))
                                                          (let ((_hd87819070_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e87809067_))
                        (_tl87829072_ (##cdr _e87809067_)))
                    (if (gx#stx-pair? _hd87819070_)
                        (let ((_e87839075_ (gx#stx-e _hd87819070_)))
                          (let ((_hd87849078_ (##car _e87839075_))
                                (_tl87859080_ (##cdr _e87839075_)))
                            (if (gx#identifier? _hd87849078_)
                                (if (gx#stx-eq? '%#ref _hd87849078_)
                                    (if (gx#stx-pair? _tl87859080_)
                                        (let ((_e87869083_
                                               (gx#stx-e _tl87859080_)))
                                          (let ((_hd87879086_
                                                 (##car _e87869083_))
                                                (_tl87889088_
                                                 (##cdr _e87869083_)))
                                            (if (gx#stx-null? _tl87889088_)
                                                (if (gx#stx-pair? _tl87829072_)
                                                    (let ((_e87899091_
                                                           (gx#stx-e
                                                            _tl87829072_)))
                                                      (let ((_hd87909094_
                                                             (##car _e87899091_))
                                                            (_tl87919096_
                                                             (##cdr _e87899091_)))
                                                        (if (gx#stx-pair?
                                                             _hd87909094_)
                                                            (let ((_e87929099_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd87909094_)))
                      (let ((_hd87939102_ (##car _e87929099_))
                            (_tl87949104_ (##cdr _e87929099_)))
                        (if (gx#identifier? _hd87939102_)
                            (if (gx#stx-eq? '%#ref _hd87939102_)
                                (if (gx#stx-pair? _tl87949104_)
                                    (let ((_e87959107_
                                           (gx#stx-e _tl87949104_)))
                                      (let ((_hd87969110_ (##car _e87959107_))
                                            (_tl87979112_ (##cdr _e87959107_)))
                                        (if (gx#stx-null? _tl87979112_)
                                            (if (gx#stx-pair/null?
                                                 _tl87919096_)
                                                (if (fx>= (gx#stx-length
                                                           _tl87919096_)
                                                          '1)
                                                    (let ((_g11075_
                                                           (gx#syntax-split-splice
                                                            _tl87919096_
                                                            '1)))
                                                      (begin
                                                        (let ((_g11076_
                                                               (values-count
                                                                _g11075_)))
                                                          (if (not (fx= _g11076_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                2))
                      (error "Context expects 2 values" _g11076_)))
                (let ((_target87989115_ (values-ref _g11075_ 0))
                      (_tl88009117_ (values-ref _g11075_ 1)))
                  (if (gx#stx-pair? _tl88009117_)
                      (let ((_e88079120_ (gx#stx-e _tl88009117_)))
                        (let ((_hd88089123_ (##car _e88079120_))
                              (_tl88099125_ (##cdr _e88079120_)))
                          (if (gx#stx-pair? _hd88089123_)
                              (let ((_e88109128_ (gx#stx-e _hd88089123_)))
                                (let ((_hd88119131_ (##car _e88109128_))
                                      (_tl88129133_ (##cdr _e88109128_)))
                                  (if (gx#identifier? _hd88119131_)
                                      (if (gx#stx-eq? '%#ref _hd88119131_)
                                          (if (gx#stx-pair? _tl88129133_)
                                              (let ((_e88139136_
                                                     (gx#stx-e _tl88129133_)))
                                                (let ((_hd88149139_
                                                       (##car _e88139136_))
                                                      (_tl88159141_
                                                       (##cdr _e88139136_)))
                                                  (if (gx#stx-null?
                                                       _tl88159141_)
                                                      (if (gx#stx-null?
                                                           _tl88099125_)
                                                          (letrec ((_loop88019144_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd87999147_ _xarg88059149_)
                              (if (gx#stx-pair? _hd87999147_)
                                  (let ((_e88029152_ (gx#stx-e _hd87999147_)))
                                    (let ((_lp-hd88039155_ (##car _e88029152_))
                                          (_lp-tl88049157_
                                           (##cdr _e88029152_)))
                                      (if (gx#stx-pair? _lp-hd88039155_)
                                          (let ((_e88169160_
                                                 (gx#stx-e _lp-hd88039155_)))
                                            (let ((_hd88179163_
                                                   (##car _e88169160_))
                                                  (_tl88189165_
                                                   (##cdr _e88169160_)))
                                              (if (gx#identifier? _hd88179163_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd88179163_)
                                                      (if (gx#stx-pair?
                                                           _tl88189165_)
                                                          (let ((_e88199168_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl88189165_)))
                    (let ((_hd88209171_ (##car _e88199168_))
                          (_tl88219173_ (##cdr _e88199168_)))
                      (if (gx#stx-null? _tl88219173_)
                          (_loop88019144_
                           _lp-tl88049157_
                           (cons _hd88209171_ _xarg88059149_))
                          (_g87079014_ _g87109017_))))
                  (_g87079014_ _g87109017_))
              (_g87079014_ _g87109017_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g87079014_ _g87109017_))))
                                          (_g87079014_ _g87109017_))))
                                  (let ((_xarg88069176_
                                         (reverse _xarg88059149_)))
                                    (if (gx#stx-null? _tl87769056_)
                                        ((lambda (_L9179_
                                                  _L9180_
                                                  _L9181_
                                                  _L9182_
                                                  _L9183_
                                                  _L9184_)
                                           (if (if (gx#identifier-list?
                                                    (begin
                                                      '#!void
                                                      (foldr1 (lambda (_g92279230_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g92289232_)
                        (cons _g92279230_ _g92289232_))
                      '()
                      _L9184_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#identifier? _L9183_)
                                                       (if (_runtime-identifier=?8015_
                                                            _L9182_
                                                            'apply)
                                                           (if (fx= (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '#!void
                                      (foldr1 (lambda (_g92349237_ _g92359239_)
                                                (cons _g92349237_ _g92359239_))
                                              '()
                                              _L9184_)))
                            (length (begin
                                      '#!void
                                      (foldr1 (lambda (_g92419244_ _g92429246_)
                                                (cons _g92419244_ _g92429246_))
                                              '()
                                              _L9180_))))
                       (if (andmap gx#free-identifier=?
                                   (begin
                                     '#!void
                                     (foldr1 (lambda (_g92489251_ _g92499253_)
                                               (cons _g92489251_ _g92499253_))
                                             '()
                                             _L9184_))
                                   (begin
                                     '#!void
                                     (foldr1 (lambda (_g92559258_ _g92569260_)
                                               (cons _g92559258_ _g92569260_))
                                             '()
                                             _L9180_)))
                           (if (gx#free-identifier=? _L9183_ _L9179_)
                               (not (find (lambda (_g92629264_)
                                            (gx#free-identifier=?
                                             _g92629264_
                                             _L9181_))
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g92669269_
                                                             _g92679271_)
                                                      (cons _g92669269_
                                                            _g92679271_))
                                                    (cons _L9183_ '())
                                                    _L9184_))))
                               '#f)
                           '#f)
                       '#f)
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#f)
                                               '#t
                                               (_g87079014_ _g87109017_)))
                                         _hd88149139_
                                         _xarg88069176_
                                         _hd87969110_
                                         _hd87879086_
                                         _tl87679029_
                                         _arg87739048_)
                                        (_g87079014_ _g87109017_)))))))
                    (_loop88019144_ _target87989115_ '()))
                  (_g87079014_ _g87109017_))
              (_g87079014_ _g87109017_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g87079014_ _g87109017_))
                                          (_g87079014_ _g87109017_))
                                      (_g87079014_ _g87109017_))))
                              (_g87079014_ _g87109017_))))
                      (_g87079014_ _g87109017_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g87079014_ _g87109017_))
                                                (_g87079014_ _g87109017_))
                                            (_g87079014_ _g87109017_))))
                                    (_g87079014_ _g87109017_))
                                (_g87079014_ _g87109017_))
                            (_g87079014_ _g87109017_))))
                    (_g87079014_ _g87109017_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g87079014_ _g87109017_))
                                                (_g87079014_ _g87109017_))))
                                        (_g87079014_ _g87109017_))
                                    (_g87079014_ _g87109017_))
                                (_g87079014_ _g87109017_))))
                        (_g87079014_ _g87109017_))))
                (_g87079014_ _g87109017_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g87079014_ _g87109017_))
                                                (_g87079014_ _g87109017_))))
                                        (_g87079014_ _g87109017_))))
                                (_g87079014_ _g87109017_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop87689032_
                                                     _target87659027_
                                                     '())))))
                                            (_g87079014_ _g87109017_))
                                        (_g87079014_ _g87109017_))))
                                (_g87079014_ _g87109017_))))
                         (_g87059468_
                          (lambda (_g87109277_)
                            (if (gx#stx-pair? _g87109277_)
                                (let ((_e87149279_ (gx#stx-e _g87109277_)))
                                  (let ((_hd87159282_ (##car _e87149279_))
                                        (_tl87169284_ (##cdr _e87149279_)))
                                    (if (gx#stx-pair/null? _hd87159282_)
                                        (if (fx>= (gx#stx-length _hd87159282_)
                                                  '0)
                                            (let ((_g11077_
                                                   (gx#syntax-split-splice
                                                    _hd87159282_
                                                    '0)))
                                              (begin
                                                (let ((_g11078_
                                                       (values-count
                                                        _g11077_)))
                                                  (if (not (fx= _g11078_ 2))
                                                      (error "Context expects 2 values"
                                                             _g11078_)))
                                                (let ((_target87179287_
                                                       (values-ref _g11077_ 0))
                                                      (_tl87199289_
                                                       (values-ref
                                                        _g11077_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl87199289_)
                                                      (letrec ((_loop87209292_
                                                                (lambda (_hd87189295_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _arg87249297_)
                          (if (gx#stx-pair? _hd87189295_)
                              (let ((_e87219300_ (gx#stx-e _hd87189295_)))
                                (let ((_lp-hd87229303_ (##car _e87219300_))
                                      (_lp-tl87239305_ (##cdr _e87219300_)))
                                  (_loop87209292_
                                   _lp-tl87239305_
                                   (cons _lp-hd87229303_ _arg87249297_))))
                              (let ((_arg87259308_ (reverse _arg87249297_)))
                                (if (gx#stx-pair? _tl87169284_)
                                    (let ((_e87269311_
                                           (gx#stx-e _tl87169284_)))
                                      (let ((_hd87279314_ (##car _e87269311_))
                                            (_tl87289316_ (##cdr _e87269311_)))
                                        (if (gx#stx-pair? _hd87279314_)
                                            (let ((_e87299319_
                                                   (gx#stx-e _hd87279314_)))
                                              (let ((_hd87309322_
                                                     (##car _e87299319_))
                                                    (_tl87319324_
                                                     (##cdr _e87299319_)))
                                                (if (gx#identifier?
                                                     _hd87309322_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd87309322_)
                                                        (if (gx#stx-pair?
                                                             _tl87319324_)
                                                            (let ((_e87329327_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl87319324_)))
                      (let ((_hd87339330_ (##car _e87329327_))
                            (_tl87349332_ (##cdr _e87329327_)))
                        (if (gx#stx-pair? _hd87339330_)
                            (let ((_e87359335_ (gx#stx-e _hd87339330_)))
                              (let ((_hd87369338_ (##car _e87359335_))
                                    (_tl87379340_ (##cdr _e87359335_)))
                                (if (gx#identifier? _hd87369338_)
                                    (if (gx#stx-eq? '%#ref _hd87369338_)
                                        (if (gx#stx-pair? _tl87379340_)
                                            (let ((_e87389343_
                                                   (gx#stx-e _tl87379340_)))
                                              (let ((_hd87399346_
                                                     (##car _e87389343_))
                                                    (_tl87409348_
                                                     (##cdr _e87389343_)))
                                                (if (gx#stx-null? _tl87409348_)
                                                    (if (gx#stx-pair/null?
                                                         _tl87349332_)
                                                        (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl87349332_)
                          '0)
                    (let ((_g11079_ (gx#syntax-split-splice _tl87349332_ '0)))
                      (begin
                        (let ((_g11080_ (values-count _g11079_)))
                          (if (not (fx= _g11080_ 2))
                              (error "Context expects 2 values" _g11080_)))
                        (let ((_target87419351_ (values-ref _g11079_ 0))
                              (_tl87439353_ (values-ref _g11079_ 1)))
                          (if (gx#stx-null? _tl87439353_)
                              (letrec ((_loop87449356_
                                        (lambda (_hd87429359_ _xarg87489361_)
                                          (if (gx#stx-pair? _hd87429359_)
                                              (let ((_e87459364_
                                                     (gx#stx-e _hd87429359_)))
                                                (let ((_lp-hd87469367_
                                                       (##car _e87459364_))
                                                      (_lp-tl87479369_
                                                       (##cdr _e87459364_)))
                                                  (if (gx#stx-pair?
                                                       _lp-hd87469367_)
                                                      (let ((_e87509372_
                                                             (gx#stx-e
                                                              _lp-hd87469367_)))
                                                        (let ((_hd87519375_
                                                               (##car _e87509372_))
                                                              (_tl87529377_
                                                               (##cdr _e87509372_)))
                                                          (if (gx#identifier?
                                                               _hd87519375_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#ref
                           _hd87519375_)
                          (if (gx#stx-pair? _tl87529377_)
                              (let ((_e87539380_ (gx#stx-e _tl87529377_)))
                                (let ((_hd87549383_ (##car _e87539380_))
                                      (_tl87559385_ (##cdr _e87539380_)))
                                  (if (gx#stx-null? _tl87559385_)
                                      (_loop87449356_
                                       _lp-tl87479369_
                                       (cons _hd87549383_ _xarg87489361_))
                                      (_g87069274_ _g87109277_))))
                              (_g87069274_ _g87109277_))
                          (_g87069274_ _g87109277_))
                      (_g87069274_ _g87109277_))))
              (_g87069274_ _g87109277_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_xarg87499388_
                                                     (reverse _xarg87489361_)))
                                                (if (gx#stx-null? _tl87289316_)
                                                    ((lambda (_L9391_
                                                              _L9392_
                                                              _L9393_)
                                                       (if (if (gx#identifier-list?
                                                                (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr1 (lambda (_g94219424_ _g94229426_)
                                    (cons _g94219424_ _g94229426_))
                                  '()
                                  _L9393_)))
                       (if (fx= (length (begin
                                          '#!void
                                          (foldr1 (lambda (_g94289431_
                                                           _g94299433_)
                                                    (cons _g94289431_
                                                          _g94299433_))
                                                  '()
                                                  _L9393_)))
                                (length (begin
                                          '#!void
                                          (foldr1 (lambda (_g94359438_
                                                           _g94369440_)
                                                    (cons _g94359438_
                                                          _g94369440_))
                                                  '()
                                                  _L9391_))))
                           (if (andmap gx#free-identifier=?
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g94429445_
                                                          _g94439447_)
                                                   (cons _g94429445_
                                                         _g94439447_))
                                                 '()
                                                 _L9393_))
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g94499452_
                                                          _g94509454_)
                                                   (cons _g94499452_
                                                         _g94509454_))
                                                 '()
                                                 _L9391_)))
                               (not (find (lambda (_g94569458_)
                                            (gx#free-identifier=?
                                             _g94569458_
                                             _L9392_))
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g94609463_
                                                             _g94619465_)
                                                      (cons _g94609463_
                                                            _g94619465_))
                                                    '()
                                                    _L9393_))))
                               '#f)
                           '#f)
                       '#f)
                   '#t
                   (_g87069274_ _g87109277_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _xarg87499388_
                                                     _hd87399346_
                                                     _arg87259308_)
                                                    (_g87069274_
                                                     _g87109277_)))))))
                                (_loop87449356_ _target87419351_ '()))
                              (_g87069274_ _g87109277_)))))
                    (_g87069274_ _g87109277_))
                (_g87069274_ _g87109277_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g87069274_
                                                     _g87109277_))))
                                            (_g87069274_ _g87109277_))
                                        (_g87069274_ _g87109277_))
                                    (_g87069274_ _g87109277_))))
                            (_g87069274_ _g87109277_))))
                    (_g87069274_ _g87109277_))
                (_g87069274_ _g87109277_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g87069274_
                                                     _g87109277_))))
                                            (_g87069274_ _g87109277_))))
                                    (_g87069274_ _g87109277_)))))))
                (_loop87209292_ _target87179287_ '()))
              (_g87069274_ _g87109277_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g87069274_ _g87109277_))
                                        (_g87069274_ _g87109277_))))
                                (_g87069274_ _g87109277_)))))
                    (_g87059468_ _form8704_))))
               (_dispatch-case-e8017_
                (lambda (_hd8165_ _body8166_)
                  (let* ((_form8168_ (cons _hd8165_ (cons _body8166_ '())))
                         (_g81728296_
                          (lambda (_g81738293_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g81738293_)))
                         (_g81718414_
                          (lambda (_g81738299_)
                            (if (gx#stx-pair? _g81738299_)
                                (let ((_e82628301_ (gx#stx-e _g81738299_)))
                                  (let ((_hd82638304_ (##car _e82628301_))
                                        (_tl82648306_ (##cdr _e82628301_)))
                                    (if (gx#stx-pair? _tl82648306_)
                                        (let ((_e82658309_
                                               (gx#stx-e _tl82648306_)))
                                          (let ((_hd82668312_
                                                 (##car _e82658309_))
                                                (_tl82678314_
                                                 (##cdr _e82658309_)))
                                            (if (gx#stx-pair? _hd82668312_)
                                                (let ((_e82688317_
                                                       (gx#stx-e
                                                        _hd82668312_)))
                                                  (let ((_hd82698320_
                                                         (##car _e82688317_))
                                                        (_tl82708322_
                                                         (##cdr _e82688317_)))
                                                    (if (gx#identifier?
                                                         _hd82698320_)
                                                        (if (gx#stx-eq?
                                                             '%#call
                                                             _hd82698320_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl82708322_)
                        (let ((_e82718325_ (gx#stx-e _tl82708322_)))
                          (let ((_hd82728328_ (##car _e82718325_))
                                (_tl82738330_ (##cdr _e82718325_)))
                            (if (gx#stx-pair? _hd82728328_)
                                (let ((_e82748333_ (gx#stx-e _hd82728328_)))
                                  (let ((_hd82758336_ (##car _e82748333_))
                                        (_tl82768338_ (##cdr _e82748333_)))
                                    (if (gx#identifier? _hd82758336_)
                                        (if (gx#stx-eq? '%#ref _hd82758336_)
                                            (if (gx#stx-pair? _tl82768338_)
                                                (let ((_e82778341_
                                                       (gx#stx-e
                                                        _tl82768338_)))
                                                  (let ((_hd82788344_
                                                         (##car _e82778341_))
                                                        (_tl82798346_
                                                         (##cdr _e82778341_)))
                                                    (if (gx#stx-null?
                                                         _tl82798346_)
                                                        (if (gx#stx-pair?
                                                             _tl82738330_)
                                                            (let ((_e82808349_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl82738330_)))
                      (let ((_hd82818352_ (##car _e82808349_))
                            (_tl82828354_ (##cdr _e82808349_)))
                        (if (gx#stx-pair? _hd82818352_)
                            (let ((_e82838357_ (gx#stx-e _hd82818352_)))
                              (let ((_hd82848360_ (##car _e82838357_))
                                    (_tl82858362_ (##cdr _e82838357_)))
                                (if (gx#identifier? _hd82848360_)
                                    (if (gx#stx-eq? '%#ref _hd82848360_)
                                        (if (gx#stx-pair? _tl82858362_)
                                            (let ((_e82868365_
                                                   (gx#stx-e _tl82858362_)))
                                              (let ((_hd82878368_
                                                     (##car _e82868365_))
                                                    (_tl82888370_
                                                     (##cdr _e82868365_)))
                                                (if (gx#stx-null? _tl82888370_)
                                                    (if (gx#stx-pair?
                                                         _tl82828354_)
                                                        (let ((_e82898373_
                                                               (gx#stx-e
                                                                _tl82828354_)))
                                                          (let ((_hd82908376_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e82898373_))
                        (_tl82918378_ (##cdr _e82898373_)))
                    (if (gx#stx-null? _tl82918378_)
                        (if (gx#stx-null? _tl82678314_)
                            ((lambda (_L8381_ _L8382_ _L8383_)
                               (gxc#compile-e
                                (cons (gx#datum->syntax__0 '#f '%#ref)
                                      (cons _L8381_ '()))))
                             _hd82878368_
                             _hd82788344_
                             _hd82638304_)
                            (_g81728296_ _g81738299_))
                        (_g81728296_ _g81738299_))))
                (_g81728296_ _g81738299_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g81728296_
                                                     _g81738299_))))
                                            (_g81728296_ _g81738299_))
                                        (_g81728296_ _g81738299_))
                                    (_g81728296_ _g81738299_))))
                            (_g81728296_ _g81738299_))))
                    (_g81728296_ _g81738299_))
                (_g81728296_ _g81738299_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g81728296_ _g81738299_))
                                            (_g81728296_ _g81738299_))
                                        (_g81728296_ _g81738299_))))
                                (_g81728296_ _g81738299_))))
                        (_g81728296_ _g81738299_))
                    (_g81728296_ _g81738299_))
                (_g81728296_ _g81738299_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g81728296_ _g81738299_))))
                                        (_g81728296_ _g81738299_))))
                                (_g81728296_ _g81738299_))))
                         (_g81708550_
                          (lambda (_g81738417_)
                            (if (gx#stx-pair? _g81738417_)
                                (let ((_e82238419_ (gx#stx-e _g81738417_)))
                                  (let ((_hd82248422_ (##car _e82238419_))
                                        (_tl82258424_ (##cdr _e82238419_)))
                                    (if (gx#stx-pair/null? _hd82248422_)
                                        (if (fx>= (gx#stx-length _hd82248422_)
                                                  '0)
                                            (let ((_g11081_
                                                   (gx#syntax-split-splice
                                                    _hd82248422_
                                                    '0)))
                                              (begin
                                                (let ((_g11082_
                                                       (values-count
                                                        _g11081_)))
                                                  (if (not (fx= _g11082_ 2))
                                                      (error "Context expects 2 values"
                                                             _g11082_)))
                                                (let ((_target82268427_
                                                       (values-ref _g11081_ 0))
                                                      (_tl82288429_
                                                       (values-ref
                                                        _g11081_
                                                        1)))
                                                  (letrec ((_loop82298432_
                                                            (lambda (_hd82278435_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _arg82338437_)
                      (if (gx#stx-pair? _hd82278435_)
                          (let ((_e82308440_ (gx#stx-e _hd82278435_)))
                            (let ((_lp-hd82318443_ (##car _e82308440_))
                                  (_lp-tl82328445_ (##cdr _e82308440_)))
                              (_loop82298432_
                               _lp-tl82328445_
                               (cons _lp-hd82318443_ _arg82338437_))))
                          (let ((_arg82348448_ (reverse _arg82338437_)))
                            (if (gx#stx-pair? _tl82258424_)
                                (let ((_e82358451_ (gx#stx-e _tl82258424_)))
                                  (let ((_hd82368454_ (##car _e82358451_))
                                        (_tl82378456_ (##cdr _e82358451_)))
                                    (if (gx#stx-pair? _hd82368454_)
                                        (let ((_e82388459_
                                               (gx#stx-e _hd82368454_)))
                                          (let ((_hd82398462_
                                                 (##car _e82388459_))
                                                (_tl82408464_
                                                 (##cdr _e82388459_)))
                                            (if (gx#identifier? _hd82398462_)
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd82398462_)
                                                    (if (gx#stx-pair?
                                                         _tl82408464_)
                                                        (let ((_e82418467_
                                                               (gx#stx-e
                                                                _tl82408464_)))
                                                          (let ((_hd82428470_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e82418467_))
                        (_tl82438472_ (##cdr _e82418467_)))
                    (if (gx#stx-pair? _hd82428470_)
                        (let ((_e82448475_ (gx#stx-e _hd82428470_)))
                          (let ((_hd82458478_ (##car _e82448475_))
                                (_tl82468480_ (##cdr _e82448475_)))
                            (if (gx#identifier? _hd82458478_)
                                (if (gx#stx-eq? '%#ref _hd82458478_)
                                    (if (gx#stx-pair? _tl82468480_)
                                        (let ((_e82478483_
                                               (gx#stx-e _tl82468480_)))
                                          (let ((_hd82488486_
                                                 (##car _e82478483_))
                                                (_tl82498488_
                                                 (##cdr _e82478483_)))
                                            (if (gx#stx-null? _tl82498488_)
                                                (if (gx#stx-pair? _tl82438472_)
                                                    (let ((_e82508491_
                                                           (gx#stx-e
                                                            _tl82438472_)))
                                                      (let ((_hd82518494_
                                                             (##car _e82508491_))
                                                            (_tl82528496_
                                                             (##cdr _e82508491_)))
                                                        (if (gx#stx-pair?
                                                             _hd82518494_)
                                                            (let ((_e82538499_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd82518494_)))
                      (let ((_hd82548502_ (##car _e82538499_))
                            (_tl82558504_ (##cdr _e82538499_)))
                        (if (gx#identifier? _hd82548502_)
                            (if (gx#stx-eq? '%#ref _hd82548502_)
                                (if (gx#stx-pair? _tl82558504_)
                                    (let ((_e82568507_
                                           (gx#stx-e _tl82558504_)))
                                      (let ((_hd82578510_ (##car _e82568507_))
                                            (_tl82588512_ (##cdr _e82568507_)))
                                        (if (gx#stx-null? _tl82588512_)
                                            (if (gx#stx-null? _tl82378456_)
                                                ((lambda (_L8515_
                                                          _L8516_
                                                          _L8517_
                                                          _L8518_)
                                                   (gxc#compile-e
                                                    (cons (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)
                                                          (cons _L8515_ '()))))
                                                 _hd82578510_
                                                 _hd82488486_
                                                 _tl82288429_
                                                 _arg82348448_)
                                                (_g81718414_ _g81738417_))
                                            (_g81718414_ _g81738417_))))
                                    (_g81718414_ _g81738417_))
                                (_g81718414_ _g81738417_))
                            (_g81718414_ _g81738417_))))
                    (_g81718414_ _g81738417_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g81718414_ _g81738417_))
                                                (_g81718414_ _g81738417_))))
                                        (_g81718414_ _g81738417_))
                                    (_g81718414_ _g81738417_))
                                (_g81718414_ _g81738417_))))
                        (_g81718414_ _g81738417_))))
                (_g81718414_ _g81738417_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g81718414_ _g81738417_))
                                                (_g81718414_ _g81738417_))))
                                        (_g81718414_ _g81738417_))))
                                (_g81718414_ _g81738417_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop82298432_
                                                     _target82268427_
                                                     '())))))
                                            (_g81718414_ _g81738417_))
                                        (_g81718414_ _g81738417_))))
                                (_g81718414_ _g81738417_))))
                         (_g81698698_
                          (lambda (_g81738553_)
                            (if (gx#stx-pair? _g81738553_)
                                (let ((_e81778555_ (gx#stx-e _g81738553_)))
                                  (let ((_hd81788558_ (##car _e81778555_))
                                        (_tl81798560_ (##cdr _e81778555_)))
                                    (if (gx#stx-pair/null? _hd81788558_)
                                        (if (fx>= (gx#stx-length _hd81788558_)
                                                  '0)
                                            (let ((_g11083_
                                                   (gx#syntax-split-splice
                                                    _hd81788558_
                                                    '0)))
                                              (begin
                                                (let ((_g11084_
                                                       (values-count
                                                        _g11083_)))
                                                  (if (not (fx= _g11084_ 2))
                                                      (error "Context expects 2 values"
                                                             _g11084_)))
                                                (let ((_target81808563_
                                                       (values-ref _g11083_ 0))
                                                      (_tl81828565_
                                                       (values-ref
                                                        _g11083_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl81828565_)
                                                      (letrec ((_loop81838568_
                                                                (lambda (_hd81818571_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _arg81878573_)
                          (if (gx#stx-pair? _hd81818571_)
                              (let ((_e81848576_ (gx#stx-e _hd81818571_)))
                                (let ((_lp-hd81858579_ (##car _e81848576_))
                                      (_lp-tl81868581_ (##cdr _e81848576_)))
                                  (_loop81838568_
                                   _lp-tl81868581_
                                   (cons _lp-hd81858579_ _arg81878573_))))
                              (let ((_arg81888584_ (reverse _arg81878573_)))
                                (if (gx#stx-pair? _tl81798560_)
                                    (let ((_e81898587_
                                           (gx#stx-e _tl81798560_)))
                                      (let ((_hd81908590_ (##car _e81898587_))
                                            (_tl81918592_ (##cdr _e81898587_)))
                                        (if (gx#stx-pair? _hd81908590_)
                                            (let ((_e81928595_
                                                   (gx#stx-e _hd81908590_)))
                                              (let ((_hd81938598_
                                                     (##car _e81928595_))
                                                    (_tl81948600_
                                                     (##cdr _e81928595_)))
                                                (if (gx#identifier?
                                                     _hd81938598_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd81938598_)
                                                        (if (gx#stx-pair?
                                                             _tl81948600_)
                                                            (let ((_e81958603_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl81948600_)))
                      (let ((_hd81968606_ (##car _e81958603_))
                            (_tl81978608_ (##cdr _e81958603_)))
                        (if (gx#stx-pair? _hd81968606_)
                            (let ((_e81988611_ (gx#stx-e _hd81968606_)))
                              (let ((_hd81998614_ (##car _e81988611_))
                                    (_tl82008616_ (##cdr _e81988611_)))
                                (if (gx#identifier? _hd81998614_)
                                    (if (gx#stx-eq? '%#ref _hd81998614_)
                                        (if (gx#stx-pair? _tl82008616_)
                                            (let ((_e82018619_
                                                   (gx#stx-e _tl82008616_)))
                                              (let ((_hd82028622_
                                                     (##car _e82018619_))
                                                    (_tl82038624_
                                                     (##cdr _e82018619_)))
                                                (if (gx#stx-null? _tl82038624_)
                                                    (if (gx#stx-pair/null?
                                                         _tl81978608_)
                                                        (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl81978608_)
                          '0)
                    (let ((_g11085_ (gx#syntax-split-splice _tl81978608_ '0)))
                      (begin
                        (let ((_g11086_ (values-count _g11085_)))
                          (if (not (fx= _g11086_ 2))
                              (error "Context expects 2 values" _g11086_)))
                        (let ((_target82048627_ (values-ref _g11085_ 0))
                              (_tl82068629_ (values-ref _g11085_ 1)))
                          (if (gx#stx-null? _tl82068629_)
                              (letrec ((_loop82078632_
                                        (lambda (_hd82058635_ _xarg82118637_)
                                          (if (gx#stx-pair? _hd82058635_)
                                              (let ((_e82088640_
                                                     (gx#stx-e _hd82058635_)))
                                                (let ((_lp-hd82098643_
                                                       (##car _e82088640_))
                                                      (_lp-tl82108645_
                                                       (##cdr _e82088640_)))
                                                  (if (gx#stx-pair?
                                                       _lp-hd82098643_)
                                                      (let ((_e82138648_
                                                             (gx#stx-e
                                                              _lp-hd82098643_)))
                                                        (let ((_hd82148651_
                                                               (##car _e82138648_))
                                                              (_tl82158653_
                                                               (##cdr _e82138648_)))
                                                          (if (gx#identifier?
                                                               _hd82148651_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#ref
                           _hd82148651_)
                          (if (gx#stx-pair? _tl82158653_)
                              (let ((_e82168656_ (gx#stx-e _tl82158653_)))
                                (let ((_hd82178659_ (##car _e82168656_))
                                      (_tl82188661_ (##cdr _e82168656_)))
                                  (if (gx#stx-null? _tl82188661_)
                                      (_loop82078632_
                                       _lp-tl82108645_
                                       (cons _hd82178659_ _xarg82118637_))
                                      (_g81708550_ _g81738553_))))
                              (_g81708550_ _g81738553_))
                          (_g81708550_ _g81738553_))
                      (_g81708550_ _g81738553_))))
              (_g81708550_ _g81738553_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_xarg82128664_
                                                     (reverse _xarg82118637_)))
                                                (if (gx#stx-null? _tl81918592_)
                                                    ((lambda (_L8667_
                                                              _L8668_
                                                              _L8669_)
                                                       (gxc#compile-e
                                                        (cons (gx#datum->syntax__0
                                                               '#f
                                                               '%#ref)
                                                              (cons _L8668_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _xarg82128664_
                                                     _hd82028622_
                                                     _arg81888584_)
                                                    (_g81708550_
                                                     _g81738553_)))))))
                                (_loop82078632_ _target82048627_ '()))
                              (_g81708550_ _g81738553_)))))
                    (_g81708550_ _g81738553_))
                (_g81708550_ _g81738553_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g81708550_
                                                     _g81738553_))))
                                            (_g81708550_ _g81738553_))
                                        (_g81708550_ _g81738553_))
                                    (_g81708550_ _g81738553_))))
                            (_g81708550_ _g81738553_))))
                    (_g81708550_ _g81738553_))
                (_g81708550_ _g81738553_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g81708550_
                                                     _g81738553_))))
                                            (_g81708550_ _g81738553_))))
                                    (_g81708550_ _g81738553_)))))))
                (_loop81838568_ _target81808563_ '()))
              (_g81708550_ _g81738553_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g81708550_ _g81738553_))
                                        (_g81708550_ _g81738553_))))
                                (_g81708550_ _g81738553_)))))
                    (_g81698698_ _form8168_))))
               (_generate18018_
                (lambda (_args8153_ _arglen8154_ _hd8155_ _body8156_)
                  (let* ((_len8158_ (gx#stx-length _hd8155_))
                         (_condition8160_
                          (if (gx#stx-list? _hd8155_)
                              (cons 'fx=
                                    (cons _arglen8154_ (cons _len8158_ '())))
                              (if (> _len8158_ '0)
                                  (cons 'fx>=
                                        (cons _arglen8154_
                                              (cons _len8158_ '())))
                                  '#t)))
                         (_dispatch8162_
                          (if (_dispatch-case?8016_ _hd8155_ _body8156_)
                              (_dispatch-case-e8017_ _hd8155_ _body8156_)
                              (cons 'lambda
                                    (cons (gxc#generate-runtime-lambda-head
                                           _hd8155_)
                                          (cons (gxc#compile-e _body8156_)
                                                '()))))))
                    (cons _condition8160_
                          (cons (cons 'apply
                                      (cons _dispatch8162_
                                            (cons _args8153_ '())))
                                '()))))))
        (let* ((_g80208048_
                (lambda (_g80218045_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g80218045_)))
               (_g80198150_
                (lambda (_g80218051_)
                  (if (gx#stx-pair? _g80218051_)
                      (let ((_e80248053_ (gx#stx-e _g80218051_)))
                        (let ((_hd80258056_ (##car _e80248053_))
                              (_tl80268058_ (##cdr _e80248053_)))
                          (if (gx#stx-pair/null? _tl80268058_)
                              (if (fx>= (gx#stx-length _tl80268058_) '0)
                                  (let ((_g11087_
                                         (gx#syntax-split-splice
                                          _tl80268058_
                                          '0)))
                                    (begin
                                      (let ((_g11088_ (values-count _g11087_)))
                                        (if (not (fx= _g11088_ 2))
                                            (error "Context expects 2 values"
                                                   _g11088_)))
                                      (let ((_target80278061_
                                             (values-ref _g11087_ 0))
                                            (_tl80298063_
                                             (values-ref _g11087_ 1)))
                                        (if (gx#stx-null? _tl80298063_)
                                            (letrec ((_loop80308066_
                                                      (lambda (_hd80288069_
                                                               _body80348071_
                                                               _hd80358073_)
                                                        (if (gx#stx-pair?
                                                             _hd80288069_)
                                                            (let ((_e80318076_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd80288069_)))
                      (let ((_lp-hd80328079_ (##car _e80318076_))
                            (_lp-tl80338081_ (##cdr _e80318076_)))
                        (if (gx#stx-pair? _lp-hd80328079_)
                            (let ((_e80388084_ (gx#stx-e _lp-hd80328079_)))
                              (let ((_hd80398087_ (##car _e80388084_))
                                    (_tl80408089_ (##cdr _e80388084_)))
                                (if (gx#stx-pair? _tl80408089_)
                                    (let ((_e80418092_
                                           (gx#stx-e _tl80408089_)))
                                      (let ((_hd80428095_ (##car _e80418092_))
                                            (_tl80438097_ (##cdr _e80418092_)))
                                        (if (gx#stx-null? _tl80438097_)
                                            (_loop80308066_
                                             _lp-tl80338081_
                                             (cons _hd80428095_ _body80348071_)
                                             (cons _hd80398087_ _hd80358073_))
                                            (_g80208048_ _g80218051_))))
                                    (_g80208048_ _g80218051_))))
                            (_g80208048_ _g80218051_))))
                    (let ((_body80368100_ (reverse _body80348071_))
                          (_hd80378102_ (reverse _hd80358073_)))
                      ((lambda (_L8105_ _L8106_)
                         (let ((_args8125_ (gxc#generate-runtime-temporary__0))
                               (_arglen8126_
                                (gxc#generate-runtime-temporary__0))
                               (_name8127_
                                (let ((_$e8122_
                                       (table-ref
                                        (gxc#current-compile-runtime-names)
                                        _stx8013_
                                        '#f)))
                                  (if _$e8122_
                                      _$e8122_
                                      ''case-lambda-dispatch))))
                           (cons 'lambda
                                 (cons _args8125_
                                       (cons (cons 'let
                                                   (cons (cons (cons _arglen8126_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons 'length (cons _args8125_ '())) '()))
                       '())
                 (cons (cons 'cond
                             (foldr1 cons
                                     (cons (cons 'else
                                                 (cons (cons '##raise-wrong-number-of-arguments-exception
                                                             (cons _name8127_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _args8125_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (map (lambda (_g81288131_ _g81298133_)
                                            (_generate18018_
                                             _args8125_
                                             _arglen8126_
                                             _g81288131_
                                             _g81298133_))
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g81358138_
                                                             _g81368140_)
                                                      (cons _g81358138_
                                                            _g81368140_))
                                                    '()
                                                    _L8106_))
                                          (begin
                                            '#!void
                                            (foldr1 (lambda (_g81428145_
                                                             _g81438147_)
                                                      (cons _g81428145_
                                                            _g81438147_))
                                                    '()
                                                    _L8105_)))))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))))
                       _body80368100_
                       _hd80378102_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop80308066_
                                               _target80278061_
                                               '()
                                               '()))
                                            (_g80208048_ _g80218051_)))))
                                  (_g80208048_ _g80218051_))
                              (_g80208048_ _g80218051_))))
                      (_g80208048_ _g80218051_)))))
          (_g80198150_ _stx8013_)))))
  (begin
    (define gxc#generate-runtime-let-values%__opt-lambda7076
      (lambda (_stx7078_ _compiled-body?7079_)
        (letrec ((_generate-simple7081_
                  (lambda (_hd8000_ _body8001_)
                    (_coalesce-let*7082_
                     (gxc#generate-runtime-simple-let
                      'let
                      _hd8000_
                      _body8001_
                      _compiled-body?7079_))))
                 (_coalesce-let*7082_
                  (lambda (_code7384_)
                    (let* ((_g73897524_
                            (lambda (_g73907521_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g73907521_)))
                           (_g73887531_
                            (lambda (_g73907527_) ((lambda () _code7384_))))
                           (_g73877701_
                            (lambda (_g73907534_)
                              (if (gx#stx-pair? _g73907534_)
                                  (let ((_e74787536_ (gx#stx-e _g73907534_)))
                                    (let ((_hd74797539_ (##car _e74787536_))
                                          (_tl74807541_ (##cdr _e74787536_)))
                                      (if (gx#identifier? _hd74797539_)
                                          (if (gx#stx-eq? 'let _hd74797539_)
                                              (if (gx#stx-pair? _tl74807541_)
                                                  (let ((_e74817544_
                                                         (gx#stx-e
                                                          _tl74807541_)))
                                                    (let ((_hd74827547_
                                                           (##car _e74817544_))
                                                          (_tl74837549_
                                                           (##cdr _e74817544_)))
                                                      (if (gx#stx-pair?
                                                           _hd74827547_)
                                                          (let ((_e74847552_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd74827547_)))
                    (let ((_hd74857555_ (##car _e74847552_))
                          (_tl74867557_ (##cdr _e74847552_)))
                      (if (gx#stx-pair? _hd74857555_)
                          (let ((_e74877560_ (gx#stx-e _hd74857555_)))
                            (let ((_hd74887563_ (##car _e74877560_))
                                  (_tl74897565_ (##cdr _e74877560_)))
                              (if (gx#stx-pair? _tl74897565_)
                                  (let ((_e74907568_ (gx#stx-e _tl74897565_)))
                                    (let ((_hd74917571_ (##car _e74907568_))
                                          (_tl74927573_ (##cdr _e74907568_)))
                                      (if (gx#stx-null? _tl74927573_)
                                          (if (gx#stx-null? _tl74867557_)
                                              (if (gx#stx-pair? _tl74837549_)
                                                  (let ((_e74937576_
                                                         (gx#stx-e
                                                          _tl74837549_)))
                                                    (let ((_hd74947579_
                                                           (##car _e74937576_))
                                                          (_tl74957581_
                                                           (##cdr _e74937576_)))
                                                      (if (gx#stx-pair?
                                                           _hd74947579_)
                                                          (let ((_e74967584_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd74947579_)))
                    (let ((_hd74977587_ (##car _e74967584_))
                          (_tl74987589_ (##cdr _e74967584_)))
                      (if (gx#identifier? _hd74977587_)
                          (if (gx#stx-eq? 'let* _hd74977587_)
                              (if (gx#stx-pair? _tl74987589_)
                                  (let ((_e74997592_ (gx#stx-e _tl74987589_)))
                                    (let ((_hd75007595_ (##car _e74997592_))
                                          (_tl75017597_ (##cdr _e74997592_)))
                                      (if (gx#stx-pair/null? _hd75007595_)
                                          (if (fx>= (gx#stx-length
                                                     _hd75007595_)
                                                    '0)
                                              (let ((_g11089_
                                                     (gx#syntax-split-splice
                                                      _hd75007595_
                                                      '0)))
                                                (begin
                                                  (let ((_g11090_
                                                         (values-count
                                                          _g11089_)))
                                                    (if (not (fx= _g11090_ 2))
                                                        (error "Context expects 2 values"
                                                               _g11090_)))
                                                  (let ((_target75027600_
                                                         (values-ref
                                                          _g11089_
                                                          0))
                                                        (_tl75047602_
                                                         (values-ref
                                                          _g11089_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl75047602_)
                                                        (letrec ((_loop75057605_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd75037608_ _bind75097610_)
                            (if (gx#stx-pair? _hd75037608_)
                                (let ((_e75067613_ (gx#stx-e _hd75037608_)))
                                  (let ((_lp-hd75077616_ (##car _e75067613_))
                                        (_lp-tl75087618_ (##cdr _e75067613_)))
                                    (_loop75057605_
                                     _lp-tl75087618_
                                     (cons _lp-hd75077616_ _bind75097610_))))
                                (let ((_bind75107621_
                                       (reverse _bind75097610_)))
                                  (if (gx#stx-pair/null? _tl75017597_)
                                      (if (fx>= (gx#stx-length _tl75017597_)
                                                '0)
                                          (let ((_g11091_
                                                 (gx#syntax-split-splice
                                                  _tl75017597_
                                                  '0)))
                                            (begin
                                              (let ((_g11092_
                                                     (values-count _g11091_)))
                                                (if (not (fx= _g11092_ 2))
                                                    (error "Context expects 2 values"
                                                           _g11092_)))
                                              (let ((_target75117624_
                                                     (values-ref _g11091_ 0))
                                                    (_tl75137626_
                                                     (values-ref _g11091_ 1)))
                                                (if (gx#stx-null? _tl75137626_)
                                                    (letrec ((_loop75147629_
                                                              (lambda (_hd75127632_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body75187634_)
                        (if (gx#stx-pair? _hd75127632_)
                            (let ((_e75157637_ (gx#stx-e _hd75127632_)))
                              (let ((_lp-hd75167640_ (##car _e75157637_))
                                    (_lp-tl75177642_ (##cdr _e75157637_)))
                                (_loop75147629_
                                 _lp-tl75177642_
                                 (cons _lp-hd75167640_ _body75187634_))))
                            (let ((_body75197645_ (reverse _body75187634_)))
                              (if (gx#stx-null? _tl74957581_)
                                  ((lambda (_L7648_ _L7649_ _L7650_ _L7651_)
                                     (cons 'let*
                                           (cons (cons (cons _L7651_
                                                             (cons _L7650_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (begin
                 '#!void
                 (foldr1 (lambda (_g76867689_ _g76877691_)
                           (cons _g76867689_ _g76877691_))
                         '()
                         _L7649_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g76937696_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g76947698_)
                     (cons _g76937696_ _g76947698_))
                   '()
                   _L7648_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _body75197645_
                                   _bind75107621_
                                   _hd74917571_
                                   _hd74887563_)
                                  (_g73887531_ _g73907534_)))))))
              (_loop75147629_ _target75117624_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g73887531_
                                                     _g73907534_)))))
                                          (_g73887531_ _g73907534_))
                                      (_g73887531_ _g73907534_)))))))
                  (_loop75057605_ _target75027600_ '()))
                (_g73887531_ _g73907534_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g73887531_ _g73907534_))
                                          (_g73887531_ _g73907534_))))
                                  (_g73887531_ _g73907534_))
                              (_g73887531_ _g73907534_))
                          (_g73887531_ _g73907534_))))
                  (_g73887531_ _g73907534_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g73887531_ _g73907534_))
                                              (_g73887531_ _g73907534_))
                                          (_g73887531_ _g73907534_))))
                                  (_g73887531_ _g73907534_))))
                          (_g73887531_ _g73907534_))))
                  (_g73887531_ _g73907534_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g73887531_ _g73907534_))
                                              (_g73887531_ _g73907534_))
                                          (_g73887531_ _g73907534_))))
                                  (_g73887531_ _g73907534_))))
                           (_g73867866_
                            (lambda (_g73907704_)
                              (if (gx#stx-pair? _g73907704_)
                                  (let ((_e74327706_ (gx#stx-e _g73907704_)))
                                    (let ((_hd74337709_ (##car _e74327706_))
                                          (_tl74347711_ (##cdr _e74327706_)))
                                      (if (gx#identifier? _hd74337709_)
                                          (if (gx#stx-eq? 'let _hd74337709_)
                                              (if (gx#stx-pair? _tl74347711_)
                                                  (let ((_e74357714_
                                                         (gx#stx-e
                                                          _tl74347711_)))
                                                    (let ((_hd74367717_
                                                           (##car _e74357714_))
                                                          (_tl74377719_
                                                           (##cdr _e74357714_)))
                                                      (if (gx#stx-pair?
                                                           _hd74367717_)
                                                          (let ((_e74387722_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd74367717_)))
                    (let ((_hd74397725_ (##car _e74387722_))
                          (_tl74407727_ (##cdr _e74387722_)))
                      (if (gx#stx-pair? _hd74397725_)
                          (let ((_e74417730_ (gx#stx-e _hd74397725_)))
                            (let ((_hd74427733_ (##car _e74417730_))
                                  (_tl74437735_ (##cdr _e74417730_)))
                              (if (gx#stx-pair? _tl74437735_)
                                  (let ((_e74447738_ (gx#stx-e _tl74437735_)))
                                    (let ((_hd74457741_ (##car _e74447738_))
                                          (_tl74467743_ (##cdr _e74447738_)))
                                      (if (gx#stx-null? _tl74467743_)
                                          (if (gx#stx-null? _tl74407727_)
                                              (if (gx#stx-pair? _tl74377719_)
                                                  (let ((_e74477746_
                                                         (gx#stx-e
                                                          _tl74377719_)))
                                                    (let ((_hd74487749_
                                                           (##car _e74477746_))
                                                          (_tl74497751_
                                                           (##cdr _e74477746_)))
                                                      (if (gx#stx-pair?
                                                           _hd74487749_)
                                                          (let ((_e74507754_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd74487749_)))
                    (let ((_hd74517757_ (##car _e74507754_))
                          (_tl74527759_ (##cdr _e74507754_)))
                      (if (gx#identifier? _hd74517757_)
                          (if (gx#stx-eq? 'let _hd74517757_)
                              (if (gx#stx-pair? _tl74527759_)
                                  (let ((_e74537762_ (gx#stx-e _tl74527759_)))
                                    (let ((_hd74547765_ (##car _e74537762_))
                                          (_tl74557767_ (##cdr _e74537762_)))
                                      (if (gx#stx-pair? _hd74547765_)
                                          (let ((_e74567770_
                                                 (gx#stx-e _hd74547765_)))
                                            (let ((_hd74577773_
                                                   (##car _e74567770_))
                                                  (_tl74587775_
                                                   (##cdr _e74567770_)))
                                              (if (gx#stx-pair? _hd74577773_)
                                                  (let ((_e74597778_
                                                         (gx#stx-e
                                                          _hd74577773_)))
                                                    (let ((_hd74607781_
                                                           (##car _e74597778_))
                                                          (_tl74617783_
                                                           (##cdr _e74597778_)))
                                                      (if (gx#stx-pair?
                                                           _tl74617783_)
                                                          (let ((_e74627786_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl74617783_)))
                    (let ((_hd74637789_ (##car _e74627786_))
                          (_tl74647791_ (##cdr _e74627786_)))
                      (if (gx#stx-null? _tl74647791_)
                          (if (gx#stx-null? _tl74587775_)
                              (if (gx#stx-pair/null? _tl74557767_)
                                  (if (fx>= (gx#stx-length _tl74557767_) '0)
                                      (let ((_g11093_
                                             (gx#syntax-split-splice
                                              _tl74557767_
                                              '0)))
                                        (begin
                                          (let ((_g11094_
                                                 (values-count _g11093_)))
                                            (if (not (fx= _g11094_ 2))
                                                (error "Context expects 2 values"
                                                       _g11094_)))
                                          (let ((_target74657794_
                                                 (values-ref _g11093_ 0))
                                                (_tl74677796_
                                                 (values-ref _g11093_ 1)))
                                            (if (gx#stx-null? _tl74677796_)
                                                (letrec ((_loop74687799_
                                                          (lambda (_hd74667802_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body74727804_)
                    (if (gx#stx-pair? _hd74667802_)
                        (let ((_e74697807_ (gx#stx-e _hd74667802_)))
                          (let ((_lp-hd74707810_ (##car _e74697807_))
                                (_lp-tl74717812_ (##cdr _e74697807_)))
                            (_loop74687799_
                             _lp-tl74717812_
                             (cons _lp-hd74707810_ _body74727804_))))
                        (let ((_body74737815_ (reverse _body74727804_)))
                          (if (gx#stx-null? _tl74497751_)
                              ((lambda (_L7818_
                                        _L7819_
                                        _L7820_
                                        _L7821_
                                        _L7822_)
                                 (cons 'let*
                                       (cons (cons (cons _L7822_
                                                         (cons _L7821_ '()))
                                                   (cons (cons _L7820_
                                                               (cons _L7819_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (begin
                                               '#!void
                                               (foldr1 (lambda (_g78587861_
                                                                _g78597863_)
                                                         (cons _g78587861_
                                                               _g78597863_))
                                                       '()
                                                       _L7818_)))))
                               _body74737815_
                               _hd74637789_
                               _hd74607781_
                               _hd74457741_
                               _hd74427733_)
                              (_g73877701_ _g73907704_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop74687799_
                                                   _target74657794_
                                                   '()))
                                                (_g73877701_ _g73907704_)))))
                                      (_g73877701_ _g73907704_))
                                  (_g73877701_ _g73907704_))
                              (_g73877701_ _g73907704_))
                          (_g73877701_ _g73907704_))))
                  (_g73877701_ _g73907704_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g73877701_ _g73907704_))))
                                          (_g73877701_ _g73907704_))))
                                  (_g73877701_ _g73907704_))
                              (_g73877701_ _g73907704_))
                          (_g73877701_ _g73907704_))))
                  (_g73877701_ _g73907704_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g73877701_ _g73907704_))
                                              (_g73877701_ _g73907704_))
                                          (_g73877701_ _g73907704_))))
                                  (_g73877701_ _g73907704_))))
                          (_g73877701_ _g73907704_))))
                  (_g73877701_ _g73907704_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g73877701_ _g73907704_))
                                              (_g73877701_ _g73907704_))
                                          (_g73877701_ _g73907704_))))
                                  (_g73877701_ _g73907704_))))
                           (_g73857997_
                            (lambda (_g73907869_)
                              (if (gx#stx-pair? _g73907869_)
                                  (let ((_e73947871_ (gx#stx-e _g73907869_)))
                                    (let ((_hd73957874_ (##car _e73947871_))
                                          (_tl73967876_ (##cdr _e73947871_)))
                                      (if (gx#identifier? _hd73957874_)
                                          (if (gx#stx-eq? 'let _hd73957874_)
                                              (if (gx#stx-pair? _tl73967876_)
                                                  (let ((_e73977879_
                                                         (gx#stx-e
                                                          _tl73967876_)))
                                                    (let ((_hd73987882_
                                                           (##car _e73977879_))
                                                          (_tl73997884_
                                                           (##cdr _e73977879_)))
                                                      (if (gx#stx-pair?
                                                           _hd73987882_)
                                                          (let ((_e74007887_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd73987882_)))
                    (let ((_hd74017890_ (##car _e74007887_))
                          (_tl74027892_ (##cdr _e74007887_)))
                      (if (gx#stx-pair? _hd74017890_)
                          (let ((_e74037895_ (gx#stx-e _hd74017890_)))
                            (let ((_hd74047898_ (##car _e74037895_))
                                  (_tl74057900_ (##cdr _e74037895_)))
                              (if (gx#stx-pair? _tl74057900_)
                                  (let ((_e74067903_ (gx#stx-e _tl74057900_)))
                                    (let ((_hd74077906_ (##car _e74067903_))
                                          (_tl74087908_ (##cdr _e74067903_)))
                                      (if (gx#stx-null? _tl74087908_)
                                          (if (gx#stx-null? _tl74027892_)
                                              (if (gx#stx-pair? _tl73997884_)
                                                  (let ((_e74097911_
                                                         (gx#stx-e
                                                          _tl73997884_)))
                                                    (let ((_hd74107914_
                                                           (##car _e74097911_))
                                                          (_tl74117916_
                                                           (##cdr _e74097911_)))
                                                      (if (gx#stx-pair?
                                                           _hd74107914_)
                                                          (let ((_e74127919_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd74107914_)))
                    (let ((_hd74137922_ (##car _e74127919_))
                          (_tl74147924_ (##cdr _e74127919_)))
                      (if (gx#identifier? _hd74137922_)
                          (if (gx#stx-eq? 'let _hd74137922_)
                              (if (gx#stx-pair? _tl74147924_)
                                  (let ((_e74157927_ (gx#stx-e _tl74147924_)))
                                    (let ((_hd74167930_ (##car _e74157927_))
                                          (_tl74177932_ (##cdr _e74157927_)))
                                      (if (gx#stx-null? _hd74167930_)
                                          (if (gx#stx-pair/null? _tl74177932_)
                                              (if (fx>= (gx#stx-length
                                                         _tl74177932_)
                                                        '0)
                                                  (let ((_g11095_
                                                         (gx#syntax-split-splice
                                                          _tl74177932_
                                                          '0)))
                                                    (begin
                                                      (let ((_g11096_
                                                             (values-count
                                                              _g11095_)))
                                                        (if (not (fx= _g11096_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g11096_)))
              (let ((_target74187935_ (values-ref _g11095_ 0))
                    (_tl74207937_ (values-ref _g11095_ 1)))
                (if (gx#stx-null? _tl74207937_)
                    (letrec ((_loop74217940_
                              (lambda (_hd74197943_ _body74257945_)
                                (if (gx#stx-pair? _hd74197943_)
                                    (let ((_e74227948_
                                           (gx#stx-e _hd74197943_)))
                                      (let ((_lp-hd74237951_
                                             (##car _e74227948_))
                                            (_lp-tl74247953_
                                             (##cdr _e74227948_)))
                                        (_loop74217940_
                                         _lp-tl74247953_
                                         (cons _lp-hd74237951_
                                               _body74257945_))))
                                    (let ((_body74267956_
                                           (reverse _body74257945_)))
                                      (if (gx#stx-null? _tl74117916_)
                                          ((lambda (_L7959_ _L7960_ _L7961_)
                                             (cons 'let
                                                   (cons (cons (cons _L7961_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L7960_ '()))
                       '())
                 (begin
                   '#!void
                   (foldr1 (lambda (_g79897992_ _g79907994_)
                             (cons _g79897992_ _g79907994_))
                           '()
                           _L7959_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _body74267956_
                                           _hd74077906_
                                           _hd74047898_)
                                          (_g73867866_ _g73907869_)))))))
                      (_loop74217940_ _target74187935_ '()))
                    (_g73867866_ _g73907869_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g73867866_ _g73907869_))
                                              (_g73867866_ _g73907869_))
                                          (_g73867866_ _g73907869_))))
                                  (_g73867866_ _g73907869_))
                              (_g73867866_ _g73907869_))
                          (_g73867866_ _g73907869_))))
                  (_g73867866_ _g73907869_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g73867866_ _g73907869_))
                                              (_g73867866_ _g73907869_))
                                          (_g73867866_ _g73907869_))))
                                  (_g73867866_ _g73907869_))))
                          (_g73867866_ _g73907869_))))
                  (_g73867866_ _g73907869_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g73867866_ _g73907869_))
                                              (_g73867866_ _g73907869_))
                                          (_g73867866_ _g73907869_))))
                                  (_g73867866_ _g73907869_)))))
                      (_g73857997_ _code7384_))))
                 (_generate-values7083_
                  (lambda (_hd7197_ _body7198_)
                    (let _lp7200_ ((_rest7202_ _hd7197_)
                                   (_bind7203_ '())
                                   (_check7204_ '())
                                   (_post7205_ '()))
                      (let* ((_g72087219_
                              (lambda (_g72097216_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g72097216_)))
                             (_g72077233_
                              (lambda (_g72097222_)
                                ((lambda ()
                                   (let* ((_body7226_
                                           (if _compiled-body?7079_
                                               _body7198_
                                               (gxc#compile-e _body7198_)))
                                          (_body7228_
                                           (_generate-values-post7084_
                                            _post7205_
                                            _body7226_))
                                          (_body7230_
                                           (_generate-values-check7085_
                                            _check7204_
                                            _body7228_)))
                                     (cons 'let
                                           (cons (reverse _bind7203_)
                                                 (cons _body7230_ '()))))))))
                             (_g72067381_
                              (lambda (_g72097236_)
                                (if (gx#stx-pair? _g72097236_)
                                    (let ((_e72127238_ (gx#stx-e _g72097236_)))
                                      (let ((_hd72137241_ (##car _e72127238_))
                                            (_tl72147243_ (##cdr _e72127238_)))
                                        ((lambda (_L7246_ _L7247_)
                                           (let* ((_g72627287_
                                                   (lambda (_g72637284_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g72637284_)))
                                                  (_g72617331_
                                                   (lambda (_g72637290_)
                                                     (if (gx#stx-pair?
                                                          _g72637290_)
                                                         (let ((_e72777292_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g72637290_)))
                   (let ((_hd72787295_ (##car _e72777292_))
                         (_tl72797297_ (##cdr _e72777292_)))
                     (if (gx#stx-pair? _tl72797297_)
                         (let ((_e72807300_ (gx#stx-e _tl72797297_)))
                           (let ((_hd72817303_ (##car _e72807300_))
                                 (_tl72827305_ (##cdr _e72807300_)))
                             (if (gx#stx-null? _tl72827305_)
                                 ((lambda (_L7308_ _L7309_)
                                    (let* ((_vals7322_
                                            (gxc#generate-runtime-temporary__0))
                                           (_expr7324_ (gxc#compile-e _L7308_))
                                           (_check-values7326_
                                            (gxc#generate-runtime-check-values
                                             _vals7322_
                                             _L7309_))
                                           (_refs7328_
                                            (gxc#generate-runtime-let-values-bind
                                             _vals7322_
                                             _L7309_)))
                                      (_lp7200_
                                       _L7246_
                                       (cons (cons _vals7322_
                                                   (cons _expr7324_ '()))
                                             _bind7203_)
                                       (cons _check-values7326_ _check7204_)
                                       (cons _refs7328_ _post7205_))))
                                  _hd72817303_
                                  _hd72787295_)
                                 (_g72627287_ _g72637290_))))
                         (_g72627287_ _g72637290_))))
                 (_g72627287_ _g72637290_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g72607378_
                                                   (lambda (_g72637334_)
                                                     (if (gx#stx-pair?
                                                          _g72637334_)
                                                         (let ((_e72667336_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g72637334_)))
                   (let ((_hd72677339_ (##car _e72667336_))
                         (_tl72687341_ (##cdr _e72667336_)))
                     (if (gx#stx-pair? _hd72677339_)
                         (let ((_e72697344_ (gx#stx-e _hd72677339_)))
                           (let ((_hd72707347_ (##car _e72697344_))
                                 (_tl72717349_ (##cdr _e72697344_)))
                             (if (gx#stx-null? _tl72717349_)
                                 (if (gx#stx-pair? _tl72687341_)
                                     (let ((_e72727352_
                                            (gx#stx-e _tl72687341_)))
                                       (let ((_hd72737355_ (##car _e72727352_))
                                             (_tl72747357_
                                              (##cdr _e72727352_)))
                                         (if (gx#stx-null? _tl72747357_)
                                             ((lambda (_L7360_ _L7361_)
                                                (let ((_eid7375_
                                                       (gxc#generate-runtime-binding-id*
                                                        _L7361_))
                                                      (_expr7376_
                                                       (gxc#compile-e
                                                        _L7360_)))
                                                  (_lp7200_
                                                   _L7246_
                                                   (cons (cons _eid7375_
                                                               (cons _expr7376_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 _bind7203_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _check7204_
                                                   _post7205_)))
                                              _hd72737355_
                                              _hd72707347_)
                                             (_g72617331_ _g72637334_))))
                                     (_g72617331_ _g72637334_))
                                 (_g72617331_ _g72637334_))))
                         (_g72617331_ _g72637334_))))
                 (_g72617331_ _g72637334_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g72607378_ _L7247_)))
                                         _tl72147243_
                                         _hd72137241_)))
                                    (_g72077233_ _g72097236_)))))
                        (_g72067381_ _rest7202_)))))
                 (_generate-values-post7084_
                  (lambda (_post7156_ _body7157_)
                    (let _lp7159_ ((_rest7161_ _post7156_)
                                   (_body7162_ _body7157_))
                      (let* ((_rest71637171_ _rest7161_)
                             (_E71667175_
                              (lambda ()
                                (error '"No clause matching" _rest71637171_)))
                             (_else71657179_ (lambda () _body7162_))
                             (_K71677185_
                              (lambda (_rest7182_ _bind7183_)
                                (_lp7159_
                                 _rest7182_
                                 (cons 'let
                                       (cons _bind7183_
                                             (cons _body7162_ '())))))))
                        (if (##pair? _rest71637171_)
                            (let ((_hd71687188_ (##car _rest71637171_))
                                  (_tl71697190_ (##cdr _rest71637171_)))
                              (let* ((_bind7193_ _hd71687188_)
                                     (_rest7195_ _tl71697190_))
                                (_K71677185_ _rest7195_ _bind7193_)))
                            (_else71657179_))))))
                 (_generate-values-check7085_
                  (lambda (_check7153_ _body7154_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body7154_ '())
                                  (reverse _check7153_))))))
          (let* ((_g70877104_
                  (lambda (_g70887101_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g70887101_)))
                 (_g70867150_
                  (lambda (_g70887107_)
                    (if (gx#stx-pair? _g70887107_)
                        (let ((_e70917109_ (gx#stx-e _g70887107_)))
                          (let ((_hd70927112_ (##car _e70917109_))
                                (_tl70937114_ (##cdr _e70917109_)))
                            (if (gx#stx-pair? _tl70937114_)
                                (let ((_e70947117_ (gx#stx-e _tl70937114_)))
                                  (let ((_hd70957120_ (##car _e70947117_))
                                        (_tl70967122_ (##cdr _e70947117_)))
                                    (if (gx#stx-pair? _tl70967122_)
                                        (let ((_e70977125_
                                               (gx#stx-e _tl70967122_)))
                                          (let ((_hd70987128_
                                                 (##car _e70977125_))
                                                (_tl70997130_
                                                 (##cdr _e70977125_)))
                                            (if (gx#stx-null? _tl70997130_)
                                                ((lambda (_L7133_ _L7134_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _L7134_)
                                                       (_generate-simple7081_
                                                        _L7134_
                                                        _L7133_)
                                                       (_generate-values7083_
                                                        _L7134_
                                                        _L7133_)))
                                                 _hd70987128_
                                                 _hd70957120_)
                                                (_g70877104_ _g70887107_))))
                                        (_g70877104_ _g70887107_))))
                                (_g70877104_ _g70887107_))))
                        (_g70877104_ _g70887107_)))))
            (_g70867150_ _stx7078_)))))
    (begin
      (define gxc#generate-runtime-let-values%__0
        (lambda (_stx8006_)
          (let ((_compiled-body?8008_ '#f))
            (gxc#generate-runtime-let-values%__opt-lambda7076
             _stx8006_
             _compiled-body?8008_))))
      (define gxc#generate-runtime-let-values%
        (lambda _g11098_
          (let ((_g11097_ (length _g11098_)))
            (cond ((fx= _g11097_ 1)
                   (apply gxc#generate-runtime-let-values%__0 _g11098_))
                  ((fx= _g11097_ 2)
                   (apply gxc#generate-runtime-let-values%__opt-lambda7076
                          _g11098_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-let-values%
                    _g11098_))))))))
  (define gxc#generate-runtime-let-values-bind
    (lambda (_vals6977_ _hd6978_)
      (let _lp6980_ ((_rest6982_ _hd6978_) (_k6983_ '0) (_r6984_ '()))
        (let* ((_g69897005_
                (lambda (_g69907002_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g69907002_)))
               (_g69887012_
                (lambda (_g69907008_) ((lambda () (reverse _r6984_)))))
               (_g69877028_
                (lambda (_g69907015_)
                  ((lambda (_L7017_)
                     (if (gx#identifier? _L7017_)
                         (foldl1 cons
                                 (cons (cons (gxc#generate-runtime-binding-id
                                              _L7017_)
                                             (cons (cons 'values->list
                                                         (cons _vals6977_
                                                               (cons _k6983_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                       '())
                                 _r6984_)
                         (_g69887012_ _g69907015_)))
                   _g69907015_)))
               (_g69867052_
                (lambda (_g69907031_)
                  (if (gx#stx-pair? _g69907031_)
                      (let ((_e69977033_ (gx#stx-e _g69907031_)))
                        (let ((_hd69987036_ (##car _e69977033_))
                              (_tl69997038_ (##cdr _e69977033_)))
                          ((lambda (_L7041_ _L7042_)
                             (_lp6980_
                              _L7041_
                              (fx+ _k6983_ '1)
                              (cons (cons (gxc#generate-runtime-binding-id
                                           _L7042_)
                                          (cons (cons 'values-ref
                                                      (cons _vals6977_
                                                            (cons _k6983_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    _r6984_)))
                           _tl69997038_
                           _hd69987036_)))
                      (_g69877028_ _g69907031_))))
               (_g69857074_
                (lambda (_g69907055_)
                  (if (gx#stx-pair? _g69907055_)
                      (let ((_e69927057_ (gx#stx-e _g69907055_)))
                        (let ((_hd69937060_ (##car _e69927057_))
                              (_tl69947062_ (##cdr _e69927057_)))
                          (if (gx#stx-datum? _hd69937060_)
                              (if (equal? (gx#stx-e _hd69937060_) '#f)
                                  ((lambda (_L7065_)
                                     (_lp6980_
                                      _L7065_
                                      (fx+ _k6983_ '1)
                                      _r6984_))
                                   _tl69947062_)
                                  (_g69867052_ _g69907055_))
                              (_g69867052_ _g69907055_))))
                      (_g69867052_ _g69907055_)))))
          (_g69857074_ _rest6982_)))))
  (begin
    (define gxc#generate-runtime-letrec-values%__opt-lambda6655
      (lambda (_stx6657_ _compiled-body?6658_)
        (letrec ((_generate-simple6660_
                  (lambda (_hd6964_ _body6965_)
                    (gxc#generate-runtime-simple-let
                     'letrec
                     _hd6964_
                     _body6965_
                     _compiled-body?6658_)))
                 (_generate-values6661_
                  (lambda (_hd6741_ _body6742_)
                    (let _lp6744_ ((_rest6746_ _hd6741_)
                                   (_bind6747_ '())
                                   (_check6748_ '())
                                   (_post6749_ '()))
                      (let* ((_g67526763_
                              (lambda (_g67536760_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g67536760_)))
                             (_g67516777_
                              (lambda (_g67536766_)
                                ((lambda ()
                                   (let* ((_body6770_
                                           (if _compiled-body?6658_
                                               _body6742_
                                               (gxc#compile-e _body6742_)))
                                          (_body6772_
                                           (_generate-values-post6663_
                                            _post6749_
                                            _body6770_))
                                          (_body6774_
                                           (_generate-values-check6662_
                                            _check6748_
                                            _body6772_)))
                                     (cons 'letrec
                                           (cons (reverse _bind6747_)
                                                 (cons _body6774_ '()))))))))
                             (_g67506961_
                              (lambda (_g67536780_)
                                (if (gx#stx-pair? _g67536780_)
                                    (let ((_e67566782_ (gx#stx-e _g67536780_)))
                                      (let ((_hd67576785_ (##car _e67566782_))
                                            (_tl67586787_ (##cdr _e67566782_)))
                                        ((lambda (_L6790_ _L6791_)
                                           (let* ((_g68066831_
                                                   (lambda (_g68076828_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g68076828_)))
                                                  (_g68056911_
                                                   (lambda (_g68076834_)
                                                     (if (gx#stx-pair?
                                                          _g68076834_)
                                                         (let ((_e68216836_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g68076834_)))
                   (let ((_hd68226839_ (##car _e68216836_))
                         (_tl68236841_ (##cdr _e68216836_)))
                     (if (gx#stx-pair? _tl68236841_)
                         (let ((_e68246844_ (gx#stx-e _tl68236841_)))
                           (let ((_hd68256847_ (##car _e68246844_))
                                 (_tl68266849_ (##cdr _e68246844_)))
                             (if (gx#stx-null? _tl68266849_)
                                 ((lambda (_L6852_ _L6853_)
                                    (let* ((_vals6866_
                                            (gxc#generate-runtime-temporary__0))
                                           (_expr6868_ (gxc#compile-e _L6852_))
                                           (_check-values6870_
                                            (gxc#generate-runtime-check-values
                                             _vals6866_
                                             _L6853_))
                                           (_refs6872_
                                            (gxc#generate-runtime-let-values-bind
                                             _vals6866_
                                             _L6853_)))
                                      (_lp6744_
                                       _L6790_
                                       (foldl1 cons
                                               (cons (cons _vals6866_
                                                           (cons _expr6868_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _bind6747_)
                                               (map (lambda (_e68746876_)
                                                      (let* ((_g68786887_
                                                              _e68746876_)
                                                             (_E68806891_
                                                              (lambda ()
                                                                (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g68786887_)))
                     (_K68816896_
                      (lambda (_eid6894_)
                        (cons _eid6894_ (cons '#!void '())))))
                (if (##pair? _g68786887_)
                    (let ((_hd68826899_ (##car _g68786887_))
                          (_tl68836901_ (##cdr _g68786887_)))
                      (let ((_eid6904_ _hd68826899_))
                        (if (##pair? _tl68836901_)
                            (let ((_hd68846906_ (##car _tl68836901_))
                                  (_tl68856908_ (##cdr _tl68836901_)))
                              (if (##null? _tl68856908_)
                                  (_K68816896_ _eid6904_)
                                  (_E68806891_)))
                            (_E68806891_))))
                    (_E68806891_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _refs6872_))
                                       (cons _check-values6870_ _check6748_)
                                       (foldl1 cons _refs6872_ _post6749_))))
                                  _hd68256847_
                                  _hd68226839_)
                                 (_g68066831_ _g68076834_))))
                         (_g68066831_ _g68076834_))))
                 (_g68066831_ _g68076834_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g68046958_
                                                   (lambda (_g68076914_)
                                                     (if (gx#stx-pair?
                                                          _g68076914_)
                                                         (let ((_e68106916_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g68076914_)))
                   (let ((_hd68116919_ (##car _e68106916_))
                         (_tl68126921_ (##cdr _e68106916_)))
                     (if (gx#stx-pair? _hd68116919_)
                         (let ((_e68136924_ (gx#stx-e _hd68116919_)))
                           (let ((_hd68146927_ (##car _e68136924_))
                                 (_tl68156929_ (##cdr _e68136924_)))
                             (if (gx#stx-null? _tl68156929_)
                                 (if (gx#stx-pair? _tl68126921_)
                                     (let ((_e68166932_
                                            (gx#stx-e _tl68126921_)))
                                       (let ((_hd68176935_ (##car _e68166932_))
                                             (_tl68186937_
                                              (##cdr _e68166932_)))
                                         (if (gx#stx-null? _tl68186937_)
                                             ((lambda (_L6940_ _L6941_)
                                                (let ((_eid6955_
                                                       (gxc#generate-runtime-binding-id*
                                                        _L6941_))
                                                      (_expr6956_
                                                       (gxc#compile-e
                                                        _L6940_)))
                                                  (_lp6744_
                                                   _L6790_
                                                   (cons (cons _eid6955_
                                                               (cons _expr6956_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 _bind6747_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _check6748_
                                                   _post6749_)))
                                              _hd68176935_
                                              _hd68146927_)
                                             (_g68056911_ _g68076914_))))
                                     (_g68056911_ _g68076914_))
                                 (_g68056911_ _g68076914_))))
                         (_g68056911_ _g68076914_))))
                 (_g68056911_ _g68076914_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g68046958_ _L6791_)))
                                         _tl67586787_
                                         _hd67576785_)))
                                    (_g67516777_ _g67536780_)))))
                        (_g67506961_ _rest6746_)))))
                 (_generate-values-check6662_
                  (lambda (_check6738_ _body6739_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body6739_ '())
                                  (reverse _check6738_)))))
                 (_generate-values-post6663_
                  (lambda (_post6731_ _body6732_)
                    (cons 'begin
                          (foldr1 cons
                                  (cons _body6732_ '())
                                  (map (lambda (_g67336735_)
                                         (cons 'set! _g67336735_))
                                       (reverse _post6731_)))))))
          (let* ((_g66656682_
                  (lambda (_g66666679_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g66666679_)))
                 (_g66646728_
                  (lambda (_g66666685_)
                    (if (gx#stx-pair? _g66666685_)
                        (let ((_e66696687_ (gx#stx-e _g66666685_)))
                          (let ((_hd66706690_ (##car _e66696687_))
                                (_tl66716692_ (##cdr _e66696687_)))
                            (if (gx#stx-pair? _tl66716692_)
                                (let ((_e66726695_ (gx#stx-e _tl66716692_)))
                                  (let ((_hd66736698_ (##car _e66726695_))
                                        (_tl66746700_ (##cdr _e66726695_)))
                                    (if (gx#stx-pair? _tl66746700_)
                                        (let ((_e66756703_
                                               (gx#stx-e _tl66746700_)))
                                          (let ((_hd66766706_
                                                 (##car _e66756703_))
                                                (_tl66776708_
                                                 (##cdr _e66756703_)))
                                            (if (gx#stx-null? _tl66776708_)
                                                ((lambda (_L6711_ _L6712_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _L6712_)
                                                       (_generate-simple6660_
                                                        _L6712_
                                                        _L6711_)
                                                       (_generate-values6661_
                                                        _L6712_
                                                        _L6711_)))
                                                 _hd66766706_
                                                 _hd66736698_)
                                                (_g66656682_ _g66666685_))))
                                        (_g66656682_ _g66666685_))))
                                (_g66656682_ _g66666685_))))
                        (_g66656682_ _g66666685_)))))
            (_g66646728_ _stx6657_)))))
    (begin
      (define gxc#generate-runtime-letrec-values%__0
        (lambda (_stx6970_)
          (let ((_compiled-body?6972_ '#f))
            (gxc#generate-runtime-letrec-values%__opt-lambda6655
             _stx6970_
             _compiled-body?6972_))))
      (define gxc#generate-runtime-letrec-values%
        (lambda _g11100_
          (let ((_g11099_ (length _g11100_)))
            (cond ((fx= _g11099_ 1)
                   (apply gxc#generate-runtime-letrec-values%__0 _g11100_))
                  ((fx= _g11099_ 2)
                   (apply gxc#generate-runtime-letrec-values%__opt-lambda6655
                          _g11100_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-letrec-values%
                    _g11100_))))))))
  (define gxc#generate-runtime-letrec*-values%
    (lambda (_stx6239_)
      (letrec ((_generate-values6241_
                (lambda (_hd6484_ _body6485_)
                  (let _lp6487_ ((_rest6489_ _hd6484_) (_bind6490_ '()))
                    (let* ((_rest64916499_ _rest6489_)
                           (_E64946503_
                            (lambda ()
                              (error '"No clause matching" _rest64916499_)))
                           (_else64936510_
                            (lambda ()
                              (let ((_bind6507_ (reverse _bind6490_))
                                    (_body6508_ (gxc#compile-e _body6485_)))
                                (cons 'letrec*
                                      (cons _bind6507_
                                            (cons _body6508_ '()))))))
                           (_K64956644_
                            (lambda (_rest6513_ _hd-bind6514_)
                              (let* ((_g65176542_
                                      (lambda (_g65186539_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g65186539_)))
                                     (_g65166594_
                                      (lambda (_g65186545_)
                                        (if (gx#stx-pair? _g65186545_)
                                            (let ((_e65326547_
                                                   (gx#stx-e _g65186545_)))
                                              (let ((_hd65336550_
                                                     (##car _e65326547_))
                                                    (_tl65346552_
                                                     (##cdr _e65326547_)))
                                                (if (gx#stx-pair? _tl65346552_)
                                                    (let ((_e65356555_
                                                           (gx#stx-e
                                                            _tl65346552_)))
                                                      (let ((_hd65366558_
                                                             (##car _e65356555_))
                                                            (_tl65376560_
                                                             (##cdr _e65356555_)))
                                                        (if (gx#stx-null?
                                                             _tl65376560_)
                                                            ((lambda (_L6563_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L6564_)
                       (let* ((_vals6583_ (gxc#generate-runtime-temporary__0))
                              (_tmp6585_ (gxc#generate-runtime-temporary__0))
                              (_expr6587_ (gxc#compile-e _L6563_))
                              (_check-values6589_
                               (gxc#generate-runtime-check-values
                                _tmp6585_
                                _L6564_))
                              (_refs6591_
                               (gxc#generate-runtime-let-values-bind
                                _vals6583_
                                _L6564_)))
                         (_lp6487_
                          _rest6513_
                          (foldl1 cons
                                  (cons (cons _vals6583_
                                              (cons (cons 'let
                                                          (cons (cons (cons _tmp6585_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _expr6587_ '()))
                              '())
                        (cons _check-values6589_ (cons _tmp6585_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        _bind6490_)
                                  _refs6591_))))
                     _hd65366558_
                     _hd65336550_)
                    (_g65176542_ _g65186545_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g65176542_
                                                     _g65186545_))))
                                            (_g65176542_ _g65186545_))))
                                     (_g65156641_
                                      (lambda (_g65186597_)
                                        (if (gx#stx-pair? _g65186597_)
                                            (let ((_e65216599_
                                                   (gx#stx-e _g65186597_)))
                                              (let ((_hd65226602_
                                                     (##car _e65216599_))
                                                    (_tl65236604_
                                                     (##cdr _e65216599_)))
                                                (if (gx#stx-pair? _hd65226602_)
                                                    (let ((_e65246607_
                                                           (gx#stx-e
                                                            _hd65226602_)))
                                                      (let ((_hd65256610_
                                                             (##car _e65246607_))
                                                            (_tl65266612_
                                                             (##cdr _e65246607_)))
                                                        (if (gx#stx-null?
                                                             _tl65266612_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl65236604_)
                        (let ((_e65276615_ (gx#stx-e _tl65236604_)))
                          (let ((_hd65286618_ (##car _e65276615_))
                                (_tl65296620_ (##cdr _e65276615_)))
                            (if (gx#stx-null? _tl65296620_)
                                ((lambda (_L6623_ _L6624_)
                                   (let ((_eid6638_
                                          (gxc#generate-runtime-binding-id*
                                           _L6624_))
                                         (_expr6639_ (gxc#compile-e _L6623_)))
                                     (_lp6487_
                                      _rest6513_
                                      (cons (cons _eid6638_
                                                  (cons _expr6639_ '()))
                                            _bind6490_))))
                                 _hd65286618_
                                 _hd65256610_)
                                (_g65166594_ _g65186597_))))
                        (_g65166594_ _g65186597_))
                    (_g65166594_ _g65186597_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g65166594_
                                                     _g65186597_))))
                                            (_g65166594_ _g65186597_)))))
                                (_g65156641_ _hd-bind6514_)))))
                      (if (##pair? _rest64916499_)
                          (let ((_hd64966647_ (##car _rest64916499_))
                                (_tl64976649_ (##cdr _rest64916499_)))
                            (let* ((_hd-bind6652_ _hd64966647_)
                                   (_rest6654_ _tl64976649_))
                              (_K64956644_ _rest6654_ _hd-bind6652_)))
                          (_else64936510_))))))
               (_generate-letrec?6242_
                (lambda (_hd6374_)
                  (let _lp6376_ ((_rest6378_ _hd6374_))
                    (let* ((_rest63796387_ _rest6378_)
                           (_E63826391_
                            (lambda ()
                              (error '"No clause matching" _rest63796387_)))
                           (_else63816395_ (lambda () '#t))
                           (_K63836472_
                            (lambda (_rest6398_ _hd-bind6399_)
                              (let* ((_g64016418_
                                      (lambda (_g64026415_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g64026415_)))
                                     (_g64006469_
                                      (lambda (_g64026421_)
                                        (if (gx#stx-pair? _g64026421_)
                                            (let ((_e64056423_
                                                   (gx#stx-e _g64026421_)))
                                              (let ((_hd64066426_
                                                     (##car _e64056423_))
                                                    (_tl64076428_
                                                     (##cdr _e64056423_)))
                                                (if (gx#stx-pair? _hd64066426_)
                                                    (let ((_e64086431_
                                                           (gx#stx-e
                                                            _hd64066426_)))
                                                      (let ((_hd64096434_
                                                             (##car _e64086431_))
                                                            (_tl64106436_
                                                             (##cdr _e64086431_)))
                                                        (if (gx#stx-null?
                                                             _tl64106436_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl64076428_)
                        (let ((_e64116439_ (gx#stx-e _tl64076428_)))
                          (let ((_hd64126442_ (##car _e64116439_))
                                (_tl64136444_ (##cdr _e64116439_)))
                            (if (gx#stx-null? _tl64136444_)
                                ((lambda (_L6447_ _L6448_)
                                   (if (_is-lambda-expr?6243_ _L6447_)
                                       (_lp6376_ _rest6398_)
                                       '#f))
                                 _hd64126442_
                                 _hd64096434_)
                                (_g64016418_ _g64026421_))))
                        (_g64016418_ _g64026421_))
                    (_g64016418_ _g64026421_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g64016418_
                                                     _g64026421_))))
                                            (_g64016418_ _g64026421_)))))
                                (_g64006469_ _hd-bind6399_)))))
                      (if (##pair? _rest63796387_)
                          (let ((_hd63846475_ (##car _rest63796387_))
                                (_tl63856477_ (##cdr _rest63796387_)))
                            (let* ((_hd-bind6480_ _hd63846475_)
                                   (_rest6482_ _tl63856477_))
                              (_K63836472_ _rest6482_ _hd-bind6480_)))
                          (_else63816395_))))))
               (_is-lambda-expr?6243_
                (lambda (_expr6311_)
                  (let* ((_g63146328_
                          (lambda (_g63156325_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g63156325_)))
                         (_g63136335_ (lambda (_g63156331_) ((lambda () '#f))))
                         (_g63126371_
                          (lambda (_g63156338_)
                            (if (gx#stx-pair? _g63156338_)
                                (let ((_e63186340_ (gx#stx-e _g63156338_)))
                                  (let ((_hd63196343_ (##car _e63186340_))
                                        (_tl63206345_ (##cdr _e63186340_)))
                                    (if (gx#identifier? _hd63196343_)
                                        (if (gx#stx-eq? '%#lambda _hd63196343_)
                                            (if (gx#stx-pair? _tl63206345_)
                                                (let ((_e63216348_
                                                       (gx#stx-e
                                                        _tl63206345_)))
                                                  (let ((_hd63226351_
                                                         (##car _e63216348_))
                                                        (_tl63236353_
                                                         (##cdr _e63216348_)))
                                                    ((lambda (_L6356_ _L6357_)
                                                       '#t)
                                                     _tl63236353_
                                                     _hd63226351_)))
                                                (_g63136335_ _g63156338_))
                                            (_g63136335_ _g63156338_))
                                        (_g63136335_ _g63156338_))))
                                (_g63136335_ _g63156338_)))))
                    (_g63126371_ _expr6311_)))))
        (let* ((_g62456262_
                (lambda (_g62466259_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g62466259_)))
               (_g62446308_
                (lambda (_g62466265_)
                  (if (gx#stx-pair? _g62466265_)
                      (let ((_e62496267_ (gx#stx-e _g62466265_)))
                        (let ((_hd62506270_ (##car _e62496267_))
                              (_tl62516272_ (##cdr _e62496267_)))
                          (if (gx#stx-pair? _tl62516272_)
                              (let ((_e62526275_ (gx#stx-e _tl62516272_)))
                                (let ((_hd62536278_ (##car _e62526275_))
                                      (_tl62546280_ (##cdr _e62526275_)))
                                  (if (gx#stx-pair? _tl62546280_)
                                      (let ((_e62556283_
                                             (gx#stx-e _tl62546280_)))
                                        (let ((_hd62566286_
                                               (##car _e62556283_))
                                              (_tl62576288_
                                               (##cdr _e62556283_)))
                                          (if (gx#stx-null? _tl62576288_)
                                              ((lambda (_L6291_ _L6292_)
                                                 (if (gxc#generate-runtime-simple-let?
                                                      _L6292_)
                                                     (if (_generate-letrec?6242_
                                                          _L6292_)
                                                         (gxc#generate-runtime-simple-let
                                                          'letrec
                                                          _L6292_
                                                          _L6291_
                                                          '#f)
                                                         (gxc#generate-runtime-simple-let
                                                          'letrec*
                                                          _L6292_
                                                          _L6291_
                                                          '#f))
                                                     (_generate-values6241_
                                                      _L6292_
                                                      _L6291_)))
                                               _hd62566286_
                                               _hd62536278_)
                                              (_g62456262_ _g62466265_))))
                                      (_g62456262_ _g62466265_))))
                              (_g62456262_ _g62466265_))))
                      (_g62456262_ _g62466265_)))))
          (_g62446308_ _stx6239_)))))
  (define gxc#generate-runtime-simple-let?
    (lambda (_hd6132_)
      (let _lp6134_ ((_rest6136_ _hd6132_))
        (let* ((_g61406161_
                (lambda (_g61416158_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g61416158_)))
               (_g61396168_ (lambda (_g61416164_) ((lambda () '#f))))
               (_g61386175_
                (lambda (_g61416171_)
                  (if (gx#stx-null? _g61416171_)
                      ((lambda () '#t))
                      (_g61396168_ _g61416171_))))
               (_g61376236_
                (lambda (_g61416178_)
                  (if (gx#stx-pair? _g61416178_)
                      (let ((_e61456180_ (gx#stx-e _g61416178_)))
                        (let ((_hd61466183_ (##car _e61456180_))
                              (_tl61476185_ (##cdr _e61456180_)))
                          (if (gx#stx-pair? _hd61466183_)
                              (let ((_e61486188_ (gx#stx-e _hd61466183_)))
                                (let ((_hd61496191_ (##car _e61486188_))
                                      (_tl61506193_ (##cdr _e61486188_)))
                                  (if (gx#stx-pair? _hd61496191_)
                                      (let ((_e61516196_
                                             (gx#stx-e _hd61496191_)))
                                        (let ((_hd61526199_
                                               (##car _e61516196_))
                                              (_tl61536201_
                                               (##cdr _e61516196_)))
                                          (if (gx#stx-null? _tl61536201_)
                                              (if (gx#stx-pair? _tl61506193_)
                                                  (let ((_e61546204_
                                                         (gx#stx-e
                                                          _tl61506193_)))
                                                    (let ((_hd61556207_
                                                           (##car _e61546204_))
                                                          (_tl61566209_
                                                           (##cdr _e61546204_)))
                                                      (if (gx#stx-null?
                                                           _tl61566209_)
                                                          ((lambda (_L6212_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L6213_
                            _L6214_)
                     (_lp6134_ _L6212_))
                   _tl61476185_
                   _hd61556207_
                   _hd61526199_)
                  (_g61386175_ _g61416178_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g61386175_ _g61416178_))
                                              (_g61386175_ _g61416178_))))
                                      (_g61386175_ _g61416178_))))
                              (_g61386175_ _g61416178_))))
                      (_g61386175_ _g61416178_)))))
          (_g61376236_ _rest6136_)))))
  (define gxc#generate-runtime-simple-let
    (lambda (_form6056_ _hd6057_ _body6058_ _compiled-body?6059_)
      (letrec ((_generate16061_
                (lambda (_bind6063_)
                  (let* ((_g60656082_
                          (lambda (_g60666079_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g60666079_)))
                         (_g60646129_
                          (lambda (_g60666085_)
                            (if (gx#stx-pair? _g60666085_)
                                (let ((_e60696087_ (gx#stx-e _g60666085_)))
                                  (let ((_hd60706090_ (##car _e60696087_))
                                        (_tl60716092_ (##cdr _e60696087_)))
                                    (if (gx#stx-pair? _hd60706090_)
                                        (let ((_e60726095_
                                               (gx#stx-e _hd60706090_)))
                                          (let ((_hd60736098_
                                                 (##car _e60726095_))
                                                (_tl60746100_
                                                 (##cdr _e60726095_)))
                                            (if (gx#stx-null? _tl60746100_)
                                                (if (gx#stx-pair? _tl60716092_)
                                                    (let ((_e60756103_
                                                           (gx#stx-e
                                                            _tl60716092_)))
                                                      (let ((_hd60766106_
                                                             (##car _e60756103_))
                                                            (_tl60776108_
                                                             (##cdr _e60756103_)))
                                                        (if (gx#stx-null?
                                                             _tl60776108_)
                                                            ((lambda (_L6111_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L6112_)
                       (cons (gxc#generate-runtime-binding-id* _L6112_)
                             (cons (gxc#compile-e _L6111_) '())))
                     _hd60766106_
                     _hd60736098_)
                    (_g60656082_ _g60666085_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g60656082_ _g60666085_))
                                                (_g60656082_ _g60666085_))))
                                        (_g60656082_ _g60666085_))))
                                (_g60656082_ _g60666085_)))))
                    (_g60646129_ _bind6063_)))))
        (cons _form6056_
              (cons (map _generate16061_ _hd6057_)
                    (cons (if _compiled-body?6059_
                              _body6058_
                              (gxc#compile-e _body6058_))
                          '()))))))
  (define gxc#generate-runtime-quote%
    (lambda (_stx5964_)
      (letrec ((_generate15966_
                (lambda (_datum6018_)
                  (if (let ((_$e6020_ (null? _datum6018_)))
                        (if _$e6020_
                            _$e6020_
                            (let ((_$e6023_ (interned-symbol? _datum6018_)))
                              (if _$e6023_
                                  _$e6023_
                                  (let ((_$e6026_
                                         (gx#self-quoting? _datum6018_)))
                                    (if _$e6026_
                                        _$e6026_
                                        (eof-object? _datum6018_)))))))
                      _datum6018_
                      (if (uninterned-symbol? _datum6018_)
                          (gxc#generate-runtime-gensym-reference__opt-lambda10016
                           _datum6018_
                           '#t)
                          (if (pair? _datum6018_)
                              (cons (_generate15966_ (car _datum6018_))
                                    (_generate15966_ (cdr _datum6018_)))
                              (if (box? _datum6018_)
                                  (box (_generate15966_ (unbox _datum6018_)))
                                  (if (vector? _datum6018_)
                                      (vector-map _generate15966_ _datum6018_)
                                      (if (let ((_$e6029_
                                                 (s8vector? _datum6018_)))
                                            (if _$e6029_
                                                _$e6029_
                                                (let ((_$e6032_
                                                       (u8vector?
                                                        _datum6018_)))
                                                  (if _$e6032_
                                                      _$e6032_
                                                      (let ((_$e6035_
                                                             (s16vector?
                                                              _datum6018_)))
                                                        (if _$e6035_
                                                            _$e6035_
                                                            (let ((_$e6038_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (u16vector? _datum6018_)))
                      (if _$e6038_
                          _$e6038_
                          (let ((_$e6041_ (s32vector? _datum6018_)))
                            (if _$e6041_
                                _$e6041_
                                (let ((_$e6044_ (u32vector? _datum6018_)))
                                  (if _$e6044_
                                      _$e6044_
                                      (let ((_$e6047_
                                             (s64vector? _datum6018_)))
                                        (if _$e6047_
                                            _$e6047_
                                            (let ((_$e6050_
                                                   (u64vector? _datum6018_)))
                                              (if _$e6050_
                                                  _$e6050_
                                                  (let ((_$e6053_
                                                         (f32vector?
                                                          _datum6018_)))
                                                    (if _$e6053_
                                                        _$e6053_
                                                        (f64vector?
                                                         _datum6018_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _datum6018_
                                          (gxc#raise-compile-error
                                           '"Cannot compile non-primitive quote"
                                           _stx5964_))))))))))
        (let* ((_g59685981_
                (lambda (_g59695978_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g59695978_)))
               (_g59676015_
                (lambda (_g59695984_)
                  (if (gx#stx-pair? _g59695984_)
                      (let ((_e59715986_ (gx#stx-e _g59695984_)))
                        (let ((_hd59725989_ (##car _e59715986_))
                              (_tl59735991_ (##cdr _e59715986_)))
                          (if (gx#stx-pair? _tl59735991_)
                              (let ((_e59745994_ (gx#stx-e _tl59735991_)))
                                (let ((_hd59755997_ (##car _e59745994_))
                                      (_tl59765999_ (##cdr _e59745994_)))
                                  (if (gx#stx-null? _tl59765999_)
                                      ((lambda (_L6002_)
                                         (cons 'quote
                                               (cons (_generate15966_
                                                      (gx#stx-e _L6002_))
                                                     '())))
                                       _hd59755997_)
                                      (_g59685981_ _g59695984_))))
                              (_g59685981_ _g59695984_))))
                      (_g59685981_ _g59695984_)))))
          (_g59676015_ _stx5964_)))))
  (define gxc#generate-runtime-call%
    (lambda (_stx5657_)
      (let* ((_g56595673_
              (lambda (_g56605670_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g56605670_)))
             (_g56585961_
              (lambda (_g56605676_)
                (if (gx#stx-pair? _g56605676_)
                    (let ((_e56635678_ (gx#stx-e _g56605676_)))
                      (let ((_hd56645681_ (##car _e56635678_))
                            (_tl56655683_ (##cdr _e56635678_)))
                        (if (gx#stx-pair? _tl56655683_)
                            (let ((_e56665686_ (gx#stx-e _tl56655683_)))
                              (let ((_hd56675689_ (##car _e56665686_))
                                    (_tl56685691_ (##cdr _e56665686_)))
                                ((lambda (_L5694_ _L5695_)
                                   (let ((_rator5708_ (gxc#compile-e _L5695_))
                                         (_rands5709_
                                          (map gxc#compile-e _L5694_)))
                                     (let* ((_g57125764_
                                             (lambda (_g57135761_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g57135761_)))
                                            (_g57115771_
                                             (lambda (_g57135767_)
                                               ((lambda ()
                                                  (cons _rator5708_
                                                        _rands5709_)))))
                                            (_g57105958_
                                             (lambda (_g57135774_)
                                               (if (gx#stx-pair? _g57135774_)
                                                   (let ((_e57185776_
                                                          (gx#stx-e
                                                           _g57135774_)))
                                                     (let ((_hd57195779_
                                                            (##car _e57185776_))
                                                           (_tl57205781_
                                                            (##cdr _e57185776_)))
                                                       (if (gx#identifier?
                                                            _hd57195779_)
                                                           (if (gx#stx-eq?
                                                                'letrec
                                                                _hd57195779_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl57205781_)
                           (let ((_e57215784_ (gx#stx-e _tl57205781_)))
                             (let ((_hd57225787_ (##car _e57215784_))
                                   (_tl57235789_ (##cdr _e57215784_)))
                               (if (gx#stx-pair? _hd57225787_)
                                   (let ((_e57245792_ (gx#stx-e _hd57225787_)))
                                     (let ((_hd57255795_ (##car _e57245792_))
                                           (_tl57265797_ (##cdr _e57245792_)))
                                       (if (gx#stx-pair? _hd57255795_)
                                           (let ((_e57275800_
                                                  (gx#stx-e _hd57255795_)))
                                             (let ((_hd57285803_
                                                    (##car _e57275800_))
                                                   (_tl57295805_
                                                    (##cdr _e57275800_)))
                                               (if (gx#stx-pair? _tl57295805_)
                                                   (let ((_e57305808_
                                                          (gx#stx-e
                                                           _tl57295805_)))
                                                     (let ((_hd57315811_
                                                            (##car _e57305808_))
                                                           (_tl57325813_
                                                            (##cdr _e57305808_)))
                                                       (if (gx#stx-pair?
                                                            _hd57315811_)
                                                           (let ((_e57335816_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd57315811_)))
                     (let ((_hd57345819_ (##car _e57335816_))
                           (_tl57355821_ (##cdr _e57335816_)))
                       (if (gx#identifier? _hd57345819_)
                           (if (gx#stx-eq? 'lambda _hd57345819_)
                               (if (gx#stx-pair? _tl57355821_)
                                   (let ((_e57365824_ (gx#stx-e _tl57355821_)))
                                     (let ((_hd57375827_ (##car _e57365824_))
                                           (_tl57385829_ (##cdr _e57365824_)))
                                       (if (gx#stx-pair/null? _hd57375827_)
                                           (if (fx>= (gx#stx-length
                                                      _hd57375827_)
                                                     '0)
                                               (let ((_g11101_
                                                      (gx#syntax-split-splice
                                                       _hd57375827_
                                                       '0)))
                                                 (begin
                                                   (let ((_g11102_
                                                          (values-count
                                                           _g11101_)))
                                                     (if (not (fx= _g11102_ 2))
                                                         (error "Context expects 2 values"
                                                                _g11102_)))
                                                   (let ((_target57395832_
                                                          (values-ref
                                                           _g11101_
                                                           0))
                                                         (_tl57415834_
                                                          (values-ref
                                                           _g11101_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl57415834_)
                                                         (letrec ((_loop57425837_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd57405840_ _arg57465842_)
                             (if (gx#stx-pair? _hd57405840_)
                                 (let ((_e57435845_ (gx#stx-e _hd57405840_)))
                                   (let ((_lp-hd57445848_ (##car _e57435845_))
                                         (_lp-tl57455850_ (##cdr _e57435845_)))
                                     (_loop57425837_
                                      _lp-tl57455850_
                                      (cons _lp-hd57445848_ _arg57465842_))))
                                 (let ((_arg57475853_ (reverse _arg57465842_)))
                                   (if (gx#stx-pair/null? _tl57385829_)
                                       (if (fx>= (gx#stx-length _tl57385829_)
                                                 '0)
                                           (let ((_g11103_
                                                  (gx#syntax-split-splice
                                                   _tl57385829_
                                                   '0)))
                                             (begin
                                               (let ((_g11104_
                                                      (values-count _g11103_)))
                                                 (if (not (fx= _g11104_ 2))
                                                     (error "Context expects 2 values"
                                                            _g11104_)))
                                               (let ((_target57485856_
                                                      (values-ref _g11103_ 0))
                                                     (_tl57505858_
                                                      (values-ref _g11103_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl57505858_)
                                                     (letrec ((_loop57515861_
                                                               (lambda (_hd57495864_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _body57555866_)
                         (if (gx#stx-pair? _hd57495864_)
                             (let ((_e57525869_ (gx#stx-e _hd57495864_)))
                               (let ((_lp-hd57535872_ (##car _e57525869_))
                                     (_lp-tl57545874_ (##cdr _e57525869_)))
                                 (_loop57515861_
                                  _lp-tl57545874_
                                  (cons _lp-hd57535872_ _body57555866_))))
                             (let ((_body57565877_ (reverse _body57555866_)))
                               (if (gx#stx-null? _tl57325813_)
                                   (if (gx#stx-null? _tl57265797_)
                                       (if (gx#stx-pair? _tl57235789_)
                                           (let ((_e57575880_
                                                  (gx#stx-e _tl57235789_)))
                                             (let ((_hd57585883_
                                                    (##car _e57575880_))
                                                   (_tl57595885_
                                                    (##cdr _e57575880_)))
                                               (if (gx#stx-null? _tl57595885_)
                                                   ((lambda (_L5888_
                                                             _L5889_
                                                             _L5890_
                                                             _L5891_)
                                                      (if (eq? _L5891_ _L5888_)
                                                          (if (fx= (length _rands5709_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (length (begin
                                     '#!void
                                     (foldr1 (lambda (_g59275930_ _g59285932_)
                                               (cons _g59275930_ _g59285932_))
                                             '()
                                             _L5890_))))
                      (let* ((_id5935_ _L5891_)
                             (_args5944_
                              (begin
                                '#!void
                                (foldr1 (lambda (_g59365939_ _g59375941_)
                                          (cons _g59365939_ _g59375941_))
                                        '()
                                        _L5890_)))
                             (_body5953_
                              (begin
                                '#!void
                                (foldr1 (lambda (_g59455948_ _g59465950_)
                                          (cons _g59455948_ _g59465950_))
                                        '()
                                        _L5889_)))
                             (_init5955_ (map list _args5944_ _rands5709_)))
                        (cons 'let
                              (cons _id5935_ (cons _init5955_ _body5953_))))
                      (gxc#raise-compile-error
                       '"Illegal loop application; arity mismatch"
                       _stx5657_))
                  (_g57115771_ _g57135774_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd57585883_
                                                    _body57565877_
                                                    _arg57475853_
                                                    _hd57285803_)
                                                   (_g57115771_ _g57135774_))))
                                           (_g57115771_ _g57135774_))
                                       (_g57115771_ _g57135774_))
                                   (_g57115771_ _g57135774_)))))))
               (_loop57515861_ _target57485856_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g57115771_
                                                      _g57135774_)))))
                                           (_g57115771_ _g57135774_))
                                       (_g57115771_ _g57135774_)))))))
                   (_loop57425837_ _target57395832_ '()))
                 (_g57115771_ _g57135774_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g57115771_ _g57135774_))
                                           (_g57115771_ _g57135774_))))
                                   (_g57115771_ _g57135774_))
                               (_g57115771_ _g57135774_))
                           (_g57115771_ _g57135774_))))
                   (_g57115771_ _g57135774_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g57115771_ _g57135774_))))
                                           (_g57115771_ _g57135774_))))
                                   (_g57115771_ _g57135774_))))
                           (_g57115771_ _g57135774_))
                       (_g57115771_ _g57135774_))
                   (_g57115771_ _g57135774_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g57115771_
                                                    _g57135774_)))))
                                       (_g57105958_ _rator5708_))))
                                 _tl56685691_
                                 _hd56675689_)))
                            (_g56595673_ _g56605676_))))
                    (_g56595673_ _g56605676_)))))
        (_g56585961_ _stx5657_))))
  (define gxc#generate-runtime-if%
    (lambda (_stx5619_)
      (let* ((_g56215631_
              (lambda (_g56225628_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g56225628_)))
             (_g56205654_
              (lambda (_g56225634_)
                (if (gx#stx-pair? _g56225634_)
                    (let ((_e56245636_ (gx#stx-e _g56225634_)))
                      (let ((_hd56255639_ (##car _e56245636_))
                            (_tl56265641_ (##cdr _e56245636_)))
                        ((lambda (_L5644_)
                           (cons 'if (map gxc#compile-e _L5644_)))
                         _tl56265641_)))
                    (_g56215631_ _g56225634_)))))
        (_g56205654_ _stx5619_))))
  (define gxc#generate-runtime-ref%
    (lambda (_stx5568_)
      (let* ((_g55705583_
              (lambda (_g55715580_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g55715580_)))
             (_g55695616_
              (lambda (_g55715586_)
                (if (gx#stx-pair? _g55715586_)
                    (let ((_e55735588_ (gx#stx-e _g55715586_)))
                      (let ((_hd55745591_ (##car _e55735588_))
                            (_tl55755593_ (##cdr _e55735588_)))
                        (if (gx#stx-pair? _tl55755593_)
                            (let ((_e55765596_ (gx#stx-e _tl55755593_)))
                              (let ((_hd55775599_ (##car _e55765596_))
                                    (_tl55785601_ (##cdr _e55765596_)))
                                (if (gx#stx-null? _tl55785601_)
                                    ((lambda (_L5604_)
                                       (gxc#generate-runtime-binding-id
                                        _L5604_))
                                     _hd55775599_)
                                    (_g55705583_ _g55715586_))))
                            (_g55705583_ _g55715586_))))
                    (_g55705583_ _g55715586_)))))
        (_g55695616_ _stx5568_))))
  (define gxc#generate-runtime-setq%
    (lambda (_stx5501_)
      (let* ((_g55035520_
              (lambda (_g55045517_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g55045517_)))
             (_g55025565_
              (lambda (_g55045523_)
                (if (gx#stx-pair? _g55045523_)
                    (let ((_e55075525_ (gx#stx-e _g55045523_)))
                      (let ((_hd55085528_ (##car _e55075525_))
                            (_tl55095530_ (##cdr _e55075525_)))
                        (if (gx#stx-pair? _tl55095530_)
                            (let ((_e55105533_ (gx#stx-e _tl55095530_)))
                              (let ((_hd55115536_ (##car _e55105533_))
                                    (_tl55125538_ (##cdr _e55105533_)))
                                (if (gx#stx-pair? _tl55125538_)
                                    (let ((_e55135541_
                                           (gx#stx-e _tl55125538_)))
                                      (let ((_hd55145544_ (##car _e55135541_))
                                            (_tl55155546_ (##cdr _e55135541_)))
                                        (if (gx#stx-null? _tl55155546_)
                                            ((lambda (_L5549_ _L5550_)
                                               (cons 'set!
                                                     (cons (gxc#generate-runtime-binding-id
                                                            _L5550_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L5549_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd55145544_
                                             _hd55115536_)
                                            (_g55035520_ _g55045523_))))
                                    (_g55035520_ _g55045523_))))
                            (_g55035520_ _g55045523_))))
                    (_g55035520_ _g55045523_)))))
        (_g55025565_ _stx5501_))))
  (define gxc#generate-runtime-struct-instancep%
    (lambda (_stx5434_)
      (let* ((_g54365453_
              (lambda (_g54375450_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g54375450_)))
             (_g54355498_
              (lambda (_g54375456_)
                (if (gx#stx-pair? _g54375456_)
                    (let ((_e54405458_ (gx#stx-e _g54375456_)))
                      (let ((_hd54415461_ (##car _e54405458_))
                            (_tl54425463_ (##cdr _e54405458_)))
                        (if (gx#stx-pair? _tl54425463_)
                            (let ((_e54435466_ (gx#stx-e _tl54425463_)))
                              (let ((_hd54445469_ (##car _e54435466_))
                                    (_tl54455471_ (##cdr _e54435466_)))
                                (if (gx#stx-pair? _tl54455471_)
                                    (let ((_e54465474_
                                           (gx#stx-e _tl54455471_)))
                                      (let ((_hd54475477_ (##car _e54465474_))
                                            (_tl54485479_ (##cdr _e54465474_)))
                                        (if (gx#stx-null? _tl54485479_)
                                            ((lambda (_L5482_ _L5483_)
                                               (cons '##structure-instance-of?
                                                     (cons (gxc#compile-e
                                                            _L5482_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L5483_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd54475477_
                                             _hd54445469_)
                                            (_g54365453_ _g54375456_))))
                                    (_g54365453_ _g54375456_))))
                            (_g54365453_ _g54375456_))))
                    (_g54365453_ _g54375456_)))))
        (_g54355498_ _stx5434_))))
  (define gxc#generate-runtime-struct-direct-instancep%
    (lambda (_stx5367_)
      (let* ((_g53695386_
              (lambda (_g53705383_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g53705383_)))
             (_g53685431_
              (lambda (_g53705389_)
                (if (gx#stx-pair? _g53705389_)
                    (let ((_e53735391_ (gx#stx-e _g53705389_)))
                      (let ((_hd53745394_ (##car _e53735391_))
                            (_tl53755396_ (##cdr _e53735391_)))
                        (if (gx#stx-pair? _tl53755396_)
                            (let ((_e53765399_ (gx#stx-e _tl53755396_)))
                              (let ((_hd53775402_ (##car _e53765399_))
                                    (_tl53785404_ (##cdr _e53765399_)))
                                (if (gx#stx-pair? _tl53785404_)
                                    (let ((_e53795407_
                                           (gx#stx-e _tl53785404_)))
                                      (let ((_hd53805410_ (##car _e53795407_))
                                            (_tl53815412_ (##cdr _e53795407_)))
                                        (if (gx#stx-null? _tl53815412_)
                                            ((lambda (_L5415_ _L5416_)
                                               (cons '##structure-direct-instance-of?
                                                     (cons (gxc#compile-e
                                                            _L5415_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L5416_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd53805410_
                                             _hd53775402_)
                                            (_g53695386_ _g53705389_))))
                                    (_g53695386_ _g53705389_))))
                            (_g53695386_ _g53705389_))))
                    (_g53695386_ _g53705389_)))))
        (_g53685431_ _stx5367_))))
  (define gxc#generate-runtime-struct-ref%
    (lambda (_stx5284_)
      (let* ((_g52865307_
              (lambda (_g52875304_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g52875304_)))
             (_g52855364_
              (lambda (_g52875310_)
                (if (gx#stx-pair? _g52875310_)
                    (let ((_e52915312_ (gx#stx-e _g52875310_)))
                      (let ((_hd52925315_ (##car _e52915312_))
                            (_tl52935317_ (##cdr _e52915312_)))
                        (if (gx#stx-pair? _tl52935317_)
                            (let ((_e52945320_ (gx#stx-e _tl52935317_)))
                              (let ((_hd52955323_ (##car _e52945320_))
                                    (_tl52965325_ (##cdr _e52945320_)))
                                (if (gx#stx-pair? _tl52965325_)
                                    (let ((_e52975328_
                                           (gx#stx-e _tl52965325_)))
                                      (let ((_hd52985331_ (##car _e52975328_))
                                            (_tl52995333_ (##cdr _e52975328_)))
                                        (if (gx#stx-pair? _tl52995333_)
                                            (let ((_e53005336_
                                                   (gx#stx-e _tl52995333_)))
                                              (let ((_hd53015339_
                                                     (##car _e53005336_))
                                                    (_tl53025341_
                                                     (##cdr _e53005336_)))
                                                (if (gx#stx-null? _tl53025341_)
                                                    ((lambda (_L5344_
                                                              _L5345_
                                                              _L5346_)
                                                       (cons '##structure-ref
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L5344_)
                           (cons (gxc#compile-e _L5345_)
                                 (cons (gxc#compile-e _L5346_)
                                       (cons ''#f '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd53015339_
                                                     _hd52985331_
                                                     _hd52955323_)
                                                    (_g52865307_
                                                     _g52875310_))))
                                            (_g52865307_ _g52875310_))))
                                    (_g52865307_ _g52875310_))))
                            (_g52865307_ _g52875310_))))
                    (_g52865307_ _g52875310_)))))
        (_g52855364_ _stx5284_))))
  (define gxc#generate-runtime-struct-setq%
    (lambda (_stx5185_)
      (let* ((_g51875212_
              (lambda (_g51885209_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g51885209_)))
             (_g51865281_
              (lambda (_g51885215_)
                (if (gx#stx-pair? _g51885215_)
                    (let ((_e51935217_ (gx#stx-e _g51885215_)))
                      (let ((_hd51945220_ (##car _e51935217_))
                            (_tl51955222_ (##cdr _e51935217_)))
                        (if (gx#stx-pair? _tl51955222_)
                            (let ((_e51965225_ (gx#stx-e _tl51955222_)))
                              (let ((_hd51975228_ (##car _e51965225_))
                                    (_tl51985230_ (##cdr _e51965225_)))
                                (if (gx#stx-pair? _tl51985230_)
                                    (let ((_e51995233_
                                           (gx#stx-e _tl51985230_)))
                                      (let ((_hd52005236_ (##car _e51995233_))
                                            (_tl52015238_ (##cdr _e51995233_)))
                                        (if (gx#stx-pair? _tl52015238_)
                                            (let ((_e52025241_
                                                   (gx#stx-e _tl52015238_)))
                                              (let ((_hd52035244_
                                                     (##car _e52025241_))
                                                    (_tl52045246_
                                                     (##cdr _e52025241_)))
                                                (if (gx#stx-pair? _tl52045246_)
                                                    (let ((_e52055249_
                                                           (gx#stx-e
                                                            _tl52045246_)))
                                                      (let ((_hd52065252_
                                                             (##car _e52055249_))
                                                            (_tl52075254_
                                                             (##cdr _e52055249_)))
                                                        (if (gx#stx-null?
                                                             _tl52075254_)
                                                            ((lambda (_L5257_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L5258_
                              _L5259_
                              _L5260_)
                       (cons '##structure-set!
                             (cons (gxc#compile-e _L5258_)
                                   (cons (gxc#compile-e _L5257_)
                                         (cons (gxc#compile-e _L5259_)
                                               (cons (gxc#compile-e _L5260_)
                                                     (cons ''#f '())))))))
                     _hd52065252_
                     _hd52035244_
                     _hd52005236_
                     _hd51975228_)
                    (_g51875212_ _g51885215_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g51875212_
                                                     _g51885215_))))
                                            (_g51875212_ _g51885215_))))
                                    (_g51875212_ _g51885215_))))
                            (_g51875212_ _g51885215_))))
                    (_g51875212_ _g51885215_)))))
        (_g51865281_ _stx5185_))))
  (define gxc#generate-runtime-struct-direct-ref%
    (lambda (_stx5102_)
      (let* ((_g51045125_
              (lambda (_g51055122_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g51055122_)))
             (_g51035182_
              (lambda (_g51055128_)
                (if (gx#stx-pair? _g51055128_)
                    (let ((_e51095130_ (gx#stx-e _g51055128_)))
                      (let ((_hd51105133_ (##car _e51095130_))
                            (_tl51115135_ (##cdr _e51095130_)))
                        (if (gx#stx-pair? _tl51115135_)
                            (let ((_e51125138_ (gx#stx-e _tl51115135_)))
                              (let ((_hd51135141_ (##car _e51125138_))
                                    (_tl51145143_ (##cdr _e51125138_)))
                                (if (gx#stx-pair? _tl51145143_)
                                    (let ((_e51155146_
                                           (gx#stx-e _tl51145143_)))
                                      (let ((_hd51165149_ (##car _e51155146_))
                                            (_tl51175151_ (##cdr _e51155146_)))
                                        (if (gx#stx-pair? _tl51175151_)
                                            (let ((_e51185154_
                                                   (gx#stx-e _tl51175151_)))
                                              (let ((_hd51195157_
                                                     (##car _e51185154_))
                                                    (_tl51205159_
                                                     (##cdr _e51185154_)))
                                                (if (gx#stx-null? _tl51205159_)
                                                    ((lambda (_L5162_
                                                              _L5163_
                                                              _L5164_)
                                                       (cons '##direct-structure-ref
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L5162_)
                           (cons (gxc#compile-e _L5163_)
                                 (cons (gxc#compile-e _L5164_)
                                       (cons ''#f '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd51195157_
                                                     _hd51165149_
                                                     _hd51135141_)
                                                    (_g51045125_
                                                     _g51055128_))))
                                            (_g51045125_ _g51055128_))))
                                    (_g51045125_ _g51055128_))))
                            (_g51045125_ _g51055128_))))
                    (_g51045125_ _g51055128_)))))
        (_g51035182_ _stx5102_))))
  (define gxc#generate-runtime-struct-direct-setq%
    (lambda (_stx5003_)
      (let* ((_g50055030_
              (lambda (_g50065027_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g50065027_)))
             (_g50045099_
              (lambda (_g50065033_)
                (if (gx#stx-pair? _g50065033_)
                    (let ((_e50115035_ (gx#stx-e _g50065033_)))
                      (let ((_hd50125038_ (##car _e50115035_))
                            (_tl50135040_ (##cdr _e50115035_)))
                        (if (gx#stx-pair? _tl50135040_)
                            (let ((_e50145043_ (gx#stx-e _tl50135040_)))
                              (let ((_hd50155046_ (##car _e50145043_))
                                    (_tl50165048_ (##cdr _e50145043_)))
                                (if (gx#stx-pair? _tl50165048_)
                                    (let ((_e50175051_
                                           (gx#stx-e _tl50165048_)))
                                      (let ((_hd50185054_ (##car _e50175051_))
                                            (_tl50195056_ (##cdr _e50175051_)))
                                        (if (gx#stx-pair? _tl50195056_)
                                            (let ((_e50205059_
                                                   (gx#stx-e _tl50195056_)))
                                              (let ((_hd50215062_
                                                     (##car _e50205059_))
                                                    (_tl50225064_
                                                     (##cdr _e50205059_)))
                                                (if (gx#stx-pair? _tl50225064_)
                                                    (let ((_e50235067_
                                                           (gx#stx-e
                                                            _tl50225064_)))
                                                      (let ((_hd50245070_
                                                             (##car _e50235067_))
                                                            (_tl50255072_
                                                             (##cdr _e50235067_)))
                                                        (if (gx#stx-null?
                                                             _tl50255072_)
                                                            ((lambda (_L5075_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L5076_
                              _L5077_
                              _L5078_)
                       (cons '##direct-structure-set!
                             (cons (gxc#compile-e _L5076_)
                                   (cons (gxc#compile-e _L5075_)
                                         (cons (gxc#compile-e _L5077_)
                                               (cons (gxc#compile-e _L5078_)
                                                     (cons ''#f '())))))))
                     _hd50245070_
                     _hd50215062_
                     _hd50185054_
                     _hd50155046_)
                    (_g50055030_ _g50065033_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g50055030_
                                                     _g50065033_))))
                                            (_g50055030_ _g50065033_))))
                                    (_g50055030_ _g50065033_))))
                            (_g50055030_ _g50065033_))))
                    (_g50055030_ _g50065033_)))))
        (_g50045099_ _stx5003_))))
  (define gxc#generate-runtime-struct-unchecked-ref%
    (lambda (_stx4920_)
      (let* ((_g49224943_
              (lambda (_g49234940_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g49234940_)))
             (_g49215000_
              (lambda (_g49234946_)
                (if (gx#stx-pair? _g49234946_)
                    (let ((_e49274948_ (gx#stx-e _g49234946_)))
                      (let ((_hd49284951_ (##car _e49274948_))
                            (_tl49294953_ (##cdr _e49274948_)))
                        (if (gx#stx-pair? _tl49294953_)
                            (let ((_e49304956_ (gx#stx-e _tl49294953_)))
                              (let ((_hd49314959_ (##car _e49304956_))
                                    (_tl49324961_ (##cdr _e49304956_)))
                                (if (gx#stx-pair? _tl49324961_)
                                    (let ((_e49334964_
                                           (gx#stx-e _tl49324961_)))
                                      (let ((_hd49344967_ (##car _e49334964_))
                                            (_tl49354969_ (##cdr _e49334964_)))
                                        (if (gx#stx-pair? _tl49354969_)
                                            (let ((_e49364972_
                                                   (gx#stx-e _tl49354969_)))
                                              (let ((_hd49374975_
                                                     (##car _e49364972_))
                                                    (_tl49384977_
                                                     (##cdr _e49364972_)))
                                                (if (gx#stx-null? _tl49384977_)
                                                    ((lambda (_L4980_
                                                              _L4981_
                                                              _L4982_)
                                                       (cons '##unchecked-structure-ref
                                                             (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L4980_)
                           (cons (gxc#compile-e _L4981_)
                                 (cons (gxc#compile-e _L4982_)
                                       (cons ''#f '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd49374975_
                                                     _hd49344967_
                                                     _hd49314959_)
                                                    (_g49224943_
                                                     _g49234946_))))
                                            (_g49224943_ _g49234946_))))
                                    (_g49224943_ _g49234946_))))
                            (_g49224943_ _g49234946_))))
                    (_g49224943_ _g49234946_)))))
        (_g49215000_ _stx4920_))))
  (define gxc#generate-runtime-struct-unchecked-setq%
    (lambda (_stx4821_)
      (let* ((_g48234848_
              (lambda (_g48244845_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g48244845_)))
             (_g48224917_
              (lambda (_g48244851_)
                (if (gx#stx-pair? _g48244851_)
                    (let ((_e48294853_ (gx#stx-e _g48244851_)))
                      (let ((_hd48304856_ (##car _e48294853_))
                            (_tl48314858_ (##cdr _e48294853_)))
                        (if (gx#stx-pair? _tl48314858_)
                            (let ((_e48324861_ (gx#stx-e _tl48314858_)))
                              (let ((_hd48334864_ (##car _e48324861_))
                                    (_tl48344866_ (##cdr _e48324861_)))
                                (if (gx#stx-pair? _tl48344866_)
                                    (let ((_e48354869_
                                           (gx#stx-e _tl48344866_)))
                                      (let ((_hd48364872_ (##car _e48354869_))
                                            (_tl48374874_ (##cdr _e48354869_)))
                                        (if (gx#stx-pair? _tl48374874_)
                                            (let ((_e48384877_
                                                   (gx#stx-e _tl48374874_)))
                                              (let ((_hd48394880_
                                                     (##car _e48384877_))
                                                    (_tl48404882_
                                                     (##cdr _e48384877_)))
                                                (if (gx#stx-pair? _tl48404882_)
                                                    (let ((_e48414885_
                                                           (gx#stx-e
                                                            _tl48404882_)))
                                                      (let ((_hd48424888_
                                                             (##car _e48414885_))
                                                            (_tl48434890_
                                                             (##cdr _e48414885_)))
                                                        (if (gx#stx-null?
                                                             _tl48434890_)
                                                            ((lambda (_L4893_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L4894_
                              _L4895_
                              _L4896_)
                       (cons '##unchecked-structure-set!
                             (cons (gxc#compile-e _L4894_)
                                   (cons (gxc#compile-e _L4893_)
                                         (cons (gxc#compile-e _L4895_)
                                               (cons (gxc#compile-e _L4896_)
                                                     (cons ''#f '())))))))
                     _hd48424888_
                     _hd48394880_
                     _hd48364872_
                     _hd48334864_)
                    (_g48234848_ _g48244851_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g48234848_
                                                     _g48244851_))))
                                            (_g48234848_ _g48244851_))))
                                    (_g48234848_ _g48244851_))))
                            (_g48234848_ _g48244851_))))
                    (_g48234848_ _g48244851_)))))
        (_g48224917_ _stx4821_))))
  (define gxc#generate-runtime-loader-import%
    (lambda (_stx4730_)
      (let* ((_g47324742_
              (lambda (_g47334739_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g47334739_)))
             (_g47314818_
              (lambda (_g47334745_)
                (if (gx#stx-pair? _g47334745_)
                    (let ((_e47354747_ (gx#stx-e _g47334745_)))
                      (let ((_hd47364750_ (##car _e47354747_))
                            (_tl47374752_ (##cdr _e47354747_)))
                        ((lambda (_L4755_)
                           (let ((_ht4765_ (make-hash-table-eq)))
                             (let _lp4767_ ((_rest4769_ _L4755_)
                                            (_loads4770_ '()))
                               (letrec ((_K4772_ (lambda (_ctx4811_ _rest4812_)
                                                   (let ((_id4814_
                                                          (##structure-ref
                                                           _ctx4811_
                                                           '1
                                                           gx#expander-context::t
                                                           '#f)))
                                                     (if (table-ref
                                                          _ht4765_
                                                          _id4814_
                                                          '#f)
                                                         (_lp4767_
                                                          _rest4812_
                                                          _loads4770_)
                                                         (let ((_rt4816_
                                                                (string-append
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (symbol->string _id4814_)
                         '"__rt")))
                   (begin
                     (table-set! _ht4765_ _id4814_ _rt4816_)
                     (_lp4767_ _rest4812_ (cons _rt4816_ _loads4770_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (let* ((_rest47734781_ _rest4769_)
                                        (_E47764785_
                                         (lambda ()
                                           (error '"No clause matching"
                                                  _rest47734781_)))
                                        (_else47754793_
                                         (lambda ()
                                           (cons 'begin
                                                 (map (lambda (_g47884790_)
                                                        (list 'load-module
                                                              _g47884790_))
                                                      (reverse _loads4770_)))))
                                        (_K47774799_
                                         (lambda (_rest4796_ _in4797_)
                                           (if (##structure-instance-of?
                                                _in4797_
                                                'gx#module-context::t)
                                               (_K4772_ _in4797_ _rest4796_)
                                               (if (##structure-direct-instance-of?
                                                    _in4797_
                                                    'gx#module-import::t)
                                                   (if (fxpositive?
                                                        (##direct-structure-ref
                                                         _in4797_
                                                         '3
                                                         gx#module-import::t
                                                         '#f))
                                                       (_lp4767_
                                                        _rest4796_
                                                        _loads4770_)
                                                       (_K4772_ (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##direct-structure-ref
                          _in4797_
                          '1
                          gx#module-import::t
                          '#f)
                         '1
                         gx#module-export::t
                         '#f)
                        _rest4796_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (##structure-direct-instance-of?
                                                        _in4797_
                                                        'gx#import-set::t)
                                                       (if (fxpositive?
                                                            (##direct-structure-ref
                                                             _in4797_
                                                             '2
                                                             gx#import-set::t
                                                             '#f))
                                                           (_lp4767_
                                                            _rest4796_
                                                            _loads4770_)
                                                           (_K4772_ (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _in4797_
                             '1
                             gx#import-set::t
                             '#f)
                            _rest4796_))
               (gxc#raise-compile-error
                '"Unexpected import"
                _stx4730_
                _in4797_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (##pair? _rest47734781_)
                                       (let ((_hd47784802_
                                              (##car _rest47734781_))
                                             (_tl47794804_
                                              (##cdr _rest47734781_)))
                                         (let* ((_in4807_ _hd47784802_)
                                                (_rest4809_ _tl47794804_))
                                           (_K47774799_ _rest4809_ _in4807_)))
                                       (_else47754793_)))))))
                         _tl47374752_)))
                    (_g47324742_ _g47334745_)))))
        (_g47314818_ _stx4730_))))
  (define gxc#generate-runtime-phi-quote-syntax%
    (lambda (_stx4671_)
      (letrec ((_generate-quote4673_
                (lambda (_q4728_)
                  (if (gx#identifier? _q4728_)
                      (gxc#generate-runtime-identifier _q4728_)
                      (gxc#raise-compile-error
                       '"Cannot quote non-identifier syntax"
                       _stx4671_
                       _q4728_)))))
        (let* ((_g46754688_
                (lambda (_g46764685_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g46764685_)))
               (_g46744725_
                (lambda (_g46764691_)
                  (if (gx#stx-pair? _g46764691_)
                      (let ((_e46784693_ (gx#stx-e _g46764691_)))
                        (let ((_hd46794696_ (##car _e46784693_))
                              (_tl46804698_ (##cdr _e46784693_)))
                          (if (gx#stx-pair? _tl46804698_)
                              (let ((_e46814701_ (gx#stx-e _tl46804698_)))
                                (let ((_hd46824704_ (##car _e46814701_))
                                      (_tl46834706_ (##cdr _e46814701_)))
                                  (if (gx#stx-null? _tl46834706_)
                                      ((lambda (_L4709_)
                                         (let ((_gid4722_
                                                (gxc#generate-runtime-temporary__opt-lambda9962
                                                 '#t))
                                               (_quote-e4723_
                                                (_generate-quote4673_
                                                 _L4709_)))
                                           (begin
                                             (set-box!
                                              (gxc#current-compile-lift)
                                              (cons (cons 'define
                                                          (cons _gid4722_
                                                                (cons (cons 'gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons 'quote
                                                (cons _quote-e4723_ '()))
                                          '()))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (unbox (gxc#current-compile-lift))))
                                             _gid4722_)))
                                       _hd46824704_)
                                      (_g46754688_ _g46764691_))))
                              (_g46754688_ _g46764691_))))
                      (_g46754688_ _g46764691_)))))
          (_g46744725_ _stx4671_)))))
  (define gxc#generate-runtime-phi-define-runtime%
    (lambda (_stx4604_)
      (let* ((_g46064623_
              (lambda (_g46074620_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g46074620_)))
             (_g46054668_
              (lambda (_g46074626_)
                (if (gx#stx-pair? _g46074626_)
                    (let ((_e46104628_ (gx#stx-e _g46074626_)))
                      (let ((_hd46114631_ (##car _e46104628_))
                            (_tl46124633_ (##cdr _e46104628_)))
                        (if (gx#stx-pair? _tl46124633_)
                            (let ((_e46134636_ (gx#stx-e _tl46124633_)))
                              (let ((_hd46144639_ (##car _e46134636_))
                                    (_tl46154641_ (##cdr _e46134636_)))
                                (if (gx#stx-pair? _tl46154641_)
                                    (let ((_e46164644_
                                           (gx#stx-e _tl46154641_)))
                                      (let ((_hd46174647_ (##car _e46164644_))
                                            (_tl46184649_ (##cdr _e46164644_)))
                                        (if (gx#stx-null? _tl46184649_)
                                            ((lambda (_L4652_ _L4653_)
                                               (cons 'define
                                                     (cons (gx#stx-e _L4653_)
                                                           (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L4652_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd46174647_
                                             _hd46144639_)
                                            (_g46064623_ _g46074626_))))
                                    (_g46064623_ _g46074626_))))
                            (_g46064623_ _g46074626_))))
                    (_g46064623_ _g46074626_)))))
        (_g46054668_ _stx4604_))))
  (define gxc#generate-meta-begin%
    (lambda (_stx4553_ _state4554_)
      (let* ((_g45564566_
              (lambda (_g45574563_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g45574563_)))
             (_g45554601_
              (lambda (_g45574569_)
                (if (gx#stx-pair? _g45574569_)
                    (let ((_e45594571_ (gx#stx-e _g45574569_)))
                      (let ((_hd45604574_ (##car _e45594571_))
                            (_tl45614576_ (##cdr _e45594571_)))
                        ((lambda (_L4579_)
                           (let* ((_c-body4593_
                                   (map (lambda (_g45884590_)
                                          (gxc#compile-e
                                           _g45884590_
                                           _state4554_))
                                        _L4579_))
                                  (_c-body4598_
                                   (filter (lambda (_$obj4595_)
                                             (not (eq? _$obj4595_ '#!void)))
                                           _c-body4593_)))
                             (cons '%#begin _c-body4598_)))
                         _tl45614576_)))
                    (_g45564566_ _g45574569_)))))
        (_g45554601_ _stx4553_))))
  (define gxc#generate-meta-begin-syntax%
    (lambda (_stx4461_ _state4462_)
      (let* ((_g44644474_
              (lambda (_g44654471_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g44654471_)))
             (_g44634550_
              (lambda (_g44654477_)
                (if (gx#stx-pair? _g44654477_)
                    (let ((_e44674479_ (gx#stx-e _g44654477_)))
                      (let ((_hd44684482_ (##car _e44674479_))
                            (_tl44694484_ (##cdr _e44674479_)))
                        ((lambda (_L4487_)
                           (let* ((_phi4497_
                                   (fx+ (gx#current-expander-phi) '1))
                                  (_block4499_
                                   (gxc#meta-state-begin-phi!
                                    _state4462_
                                    _phi4497_))
                                  (_compiled4502_
                                   (call-with-parameters
                                    (lambda ()
                                      (gxc#apply-generate-meta-phi
                                       (cons (gx#datum->syntax__0 '#f '%#begin)
                                             _L4487_)
                                       _state4462_))
                                    gx#current-expander-phi
                                    _phi4497_)))
                             (let* ((_g45054515_
                                     (lambda (_g45064512_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g45064512_)))
                                    (_g45044547_
                                     (lambda (_g45064518_)
                                       (if (gx#stx-pair? _g45064518_)
                                           (let ((_e45084520_
                                                  (gx#stx-e _g45064518_)))
                                             (let ((_hd45094523_
                                                    (##car _e45084520_))
                                                   (_tl45104525_
                                                    (##cdr _e45084520_)))
                                               (if (gx#identifier?
                                                    _hd45094523_)
                                                   (if (gx#stx-eq?
                                                        '%#begin
                                                        _hd45094523_)
                                                       ((lambda (_L4528_)
                                                          (let ((_c-body4545_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_$obj4542_)
                                   (not (eq? _$obj4542_ '#!void)))
                                 _L4528_)))
                    (if _block4499_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons '_gx#load-module
                                                            '()))
                                                (cons (cons '%#quote
                                                            (cons _block4499_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _c-body4545_))
                        (if (null? _c-body4545_)
                            '#!void
                            (cons '%#begin-syntax _c-body4545_)))))
                _tl45104525_)
               (_g45054515_ _g45064518_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g45054515_ _g45064518_))))
                                           (_g45054515_ _g45064518_)))))
                               (_g45044547_ _compiled4502_))))
                         _tl44694484_)))
                    (_g44644474_ _g44654477_)))))
        (_g44634550_ _stx4461_))))
  (define gxc#generate-meta-module%
    (lambda (_stx4392_ _state4393_)
      (begin
        (gxc#meta-state-end-phi! _state4393_)
        (let* ((_g43954409_
                (lambda (_g43964406_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g43964406_)))
               (_g43944458_
                (lambda (_g43964412_)
                  (if (gx#stx-pair? _g43964412_)
                      (let ((_e43994414_ (gx#stx-e _g43964412_)))
                        (let ((_hd44004417_ (##car _e43994414_))
                              (_tl44014419_ (##cdr _e43994414_)))
                          (if (gx#stx-pair? _tl44014419_)
                              (let ((_e44024422_ (gx#stx-e _tl44014419_)))
                                (let ((_hd44034425_ (##car _e44024422_))
                                      (_tl44044427_ (##cdr _e44024422_)))
                                  ((lambda (_L4430_ _L4431_)
                                     (let ((_key4444_
                                            (gx#core-identifier-key _L4431_)))
                                       (begin
                                         (if (interned-symbol? _key4444_)
                                             '#!void
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _stx4392_
                                              _L4431_
                                              _key4444_))
                                         (let* ((_ctx4446_
                                                 (gx#syntax-local-e__0
                                                  _L4431_))
                                                (_code4449_
                                                 (call-with-parameters
                                                  (lambda ()
                                                    (gxc#compile-e
                                                     (##structure-ref
                                                      _ctx4446_
                                                      '11
                                                      gx#module-context::t
                                                      '#f)
                                                     _state4393_))
                                                  gx#current-expander-context
                                                  _ctx4446_))
                                                (_rt4451_
                                                 (table-ref
                                                  (gxc#current-compile-runtime-sections)
                                                  _ctx4446_
                                                  '#f))
                                                (_loader4453_
                                                 (if _rt4451_
                                                     (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref (cons '_gx#load-module '()))
                               (cons (cons '%#quote (cons _rt4451_ '())) '())))
                   '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                                (_modid4455_
                                                 (gx#stx-e _L4431_)))
                                           (begin
                                             (gxc#meta-state-end-phi!
                                              _state4393_)
                                             (cons '%#module
                                                   (cons _modid4455_
                                                         (cons _code4449_
                                                               _loader4453_))))))))
                                   _tl44044427_
                                   _hd44034425_)))
                              (_g43954409_ _g43964412_))))
                      (_g43954409_ _g43964412_)))))
          (_g43944458_ _stx4392_)))))
  (define gxc#generate-meta-import-path
    (lambda (_ctx4382_ _context-chain4383_)
      (let _lp4385_ ((_ctx4387_ _ctx4382_) (_path4388_ '()))
        (let ((_super4390_
               (##structure-ref _ctx4387_ '3 gx#phi-context::t '#f)))
          (if (memq _super4390_ _context-chain4383_)
              (cons* '#f
                     (car (##structure-ref
                           _ctx4387_
                           '7
                           gx#module-context::t
                           '#f))
                     _path4388_)
              (if (##structure-instance-of? _super4390_ 'gx#module-context::t)
                  (_lp4385_
                   _super4390_
                   (cons (car (##structure-ref
                               _ctx4387_
                               '7
                               gx#module-context::t
                               '#f))
                         _path4388_))
                  (cons (make-symbol
                         '":"
                         (##structure-ref
                          _ctx4387_
                          '1
                          gx#expander-context::t
                          '#f))
                        _path4388_)))))))
  (define gxc#current-context-chain
    (lambda ()
      (let _lp4377_ ((_ctx4379_ (gx#current-expander-context)) (_r4380_ '()))
        (if (##structure-instance-of? _ctx4379_ 'gx#module-context::t)
            (_lp4377_
             (##structure-ref _ctx4379_ '3 gx#phi-context::t '#f)
             (cons _ctx4379_ _r4380_))
            _r4380_))))
  (define gxc#generate-meta-import%
    (lambda (_stx4146_ _state4147_)
      (letrec* ((_context-chain4149_ (gxc#current-context-chain))
                (_make-import-spec4150_
                 (lambda (_in4313_)
                   (let* ((_in43144326_ _in4313_)
                          (_E43164330_
                           (lambda ()
                             (error '"No clause matching" _in43144326_)))
                          (_K43174340_
                           (lambda (_phi4333_
                                    _name4334_
                                    _src-name4335_
                                    _src-phi4336_
                                    _src-key4337_
                                    _src-ctx4338_)
                             (cons _phi4333_
                                   (cons (gxc#generate-runtime-identifier-key
                                          _name4334_)
                                         (cons _src-phi4336_
                                               (cons (gxc#generate-runtime-identifier-key
                                                      _src-name4335_)
                                                     '())))))))
                     (if (##structure-direct-instance-of?
                          _in43144326_
                          (##type-id gx#module-import::t))
                         (let ((_e43184343_ (##vector-ref _in43144326_ '1)))
                           (if (##structure-direct-instance-of?
                                _e43184343_
                                (##type-id gx#module-export::t))
                               (let* ((_e43214346_
                                       (##vector-ref _e43184343_ '1))
                                      (_src-ctx4349_ _e43214346_)
                                      (_e43224351_
                                       (##vector-ref _e43184343_ '2))
                                      (_src-key4354_ _e43224351_)
                                      (_e43234356_
                                       (##vector-ref _e43184343_ '3))
                                      (_src-phi4359_ _e43234356_)
                                      (_e43244361_
                                       (##vector-ref _e43184343_ '4))
                                      (_src-name4364_ _e43244361_)
                                      (_e43194366_
                                       (##vector-ref _in43144326_ '2))
                                      (_name4369_ _e43194366_)
                                      (_e43204371_
                                       (##vector-ref _in43144326_ '3))
                                      (_phi4374_ _e43204371_))
                                 (_K43174340_
                                  _phi4374_
                                  _name4369_
                                  _src-name4364_
                                  _src-phi4359_
                                  _src-key4354_
                                  _src-ctx4349_))
                               (_E43164330_)))
                         (_E43164330_)))))
                (_make-import-path4151_
                 (lambda (_ctx4311_)
                   (gxc#generate-meta-import-path
                    _ctx4311_
                    _context-chain4149_)))
                (_make-import-spec-in4152_
                 (lambda (_ctx4308_ _in4309_)
                   (cons 'spec:
                         (cons (_make-import-path4151_ _ctx4308_)
                               (reverse _in4309_))))))
        (begin
          (gxc#meta-state-end-phi! _state4147_)
          (let* ((_g41544164_
                  (lambda (_g41554161_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g41554161_)))
                 (_g41534305_
                  (lambda (_g41554167_)
                    (if (gx#stx-pair? _g41554167_)
                        (let ((_e41574169_ (gx#stx-e _g41554167_)))
                          (let ((_hd41584172_ (##car _e41574169_))
                                (_tl41594174_ (##cdr _e41574169_)))
                            ((lambda (_L4177_)
                               (let _lp4188_ ((_rest4190_ _L4177_)
                                              (_current-src4191_ '#f)
                                              (_current-in4192_ '())
                                              (_r4193_ '()))
                                 (let* ((_rest41944202_ _rest4190_)
                                        (_E41974206_
                                         (lambda ()
                                           (error '"No clause matching"
                                                  _rest41944202_)))
                                        (_else41964212_
                                         (lambda ()
                                           (let ((_r4210_ (if _current-src4191_
                                                              (cons (_make-import-spec-in4152_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _current-src4191_
                             _current-in4192_)
                            _r4193_)
                      _r4193_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons '%#import
                                                   (reverse _r4210_)))))
                                        (_K41984293_
                                         (lambda (_rest4215_ _in4216_)
                                           (if (##structure-direct-instance-of?
                                                _in4216_
                                                'gx#module-import::t)
                                               (let* ((_in42174224_ _in4216_)
                                                      (_E42194228_
                                                       (lambda ()
                                                         (error '"No clause matching"
                                                                _in42174224_)))
                                                      (_K42204233_
                                                       (lambda (_src-ctx4231_)
                                                         (if (eq? _current-src4191_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _src-ctx4231_)
                     (_lp4188_
                      _rest4215_
                      _current-src4191_
                      (cons (_make-import-spec4150_ _in4216_) _current-in4192_)
                      _r4193_)
                     (if _current-src4191_
                         (_lp4188_
                          _rest4215_
                          _src-ctx4231_
                          (cons (_make-import-spec4150_ _in4216_) '())
                          (cons (_make-import-spec-in4152_
                                 _current-src4191_
                                 _current-in4192_)
                                _r4193_))
                         (_lp4188_
                          _rest4215_
                          _src-ctx4231_
                          (cons (_make-import-spec4150_ _in4216_) '())
                          _r4193_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (##structure-direct-instance-of?
                                                      _in42174224_
                                                      (##type-id
                                                       gx#module-import::t))
                                                     (let ((_e42214236_
                                                            (##vector-ref
                                                             _in42174224_
                                                             '1)))
                                                       (if (##structure-direct-instance-of?
                                                            _e42214236_
                                                            (##type-id
                                                             gx#module-export::t))
                                                           (let* ((_e42224239_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (##vector-ref _e42214236_ '1))
                          (_src-ctx4242_ _e42224239_))
                     (_K42204233_ _src-ctx4242_))
                   (_E42194228_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E42194228_)))
                                               (if (##structure-direct-instance-of?
                                                    _in4216_
                                                    'gx#import-set::t)
                                                   (let* ((_phi4244_
                                                           (##direct-structure-ref
                                                            _in4216_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src4246_
                                                           (##direct-structure-ref
                                                            _in4216_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src-in4286_
                                                           (let* ((_g42474256_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_make-import-path4151_ _src4246_))
                          (_E42504260_
                           (lambda ()
                             (error '"No clause matching" _g42474256_)))
                          (_try-match42494271_
                           (lambda ()
                             (let* ((_K42514266_
                                     (lambda (_path4264_)
                                       (cons 'in: _path4264_)))
                                    (_path4269_ _g42474256_))
                               (_K42514266_ _path4269_))))
                          (_K42524276_ (lambda (_path4274_) _path4274_)))
                     (if (##pair? _g42474256_)
                         (let ((_hd42534279_ (##car _g42474256_))
                               (_tl42544281_ (##cdr _g42474256_)))
                           (let ((_path4284_ _hd42534279_))
                             (if (##null? _tl42544281_)
                                 (_K42524276_ _path4284_)
                                 (_try-match42494271_))))
                         (_try-match42494271_))))
                  (_r4288_ (if _current-src4191_
                               (cons (_make-import-spec-in4152_
                                      _current-src4191_
                                      _current-in4192_)
                                     _r4193_)
                               _r4193_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_lp4188_
                                                      _rest4215_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _phi4244_)
                                                                _src-in4286_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _phi4244_ (cons _src-in4286_ '()))))
                    _r4288_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (##structure-instance-of?
                                                        _in4216_
                                                        'gx#module-context::t)
                                                       (let ((_r4291_ (if _current-src4191_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (_make-import-spec-in4152_
                                         _current-src4191_
                                         _current-in4192_)
                                        _r4193_)
                                  _r4193_)))
                 (_lp4188_
                  _rest4215_
                  '#f
                  '()
                  (cons (cons 'runtime: (_make-import-path4151_ _in4216_))
                        _r4291_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (##pair? _rest41944202_)
                                       (let ((_hd41994296_
                                              (##car _rest41944202_))
                                             (_tl42004298_
                                              (##cdr _rest41944202_)))
                                         (let* ((_in4301_ _hd41994296_)
                                                (_rest4303_ _tl42004298_))
                                           (_K41984293_ _rest4303_ _in4301_)))
                                       (_else41964212_)))))
                             _tl41594174_)))
                        (_g41544164_ _g41554167_)))))
            (_g41534305_ _stx4146_))))))
  (define gxc#generate-meta-export%
    (lambda (_stx3956_ _state3957_)
      (letrec* ((_context-chain3959_ (gxc#current-context-chain))
                (_make-import-path3960_
                 (lambda (_ctx4144_)
                   (gxc#generate-meta-import-path
                    _ctx4144_
                    _context-chain3959_))))
        (let* ((_g39623972_
                (lambda (_g39633969_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g39633969_)))
               (_g39614141_
                (lambda (_g39633975_)
                  (if (gx#stx-pair? _g39633975_)
                      (let ((_e39653977_ (gx#stx-e _g39633975_)))
                        (let ((_hd39663980_ (##car _e39653977_))
                              (_tl39673982_ (##cdr _e39653977_)))
                          ((lambda (_L3985_)
                             (let _lp3996_ ((_rest3998_ _L3985_) (_r3999_ '()))
                               (let* ((_rest40004008_ _rest3998_)
                                      (_E40034012_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _rest40004008_)))
                                      (_else40024016_
                                       (lambda ()
                                         (cons '%#export (reverse _r3999_))))
                                      (_K40044129_
                                       (lambda (_rest4019_ _out4020_)
                                         (let* ((_out40214034_ _out4020_)
                                                (_E40244038_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _out40214034_)))
                                                (_try-match40234101_
                                                 (lambda ()
                                                   (let ((_K40254088_
                                                          (lambda (_phi4042_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _src4043_)
                    (let* ((_out4083_
                            (if _src4043_
                                (cons 'import:
                                      (cons (let* ((_g40444053_
                                                    (_make-import-path3960_
                                                     _src4043_))
                                                   (_E40474057_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _g40444053_)))
                                                   (_try-match40464068_
                                                    (lambda ()
                                                      (let* ((_K40484063_
                                                              (lambda (_path4061_)
                                                                (cons 'in:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _path4061_)))
                     (_path4066_ _g40444053_))
                (_K40484063_ _path4066_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K40494073_
                                                    (lambda (_path4071_)
                                                      _path4071_)))
                                              (if (##pair? _g40444053_)
                                                  (let ((_hd40504076_
                                                         (##car _g40444053_))
                                                        (_tl40514078_
                                                         (##cdr _g40444053_)))
                                                    (let ((_path4081_
                                                           _hd40504076_))
                                                      (if (##null? _tl40514078_)
                                                          (_K40494073_
                                                           _path4081_)
                                                          (_try-match40464068_))))
                                                  (_try-match40464068_)))
                                            '()))
                                '#t))
                           (_out4085_
                            (if (fxzero? _phi4042_)
                                _out4083_
                                (cons 'phi:
                                      (cons _phi4042_ (cons _out4083_ '()))))))
                      (_lp3996_ _rest4019_ (cons _out4085_ _r3999_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##structure-direct-instance-of?
                                                          _out40214034_
                                                          (##type-id
                                                           gx#export-set::t))
                                                         (let* ((_e40264091_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref _out40214034_ '1))
                        (_src4094_ _e40264091_)
                        (_e40274096_ (##vector-ref _out40214034_ '2))
                        (_phi4099_ _e40274096_))
                   (_K40254088_ _phi4099_ _src4094_))
                 (_E40244038_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_K40284108_
                                                 (lambda (_name4104_
                                                          _phi4105_
                                                          _key4106_)
                                                   (_lp3996_
                                                    _rest4019_
                                                    (cons (cons 'spec:
                                                                (cons _phi4105_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gxc#generate-runtime-identifier-key
                                     _key4106_)
                                    (cons (gxc#generate-runtime-identifier-key
                                           _name4104_)
                                          '()))))
                  _r3999_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (##structure-direct-instance-of?
                                                _out40214034_
                                                (##type-id
                                                 gx#module-export::t))
                                               (let* ((_e40294111_
                                                       (##vector-ref
                                                        _out40214034_
                                                        '1))
                                                      (_e40304114_
                                                       (##vector-ref
                                                        _out40214034_
                                                        '2))
                                                      (_key4117_ _e40304114_)
                                                      (_e40314119_
                                                       (##vector-ref
                                                        _out40214034_
                                                        '3))
                                                      (_phi4122_ _e40314119_)
                                                      (_e40324124_
                                                       (##vector-ref
                                                        _out40214034_
                                                        '4))
                                                      (_name4127_ _e40324124_))
                                                 (_K40284108_
                                                  _name4127_
                                                  _phi4122_
                                                  _key4117_))
                                               (_try-match40234101_))))))
                                 (if (##pair? _rest40004008_)
                                     (let ((_hd40054132_
                                            (##car _rest40004008_))
                                           (_tl40064134_
                                            (##cdr _rest40004008_)))
                                       (let* ((_out4137_ _hd40054132_)
                                              (_rest4139_ _tl40064134_))
                                         (_K40044129_ _rest4139_ _out4137_)))
                                     (_else40024016_)))))
                           _tl39673982_)))
                      (_g39623972_ _g39633975_)))))
          (_g39614141_ _stx3956_)))))
  (define gxc#generate-meta-provide%
    (lambda (_stx3917_ _state3918_)
      (begin
        (gxc#meta-state-end-phi! _state3918_)
        (let* ((_g39203930_
                (lambda (_g39213927_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g39213927_)))
               (_g39193953_
                (lambda (_g39213933_)
                  (if (gx#stx-pair? _g39213933_)
                      (let ((_e39233935_ (gx#stx-e _g39213933_)))
                        (let ((_hd39243938_ (##car _e39233935_))
                              (_tl39253940_ (##cdr _e39233935_)))
                          ((lambda (_L3943_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _L3943_)))
                           _tl39253940_)))
                      (_g39203930_ _g39213933_)))))
          (_g39193953_ _stx3917_)))))
  (define gxc#generate-meta-extern%
    (lambda (_stx3788_ _state3789_)
      (letrec ((_generate13791_
                (lambda (_id3912_ _eid3913_)
                  (let ((_eid3915_ (gx#stx-e _eid3913_)))
                    (begin
                      (if (interned-symbol? _eid3915_)
                          '#!void
                          (gxc#raise-compile-error
                           '"Cannot compile extern reference"
                           _stx3788_
                           _eid3915_))
                      (cons (gxc#generate-runtime-identifier _id3912_)
                            (cons _eid3915_ '())))))))
        (let* ((_g37933821_
                (lambda (_g37943818_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g37943818_)))
               (_g37923909_
                (lambda (_g37943824_)
                  (if (gx#stx-pair? _g37943824_)
                      (let ((_e37973826_ (gx#stx-e _g37943824_)))
                        (let ((_hd37983829_ (##car _e37973826_))
                              (_tl37993831_ (##cdr _e37973826_)))
                          (if (gx#stx-pair/null? _tl37993831_)
                              (if (fx>= (gx#stx-length _tl37993831_) '0)
                                  (let ((_g11105_
                                         (gx#syntax-split-splice
                                          _tl37993831_
                                          '0)))
                                    (begin
                                      (let ((_g11106_ (values-count _g11105_)))
                                        (if (not (fx= _g11106_ 2))
                                            (error "Context expects 2 values"
                                                   _g11106_)))
                                      (let ((_target38003834_
                                             (values-ref _g11105_ 0))
                                            (_tl38023836_
                                             (values-ref _g11105_ 1)))
                                        (if (gx#stx-null? _tl38023836_)
                                            (letrec ((_loop38033839_
                                                      (lambda (_hd38013842_
                                                               _eid38073844_
                                                               _id38083846_)
                                                        (if (gx#stx-pair?
                                                             _hd38013842_)
                                                            (let ((_e38043849_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd38013842_)))
                      (let ((_lp-hd38053852_ (##car _e38043849_))
                            (_lp-tl38063854_ (##cdr _e38043849_)))
                        (if (gx#stx-pair? _lp-hd38053852_)
                            (let ((_e38113857_ (gx#stx-e _lp-hd38053852_)))
                              (let ((_hd38123860_ (##car _e38113857_))
                                    (_tl38133862_ (##cdr _e38113857_)))
                                (if (gx#stx-pair? _tl38133862_)
                                    (let ((_e38143865_
                                           (gx#stx-e _tl38133862_)))
                                      (let ((_hd38153868_ (##car _e38143865_))
                                            (_tl38163870_ (##cdr _e38143865_)))
                                        (if (gx#stx-null? _tl38163870_)
                                            (_loop38033839_
                                             _lp-tl38063854_
                                             (cons _hd38153868_ _eid38073844_)
                                             (cons _hd38123860_ _id38083846_))
                                            (_g37933821_ _g37943824_))))
                                    (_g37933821_ _g37943824_))))
                            (_g37933821_ _g37943824_))))
                    (let ((_eid38093873_ (reverse _eid38073844_))
                          (_id38103875_ (reverse _id38083846_)))
                      ((lambda (_L3878_ _L3879_)
                         (cons '%#extern
                               (map _generate13791_
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g38943897_ _g38953899_)
                                                (cons _g38943897_ _g38953899_))
                                              '()
                                              _L3879_))
                                    (begin
                                      '#!void
                                      (foldr1 (lambda (_g39013904_ _g39023906_)
                                                (cons _g39013904_ _g39023906_))
                                              '()
                                              _L3878_)))))
                       _eid38093873_
                       _id38103875_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop38033839_
                                               _target38003834_
                                               '()
                                               '()))
                                            (_g37933821_ _g37943824_)))))
                                  (_g37933821_ _g37943824_))
                              (_g37933821_ _g37943824_))))
                      (_g37933821_ _g37943824_)))))
          (_g37923909_ _stx3788_)))))
  (define gxc#generate-meta-define-values%
    (lambda (_stx3583_ _state3584_)
      (letrec ((_generate13586_
                (lambda (_id3783_)
                  (let ((_eid3785_ (gxc#generate-runtime-binding-id _id3783_))
                        (_ident3786_
                         (gxc#generate-runtime-identifier _id3783_)))
                    (cons '%#define-runtime
                          (cons _ident3786_ (cons _eid3785_ '()))))))
               (_generate*3587_
                (lambda (_all3751_)
                  (let* ((_all37523760_ _all3751_)
                         (_E37553764_
                          (lambda ()
                            (error '"No clause matching" _all37523760_)))
                         (_else37543768_ (lambda () (cons '%#begin _all3751_)))
                         (_K37563773_ (lambda (_one3771_) _one3771_)))
                    (if (##pair? _all37523760_)
                        (let ((_hd37573776_ (##car _all37523760_))
                              (_tl37583778_ (##cdr _all37523760_)))
                          (let ((_one3781_ _hd37573776_))
                            (if (##null? _tl37583778_)
                                (_K37563773_ _one3781_)
                                (_else37543768_))))
                        (_else37543768_))))))
        (let* ((_g35893606_
                (lambda (_g35903603_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g35903603_)))
               (_g35883748_
                (lambda (_g35903609_)
                  (if (gx#stx-pair? _g35903609_)
                      (let ((_e35933611_ (gx#stx-e _g35903609_)))
                        (let ((_hd35943614_ (##car _e35933611_))
                              (_tl35953616_ (##cdr _e35933611_)))
                          (if (gx#stx-pair? _tl35953616_)
                              (let ((_e35963619_ (gx#stx-e _tl35953616_)))
                                (let ((_hd35973622_ (##car _e35963619_))
                                      (_tl35983624_ (##cdr _e35963619_)))
                                  (if (gx#stx-pair? _tl35983624_)
                                      (let ((_e35993627_
                                             (gx#stx-e _tl35983624_)))
                                        (let ((_hd36003630_
                                               (##car _e35993627_))
                                              (_tl36013632_
                                               (##cdr _e35993627_)))
                                          (if (gx#stx-null? _tl36013632_)
                                              ((lambda (_L3635_ _L3636_)
                                                 (let _lp3652_ ((_rest3654_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L3636_)
                        (_r3655_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_g36603676_
                                                           (lambda (_g36613673_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g36613673_)))
                                                          (_g36593683_
                                                           (lambda (_g36613679_)
                                                             ((lambda ()
                                                                (_generate*3587_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (reverse _r3655_))))))
                  (_g36583699_
                   (lambda (_g36613686_)
                     ((lambda (_L3688_)
                        (if (gx#identifier? _L3688_)
                            (_generate*3587_
                             (foldl1 cons
                                     (cons (_generate13586_ _L3688_) '())
                                     _r3655_))
                            (_g36593683_ _g36613686_)))
                      _g36613686_)))
                  (_g36573723_
                   (lambda (_g36613702_)
                     (if (gx#stx-pair? _g36613702_)
                         (let ((_e36683704_ (gx#stx-e _g36613702_)))
                           (let ((_hd36693707_ (##car _e36683704_))
                                 (_tl36703709_ (##cdr _e36683704_)))
                             ((lambda (_L3712_ _L3713_)
                                (_lp3652_
                                 _L3712_
                                 (cons (_generate13586_ _L3713_) _r3655_)))
                              _tl36703709_
                              _hd36693707_)))
                         (_g36583699_ _g36613702_))))
                  (_g36563745_
                   (lambda (_g36613726_)
                     (if (gx#stx-pair? _g36613726_)
                         (let ((_e36633728_ (gx#stx-e _g36613726_)))
                           (let ((_hd36643731_ (##car _e36633728_))
                                 (_tl36653733_ (##cdr _e36633728_)))
                             (if (gx#stx-datum? _hd36643731_)
                                 (if (equal? (gx#stx-e _hd36643731_) '#f)
                                     ((lambda (_L3736_)
                                        (_lp3652_ _L3736_ _r3655_))
                                      _tl36653733_)
                                     (_g36573723_ _g36613726_))
                                 (_g36573723_ _g36613726_))))
                         (_g36573723_ _g36613726_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g36563745_
                                                      _rest3654_))))
                                               _hd36003630_
                                               _hd35973622_)
                                              (_g35893606_ _g35903609_))))
                                      (_g35893606_ _g35903609_))))
                              (_g35893606_ _g35903609_))))
                      (_g35893606_ _g35903609_)))))
          (_g35883748_ _stx3583_)))))
  (define gxc#generate-meta-define-syntax%
    (lambda (_stx3480_ _state3481_)
      (let* ((_g34833500_
              (lambda (_g34843497_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g34843497_)))
             (_g34823580_
              (lambda (_g34843503_)
                (if (gx#stx-pair? _g34843503_)
                    (let ((_e34873505_ (gx#stx-e _g34843503_)))
                      (let ((_hd34883508_ (##car _e34873505_))
                            (_tl34893510_ (##cdr _e34873505_)))
                        (if (gx#stx-pair? _tl34893510_)
                            (let ((_e34903513_ (gx#stx-e _tl34893510_)))
                              (let ((_hd34913516_ (##car _e34903513_))
                                    (_tl34923518_ (##cdr _e34903513_)))
                                (if (gx#stx-pair? _tl34923518_)
                                    (let ((_e34933521_
                                           (gx#stx-e _tl34923518_)))
                                      (let ((_hd34943524_ (##car _e34933521_))
                                            (_tl34953526_ (##cdr _e34933521_)))
                                        (if (gx#stx-null? _tl34953526_)
                                            ((lambda (_L3529_ _L3530_)
                                               (let* ((_eid3545_
                                                       (gxc#generate-runtime-binding-id
                                                        _L3530_))
                                                      (_phi3547_
                                                       (fx+ (gx#current-expander-phi)
                                                            '1))
                                                      (_block3549_
                                                       (gxc#meta-state-begin-phi!
                                                        _state3481_
                                                        _phi3547_)))
                                                 (begin
                                                   (let* ((_g35523559_
                                                           (lambda (_g35533556_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g35533556_)))
                                                          (_g35513577_
                                                           (lambda (_g35533562_)
                                                             ((lambda (_L3564_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#meta-state-add-phi!
                           _state3481_
                           _phi3547_
                           (cons (gx#datum->syntax__0 '#f '%#define-runtime)
                                 (cons _L3564_ (cons _L3529_ '()))))))
                      _g35533562_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g35513577_ _eid3545_))
                                                   (if _block3549_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons '_gx#load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _block3549_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (gxc#generate-runtime-identifier
                                              _L3530_)
                                             (cons _eid3545_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (gxc#generate-runtime-identifier _L3530_)
                           (cons _eid3545_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd34943524_
                                             _hd34913516_)
                                            (_g34833500_ _g34843503_))))
                                    (_g34833500_ _g34843503_))))
                            (_g34833500_ _g34843503_))))
                    (_g34833500_ _g34843503_)))))
        (_g34823580_ _stx3480_))))
  (define gxc#generate-meta-define-alias%
    (lambda (_stx3412_ _state3413_)
      (let* ((_g34153432_
              (lambda (_g34163429_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g34163429_)))
             (_g34143477_
              (lambda (_g34163435_)
                (if (gx#stx-pair? _g34163435_)
                    (let ((_e34193437_ (gx#stx-e _g34163435_)))
                      (let ((_hd34203440_ (##car _e34193437_))
                            (_tl34213442_ (##cdr _e34193437_)))
                        (if (gx#stx-pair? _tl34213442_)
                            (let ((_e34223445_ (gx#stx-e _tl34213442_)))
                              (let ((_hd34233448_ (##car _e34223445_))
                                    (_tl34243450_ (##cdr _e34223445_)))
                                (if (gx#stx-pair? _tl34243450_)
                                    (let ((_e34253453_
                                           (gx#stx-e _tl34243450_)))
                                      (let ((_hd34263456_ (##car _e34253453_))
                                            (_tl34273458_ (##cdr _e34253453_)))
                                        (if (gx#stx-null? _tl34273458_)
                                            ((lambda (_L3461_ _L3462_)
                                               (cons '%#define-alias
                                                     (cons (gxc#generate-runtime-identifier
                                                            _L3462_)
                                                           (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L3461_)
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd34263456_
                                             _hd34233448_)
                                            (_g34153432_ _g34163435_))))
                                    (_g34153432_ _g34163435_))))
                            (_g34153432_ _g34163435_))))
                    (_g34153432_ _g34163435_)))))
        (_g34143477_ _stx3412_))))
  (define gxc#generate-meta-phi-define-values%
    (lambda (_stx3409_ _state3410_)
      (begin
        (gxc#meta-state-add-phi!
         _state3410_
         (gx#current-expander-phi)
         _stx3409_)
        (gxc#generate-meta-define-values% _stx3409_ _state3410_))))
  (define gxc#generate-meta-phi-expr
    (lambda (_stx3406_ _state3407_)
      (begin
        (gxc#meta-state-add-phi!
         _state3407_
         (gx#current-expander-phi)
         _stx3406_)
        '#!void)))
  (define gxc#meta-state::t
    (make-struct-type 'gxc#meta-state::t '#f '4 'meta-state '() ':init!))
  (define gxc#meta-state? (make-struct-predicate gxc#meta-state::t))
  (define gxc#make-meta-state
    (lambda _$args3403_
      (apply make-struct-instance gxc#meta-state::t _$args3403_)))
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
    (lambda (_self3400_ _ctx3401_)
      (struct-instance-init!
       _self3400_
       (symbol->string
        (##structure-ref _ctx3401_ '1 gx#expander-context::t '#f))
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
    (lambda _$args3397_
      (apply make-struct-instance gxc#meta-state-block::t _$args3397_)))
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
    (lambda (_state3356_ _phi3357_)
      (let* ((_state33583366_ _state3356_)
             (_E33603370_
              (lambda () (error '"No clause matching" _state33583366_)))
             (_K33613379_
              (lambda (_open3373_ _n3374_ _src3375_)
                (if (table-ref _open3373_ _phi3357_ '#f)
                    '#f
                    (let ((_block-ref3377_
                           (string-append
                            _src3375_
                            '"__"
                            (number->string _n3374_))))
                      (begin
                        (##structure-set!
                         _state3356_
                         (fx+ _n3374_ '1)
                         '2
                         gxc#meta-state::t
                         '#f)
                        (table-set!
                         _open3373_
                         _phi3357_
                         (##structure
                          gxc#meta-state-block::t
                          (gx#current-expander-context)
                          _phi3357_
                          _n3374_
                          '()))
                        _block-ref3377_))))))
        (if (##structure-instance-of?
             _state33583366_
             (##type-id gxc#meta-state::t))
            (let* ((_e33623382_ (##vector-ref _state33583366_ '1))
                   (_src3385_ _e33623382_)
                   (_e33633387_ (##vector-ref _state33583366_ '2))
                   (_n3390_ _e33633387_)
                   (_e33643392_ (##vector-ref _state33583366_ '3))
                   (_open3395_ _e33643392_))
              (_K33613379_ _open3395_ _n3390_ _src3385_))
            (_E33603370_)))))
  (define gxc#meta-state-add-phi!
    (lambda (_state3350_ _phi3351_ _stx3352_)
      (let ((_block3354_
             (table-ref
              (##structure-ref _state3350_ '3 gxc#meta-state::t '#f)
              _phi3351_
              '#f)))
        (##structure-set!
         _block3354_
         (cons _stx3352_
               (##structure-ref _block3354_ '4 gxc#meta-state-block::t '#f))
         '4
         gxc#meta-state-block::t
         '#f))))
  (define gxc#meta-state-end-phi!
    (lambda (_state3345_)
      (begin
        (##structure-set!
         _state3345_
         (hash-fold
          (lambda (_g11107_ _block3347_ _r3348_) (cons _block3347_ _r3348_))
          (##structure-ref _state3345_ '4 gxc#meta-state::t '#f)
          (##structure-ref _state3345_ '3 gxc#meta-state::t '#f))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _state3345_
         (make-hash-table-eq)
         '3
         gxc#meta-state::t
         '#f))))
  (define gxc#meta-state-end!
    (lambda (_state3297_)
      (begin
        (gxc#meta-state-end-phi! _state3297_)
        (foldl1 (lambda (_block3299_ _r3300_)
                  (let* ((_block33013310_ _block3299_)
                         (_E33033314_
                          (lambda ()
                            (error '"No clause matching" _block33013310_)))
                         (_K33043322_
                          (lambda (_code3317_ _n3318_ _phi3319_ _ctx3320_)
                            (if (null? _code3317_)
                                _r3300_
                                (cons (cons _ctx3320_
                                            (cons _phi3319_
                                                  (cons _n3318_
                                                        (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (reverse _code3317_))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _r3300_)))))
                    (if (##structure-instance-of?
                         _block33013310_
                         (##type-id gxc#meta-state-block::t))
                        (let* ((_e33053325_ (##vector-ref _block33013310_ '1))
                               (_ctx3328_ _e33053325_)
                               (_e33063330_ (##vector-ref _block33013310_ '2))
                               (_phi3333_ _e33063330_)
                               (_e33073335_ (##vector-ref _block33013310_ '3))
                               (_n3338_ _e33073335_)
                               (_e33083340_ (##vector-ref _block33013310_ '4))
                               (_code3343_ _e33083340_))
                          (_K33043322_ _code3343_ _n3338_ _phi3333_ _ctx3328_))
                        (_E33033314_))))
                '()
                (##structure-ref _state3297_ '4 gxc#meta-state::t '#f)))))
  (define gxc#collect-expression-refs
    (lambda (_stx3293_)
      (let ((_ht3295_ (make-hash-table-eq)))
        (begin
          (gxc#apply-collect-expression-refs _stx3293_ _ht3295_)
          _ht3295_))))
  (define gxc#collect-refs-ref%
    (lambda (_stx3236_ _ht3237_)
      (let* ((_g32393252_
              (lambda (_g32403249_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g32403249_)))
             (_g32383290_
              (lambda (_g32403255_)
                (if (gx#stx-pair? _g32403255_)
                    (let ((_e32423257_ (gx#stx-e _g32403255_)))
                      (let ((_hd32433260_ (##car _e32423257_))
                            (_tl32443262_ (##cdr _e32423257_)))
                        (if (gx#stx-pair? _tl32443262_)
                            (let ((_e32453265_ (gx#stx-e _tl32443262_)))
                              (let ((_hd32463268_ (##car _e32453265_))
                                    (_tl32473270_ (##cdr _e32453265_)))
                                (if (gx#stx-null? _tl32473270_)
                                    ((lambda (_L3273_)
                                       (let* ((_bind3285_
                                               (gx#resolve-identifier__0
                                                _L3273_))
                                              (_eid3287_
                                               (if _bind3285_
                                                   (##structure-ref
                                                    _bind3285_
                                                    '1
                                                    gx#binding::t
                                                    '#f)
                                                   (gx#stx-e _L3273_))))
                                         (table-set!
                                          _ht3237_
                                          _eid3287_
                                          _eid3287_)))
                                     _hd32463268_)
                                    (_g32393252_ _g32403255_))))
                            (_g32393252_ _g32403255_))))
                    (_g32393252_ _g32403255_)))))
        (_g32383290_ _stx3236_))))
  (define gxc#collect-refs-setq%
    (lambda (_stx3163_ _ht3164_)
      (let* ((_g31663183_
              (lambda (_g31673180_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g31673180_)))
             (_g31653233_
              (lambda (_g31673186_)
                (if (gx#stx-pair? _g31673186_)
                    (let ((_e31703188_ (gx#stx-e _g31673186_)))
                      (let ((_hd31713191_ (##car _e31703188_))
                            (_tl31723193_ (##cdr _e31703188_)))
                        (if (gx#stx-pair? _tl31723193_)
                            (let ((_e31733196_ (gx#stx-e _tl31723193_)))
                              (let ((_hd31743199_ (##car _e31733196_))
                                    (_tl31753201_ (##cdr _e31733196_)))
                                (if (gx#stx-pair? _tl31753201_)
                                    (let ((_e31763204_
                                           (gx#stx-e _tl31753201_)))
                                      (let ((_hd31773207_ (##car _e31763204_))
                                            (_tl31783209_ (##cdr _e31763204_)))
                                        (if (gx#stx-null? _tl31783209_)
                                            ((lambda (_L3212_ _L3213_)
                                               (let* ((_bind3228_
                                                       (gx#resolve-identifier__0
                                                        _L3213_))
                                                      (_eid3230_
                                                       (if _bind3228_
                                                           (##structure-ref
                                                            _bind3228_
                                                            '1
                                                            gx#binding::t
                                                            '#f)
                                                           (gx#stx-e
                                                            _L3213_))))
                                                 (begin
                                                   (table-set!
                                                    _ht3164_
                                                    _eid3230_
                                                    _eid3230_)
                                                   (gxc#compile-e
                                                    _L3212_
                                                    _ht3164_))))
                                             _hd31773207_
                                             _hd31743199_)
                                            (_g31663183_ _g31673186_))))
                                    (_g31663183_ _g31673186_))))
                            (_g31663183_ _g31673186_))))
                    (_g31663183_ _g31673186_)))))
        (_g31653233_ _stx3163_))))
  (define gxc#find-runtime-begin%
    (lambda (_stx3125_)
      (let* ((_g31273137_
              (lambda (_g31283134_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g31283134_)))
             (_g31263160_
              (lambda (_g31283140_)
                (if (gx#stx-pair? _g31283140_)
                    (let ((_e31303142_ (gx#stx-e _g31283140_)))
                      (let ((_hd31313145_ (##car _e31303142_))
                            (_tl31323147_ (##cdr _e31303142_)))
                        ((lambda (_L3150_) (ormap1 gxc#compile-e _L3150_))
                         _tl31323147_)))
                    (_g31273137_ _g31283140_)))))
        (_g31263160_ _stx3125_))))
  (define gxc#find-lambda-expression-begin%
    (lambda (_stx3087_)
      (let* ((_g30893099_
              (lambda (_g30903096_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g30903096_)))
             (_g30883122_
              (lambda (_g30903102_)
                (if (gx#stx-pair? _g30903102_)
                    (let ((_e30923104_ (gx#stx-e _g30903102_)))
                      (let ((_hd30933107_ (##car _e30923104_))
                            (_tl30943109_ (##cdr _e30923104_)))
                        ((lambda (_L3112_) (gxc#compile-e (last _L3112_)))
                         _tl30943109_)))
                    (_g30893099_ _g30903102_)))))
        (_g30883122_ _stx3087_))))
  (define gxc#find-lambda-expression-let-values%
    (lambda (_stx3020_)
      (let* ((_g30223039_
              (lambda (_g30233036_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g30233036_)))
             (_g30213084_
              (lambda (_g30233042_)
                (if (gx#stx-pair? _g30233042_)
                    (let ((_e30263044_ (gx#stx-e _g30233042_)))
                      (let ((_hd30273047_ (##car _e30263044_))
                            (_tl30283049_ (##cdr _e30263044_)))
                        (if (gx#stx-pair? _tl30283049_)
                            (let ((_e30293052_ (gx#stx-e _tl30283049_)))
                              (let ((_hd30303055_ (##car _e30293052_))
                                    (_tl30313057_ (##cdr _e30293052_)))
                                (if (gx#stx-pair? _tl30313057_)
                                    (let ((_e30323060_
                                           (gx#stx-e _tl30313057_)))
                                      (let ((_hd30333063_ (##car _e30323060_))
                                            (_tl30343065_ (##cdr _e30323060_)))
                                        (if (gx#stx-null? _tl30343065_)
                                            ((lambda (_L3068_ _L3069_)
                                               (gxc#compile-e _L3068_))
                                             _hd30333063_
                                             _hd30303055_)
                                            (_g30223039_ _g30233042_))))
                                    (_g30223039_ _g30233042_))))
                            (_g30223039_ _g30233042_))))
                    (_g30223039_ _g30233042_)))))
        (_g30213084_ _stx3020_)))))
