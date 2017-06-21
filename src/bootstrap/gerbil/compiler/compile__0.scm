(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#current-compile-methods (make-parameter '#f))
  (define gxc#current-compile-lift (make-parameter '#f))
  (define gxc#compile-e
    (lambda (_stx10272_ . _args10273_)
      (let ((_g1027510285_
             (lambda (_g1027610282_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1027610282_))))
        (let ((_g1027410313_
               (lambda (_g1027610288_)
                 (if (gx#stx-pair? _g1027610288_)
                     (let ((_e1027810290_ (gx#stx-e _g1027610288_)))
                       (let ((_hd1027910293_ (##car _e1027810290_))
                             (_tl1028010295_ (##cdr _e1027810290_)))
                         ((lambda (_L10298_)
                            (let ((_$e10308_
                                   (table-ref
                                    (gxc#current-compile-methods)
                                    (gx#stx-e _L10298_)
                                    '#f)))
                              (if _$e10308_
                                  ((lambda (_method10311_)
                                     (apply _method10311_
                                            _stx10272_
                                            _args10273_))
                                   _$e10308_)
                                  (gxc#raise-compile-error
                                   '"Cannot compile; missing method"
                                   _stx10272_
                                   _L10298_))))
                          _hd1027910293_)))
                     (_g1027510285_ _g1027610288_)))))
          (_g1027410313_ _stx10272_)))))
  (define gxc#&void-expression
    (make-promise
     (lambda ()
       (let ((_tbl10269_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl10269_ '%#lambda void)
           (table-set! _tbl10269_ '%#case-lambda void)
           (table-set! _tbl10269_ '%#let-values void)
           (table-set! _tbl10269_ '%#letrec-values void)
           (table-set! _tbl10269_ '%#letrec*-values void)
           (table-set! _tbl10269_ '%#quote void)
           (table-set! _tbl10269_ '%#quote-syntax void)
           (table-set! _tbl10269_ '%#call void)
           (table-set! _tbl10269_ '%#if void)
           (table-set! _tbl10269_ '%#ref void)
           (table-set! _tbl10269_ '%#set! void)
           (table-set! _tbl10269_ '%#struct-instance? void)
           (table-set! _tbl10269_ '%#struct-direct-instance? void)
           (table-set! _tbl10269_ '%#struct-ref void)
           (table-set! _tbl10269_ '%#struct-set! void)
           (table-set! _tbl10269_ '%#struct-direct-ref void)
           (table-set! _tbl10269_ '%#struct-direct-set! void)
           _tbl10269_)))))
  (define gxc#&void-special-form
    (make-promise
     (lambda ()
       (let ((_tbl10265_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl10265_ '%#begin void)
           (table-set! _tbl10265_ '%#begin-syntax void)
           (table-set! _tbl10265_ '%#begin-foreign void)
           (table-set! _tbl10265_ '%#module void)
           (table-set! _tbl10265_ '%#import void)
           (table-set! _tbl10265_ '%#export void)
           (table-set! _tbl10265_ '%#provide void)
           (table-set! _tbl10265_ '%#extern void)
           (table-set! _tbl10265_ '%#define-values void)
           (table-set! _tbl10265_ '%#define-syntax void)
           (table-set! _tbl10265_ '%#define-alias void)
           (table-set! _tbl10265_ '%#declare void)
           _tbl10265_)))))
  (define gxc#&void
    (make-promise
     (lambda ()
       (let ((_tbl10261_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10261_ (force gxc#&void-special-form))
           (hash-copy! _tbl10261_ (force gxc#&void-expression))
           _tbl10261_)))))
  (define gxc#&collect-bindings
    (make-promise
     (lambda ()
       (let ((_tbl10257_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10257_ (force gxc#&void-expression))
           (hash-copy! _tbl10257_ (force gxc#&void-special-form))
           (table-set! _tbl10257_ '%#begin gxc#collect-begin%)
           (table-set! _tbl10257_ '%#begin-syntax gxc#collect-begin-syntax%)
           (table-set! _tbl10257_ '%#module gxc#collect-module%)
           (table-set!
            _tbl10257_
            '%#define-values
            gxc#collect-bindings-define-values%)
           (table-set!
            _tbl10257_
            '%#define-syntax
            gxc#collect-bindings-define-syntax%)
           _tbl10257_)))))
  (define gxc#apply-collect-bindings
    (lambda (_stx10250_ . _args10252_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10250_ _args10252_))
       gxc#current-compile-methods
       (force gxc#&collect-bindings))))
  (define gxc#&lift-modules
    (make-promise
     (lambda ()
       (let ((_tbl10247_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10247_ (force gxc#&void))
           (table-set! _tbl10247_ '%#begin gxc#collect-begin%)
           (table-set! _tbl10247_ '%#module gxc#lift-modules-module%)
           _tbl10247_)))))
  (define gxc#apply-lift-modules
    (lambda (_stx10240_ . _args10242_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10240_ _args10242_))
       gxc#current-compile-methods
       (force gxc#&lift-modules))))
  (define gxc#&find-runtime-code
    (make-promise
     (lambda ()
       (let ((_tbl10237_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl10237_ '%#begin gxc#find-runtime-begin%)
           (table-set! _tbl10237_ '%#begin-syntax false)
           (table-set! _tbl10237_ '%#begin-foreign true)
           (table-set! _tbl10237_ '%#module false)
           (table-set! _tbl10237_ '%#import false)
           (table-set! _tbl10237_ '%#export false)
           (table-set! _tbl10237_ '%#provide false)
           (table-set! _tbl10237_ '%#extern false)
           (table-set! _tbl10237_ '%#define-values true)
           (table-set! _tbl10237_ '%#define-syntax false)
           (table-set! _tbl10237_ '%#define-alias false)
           (table-set! _tbl10237_ '%#declare false)
           (table-set! _tbl10237_ '%#lambda true)
           (table-set! _tbl10237_ '%#case-lambda true)
           (table-set! _tbl10237_ '%#let-values true)
           (table-set! _tbl10237_ '%#letrec-values true)
           (table-set! _tbl10237_ '%#letrec*-values true)
           (table-set! _tbl10237_ '%#quote true)
           (table-set! _tbl10237_ '%#call true)
           (table-set! _tbl10237_ '%#if true)
           (table-set! _tbl10237_ '%#ref true)
           (table-set! _tbl10237_ '%#set! true)
           (table-set! _tbl10237_ '%#struct-instance? true)
           (table-set! _tbl10237_ '%#struct-direct-instance? true)
           (table-set! _tbl10237_ '%#struct-ref true)
           (table-set! _tbl10237_ '%#struct-set! true)
           (table-set! _tbl10237_ '%#struct-direct-ref true)
           (table-set! _tbl10237_ '%#struct-direct-set! true)
           _tbl10237_)))))
  (define gxc#apply-find-runtime-code
    (lambda (_stx10230_ . _args10232_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10230_ _args10232_))
       gxc#current-compile-methods
       (force gxc#&find-runtime-code))))
  (define gxc#&generate-runtime-empty
    (make-promise
     (lambda ()
       (let ((_tbl10227_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl10227_ '%#begin gxc#generate-runtime-empty)
           (table-set! _tbl10227_ '%#begin-syntax gxc#generate-runtime-empty)
           (table-set! _tbl10227_ '%#begin-foreign gxc#generate-runtime-empty)
           (table-set! _tbl10227_ '%#module gxc#generate-runtime-empty)
           (table-set! _tbl10227_ '%#import gxc#generate-runtime-empty)
           (table-set! _tbl10227_ '%#export gxc#generate-runtime-empty)
           (table-set! _tbl10227_ '%#provide gxc#generate-runtime-empty)
           (table-set! _tbl10227_ '%#extern gxc#generate-runtime-empty)
           (table-set! _tbl10227_ '%#define-values gxc#generate-runtime-empty)
           (table-set! _tbl10227_ '%#define-syntax gxc#generate-runtime-empty)
           (table-set! _tbl10227_ '%#define-alias gxc#generate-runtime-empty)
           (table-set! _tbl10227_ '%#declare gxc#generate-runtime-empty)
           (table-set! _tbl10227_ '%#lambda gxc#generate-runtime-empty)
           (table-set! _tbl10227_ '%#case-lambda gxc#generate-runtime-empty)
           (table-set! _tbl10227_ '%#let-values gxc#generate-runtime-empty)
           (table-set! _tbl10227_ '%#letrec-values gxc#generate-runtime-empty)
           (table-set! _tbl10227_ '%#letrec*-values gxc#generate-runtime-empty)
           (table-set! _tbl10227_ '%#quote gxc#generate-runtime-empty)
           (table-set! _tbl10227_ '%#call gxc#generate-runtime-empty)
           (table-set! _tbl10227_ '%#if gxc#generate-runtime-empty)
           (table-set! _tbl10227_ '%#ref gxc#generate-runtime-empty)
           (table-set! _tbl10227_ '%#set! gxc#generate-runtime-empty)
           (table-set!
            _tbl10227_
            '%#struct-instance?
            gxc#generate-runtime-empty)
           (table-set!
            _tbl10227_
            '%#struct-direct-instance?
            gxc#generate-runtime-empty)
           (table-set! _tbl10227_ '%#struct-ref gxc#generate-runtime-empty)
           (table-set! _tbl10227_ '%#struct-set! gxc#generate-runtime-empty)
           (table-set!
            _tbl10227_
            '%#struct-direct-ref
            gxc#generate-runtime-empty)
           (table-set!
            _tbl10227_
            '%#struct-direct-set!
            gxc#generate-runtime-empty)
           _tbl10227_)))))
  (define gxc#&generate-loader
    (make-promise
     (lambda ()
       (let ((_tbl10223_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10223_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl10223_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl10223_
            '%#import
            gxc#generate-runtime-loader-import%)
           _tbl10223_)))))
  (define gxc#apply-generate-loader
    (lambda (_stx10216_ . _args10218_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10216_ _args10218_))
       gxc#current-compile-methods
       (force gxc#&generate-loader))))
  (define gxc#&generate-runtime
    (make-promise
     (lambda ()
       (let ((_tbl10213_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10213_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl10213_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl10213_
            '%#begin-foreign
            gxc#generate-runtime-begin-foreign%)
           (table-set!
            _tbl10213_
            '%#define-values
            gxc#generate-runtime-define-values%)
           (table-set! _tbl10213_ '%#declare gxc#generate-runtime-declare%)
           (table-set! _tbl10213_ '%#lambda gxc#generate-runtime-lambda%)
           (table-set!
            _tbl10213_
            '%#case-lambda
            gxc#generate-runtime-case-lambda%)
           (table-set!
            _tbl10213_
            '%#let-values
            gxc#generate-runtime-let-values%)
           (table-set!
            _tbl10213_
            '%#letrec-values
            gxc#generate-runtime-letrec-values%)
           (table-set!
            _tbl10213_
            '%#letrec*-values
            gxc#generate-runtime-letrec*-values%)
           (table-set! _tbl10213_ '%#quote gxc#generate-runtime-quote%)
           (table-set! _tbl10213_ '%#call gxc#generate-runtime-call%)
           (table-set! _tbl10213_ '%#if gxc#generate-runtime-if%)
           (table-set! _tbl10213_ '%#ref gxc#generate-runtime-ref%)
           (table-set! _tbl10213_ '%#set! gxc#generate-runtime-setq%)
           (table-set!
            _tbl10213_
            '%#struct-instance?
            gxc#generate-runtime-struct-instancep%)
           (table-set!
            _tbl10213_
            '%#struct-direct-instance?
            gxc#generate-runtime-struct-direct-instancep%)
           (table-set!
            _tbl10213_
            '%#struct-ref
            gxc#generate-runtime-struct-ref%)
           (table-set!
            _tbl10213_
            '%#struct-set!
            gxc#generate-runtime-struct-setq%)
           (table-set!
            _tbl10213_
            '%#struct-direct-ref
            gxc#generate-runtime-struct-direct-ref%)
           (table-set!
            _tbl10213_
            '%#struct-direct-set!
            gxc#generate-runtime-struct-direct-setq%)
           _tbl10213_)))))
  (define gxc#apply-generate-runtime
    (lambda (_stx10206_ . _args10208_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10206_ _args10208_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime))))
  (define gxc#&generate-runtime-phi
    (make-promise
     (lambda ()
       (let ((_tbl10203_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10203_ (force gxc#&generate-runtime))
           (table-set!
            _tbl10203_
            '%#quote-syntax
            gxc#generate-runtime-phi-quote-syntax%)
           (table-set!
            _tbl10203_
            '%#define-runtime
            gxc#generate-runtime-phi-define-runtime%)
           _tbl10203_)))))
  (define gxc#apply-generate-runtime-phi
    (lambda (_stx10196_ . _args10198_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10196_ _args10198_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime-phi))))
  (define gxc#&collect-expression-refs
    (make-promise
     (lambda ()
       (let ((_tbl10193_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl10193_ '%#begin gxc#collect-begin%)
           (table-set! _tbl10193_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl10193_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl10193_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl10193_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl10193_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl10193_ '%#quote void)
           (table-set! _tbl10193_ '%#quote-syntax void)
           (table-set! _tbl10193_ '%#call gxc#collect-operands)
           (table-set! _tbl10193_ '%#if gxc#collect-operands)
           (table-set! _tbl10193_ '%#ref gxc#collect-refs-ref%)
           (table-set! _tbl10193_ '%#set! gxc#collect-refs-setq%)
           (table-set! _tbl10193_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl10193_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl10193_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl10193_ '%#struct-set! gxc#collect-operands)
           (table-set! _tbl10193_ '%#struct-direct-ref gxc#collect-operands)
           (table-set! _tbl10193_ '%#struct-direct-set! gxc#collect-operands)
           _tbl10193_)))))
  (define gxc#apply-collect-expression-refs
    (lambda (_stx10186_ . _args10188_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10186_ _args10188_))
       gxc#current-compile-methods
       (force gxc#&collect-expression-refs))))
  (define gxc#&generate-meta
    (make-promise
     (lambda ()
       (let ((_tbl10183_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10183_ (force gxc#&void-expression))
           (table-set! _tbl10183_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl10183_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set! _tbl10183_ '%#module gxc#generate-meta-module%)
           (table-set! _tbl10183_ '%#import gxc#generate-meta-import%)
           (table-set! _tbl10183_ '%#export gxc#generate-meta-export%)
           (table-set! _tbl10183_ '%#provide gxc#generate-meta-provide%)
           (table-set! _tbl10183_ '%#extern gxc#generate-meta-extern%)
           (table-set!
            _tbl10183_
            '%#define-values
            gxc#generate-meta-define-values%)
           (table-set!
            _tbl10183_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl10183_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set! _tbl10183_ '%#begin-foreign void)
           (table-set! _tbl10183_ '%#declare void)
           _tbl10183_)))))
  (define gxc#apply-generate-meta
    (lambda (_stx10176_ . _args10178_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10176_ _args10178_))
       gxc#current-compile-methods
       (force gxc#&generate-meta))))
  (define gxc#&generate-meta-phi
    (make-promise
     (lambda ()
       (let ((_tbl10173_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl10173_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl10173_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set!
            _tbl10173_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl10173_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set!
            _tbl10173_
            '%#define-values
            gxc#generate-meta-phi-define-values%)
           (table-set! _tbl10173_ '%#lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl10173_ '%#case-lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl10173_ '%#let-values gxc#generate-meta-phi-expr)
           (table-set! _tbl10173_ '%#letrec-values gxc#generate-meta-phi-expr)
           (table-set! _tbl10173_ '%#letrec*-values gxc#generate-meta-phi-expr)
           (table-set! _tbl10173_ '%#quote gxc#generate-meta-phi-expr)
           (table-set! _tbl10173_ '%#quote-syntax gxc#generate-meta-phi-expr)
           (table-set! _tbl10173_ '%#call gxc#generate-meta-phi-expr)
           (table-set! _tbl10173_ '%#if gxc#generate-meta-phi-expr)
           (table-set! _tbl10173_ '%#ref gxc#generate-meta-phi-expr)
           (table-set! _tbl10173_ '%#set! gxc#generate-meta-phi-expr)
           (table-set!
            _tbl10173_
            '%#struct-instance?
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl10173_
            '%#struct-direct-instance?
            gxc#generate-meta-phi-expr)
           (table-set! _tbl10173_ '%#struct-ref gxc#generate-meta-phi-expr)
           (table-set! _tbl10173_ '%#struct-set! gxc#generate-meta-phi-expr)
           (table-set!
            _tbl10173_
            '%#struct-direct-ref
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl10173_
            '%#struct-direct-set!
            gxc#generate-meta-phi-expr)
           (table-set! _tbl10173_ '%#declare void)
           _tbl10173_)))))
  (define gxc#apply-generate-meta-phi
    (lambda (_stx10166_ . _args10168_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10166_ _args10168_))
       gxc#current-compile-methods
       (force gxc#&generate-meta-phi))))
  (define gxc#collect-begin%
    (lambda (_stx10123_ . _args10124_)
      (let ((_g1012610136_
             (lambda (_g1012710133_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1012710133_))))
        (let ((_g1012510163_
               (lambda (_g1012710139_)
                 (if (gx#stx-pair? _g1012710139_)
                     (let ((_e1012910141_ (gx#stx-e _g1012710139_)))
                       (let ((_hd1013010144_ (##car _e1012910141_))
                             (_tl1013110146_ (##cdr _e1012910141_)))
                         ((lambda (_L10149_)
                            (for-each
                             (lambda (_g1015810160_)
                               (apply gxc#compile-e _g1015810160_ _args10124_))
                             (gx#stx-e _L10149_)))
                          _tl1013110146_)))
                     (_g1012610136_ _g1012710139_)))))
          (_g1012510163_ _stx10123_)))))
  (define gxc#collect-begin-syntax%
    (lambda (_stx10079_ . _args10080_)
      (let ((_g1008210092_
             (lambda (_g1008310089_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1008310089_))))
        (let ((_g1008110120_
               (lambda (_g1008310095_)
                 (if (gx#stx-pair? _g1008310095_)
                     (let ((_e1008510097_ (gx#stx-e _g1008310095_)))
                       (let ((_hd1008610100_ (##car _e1008510097_))
                             (_tl1008710102_ (##cdr _e1008510097_)))
                         ((lambda (_L10105_)
                            (call-with-parameters
                             (lambda ()
                               (for-each
                                (lambda (_g1011510117_)
                                  (apply gxc#compile-e
                                         _g1011510117_
                                         _args10080_))
                                (gx#stx-e _L10105_)))
                             gx#current-expander-phi
                             (fx+ (gx#current-expander-phi) '1)))
                          _tl1008710102_)))
                     (_g1008210092_ _g1008310095_)))))
          (_g1008110120_ _stx10079_)))))
  (define gxc#collect-module%
    (lambda (_stx10021_ . _args10022_)
      (let ((_g1002410038_
             (lambda (_g1002510035_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1002510035_))))
        (let ((_g1002310076_
               (lambda (_g1002510041_)
                 (if (gx#stx-pair? _g1002510041_)
                     (let ((_e1002810043_ (gx#stx-e _g1002510041_)))
                       (let ((_hd1002910046_ (##car _e1002810043_))
                             (_tl1003010048_ (##cdr _e1002810043_)))
                         (if (gx#stx-pair? _tl1003010048_)
                             (let ((_e1003110051_ (gx#stx-e _tl1003010048_)))
                               (let ((_hd1003210054_ (##car _e1003110051_))
                                     (_tl1003310056_ (##cdr _e1003110051_)))
                                 ((lambda (_L10059_ _L10060_)
                                    (let ((_ctx10073_
                                           (gx#syntax-local-e__0 _L10060_)))
                                      (call-with-parameters
                                       (lambda ()
                                         (apply gxc#compile-e
                                                (##structure-ref
                                                 _ctx10073_
                                                 '11
                                                 gx#module-context::t
                                                 '#f)
                                                _args10022_))
                                       gx#current-expander-context
                                       _ctx10073_)))
                                  _tl1003310056_
                                  _hd1003210054_)))
                             (_g1002410038_ _g1002510041_))))
                     (_g1002410038_ _g1002510041_)))))
          (_g1002310076_ _stx10021_)))))
  (define gxc#collect-body-lambda%
    (lambda (_stx9953_ . _args9954_)
      (let ((_g99569973_
             (lambda (_g99579970_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g99579970_))))
        (let ((_g995510018_
               (lambda (_g99579976_)
                 (if (gx#stx-pair? _g99579976_)
                     (let ((_e99609978_ (gx#stx-e _g99579976_)))
                       (let ((_hd99619981_ (##car _e99609978_))
                             (_tl99629983_ (##cdr _e99609978_)))
                         (if (gx#stx-pair? _tl99629983_)
                             (let ((_e99639986_ (gx#stx-e _tl99629983_)))
                               (let ((_hd99649989_ (##car _e99639986_))
                                     (_tl99659991_ (##cdr _e99639986_)))
                                 (if (gx#stx-pair? _tl99659991_)
                                     (let ((_e99669994_
                                            (gx#stx-e _tl99659991_)))
                                       (let ((_hd99679997_ (##car _e99669994_))
                                             (_tl99689999_
                                              (##cdr _e99669994_)))
                                         (if (gx#stx-null? _tl99689999_)
                                             ((lambda (_L10002_ _L10003_)
                                                (apply gxc#compile-e
                                                       _L10002_
                                                       _args9954_))
                                              _hd99679997_
                                              _hd99649989_)
                                             (_g99569973_ _g99579976_))))
                                     (_g99569973_ _g99579976_))))
                             (_g99569973_ _g99579976_))))
                     (_g99569973_ _g99579976_)))))
          (_g995510018_ _stx9953_)))))
  (define gxc#collect-body-case-lambda%
    (lambda (_stx9835_ . _args9836_)
      (let ((_g98389866_
             (lambda (_g98399863_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g98399863_))))
        (let ((_g98379950_
               (lambda (_g98399869_)
                 (if (gx#stx-pair? _g98399869_)
                     (let ((_e98429871_ (gx#stx-e _g98399869_)))
                       (let ((_hd98439874_ (##car _e98429871_))
                             (_tl98449876_ (##cdr _e98429871_)))
                         (if (gx#stx-pair/null? _tl98449876_)
                             (if (fx>= (gx#stx-length _tl98449876_) '0)
                                 (let ((_g10315_
                                        (gx#syntax-split-splice
                                         _tl98449876_
                                         '0)))
                                   (begin
                                     (let ((_g10316_ (values-count _g10315_)))
                                       (if (not (fx= _g10316_ 2))
                                           (error "Context expects 2 values"
                                                  _g10316_)))
                                     (let ((_target98459879_
                                            (values-ref _g10315_ 0))
                                           (_tl98479881_
                                            (values-ref _g10315_ 1)))
                                       (if (gx#stx-null? _tl98479881_)
                                           (letrec ((_loop98489884_
                                                     (lambda (_hd98469887_
                                                              _body98529889_
                                                              _hd98539891_)
                                                       (if (gx#stx-pair?
                                                            _hd98469887_)
                                                           (let ((_e98499894_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd98469887_)))
                     (let ((_lp-hd98509897_ (##car _e98499894_))
                           (_lp-tl98519899_ (##cdr _e98499894_)))
                       (if (gx#stx-pair? _lp-hd98509897_)
                           (let ((_e98569902_ (gx#stx-e _lp-hd98509897_)))
                             (let ((_hd98579905_ (##car _e98569902_))
                                   (_tl98589907_ (##cdr _e98569902_)))
                               (if (gx#stx-pair? _tl98589907_)
                                   (let ((_e98599910_ (gx#stx-e _tl98589907_)))
                                     (let ((_hd98609913_ (##car _e98599910_))
                                           (_tl98619915_ (##cdr _e98599910_)))
                                       (if (gx#stx-null? _tl98619915_)
                                           (_loop98489884_
                                            _lp-tl98519899_
                                            (cons _hd98609913_ _body98529889_)
                                            (cons _hd98579905_ _hd98539891_))
                                           (_g98389866_ _g98399869_))))
                                   (_g98389866_ _g98399869_))))
                           (_g98389866_ _g98399869_))))
                   (let ((_body98549918_ (reverse _body98529889_))
                         (_hd98559920_ (reverse _hd98539891_)))
                     ((lambda (_L9923_ _L9924_)
                        (for-each
                         (lambda (_g99389940_)
                           (apply gxc#compile-e _g99389940_ _args9836_))
                         (begin
                           '#!void
                           (foldr1 (lambda (_g99429945_ _g99439947_)
                                     (cons _g99429945_ _g99439947_))
                                   '()
                                   _L9923_))))
                      _body98549918_
                      _hd98559920_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop98489884_
                                              _target98459879_
                                              '()
                                              '()))
                                           (_g98389866_ _g98399869_)))))
                                 (_g98389866_ _g98399869_))
                             (_g98389866_ _g98399869_))))
                     (_g98389866_ _g98399869_)))))
          (_g98379950_ _stx9835_)))))
  (define gxc#collect-body-let-values%
    (lambda (_stx9688_ . _args9689_)
      (let ((_g96919726_
             (lambda (_g96929723_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g96929723_))))
        (let ((_g96909832_
               (lambda (_g96929729_)
                 (if (gx#stx-pair? _g96929729_)
                     (let ((_e96969731_ (gx#stx-e _g96929729_)))
                       (let ((_hd96979734_ (##car _e96969731_))
                             (_tl96989736_ (##cdr _e96969731_)))
                         (if (gx#stx-pair? _tl96989736_)
                             (let ((_e96999739_ (gx#stx-e _tl96989736_)))
                               (let ((_hd97009742_ (##car _e96999739_))
                                     (_tl97019744_ (##cdr _e96999739_)))
                                 (if (gx#stx-pair/null? _hd97009742_)
                                     (if (fx>= (gx#stx-length _hd97009742_) '0)
                                         (let ((_g10317_
                                                (gx#syntax-split-splice
                                                 _hd97009742_
                                                 '0)))
                                           (begin
                                             (let ((_g10318_
                                                    (values-count _g10317_)))
                                               (if (not (fx= _g10318_ 2))
                                                   (error "Context expects 2 values"
                                                          _g10318_)))
                                             (let ((_target97029747_
                                                    (values-ref _g10317_ 0))
                                                   (_tl97049749_
                                                    (values-ref _g10317_ 1)))
                                               (if (gx#stx-null? _tl97049749_)
                                                   (letrec ((_loop97059752_
                                                             (lambda (_hd97039755_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr97099757_
                              _hd97109759_)
                       (if (gx#stx-pair? _hd97039755_)
                           (let ((_e97069762_ (gx#stx-e _hd97039755_)))
                             (let ((_lp-hd97079765_ (##car _e97069762_))
                                   (_lp-tl97089767_ (##cdr _e97069762_)))
                               (if (gx#stx-pair? _lp-hd97079765_)
                                   (let ((_e97139770_
                                          (gx#stx-e _lp-hd97079765_)))
                                     (let ((_hd97149773_ (##car _e97139770_))
                                           (_tl97159775_ (##cdr _e97139770_)))
                                       (if (gx#stx-pair? _tl97159775_)
                                           (let ((_e97169778_
                                                  (gx#stx-e _tl97159775_)))
                                             (let ((_hd97179781_
                                                    (##car _e97169778_))
                                                   (_tl97189783_
                                                    (##cdr _e97169778_)))
                                               (if (gx#stx-null? _tl97189783_)
                                                   (_loop97059752_
                                                    _lp-tl97089767_
                                                    (cons _hd97179781_
                                                          _expr97099757_)
                                                    (cons _hd97149773_
                                                          _hd97109759_))
                                                   (_g96919726_ _g96929729_))))
                                           (_g96919726_ _g96929729_))))
                                   (_g96919726_ _g96929729_))))
                           (let ((_expr97119786_ (reverse _expr97099757_))
                                 (_hd97129788_ (reverse _hd97109759_)))
                             (if (gx#stx-pair? _tl97019744_)
                                 (let ((_e97199791_ (gx#stx-e _tl97019744_)))
                                   (let ((_hd97209794_ (##car _e97199791_))
                                         (_tl97219796_ (##cdr _e97199791_)))
                                     (if (gx#stx-null? _tl97219796_)
                                         ((lambda (_L9799_ _L9800_ _L9801_)
                                            (for-each
                                             (lambda (_g98209822_)
                                               (apply gxc#compile-e
                                                      _g98209822_
                                                      _args9689_))
                                             (begin
                                               '#!void
                                               (foldr1 (lambda (_g98249827_
                                                                _g98259829_)
                                                         (cons _g98249827_
                                                               _g98259829_))
                                                       (cons _L9799_ '())
                                                       _L9800_))))
                                          _hd97209794_
                                          _expr97119786_
                                          _hd97129788_)
                                         (_g96919726_ _g96929729_))))
                                 (_g96919726_ _g96929729_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop97059752_
                                                      _target97029747_
                                                      '()
                                                      '()))
                                                   (_g96919726_
                                                    _g96929729_)))))
                                         (_g96919726_ _g96929729_))
                                     (_g96919726_ _g96929729_))))
                             (_g96919726_ _g96929729_))))
                     (_g96919726_ _g96929729_)))))
          (_g96909832_ _stx9688_)))))
  (define gxc#collect-body-setq%
    (lambda (_stx9620_ . _args9621_)
      (let ((_g96239640_
             (lambda (_g96249637_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g96249637_))))
        (let ((_g96229685_
               (lambda (_g96249643_)
                 (if (gx#stx-pair? _g96249643_)
                     (let ((_e96279645_ (gx#stx-e _g96249643_)))
                       (let ((_hd96289648_ (##car _e96279645_))
                             (_tl96299650_ (##cdr _e96279645_)))
                         (if (gx#stx-pair? _tl96299650_)
                             (let ((_e96309653_ (gx#stx-e _tl96299650_)))
                               (let ((_hd96319656_ (##car _e96309653_))
                                     (_tl96329658_ (##cdr _e96309653_)))
                                 (if (gx#stx-pair? _tl96329658_)
                                     (let ((_e96339661_
                                            (gx#stx-e _tl96329658_)))
                                       (let ((_hd96349664_ (##car _e96339661_))
                                             (_tl96359666_
                                              (##cdr _e96339661_)))
                                         (if (gx#stx-null? _tl96359666_)
                                             ((lambda (_L9669_ _L9670_)
                                                (apply gxc#compile-e
                                                       _L9669_
                                                       _args9621_))
                                              _hd96349664_
                                              _hd96319656_)
                                             (_g96239640_ _g96249643_))))
                                     (_g96239640_ _g96249643_))))
                             (_g96239640_ _g96249643_))))
                     (_g96239640_ _g96249643_)))))
          (_g96229685_ _stx9620_)))))
  (define gxc#collect-operands
    (lambda (_stx9533_ . _args9534_)
      (let ((_g95369555_
             (lambda (_g95379552_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g95379552_))))
        (let ((_g95359617_
               (lambda (_g95379558_)
                 (if (gx#stx-pair? _g95379558_)
                     (let ((_e95399560_ (gx#stx-e _g95379558_)))
                       (let ((_hd95409563_ (##car _e95399560_))
                             (_tl95419565_ (##cdr _e95399560_)))
                         (if (gx#stx-pair/null? _tl95419565_)
                             (if (fx>= (gx#stx-length _tl95419565_) '0)
                                 (let ((_g10319_
                                        (gx#syntax-split-splice
                                         _tl95419565_
                                         '0)))
                                   (begin
                                     (let ((_g10320_ (values-count _g10319_)))
                                       (if (not (fx= _g10320_ 2))
                                           (error "Context expects 2 values"
                                                  _g10320_)))
                                     (let ((_target95429568_
                                            (values-ref _g10319_ 0))
                                           (_tl95449570_
                                            (values-ref _g10319_ 1)))
                                       (if (gx#stx-null? _tl95449570_)
                                           (letrec ((_loop95459573_
                                                     (lambda (_hd95439576_
                                                              _rands95499578_)
                                                       (if (gx#stx-pair?
                                                            _hd95439576_)
                                                           (let ((_e95469581_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd95439576_)))
                     (let ((_lp-hd95479584_ (##car _e95469581_))
                           (_lp-tl95489586_ (##cdr _e95469581_)))
                       (_loop95459573_
                        _lp-tl95489586_
                        (cons _lp-hd95479584_ _rands95499578_))))
                   (let ((_rands95509589_ (reverse _rands95499578_)))
                     ((lambda (_L9592_)
                        (for-each
                         (lambda (_g96059607_)
                           (apply gxc#compile-e _g96059607_ _args9534_))
                         (begin
                           '#!void
                           (foldr1 (lambda (_g96099612_ _g96109614_)
                                     (cons _g96099612_ _g96109614_))
                                   '()
                                   _L9592_))))
                      _rands95509589_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop95459573_
                                              _target95429568_
                                              '()))
                                           (_g95369555_ _g95379558_)))))
                                 (_g95369555_ _g95379558_))
                             (_g95369555_ _g95379558_))))
                     (_g95369555_ _g95379558_)))))
          (_g95359617_ _stx9533_)))))
  (define gxc#collect-bindings-define-values%
    (lambda (_stx9464_)
      (let ((_g94669483_
             (lambda (_g94679480_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g94679480_))))
        (let ((_g94659530_
               (lambda (_g94679486_)
                 (if (gx#stx-pair? _g94679486_)
                     (let ((_e94709488_ (gx#stx-e _g94679486_)))
                       (let ((_hd94719491_ (##car _e94709488_))
                             (_tl94729493_ (##cdr _e94709488_)))
                         (if (gx#stx-pair? _tl94729493_)
                             (let ((_e94739496_ (gx#stx-e _tl94729493_)))
                               (let ((_hd94749499_ (##car _e94739496_))
                                     (_tl94759501_ (##cdr _e94739496_)))
                                 (if (gx#stx-pair? _tl94759501_)
                                     (let ((_e94769504_
                                            (gx#stx-e _tl94759501_)))
                                       (let ((_hd94779507_ (##car _e94769504_))
                                             (_tl94789509_
                                              (##cdr _e94769504_)))
                                         (if (gx#stx-null? _tl94789509_)
                                             ((lambda (_L9512_ _L9513_)
                                                (gx#stx-for-each1
                                                 (lambda (_bind9528_)
                                                   (if (gx#identifier?
                                                        _bind9528_)
                                                       (gxc#add-module-binding!
                                                        _bind9528_
                                                        '#f)
                                                       '#!void))
                                                 _L9513_))
                                              _hd94779507_
                                              _hd94749499_)
                                             (_g94669483_ _g94679486_))))
                                     (_g94669483_ _g94679486_))))
                             (_g94669483_ _g94679486_))))
                     (_g94669483_ _g94679486_)))))
          (_g94659530_ _stx9464_)))))
  (define gxc#collect-bindings-define-syntax%
    (lambda (_stx9397_)
      (let ((_g93999416_
             (lambda (_g94009413_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g94009413_))))
        (let ((_g93989461_
               (lambda (_g94009419_)
                 (if (gx#stx-pair? _g94009419_)
                     (let ((_e94039421_ (gx#stx-e _g94009419_)))
                       (let ((_hd94049424_ (##car _e94039421_))
                             (_tl94059426_ (##cdr _e94039421_)))
                         (if (gx#stx-pair? _tl94059426_)
                             (let ((_e94069429_ (gx#stx-e _tl94059426_)))
                               (let ((_hd94079432_ (##car _e94069429_))
                                     (_tl94089434_ (##cdr _e94069429_)))
                                 (if (gx#stx-pair? _tl94089434_)
                                     (let ((_e94099437_
                                            (gx#stx-e _tl94089434_)))
                                       (let ((_hd94109440_ (##car _e94099437_))
                                             (_tl94119442_
                                              (##cdr _e94099437_)))
                                         (if (gx#stx-null? _tl94119442_)
                                             ((lambda (_L9445_ _L9446_)
                                                (gxc#add-module-binding!
                                                 _L9446_
                                                 '#t))
                                              _hd94109440_
                                              _hd94079432_)
                                             (_g93999416_ _g94009419_))))
                                     (_g93999416_ _g94009419_))))
                             (_g93999416_ _g94009419_))))
                     (_g93999416_ _g94009419_)))))
          (_g93989461_ _stx9397_)))))
  (define gxc#lift-modules-module%
    (lambda (_stx9339_ _modules9340_)
      (let ((_g93429356_
             (lambda (_g93439353_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g93439353_))))
        (let ((_g93419394_
               (lambda (_g93439359_)
                 (if (gx#stx-pair? _g93439359_)
                     (let ((_e93469361_ (gx#stx-e _g93439359_)))
                       (let ((_hd93479364_ (##car _e93469361_))
                             (_tl93489366_ (##cdr _e93469361_)))
                         (if (gx#stx-pair? _tl93489366_)
                             (let ((_e93499369_ (gx#stx-e _tl93489366_)))
                               (let ((_hd93509372_ (##car _e93499369_))
                                     (_tl93519374_ (##cdr _e93499369_)))
                                 ((lambda (_L9377_ _L9378_)
                                    (let ((_ctx9391_
                                           (gx#syntax-local-e__0 _L9378_)))
                                      (begin
                                        (set-box!
                                         _modules9340_
                                         (cons _ctx9391_
                                               (unbox _modules9340_)))
                                        (call-with-parameters
                                         (lambda ()
                                           (gxc#compile-e
                                            (##structure-ref
                                             _ctx9391_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            _modules9340_))
                                         gx#current-expander-context
                                         _ctx9391_))))
                                  _tl93519374_
                                  _hd93509372_)))
                             (_g93429356_ _g93439359_))))
                     (_g93429356_ _g93439359_)))))
          (_g93419394_ _stx9339_)))))
  (define gxc#add-module-binding!
    (lambda (_id9333_ _syntax?9334_)
      (let ((_eid9336_
             (##structure-ref
              (gx#resolve-identifier__0 _id9333_)
              '1
              gx#binding::t
              '#f))
            (_ht9337_
             (##structure-ref
              (gxc#current-compile-symbol-table)
              '2
              gxc#symbol-table::t
              '#f)))
        (if (interned-symbol? _eid9336_)
            '#!void
            (table-set!
             _ht9337_
             _eid9336_
             (gx#make-binding-id__1
              (gxc#generate-runtime-gensym-reference__0 _eid9336_)
              _syntax?9334_))))))
  (define gxc#generate-runtime-binding-id
    (lambda (_id9314_)
      (let ((_bind9316_ (gx#resolve-identifier__0 _id9314_)))
        (if _bind9316_
            (let ((_eid9318_ (##structure-ref _bind9316_ '1 gx#binding::t '#f))
                  (_ht9319_
                   (##structure-ref
                    (gxc#current-compile-symbol-table)
                    '2
                    gxc#symbol-table::t
                    '#f)))
              (if (interned-symbol? _eid9318_)
                  _eid9318_
                  (let ((_$e9321_ (table-ref _ht9319_ _eid9318_ '#f)))
                    (if _$e9321_
                        (values _$e9321_)
                        (if (##structure-instance-of?
                             _bind9316_
                             'gx#local-binding::t)
                            (let ((_gid9324_
                                   (gxc#generate-runtime-gensym-reference__0
                                    _eid9318_)))
                              (begin
                                (table-set! _ht9319_ _eid9318_ _gid9324_)
                                _gid9324_))
                            (if (##structure-instance-of?
                                 _bind9316_
                                 'gx#module-binding::t)
                                (let ((_gid9331_
                                       (let ((_$e9326_
                                              (##structure-ref
                                               (##structure-ref
                                                _bind9316_
                                                '4
                                                gx#module-binding::t
                                                '#f)
                                               '6
                                               gx#module-context::t
                                               '#f)))
                                         (if _$e9326_
                                             ((lambda (_ns9329_)
                                                (make-symbol
                                                 _ns9329_
                                                 '"#"
                                                 _eid9318_))
                                              _$e9326_)
                                             (gxc#generate-runtime-gensym-reference__0
                                              _eid9318_)))))
                                  (begin
                                    (table-set! _ht9319_ _eid9318_ _gid9331_)
                                    _gid9331_))
                                (gxc#raise-compile-error
                                 '"Cannot compile reference to uninterned binding"
                                 _id9314_
                                 _eid9318_
                                 _bind9316_)))))))
            (if (interned-symbol? (gx#stx-e _id9314_))
                (gx#stx-e _id9314_)
                (gxc#raise-compile-error
                 '"Cannot compile reference to uninterned identifier"
                 _id9314_))))))
  (define gxc#generate-runtime-binding-id*
    (lambda (_id9312_)
      (if (gx#identifier? _id9312_)
          (gxc#generate-runtime-binding-id _id9312_)
          (gxc#generate-runtime-temporary__0))))
  (begin
    (define gxc#generate-runtime-gensym-reference__opt-lambda9290
      (lambda (_sym9292_ _quote?9293_)
        (let ((_ht9295_
               (##structure-ref
                (gxc#current-compile-symbol-table)
                '1
                gxc#symbol-table::t
                '#f)))
          (let ((_$e9297_ (table-ref _ht9295_ _sym9292_ '#f)))
            (if _$e9297_
                (values _$e9297_)
                (let ((_g9300_ (if _quote?9293_
                                   (make-symbol
                                    '"__"
                                    _sym9292_
                                    '"__"
                                    (gxc#current-compile-timestamp))
                                   (make-symbol '"_" _sym9292_ '"_"))))
                  (begin (table-set! _ht9295_ _sym9292_ _g9300_) _g9300_)))))))
    (begin
      (define gxc#generate-runtime-gensym-reference__0
        (lambda (_sym9305_)
          (let ((_quote?9307_ '#f))
            (gxc#generate-runtime-gensym-reference__opt-lambda9290
             _sym9305_
             _quote?9307_))))
      (define gxc#generate-runtime-gensym-reference
        (lambda _g10322_
          (let ((_g10321_ (length _g10322_)))
            (cond ((fx= _g10321_ 1)
                   (apply gxc#generate-runtime-gensym-reference__0 _g10322_))
                  ((fx= _g10321_ 2)
                   (apply gxc#generate-runtime-gensym-reference__opt-lambda9290
                          _g10322_))
                  (else (error "No clause matching arguments" _g10322_))))))))
  (define gxc#generate-runtime-identifier
    (lambda (_id9289_)
      (gxc#generate-runtime-identifier-key (gx#core-identifier-key _id9289_))))
  (define gxc#generate-runtime-identifier-key
    (lambda (_key9251_)
      (if (interned-symbol? _key9251_)
          _key9251_
          (if (uninterned-symbol? _key9251_)
              (gxc#generate-runtime-gensym-reference__0 _key9251_)
              (let ((_key92529259_ _key9251_))
                (let ((_E92549263_
                       (lambda ()
                         (error '"No clause matching" _key92529259_))))
                  (let ((_K92559277_
                         (lambda (_mark9266_ _eid9267_)
                           (let ((_$e9269_
                                  (##structure-ref
                                   _mark9266_
                                   '1
                                   gx#expander-mark::t
                                   '#f)))
                             (if _$e9269_
                                 ((lambda (_ht9272_)
                                    (let ((_$e9274_
                                           (table-ref _ht9272_ _eid9267_ '#f)))
                                      (if _$e9274_
                                          (values _$e9274_)
                                          (gxc#generate-runtime-identifier-key
                                           _eid9267_))))
                                  _$e9269_)
                                 (gxc#generate-runtime-identifier-key
                                  _eid9267_))))))
                    (if (##pair? _key92529259_)
                        (let ((_hd92569280_ (##car _key92529259_))
                              (_tl92579282_ (##cdr _key92529259_)))
                          (let ((_eid9285_ _hd92569280_))
                            (let ((_mark9287_ _tl92579282_))
                              (_K92559277_ _mark9287_ _eid9285_))))
                        (_E92549263_)))))))))
  (begin
    (define gxc#generate-runtime-temporary__opt-lambda9236
      (lambda (_top9238_)
        (if _top9238_
            (let ((_ns9240_
                   (##structure-ref
                    (gx#current-expander-context)
                    '6
                    gx#module-context::t
                    '#f))
                  (_phi9241_ (gx#current-expander-phi)))
              (if (fxpositive? _phi9241_)
                  (make-symbol
                   _ns9240_
                   '"["
                   (number->string _phi9241_)
                   '"]#_"
                   (gensym)
                   '"_")
                  (make-symbol _ns9240_ '"#_" (gensym) '"_")))
            (make-symbol '"_" (gensym) '"_"))))
    (begin
      (define gxc#generate-runtime-temporary__0
        (lambda ()
          (let ((_top9247_ '#f))
            (gxc#generate-runtime-temporary__opt-lambda9236 _top9247_))))
      (define gxc#generate-runtime-temporary
        (lambda _g10324_
          (let ((_g10323_ (length _g10324_)))
            (cond ((fx= _g10323_ 0)
                   (apply gxc#generate-runtime-temporary__0 _g10324_))
                  ((fx= _g10323_ 1)
                   (apply gxc#generate-runtime-temporary__opt-lambda9236
                          _g10324_))
                  (else (error "No clause matching arguments" _g10324_))))))))
  (define gxc#generate-runtime-empty (lambda (_stx9235_) '(begin)))
  (define gxc#generate-runtime-begin%
    (lambda (_stx9155_)
      (let ((_g91579167_
             (lambda (_g91589164_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g91589164_))))
        (let ((_g91569232_
               (lambda (_g91589170_)
                 (if (gx#stx-pair? _g91589170_)
                     (let ((_e91609172_ (gx#stx-e _g91589170_)))
                       (let ((_hd91619175_ (##car _e91609172_))
                             (_tl91629177_ (##cdr _e91609172_)))
                         ((lambda (_L9180_)
                            (let ((_body9190_
                                   (gx#stx-map1 gxc#compile-e _L9180_)))
                              (let ((_body9229_
                                     (filter (lambda (_stx9192_)
                                               (let ((_g91959204_
                                                      (lambda (_g91969201_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g91969201_))))
                                                 (let ((_g91949211_
                                                        (lambda (_g91969207_)
                                                          ((lambda () '#t)))))
                                                   (let ((_g91939226_
                                                          (lambda (_g91969214_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g91969214_)
                        (let ((_e91979216_ (gx#stx-e _g91969214_)))
                          (let ((_hd91989219_ (##car _e91979216_))
                                (_tl91999221_ (##cdr _e91979216_)))
                            (if (gx#identifier? _hd91989219_)
                                (if (gx#stx-eq? 'begin _hd91989219_)
                                    (if (gx#stx-null? _tl91999221_)
                                        ((lambda () '#f))
                                        (_g91949211_ _g91969214_))
                                    (_g91949211_ _g91969214_))
                                (_g91949211_ _g91969214_))))
                        (_g91949211_ _g91969214_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g91939226_
                                                      _stx9192_)))))
                                             _body9190_)))
                                (let ()
                                  (if (fx= (length _body9229_) '1)
                                      (car _body9229_)
                                      (cons 'begin _body9229_))))))
                          _tl91629177_)))
                     (_g91579167_ _g91589170_)))))
          (_g91569232_ _stx9155_)))))
  (define gxc#generate-runtime-begin-foreign%
    (lambda (_stx9117_)
      (let ((_g91199129_
             (lambda (_g91209126_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g91209126_))))
        (let ((_g91189152_
               (lambda (_g91209132_)
                 (if (gx#stx-pair? _g91209132_)
                     (let ((_e91229134_ (gx#stx-e _g91209132_)))
                       (let ((_hd91239137_ (##car _e91229134_))
                             (_tl91249139_ (##cdr _e91229134_)))
                         ((lambda (_L9142_)
                            (cons 'begin (gx#syntax->datum _L9142_)))
                          _tl91249139_)))
                     (_g91199129_ _g91209132_)))))
          (_g91189152_ _stx9117_)))))
  (define gxc#generate-runtime-declare%
    (lambda (_stx9079_)
      (let ((_g90819091_
             (lambda (_g90829088_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g90829088_))))
        (let ((_g90809114_
               (lambda (_g90829094_)
                 (if (gx#stx-pair? _g90829094_)
                     (let ((_e90849096_ (gx#stx-e _g90829094_)))
                       (let ((_hd90859099_ (##car _e90849096_))
                             (_tl90869101_ (##cdr _e90849096_)))
                         ((lambda (_L9104_)
                            (cons 'declare (map gx#syntax->datum _L9104_)))
                          _tl90869101_)))
                     (_g90819091_ _g90829094_)))))
          (_g90809114_ _stx9079_)))))
  (define gxc#generate-runtime-define-values%
    (lambda (_stx8843_)
      (let ((_g88458862_
             (lambda (_g88468859_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g88468859_))))
        (let ((_g88449076_
               (lambda (_g88468865_)
                 (if (gx#stx-pair? _g88468865_)
                     (let ((_e88498867_ (gx#stx-e _g88468865_)))
                       (let ((_hd88508870_ (##car _e88498867_))
                             (_tl88518872_ (##cdr _e88498867_)))
                         (if (gx#stx-pair? _tl88518872_)
                             (let ((_e88528875_ (gx#stx-e _tl88518872_)))
                               (let ((_hd88538878_ (##car _e88528875_))
                                     (_tl88548880_ (##cdr _e88528875_)))
                                 (if (gx#stx-pair? _tl88548880_)
                                     (let ((_e88558883_
                                            (gx#stx-e _tl88548880_)))
                                       (let ((_hd88568886_ (##car _e88558883_))
                                             (_tl88578888_
                                              (##cdr _e88558883_)))
                                         (if (gx#stx-null? _tl88578888_)
                                             ((lambda (_L8891_ _L8892_)
                                                (let ((_g89098922_
                                                       (lambda (_g89108919_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g89108919_))))
                                                  (let ((_g89089036_
                                                         (lambda (_g89108925_)
                                                           ((lambda ()
                                                              (let ((_tmp8929_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gxc#generate-runtime-temporary__opt-lambda9236
                              '#t)))
                        (let ((_body9033_
                               ((letrec ((_lp8931_
                                          (lambda (_rest8933_ _k8934_ _r8935_)
                                            (let ((_g89408956_
                                                   (lambda (_g89418953_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g89418953_))))
                                              (let ((_g89398963_
                                                     (lambda (_g89418959_)
                                                       ((lambda ()
                                                          (reverse _r8935_))))))
                                                (let ((_g89388984_
                                                       (lambda (_g89418966_)
                                                         ((lambda (_L8968_)
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L8968_)
                        (foldl1 cons
                                (cons (cons 'define
                                            (cons (gxc#generate-runtime-binding-id
                                                   _L8968_)
                                                  (cons (cons 'values->list
                                                              (cons _tmp8929_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _k8934_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())
                                _r8935_)
                        (_g89398963_ _g89418966_)))
                  _g89418966_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g89379008_
                                                         (lambda (_g89418987_)
                                                           (if (gx#stx-pair?
                                                                _g89418987_)
                                                               (let ((_e89488989_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _g89418987_)))
                         (let ((_hd89498992_ (##car _e89488989_))
                               (_tl89508994_ (##cdr _e89488989_)))
                           ((lambda (_L8997_ _L8998_)
                              (_lp8931_
                               _L8997_
                               (fx+ _k8934_ '1)
                               (cons (cons 'define
                                           (cons (gxc#generate-runtime-binding-id
                                                  _L8998_)
                                                 (cons (cons 'values-ref
                                                             (cons _tmp8929_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _k8934_ '())))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _r8935_)))
                            _tl89508994_
                            _hd89498992_)))
                       (_g89388984_ _g89418987_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g89369030_
                                                           (lambda (_g89419011_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g89419011_)
                         (let ((_e89439013_ (gx#stx-e _g89419011_)))
                           (let ((_hd89449016_ (##car _e89439013_))
                                 (_tl89459018_ (##cdr _e89439013_)))
                             (if (gx#stx-datum? _hd89449016_)
                                 (if (equal? (gx#stx-e _hd89449016_) '#f)
                                     ((lambda (_L9021_)
                                        (_lp8931_
                                         _L9021_
                                         (fx+ _k8934_ '1)
                                         _r8935_))
                                      _tl89459018_)
                                     (_g89379008_ _g89419011_))
                                 (_g89379008_ _g89419011_))))
                         (_g89379008_ _g89419011_)))))
              (_g89369030_ _rest8933_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _lp8931_)
                                _L8892_
                                '0
                                '())))
                          (let ()
                            (cons 'begin
                                  (cons (cons 'define
                                              (cons _tmp8929_
                                                    (cons (gxc#compile-e
                                                           _L8891_)
                                                          '())))
                                        (cons (gxc#generate-runtime-check-values
                                               _tmp8929_
                                               _L8892_)
                                              _body9033_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g89079058_
                                                           (lambda (_g89109039_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g89109039_)
                         (let ((_e89159041_ (gx#stx-e _g89109039_)))
                           (let ((_hd89169044_ (##car _e89159041_))
                                 (_tl89179046_ (##cdr _e89159041_)))
                             (if (gx#stx-null? _tl89179046_)
                                 ((lambda (_L9049_)
                                    (cons 'define
                                          (cons (gxc#generate-runtime-binding-id
                                                 _L9049_)
                                                (cons (gxc#compile-e _L8891_)
                                                      '()))))
                                  _hd89169044_)
                                 (_g89089036_ _g89109039_))))
                         (_g89089036_ _g89109039_)))))
              (let ((_g89069073_
                     (lambda (_g89109061_)
                       (if (gx#stx-pair? _g89109061_)
                           (let ((_e89119063_ (gx#stx-e _g89109061_)))
                             (let ((_hd89129066_ (##car _e89119063_))
                                   (_tl89139068_ (##cdr _e89119063_)))
                               (if (gx#stx-datum? _hd89129066_)
                                   (if (equal? (gx#stx-e _hd89129066_) '#f)
                                       (if (gx#stx-null? _tl89139068_)
                                           ((lambda ()
                                              (gxc#compile-e _L8891_)))
                                           (_g89079058_ _g89109061_))
                                       (_g89079058_ _g89109061_))
                                   (_g89079058_ _g89109061_))))
                           (_g89079058_ _g89109061_)))))
                (_g89069073_ _L8892_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd88568886_
                                              _hd88538878_)
                                             (_g88458862_ _g88468865_))))
                                     (_g88458862_ _g88468865_))))
                             (_g88458862_ _g88468865_))))
                     (_g88458862_ _g88468865_)))))
          (_g88449076_ _stx8843_)))))
  (define gxc#generate-runtime-check-values
    (lambda (_vals8831_ _hd8832_)
      (let ((_len8834_ (gx#stx-length _hd8832_)))
        (let ((_cmp8836_ (if (gx#stx-list? _hd8832_) 'fx= 'fx>=)))
          (let ((_errmsg8838_
                 (string-append
                  (if (gx#stx-list? _hd8832_)
                      '"Context expects "
                      '"Context expects at least ")
                  (number->string _len8834_)
                  '" values")))
            (let ((_count8840_ (gxc#generate-runtime-temporary__0)))
              (let ()
                (if (if (not (gx#stx-list? _hd8832_)) (fx= _len8834_ '0) '#f)
                    '#!void
                    (cons 'let
                          (cons (cons (cons _count8840_
                                            (cons (cons 'values-count
                                                        (cons _vals8831_ '()))
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (cons _cmp8836_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _count8840_ (cons _len8834_ '())))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _errmsg8838_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _count8840_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))))
  (define gxc#generate-runtime-lambda%
    (lambda (_stx8764_)
      (let ((_g87668783_
             (lambda (_g87678780_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g87678780_))))
        (let ((_g87658828_
               (lambda (_g87678786_)
                 (if (gx#stx-pair? _g87678786_)
                     (let ((_e87708788_ (gx#stx-e _g87678786_)))
                       (let ((_hd87718791_ (##car _e87708788_))
                             (_tl87728793_ (##cdr _e87708788_)))
                         (if (gx#stx-pair? _tl87728793_)
                             (let ((_e87738796_ (gx#stx-e _tl87728793_)))
                               (let ((_hd87748799_ (##car _e87738796_))
                                     (_tl87758801_ (##cdr _e87738796_)))
                                 (if (gx#stx-pair? _tl87758801_)
                                     (let ((_e87768804_
                                            (gx#stx-e _tl87758801_)))
                                       (let ((_hd87778807_ (##car _e87768804_))
                                             (_tl87788809_
                                              (##cdr _e87768804_)))
                                         (if (gx#stx-null? _tl87788809_)
                                             ((lambda (_L8812_ _L8813_)
                                                (cons 'lambda
                                                      (cons (gxc#generate-runtime-lambda-head
                                                             _L8813_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L8812_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd87778807_
                                              _hd87748799_)
                                             (_g87668783_ _g87678786_))))
                                     (_g87668783_ _g87678786_))))
                             (_g87668783_ _g87678786_))))
                     (_g87668783_ _g87678786_)))))
          (_g87658828_ _stx8764_)))))
  (define gxc#generate-runtime-lambda-head
    (lambda (_hd8762_)
      (gx#stx-map1 gxc#generate-runtime-binding-id* _hd8762_)))
  (define gxc#generate-runtime-case-lambda%
    (lambda (_stx7299_)
      (let ((_runtime-identifier=?7301_
             (lambda (_id-stx8753_ _sym8754_)
               (let ((_bind87558757_ (gx#resolve-identifier__0 _id-stx8753_)))
                 (if _bind87558757_
                     (let ((_bind8760_ _bind87558757_))
                       (eq? (##structure-ref _bind8760_ '1 gx#binding::t '#f)
                            _sym8754_))
                     '#f)))))
        (let ((_dispatch-case?7302_
               (lambda (_hd7983_ _body7984_)
                 (let ((_form7986_ (cons _hd7983_ (cons _body7984_ '()))))
                   (let ((_g79918148_
                          (lambda (_g79928145_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g79928145_))))
                     (let ((_g79908155_
                            (lambda (_g79928151_) ((lambda () '#f)))))
                       (let ((_g79898296_
                              (lambda (_g79928158_)
                                (if (gx#stx-pair? _g79928158_)
                                    (let ((_e81088160_ (gx#stx-e _g79928158_)))
                                      (let ((_hd81098163_ (##car _e81088160_))
                                            (_tl81108165_ (##cdr _e81088160_)))
                                        (if (gx#stx-pair? _tl81108165_)
                                            (let ((_e81118168_
                                                   (gx#stx-e _tl81108165_)))
                                              (let ((_hd81128171_
                                                     (##car _e81118168_))
                                                    (_tl81138173_
                                                     (##cdr _e81118168_)))
                                                (if (gx#stx-pair? _hd81128171_)
                                                    (let ((_e81148176_
                                                           (gx#stx-e
                                                            _hd81128171_)))
                                                      (let ((_hd81158179_
                                                             (##car _e81148176_))
                                                            (_tl81168181_
                                                             (##cdr _e81148176_)))
                                                        (if (gx#identifier?
                                                             _hd81158179_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd81158179_)
                        (if (gx#stx-pair? _tl81168181_)
                            (let ((_e81178184_ (gx#stx-e _tl81168181_)))
                              (let ((_hd81188187_ (##car _e81178184_))
                                    (_tl81198189_ (##cdr _e81178184_)))
                                (if (gx#stx-pair? _hd81188187_)
                                    (let ((_e81208192_
                                           (gx#stx-e _hd81188187_)))
                                      (let ((_hd81218195_ (##car _e81208192_))
                                            (_tl81228197_ (##cdr _e81208192_)))
                                        (if (gx#identifier? _hd81218195_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd81218195_)
                                                (if (gx#stx-pair? _tl81228197_)
                                                    (let ((_e81238200_
                                                           (gx#stx-e
                                                            _tl81228197_)))
                                                      (let ((_hd81248203_
                                                             (##car _e81238200_))
                                                            (_tl81258205_
                                                             (##cdr _e81238200_)))
                                                        (if (gx#stx-null?
                                                             _tl81258205_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl81198189_)
                        (let ((_e81268208_ (gx#stx-e _tl81198189_)))
                          (let ((_hd81278211_ (##car _e81268208_))
                                (_tl81288213_ (##cdr _e81268208_)))
                            (if (gx#stx-pair? _hd81278211_)
                                (let ((_e81298216_ (gx#stx-e _hd81278211_)))
                                  (let ((_hd81308219_ (##car _e81298216_))
                                        (_tl81318221_ (##cdr _e81298216_)))
                                    (if (gx#identifier? _hd81308219_)
                                        (if (gx#stx-eq? '%#ref _hd81308219_)
                                            (if (gx#stx-pair? _tl81318221_)
                                                (let ((_e81328224_
                                                       (gx#stx-e
                                                        _tl81318221_)))
                                                  (let ((_hd81338227_
                                                         (##car _e81328224_))
                                                        (_tl81348229_
                                                         (##cdr _e81328224_)))
                                                    (if (gx#stx-null?
                                                         _tl81348229_)
                                                        (if (gx#stx-pair?
                                                             _tl81288213_)
                                                            (let ((_e81358232_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl81288213_)))
                      (let ((_hd81368235_ (##car _e81358232_))
                            (_tl81378237_ (##cdr _e81358232_)))
                        (if (gx#stx-pair? _hd81368235_)
                            (let ((_e81388240_ (gx#stx-e _hd81368235_)))
                              (let ((_hd81398243_ (##car _e81388240_))
                                    (_tl81408245_ (##cdr _e81388240_)))
                                (if (gx#identifier? _hd81398243_)
                                    (if (gx#stx-eq? '%#ref _hd81398243_)
                                        (if (gx#stx-pair? _tl81408245_)
                                            (let ((_e81418248_
                                                   (gx#stx-e _tl81408245_)))
                                              (let ((_hd81428251_
                                                     (##car _e81418248_))
                                                    (_tl81438253_
                                                     (##cdr _e81418248_)))
                                                (if (gx#stx-null? _tl81438253_)
                                                    (if (gx#stx-null?
                                                         _tl81378237_)
                                                        (if (gx#stx-null?
                                                             _tl81138173_)
                                                            ((lambda (_L8256_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L8257_
                              _L8258_
                              _L8259_)
                       (if (if (gx#identifier? _L8259_)
                               (if (_runtime-identifier=?7301_ _L8258_ 'apply)
                                   (if (gx#free-identifier=? _L8259_ _L8256_)
                                       (not (gx#free-identifier=?
                                             _L8257_
                                             _L8259_))
                                       '#f)
                                   '#f)
                               '#f)
                           '#t
                           (_g79908155_ _g79928158_)))
                     _hd81428251_
                     _hd81338227_
                     _hd81248203_
                     _hd81098163_)
                    (_g79908155_ _g79928158_))
                (_g79908155_ _g79928158_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g79908155_
                                                     _g79928158_))))
                                            (_g79908155_ _g79928158_))
                                        (_g79908155_ _g79928158_))
                                    (_g79908155_ _g79928158_))))
                            (_g79908155_ _g79928158_))))
                    (_g79908155_ _g79928158_))
                (_g79908155_ _g79928158_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g79908155_ _g79928158_))
                                            (_g79908155_ _g79928158_))
                                        (_g79908155_ _g79928158_))))
                                (_g79908155_ _g79928158_))))
                        (_g79908155_ _g79928158_))
                    (_g79908155_ _g79928158_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g79908155_ _g79928158_))
                                                (_g79908155_ _g79928158_))
                                            (_g79908155_ _g79928158_))))
                                    (_g79908155_ _g79928158_))))
                            (_g79908155_ _g79928158_))
                        (_g79908155_ _g79928158_))
                    (_g79908155_ _g79928158_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g79908155_
                                                     _g79928158_))))
                                            (_g79908155_ _g79928158_))))
                                    (_g79908155_ _g79928158_)))))
                         (let ((_g79888556_
                                (lambda (_g79928299_)
                                  (if (gx#stx-pair? _g79928299_)
                                      (let ((_e80448301_
                                             (gx#stx-e _g79928299_)))
                                        (let ((_hd80458304_
                                               (##car _e80448301_))
                                              (_tl80468306_
                                               (##cdr _e80448301_)))
                                          (if (gx#stx-pair/null? _hd80458304_)
                                              (if (fx>= (gx#stx-length
                                                         _hd80458304_)
                                                        '0)
                                                  (let ((_g10333_
                                                         (gx#syntax-split-splice
                                                          _hd80458304_
                                                          '0)))
                                                    (begin
                                                      (let ((_g10334_
                                                             (values-count
                                                              _g10333_)))
                                                        (if (not (fx= _g10334_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g10334_)))
              (let ((_target80478309_ (values-ref _g10333_ 0))
                    (_tl80498311_ (values-ref _g10333_ 1)))
                (letrec ((_loop80508314_
                          (lambda (_hd80488317_ _arg80548319_)
                            (if (gx#stx-pair? _hd80488317_)
                                (let ((_e80518322_ (gx#stx-e _hd80488317_)))
                                  (let ((_lp-hd80528325_ (##car _e80518322_))
                                        (_lp-tl80538327_ (##cdr _e80518322_)))
                                    (_loop80508314_
                                     _lp-tl80538327_
                                     (cons _lp-hd80528325_ _arg80548319_))))
                                (let ((_arg80558330_ (reverse _arg80548319_)))
                                  (if (gx#stx-pair? _tl80468306_)
                                      (let ((_e80568333_
                                             (gx#stx-e _tl80468306_)))
                                        (let ((_hd80578336_
                                               (##car _e80568333_))
                                              (_tl80588338_
                                               (##cdr _e80568333_)))
                                          (if (gx#stx-pair? _hd80578336_)
                                              (let ((_e80598341_
                                                     (gx#stx-e _hd80578336_)))
                                                (let ((_hd80608344_
                                                       (##car _e80598341_))
                                                      (_tl80618346_
                                                       (##cdr _e80598341_)))
                                                  (if (gx#identifier?
                                                       _hd80608344_)
                                                      (if (gx#stx-eq?
                                                           '%#call
                                                           _hd80608344_)
                                                          (if (gx#stx-pair?
                                                               _tl80618346_)
                                                              (let ((_e80628349_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl80618346_)))
                        (let ((_hd80638352_ (##car _e80628349_))
                              (_tl80648354_ (##cdr _e80628349_)))
                          (if (gx#stx-pair? _hd80638352_)
                              (let ((_e80658357_ (gx#stx-e _hd80638352_)))
                                (let ((_hd80668360_ (##car _e80658357_))
                                      (_tl80678362_ (##cdr _e80658357_)))
                                  (if (gx#identifier? _hd80668360_)
                                      (if (gx#stx-eq? '%#ref _hd80668360_)
                                          (if (gx#stx-pair? _tl80678362_)
                                              (let ((_e80688365_
                                                     (gx#stx-e _tl80678362_)))
                                                (let ((_hd80698368_
                                                       (##car _e80688365_))
                                                      (_tl80708370_
                                                       (##cdr _e80688365_)))
                                                  (if (gx#stx-null?
                                                       _tl80708370_)
                                                      (if (gx#stx-pair?
                                                           _tl80648354_)
                                                          (let ((_e80718373_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl80648354_)))
                    (let ((_hd80728376_ (##car _e80718373_))
                          (_tl80738378_ (##cdr _e80718373_)))
                      (if (gx#stx-pair? _hd80728376_)
                          (let ((_e80748381_ (gx#stx-e _hd80728376_)))
                            (let ((_hd80758384_ (##car _e80748381_))
                                  (_tl80768386_ (##cdr _e80748381_)))
                              (if (gx#identifier? _hd80758384_)
                                  (if (gx#stx-eq? '%#ref _hd80758384_)
                                      (if (gx#stx-pair? _tl80768386_)
                                          (let ((_e80778389_
                                                 (gx#stx-e _tl80768386_)))
                                            (let ((_hd80788392_
                                                   (##car _e80778389_))
                                                  (_tl80798394_
                                                   (##cdr _e80778389_)))
                                              (if (gx#stx-null? _tl80798394_)
                                                  (if (gx#stx-pair/null?
                                                       _tl80738378_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl80738378_)
                        '1)
                  (let ((_g10335_ (gx#syntax-split-splice _tl80738378_ '1)))
                    (begin
                      (let ((_g10336_ (values-count _g10335_)))
                        (if (not (fx= _g10336_ 2))
                            (error "Context expects 2 values" _g10336_)))
                      (let ((_target80808397_ (values-ref _g10335_ 0))
                            (_tl80828399_ (values-ref _g10335_ 1)))
                        (if (gx#stx-pair? _tl80828399_)
                            (let ((_e80898402_ (gx#stx-e _tl80828399_)))
                              (let ((_hd80908405_ (##car _e80898402_))
                                    (_tl80918407_ (##cdr _e80898402_)))
                                (if (gx#stx-pair? _hd80908405_)
                                    (let ((_e80928410_
                                           (gx#stx-e _hd80908405_)))
                                      (let ((_hd80938413_ (##car _e80928410_))
                                            (_tl80948415_ (##cdr _e80928410_)))
                                        (if (gx#identifier? _hd80938413_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd80938413_)
                                                (if (gx#stx-pair? _tl80948415_)
                                                    (let ((_e80958418_
                                                           (gx#stx-e
                                                            _tl80948415_)))
                                                      (let ((_hd80968421_
                                                             (##car _e80958418_))
                                                            (_tl80978423_
                                                             (##cdr _e80958418_)))
                                                        (if (gx#stx-null?
                                                             _tl80978423_)
                                                            (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl80918407_)
                        (letrec ((_loop80838426_
                                  (lambda (_hd80818429_ _xarg80878431_)
                                    (if (gx#stx-pair? _hd80818429_)
                                        (let ((_e80848434_
                                               (gx#stx-e _hd80818429_)))
                                          (let ((_lp-hd80858437_
                                                 (##car _e80848434_))
                                                (_lp-tl80868439_
                                                 (##cdr _e80848434_)))
                                            (if (gx#stx-pair? _lp-hd80858437_)
                                                (let ((_e80988442_
                                                       (gx#stx-e
                                                        _lp-hd80858437_)))
                                                  (let ((_hd80998445_
                                                         (##car _e80988442_))
                                                        (_tl81008447_
                                                         (##cdr _e80988442_)))
                                                    (if (gx#identifier?
                                                         _hd80998445_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd80998445_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl81008447_)
                        (let ((_e81018450_ (gx#stx-e _tl81008447_)))
                          (let ((_hd81028453_ (##car _e81018450_))
                                (_tl81038455_ (##cdr _e81018450_)))
                            (if (gx#stx-null? _tl81038455_)
                                (_loop80838426_
                                 _lp-tl80868439_
                                 (cons _hd81028453_ _xarg80878431_))
                                (_g79898296_ _g79928299_))))
                        (_g79898296_ _g79928299_))
                    (_g79898296_ _g79928299_))
                (_g79898296_ _g79928299_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g79898296_ _g79928299_))))
                                        (let ((_xarg80888458_
                                               (reverse _xarg80878431_)))
                                          (if (gx#stx-null? _tl80588338_)
                                              ((lambda (_L8461_
                                                        _L8462_
                                                        _L8463_
                                                        _L8464_
                                                        _L8465_
                                                        _L8466_)
                                                 (if (if (gx#identifier-list?
                                                          (begin
                                                            '#!void
                                                            (foldr1 (lambda (_g85098512_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g85108514_)
                              (cons _g85098512_ _g85108514_))
                            '()
                            _L8466_)))
                 (if (gx#identifier? _L8465_)
                     (if (_runtime-identifier=?7301_ _L8464_ 'apply)
                         (if (fx= (length (begin
                                            '#!void
                                            (foldr1 (lambda (_g85168519_
                                                             _g85178521_)
                                                      (cons _g85168519_
                                                            _g85178521_))
                                                    '()
                                                    _L8466_)))
                                  (length (begin
                                            '#!void
                                            (foldr1 (lambda (_g85238526_
                                                             _g85248528_)
                                                      (cons _g85238526_
                                                            _g85248528_))
                                                    '()
                                                    _L8462_))))
                             (if (andmap gx#free-identifier=?
                                         (begin
                                           '#!void
                                           (foldr1 (lambda (_g85308533_
                                                            _g85318535_)
                                                     (cons _g85308533_
                                                           _g85318535_))
                                                   '()
                                                   _L8466_))
                                         (begin
                                           '#!void
                                           (foldr1 (lambda (_g85378540_
                                                            _g85388542_)
                                                     (cons _g85378540_
                                                           _g85388542_))
                                                   '()
                                                   _L8462_)))
                                 (if (gx#free-identifier=? _L8465_ _L8461_)
                                     (not (find (lambda (_g85448546_)
                                                  (gx#free-identifier=?
                                                   _g85448546_
                                                   _L8463_))
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g85488551_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g85498553_)
                    (cons _g85488551_ _g85498553_))
                  (cons _L8465_ '())
                  _L8466_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '#f)
                                 '#f)
                             '#f)
                         '#f)
                     '#f)
                 '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#t
                                                     (_g79898296_
                                                      _g79928299_)))
                                               _hd80968421_
                                               _xarg80888458_
                                               _hd80788392_
                                               _hd80698368_
                                               _tl80498311_
                                               _arg80558330_)
                                              (_g79898296_ _g79928299_)))))))
                          (_loop80838426_ _target80808397_ '()))
                        (_g79898296_ _g79928299_))
                    (_g79898296_ _g79928299_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g79898296_ _g79928299_))
                                                (_g79898296_ _g79928299_))
                                            (_g79898296_ _g79928299_))))
                                    (_g79898296_ _g79928299_))))
                            (_g79898296_ _g79928299_)))))
                  (_g79898296_ _g79928299_))
              (_g79898296_ _g79928299_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g79898296_ _g79928299_))))
                                          (_g79898296_ _g79928299_))
                                      (_g79898296_ _g79928299_))
                                  (_g79898296_ _g79928299_))))
                          (_g79898296_ _g79928299_))))
                  (_g79898296_ _g79928299_))
              (_g79898296_ _g79928299_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g79898296_ _g79928299_))
                                          (_g79898296_ _g79928299_))
                                      (_g79898296_ _g79928299_))))
                              (_g79898296_ _g79928299_))))
                      (_g79898296_ _g79928299_))
                  (_g79898296_ _g79928299_))
              (_g79898296_ _g79928299_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g79898296_ _g79928299_))))
                                      (_g79898296_ _g79928299_)))))))
                  (_loop80508314_ _target80478309_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g79898296_ _g79928299_))
                                              (_g79898296_ _g79928299_))))
                                      (_g79898296_ _g79928299_)))))
                           (let ((_g79878750_
                                  (lambda (_g79928559_)
                                    (if (gx#stx-pair? _g79928559_)
                                        (let ((_e79968561_
                                               (gx#stx-e _g79928559_)))
                                          (let ((_hd79978564_
                                                 (##car _e79968561_))
                                                (_tl79988566_
                                                 (##cdr _e79968561_)))
                                            (if (gx#stx-pair/null?
                                                 _hd79978564_)
                                                (if (fx>= (gx#stx-length
                                                           _hd79978564_)
                                                          '0)
                                                    (let ((_g10337_
                                                           (gx#syntax-split-splice
                                                            _hd79978564_
                                                            '0)))
                                                      (begin
                                                        (let ((_g10338_
                                                               (values-count
                                                                _g10337_)))
                                                          (if (not (fx= _g10338_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                2))
                      (error "Context expects 2 values" _g10338_)))
                (let ((_target79998569_ (values-ref _g10337_ 0))
                      (_tl80018571_ (values-ref _g10337_ 1)))
                  (if (gx#stx-null? _tl80018571_)
                      (letrec ((_loop80028574_
                                (lambda (_hd80008577_ _arg80068579_)
                                  (if (gx#stx-pair? _hd80008577_)
                                      (let ((_e80038582_
                                             (gx#stx-e _hd80008577_)))
                                        (let ((_lp-hd80048585_
                                               (##car _e80038582_))
                                              (_lp-tl80058587_
                                               (##cdr _e80038582_)))
                                          (_loop80028574_
                                           _lp-tl80058587_
                                           (cons _lp-hd80048585_
                                                 _arg80068579_))))
                                      (let ((_arg80078590_
                                             (reverse _arg80068579_)))
                                        (if (gx#stx-pair? _tl79988566_)
                                            (let ((_e80088593_
                                                   (gx#stx-e _tl79988566_)))
                                              (let ((_hd80098596_
                                                     (##car _e80088593_))
                                                    (_tl80108598_
                                                     (##cdr _e80088593_)))
                                                (if (gx#stx-pair? _hd80098596_)
                                                    (let ((_e80118601_
                                                           (gx#stx-e
                                                            _hd80098596_)))
                                                      (let ((_hd80128604_
                                                             (##car _e80118601_))
                                                            (_tl80138606_
                                                             (##cdr _e80118601_)))
                                                        (if (gx#identifier?
                                                             _hd80128604_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd80128604_)
                        (if (gx#stx-pair? _tl80138606_)
                            (let ((_e80148609_ (gx#stx-e _tl80138606_)))
                              (let ((_hd80158612_ (##car _e80148609_))
                                    (_tl80168614_ (##cdr _e80148609_)))
                                (if (gx#stx-pair? _hd80158612_)
                                    (let ((_e80178617_
                                           (gx#stx-e _hd80158612_)))
                                      (let ((_hd80188620_ (##car _e80178617_))
                                            (_tl80198622_ (##cdr _e80178617_)))
                                        (if (gx#identifier? _hd80188620_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd80188620_)
                                                (if (gx#stx-pair? _tl80198622_)
                                                    (let ((_e80208625_
                                                           (gx#stx-e
                                                            _tl80198622_)))
                                                      (let ((_hd80218628_
                                                             (##car _e80208625_))
                                                            (_tl80228630_
                                                             (##cdr _e80208625_)))
                                                        (if (gx#stx-null?
                                                             _tl80228630_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl80168614_)
                        (if (fx>= (gx#stx-length _tl80168614_) '0)
                            (let ((_g10339_
                                   (gx#syntax-split-splice _tl80168614_ '0)))
                              (begin
                                (let ((_g10340_ (values-count _g10339_)))
                                  (if (not (fx= _g10340_ 2))
                                      (error "Context expects 2 values"
                                             _g10340_)))
                                (let ((_target80238633_
                                       (values-ref _g10339_ 0))
                                      (_tl80258635_ (values-ref _g10339_ 1)))
                                  (if (gx#stx-null? _tl80258635_)
                                      (letrec ((_loop80268638_
                                                (lambda (_hd80248641_
                                                         _xarg80308643_)
                                                  (if (gx#stx-pair?
                                                       _hd80248641_)
                                                      (let ((_e80278646_
                                                             (gx#stx-e
                                                              _hd80248641_)))
                                                        (let ((_lp-hd80288649_
                                                               (##car _e80278646_))
                                                              (_lp-tl80298651_
                                                               (##cdr _e80278646_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd80288649_)
                                                              (let ((_e80328654_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _lp-hd80288649_)))
                        (let ((_hd80338657_ (##car _e80328654_))
                              (_tl80348659_ (##cdr _e80328654_)))
                          (if (gx#identifier? _hd80338657_)
                              (if (gx#stx-eq? '%#ref _hd80338657_)
                                  (if (gx#stx-pair? _tl80348659_)
                                      (let ((_e80358662_
                                             (gx#stx-e _tl80348659_)))
                                        (let ((_hd80368665_
                                               (##car _e80358662_))
                                              (_tl80378667_
                                               (##cdr _e80358662_)))
                                          (if (gx#stx-null? _tl80378667_)
                                              (_loop80268638_
                                               _lp-tl80298651_
                                               (cons _hd80368665_
                                                     _xarg80308643_))
                                              (_g79888556_ _g79928559_))))
                                      (_g79888556_ _g79928559_))
                                  (_g79888556_ _g79928559_))
                              (_g79888556_ _g79928559_))))
                      (_g79888556_ _g79928559_))))
              (let ((_xarg80318670_ (reverse _xarg80308643_)))
                (if (gx#stx-null? _tl80108598_)
                    ((lambda (_L8673_ _L8674_ _L8675_)
                       (if (if (gx#identifier-list?
                                (begin
                                  '#!void
                                  (foldr1 (lambda (_g87038706_ _g87048708_)
                                            (cons _g87038706_ _g87048708_))
                                          '()
                                          _L8675_)))
                               (if (fx= (length (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g87108713_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g87118715_)
                    (cons _g87108713_ _g87118715_))
                  '()
                  _L8675_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (length (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g87178720_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g87188722_)
                    (cons _g87178720_ _g87188722_))
                  '()
                  _L8673_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (andmap gx#free-identifier=?
                                               (begin
                                                 '#!void
                                                 (foldr1 (lambda (_g87248727_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g87258729_)
                   (cons _g87248727_ _g87258729_))
                 '()
                 _L8675_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (begin
                                                 '#!void
                                                 (foldr1 (lambda (_g87318734_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g87328736_)
                   (cons _g87318734_ _g87328736_))
                 '()
                 _L8673_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (not (find (lambda (_g87388740_)
                                                    (gx#free-identifier=?
                                                     _g87388740_
                                                     _L8674_))
                                                  (begin
                                                    '#!void
                                                    (foldr1 (lambda (_g87428745_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g87438747_)
                      (cons _g87428745_ _g87438747_))
                    '()
                    _L8675_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '#f)
                                   '#f)
                               '#f)
                           '#t
                           (_g79888556_ _g79928559_)))
                     _xarg80318670_
                     _hd80218628_
                     _arg80078590_)
                    (_g79888556_ _g79928559_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop80268638_ _target80238633_ '()))
                                      (_g79888556_ _g79928559_)))))
                            (_g79888556_ _g79928559_))
                        (_g79888556_ _g79928559_))
                    (_g79888556_ _g79928559_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g79888556_ _g79928559_))
                                                (_g79888556_ _g79928559_))
                                            (_g79888556_ _g79928559_))))
                                    (_g79888556_ _g79928559_))))
                            (_g79888556_ _g79928559_))
                        (_g79888556_ _g79928559_))
                    (_g79888556_ _g79928559_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g79888556_
                                                     _g79928559_))))
                                            (_g79888556_ _g79928559_)))))))
                        (_loop80028574_ _target79998569_ '()))
                      (_g79888556_ _g79928559_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g79888556_ _g79928559_))
                                                (_g79888556_ _g79928559_))))
                                        (_g79888556_ _g79928559_)))))
                             (_g79878750_ _form7986_))))))))))
          (let ((_dispatch-case-e7303_
                 (lambda (_hd7447_ _body7448_)
                   (let ((_form7450_ (cons _hd7447_ (cons _body7448_ '()))))
                     (let ((_g74547578_
                            (lambda (_g74557575_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g74557575_))))
                       (let ((_g74537696_
                              (lambda (_g74557581_)
                                (if (gx#stx-pair? _g74557581_)
                                    (let ((_e75447583_ (gx#stx-e _g74557581_)))
                                      (let ((_hd75457586_ (##car _e75447583_))
                                            (_tl75467588_ (##cdr _e75447583_)))
                                        (if (gx#stx-pair? _tl75467588_)
                                            (let ((_e75477591_
                                                   (gx#stx-e _tl75467588_)))
                                              (let ((_hd75487594_
                                                     (##car _e75477591_))
                                                    (_tl75497596_
                                                     (##cdr _e75477591_)))
                                                (if (gx#stx-pair? _hd75487594_)
                                                    (let ((_e75507599_
                                                           (gx#stx-e
                                                            _hd75487594_)))
                                                      (let ((_hd75517602_
                                                             (##car _e75507599_))
                                                            (_tl75527604_
                                                             (##cdr _e75507599_)))
                                                        (if (gx#identifier?
                                                             _hd75517602_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd75517602_)
                        (if (gx#stx-pair? _tl75527604_)
                            (let ((_e75537607_ (gx#stx-e _tl75527604_)))
                              (let ((_hd75547610_ (##car _e75537607_))
                                    (_tl75557612_ (##cdr _e75537607_)))
                                (if (gx#stx-pair? _hd75547610_)
                                    (let ((_e75567615_
                                           (gx#stx-e _hd75547610_)))
                                      (let ((_hd75577618_ (##car _e75567615_))
                                            (_tl75587620_ (##cdr _e75567615_)))
                                        (if (gx#identifier? _hd75577618_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd75577618_)
                                                (if (gx#stx-pair? _tl75587620_)
                                                    (let ((_e75597623_
                                                           (gx#stx-e
                                                            _tl75587620_)))
                                                      (let ((_hd75607626_
                                                             (##car _e75597623_))
                                                            (_tl75617628_
                                                             (##cdr _e75597623_)))
                                                        (if (gx#stx-null?
                                                             _tl75617628_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl75557612_)
                        (let ((_e75627631_ (gx#stx-e _tl75557612_)))
                          (let ((_hd75637634_ (##car _e75627631_))
                                (_tl75647636_ (##cdr _e75627631_)))
                            (if (gx#stx-pair? _hd75637634_)
                                (let ((_e75657639_ (gx#stx-e _hd75637634_)))
                                  (let ((_hd75667642_ (##car _e75657639_))
                                        (_tl75677644_ (##cdr _e75657639_)))
                                    (if (gx#identifier? _hd75667642_)
                                        (if (gx#stx-eq? '%#ref _hd75667642_)
                                            (if (gx#stx-pair? _tl75677644_)
                                                (let ((_e75687647_
                                                       (gx#stx-e
                                                        _tl75677644_)))
                                                  (let ((_hd75697650_
                                                         (##car _e75687647_))
                                                        (_tl75707652_
                                                         (##cdr _e75687647_)))
                                                    (if (gx#stx-null?
                                                         _tl75707652_)
                                                        (if (gx#stx-pair?
                                                             _tl75647636_)
                                                            (let ((_e75717655_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl75647636_)))
                      (let ((_hd75727658_ (##car _e75717655_))
                            (_tl75737660_ (##cdr _e75717655_)))
                        (if (gx#stx-null? _tl75737660_)
                            (if (gx#stx-null? _tl75497596_)
                                ((lambda (_L7663_ _L7664_ _L7665_)
                                   (gxc#compile-e
                                    (cons (gx#datum->syntax__0 '#f '%#ref)
                                          (cons _L7663_ '()))))
                                 _hd75697650_
                                 _hd75607626_
                                 _hd75457586_)
                                (_g74547578_ _g74557581_))
                            (_g74547578_ _g74557581_))))
                    (_g74547578_ _g74557581_))
                (_g74547578_ _g74557581_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g74547578_ _g74557581_))
                                            (_g74547578_ _g74557581_))
                                        (_g74547578_ _g74557581_))))
                                (_g74547578_ _g74557581_))))
                        (_g74547578_ _g74557581_))
                    (_g74547578_ _g74557581_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g74547578_ _g74557581_))
                                                (_g74547578_ _g74557581_))
                                            (_g74547578_ _g74557581_))))
                                    (_g74547578_ _g74557581_))))
                            (_g74547578_ _g74557581_))
                        (_g74547578_ _g74557581_))
                    (_g74547578_ _g74557581_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g74547578_
                                                     _g74557581_))))
                                            (_g74547578_ _g74557581_))))
                                    (_g74547578_ _g74557581_)))))
                         (let ((_g74527832_
                                (lambda (_g74557699_)
                                  (if (gx#stx-pair? _g74557699_)
                                      (let ((_e75057701_
                                             (gx#stx-e _g74557699_)))
                                        (let ((_hd75067704_
                                               (##car _e75057701_))
                                              (_tl75077706_
                                               (##cdr _e75057701_)))
                                          (if (gx#stx-pair/null? _hd75067704_)
                                              (if (fx>= (gx#stx-length
                                                         _hd75067704_)
                                                        '0)
                                                  (let ((_g10327_
                                                         (gx#syntax-split-splice
                                                          _hd75067704_
                                                          '0)))
                                                    (begin
                                                      (let ((_g10328_
                                                             (values-count
                                                              _g10327_)))
                                                        (if (not (fx= _g10328_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g10328_)))
              (let ((_target75087709_ (values-ref _g10327_ 0))
                    (_tl75107711_ (values-ref _g10327_ 1)))
                (letrec ((_loop75117714_
                          (lambda (_hd75097717_ _arg75157719_)
                            (if (gx#stx-pair? _hd75097717_)
                                (let ((_e75127722_ (gx#stx-e _hd75097717_)))
                                  (let ((_lp-hd75137725_ (##car _e75127722_))
                                        (_lp-tl75147727_ (##cdr _e75127722_)))
                                    (_loop75117714_
                                     _lp-tl75147727_
                                     (cons _lp-hd75137725_ _arg75157719_))))
                                (let ((_arg75167730_ (reverse _arg75157719_)))
                                  (if (gx#stx-pair? _tl75077706_)
                                      (let ((_e75177733_
                                             (gx#stx-e _tl75077706_)))
                                        (let ((_hd75187736_
                                               (##car _e75177733_))
                                              (_tl75197738_
                                               (##cdr _e75177733_)))
                                          (if (gx#stx-pair? _hd75187736_)
                                              (let ((_e75207741_
                                                     (gx#stx-e _hd75187736_)))
                                                (let ((_hd75217744_
                                                       (##car _e75207741_))
                                                      (_tl75227746_
                                                       (##cdr _e75207741_)))
                                                  (if (gx#identifier?
                                                       _hd75217744_)
                                                      (if (gx#stx-eq?
                                                           '%#call
                                                           _hd75217744_)
                                                          (if (gx#stx-pair?
                                                               _tl75227746_)
                                                              (let ((_e75237749_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl75227746_)))
                        (let ((_hd75247752_ (##car _e75237749_))
                              (_tl75257754_ (##cdr _e75237749_)))
                          (if (gx#stx-pair? _hd75247752_)
                              (let ((_e75267757_ (gx#stx-e _hd75247752_)))
                                (let ((_hd75277760_ (##car _e75267757_))
                                      (_tl75287762_ (##cdr _e75267757_)))
                                  (if (gx#identifier? _hd75277760_)
                                      (if (gx#stx-eq? '%#ref _hd75277760_)
                                          (if (gx#stx-pair? _tl75287762_)
                                              (let ((_e75297765_
                                                     (gx#stx-e _tl75287762_)))
                                                (let ((_hd75307768_
                                                       (##car _e75297765_))
                                                      (_tl75317770_
                                                       (##cdr _e75297765_)))
                                                  (if (gx#stx-null?
                                                       _tl75317770_)
                                                      (if (gx#stx-pair?
                                                           _tl75257754_)
                                                          (let ((_e75327773_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl75257754_)))
                    (let ((_hd75337776_ (##car _e75327773_))
                          (_tl75347778_ (##cdr _e75327773_)))
                      (if (gx#stx-pair? _hd75337776_)
                          (let ((_e75357781_ (gx#stx-e _hd75337776_)))
                            (let ((_hd75367784_ (##car _e75357781_))
                                  (_tl75377786_ (##cdr _e75357781_)))
                              (if (gx#identifier? _hd75367784_)
                                  (if (gx#stx-eq? '%#ref _hd75367784_)
                                      (if (gx#stx-pair? _tl75377786_)
                                          (let ((_e75387789_
                                                 (gx#stx-e _tl75377786_)))
                                            (let ((_hd75397792_
                                                   (##car _e75387789_))
                                                  (_tl75407794_
                                                   (##cdr _e75387789_)))
                                              (if (gx#stx-null? _tl75407794_)
                                                  (if (gx#stx-null?
                                                       _tl75197738_)
                                                      ((lambda (_L7797_
                                                                _L7798_
                                                                _L7799_
                                                                _L7800_)
                                                         (gxc#compile-e
                                                          (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '%#ref)
                        (cons _L7797_ '()))))
               _hd75397792_
               _hd75307768_
               _tl75107711_
               _arg75167730_)
              (_g74537696_ _g74557699_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g74537696_ _g74557699_))))
                                          (_g74537696_ _g74557699_))
                                      (_g74537696_ _g74557699_))
                                  (_g74537696_ _g74557699_))))
                          (_g74537696_ _g74557699_))))
                  (_g74537696_ _g74557699_))
              (_g74537696_ _g74557699_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g74537696_ _g74557699_))
                                          (_g74537696_ _g74557699_))
                                      (_g74537696_ _g74557699_))))
                              (_g74537696_ _g74557699_))))
                      (_g74537696_ _g74557699_))
                  (_g74537696_ _g74557699_))
              (_g74537696_ _g74557699_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g74537696_ _g74557699_))))
                                      (_g74537696_ _g74557699_)))))))
                  (_loop75117714_ _target75087709_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g74537696_ _g74557699_))
                                              (_g74537696_ _g74557699_))))
                                      (_g74537696_ _g74557699_)))))
                           (let ((_g74517980_
                                  (lambda (_g74557835_)
                                    (if (gx#stx-pair? _g74557835_)
                                        (let ((_e74597837_
                                               (gx#stx-e _g74557835_)))
                                          (let ((_hd74607840_
                                                 (##car _e74597837_))
                                                (_tl74617842_
                                                 (##cdr _e74597837_)))
                                            (if (gx#stx-pair/null?
                                                 _hd74607840_)
                                                (if (fx>= (gx#stx-length
                                                           _hd74607840_)
                                                          '0)
                                                    (let ((_g10329_
                                                           (gx#syntax-split-splice
                                                            _hd74607840_
                                                            '0)))
                                                      (begin
                                                        (let ((_g10330_
                                                               (values-count
                                                                _g10329_)))
                                                          (if (not (fx= _g10330_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                2))
                      (error "Context expects 2 values" _g10330_)))
                (let ((_target74627845_ (values-ref _g10329_ 0))
                      (_tl74647847_ (values-ref _g10329_ 1)))
                  (if (gx#stx-null? _tl74647847_)
                      (letrec ((_loop74657850_
                                (lambda (_hd74637853_ _arg74697855_)
                                  (if (gx#stx-pair? _hd74637853_)
                                      (let ((_e74667858_
                                             (gx#stx-e _hd74637853_)))
                                        (let ((_lp-hd74677861_
                                               (##car _e74667858_))
                                              (_lp-tl74687863_
                                               (##cdr _e74667858_)))
                                          (_loop74657850_
                                           _lp-tl74687863_
                                           (cons _lp-hd74677861_
                                                 _arg74697855_))))
                                      (let ((_arg74707866_
                                             (reverse _arg74697855_)))
                                        (if (gx#stx-pair? _tl74617842_)
                                            (let ((_e74717869_
                                                   (gx#stx-e _tl74617842_)))
                                              (let ((_hd74727872_
                                                     (##car _e74717869_))
                                                    (_tl74737874_
                                                     (##cdr _e74717869_)))
                                                (if (gx#stx-pair? _hd74727872_)
                                                    (let ((_e74747877_
                                                           (gx#stx-e
                                                            _hd74727872_)))
                                                      (let ((_hd74757880_
                                                             (##car _e74747877_))
                                                            (_tl74767882_
                                                             (##cdr _e74747877_)))
                                                        (if (gx#identifier?
                                                             _hd74757880_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd74757880_)
                        (if (gx#stx-pair? _tl74767882_)
                            (let ((_e74777885_ (gx#stx-e _tl74767882_)))
                              (let ((_hd74787888_ (##car _e74777885_))
                                    (_tl74797890_ (##cdr _e74777885_)))
                                (if (gx#stx-pair? _hd74787888_)
                                    (let ((_e74807893_
                                           (gx#stx-e _hd74787888_)))
                                      (let ((_hd74817896_ (##car _e74807893_))
                                            (_tl74827898_ (##cdr _e74807893_)))
                                        (if (gx#identifier? _hd74817896_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd74817896_)
                                                (if (gx#stx-pair? _tl74827898_)
                                                    (let ((_e74837901_
                                                           (gx#stx-e
                                                            _tl74827898_)))
                                                      (let ((_hd74847904_
                                                             (##car _e74837901_))
                                                            (_tl74857906_
                                                             (##cdr _e74837901_)))
                                                        (if (gx#stx-null?
                                                             _tl74857906_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl74797890_)
                        (if (fx>= (gx#stx-length _tl74797890_) '0)
                            (let ((_g10331_
                                   (gx#syntax-split-splice _tl74797890_ '0)))
                              (begin
                                (let ((_g10332_ (values-count _g10331_)))
                                  (if (not (fx= _g10332_ 2))
                                      (error "Context expects 2 values"
                                             _g10332_)))
                                (let ((_target74867909_
                                       (values-ref _g10331_ 0))
                                      (_tl74887911_ (values-ref _g10331_ 1)))
                                  (if (gx#stx-null? _tl74887911_)
                                      (letrec ((_loop74897914_
                                                (lambda (_hd74877917_
                                                         _xarg74937919_)
                                                  (if (gx#stx-pair?
                                                       _hd74877917_)
                                                      (let ((_e74907922_
                                                             (gx#stx-e
                                                              _hd74877917_)))
                                                        (let ((_lp-hd74917925_
                                                               (##car _e74907922_))
                                                              (_lp-tl74927927_
                                                               (##cdr _e74907922_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd74917925_)
                                                              (let ((_e74957930_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _lp-hd74917925_)))
                        (let ((_hd74967933_ (##car _e74957930_))
                              (_tl74977935_ (##cdr _e74957930_)))
                          (if (gx#identifier? _hd74967933_)
                              (if (gx#stx-eq? '%#ref _hd74967933_)
                                  (if (gx#stx-pair? _tl74977935_)
                                      (let ((_e74987938_
                                             (gx#stx-e _tl74977935_)))
                                        (let ((_hd74997941_
                                               (##car _e74987938_))
                                              (_tl75007943_
                                               (##cdr _e74987938_)))
                                          (if (gx#stx-null? _tl75007943_)
                                              (_loop74897914_
                                               _lp-tl74927927_
                                               (cons _hd74997941_
                                                     _xarg74937919_))
                                              (_g74527832_ _g74557835_))))
                                      (_g74527832_ _g74557835_))
                                  (_g74527832_ _g74557835_))
                              (_g74527832_ _g74557835_))))
                      (_g74527832_ _g74557835_))))
              (let ((_xarg74947946_ (reverse _xarg74937919_)))
                (if (gx#stx-null? _tl74737874_)
                    ((lambda (_L7949_ _L7950_ _L7951_)
                       (gxc#compile-e
                        (cons (gx#datum->syntax__0 '#f '%#ref)
                              (cons _L7950_ '()))))
                     _xarg74947946_
                     _hd74847904_
                     _arg74707866_)
                    (_g74527832_ _g74557835_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop74897914_ _target74867909_ '()))
                                      (_g74527832_ _g74557835_)))))
                            (_g74527832_ _g74557835_))
                        (_g74527832_ _g74557835_))
                    (_g74527832_ _g74557835_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g74527832_ _g74557835_))
                                                (_g74527832_ _g74557835_))
                                            (_g74527832_ _g74557835_))))
                                    (_g74527832_ _g74557835_))))
                            (_g74527832_ _g74557835_))
                        (_g74527832_ _g74557835_))
                    (_g74527832_ _g74557835_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g74527832_
                                                     _g74557835_))))
                                            (_g74527832_ _g74557835_)))))))
                        (_loop74657850_ _target74627845_ '()))
                      (_g74527832_ _g74557835_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g74527832_ _g74557835_))
                                                (_g74527832_ _g74557835_))))
                                        (_g74527832_ _g74557835_)))))
                             (_g74517980_ _form7450_)))))))))
            (let ((_generate17304_
                   (lambda (_args7435_ _arglen7436_ _hd7437_ _body7438_)
                     (let ((_len7440_ (gx#stx-length _hd7437_)))
                       (let ((_condition7442_
                              (if (gx#stx-list? _hd7437_)
                                  (cons 'fx=
                                        (cons _arglen7436_
                                              (cons _len7440_ '())))
                                  (if (> _len7440_ '0)
                                      (cons 'fx>=
                                            (cons _arglen7436_
                                                  (cons _len7440_ '())))
                                      '#t))))
                         (let ((_dispatch7444_
                                (if (_dispatch-case?7302_ _hd7437_ _body7438_)
                                    (_dispatch-case-e7303_ _hd7437_ _body7438_)
                                    (cons 'lambda
                                          (cons (gxc#generate-runtime-lambda-head
                                                 _hd7437_)
                                                (cons (gxc#compile-e
                                                       _body7438_)
                                                      '()))))))
                           (let ()
                             (cons _condition7442_
                                   (cons (cons 'apply
                                               (cons _dispatch7444_
                                                     (cons _args7435_ '())))
                                         '())))))))))
              (let ((_g73067334_
                     (lambda (_g73077331_)
                       (gx#raise-syntax-error '#f '"Bad syntax" _g73077331_))))
                (let ((_g73057432_
                       (lambda (_g73077337_)
                         (if (gx#stx-pair? _g73077337_)
                             (let ((_e73107339_ (gx#stx-e _g73077337_)))
                               (let ((_hd73117342_ (##car _e73107339_))
                                     (_tl73127344_ (##cdr _e73107339_)))
                                 (if (gx#stx-pair/null? _tl73127344_)
                                     (if (fx>= (gx#stx-length _tl73127344_) '0)
                                         (let ((_g10325_
                                                (gx#syntax-split-splice
                                                 _tl73127344_
                                                 '0)))
                                           (begin
                                             (let ((_g10326_
                                                    (values-count _g10325_)))
                                               (if (not (fx= _g10326_ 2))
                                                   (error "Context expects 2 values"
                                                          _g10326_)))
                                             (let ((_target73137347_
                                                    (values-ref _g10325_ 0))
                                                   (_tl73157349_
                                                    (values-ref _g10325_ 1)))
                                               (if (gx#stx-null? _tl73157349_)
                                                   (letrec ((_loop73167352_
                                                             (lambda (_hd73147355_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _body73207357_
                              _hd73217359_)
                       (if (gx#stx-pair? _hd73147355_)
                           (let ((_e73177362_ (gx#stx-e _hd73147355_)))
                             (let ((_lp-hd73187365_ (##car _e73177362_))
                                   (_lp-tl73197367_ (##cdr _e73177362_)))
                               (if (gx#stx-pair? _lp-hd73187365_)
                                   (let ((_e73247370_
                                          (gx#stx-e _lp-hd73187365_)))
                                     (let ((_hd73257373_ (##car _e73247370_))
                                           (_tl73267375_ (##cdr _e73247370_)))
                                       (if (gx#stx-pair? _tl73267375_)
                                           (let ((_e73277378_
                                                  (gx#stx-e _tl73267375_)))
                                             (let ((_hd73287381_
                                                    (##car _e73277378_))
                                                   (_tl73297383_
                                                    (##cdr _e73277378_)))
                                               (if (gx#stx-null? _tl73297383_)
                                                   (_loop73167352_
                                                    _lp-tl73197367_
                                                    (cons _hd73287381_
                                                          _body73207357_)
                                                    (cons _hd73257373_
                                                          _hd73217359_))
                                                   (_g73067334_ _g73077337_))))
                                           (_g73067334_ _g73077337_))))
                                   (_g73067334_ _g73077337_))))
                           (let ((_body73227386_ (reverse _body73207357_))
                                 (_hd73237388_ (reverse _hd73217359_)))
                             ((lambda (_L7391_ _L7392_)
                                (let ((_args7408_
                                       (gxc#generate-runtime-temporary__0))
                                      (_arglen7409_
                                       (gxc#generate-runtime-temporary__0)))
                                  (cons 'lambda
                                        (cons _args7408_
                                              (cons (cons 'let
                                                          (cons (cons (cons _arglen7409_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons 'length (cons _args7408_ '()))
                                          '()))
                              '())
                        (cons (cons 'cond
                                    (foldr1 cons
                                            (cons (cons 'else
                                                        (cons (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons '"No clause matching arguments"
                                  (cons _args7408_ '())))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())
                                            (map (lambda (_g74107413_
                                                          _g74117415_)
                                                   (_generate17304_
                                                    _args7408_
                                                    _arglen7409_
                                                    _g74107413_
                                                    _g74117415_))
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g74177420_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g74187422_)
                     (cons _g74177420_ _g74187422_))
                   '()
                   _L7392_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g74247427_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g74257429_)
                     (cons _g74247427_ _g74257429_))
                   '()
                   _L7391_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))))
                              _body73227386_
                              _hd73237388_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop73167352_
                                                      _target73137347_
                                                      '()
                                                      '()))
                                                   (_g73067334_
                                                    _g73077337_)))))
                                         (_g73067334_ _g73077337_))
                                     (_g73067334_ _g73077337_))))
                             (_g73067334_ _g73077337_)))))
                  (_g73057432_ _stx7299_)))))))))
  (begin
    (define gxc#generate-runtime-let-values%__opt-lambda6979
      (lambda (_stx6981_ _compiled-body?6982_)
        (let ((_generate-simple6984_
               (lambda (_hd7286_ _body7287_)
                 (gxc#generate-runtime-simple-let
                  'let
                  _hd7286_
                  _body7287_
                  _compiled-body?6982_))))
          (let ((_generate-values-post6986_
                 (lambda (_post7058_ _body7059_)
                   ((letrec ((_lp7061_
                              (lambda (_rest7063_ _body7064_)
                                (let ((_rest70657073_ _rest7063_))
                                  (let ((_E70687077_
                                         (lambda ()
                                           (error '"No clause matching"
                                                  _rest70657073_))))
                                    (let ((_else70677081_
                                           (lambda () _body7064_)))
                                      (let ((_K70697087_
                                             (lambda (_rest7084_ _bind7085_)
                                               (_lp7061_
                                                _rest7084_
                                                (cons 'let
                                                      (cons _bind7085_
                                                            (cons _body7064_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (##pair? _rest70657073_)
                                            (let ((_hd70707090_
                                                   (##car _rest70657073_))
                                                  (_tl70717092_
                                                   (##cdr _rest70657073_)))
                                              (let ((_bind7095_ _hd70707090_))
                                                (let ((_rest7097_
                                                       _tl70717092_))
                                                  (_K70697087_
                                                   _rest7097_
                                                   _bind7095_))))
                                            (_else70677081_)))))))))
                      _lp7061_)
                    _post7058_
                    _body7059_))))
            (let ((_generate-values-check6987_
                   (lambda (_check7055_ _body7056_)
                     (cons 'begin
                           (foldr1 cons
                                   (cons _body7056_ '())
                                   (reverse _check7055_))))))
              (let ((_generate-values6985_
                     (lambda (_hd7099_ _body7100_)
                       ((letrec ((_lp7102_
                                  (lambda (_rest7104_
                                           _bind7105_
                                           _check7106_
                                           _post7107_)
                                    (let ((_g71107121_
                                           (lambda (_g71117118_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g71117118_))))
                                      (let ((_g71097135_
                                             (lambda (_g71117124_)
                                               ((lambda ()
                                                  (let ((_body7128_
                                                         (if _compiled-body?6982_
                                                             _body7100_
                                                             (gxc#compile-e
                                                              _body7100_))))
                                                    (let ((_body7130_
                                                           (_generate-values-post6986_
                                                            _post7107_
                                                            _body7128_)))
                                                      (let ((_body7132_
                                                             (_generate-values-check6987_
                                                              _check7106_
                                                              _body7130_)))
                                                        (let ()
                                                          (cons 'let
                                                                (cons (reverse _bind7105_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _body7132_ '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_g71087283_
                                               (lambda (_g71117138_)
                                                 (if (gx#stx-pair? _g71117138_)
                                                     (let ((_e71147140_
                                                            (gx#stx-e
                                                             _g71117138_)))
                                                       (let ((_hd71157143_
                                                              (##car _e71147140_))
                                                             (_tl71167145_
                                                              (##cdr _e71147140_)))
                                                         ((lambda (_L7148_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L7149_)
                    (let ((_g71647189_
                           (lambda (_g71657186_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g71657186_))))
                      (let ((_g71637233_
                             (lambda (_g71657192_)
                               (if (gx#stx-pair? _g71657192_)
                                   (let ((_e71797194_ (gx#stx-e _g71657192_)))
                                     (let ((_hd71807197_ (##car _e71797194_))
                                           (_tl71817199_ (##cdr _e71797194_)))
                                       (if (gx#stx-pair? _tl71817199_)
                                           (let ((_e71827202_
                                                  (gx#stx-e _tl71817199_)))
                                             (let ((_hd71837205_
                                                    (##car _e71827202_))
                                                   (_tl71847207_
                                                    (##cdr _e71827202_)))
                                               (if (gx#stx-null? _tl71847207_)
                                                   ((lambda (_L7210_ _L7211_)
                                                      (let ((_vals7224_
                                                             (gxc#generate-runtime-temporary__0)))
                                                        (let ((_expr7226_
                                                               (gxc#compile-e
                                                                _L7210_)))
                                                          (let ((_check-values7228_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#generate-runtime-check-values
                          _vals7224_
                          _L7211_)))
                    (let ((_refs7230_
                           (gxc#generate-runtime-let-values-bind
                            _vals7224_
                            _L7211_)))
                      (let ()
                        (_lp7102_
                         _L7148_
                         (cons (cons _vals7224_ (cons _expr7226_ '()))
                               _bind7105_)
                         (cons _check-values7228_ _check7106_)
                         (cons _refs7230_ _post7107_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd71837205_
                                                    _hd71807197_)
                                                   (_g71647189_ _g71657192_))))
                                           (_g71647189_ _g71657192_))))
                                   (_g71647189_ _g71657192_)))))
                        (let ((_g71627280_
                               (lambda (_g71657236_)
                                 (if (gx#stx-pair? _g71657236_)
                                     (let ((_e71687238_
                                            (gx#stx-e _g71657236_)))
                                       (let ((_hd71697241_ (##car _e71687238_))
                                             (_tl71707243_
                                              (##cdr _e71687238_)))
                                         (if (gx#stx-pair? _hd71697241_)
                                             (let ((_e71717246_
                                                    (gx#stx-e _hd71697241_)))
                                               (let ((_hd71727249_
                                                      (##car _e71717246_))
                                                     (_tl71737251_
                                                      (##cdr _e71717246_)))
                                                 (if (gx#stx-null?
                                                      _tl71737251_)
                                                     (if (gx#stx-pair?
                                                          _tl71707243_)
                                                         (let ((_e71747254_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl71707243_)))
                   (let ((_hd71757257_ (##car _e71747254_))
                         (_tl71767259_ (##cdr _e71747254_)))
                     (if (gx#stx-null? _tl71767259_)
                         ((lambda (_L7262_ _L7263_)
                            (let ((_eid7277_
                                   (gxc#generate-runtime-binding-id* _L7263_))
                                  (_expr7278_ (gxc#compile-e _L7262_)))
                              (_lp7102_
                               _L7148_
                               (cons (cons _eid7277_ (cons _expr7278_ '()))
                                     _bind7105_)
                               _check7106_
                               _post7107_)))
                          _hd71757257_
                          _hd71727249_)
                         (_g71637233_ _g71657236_))))
                 (_g71637233_ _g71657236_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g71637233_
                                                      _g71657236_))))
                                             (_g71637233_ _g71657236_))))
                                     (_g71637233_ _g71657236_)))))
                          (_g71627280_ _L7149_)))))
                  _tl71167145_
                  _hd71157143_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g71097135_
                                                      _g71117138_)))))
                                          (_g71087283_ _rest7104_)))))))
                          _lp7102_)
                        _hd7099_
                        '()
                        '()
                        '()))))
                (let ((_g69897006_
                       (lambda (_g69907003_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g69907003_))))
                  (let ((_g69887052_
                         (lambda (_g69907009_)
                           (if (gx#stx-pair? _g69907009_)
                               (let ((_e69937011_ (gx#stx-e _g69907009_)))
                                 (let ((_hd69947014_ (##car _e69937011_))
                                       (_tl69957016_ (##cdr _e69937011_)))
                                   (if (gx#stx-pair? _tl69957016_)
                                       (let ((_e69967019_
                                              (gx#stx-e _tl69957016_)))
                                         (let ((_hd69977022_
                                                (##car _e69967019_))
                                               (_tl69987024_
                                                (##cdr _e69967019_)))
                                           (if (gx#stx-pair? _tl69987024_)
                                               (let ((_e69997027_
                                                      (gx#stx-e _tl69987024_)))
                                                 (let ((_hd70007030_
                                                        (##car _e69997027_))
                                                       (_tl70017032_
                                                        (##cdr _e69997027_)))
                                                   (if (gx#stx-null?
                                                        _tl70017032_)
                                                       ((lambda (_L7035_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L7036_)
                  (if (gxc#generate-runtime-simple-let? _L7036_)
                      (_generate-simple6984_ _L7036_ _L7035_)
                      (_generate-values6985_ _L7036_ _L7035_)))
                _hd70007030_
                _hd69977022_)
               (_g69897006_ _g69907009_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g69897006_ _g69907009_))))
                                       (_g69897006_ _g69907009_))))
                               (_g69897006_ _g69907009_)))))
                    (_g69887052_ _stx6981_)))))))))
    (begin
      (define gxc#generate-runtime-let-values%__0
        (lambda (_stx7292_)
          (let ((_compiled-body?7294_ '#f))
            (gxc#generate-runtime-let-values%__opt-lambda6979
             _stx7292_
             _compiled-body?7294_))))
      (define gxc#generate-runtime-let-values%
        (lambda _g10342_
          (let ((_g10341_ (length _g10342_)))
            (cond ((fx= _g10341_ 1)
                   (apply gxc#generate-runtime-let-values%__0 _g10342_))
                  ((fx= _g10341_ 2)
                   (apply gxc#generate-runtime-let-values%__opt-lambda6979
                          _g10342_))
                  (else (error "No clause matching arguments" _g10342_))))))))
  (define gxc#generate-runtime-let-values-bind
    (lambda (_vals6880_ _hd6881_)
      ((letrec ((_lp6883_
                 (lambda (_rest6885_ _k6886_ _r6887_)
                   (let ((_g68926908_
                          (lambda (_g68936905_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g68936905_))))
                     (let ((_g68916915_
                            (lambda (_g68936911_)
                              ((lambda () (reverse _r6887_))))))
                       (let ((_g68906931_
                              (lambda (_g68936918_)
                                ((lambda (_L6920_)
                                   (if (gx#identifier? _L6920_)
                                       (foldl1 cons
                                               (cons (cons (gxc#generate-runtime-binding-id
                                                            _L6920_)
                                                           (cons (cons 'values->list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _vals6880_ (cons _k6886_ '())))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               _r6887_)
                                       (_g68916915_ _g68936918_)))
                                 _g68936918_))))
                         (let ((_g68896955_
                                (lambda (_g68936934_)
                                  (if (gx#stx-pair? _g68936934_)
                                      (let ((_e69006936_
                                             (gx#stx-e _g68936934_)))
                                        (let ((_hd69016939_
                                               (##car _e69006936_))
                                              (_tl69026941_
                                               (##cdr _e69006936_)))
                                          ((lambda (_L6944_ _L6945_)
                                             (_lp6883_
                                              _L6944_
                                              (fx+ _k6886_ '1)
                                              (cons (cons (gxc#generate-runtime-binding-id
                                                           _L6945_)
                                                          (cons (cons 'values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _vals6880_ (cons _k6886_ '())))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _r6887_)))
                                           _tl69026941_
                                           _hd69016939_)))
                                      (_g68906931_ _g68936934_)))))
                           (let ((_g68886977_
                                  (lambda (_g68936958_)
                                    (if (gx#stx-pair? _g68936958_)
                                        (let ((_e68956960_
                                               (gx#stx-e _g68936958_)))
                                          (let ((_hd68966963_
                                                 (##car _e68956960_))
                                                (_tl68976965_
                                                 (##cdr _e68956960_)))
                                            (if (gx#stx-datum? _hd68966963_)
                                                (if (equal? (gx#stx-e
                                                             _hd68966963_)
                                                            '#f)
                                                    ((lambda (_L6968_)
                                                       (_lp6883_
                                                        _L6968_
                                                        (fx+ _k6886_ '1)
                                                        _r6887_))
                                                     _tl68976965_)
                                                    (_g68896955_ _g68936958_))
                                                (_g68896955_ _g68936958_))))
                                        (_g68896955_ _g68936958_)))))
                             (_g68886977_ _rest6885_)))))))))
         _lp6883_)
       _hd6881_
       '0
       '())))
  (begin
    (define gxc#generate-runtime-letrec-values%__opt-lambda6558
      (lambda (_stx6560_ _compiled-body?6561_)
        (let ((_generate-simple6563_
               (lambda (_hd6867_ _body6868_)
                 (gxc#generate-runtime-simple-let
                  'letrec
                  _hd6867_
                  _body6868_
                  _compiled-body?6561_))))
          (let ((_generate-values-check6565_
                 (lambda (_check6641_ _body6642_)
                   (cons 'begin
                         (foldr1 cons
                                 (cons _body6642_ '())
                                 (reverse _check6641_))))))
            (let ((_generate-values-post6566_
                   (lambda (_post6634_ _body6635_)
                     (cons 'begin
                           (foldr1 cons
                                   (cons _body6635_ '())
                                   (map (lambda (_g66366638_)
                                          (cons 'set! _g66366638_))
                                        (reverse _post6634_)))))))
              (let ((_generate-values6564_
                     (lambda (_hd6644_ _body6645_)
                       ((letrec ((_lp6647_
                                  (lambda (_rest6649_
                                           _bind6650_
                                           _check6651_
                                           _post6652_)
                                    (let ((_g66556666_
                                           (lambda (_g66566663_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g66566663_))))
                                      (let ((_g66546680_
                                             (lambda (_g66566669_)
                                               ((lambda ()
                                                  (let ((_body6673_
                                                         (if _compiled-body?6561_
                                                             _body6645_
                                                             (gxc#compile-e
                                                              _body6645_))))
                                                    (let ((_body6675_
                                                           (_generate-values-post6566_
                                                            _post6652_
                                                            _body6673_)))
                                                      (let ((_body6677_
                                                             (_generate-values-check6565_
                                                              _check6651_
                                                              _body6675_)))
                                                        (let ()
                                                          (cons 'letrec
                                                                (cons (reverse _bind6650_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _body6677_ '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_g66536864_
                                               (lambda (_g66566683_)
                                                 (if (gx#stx-pair? _g66566683_)
                                                     (let ((_e66596685_
                                                            (gx#stx-e
                                                             _g66566683_)))
                                                       (let ((_hd66606688_
                                                              (##car _e66596685_))
                                                             (_tl66616690_
                                                              (##cdr _e66596685_)))
                                                         ((lambda (_L6693_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L6694_)
                    (let ((_g67096734_
                           (lambda (_g67106731_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g67106731_))))
                      (let ((_g67086814_
                             (lambda (_g67106737_)
                               (if (gx#stx-pair? _g67106737_)
                                   (let ((_e67246739_ (gx#stx-e _g67106737_)))
                                     (let ((_hd67256742_ (##car _e67246739_))
                                           (_tl67266744_ (##cdr _e67246739_)))
                                       (if (gx#stx-pair? _tl67266744_)
                                           (let ((_e67276747_
                                                  (gx#stx-e _tl67266744_)))
                                             (let ((_hd67286750_
                                                    (##car _e67276747_))
                                                   (_tl67296752_
                                                    (##cdr _e67276747_)))
                                               (if (gx#stx-null? _tl67296752_)
                                                   ((lambda (_L6755_ _L6756_)
                                                      (let ((_vals6769_
                                                             (gxc#generate-runtime-temporary__0)))
                                                        (let ((_expr6771_
                                                               (gxc#compile-e
                                                                _L6755_)))
                                                          (let ((_check-values6773_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#generate-runtime-check-values
                          _vals6769_
                          _L6756_)))
                    (let ((_refs6775_
                           (gxc#generate-runtime-let-values-bind
                            _vals6769_
                            _L6756_)))
                      (let ()
                        (_lp6647_
                         _L6693_
                         (foldl1 cons
                                 (cons (cons _vals6769_ (cons _expr6771_ '()))
                                       _bind6650_)
                                 (map (lambda (_e67776779_)
                                        (let ((_g67816790_ _e67776779_))
                                          (let ((_E67836794_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _g67816790_))))
                                            (let ((_K67846799_
                                                   (lambda (_eid6797_)
                                                     (cons _eid6797_
                                                           (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##pair? _g67816790_)
                                                  (let ((_hd67856802_
                                                         (##car _g67816790_))
                                                        (_tl67866804_
                                                         (##cdr _g67816790_)))
                                                    (let ((_eid6807_
                                                           _hd67856802_))
                                                      (if (##pair? _tl67866804_)
                                                          (let ((_hd67876809_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _tl67866804_))
                        (_tl67886811_ (##cdr _tl67866804_)))
                    (if (##null? _tl67886811_)
                        (_K67846799_ _eid6807_)
                        (_E67836794_)))
                  (_E67836794_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E67836794_))))))
                                      _refs6775_))
                         (cons _check-values6773_ _check6651_)
                         (foldl1 cons _refs6775_ _post6652_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd67286750_
                                                    _hd67256742_)
                                                   (_g67096734_ _g67106737_))))
                                           (_g67096734_ _g67106737_))))
                                   (_g67096734_ _g67106737_)))))
                        (let ((_g67076861_
                               (lambda (_g67106817_)
                                 (if (gx#stx-pair? _g67106817_)
                                     (let ((_e67136819_
                                            (gx#stx-e _g67106817_)))
                                       (let ((_hd67146822_ (##car _e67136819_))
                                             (_tl67156824_
                                              (##cdr _e67136819_)))
                                         (if (gx#stx-pair? _hd67146822_)
                                             (let ((_e67166827_
                                                    (gx#stx-e _hd67146822_)))
                                               (let ((_hd67176830_
                                                      (##car _e67166827_))
                                                     (_tl67186832_
                                                      (##cdr _e67166827_)))
                                                 (if (gx#stx-null?
                                                      _tl67186832_)
                                                     (if (gx#stx-pair?
                                                          _tl67156824_)
                                                         (let ((_e67196835_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl67156824_)))
                   (let ((_hd67206838_ (##car _e67196835_))
                         (_tl67216840_ (##cdr _e67196835_)))
                     (if (gx#stx-null? _tl67216840_)
                         ((lambda (_L6843_ _L6844_)
                            (let ((_eid6858_
                                   (gxc#generate-runtime-binding-id* _L6844_))
                                  (_expr6859_ (gxc#compile-e _L6843_)))
                              (_lp6647_
                               _L6693_
                               (cons (cons _eid6858_ (cons _expr6859_ '()))
                                     _bind6650_)
                               _check6651_
                               _post6652_)))
                          _hd67206838_
                          _hd67176830_)
                         (_g67086814_ _g67106817_))))
                 (_g67086814_ _g67106817_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g67086814_
                                                      _g67106817_))))
                                             (_g67086814_ _g67106817_))))
                                     (_g67086814_ _g67106817_)))))
                          (_g67076861_ _L6694_)))))
                  _tl66616690_
                  _hd66606688_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g66546680_
                                                      _g66566683_)))))
                                          (_g66536864_ _rest6649_)))))))
                          _lp6647_)
                        _hd6644_
                        '()
                        '()
                        '()))))
                (let ((_g65686585_
                       (lambda (_g65696582_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g65696582_))))
                  (let ((_g65676631_
                         (lambda (_g65696588_)
                           (if (gx#stx-pair? _g65696588_)
                               (let ((_e65726590_ (gx#stx-e _g65696588_)))
                                 (let ((_hd65736593_ (##car _e65726590_))
                                       (_tl65746595_ (##cdr _e65726590_)))
                                   (if (gx#stx-pair? _tl65746595_)
                                       (let ((_e65756598_
                                              (gx#stx-e _tl65746595_)))
                                         (let ((_hd65766601_
                                                (##car _e65756598_))
                                               (_tl65776603_
                                                (##cdr _e65756598_)))
                                           (if (gx#stx-pair? _tl65776603_)
                                               (let ((_e65786606_
                                                      (gx#stx-e _tl65776603_)))
                                                 (let ((_hd65796609_
                                                        (##car _e65786606_))
                                                       (_tl65806611_
                                                        (##cdr _e65786606_)))
                                                   (if (gx#stx-null?
                                                        _tl65806611_)
                                                       ((lambda (_L6614_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L6615_)
                  (if (gxc#generate-runtime-simple-let? _L6615_)
                      (_generate-simple6563_ _L6615_ _L6614_)
                      (_generate-values6564_ _L6615_ _L6614_)))
                _hd65796609_
                _hd65766601_)
               (_g65686585_ _g65696588_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g65686585_ _g65696588_))))
                                       (_g65686585_ _g65696588_))))
                               (_g65686585_ _g65696588_)))))
                    (_g65676631_ _stx6560_)))))))))
    (begin
      (define gxc#generate-runtime-letrec-values%__0
        (lambda (_stx6873_)
          (let ((_compiled-body?6875_ '#f))
            (gxc#generate-runtime-letrec-values%__opt-lambda6558
             _stx6873_
             _compiled-body?6875_))))
      (define gxc#generate-runtime-letrec-values%
        (lambda _g10344_
          (let ((_g10343_ (length _g10344_)))
            (cond ((fx= _g10343_ 1)
                   (apply gxc#generate-runtime-letrec-values%__0 _g10344_))
                  ((fx= _g10343_ 2)
                   (apply gxc#generate-runtime-letrec-values%__opt-lambda6558
                          _g10344_))
                  (else (error "No clause matching arguments" _g10344_))))))))
  (define gxc#generate-runtime-letrec*-values%
    (lambda (_stx5679_)
      (let ((_collect-closures5682_
             (lambda (_forms6500_)
               (map (lambda (_e65016503_)
                      (let ((_g65056514_ _e65016503_))
                        (let ((_E65076518_
                               (lambda ()
                                 (error '"No clause matching" _g65056514_))))
                          (let ((_K65086523_
                                 (lambda (_expr6521_)
                                   (gxc#collect-expression-refs _expr6521_))))
                            (if (##pair? _g65056514_)
                                (let ((_hd65096526_ (##car _g65056514_))
                                      (_tl65106528_ (##cdr _g65056514_)))
                                  (if (##pair? _tl65106528_)
                                      (let ((_hd65116531_ (##car _tl65106528_))
                                            (_tl65126533_
                                             (##cdr _tl65106528_)))
                                        (let ((_expr6536_ _hd65116531_))
                                          (if (##null? _tl65126533_)
                                              (_K65086523_ _expr6536_)
                                              (_E65076518_))))
                                      (_E65076518_)))
                                (_E65076518_))))))
                    _forms6500_))))
        (let ((_collect-bindings5683_
               (lambda (_forms6424_)
                 (map (lambda (_e64256427_)
                        (let ((_g64296438_ _e64256427_))
                          (let ((_E64316442_
                                 (lambda ()
                                   (error '"No clause matching" _g64296438_))))
                            (let ((_K64326485_
                                   (lambda (_bind6445_)
                                     ((letrec ((_lp6447_
                                                (lambda (_rest6449_ _r6450_)
                                                  (let ((_rest64516459_
                                                         _rest6449_))
                                                    (let ((_E64546463_
                                                           (lambda ()
                                                             (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _rest64516459_))))
              (let ((_else64536467_
                     (lambda ()
                       (if (gx#identifier? _rest6449_)
                           (cons _rest6449_ _r6450_)
                           _r6450_))))
                (let ((_K64556473_
                       (lambda (_rest6470_ _id6471_)
                         (if (gx#identifier? _id6471_)
                             (_lp6447_
                              _rest6470_
                              (cons (##structure-ref
                                     (gx#resolve-identifier__0 _id6471_)
                                     '1
                                     gx#binding::t
                                     '#f)
                                    _r6450_))
                             (_lp6447_ _rest6470_ _r6450_)))))
                  (if (##pair? _rest64516459_)
                      (let ((_hd64566476_ (##car _rest64516459_))
                            (_tl64576478_ (##cdr _rest64516459_)))
                        (let ((_id6481_ _hd64566476_))
                          (let ((_rest6483_ _tl64576478_))
                            (_K64556473_ _rest6483_ _id6481_))))
                      (_else64536467_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _lp6447_)
                                      _bind6445_
                                      '()))))
                              (if (##pair? _g64296438_)
                                  (let ((_hd64336488_ (##car _g64296438_))
                                        (_tl64346490_ (##cdr _g64296438_)))
                                    (let ((_bind6493_ _hd64336488_))
                                      (if (##pair? _tl64346490_)
                                          (let ((_hd64356495_
                                                 (##car _tl64346490_))
                                                (_tl64366497_
                                                 (##cdr _tl64346490_)))
                                            (if (##null? _tl64366497_)
                                                (_K64326485_ _bind6493_)
                                                (_E64316442_)))
                                          (_E64316442_))))
                                  (_E64316442_))))))
                      _forms6424_))))
          (let ((_closure-reference?5687_
                 (lambda (_closure5976_ _bindings5977_)
                   (ormap1 (lambda (_g59785980_)
                             (table-ref _closure5976_ _g59785980_ '#f))
                           _bindings5977_))))
            (let ((_is-effect-expr?5689_
                   (lambda (_expr5887_)
                     (let ((_g58895899_
                            (lambda (_g58905896_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g58905896_))))
                       (let ((_g58885922_
                              (lambda (_g58905902_)
                                (if (gx#stx-pair? _g58905902_)
                                    (let ((_e58925904_ (gx#stx-e _g58905902_)))
                                      (let ((_hd58935907_ (##car _e58925904_))
                                            (_tl58945909_ (##cdr _e58925904_)))
                                        ((lambda (_L5912_)
                                           (not (memq (gx#stx-e _L5912_)
                                                      '(%#lambda
                                                        %#case-lambda
                                                        %#quote
                                                        %#quote-syntax
                                                        %#ref))))
                                         _hd58935907_)))
                                    (_g58895899_ _g58905902_)))))
                         (_g58885922_ _expr5887_))))))
              (let ((_is-lambda-expr?5690_
                     (lambda (_expr5849_)
                       (let ((_g58515861_
                              (lambda (_g58525858_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g58525858_))))
                         (let ((_g58505884_
                                (lambda (_g58525864_)
                                  (if (gx#stx-pair? _g58525864_)
                                      (let ((_e58545866_
                                             (gx#stx-e _g58525864_)))
                                        (let ((_hd58555869_
                                               (##car _e58545866_))
                                              (_tl58565871_
                                               (##cdr _e58545866_)))
                                          ((lambda (_L5874_)
                                             (memq (gx#stx-e _L5874_)
                                                   '(%#lambda %#case-lambda)))
                                           _hd58555869_)))
                                      (_g58515861_ _g58525864_)))))
                           (_g58505884_ _expr5849_))))))
                (let ((_lift-rec5686_
                       (lambda (_forms5983_)
                         ((letrec ((_lp5985_
                                    (lambda (_rest5987_
                                             _pre5988_
                                             _bind5989_
                                             _init5990_)
                                      (let ((_rest59915999_ _rest5987_))
                                        (let ((_E59946003_
                                               (lambda ()
                                                 (error '"No clause matching"
                                                        _rest59915999_))))
                                          (let ((_else59936007_
                                                 (lambda ()
                                                   (values (reverse _pre5988_)
                                                           (reverse _bind5989_)
                                                           (reverse _init5990_)))))
                                            (let ((_K59956198_
                                                   (lambda (_rest6010_
                                                            _bind-hd6011_)
                                                     (let ((_g60156050_
                                                            (lambda (_g60166047_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g60166047_))))
                                                       (let ((_g60146107_
                                                              (lambda (_g60166053_)
                                                                (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g60166053_)
                            (let ((_e60406055_ (gx#stx-e _g60166053_)))
                              (let ((_hd60416058_ (##car _e60406055_))
                                    (_tl60426060_ (##cdr _e60406055_)))
                                (if (gx#stx-pair? _tl60426060_)
                                    (let ((_e60436063_
                                           (gx#stx-e _tl60426060_)))
                                      (let ((_hd60446066_ (##car _e60436063_))
                                            (_tl60456068_ (##cdr _e60436063_)))
                                        (if (gx#stx-null? _tl60456068_)
                                            ((lambda (_L6071_ _L6072_)
                                               (let ((_vals6091_
                                                      (gxc#generate-runtime-temporary__0)))
                                                 (let ((_expr6093_
                                                        (gxc#compile-e
                                                         _L6071_)))
                                                   (let ((_check-values6095_
                                                          (gxc#generate-runtime-check-values
                                                           _vals6091_
                                                           _L6072_)))
                                                     (let ((_refs6097_
                                                            (gxc#generate-runtime-let-values-bind
                                                             _vals6091_
                                                             _L6072_)))
                                                       (let ()
                                                         (_lp5985_
                                                          _rest6010_
                                                          (foldl1 (lambda (_ref6100_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _r6101_)
                            (cons (cons (car _ref6100_) (cons '#!void '()))
                                  _r6101_))
                          _pre5988_
                          _refs6097_)
                  _bind5989_
                  (cons (cons 'let
                              (cons (cons (cons _vals6091_
                                                (cons _expr6093_ '()))
                                          '())
                                    (cons _check-values6095_
                                          (cons (map (lambda (_g61026104_)
                                                       (cons 'set!
                                                             _g61026104_))
                                                     _refs6097_)
                                                '()))))
                        _init5990_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd60446066_
                                             _hd60416058_)
                                            (_g60156050_ _g60166053_))))
                                    (_g60156050_ _g60166053_))))
                            (_g60156050_ _g60166053_)))))
                 (let ((_g60136153_
                        (lambda (_g60166110_)
                          (if (gx#stx-pair? _g60166110_)
                              (let ((_e60296112_ (gx#stx-e _g60166110_)))
                                (let ((_hd60306115_ (##car _e60296112_))
                                      (_tl60316117_ (##cdr _e60296112_)))
                                  (if (gx#stx-pair? _hd60306115_)
                                      (let ((_e60326120_
                                             (gx#stx-e _hd60306115_)))
                                        (let ((_hd60336123_
                                               (##car _e60326120_))
                                              (_tl60346125_
                                               (##cdr _e60326120_)))
                                          (if (gx#stx-null? _tl60346125_)
                                              (if (gx#stx-pair? _tl60316117_)
                                                  (let ((_e60356128_
                                                         (gx#stx-e
                                                          _tl60316117_)))
                                                    (let ((_hd60366131_
                                                           (##car _e60356128_))
                                                          (_tl60376133_
                                                           (##cdr _e60356128_)))
                                                      (if (gx#stx-null?
                                                           _tl60376133_)
                                                          ((lambda (_L6136_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L6137_)
                     (let ((_eid6151_
                            (gxc#generate-runtime-binding-id _L6137_)))
                       (if (_is-lambda-expr?5690_ _L6136_)
                           (_lp5985_
                            _rest6010_
                            _pre5988_
                            (cons (cons _eid6151_
                                        (cons (gxc#compile-e _L6136_) '()))
                                  _bind5989_)
                            _init5990_)
                           (_lp5985_
                            _rest6010_
                            (cons (cons _eid6151_ (cons '#!void '()))
                                  _pre5988_)
                            _bind5989_
                            (cons (cons 'set!
                                        (cons _eid6151_
                                              (cons (gxc#compile-e _L6136_)
                                                    '())))
                                  _init5990_)))))
                   _hd60366131_
                   _hd60336123_)
                  (_g60146107_ _g60166110_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g60146107_ _g60166110_))
                                              (_g60146107_ _g60166110_))))
                                      (_g60146107_ _g60166110_))))
                              (_g60146107_ _g60166110_)))))
                   (let ((_g60126195_
                          (lambda (_g60166156_)
                            (if (gx#stx-pair? _g60166156_)
                                (let ((_e60186158_ (gx#stx-e _g60166156_)))
                                  (let ((_hd60196161_ (##car _e60186158_))
                                        (_tl60206163_ (##cdr _e60186158_)))
                                    (if (gx#stx-pair? _hd60196161_)
                                        (let ((_e60216166_
                                               (gx#stx-e _hd60196161_)))
                                          (let ((_hd60226169_
                                                 (##car _e60216166_))
                                                (_tl60236171_
                                                 (##cdr _e60216166_)))
                                            (if (gx#stx-datum? _hd60226169_)
                                                (if (equal? (gx#stx-e
                                                             _hd60226169_)
                                                            '#f)
                                                    (if (gx#stx-null?
                                                         _tl60236171_)
                                                        (if (gx#stx-pair?
                                                             _tl60206163_)
                                                            (let ((_e60246174_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl60206163_)))
                      (let ((_hd60256177_ (##car _e60246174_))
                            (_tl60266179_ (##cdr _e60246174_)))
                        (if (gx#stx-null? _tl60266179_)
                            ((lambda (_L6182_)
                               (_lp5985_
                                _rest6010_
                                _pre5988_
                                _bind5989_
                                (cons (gxc#compile-e _L6182_) _init5990_)))
                             _hd60256177_)
                            (_g60136153_ _g60166156_))))
                    (_g60136153_ _g60166156_))
                (_g60136153_ _g60166156_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g60136153_ _g60166156_))
                                                (_g60136153_ _g60166156_))))
                                        (_g60136153_ _g60166156_))))
                                (_g60136153_ _g60166156_)))))
                     (_g60126195_ _bind-hd6011_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##pair? _rest59915999_)
                                                  (let ((_hd59966201_
                                                         (##car _rest59915999_))
                                                        (_tl59976203_
                                                         (##cdr _rest59915999_)))
                                                    (let ((_bind-hd6206_
                                                           _hd59966201_))
                                                      (let ((_rest6208_
                                                             _tl59976203_))
                                                        (_K59956198_
                                                         _rest6208_
                                                         _bind-hd6206_))))
                                                  (_else59936007_)))))))))
                            _lp5985_)
                          _forms5983_
                          '()
                          '()
                          '()))))
                  (let ((_is-effect-bind?5688_
                         (lambda (_hd-bind5925_)
                           (let ((_g59275940_
                                  (lambda (_g59285937_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g59285937_))))
                             (let ((_g59265973_
                                    (lambda (_g59285943_)
                                      (if (gx#stx-pair? _g59285943_)
                                          (let ((_e59305945_
                                                 (gx#stx-e _g59285943_)))
                                            (let ((_hd59315948_
                                                   (##car _e59305945_))
                                                  (_tl59325950_
                                                   (##cdr _e59305945_)))
                                              (if (gx#stx-pair? _tl59325950_)
                                                  (let ((_e59335953_
                                                         (gx#stx-e
                                                          _tl59325950_)))
                                                    (let ((_hd59345956_
                                                           (##car _e59335953_))
                                                          (_tl59355958_
                                                           (##cdr _e59335953_)))
                                                      (if (gx#stx-null?
                                                           _tl59355958_)
                                                          ((lambda (_L5961_)
                                                             (_is-effect-expr?5689_
                                                              _L5961_))
                                                           _hd59345956_)
                                                          (_g59275940_
                                                           _g59285943_))))
                                                  (_g59275940_ _g59285943_))))
                                          (_g59275940_ _g59285943_)))))
                               (_g59265973_ _hd-bind5925_))))))
                    (let ((_lift-pre5684_
                           (lambda (_hd6317_ _bindings6318_ _closures6319_)
                             ((letrec ((_lp6321_
                                        (lambda (_rest-forms6323_
                                                 _rest-bindings6324_
                                                 _rest-closures6325_
                                                 _post-forms6326_
                                                 _post-bindings6327_
                                                 _post-closures6328_
                                                 _pre-forms6329_
                                                 _lifted?6330_)
                                          (let ((_rest-forms63316347_
                                                 _rest-forms6323_)
                                                (_rest-bindings63326349_
                                                 _rest-bindings6324_)
                                                (_rest-closures63336351_
                                                 _rest-closures6325_))
                                            (let ((_E63366355_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _rest-forms63316347_
                                                            _rest-bindings63326349_
                                                            _rest-closures63336351_))))
                                              (let ((_else63356359_
                                                     (lambda ()
                                                       (if _lifted?6330_
                                                           (_lp6321_
                                                            (reverse _post-forms6326_)
                                                            (reverse _post-bindings6327_)
                                                            (reverse _post-closures6328_)
                                                            '()
                                                            '()
                                                            '()
                                                            _pre-forms6329_
                                                            '#f)
                                                           (values (reverse _pre-forms6329_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _post-forms6326_)
                           (reverse _post-bindings6327_)
                           (reverse _post-closures6328_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_K63376412_
                                                       (lambda (_rest-forms6362_
                                                                _form6363_)
                                                         (let ((_K63386400_
                                                                (lambda (_rest-bindings6365_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _bindings6366_)
                          (let ((_K63396388_
                                 (lambda (_rest-closures6368_ _closure6369_)
                                   (if (let ((_$e6371_
                                              (_closure-reference?5687_
                                               _closure6369_
                                               _bindings6366_)))
                                         (if _$e6371_
                                             _$e6371_
                                             (let ((_$e6378_
                                                    (ormap1 (lambda (_g63736375_)
                                                              (_closure-reference?5687_
                                                               _closure6369_
                                                               _g63736375_))
                                                            _rest-bindings6365_)))
                                               (if _$e6378_
                                                   _$e6378_
                                                   (let ((_$e6385_
                                                          (ormap1 (lambda (_g63806382_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (_closure-reference?5687_
                             _closure6369_
                             _g63806382_))
                          _post-bindings6327_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e6385_
                                                         _$e6385_
                                                         (if (_is-effect-bind?5688_
                                                              _form6363_)
                                                             (find _is-effect-bind?5688_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _post-forms6326_)
                     '#f)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_lp6321_
                                        _rest-forms6362_
                                        _rest-bindings6365_
                                        _rest-closures6368_
                                        (cons _form6363_ _post-forms6326_)
                                        (cons _bindings6366_
                                              _post-bindings6327_)
                                        (cons _closure6369_
                                              _post-closures6328_)
                                        _pre-forms6329_
                                        _lifted?6330_)
                                       (_lp6321_
                                        _rest-forms6362_
                                        _rest-bindings6365_
                                        _rest-closures6368_
                                        _post-forms6326_
                                        _post-bindings6327_
                                        _post-closures6328_
                                        (cons _form6363_ _pre-forms6329_)
                                        '#t)))))
                            (if (##pair? _rest-closures63336351_)
                                (let ((_hd63406391_
                                       (##car _rest-closures63336351_))
                                      (_tl63416393_
                                       (##cdr _rest-closures63336351_)))
                                  (let ((_closure6396_ _hd63406391_))
                                    (let ((_rest-closures6398_ _tl63416393_))
                                      (_K63396388_
                                       _rest-closures6398_
                                       _closure6396_))))
                                (_else63356359_))))))
                   (if (##pair? _rest-bindings63326349_)
                       (let ((_hd63426403_ (##car _rest-bindings63326349_))
                             (_tl63436405_ (##cdr _rest-bindings63326349_)))
                         (let ((_bindings6408_ _hd63426403_))
                           (let ((_rest-bindings6410_ _tl63436405_))
                             (_K63386400_
                              _rest-bindings6410_
                              _bindings6408_))))
                       (_else63356359_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (##pair? _rest-forms63316347_)
                                                      (let ((_hd63446415_
                                                             (##car _rest-forms63316347_))
                                                            (_tl63456417_
                                                             (##cdr _rest-forms63316347_)))
                                                        (let ((_form6420_
                                                               _hd63446415_))
                                                          (let ((_rest-forms6422_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl63456417_))
                    (_K63376412_ _rest-forms6422_ _form6420_))))
              (_else63356359_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _lp6321_)
                              _hd6317_
                              _bindings6318_
                              _closures6319_
                              '()
                              '()
                              '()
                              '()
                              '#f))))
                      (let ((_lift-post5685_
                             (lambda (_hd6210_ _bindings6211_ _closures6212_)
                               ((letrec ((_lp6214_
                                          (lambda (_rest-forms6216_
                                                   _rest-bindings6217_
                                                   _rest-closures6218_
                                                   _pre-forms6219_
                                                   _pre-bindings6220_
                                                   _pre-closures6221_
                                                   _post-forms6222_
                                                   _lifted?6223_)
                                            (let ((_rest-forms62246240_
                                                   _rest-forms6216_)
                                                  (_rest-bindings62256242_
                                                   _rest-bindings6217_)
                                                  (_rest-closures62266244_
                                                   _rest-closures6218_))
                                              (let ((_E62296248_
                                                     (lambda ()
                                                       (error '"No clause matching"
                                                              _rest-forms62246240_
                                                              _rest-bindings62256242_
                                                              _rest-closures62266244_))))
                                                (let ((_else62286252_
                                                       (lambda ()
                                                         (if _lifted?6223_
                                                             (_lp6214_
                                                              (reverse _pre-forms6219_)
                                                              (reverse _pre-bindings6220_)
                                                              (reverse _pre-closures6221_)
                                                              '()
                                                              '()
                                                              '()
                                                              _post-forms6222_
                                                              '#f)
                                                             (values _post-forms6222_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _pre-forms6219_
                             _pre-bindings6220_
                             _pre-closures6221_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_K62306305_
                                                         (lambda (_rest-forms6255_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _form6256_)
                   (let ((_K62316293_
                          (lambda (_rest-bindings6258_ _bindings6259_)
                            (let ((_K62326281_
                                   (lambda (_rest-closures6261_ _closure6262_)
                                     (if (let ((_$e6264_
                                                (_closure-reference?5687_
                                                 _closure6262_
                                                 _bindings6259_)))
                                           (if _$e6264_
                                               _$e6264_
                                               (let ((_$e6271_
                                                      (ormap1 (lambda (_g62666268_)
                                                                (_closure-reference?5687_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g62666268_
                         _bindings6259_))
                      _rest-closures6261_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e6271_
                                                     _$e6271_
                                                     (let ((_$e6278_
                                                            (ormap1 (lambda (_g62736275_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (_closure-reference?5687_
                               _g62736275_
                               _bindings6259_))
                            _pre-closures6221_)))
               (if _$e6278_
                   _$e6278_
                   (if (_is-effect-bind?5688_ _form6256_)
                       (find _is-effect-bind?5688_ _pre-forms6219_)
                       '#f)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_lp6214_
                                          _rest-forms6255_
                                          _rest-bindings6258_
                                          _rest-closures6261_
                                          (cons _form6256_ _pre-forms6219_)
                                          (cons _bindings6259_
                                                _pre-bindings6220_)
                                          (cons _closure6262_
                                                _pre-closures6221_)
                                          _post-forms6222_
                                          _lifted?6223_)
                                         (_lp6214_
                                          _rest-forms6255_
                                          _rest-bindings6258_
                                          _rest-closures6261_
                                          _pre-forms6219_
                                          _pre-bindings6220_
                                          _pre-closures6221_
                                          (cons _form6256_ _post-forms6222_)
                                          '#t)))))
                              (if (##pair? _rest-closures62266244_)
                                  (let ((_hd62336284_
                                         (##car _rest-closures62266244_))
                                        (_tl62346286_
                                         (##cdr _rest-closures62266244_)))
                                    (let ((_closure6289_ _hd62336284_))
                                      (let ((_rest-closures6291_ _tl62346286_))
                                        (_K62326281_
                                         _rest-closures6291_
                                         _closure6289_))))
                                  (_else62286252_))))))
                     (if (##pair? _rest-bindings62256242_)
                         (let ((_hd62356296_ (##car _rest-bindings62256242_))
                               (_tl62366298_ (##cdr _rest-bindings62256242_)))
                           (let ((_bindings6301_ _hd62356296_))
                             (let ((_rest-bindings6303_ _tl62366298_))
                               (_K62316293_
                                _rest-bindings6303_
                                _bindings6301_))))
                         (_else62286252_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (##pair? _rest-forms62246240_)
                                                        (let ((_hd62376308_
                                                               (##car _rest-forms62246240_))
                                                              (_tl62386310_
                                                               (##cdr _rest-forms62246240_)))
                                                          (let ((_form6313_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd62376308_))
                    (let ((_rest-forms6315_ _tl62386310_))
                      (_K62306305_ _rest-forms6315_ _form6313_))))
                (_else62286252_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _lp6214_)
                                (reverse _hd6210_)
                                (reverse _bindings6211_)
                                (reverse _closures6212_)
                                '()
                                '()
                                '()
                                '()
                                '#f))))
                        (let ((_linearize5681_
                               (lambda (_forms6538_)
                                 (let ((_closures6540_
                                        (_collect-closures5682_ _forms6538_)))
                                   (let ((_bindings6542_
                                          (_collect-bindings5683_
                                           _forms6538_)))
                                     (let ((_g10347_
                                            (_lift-pre5684_
                                             _forms6538_
                                             _bindings6542_
                                             _closures6540_)))
                                       (begin
                                         (let ((_g10348_
                                                (values-count _g10347_)))
                                           (if (not (fx= _g10348_ 4))
                                               (error "Context expects 4 values"
                                                      _g10348_)))
                                         (let ((_pre-bind6544_
                                                (values-ref _g10347_ 0))
                                               (_forms6545_
                                                (values-ref _g10347_ 1))
                                               (_bindings6546_
                                                (values-ref _g10347_ 2))
                                               (_closures6547_
                                                (values-ref _g10347_ 3)))
                                           (let ((_g10349_
                                                  (_lift-post5685_
                                                   _forms6545_
                                                   _bindings6546_
                                                   _closures6547_)))
                                             (begin
                                               (let ((_g10350_
                                                      (values-count _g10349_)))
                                                 (if (not (fx= _g10350_ 4))
                                                     (error "Context expects 4 values"
                                                            _g10350_)))
                                               (let ((_post-bind6549_
                                                      (values-ref _g10349_ 0))
                                                     (_forms6550_
                                                      (values-ref _g10349_ 1))
                                                     (_bindings6551_
                                                      (values-ref _g10349_ 2))
                                                     (_closures6552_
                                                      (values-ref _g10349_ 3)))
                                                 (let ((_g10351_
                                                        (_lift-rec5686_
                                                         _forms6550_)))
                                                   (begin
                                                     (let ((_g10352_
                                                            (values-count
                                                             _g10351_)))
                                                       (if (not (fx= _g10352_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             3))
                   (error "Context expects 3 values" _g10352_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_rec-pre6554_
                                                            (values-ref
                                                             _g10351_
                                                             0))
                                                           (_rec-bind6555_
                                                            (values-ref
                                                             _g10351_
                                                             1))
                                                           (_rec-init6556_
                                                            (values-ref
                                                             _g10351_
                                                             2)))
                                                       (let ()
                                                         (values _pre-bind6544_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _rec-pre6554_
                         _rec-bind6555_
                         _rec-init6556_
                         _post-bind6549_))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (letrec ((_generate-let*5691_
                                    (lambda (_hd5778_ _body5779_)
                                      (let ((_hd57805788_ _hd5778_))
                                        (let ((_E57835792_
                                               (lambda ()
                                                 (error '"No clause matching"
                                                        _hd57805788_))))
                                          (let ((_else57825796_
                                                 (lambda () _body5779_)))
                                            (let ((_K57845837_
                                                   (lambda (_rest5799_
                                                            _bind5800_)
                                                     (let ((_bind58015810_
                                                            _bind5800_))
                                                       (let ((_E58035814_
                                                              (lambda ()
                                                                (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind58015810_))))
                 (let ((_K58045820_
                        (lambda (_expr5817_ _hd5818_)
                          (if (gx#stx-ormap gx#identifier? _hd5818_)
                              (gxc#generate-runtime-let-values%__opt-lambda6979
                               (cons '%#let-values
                                     (cons (cons _bind5800_ '())
                                           (cons (_generate-let*5691_
                                                  _rest5799_
                                                  _body5779_)
                                                 '())))
                               '#t)
                              (cons 'begin
                                    (cons (gxc#compile-e _expr5817_)
                                          (cons (_generate-let*5691_
                                                 _rest5799_
                                                 _body5779_)
                                                '())))))))
                   (if (##pair? _bind58015810_)
                       (let ((_hd58055823_ (##car _bind58015810_))
                             (_tl58065825_ (##cdr _bind58015810_)))
                         (let ((_hd5828_ _hd58055823_))
                           (if (##pair? _tl58065825_)
                               (let ((_hd58075830_ (##car _tl58065825_))
                                     (_tl58085832_ (##cdr _tl58065825_)))
                                 (let ((_expr5835_ _hd58075830_))
                                   (if (##null? _tl58085832_)
                                       (_K58045820_ _expr5835_ _hd5828_)
                                       (_E58035814_))))
                               (_E58035814_))))
                       (_E58035814_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##pair? _hd57805788_)
                                                  (let ((_hd57855840_
                                                         (##car _hd57805788_))
                                                        (_tl57865842_
                                                         (##cdr _hd57805788_)))
                                                    (let ((_bind5845_
                                                           _hd57855840_))
                                                      (let ((_rest5847_
                                                             _tl57865842_))
                                                        (_K57845837_
                                                         _rest5847_
                                                         _bind5845_))))
                                                  (_else57825796_)))))))))
                            (let ((_g56935710_
                                   (lambda (_g56945707_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g56945707_))))
                              (let ((_g56925775_
                                     (lambda (_g56945713_)
                                       (if (gx#stx-pair? _g56945713_)
                                           (let ((_e56975715_
                                                  (gx#stx-e _g56945713_)))
                                             (let ((_hd56985718_
                                                    (##car _e56975715_))
                                                   (_tl56995720_
                                                    (##cdr _e56975715_)))
                                               (if (gx#stx-pair? _tl56995720_)
                                                   (let ((_e57005723_
                                                          (gx#stx-e
                                                           _tl56995720_)))
                                                     (let ((_hd57015726_
                                                            (##car _e57005723_))
                                                           (_tl57025728_
                                                            (##cdr _e57005723_)))
                                                       (if (gx#stx-pair?
                                                            _tl57025728_)
                                                           (let ((_e57035731_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl57025728_)))
                     (let ((_hd57045734_ (##car _e57035731_))
                           (_tl57055736_ (##cdr _e57035731_)))
                       (if (gx#stx-null? _tl57055736_)
                           ((lambda (_L5739_ _L5740_)
                              (let ((_g10345_ (_linearize5681_ _L5740_)))
                                (begin
                                  (let ((_g10346_ (values-count _g10345_)))
                                    (if (not (fx= _g10346_ 5))
                                        (error "Context expects 5 values"
                                               _g10346_)))
                                  (let ((_pre5756_ (values-ref _g10345_ 0))
                                        (_rec-pre5757_ (values-ref _g10345_ 1))
                                        (_rec-bind5758_
                                         (values-ref _g10345_ 2))
                                        (_rec-init5759_
                                         (values-ref _g10345_ 3))
                                        (_post5760_ (values-ref _g10345_ 4)))
                                    (let ((_body5762_ (gxc#compile-e _L5739_)))
                                      (let ((_body5764_
                                             (if (null? _post5760_)
                                                 _body5762_
                                                 (_generate-let*5691_
                                                  _post5760_
                                                  _body5762_))))
                                        (let ((_body5766_
                                               (if (null? _rec-init5759_)
                                                   _body5764_
                                                   (cons 'begin
                                                         (foldr1 cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _body5764_ '())
                         _rec-init5759_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ((_body5768_
                                                 (if (null? _rec-bind5758_)
                                                     _body5766_
                                                     (cons 'letrec
                                                           (cons _rec-bind5758_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _body5766_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_body5770_
                                                   (if (null? _rec-pre5757_)
                                                       _body5768_
                                                       (cons 'let
                                                             (cons _rec-pre5757_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _body5768_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_body5772_
                                                     (if (null? _pre5756_)
                                                         _body5770_
                                                         (_generate-let*5691_
                                                          _pre5756_
                                                          _body5770_))))
                                                (let () _body5772_)))))))))))
                            _hd57045734_
                            _hd57015726_)
                           (_g56935710_ _g56945713_))))
                   (_g56935710_ _g56945713_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g56935710_ _g56945713_))))
                                           (_g56935710_ _g56945713_)))))
                                (_g56925775_ _stx5679_))))))))))))))))
  (define gxc#generate-runtime-simple-let?
    (lambda (_hd5572_)
      ((letrec ((_lp5574_
                 (lambda (_rest5576_)
                   (let ((_g55805601_
                          (lambda (_g55815598_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g55815598_))))
                     (let ((_g55795608_
                            (lambda (_g55815604_) ((lambda () '#f)))))
                       (let ((_g55785615_
                              (lambda (_g55815611_)
                                (if (gx#stx-null? _g55815611_)
                                    ((lambda () '#t))
                                    (_g55795608_ _g55815611_)))))
                         (let ((_g55775676_
                                (lambda (_g55815618_)
                                  (if (gx#stx-pair? _g55815618_)
                                      (let ((_e55855620_
                                             (gx#stx-e _g55815618_)))
                                        (let ((_hd55865623_
                                               (##car _e55855620_))
                                              (_tl55875625_
                                               (##cdr _e55855620_)))
                                          (if (gx#stx-pair? _hd55865623_)
                                              (let ((_e55885628_
                                                     (gx#stx-e _hd55865623_)))
                                                (let ((_hd55895631_
                                                       (##car _e55885628_))
                                                      (_tl55905633_
                                                       (##cdr _e55885628_)))
                                                  (if (gx#stx-pair?
                                                       _hd55895631_)
                                                      (let ((_e55915636_
                                                             (gx#stx-e
                                                              _hd55895631_)))
                                                        (let ((_hd55925639_
                                                               (##car _e55915636_))
                                                              (_tl55935641_
                                                               (##cdr _e55915636_)))
                                                          (if (gx#stx-null?
                                                               _tl55935641_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl55905633_)
                          (let ((_e55945644_ (gx#stx-e _tl55905633_)))
                            (let ((_hd55955647_ (##car _e55945644_))
                                  (_tl55965649_ (##cdr _e55945644_)))
                              (if (gx#stx-null? _tl55965649_)
                                  ((lambda (_L5652_ _L5653_ _L5654_)
                                     (_lp5574_ _L5652_))
                                   _tl55875625_
                                   _hd55955647_
                                   _hd55925639_)
                                  (_g55785615_ _g55815618_))))
                          (_g55785615_ _g55815618_))
                      (_g55785615_ _g55815618_))))
              (_g55785615_ _g55815618_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g55785615_ _g55815618_))))
                                      (_g55785615_ _g55815618_)))))
                           (_g55775676_ _rest5576_))))))))
         _lp5574_)
       _hd5572_)))
  (define gxc#generate-runtime-simple-let
    (lambda (_form5496_ _hd5497_ _body5498_ _compiled-body?5499_)
      (let ((_generate15501_
             (lambda (_bind5503_)
               (let ((_g55055522_
                      (lambda (_g55065519_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g55065519_))))
                 (let ((_g55045569_
                        (lambda (_g55065525_)
                          (if (gx#stx-pair? _g55065525_)
                              (let ((_e55095527_ (gx#stx-e _g55065525_)))
                                (let ((_hd55105530_ (##car _e55095527_))
                                      (_tl55115532_ (##cdr _e55095527_)))
                                  (if (gx#stx-pair? _hd55105530_)
                                      (let ((_e55125535_
                                             (gx#stx-e _hd55105530_)))
                                        (let ((_hd55135538_
                                               (##car _e55125535_))
                                              (_tl55145540_
                                               (##cdr _e55125535_)))
                                          (if (gx#stx-null? _tl55145540_)
                                              (if (gx#stx-pair? _tl55115532_)
                                                  (let ((_e55155543_
                                                         (gx#stx-e
                                                          _tl55115532_)))
                                                    (let ((_hd55165546_
                                                           (##car _e55155543_))
                                                          (_tl55175548_
                                                           (##cdr _e55155543_)))
                                                      (if (gx#stx-null?
                                                           _tl55175548_)
                                                          ((lambda (_L5551_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L5552_)
                     (cons (gxc#generate-runtime-binding-id* _L5552_)
                           (cons (gxc#compile-e _L5551_) '())))
                   _hd55165546_
                   _hd55135538_)
                  (_g55055522_ _g55065525_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g55055522_ _g55065525_))
                                              (_g55055522_ _g55065525_))))
                                      (_g55055522_ _g55065525_))))
                              (_g55055522_ _g55065525_)))))
                   (_g55045569_ _bind5503_))))))
        (cons _form5496_
              (cons (map _generate15501_ _hd5497_)
                    (cons (if _compiled-body?5499_
                              _body5498_
                              (gxc#compile-e _body5498_))
                          '()))))))
  (define gxc#generate-runtime-quote%
    (lambda (_stx5407_)
      (letrec ((_generate15409_
                (lambda (_datum5461_)
                  (if (let ((_$e5463_ (null? _datum5461_)))
                        (if _$e5463_
                            _$e5463_
                            (let ((_$e5466_ (interned-symbol? _datum5461_)))
                              (if _$e5466_
                                  _$e5466_
                                  (gx#self-quoting? _datum5461_)))))
                      _datum5461_
                      (if (uninterned-symbol? _datum5461_)
                          (gxc#generate-runtime-gensym-reference__opt-lambda9290
                           _datum5461_
                           '#t)
                          (if (pair? _datum5461_)
                              (cons (_generate15409_ (car _datum5461_))
                                    (_generate15409_ (cdr _datum5461_)))
                              (if (box? _datum5461_)
                                  (box (_generate15409_ (unbox _datum5461_)))
                                  (if (vector? _datum5461_)
                                      (vector-map _generate15409_ _datum5461_)
                                      (if (let ((_$e5469_
                                                 (s8vector? _datum5461_)))
                                            (if _$e5469_
                                                _$e5469_
                                                (let ((_$e5472_
                                                       (u8vector?
                                                        _datum5461_)))
                                                  (if _$e5472_
                                                      _$e5472_
                                                      (let ((_$e5475_
                                                             (s16vector?
                                                              _datum5461_)))
                                                        (if _$e5475_
                                                            _$e5475_
                                                            (let ((_$e5478_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (u16vector? _datum5461_)))
                      (if _$e5478_
                          _$e5478_
                          (let ((_$e5481_ (s32vector? _datum5461_)))
                            (if _$e5481_
                                _$e5481_
                                (let ((_$e5484_ (u32vector? _datum5461_)))
                                  (if _$e5484_
                                      _$e5484_
                                      (let ((_$e5487_
                                             (s64vector? _datum5461_)))
                                        (if _$e5487_
                                            _$e5487_
                                            (let ((_$e5490_
                                                   (u64vector? _datum5461_)))
                                              (if _$e5490_
                                                  _$e5490_
                                                  (let ((_$e5493_
                                                         (f32vector?
                                                          _datum5461_)))
                                                    (if _$e5493_
                                                        _$e5493_
                                                        (f64vector?
                                                         _datum5461_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _datum5461_
                                          (gxc#raise-compile-error
                                           '"Cannot compile non-primitive quote"
                                           _stx5407_))))))))))
        (let ((_g54115424_
               (lambda (_g54125421_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g54125421_))))
          (let ((_g54105458_
                 (lambda (_g54125427_)
                   (if (gx#stx-pair? _g54125427_)
                       (let ((_e54145429_ (gx#stx-e _g54125427_)))
                         (let ((_hd54155432_ (##car _e54145429_))
                               (_tl54165434_ (##cdr _e54145429_)))
                           (if (gx#stx-pair? _tl54165434_)
                               (let ((_e54175437_ (gx#stx-e _tl54165434_)))
                                 (let ((_hd54185440_ (##car _e54175437_))
                                       (_tl54195442_ (##cdr _e54175437_)))
                                   (if (gx#stx-null? _tl54195442_)
                                       ((lambda (_L5445_)
                                          (cons 'quote
                                                (cons (_generate15409_
                                                       (gx#stx-e _L5445_))
                                                      '())))
                                        _hd54185440_)
                                       (_g54115424_ _g54125427_))))
                               (_g54115424_ _g54125427_))))
                       (_g54115424_ _g54125427_)))))
            (_g54105458_ _stx5407_))))))
  (define gxc#generate-runtime-call%
    (lambda (_stx5369_)
      (let ((_g53715381_
             (lambda (_g53725378_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g53725378_))))
        (let ((_g53705404_
               (lambda (_g53725384_)
                 (if (gx#stx-pair? _g53725384_)
                     (let ((_e53745386_ (gx#stx-e _g53725384_)))
                       (let ((_hd53755389_ (##car _e53745386_))
                             (_tl53765391_ (##cdr _e53745386_)))
                         ((lambda (_L5394_) (map gxc#compile-e _L5394_))
                          _tl53765391_)))
                     (_g53715381_ _g53725384_)))))
          (_g53705404_ _stx5369_)))))
  (define gxc#generate-runtime-if%
    (lambda (_stx5331_)
      (let ((_g53335343_
             (lambda (_g53345340_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g53345340_))))
        (let ((_g53325366_
               (lambda (_g53345346_)
                 (if (gx#stx-pair? _g53345346_)
                     (let ((_e53365348_ (gx#stx-e _g53345346_)))
                       (let ((_hd53375351_ (##car _e53365348_))
                             (_tl53385353_ (##cdr _e53365348_)))
                         ((lambda (_L5356_)
                            (cons 'if (map gxc#compile-e _L5356_)))
                          _tl53385353_)))
                     (_g53335343_ _g53345346_)))))
          (_g53325366_ _stx5331_)))))
  (define gxc#generate-runtime-ref%
    (lambda (_stx5280_)
      (let ((_g52825295_
             (lambda (_g52835292_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g52835292_))))
        (let ((_g52815328_
               (lambda (_g52835298_)
                 (if (gx#stx-pair? _g52835298_)
                     (let ((_e52855300_ (gx#stx-e _g52835298_)))
                       (let ((_hd52865303_ (##car _e52855300_))
                             (_tl52875305_ (##cdr _e52855300_)))
                         (if (gx#stx-pair? _tl52875305_)
                             (let ((_e52885308_ (gx#stx-e _tl52875305_)))
                               (let ((_hd52895311_ (##car _e52885308_))
                                     (_tl52905313_ (##cdr _e52885308_)))
                                 (if (gx#stx-null? _tl52905313_)
                                     ((lambda (_L5316_)
                                        (gxc#generate-runtime-binding-id
                                         _L5316_))
                                      _hd52895311_)
                                     (_g52825295_ _g52835298_))))
                             (_g52825295_ _g52835298_))))
                     (_g52825295_ _g52835298_)))))
          (_g52815328_ _stx5280_)))))
  (define gxc#generate-runtime-setq%
    (lambda (_stx5213_)
      (let ((_g52155232_
             (lambda (_g52165229_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g52165229_))))
        (let ((_g52145277_
               (lambda (_g52165235_)
                 (if (gx#stx-pair? _g52165235_)
                     (let ((_e52195237_ (gx#stx-e _g52165235_)))
                       (let ((_hd52205240_ (##car _e52195237_))
                             (_tl52215242_ (##cdr _e52195237_)))
                         (if (gx#stx-pair? _tl52215242_)
                             (let ((_e52225245_ (gx#stx-e _tl52215242_)))
                               (let ((_hd52235248_ (##car _e52225245_))
                                     (_tl52245250_ (##cdr _e52225245_)))
                                 (if (gx#stx-pair? _tl52245250_)
                                     (let ((_e52255253_
                                            (gx#stx-e _tl52245250_)))
                                       (let ((_hd52265256_ (##car _e52255253_))
                                             (_tl52275258_
                                              (##cdr _e52255253_)))
                                         (if (gx#stx-null? _tl52275258_)
                                             ((lambda (_L5261_ _L5262_)
                                                (cons 'set!
                                                      (cons (gxc#generate-runtime-binding-id
                                                             _L5262_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L5261_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd52265256_
                                              _hd52235248_)
                                             (_g52155232_ _g52165235_))))
                                     (_g52155232_ _g52165235_))))
                             (_g52155232_ _g52165235_))))
                     (_g52155232_ _g52165235_)))))
          (_g52145277_ _stx5213_)))))
  (define gxc#generate-runtime-struct-instancep%
    (lambda (_stx5146_)
      (let ((_g51485165_
             (lambda (_g51495162_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g51495162_))))
        (let ((_g51475210_
               (lambda (_g51495168_)
                 (if (gx#stx-pair? _g51495168_)
                     (let ((_e51525170_ (gx#stx-e _g51495168_)))
                       (let ((_hd51535173_ (##car _e51525170_))
                             (_tl51545175_ (##cdr _e51525170_)))
                         (if (gx#stx-pair? _tl51545175_)
                             (let ((_e51555178_ (gx#stx-e _tl51545175_)))
                               (let ((_hd51565181_ (##car _e51555178_))
                                     (_tl51575183_ (##cdr _e51555178_)))
                                 (if (gx#stx-pair? _tl51575183_)
                                     (let ((_e51585186_
                                            (gx#stx-e _tl51575183_)))
                                       (let ((_hd51595189_ (##car _e51585186_))
                                             (_tl51605191_
                                              (##cdr _e51585186_)))
                                         (if (gx#stx-null? _tl51605191_)
                                             ((lambda (_L5194_ _L5195_)
                                                (cons '##structure-instance-of?
                                                      (cons (gxc#compile-e
                                                             _L5194_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L5195_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd51595189_
                                              _hd51565181_)
                                             (_g51485165_ _g51495168_))))
                                     (_g51485165_ _g51495168_))))
                             (_g51485165_ _g51495168_))))
                     (_g51485165_ _g51495168_)))))
          (_g51475210_ _stx5146_)))))
  (define gxc#generate-runtime-struct-direct-instancep%
    (lambda (_stx5079_)
      (let ((_g50815098_
             (lambda (_g50825095_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g50825095_))))
        (let ((_g50805143_
               (lambda (_g50825101_)
                 (if (gx#stx-pair? _g50825101_)
                     (let ((_e50855103_ (gx#stx-e _g50825101_)))
                       (let ((_hd50865106_ (##car _e50855103_))
                             (_tl50875108_ (##cdr _e50855103_)))
                         (if (gx#stx-pair? _tl50875108_)
                             (let ((_e50885111_ (gx#stx-e _tl50875108_)))
                               (let ((_hd50895114_ (##car _e50885111_))
                                     (_tl50905116_ (##cdr _e50885111_)))
                                 (if (gx#stx-pair? _tl50905116_)
                                     (let ((_e50915119_
                                            (gx#stx-e _tl50905116_)))
                                       (let ((_hd50925122_ (##car _e50915119_))
                                             (_tl50935124_
                                              (##cdr _e50915119_)))
                                         (if (gx#stx-null? _tl50935124_)
                                             ((lambda (_L5127_ _L5128_)
                                                (cons '##structure-direct-instance-of?
                                                      (cons (gxc#compile-e
                                                             _L5127_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L5128_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd50925122_
                                              _hd50895114_)
                                             (_g50815098_ _g50825101_))))
                                     (_g50815098_ _g50825101_))))
                             (_g50815098_ _g50825101_))))
                     (_g50815098_ _g50825101_)))))
          (_g50805143_ _stx5079_)))))
  (define gxc#generate-runtime-struct-ref%
    (lambda (_stx4996_)
      (let ((_g49985019_
             (lambda (_g49995016_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g49995016_))))
        (let ((_g49975076_
               (lambda (_g49995022_)
                 (if (gx#stx-pair? _g49995022_)
                     (let ((_e50035024_ (gx#stx-e _g49995022_)))
                       (let ((_hd50045027_ (##car _e50035024_))
                             (_tl50055029_ (##cdr _e50035024_)))
                         (if (gx#stx-pair? _tl50055029_)
                             (let ((_e50065032_ (gx#stx-e _tl50055029_)))
                               (let ((_hd50075035_ (##car _e50065032_))
                                     (_tl50085037_ (##cdr _e50065032_)))
                                 (if (gx#stx-pair? _tl50085037_)
                                     (let ((_e50095040_
                                            (gx#stx-e _tl50085037_)))
                                       (let ((_hd50105043_ (##car _e50095040_))
                                             (_tl50115045_
                                              (##cdr _e50095040_)))
                                         (if (gx#stx-pair? _tl50115045_)
                                             (let ((_e50125048_
                                                    (gx#stx-e _tl50115045_)))
                                               (let ((_hd50135051_
                                                      (##car _e50125048_))
                                                     (_tl50145053_
                                                      (##cdr _e50125048_)))
                                                 (if (gx#stx-null?
                                                      _tl50145053_)
                                                     ((lambda (_L5056_
                                                               _L5057_
                                                               _L5058_)
                                                        (cons '##structure-ref
                                                              (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L5056_)
                            (cons (gxc#compile-e _L5057_)
                                  (cons (gxc#compile-e _L5058_)
                                        (cons ''#f '()))))))
              _hd50135051_
              _hd50105043_
              _hd50075035_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g49985019_
                                                      _g49995022_))))
                                             (_g49985019_ _g49995022_))))
                                     (_g49985019_ _g49995022_))))
                             (_g49985019_ _g49995022_))))
                     (_g49985019_ _g49995022_)))))
          (_g49975076_ _stx4996_)))))
  (define gxc#generate-runtime-struct-setq%
    (lambda (_stx4897_)
      (let ((_g48994924_
             (lambda (_g49004921_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g49004921_))))
        (let ((_g48984993_
               (lambda (_g49004927_)
                 (if (gx#stx-pair? _g49004927_)
                     (let ((_e49054929_ (gx#stx-e _g49004927_)))
                       (let ((_hd49064932_ (##car _e49054929_))
                             (_tl49074934_ (##cdr _e49054929_)))
                         (if (gx#stx-pair? _tl49074934_)
                             (let ((_e49084937_ (gx#stx-e _tl49074934_)))
                               (let ((_hd49094940_ (##car _e49084937_))
                                     (_tl49104942_ (##cdr _e49084937_)))
                                 (if (gx#stx-pair? _tl49104942_)
                                     (let ((_e49114945_
                                            (gx#stx-e _tl49104942_)))
                                       (let ((_hd49124948_ (##car _e49114945_))
                                             (_tl49134950_
                                              (##cdr _e49114945_)))
                                         (if (gx#stx-pair? _tl49134950_)
                                             (let ((_e49144953_
                                                    (gx#stx-e _tl49134950_)))
                                               (let ((_hd49154956_
                                                      (##car _e49144953_))
                                                     (_tl49164958_
                                                      (##cdr _e49144953_)))
                                                 (if (gx#stx-pair?
                                                      _tl49164958_)
                                                     (let ((_e49174961_
                                                            (gx#stx-e
                                                             _tl49164958_)))
                                                       (let ((_hd49184964_
                                                              (##car _e49174961_))
                                                             (_tl49194966_
                                                              (##cdr _e49174961_)))
                                                         (if (gx#stx-null?
                                                              _tl49194966_)
                                                             ((lambda (_L4969_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L4970_
                               _L4971_
                               _L4972_)
                        (cons '##structure-set!
                              (cons (gxc#compile-e _L4970_)
                                    (cons (gxc#compile-e _L4969_)
                                          (cons (gxc#compile-e _L4971_)
                                                (cons (gxc#compile-e _L4972_)
                                                      (cons ''#f '())))))))
                      _hd49184964_
                      _hd49154956_
                      _hd49124948_
                      _hd49094940_)
                     (_g48994924_ _g49004927_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g48994924_
                                                      _g49004927_))))
                                             (_g48994924_ _g49004927_))))
                                     (_g48994924_ _g49004927_))))
                             (_g48994924_ _g49004927_))))
                     (_g48994924_ _g49004927_)))))
          (_g48984993_ _stx4897_)))))
  (define gxc#generate-runtime-struct-direct-ref%
    (lambda (_stx4814_)
      (let ((_g48164837_
             (lambda (_g48174834_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g48174834_))))
        (let ((_g48154894_
               (lambda (_g48174840_)
                 (if (gx#stx-pair? _g48174840_)
                     (let ((_e48214842_ (gx#stx-e _g48174840_)))
                       (let ((_hd48224845_ (##car _e48214842_))
                             (_tl48234847_ (##cdr _e48214842_)))
                         (if (gx#stx-pair? _tl48234847_)
                             (let ((_e48244850_ (gx#stx-e _tl48234847_)))
                               (let ((_hd48254853_ (##car _e48244850_))
                                     (_tl48264855_ (##cdr _e48244850_)))
                                 (if (gx#stx-pair? _tl48264855_)
                                     (let ((_e48274858_
                                            (gx#stx-e _tl48264855_)))
                                       (let ((_hd48284861_ (##car _e48274858_))
                                             (_tl48294863_
                                              (##cdr _e48274858_)))
                                         (if (gx#stx-pair? _tl48294863_)
                                             (let ((_e48304866_
                                                    (gx#stx-e _tl48294863_)))
                                               (let ((_hd48314869_
                                                      (##car _e48304866_))
                                                     (_tl48324871_
                                                      (##cdr _e48304866_)))
                                                 (if (gx#stx-null?
                                                      _tl48324871_)
                                                     ((lambda (_L4874_
                                                               _L4875_
                                                               _L4876_)
                                                        (cons '##direct-structure-ref
                                                              (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L4874_)
                            (cons (gxc#compile-e _L4875_)
                                  (cons (gxc#compile-e _L4876_)
                                        (cons ''#f '()))))))
              _hd48314869_
              _hd48284861_
              _hd48254853_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g48164837_
                                                      _g48174840_))))
                                             (_g48164837_ _g48174840_))))
                                     (_g48164837_ _g48174840_))))
                             (_g48164837_ _g48174840_))))
                     (_g48164837_ _g48174840_)))))
          (_g48154894_ _stx4814_)))))
  (define gxc#generate-runtime-struct-direct-setq%
    (lambda (_stx4715_)
      (let ((_g47174742_
             (lambda (_g47184739_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g47184739_))))
        (let ((_g47164811_
               (lambda (_g47184745_)
                 (if (gx#stx-pair? _g47184745_)
                     (let ((_e47234747_ (gx#stx-e _g47184745_)))
                       (let ((_hd47244750_ (##car _e47234747_))
                             (_tl47254752_ (##cdr _e47234747_)))
                         (if (gx#stx-pair? _tl47254752_)
                             (let ((_e47264755_ (gx#stx-e _tl47254752_)))
                               (let ((_hd47274758_ (##car _e47264755_))
                                     (_tl47284760_ (##cdr _e47264755_)))
                                 (if (gx#stx-pair? _tl47284760_)
                                     (let ((_e47294763_
                                            (gx#stx-e _tl47284760_)))
                                       (let ((_hd47304766_ (##car _e47294763_))
                                             (_tl47314768_
                                              (##cdr _e47294763_)))
                                         (if (gx#stx-pair? _tl47314768_)
                                             (let ((_e47324771_
                                                    (gx#stx-e _tl47314768_)))
                                               (let ((_hd47334774_
                                                      (##car _e47324771_))
                                                     (_tl47344776_
                                                      (##cdr _e47324771_)))
                                                 (if (gx#stx-pair?
                                                      _tl47344776_)
                                                     (let ((_e47354779_
                                                            (gx#stx-e
                                                             _tl47344776_)))
                                                       (let ((_hd47364782_
                                                              (##car _e47354779_))
                                                             (_tl47374784_
                                                              (##cdr _e47354779_)))
                                                         (if (gx#stx-null?
                                                              _tl47374784_)
                                                             ((lambda (_L4787_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L4788_
                               _L4789_
                               _L4790_)
                        (cons '##direct-structure-set!
                              (cons (gxc#compile-e _L4788_)
                                    (cons (gxc#compile-e _L4787_)
                                          (cons (gxc#compile-e _L4789_)
                                                (cons (gxc#compile-e _L4790_)
                                                      (cons ''#f '())))))))
                      _hd47364782_
                      _hd47334774_
                      _hd47304766_
                      _hd47274758_)
                     (_g47174742_ _g47184745_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g47174742_
                                                      _g47184745_))))
                                             (_g47174742_ _g47184745_))))
                                     (_g47174742_ _g47184745_))))
                             (_g47174742_ _g47184745_))))
                     (_g47174742_ _g47184745_)))))
          (_g47164811_ _stx4715_)))))
  (define gxc#generate-runtime-loader-import%
    (lambda (_stx4624_)
      (let ((_g46264636_
             (lambda (_g46274633_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g46274633_))))
        (let ((_g46254712_
               (lambda (_g46274639_)
                 (if (gx#stx-pair? _g46274639_)
                     (let ((_e46294641_ (gx#stx-e _g46274639_)))
                       (let ((_hd46304644_ (##car _e46294641_))
                             (_tl46314646_ (##cdr _e46294641_)))
                         ((lambda (_L4649_)
                            (let ((_ht4659_ (make-hash-table-eq)))
                              ((letrec ((_lp4661_
                                         (lambda (_rest4663_ _loads4664_)
                                           (let ((_K4666_ (lambda (_ctx4705_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _rest4706_)
                    (let ((_id4708_
                           (##structure-ref
                            _ctx4705_
                            '1
                            gx#expander-context::t
                            '#f)))
                      (if (table-ref _ht4659_ _id4708_ '#f)
                          (_lp4661_ _rest4706_ _loads4664_)
                          (let ((_rt4710_
                                 (string-append
                                  (symbol->string _id4708_)
                                  '"__rt")))
                            (begin
                              (table-set! _ht4659_ _id4708_ _rt4710_)
                              (_lp4661_
                               _rest4706_
                               (cons _rt4710_ _loads4664_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_rest46674675_ _rest4663_))
                                               (let ((_E46704679_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _rest46674675_))))
                                                 (let ((_else46694687_
                                                        (lambda ()
                                                          (cons 'begin
                                                                (map (lambda (_g46824684_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (list 'load-module _g46824684_))
                             (reverse _loads4664_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_K46714693_
                                                          (lambda (_rest4690_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in4691_)
                    (if (##structure-instance-of?
                         _in4691_
                         'gx#module-context::t)
                        (_K4666_ _in4691_ _rest4690_)
                        (if (##structure-direct-instance-of?
                             _in4691_
                             'gx#module-import::t)
                            (if (fxpositive?
                                 (##direct-structure-ref
                                  _in4691_
                                  '3
                                  gx#module-import::t
                                  '#f))
                                (_lp4661_ _rest4690_ _loads4664_)
                                (_K4666_ (##direct-structure-ref
                                          (##direct-structure-ref
                                           _in4691_
                                           '1
                                           gx#module-import::t
                                           '#f)
                                          '1
                                          gx#module-export::t
                                          '#f)
                                         _rest4690_))
                            (if (##structure-direct-instance-of?
                                 _in4691_
                                 'gx#import-set::t)
                                (if (fxpositive?
                                     (##direct-structure-ref
                                      _in4691_
                                      '2
                                      gx#import-set::t
                                      '#f))
                                    (_lp4661_ _rest4690_ _loads4664_)
                                    (_K4666_ (##direct-structure-ref
                                              _in4691_
                                              '1
                                              gx#import-set::t
                                              '#f)
                                             _rest4690_))
                                (gxc#raise-compile-error
                                 '"Unexpected import"
                                 _stx4624_
                                 _in4691_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##pair? _rest46674675_)
                                                         (let ((_hd46724696_
                                                                (##car _rest46674675_))
                                                               (_tl46734698_
                                                                (##cdr _rest46674675_)))
                                                           (let ((_in4701_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd46724696_))
                     (let ((_rest4703_ _tl46734698_))
                       (_K46714693_ _rest4703_ _in4701_))))
                 (_else46694687_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _lp4661_)
                               _L4649_
                               '())))
                          _tl46314646_)))
                     (_g46264636_ _g46274639_)))))
          (_g46254712_ _stx4624_)))))
  (define gxc#generate-runtime-phi-quote-syntax%
    (lambda (_stx4565_)
      (let ((_generate-quote4567_
             (lambda (_q4622_)
               (if (gx#identifier? _q4622_)
                   (gxc#generate-runtime-identifier _q4622_)
                   (gxc#raise-compile-error
                    '"Cannot quote non-identifier syntax"
                    _stx4565_
                    _q4622_)))))
        (let ((_g45694582_
               (lambda (_g45704579_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g45704579_))))
          (let ((_g45684619_
                 (lambda (_g45704585_)
                   (if (gx#stx-pair? _g45704585_)
                       (let ((_e45724587_ (gx#stx-e _g45704585_)))
                         (let ((_hd45734590_ (##car _e45724587_))
                               (_tl45744592_ (##cdr _e45724587_)))
                           (if (gx#stx-pair? _tl45744592_)
                               (let ((_e45754595_ (gx#stx-e _tl45744592_)))
                                 (let ((_hd45764598_ (##car _e45754595_))
                                       (_tl45774600_ (##cdr _e45754595_)))
                                   (if (gx#stx-null? _tl45774600_)
                                       ((lambda (_L4603_)
                                          (let ((_gid4616_
                                                 (gxc#generate-runtime-temporary__opt-lambda9236
                                                  '#t))
                                                (_quote-e4617_
                                                 (_generate-quote4567_
                                                  _L4603_)))
                                            (begin
                                              (set-box!
                                               (gxc#current-compile-lift)
                                               (cons (cons 'define
                                                           (cons _gid4616_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'gx#core-quote-syntax
                                     (cons (cons 'quote
                                                 (cons _quote-e4617_ '()))
                                           '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (unbox (gxc#current-compile-lift))))
                                              _gid4616_)))
                                        _hd45764598_)
                                       (_g45694582_ _g45704585_))))
                               (_g45694582_ _g45704585_))))
                       (_g45694582_ _g45704585_)))))
            (_g45684619_ _stx4565_))))))
  (define gxc#generate-runtime-phi-define-runtime%
    (lambda (_stx4498_)
      (let ((_g45004517_
             (lambda (_g45014514_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g45014514_))))
        (let ((_g44994562_
               (lambda (_g45014520_)
                 (if (gx#stx-pair? _g45014520_)
                     (let ((_e45044522_ (gx#stx-e _g45014520_)))
                       (let ((_hd45054525_ (##car _e45044522_))
                             (_tl45064527_ (##cdr _e45044522_)))
                         (if (gx#stx-pair? _tl45064527_)
                             (let ((_e45074530_ (gx#stx-e _tl45064527_)))
                               (let ((_hd45084533_ (##car _e45074530_))
                                     (_tl45094535_ (##cdr _e45074530_)))
                                 (if (gx#stx-pair? _tl45094535_)
                                     (let ((_e45104538_
                                            (gx#stx-e _tl45094535_)))
                                       (let ((_hd45114541_ (##car _e45104538_))
                                             (_tl45124543_
                                              (##cdr _e45104538_)))
                                         (if (gx#stx-null? _tl45124543_)
                                             ((lambda (_L4546_ _L4547_)
                                                (cons 'define
                                                      (cons (gx#stx-e _L4547_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L4546_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd45114541_
                                              _hd45084533_)
                                             (_g45004517_ _g45014520_))))
                                     (_g45004517_ _g45014520_))))
                             (_g45004517_ _g45014520_))))
                     (_g45004517_ _g45014520_)))))
          (_g44994562_ _stx4498_)))))
  (define gxc#generate-meta-begin%
    (lambda (_stx4447_ _state4448_)
      (let ((_g44504460_
             (lambda (_g44514457_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g44514457_))))
        (let ((_g44494495_
               (lambda (_g44514463_)
                 (if (gx#stx-pair? _g44514463_)
                     (let ((_e44534465_ (gx#stx-e _g44514463_)))
                       (let ((_hd44544468_ (##car _e44534465_))
                             (_tl44554470_ (##cdr _e44534465_)))
                         ((lambda (_L4473_)
                            (let ((_c-body4487_
                                   (map (lambda (_g44824484_)
                                          (gxc#compile-e
                                           _g44824484_
                                           _state4448_))
                                        _L4473_)))
                              (let ((_c-body4492_
                                     (filter (lambda (_$obj4489_)
                                               (not (eq? _$obj4489_ '#!void)))
                                             _c-body4487_)))
                                (let () (cons '%#begin _c-body4492_)))))
                          _tl44554470_)))
                     (_g44504460_ _g44514463_)))))
          (_g44494495_ _stx4447_)))))
  (define gxc#generate-meta-begin-syntax%
    (lambda (_stx4355_ _state4356_)
      (let ((_g43584368_
             (lambda (_g43594365_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g43594365_))))
        (let ((_g43574444_
               (lambda (_g43594371_)
                 (if (gx#stx-pair? _g43594371_)
                     (let ((_e43614373_ (gx#stx-e _g43594371_)))
                       (let ((_hd43624376_ (##car _e43614373_))
                             (_tl43634378_ (##cdr _e43614373_)))
                         ((lambda (_L4381_)
                            (let ((_phi4391_
                                   (fx+ (gx#current-expander-phi) '1)))
                              (let ((_block4393_
                                     (gxc#meta-state-begin-phi!
                                      _state4356_
                                      _phi4391_)))
                                (let ((_compiled4396_
                                       (call-with-parameters
                                        (lambda ()
                                          (gxc#apply-generate-meta-phi
                                           (cons (gx#datum->syntax__0
                                                  '#f
                                                  '%#begin)
                                                 _L4381_)
                                           _state4356_))
                                        gx#current-expander-phi
                                        _phi4391_)))
                                  (let ()
                                    (let ((_g43994409_
                                           (lambda (_g44004406_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g44004406_))))
                                      (let ((_g43984441_
                                             (lambda (_g44004412_)
                                               (if (gx#stx-pair? _g44004412_)
                                                   (let ((_e44024414_
                                                          (gx#stx-e
                                                           _g44004412_)))
                                                     (let ((_hd44034417_
                                                            (##car _e44024414_))
                                                           (_tl44044419_
                                                            (##cdr _e44024414_)))
                                                       (if (gx#identifier?
                                                            _hd44034417_)
                                                           (if (gx#stx-eq?
                                                                '%#begin
                                                                _hd44034417_)
                                                               ((lambda (_L4422_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_c-body4439_
                                 (filter (lambda (_$obj4436_)
                                           (not (eq? _$obj4436_ '#!void)))
                                         _L4422_)))
                            (if _block4393_
                                (cons '%#begin-syntax
                                      (cons (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote (cons _block4393_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _c-body4439_))
                                (if (null? _c-body4439_)
                                    '#!void
                                    (cons '%#begin-syntax _c-body4439_)))))
                        _tl44044419_)
                       (_g43994409_ _g44004412_))
                   (_g43994409_ _g44004412_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g43994409_
                                                    _g44004412_)))))
                                        (_g43984441_ _compiled4396_))))))))
                          _tl43634378_)))
                     (_g43584368_ _g43594371_)))))
          (_g43574444_ _stx4355_)))))
  (define gxc#generate-meta-module%
    (lambda (_stx4286_ _state4287_)
      (begin
        (gxc#meta-state-end-phi! _state4287_)
        (let ((_g42894303_
               (lambda (_g42904300_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g42904300_))))
          (let ((_g42884352_
                 (lambda (_g42904306_)
                   (if (gx#stx-pair? _g42904306_)
                       (let ((_e42934308_ (gx#stx-e _g42904306_)))
                         (let ((_hd42944311_ (##car _e42934308_))
                               (_tl42954313_ (##cdr _e42934308_)))
                           (if (gx#stx-pair? _tl42954313_)
                               (let ((_e42964316_ (gx#stx-e _tl42954313_)))
                                 (let ((_hd42974319_ (##car _e42964316_))
                                       (_tl42984321_ (##cdr _e42964316_)))
                                   ((lambda (_L4324_ _L4325_)
                                      (let ((_key4338_
                                             (gx#core-identifier-key _L4325_)))
                                        (begin
                                          (if (interned-symbol? _key4338_)
                                              '#!void
                                              (gxc#raise-compile-error
                                               '"Cannot compile module with uninterned id"
                                               _stx4286_
                                               _L4325_
                                               _key4338_))
                                          (let ((_ctx4340_
                                                 (gx#syntax-local-e__0
                                                  _L4325_)))
                                            (let ((_code4343_
                                                   (call-with-parameters
                                                    (lambda ()
                                                      (gxc#compile-e
                                                       (##structure-ref
                                                        _ctx4340_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)
                                                       _state4287_))
                                                    gx#current-expander-context
                                                    _ctx4340_)))
                                              (let ((_rt4345_
                                                     (table-ref
                                                      (gxc#current-compile-runtime-sections)
                                                      _ctx4340_
                                                      '#f)))
                                                (let ((_loader4347_
                                                       (if _rt4345_
                                                           (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons '%#ref (cons '_gx#load-module '()))
                                     (cons (cons '%#quote (cons _rt4345_ '()))
                                           '())))
                         '())
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_modid4349_
                                                         (gx#stx-e _L4325_)))
                                                    (let ()
                                                      (begin
                                                        (gxc#meta-state-end-phi!
                                                         _state4287_)
                                                        (cons '%#module
                                                              (cons _modid4349_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _code4343_ _loader4347_)))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _tl42984321_
                                    _hd42974319_)))
                               (_g42894303_ _g42904306_))))
                       (_g42894303_ _g42904306_)))))
            (_g42884352_ _stx4286_))))))
  (define gxc#generate-meta-import-path
    (lambda (_ctx4276_ _context-chain4277_)
      ((letrec ((_lp4279_
                 (lambda (_ctx4281_ _path4282_)
                   (let ((_super4284_
                          (##structure-ref
                           _ctx4281_
                           '3
                           gx#phi-context::t
                           '#f)))
                     (if (memq _super4284_ _context-chain4277_)
                         (cons* '#f
                                (car (##structure-ref
                                      _ctx4281_
                                      '7
                                      gx#module-context::t
                                      '#f))
                                _path4282_)
                         (if (##structure-instance-of?
                              _super4284_
                              'gx#module-context::t)
                             (_lp4279_
                              _super4284_
                              (cons (car (##structure-ref
                                          _ctx4281_
                                          '7
                                          gx#module-context::t
                                          '#f))
                                    _path4282_))
                             (cons (make-symbol
                                    '":"
                                    (##structure-ref
                                     _ctx4281_
                                     '1
                                     gx#expander-context::t
                                     '#f))
                                   _path4282_)))))))
         _lp4279_)
       _ctx4276_
       '())))
  (define gxc#current-context-chain
    (lambda ()
      ((letrec ((_lp4271_
                 (lambda (_ctx4273_ _r4274_)
                   (if (##structure-instance-of?
                        _ctx4273_
                        'gx#module-context::t)
                       (_lp4271_
                        (##structure-ref _ctx4273_ '3 gx#phi-context::t '#f)
                        (cons _ctx4273_ _r4274_))
                       _r4274_))))
         _lp4271_)
       (gx#current-expander-context)
       '())))
  (define gxc#generate-meta-import%
    (lambda (_stx4040_ _state4041_)
      (let ((_context-chain4043_ (gxc#current-context-chain)))
        (let ((_make-import-spec4044_
               (lambda (_in4207_)
                 (let ((_in42084220_ _in4207_))
                   (let ((_E42104224_
                          (lambda ()
                            (error '"No clause matching" _in42084220_))))
                     (let ((_K42114234_
                            (lambda (_phi4227_
                                     _name4228_
                                     _src-name4229_
                                     _src-phi4230_
                                     _src-key4231_
                                     _src-ctx4232_)
                              (cons _phi4227_
                                    (cons (gxc#generate-runtime-identifier-key
                                           _name4228_)
                                          (cons _src-phi4230_
                                                (cons (gxc#generate-runtime-identifier-key
                                                       _src-name4229_)
                                                      '())))))))
                       (if (##structure-direct-instance-of?
                            _in42084220_
                            (##type-id gx#module-import::t))
                           (let ((_e42124237_ (##vector-ref _in42084220_ '1)))
                             (if (##structure-direct-instance-of?
                                  _e42124237_
                                  (##type-id gx#module-export::t))
                                 (let ((_e42154240_
                                        (##vector-ref _e42124237_ '1)))
                                   (let ((_src-ctx4243_ _e42154240_))
                                     (let ((_e42164245_
                                            (##vector-ref _e42124237_ '2)))
                                       (let ((_src-key4248_ _e42164245_))
                                         (let ((_e42174250_
                                                (##vector-ref _e42124237_ '3)))
                                           (let ((_src-phi4253_ _e42174250_))
                                             (let ((_e42184255_
                                                    (##vector-ref
                                                     _e42124237_
                                                     '4)))
                                               (let ((_src-name4258_
                                                      _e42184255_))
                                                 (let ((_e42134260_
                                                        (##vector-ref
                                                         _in42084220_
                                                         '2)))
                                                   (let ((_name4263_
                                                          _e42134260_))
                                                     (let ((_e42144265_
                                                            (##vector-ref
                                                             _in42084220_
                                                             '3)))
                                                       (let ((_phi4268_
                                                              _e42144265_))
                                                         (_K42114234_
                                                          _phi4268_
                                                          _name4263_
                                                          _src-name4258_
                                                          _src-phi4253_
                                                          _src-key4248_
                                                          _src-ctx4243_)))))))))))))
                                 (_E42104224_)))
                           (_E42104224_))))))))
          (let ((_make-import-path4045_
                 (lambda (_ctx4205_)
                   (gxc#generate-meta-import-path
                    _ctx4205_
                    _context-chain4043_))))
            (let ((_make-import-spec-in4046_
                   (lambda (_ctx4202_ _in4203_)
                     (cons 'spec:
                           (cons (_make-import-path4045_ _ctx4202_)
                                 (reverse _in4203_))))))
              (begin
                (gxc#meta-state-end-phi! _state4041_)
                (let ((_g40484058_
                       (lambda (_g40494055_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g40494055_))))
                  (let ((_g40474199_
                         (lambda (_g40494061_)
                           (if (gx#stx-pair? _g40494061_)
                               (let ((_e40514063_ (gx#stx-e _g40494061_)))
                                 (let ((_hd40524066_ (##car _e40514063_))
                                       (_tl40534068_ (##cdr _e40514063_)))
                                   ((lambda (_L4071_)
                                      ((letrec ((_lp4082_
                                                 (lambda (_rest4084_
                                                          _current-src4085_
                                                          _current-in4086_
                                                          _r4087_)
                                                   (let ((_rest40884096_
                                                          _rest4084_))
                                                     (let ((_E40914100_
                                                            (lambda ()
                                                              (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _rest40884096_))))
               (let ((_else40904106_
                      (lambda ()
                        (let ((_r4104_ (if _current-src4085_
                                           (cons (_make-import-spec-in4046_
                                                  _current-src4085_
                                                  _current-in4086_)
                                                 _r4087_)
                                           _r4087_)))
                          (cons '%#import (reverse _r4104_))))))
                 (let ((_K40924187_
                        (lambda (_rest4109_ _in4110_)
                          (if (##structure-direct-instance-of?
                               _in4110_
                               'gx#module-import::t)
                              (let ((_in41114118_ _in4110_))
                                (let ((_E41134122_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _in41114118_))))
                                  (let ((_K41144127_
                                         (lambda (_src-ctx4125_)
                                           (if (eq? _current-src4085_
                                                    _src-ctx4125_)
                                               (_lp4082_
                                                _rest4109_
                                                _current-src4085_
                                                (cons (_make-import-spec4044_
                                                       _in4110_)
                                                      _current-in4086_)
                                                _r4087_)
                                               (if _current-src4085_
                                                   (_lp4082_
                                                    _rest4109_
                                                    _src-ctx4125_
                                                    (cons (_make-import-spec4044_
                                                           _in4110_)
                                                          '())
                                                    (cons (_make-import-spec-in4046_
                                                           _current-src4085_
                                                           _current-in4086_)
                                                          _r4087_))
                                                   (_lp4082_
                                                    _rest4109_
                                                    _src-ctx4125_
                                                    (cons (_make-import-spec4044_
                                                           _in4110_)
                                                          '())
                                                    _r4087_))))))
                                    (if (##structure-direct-instance-of?
                                         _in41114118_
                                         (##type-id gx#module-import::t))
                                        (let ((_e41154130_
                                               (##vector-ref _in41114118_ '1)))
                                          (if (##structure-direct-instance-of?
                                               _e41154130_
                                               (##type-id gx#module-export::t))
                                              (let ((_e41164133_
                                                     (##vector-ref
                                                      _e41154130_
                                                      '1)))
                                                (let ((_src-ctx4136_
                                                       _e41164133_))
                                                  (_K41144127_ _src-ctx4136_)))
                                              (_E41134122_)))
                                        (_E41134122_)))))
                              (if (##structure-direct-instance-of?
                                   _in4110_
                                   'gx#import-set::t)
                                  (let ((_phi4138_
                                         (##direct-structure-ref
                                          _in4110_
                                          '2
                                          gx#import-set::t
                                          '#f)))
                                    (let ((_src4140_
                                           (##direct-structure-ref
                                            _in4110_
                                            '1
                                            gx#import-set::t
                                            '#f)))
                                      (let ((_src-in4180_
                                             (let ((_g41414150_
                                                    (_make-import-path4045_
                                                     _src4140_)))
                                               (let ((_E41444154_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _g41414150_))))
                                                 (let ((_try-match41434165_
                                                        (lambda ()
                                                          (let ((_K41454160_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_path4158_) (cons 'in: _path4158_))))
                    (let ((_path4163_ _g41414150_))
                      (_K41454160_ _path4163_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_K41464170_
                                                          (lambda (_path4168_)
                                                            _path4168_)))
                                                     (if (##pair? _g41414150_)
                                                         (let ((_hd41474173_
                                                                (##car _g41414150_))
                                                               (_tl41484175_
                                                                (##cdr _g41414150_)))
                                                           (let ((_path4178_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd41474173_))
                     (if (##null? _tl41484175_)
                         (_K41464170_ _path4178_)
                         (_try-match41434165_))))
                 (_try-match41434165_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_r4182_ (if _current-src4085_
                                                           (cons (_make-import-spec-in4046_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _current-src4085_
                          _current-in4086_)
                         _r4087_)
                   _r4087_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (_lp4082_
                                             _rest4109_
                                             '#f
                                             '()
                                             (cons (if (fxzero? _phi4138_)
                                                       _src-in4180_
                                                       (cons 'phi:
                                                             (cons _phi4138_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _src-in4180_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _r4182_)))))))
                                  (if (##structure-instance-of?
                                       _in4110_
                                       'gx#module-context::t)
                                      (let ((_r4185_ (if _current-src4085_
                                                         (cons (_make-import-spec-in4046_
                                                                _current-src4085_
                                                                _current-in4086_)
                                                               _r4087_)
                                                         _r4087_)))
                                        (_lp4082_
                                         _rest4109_
                                         '#f
                                         '()
                                         (cons (cons 'runtime:
                                                     (_make-import-path4045_
                                                      _in4110_))
                                               _r4185_)))
                                      '#!void))))))
                   (if (##pair? _rest40884096_)
                       (let ((_hd40934190_ (##car _rest40884096_))
                             (_tl40944192_ (##cdr _rest40884096_)))
                         (let ((_in4195_ _hd40934190_))
                           (let ((_rest4197_ _tl40944192_))
                             (_K40924187_ _rest4197_ _in4195_))))
                       (_else40904106_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _lp4082_)
                                       _L4071_
                                       '#f
                                       '()
                                       '()))
                                    _tl40534068_)))
                               (_g40484058_ _g40494061_)))))
                    (_g40474199_ _stx4040_))))))))))
  (define gxc#generate-meta-export%
    (lambda (_stx3850_ _state3851_)
      (let ((_context-chain3853_ (gxc#current-context-chain)))
        (let ((_make-import-path3854_
               (lambda (_ctx4038_)
                 (gxc#generate-meta-import-path
                  _ctx4038_
                  _context-chain3853_))))
          (let ((_g38563866_
                 (lambda (_g38573863_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g38573863_))))
            (let ((_g38554035_
                   (lambda (_g38573869_)
                     (if (gx#stx-pair? _g38573869_)
                         (let ((_e38593871_ (gx#stx-e _g38573869_)))
                           (let ((_hd38603874_ (##car _e38593871_))
                                 (_tl38613876_ (##cdr _e38593871_)))
                             ((lambda (_L3879_)
                                ((letrec ((_lp3890_
                                           (lambda (_rest3892_ _r3893_)
                                             (let ((_rest38943902_ _rest3892_))
                                               (let ((_E38973906_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _rest38943902_))))
                                                 (let ((_else38963910_
                                                        (lambda ()
                                                          (cons '%#export
                                                                (reverse _r3893_)))))
                                                   (let ((_K38984023_
                                                          (lambda (_rest3913_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _out3914_)
                    (let ((_out39153928_ _out3914_))
                      (let ((_E39183932_
                             (lambda ()
                               (error '"No clause matching" _out39153928_))))
                        (let ((_try-match39173995_
                               (lambda ()
                                 (let ((_K39193982_
                                        (lambda (_phi3936_ _src3937_)
                                          (let ((_out3977_
                                                 (if _src3937_
                                                     (cons 'import:
                                                           (cons (let ((_g39383947_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (_make-import-path3854_ _src3937_)))
                           (let ((_E39413951_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _g39383947_))))
                             (let ((_try-match39403962_
                                    (lambda ()
                                      (let ((_K39423957_
                                             (lambda (_path3955_)
                                               (cons 'in: _path3955_))))
                                        (let ((_path3960_ _g39383947_))
                                          (_K39423957_ _path3960_))))))
                               (let ((_K39433967_
                                      (lambda (_path3965_) _path3965_)))
                                 (if (##pair? _g39383947_)
                                     (let ((_hd39443970_ (##car _g39383947_))
                                           (_tl39453972_ (##cdr _g39383947_)))
                                       (let ((_path3975_ _hd39443970_))
                                         (if (##null? _tl39453972_)
                                             (_K39433967_ _path3975_)
                                             (_try-match39403962_))))
                                     (_try-match39403962_))))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#t)))
                                            (let ((_out3979_
                                                   (if (fxzero? _phi3936_)
                                                       _out3977_
                                                       (cons 'phi:
                                                             (cons _phi3936_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _out3977_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (_lp3890_
                                                 _rest3913_
                                                 (cons _out3979_
                                                       _r3893_))))))))
                                   (if (##structure-direct-instance-of?
                                        _out39153928_
                                        (##type-id gx#export-set::t))
                                       (let ((_e39203985_
                                              (##vector-ref _out39153928_ '1)))
                                         (let ((_src3988_ _e39203985_))
                                           (let ((_e39213990_
                                                  (##vector-ref
                                                   _out39153928_
                                                   '2)))
                                             (let ((_phi3993_ _e39213990_))
                                               (_K39193982_
                                                _phi3993_
                                                _src3988_)))))
                                       (_E39183932_))))))
                          (let ((_K39224002_
                                 (lambda (_name3998_ _phi3999_ _key4000_)
                                   (_lp3890_
                                    _rest3913_
                                    (cons (cons 'spec:
                                                (cons _phi3999_
                                                      (cons (gxc#generate-runtime-identifier-key
                                                             _key4000_)
                                                            (cons (gxc#generate-runtime-identifier-key
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _name3998_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _r3893_)))))
                            (if (##structure-direct-instance-of?
                                 _out39153928_
                                 (##type-id gx#module-export::t))
                                (let ((_e39234005_
                                       (##vector-ref _out39153928_ '1)))
                                  (let ((_e39244008_
                                         (##vector-ref _out39153928_ '2)))
                                    (let ((_key4011_ _e39244008_))
                                      (let ((_e39254013_
                                             (##vector-ref _out39153928_ '3)))
                                        (let ((_phi4016_ _e39254013_))
                                          (let ((_e39264018_
                                                 (##vector-ref
                                                  _out39153928_
                                                  '4)))
                                            (let ((_name4021_ _e39264018_))
                                              (_K39224002_
                                               _name4021_
                                               _phi4016_
                                               _key4011_))))))))
                                (_try-match39173995_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##pair? _rest38943902_)
                                                         (let ((_hd38994026_
                                                                (##car _rest38943902_))
                                                               (_tl39004028_
                                                                (##cdr _rest38943902_)))
                                                           (let ((_out4031_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd38994026_))
                     (let ((_rest4033_ _tl39004028_))
                       (_K38984023_ _rest4033_ _out4031_))))
                 (_else38963910_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _lp3890_)
                                 _L3879_
                                 '()))
                              _tl38613876_)))
                         (_g38563866_ _g38573869_)))))
              (_g38554035_ _stx3850_)))))))
  (define gxc#generate-meta-provide%
    (lambda (_stx3811_ _state3812_)
      (begin
        (gxc#meta-state-end-phi! _state3812_)
        (let ((_g38143824_
               (lambda (_g38153821_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g38153821_))))
          (let ((_g38133847_
                 (lambda (_g38153827_)
                   (if (gx#stx-pair? _g38153827_)
                       (let ((_e38173829_ (gx#stx-e _g38153827_)))
                         (let ((_hd38183832_ (##car _e38173829_))
                               (_tl38193834_ (##cdr _e38173829_)))
                           ((lambda (_L3837_)
                              (cons '%#provide
                                    (map gxc#generate-runtime-identifier
                                         _L3837_)))
                            _tl38193834_)))
                       (_g38143824_ _g38153827_)))))
            (_g38133847_ _stx3811_))))))
  (define gxc#generate-meta-extern%
    (lambda (_stx3682_ _state3683_)
      (let ((_generate13685_
             (lambda (_id3806_ _eid3807_)
               (let ((_eid3809_ (gx#stx-e _eid3807_)))
                 (begin
                   (if (interned-symbol? _eid3809_)
                       '#!void
                       (gxc#raise-compile-error
                        '"Cannot compile extern reference"
                        _stx3682_
                        _eid3809_))
                   (cons (gxc#generate-runtime-identifier _id3806_)
                         (cons _eid3809_ '())))))))
        (let ((_g36873715_
               (lambda (_g36883712_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g36883712_))))
          (let ((_g36863803_
                 (lambda (_g36883718_)
                   (if (gx#stx-pair? _g36883718_)
                       (let ((_e36913720_ (gx#stx-e _g36883718_)))
                         (let ((_hd36923723_ (##car _e36913720_))
                               (_tl36933725_ (##cdr _e36913720_)))
                           (if (gx#stx-pair/null? _tl36933725_)
                               (if (fx>= (gx#stx-length _tl36933725_) '0)
                                   (let ((_g10353_
                                          (gx#syntax-split-splice
                                           _tl36933725_
                                           '0)))
                                     (begin
                                       (let ((_g10354_
                                              (values-count _g10353_)))
                                         (if (not (fx= _g10354_ 2))
                                             (error "Context expects 2 values"
                                                    _g10354_)))
                                       (let ((_target36943728_
                                              (values-ref _g10353_ 0))
                                             (_tl36963730_
                                              (values-ref _g10353_ 1)))
                                         (if (gx#stx-null? _tl36963730_)
                                             (letrec ((_loop36973733_
                                                       (lambda (_hd36953736_
                                                                _eid37013738_
                                                                _id37023740_)
                                                         (if (gx#stx-pair?
                                                              _hd36953736_)
                                                             (let ((_e36983743_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd36953736_)))
                       (let ((_lp-hd36993746_ (##car _e36983743_))
                             (_lp-tl37003748_ (##cdr _e36983743_)))
                         (if (gx#stx-pair? _lp-hd36993746_)
                             (let ((_e37053751_ (gx#stx-e _lp-hd36993746_)))
                               (let ((_hd37063754_ (##car _e37053751_))
                                     (_tl37073756_ (##cdr _e37053751_)))
                                 (if (gx#stx-pair? _tl37073756_)
                                     (let ((_e37083759_
                                            (gx#stx-e _tl37073756_)))
                                       (let ((_hd37093762_ (##car _e37083759_))
                                             (_tl37103764_
                                              (##cdr _e37083759_)))
                                         (if (gx#stx-null? _tl37103764_)
                                             (_loop36973733_
                                              _lp-tl37003748_
                                              (cons _hd37093762_ _eid37013738_)
                                              (cons _hd37063754_ _id37023740_))
                                             (_g36873715_ _g36883718_))))
                                     (_g36873715_ _g36883718_))))
                             (_g36873715_ _g36883718_))))
                     (let ((_eid37033767_ (reverse _eid37013738_))
                           (_id37043769_ (reverse _id37023740_)))
                       ((lambda (_L3772_ _L3773_)
                          (cons '%#extern
                                (map _generate13685_
                                     (begin
                                       '#!void
                                       (foldr1 (lambda (_g37883791_
                                                        _g37893793_)
                                                 (cons _g37883791_
                                                       _g37893793_))
                                               '()
                                               _L3773_))
                                     (begin
                                       '#!void
                                       (foldr1 (lambda (_g37953798_
                                                        _g37963800_)
                                                 (cons _g37953798_
                                                       _g37963800_))
                                               '()
                                               _L3772_)))))
                        _eid37033767_
                        _id37043769_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop36973733_
                                                _target36943728_
                                                '()
                                                '()))
                                             (_g36873715_ _g36883718_)))))
                                   (_g36873715_ _g36883718_))
                               (_g36873715_ _g36883718_))))
                       (_g36873715_ _g36883718_)))))
            (_g36863803_ _stx3682_))))))
  (define gxc#generate-meta-define-values%
    (lambda (_stx3477_ _state3478_)
      (let ((_generate13480_
             (lambda (_id3677_)
               (let ((_eid3679_ (gxc#generate-runtime-binding-id _id3677_))
                     (_ident3680_ (gxc#generate-runtime-identifier _id3677_)))
                 (cons '%#define-runtime
                       (cons _ident3680_ (cons _eid3679_ '())))))))
        (let ((_generate*3481_
               (lambda (_all3645_)
                 (let ((_all36463654_ _all3645_))
                   (let ((_E36493658_
                          (lambda ()
                            (error '"No clause matching" _all36463654_))))
                     (let ((_else36483662_
                            (lambda () (cons '%#begin _all3645_))))
                       (let ((_K36503667_ (lambda (_one3665_) _one3665_)))
                         (if (##pair? _all36463654_)
                             (let ((_hd36513670_ (##car _all36463654_))
                                   (_tl36523672_ (##cdr _all36463654_)))
                               (let ((_one3675_ _hd36513670_))
                                 (if (##null? _tl36523672_)
                                     (_K36503667_ _one3675_)
                                     (_else36483662_))))
                             (_else36483662_)))))))))
          (let ((_g34833500_
                 (lambda (_g34843497_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g34843497_))))
            (let ((_g34823642_
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
                                           (let ((_hd34943524_
                                                  (##car _e34933521_))
                                                 (_tl34953526_
                                                  (##cdr _e34933521_)))
                                             (if (gx#stx-null? _tl34953526_)
                                                 ((lambda (_L3529_ _L3530_)
                                                    ((letrec ((_lp3546_
                                                               (lambda (_rest3548_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _r3549_)
                         (let ((_g35543570_
                                (lambda (_g35553567_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g35553567_))))
                           (let ((_g35533577_
                                  (lambda (_g35553573_)
                                    ((lambda ()
                                       (_generate*3481_ (reverse _r3549_)))))))
                             (let ((_g35523593_
                                    (lambda (_g35553580_)
                                      ((lambda (_L3582_)
                                         (if (gx#identifier? _L3582_)
                                             (_generate*3481_
                                              (foldl1 cons
                                                      (cons (_generate13480_
                                                             _L3582_)
                                                            '())
                                                      _r3549_))
                                             (_g35533577_ _g35553580_)))
                                       _g35553580_))))
                               (let ((_g35513617_
                                      (lambda (_g35553596_)
                                        (if (gx#stx-pair? _g35553596_)
                                            (let ((_e35623598_
                                                   (gx#stx-e _g35553596_)))
                                              (let ((_hd35633601_
                                                     (##car _e35623598_))
                                                    (_tl35643603_
                                                     (##cdr _e35623598_)))
                                                ((lambda (_L3606_ _L3607_)
                                                   (_lp3546_
                                                    _L3606_
                                                    (cons (_generate13480_
                                                           _L3607_)
                                                          _r3549_)))
                                                 _tl35643603_
                                                 _hd35633601_)))
                                            (_g35523593_ _g35553596_)))))
                                 (let ((_g35503639_
                                        (lambda (_g35553620_)
                                          (if (gx#stx-pair? _g35553620_)
                                              (let ((_e35573622_
                                                     (gx#stx-e _g35553620_)))
                                                (let ((_hd35583625_
                                                       (##car _e35573622_))
                                                      (_tl35593627_
                                                       (##cdr _e35573622_)))
                                                  (if (gx#stx-datum?
                                                       _hd35583625_)
                                                      (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd35583625_)
                          '#f)
                  ((lambda (_L3630_) (_lp3546_ _L3630_ _r3549_)) _tl35593627_)
                  (_g35513617_ _g35553620_))
              (_g35513617_ _g35553620_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g35513617_ _g35553620_)))))
                                   (_g35503639_ _rest3548_)))))))))
               _lp3546_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _L3530_
                                                     '()))
                                                  _hd34943524_
                                                  _hd34913516_)
                                                 (_g34833500_ _g34843503_))))
                                         (_g34833500_ _g34843503_))))
                                 (_g34833500_ _g34843503_))))
                         (_g34833500_ _g34843503_)))))
              (_g34823642_ _stx3477_)))))))
  (define gxc#generate-meta-define-syntax%
    (lambda (_stx3374_ _state3375_)
      (let ((_g33773394_
             (lambda (_g33783391_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g33783391_))))
        (let ((_g33763474_
               (lambda (_g33783397_)
                 (if (gx#stx-pair? _g33783397_)
                     (let ((_e33813399_ (gx#stx-e _g33783397_)))
                       (let ((_hd33823402_ (##car _e33813399_))
                             (_tl33833404_ (##cdr _e33813399_)))
                         (if (gx#stx-pair? _tl33833404_)
                             (let ((_e33843407_ (gx#stx-e _tl33833404_)))
                               (let ((_hd33853410_ (##car _e33843407_))
                                     (_tl33863412_ (##cdr _e33843407_)))
                                 (if (gx#stx-pair? _tl33863412_)
                                     (let ((_e33873415_
                                            (gx#stx-e _tl33863412_)))
                                       (let ((_hd33883418_ (##car _e33873415_))
                                             (_tl33893420_
                                              (##cdr _e33873415_)))
                                         (if (gx#stx-null? _tl33893420_)
                                             ((lambda (_L3423_ _L3424_)
                                                (let ((_eid3439_
                                                       (gxc#generate-runtime-binding-id
                                                        _L3424_)))
                                                  (let ((_phi3441_
                                                         (fx+ (gx#current-expander-phi)
                                                              '1)))
                                                    (let ((_block3443_
                                                           (gxc#meta-state-begin-phi!
                                                            _state3375_
                                                            _phi3441_)))
                                                      (let ()
                                                        (begin
                                                          (let ((_g34463453_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g34473450_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g34473450_))))
                    (let ((_g34453471_
                           (lambda (_g34473456_)
                             ((lambda (_L3458_)
                                (let ()
                                  (gxc#meta-state-add-phi!
                                   _state3375_
                                   _phi3441_
                                   (cons (gx#datum->syntax__0
                                          '#f
                                          '%#define-runtime)
                                         (cons _L3458_ (cons _L3423_ '()))))))
                              _g34473456_))))
                      (_g34453471_ _eid3439_)))
                  (if _block3443_
                      (cons '%#begin
                            (cons (cons '%#begin-syntax
                                        (cons (cons '%#call
                                                    (cons (cons '%#ref
                                                                (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote (cons _block3443_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))
                                  (cons (cons '%#define-syntax
                                              (cons (gxc#generate-runtime-identifier
                                                     _L3424_)
                                                    (cons _eid3439_ '())))
                                        '())))
                      (cons '%#define-syntax
                            (cons (gxc#generate-runtime-identifier _L3424_)
                                  (cons _eid3439_ '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd33883418_
                                              _hd33853410_)
                                             (_g33773394_ _g33783397_))))
                                     (_g33773394_ _g33783397_))))
                             (_g33773394_ _g33783397_))))
                     (_g33773394_ _g33783397_)))))
          (_g33763474_ _stx3374_)))))
  (define gxc#generate-meta-define-alias%
    (lambda (_stx3306_ _state3307_)
      (let ((_g33093326_
             (lambda (_g33103323_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g33103323_))))
        (let ((_g33083371_
               (lambda (_g33103329_)
                 (if (gx#stx-pair? _g33103329_)
                     (let ((_e33133331_ (gx#stx-e _g33103329_)))
                       (let ((_hd33143334_ (##car _e33133331_))
                             (_tl33153336_ (##cdr _e33133331_)))
                         (if (gx#stx-pair? _tl33153336_)
                             (let ((_e33163339_ (gx#stx-e _tl33153336_)))
                               (let ((_hd33173342_ (##car _e33163339_))
                                     (_tl33183344_ (##cdr _e33163339_)))
                                 (if (gx#stx-pair? _tl33183344_)
                                     (let ((_e33193347_
                                            (gx#stx-e _tl33183344_)))
                                       (let ((_hd33203350_ (##car _e33193347_))
                                             (_tl33213352_
                                              (##cdr _e33193347_)))
                                         (if (gx#stx-null? _tl33213352_)
                                             ((lambda (_L3355_ _L3356_)
                                                (cons '%#define-alias
                                                      (cons (gxc#generate-runtime-identifier
                                                             _L3356_)
                                                            (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L3355_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd33203350_
                                              _hd33173342_)
                                             (_g33093326_ _g33103329_))))
                                     (_g33093326_ _g33103329_))))
                             (_g33093326_ _g33103329_))))
                     (_g33093326_ _g33103329_)))))
          (_g33083371_ _stx3306_)))))
  (define gxc#generate-meta-phi-define-values%
    (lambda (_stx3303_ _state3304_)
      (begin
        (gxc#meta-state-add-phi!
         _state3304_
         (gx#current-expander-phi)
         _stx3303_)
        (gxc#generate-meta-define-values% _stx3303_ _state3304_))))
  (define gxc#generate-meta-phi-expr
    (lambda (_stx3300_ _state3301_)
      (begin
        (gxc#meta-state-add-phi!
         _state3301_
         (gx#current-expander-phi)
         _stx3300_)
        '#!void)))
  (define gxc#meta-state::t
    (make-struct-type 'gxc#meta-state::t '#f '4 'meta-state '() ':init!))
  (define gxc#meta-state? (make-struct-predicate gxc#meta-state::t))
  (define gxc#make-meta-state
    (lambda _$args3297_
      (apply make-struct-instance gxc#meta-state::t _$args3297_)))
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
    (lambda (_self3294_ _ctx3295_)
      (struct-instance-init!
       _self3294_
       (symbol->string
        (##structure-ref _ctx3295_ '1 gx#expander-context::t '#f))
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
    (lambda _$args3291_
      (apply make-struct-instance gxc#meta-state-block::t _$args3291_)))
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
    (lambda (_state3250_ _phi3251_)
      (let ((_state32523260_ _state3250_))
        (let ((_E32543264_
               (lambda () (error '"No clause matching" _state32523260_))))
          (let ((_K32553273_
                 (lambda (_open3267_ _n3268_ _src3269_)
                   (if (table-ref _open3267_ _phi3251_ '#f)
                       '#f
                       (let ((_block-ref3271_
                              (string-append
                               _src3269_
                               '"__"
                               (number->string _n3268_))))
                         (begin
                           (##structure-set!
                            _state3250_
                            (fx+ _n3268_ '1)
                            '2
                            gxc#meta-state::t
                            '#f)
                           (table-set!
                            _open3267_
                            _phi3251_
                            (##structure
                             gxc#meta-state-block::t
                             (gx#current-expander-context)
                             _phi3251_
                             _n3268_
                             '()))
                           _block-ref3271_))))))
            (if (##structure-instance-of?
                 _state32523260_
                 (##type-id gxc#meta-state::t))
                (let ((_e32563276_ (##vector-ref _state32523260_ '1)))
                  (let ((_src3279_ _e32563276_))
                    (let ((_e32573281_ (##vector-ref _state32523260_ '2)))
                      (let ((_n3284_ _e32573281_))
                        (let ((_e32583286_ (##vector-ref _state32523260_ '3)))
                          (let ((_open3289_ _e32583286_))
                            (_K32553273_ _open3289_ _n3284_ _src3279_)))))))
                (_E32543264_)))))))
  (define gxc#meta-state-add-phi!
    (lambda (_state3244_ _phi3245_ _stx3246_)
      (let ((_block3248_
             (table-ref
              (##structure-ref _state3244_ '3 gxc#meta-state::t '#f)
              _phi3245_
              '#f)))
        (##structure-set!
         _block3248_
         (cons _stx3246_
               (##structure-ref _block3248_ '4 gxc#meta-state-block::t '#f))
         '4
         gxc#meta-state-block::t
         '#f))))
  (define gxc#meta-state-end-phi!
    (lambda (_state3239_)
      (begin
        (##structure-set!
         _state3239_
         (hash-fold
          (lambda (_g10355_ _block3241_ _r3242_) (cons _block3241_ _r3242_))
          (##structure-ref _state3239_ '4 gxc#meta-state::t '#f)
          (##structure-ref _state3239_ '3 gxc#meta-state::t '#f))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _state3239_
         (make-hash-table-eq)
         '3
         gxc#meta-state::t
         '#f))))
  (define gxc#meta-state-end!
    (lambda (_state3191_)
      (begin
        (gxc#meta-state-end-phi! _state3191_)
        (foldl1 (lambda (_block3193_ _r3194_)
                  (let ((_block31953204_ _block3193_))
                    (let ((_E31973208_
                           (lambda ()
                             (error '"No clause matching" _block31953204_))))
                      (let ((_K31983216_
                             (lambda (_code3211_ _n3212_ _phi3213_ _ctx3214_)
                               (if (null? _code3211_)
                                   _r3194_
                                   (cons (cons _ctx3214_
                                               (cons _phi3213_
                                                     (cons _n3212_
                                                           (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (reverse _code3211_))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _r3194_)))))
                        (if (##structure-instance-of?
                             _block31953204_
                             (##type-id gxc#meta-state-block::t))
                            (let ((_e31993219_
                                   (##vector-ref _block31953204_ '1)))
                              (let ((_ctx3222_ _e31993219_))
                                (let ((_e32003224_
                                       (##vector-ref _block31953204_ '2)))
                                  (let ((_phi3227_ _e32003224_))
                                    (let ((_e32013229_
                                           (##vector-ref _block31953204_ '3)))
                                      (let ((_n3232_ _e32013229_))
                                        (let ((_e32023234_
                                               (##vector-ref
                                                _block31953204_
                                                '4)))
                                          (let ((_code3237_ _e32023234_))
                                            (_K31983216_
                                             _code3237_
                                             _n3232_
                                             _phi3227_
                                             _ctx3222_)))))))))
                            (_E31973208_))))))
                '()
                (##structure-ref _state3191_ '4 gxc#meta-state::t '#f)))))
  (define gxc#collect-expression-refs
    (lambda (_stx3187_)
      (let ((_ht3189_ (make-hash-table-eq)))
        (begin
          (gxc#apply-collect-expression-refs _stx3187_ _ht3189_)
          _ht3189_))))
  (define gxc#collect-refs-ref%
    (lambda (_stx3130_ _ht3131_)
      (let ((_g31333146_
             (lambda (_g31343143_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g31343143_))))
        (let ((_g31323184_
               (lambda (_g31343149_)
                 (if (gx#stx-pair? _g31343149_)
                     (let ((_e31363151_ (gx#stx-e _g31343149_)))
                       (let ((_hd31373154_ (##car _e31363151_))
                             (_tl31383156_ (##cdr _e31363151_)))
                         (if (gx#stx-pair? _tl31383156_)
                             (let ((_e31393159_ (gx#stx-e _tl31383156_)))
                               (let ((_hd31403162_ (##car _e31393159_))
                                     (_tl31413164_ (##cdr _e31393159_)))
                                 (if (gx#stx-null? _tl31413164_)
                                     ((lambda (_L3167_)
                                        (let ((_bind3179_
                                               (gx#resolve-identifier__0
                                                _L3167_)))
                                          (let ((_eid3181_
                                                 (if _bind3179_
                                                     (##structure-ref
                                                      _bind3179_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (gx#stx-e _L3167_))))
                                            (let ()
                                              (table-set!
                                               _ht3131_
                                               _eid3181_
                                               _eid3181_)))))
                                      _hd31403162_)
                                     (_g31333146_ _g31343149_))))
                             (_g31333146_ _g31343149_))))
                     (_g31333146_ _g31343149_)))))
          (_g31323184_ _stx3130_)))))
  (define gxc#collect-refs-setq%
    (lambda (_stx3057_ _ht3058_)
      (let ((_g30603077_
             (lambda (_g30613074_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g30613074_))))
        (let ((_g30593127_
               (lambda (_g30613080_)
                 (if (gx#stx-pair? _g30613080_)
                     (let ((_e30643082_ (gx#stx-e _g30613080_)))
                       (let ((_hd30653085_ (##car _e30643082_))
                             (_tl30663087_ (##cdr _e30643082_)))
                         (if (gx#stx-pair? _tl30663087_)
                             (let ((_e30673090_ (gx#stx-e _tl30663087_)))
                               (let ((_hd30683093_ (##car _e30673090_))
                                     (_tl30693095_ (##cdr _e30673090_)))
                                 (if (gx#stx-pair? _tl30693095_)
                                     (let ((_e30703098_
                                            (gx#stx-e _tl30693095_)))
                                       (let ((_hd30713101_ (##car _e30703098_))
                                             (_tl30723103_
                                              (##cdr _e30703098_)))
                                         (if (gx#stx-null? _tl30723103_)
                                             ((lambda (_L3106_ _L3107_)
                                                (let ((_bind3122_
                                                       (gx#resolve-identifier__0
                                                        _L3107_)))
                                                  (let ((_eid3124_
                                                         (if _bind3122_
                                                             (##structure-ref
                                                              _bind3122_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (gx#stx-e
                                                              _L3107_))))
                                                    (let ()
                                                      (begin
                                                        (table-set!
                                                         _ht3058_
                                                         _eid3124_
                                                         _eid3124_)
                                                        (gxc#compile-e
                                                         _L3106_
                                                         _ht3058_))))))
                                              _hd30713101_
                                              _hd30683093_)
                                             (_g30603077_ _g30613080_))))
                                     (_g30603077_ _g30613080_))))
                             (_g30603077_ _g30613080_))))
                     (_g30603077_ _g30613080_)))))
          (_g30593127_ _stx3057_)))))
  (define gxc#find-runtime-begin%
    (lambda (_stx3019_)
      (let ((_g30213031_
             (lambda (_g30223028_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g30223028_))))
        (let ((_g30203054_
               (lambda (_g30223034_)
                 (if (gx#stx-pair? _g30223034_)
                     (let ((_e30243036_ (gx#stx-e _g30223034_)))
                       (let ((_hd30253039_ (##car _e30243036_))
                             (_tl30263041_ (##cdr _e30243036_)))
                         ((lambda (_L3044_) (ormap1 gxc#compile-e _L3044_))
                          _tl30263041_)))
                     (_g30213031_ _g30223034_)))))
          (_g30203054_ _stx3019_))))))
