(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#current-compile-methods (make-parameter '#f))
  (define gxc#current-compile-lift (make-parameter '#f))
  (define gxc#compile-e
    (lambda (_stx10089_ . _args10090_)
      (let ((_g1009210102_
             (lambda (_g1009310099_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g1009310099_))))
        (let ((_g1009110130_
               (lambda (_g1009310105_)
                 (if (gx#stx-pair? _g1009310105_)
                     (let ((_e1009510107_ (gx#stx-e _g1009310105_)))
                       (let ((_hd1009610110_ (##car _e1009510107_))
                             (_tl1009710112_ (##cdr _e1009510107_)))
                         ((lambda (_L10115_)
                            (let ((_$e10125_
                                   (table-ref
                                    (gxc#current-compile-methods)
                                    (gx#stx-e _L10115_)
                                    '#f)))
                              (if _$e10125_
                                  ((lambda (_method10128_)
                                     (apply _method10128_
                                            _stx10089_
                                            _args10090_))
                                   _$e10125_)
                                  (gxc#raise-compile-error
                                   '"Cannot compile; missing method"
                                   _stx10089_
                                   _L10115_))))
                          _hd1009610110_)))
                     (_g1009210102_ _g1009310105_)))))
          (_g1009110130_ _stx10089_)))))
  (define gxc#&void-expression
    (make-promise
     (lambda ()
       (let ((_tbl10086_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl10086_ '%#lambda void)
           (table-set! _tbl10086_ '%#case-lambda void)
           (table-set! _tbl10086_ '%#let-values void)
           (table-set! _tbl10086_ '%#letrec-values void)
           (table-set! _tbl10086_ '%#letrec*-values void)
           (table-set! _tbl10086_ '%#quote void)
           (table-set! _tbl10086_ '%#quote-syntax void)
           (table-set! _tbl10086_ '%#call void)
           (table-set! _tbl10086_ '%#if void)
           (table-set! _tbl10086_ '%#ref void)
           (table-set! _tbl10086_ '%#set! void)
           (table-set! _tbl10086_ '%#struct-instance? void)
           (table-set! _tbl10086_ '%#struct-direct-instance? void)
           (table-set! _tbl10086_ '%#struct-ref void)
           (table-set! _tbl10086_ '%#struct-set! void)
           _tbl10086_)))))
  (define gxc#&void-special-form
    (make-promise
     (lambda ()
       (let ((_tbl10082_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl10082_ '%#begin void)
           (table-set! _tbl10082_ '%#begin-syntax void)
           (table-set! _tbl10082_ '%#begin-foreign void)
           (table-set! _tbl10082_ '%#module void)
           (table-set! _tbl10082_ '%#import void)
           (table-set! _tbl10082_ '%#export void)
           (table-set! _tbl10082_ '%#provide void)
           (table-set! _tbl10082_ '%#extern void)
           (table-set! _tbl10082_ '%#define-values void)
           (table-set! _tbl10082_ '%#define-syntax void)
           (table-set! _tbl10082_ '%#define-alias void)
           (table-set! _tbl10082_ '%#declare void)
           _tbl10082_)))))
  (define gxc#&void
    (make-promise
     (lambda ()
       (let ((_tbl10078_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10078_ (force gxc#&void-special-form))
           (hash-copy! _tbl10078_ (force gxc#&void-expression))
           _tbl10078_)))))
  (define gxc#&collect-bindings
    (make-promise
     (lambda ()
       (let ((_tbl10074_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10074_ (force gxc#&void-expression))
           (hash-copy! _tbl10074_ (force gxc#&void-special-form))
           (table-set! _tbl10074_ '%#begin gxc#collect-begin%)
           (table-set! _tbl10074_ '%#begin-syntax gxc#collect-begin-syntax%)
           (table-set! _tbl10074_ '%#module gxc#collect-module%)
           (table-set!
            _tbl10074_
            '%#define-values
            gxc#collect-bindings-define-values%)
           (table-set!
            _tbl10074_
            '%#define-syntax
            gxc#collect-bindings-define-syntax%)
           _tbl10074_)))))
  (define gxc#apply-collect-bindings
    (lambda (_stx10067_ . _args10069_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10067_ _args10069_))
       gxc#current-compile-methods
       (force gxc#&collect-bindings))))
  (define gxc#&lift-modules
    (make-promise
     (lambda ()
       (let ((_tbl10064_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10064_ (force gxc#&void))
           (table-set! _tbl10064_ '%#begin gxc#collect-begin%)
           (table-set! _tbl10064_ '%#module gxc#lift-modules-module%)
           _tbl10064_)))))
  (define gxc#apply-lift-modules
    (lambda (_stx10057_ . _args10059_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10057_ _args10059_))
       gxc#current-compile-methods
       (force gxc#&lift-modules))))
  (define gxc#&find-runtime-code
    (make-promise
     (lambda ()
       (let ((_tbl10054_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl10054_ '%#begin gxc#find-runtime-begin%)
           (table-set! _tbl10054_ '%#begin-syntax false)
           (table-set! _tbl10054_ '%#begin-foreign true)
           (table-set! _tbl10054_ '%#module false)
           (table-set! _tbl10054_ '%#import false)
           (table-set! _tbl10054_ '%#export false)
           (table-set! _tbl10054_ '%#provide false)
           (table-set! _tbl10054_ '%#extern false)
           (table-set! _tbl10054_ '%#define-values true)
           (table-set! _tbl10054_ '%#define-syntax false)
           (table-set! _tbl10054_ '%#define-alias false)
           (table-set! _tbl10054_ '%#declare false)
           (table-set! _tbl10054_ '%#lambda true)
           (table-set! _tbl10054_ '%#case-lambda true)
           (table-set! _tbl10054_ '%#let-values true)
           (table-set! _tbl10054_ '%#letrec-values true)
           (table-set! _tbl10054_ '%#letrec*-values true)
           (table-set! _tbl10054_ '%#quote true)
           (table-set! _tbl10054_ '%#call true)
           (table-set! _tbl10054_ '%#if true)
           (table-set! _tbl10054_ '%#ref true)
           (table-set! _tbl10054_ '%#set! true)
           (table-set! _tbl10054_ '%#struct-instance? true)
           (table-set! _tbl10054_ '%#struct-direct-instance? true)
           (table-set! _tbl10054_ '%#struct-ref true)
           (table-set! _tbl10054_ '%#struct-set! true)
           _tbl10054_)))))
  (define gxc#apply-find-runtime-code
    (lambda (_stx10047_ . _args10049_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10047_ _args10049_))
       gxc#current-compile-methods
       (force gxc#&find-runtime-code))))
  (define gxc#&generate-runtime-empty
    (make-promise
     (lambda ()
       (let ((_tbl10044_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl10044_ '%#begin gxc#generate-runtime-empty)
           (table-set! _tbl10044_ '%#begin-syntax gxc#generate-runtime-empty)
           (table-set! _tbl10044_ '%#begin-foreign gxc#generate-runtime-empty)
           (table-set! _tbl10044_ '%#module gxc#generate-runtime-empty)
           (table-set! _tbl10044_ '%#import gxc#generate-runtime-empty)
           (table-set! _tbl10044_ '%#export gxc#generate-runtime-empty)
           (table-set! _tbl10044_ '%#provide gxc#generate-runtime-empty)
           (table-set! _tbl10044_ '%#extern gxc#generate-runtime-empty)
           (table-set! _tbl10044_ '%#define-values gxc#generate-runtime-empty)
           (table-set! _tbl10044_ '%#define-syntax gxc#generate-runtime-empty)
           (table-set! _tbl10044_ '%#define-alias gxc#generate-runtime-empty)
           (table-set! _tbl10044_ '%#declare gxc#generate-runtime-empty)
           (table-set! _tbl10044_ '%#lambda gxc#generate-runtime-empty)
           (table-set! _tbl10044_ '%#case-lambda gxc#generate-runtime-empty)
           (table-set! _tbl10044_ '%#let-values gxc#generate-runtime-empty)
           (table-set! _tbl10044_ '%#letrec-values gxc#generate-runtime-empty)
           (table-set! _tbl10044_ '%#letrec*-values gxc#generate-runtime-empty)
           (table-set! _tbl10044_ '%#quote gxc#generate-runtime-empty)
           (table-set! _tbl10044_ '%#call gxc#generate-runtime-empty)
           (table-set! _tbl10044_ '%#if gxc#generate-runtime-empty)
           (table-set! _tbl10044_ '%#ref gxc#generate-runtime-empty)
           (table-set! _tbl10044_ '%#set! gxc#generate-runtime-empty)
           (table-set!
            _tbl10044_
            '%#struct-instance?
            gxc#generate-runtime-empty)
           (table-set!
            _tbl10044_
            '%#struct-direct-instance?
            gxc#generate-runtime-empty)
           (table-set! _tbl10044_ '%#struct-ref gxc#generate-runtime-empty)
           (table-set! _tbl10044_ '%#struct-set! gxc#generate-runtime-empty)
           _tbl10044_)))))
  (define gxc#&generate-loader
    (make-promise
     (lambda ()
       (let ((_tbl10040_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10040_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl10040_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl10040_
            '%#import
            gxc#generate-runtime-loader-import%)
           _tbl10040_)))))
  (define gxc#apply-generate-loader
    (lambda (_stx10033_ . _args10035_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10033_ _args10035_))
       gxc#current-compile-methods
       (force gxc#&generate-loader))))
  (define gxc#&generate-runtime
    (make-promise
     (lambda ()
       (let ((_tbl10030_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10030_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl10030_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl10030_
            '%#begin-foreign
            gxc#generate-runtime-begin-foreign%)
           (table-set!
            _tbl10030_
            '%#define-values
            gxc#generate-runtime-define-values%)
           (table-set! _tbl10030_ '%#declare gxc#generate-runtime-declare%)
           (table-set! _tbl10030_ '%#lambda gxc#generate-runtime-lambda%)
           (table-set!
            _tbl10030_
            '%#case-lambda
            gxc#generate-runtime-case-lambda%)
           (table-set!
            _tbl10030_
            '%#let-values
            gxc#generate-runtime-let-values%)
           (table-set!
            _tbl10030_
            '%#letrec-values
            gxc#generate-runtime-letrec-values%)
           (table-set!
            _tbl10030_
            '%#letrec*-values
            gxc#generate-runtime-letrec*-values%)
           (table-set! _tbl10030_ '%#quote gxc#generate-runtime-quote%)
           (table-set! _tbl10030_ '%#call gxc#generate-runtime-call%)
           (table-set! _tbl10030_ '%#if gxc#generate-runtime-if%)
           (table-set! _tbl10030_ '%#ref gxc#generate-runtime-ref%)
           (table-set! _tbl10030_ '%#set! gxc#generate-runtime-setq%)
           (table-set!
            _tbl10030_
            '%#struct-instance?
            gxc#generate-runtime-struct-instancep%)
           (table-set!
            _tbl10030_
            '%#struct-direct-instance?
            gxc#generate-runtime-struct-direct-instancep%)
           (table-set!
            _tbl10030_
            '%#struct-ref
            gxc#generate-runtime-struct-ref%)
           (table-set!
            _tbl10030_
            '%#struct-set!
            gxc#generate-runtime-struct-setq%)
           _tbl10030_)))))
  (define gxc#apply-generate-runtime
    (lambda (_stx10023_ . _args10025_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10023_ _args10025_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime))))
  (define gxc#&generate-runtime-phi
    (make-promise
     (lambda ()
       (let ((_tbl10020_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10020_ (force gxc#&generate-runtime))
           (table-set!
            _tbl10020_
            '%#quote-syntax
            gxc#generate-runtime-phi-quote-syntax%)
           (table-set!
            _tbl10020_
            '%#define-runtime
            gxc#generate-runtime-phi-define-runtime%)
           _tbl10020_)))))
  (define gxc#apply-generate-runtime-phi
    (lambda (_stx10013_ . _args10015_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10013_ _args10015_))
       gxc#current-compile-methods
       (force gxc#&generate-runtime-phi))))
  (define gxc#&collect-expression-refs
    (make-promise
     (lambda ()
       (let ((_tbl10010_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl10010_ '%#begin gxc#collect-begin%)
           (table-set! _tbl10010_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl10010_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl10010_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl10010_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl10010_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl10010_ '%#quote void)
           (table-set! _tbl10010_ '%#quote-syntax void)
           (table-set! _tbl10010_ '%#call gxc#collect-operands)
           (table-set! _tbl10010_ '%#if gxc#collect-operands)
           (table-set! _tbl10010_ '%#ref gxc#collect-refs-ref%)
           (table-set! _tbl10010_ '%#set! gxc#collect-refs-setq%)
           (table-set! _tbl10010_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl10010_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl10010_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl10010_ '%#struct-set! gxc#collect-operands)
           _tbl10010_)))))
  (define gxc#apply-collect-expression-refs
    (lambda (_stx10003_ . _args10005_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx10003_ _args10005_))
       gxc#current-compile-methods
       (force gxc#&collect-expression-refs))))
  (define gxc#&generate-meta
    (make-promise
     (lambda ()
       (let ((_tbl10000_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl10000_ (force gxc#&void-expression))
           (table-set! _tbl10000_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl10000_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set! _tbl10000_ '%#module gxc#generate-meta-module%)
           (table-set! _tbl10000_ '%#import gxc#generate-meta-import%)
           (table-set! _tbl10000_ '%#export gxc#generate-meta-export%)
           (table-set! _tbl10000_ '%#provide gxc#generate-meta-provide%)
           (table-set! _tbl10000_ '%#extern gxc#generate-meta-extern%)
           (table-set!
            _tbl10000_
            '%#define-values
            gxc#generate-meta-define-values%)
           (table-set!
            _tbl10000_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl10000_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set! _tbl10000_ '%#begin-foreign void)
           (table-set! _tbl10000_ '%#declare void)
           _tbl10000_)))))
  (define gxc#apply-generate-meta
    (lambda (_stx9993_ . _args9995_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx9993_ _args9995_))
       gxc#current-compile-methods
       (force gxc#&generate-meta))))
  (define gxc#&generate-meta-phi
    (make-promise
     (lambda ()
       (let ((_tbl9990_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl9990_ '%#begin gxc#generate-meta-begin%)
           (table-set!
            _tbl9990_
            '%#begin-syntax
            gxc#generate-meta-begin-syntax%)
           (table-set!
            _tbl9990_
            '%#define-syntax
            gxc#generate-meta-define-syntax%)
           (table-set!
            _tbl9990_
            '%#define-alias
            gxc#generate-meta-define-alias%)
           (table-set!
            _tbl9990_
            '%#define-values
            gxc#generate-meta-phi-define-values%)
           (table-set! _tbl9990_ '%#lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl9990_ '%#case-lambda gxc#generate-meta-phi-expr)
           (table-set! _tbl9990_ '%#let-values gxc#generate-meta-phi-expr)
           (table-set! _tbl9990_ '%#letrec-values gxc#generate-meta-phi-expr)
           (table-set! _tbl9990_ '%#letrec*-values gxc#generate-meta-phi-expr)
           (table-set! _tbl9990_ '%#quote gxc#generate-meta-phi-expr)
           (table-set! _tbl9990_ '%#quote-syntax gxc#generate-meta-phi-expr)
           (table-set! _tbl9990_ '%#call gxc#generate-meta-phi-expr)
           (table-set! _tbl9990_ '%#if gxc#generate-meta-phi-expr)
           (table-set! _tbl9990_ '%#ref gxc#generate-meta-phi-expr)
           (table-set! _tbl9990_ '%#set! gxc#generate-meta-phi-expr)
           (table-set!
            _tbl9990_
            '%#struct-instance?
            gxc#generate-meta-phi-expr)
           (table-set!
            _tbl9990_
            '%#struct-direct-instance?
            gxc#generate-meta-phi-expr)
           (table-set! _tbl9990_ '%#struct-ref gxc#generate-meta-phi-expr)
           (table-set! _tbl9990_ '%#struct-set! gxc#generate-meta-phi-expr)
           (table-set! _tbl9990_ '%#declare void)
           _tbl9990_)))))
  (define gxc#apply-generate-meta-phi
    (lambda (_stx9983_ . _args9985_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx9983_ _args9985_))
       gxc#current-compile-methods
       (force gxc#&generate-meta-phi))))
  (define gxc#collect-begin%
    (lambda (_stx9940_ . _args9941_)
      (let ((_g99439953_
             (lambda (_g99449950_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g99449950_))))
        (let ((_g99429980_
               (lambda (_g99449956_)
                 (if (gx#stx-pair? _g99449956_)
                     (let ((_e99469958_ (gx#stx-e _g99449956_)))
                       (let ((_hd99479961_ (##car _e99469958_))
                             (_tl99489963_ (##cdr _e99469958_)))
                         ((lambda (_L9966_)
                            (for-each
                             (lambda (_g99759977_)
                               (apply gxc#compile-e _g99759977_ _args9941_))
                             (gx#stx-e _L9966_)))
                          _tl99489963_)))
                     (_g99439953_ _g99449956_)))))
          (_g99429980_ _stx9940_)))))
  (define gxc#collect-begin-syntax%
    (lambda (_stx9896_ . _args9897_)
      (let ((_g98999909_
             (lambda (_g99009906_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g99009906_))))
        (let ((_g98989937_
               (lambda (_g99009912_)
                 (if (gx#stx-pair? _g99009912_)
                     (let ((_e99029914_ (gx#stx-e _g99009912_)))
                       (let ((_hd99039917_ (##car _e99029914_))
                             (_tl99049919_ (##cdr _e99029914_)))
                         ((lambda (_L9922_)
                            (call-with-parameters
                             (lambda ()
                               (for-each
                                (lambda (_g99329934_)
                                  (apply gxc#compile-e _g99329934_ _args9897_))
                                (gx#stx-e _L9922_)))
                             gx#current-expander-phi
                             (fx+ (gx#current-expander-phi) '1)))
                          _tl99049919_)))
                     (_g98999909_ _g99009912_)))))
          (_g98989937_ _stx9896_)))))
  (define gxc#collect-module%
    (lambda (_stx9838_ . _args9839_)
      (let ((_g98419855_
             (lambda (_g98429852_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g98429852_))))
        (let ((_g98409893_
               (lambda (_g98429858_)
                 (if (gx#stx-pair? _g98429858_)
                     (let ((_e98459860_ (gx#stx-e _g98429858_)))
                       (let ((_hd98469863_ (##car _e98459860_))
                             (_tl98479865_ (##cdr _e98459860_)))
                         (if (gx#stx-pair? _tl98479865_)
                             (let ((_e98489868_ (gx#stx-e _tl98479865_)))
                               (let ((_hd98499871_ (##car _e98489868_))
                                     (_tl98509873_ (##cdr _e98489868_)))
                                 ((lambda (_L9876_ _L9877_)
                                    (let ((_ctx9890_
                                           (gx#syntax-local-e__0 _L9877_)))
                                      (call-with-parameters
                                       (lambda ()
                                         (apply gxc#compile-e
                                                (##structure-ref
                                                 _ctx9890_
                                                 '11
                                                 gx#module-context::t
                                                 '#f)
                                                _args9839_))
                                       gx#current-expander-context
                                       _ctx9890_)))
                                  _tl98509873_
                                  _hd98499871_)))
                             (_g98419855_ _g98429858_))))
                     (_g98419855_ _g98429858_)))))
          (_g98409893_ _stx9838_)))))
  (define gxc#collect-body-lambda%
    (lambda (_stx9770_ . _args9771_)
      (let ((_g97739790_
             (lambda (_g97749787_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g97749787_))))
        (let ((_g97729835_
               (lambda (_g97749793_)
                 (if (gx#stx-pair? _g97749793_)
                     (let ((_e97779795_ (gx#stx-e _g97749793_)))
                       (let ((_hd97789798_ (##car _e97779795_))
                             (_tl97799800_ (##cdr _e97779795_)))
                         (if (gx#stx-pair? _tl97799800_)
                             (let ((_e97809803_ (gx#stx-e _tl97799800_)))
                               (let ((_hd97819806_ (##car _e97809803_))
                                     (_tl97829808_ (##cdr _e97809803_)))
                                 (if (gx#stx-pair? _tl97829808_)
                                     (let ((_e97839811_
                                            (gx#stx-e _tl97829808_)))
                                       (let ((_hd97849814_ (##car _e97839811_))
                                             (_tl97859816_
                                              (##cdr _e97839811_)))
                                         (if (gx#stx-null? _tl97859816_)
                                             ((lambda (_L9819_ _L9820_)
                                                (apply gxc#compile-e
                                                       _L9819_
                                                       _args9771_))
                                              _hd97849814_
                                              _hd97819806_)
                                             (_g97739790_ _g97749793_))))
                                     (_g97739790_ _g97749793_))))
                             (_g97739790_ _g97749793_))))
                     (_g97739790_ _g97749793_)))))
          (_g97729835_ _stx9770_)))))
  (define gxc#collect-body-case-lambda%
    (lambda (_stx9652_ . _args9653_)
      (let ((_g96559683_
             (lambda (_g96569680_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g96569680_))))
        (let ((_g96549767_
               (lambda (_g96569686_)
                 (if (gx#stx-pair? _g96569686_)
                     (let ((_e96599688_ (gx#stx-e _g96569686_)))
                       (let ((_hd96609691_ (##car _e96599688_))
                             (_tl96619693_ (##cdr _e96599688_)))
                         (if (gx#stx-pair/null? _tl96619693_)
                             (if (fx>= (gx#stx-length _tl96619693_) '0)
                                 (let ((_g10132_
                                        (gx#syntax-split-splice
                                         _tl96619693_
                                         '0)))
                                   (begin
                                     (let ((_g10133_ (values-count _g10132_)))
                                       (if (not (fx= _g10133_ 2))
                                           (error "Context expects 2 values"
                                                  _g10133_)))
                                     (let ((_target96629696_
                                            (values-ref _g10132_ 0))
                                           (_tl96649698_
                                            (values-ref _g10132_ 1)))
                                       (if (gx#stx-null? _tl96649698_)
                                           (letrec ((_loop96659701_
                                                     (lambda (_hd96639704_
                                                              _body96699706_
                                                              _hd96709708_)
                                                       (if (gx#stx-pair?
                                                            _hd96639704_)
                                                           (let ((_e96669711_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd96639704_)))
                     (let ((_lp-hd96679714_ (##car _e96669711_))
                           (_lp-tl96689716_ (##cdr _e96669711_)))
                       (if (gx#stx-pair? _lp-hd96679714_)
                           (let ((_e96739719_ (gx#stx-e _lp-hd96679714_)))
                             (let ((_hd96749722_ (##car _e96739719_))
                                   (_tl96759724_ (##cdr _e96739719_)))
                               (if (gx#stx-pair? _tl96759724_)
                                   (let ((_e96769727_ (gx#stx-e _tl96759724_)))
                                     (let ((_hd96779730_ (##car _e96769727_))
                                           (_tl96789732_ (##cdr _e96769727_)))
                                       (if (gx#stx-null? _tl96789732_)
                                           (_loop96659701_
                                            _lp-tl96689716_
                                            (cons _hd96779730_ _body96699706_)
                                            (cons _hd96749722_ _hd96709708_))
                                           (_g96559683_ _g96569686_))))
                                   (_g96559683_ _g96569686_))))
                           (_g96559683_ _g96569686_))))
                   (let ((_body96719735_ (reverse _body96699706_))
                         (_hd96729737_ (reverse _hd96709708_)))
                     ((lambda (_L9740_ _L9741_)
                        (for-each
                         (lambda (_g97559757_)
                           (apply gxc#compile-e _g97559757_ _args9653_))
                         (begin
                           '#!void
                           (foldr1 (lambda (_g97599762_ _g97609764_)
                                     (cons _g97599762_ _g97609764_))
                                   '()
                                   _L9740_))))
                      _body96719735_
                      _hd96729737_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop96659701_
                                              _target96629696_
                                              '()
                                              '()))
                                           (_g96559683_ _g96569686_)))))
                                 (_g96559683_ _g96569686_))
                             (_g96559683_ _g96569686_))))
                     (_g96559683_ _g96569686_)))))
          (_g96549767_ _stx9652_)))))
  (define gxc#collect-body-let-values%
    (lambda (_stx9505_ . _args9506_)
      (let ((_g95089543_
             (lambda (_g95099540_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g95099540_))))
        (let ((_g95079649_
               (lambda (_g95099546_)
                 (if (gx#stx-pair? _g95099546_)
                     (let ((_e95139548_ (gx#stx-e _g95099546_)))
                       (let ((_hd95149551_ (##car _e95139548_))
                             (_tl95159553_ (##cdr _e95139548_)))
                         (if (gx#stx-pair? _tl95159553_)
                             (let ((_e95169556_ (gx#stx-e _tl95159553_)))
                               (let ((_hd95179559_ (##car _e95169556_))
                                     (_tl95189561_ (##cdr _e95169556_)))
                                 (if (gx#stx-pair/null? _hd95179559_)
                                     (if (fx>= (gx#stx-length _hd95179559_) '0)
                                         (let ((_g10134_
                                                (gx#syntax-split-splice
                                                 _hd95179559_
                                                 '0)))
                                           (begin
                                             (let ((_g10135_
                                                    (values-count _g10134_)))
                                               (if (not (fx= _g10135_ 2))
                                                   (error "Context expects 2 values"
                                                          _g10135_)))
                                             (let ((_target95199564_
                                                    (values-ref _g10134_ 0))
                                                   (_tl95219566_
                                                    (values-ref _g10134_ 1)))
                                               (if (gx#stx-null? _tl95219566_)
                                                   (letrec ((_loop95229569_
                                                             (lambda (_hd95209572_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr95269574_
                              _hd95279576_)
                       (if (gx#stx-pair? _hd95209572_)
                           (let ((_e95239579_ (gx#stx-e _hd95209572_)))
                             (let ((_lp-hd95249582_ (##car _e95239579_))
                                   (_lp-tl95259584_ (##cdr _e95239579_)))
                               (if (gx#stx-pair? _lp-hd95249582_)
                                   (let ((_e95309587_
                                          (gx#stx-e _lp-hd95249582_)))
                                     (let ((_hd95319590_ (##car _e95309587_))
                                           (_tl95329592_ (##cdr _e95309587_)))
                                       (if (gx#stx-pair? _tl95329592_)
                                           (let ((_e95339595_
                                                  (gx#stx-e _tl95329592_)))
                                             (let ((_hd95349598_
                                                    (##car _e95339595_))
                                                   (_tl95359600_
                                                    (##cdr _e95339595_)))
                                               (if (gx#stx-null? _tl95359600_)
                                                   (_loop95229569_
                                                    _lp-tl95259584_
                                                    (cons _hd95349598_
                                                          _expr95269574_)
                                                    (cons _hd95319590_
                                                          _hd95279576_))
                                                   (_g95089543_ _g95099546_))))
                                           (_g95089543_ _g95099546_))))
                                   (_g95089543_ _g95099546_))))
                           (let ((_expr95289603_ (reverse _expr95269574_))
                                 (_hd95299605_ (reverse _hd95279576_)))
                             (if (gx#stx-pair? _tl95189561_)
                                 (let ((_e95369608_ (gx#stx-e _tl95189561_)))
                                   (let ((_hd95379611_ (##car _e95369608_))
                                         (_tl95389613_ (##cdr _e95369608_)))
                                     (if (gx#stx-null? _tl95389613_)
                                         ((lambda (_L9616_ _L9617_ _L9618_)
                                            (for-each
                                             (lambda (_g96379639_)
                                               (apply gxc#compile-e
                                                      _g96379639_
                                                      _args9506_))
                                             (begin
                                               '#!void
                                               (foldr1 (lambda (_g96419644_
                                                                _g96429646_)
                                                         (cons _g96419644_
                                                               _g96429646_))
                                                       (cons _L9616_ '())
                                                       _L9617_))))
                                          _hd95379611_
                                          _expr95289603_
                                          _hd95299605_)
                                         (_g95089543_ _g95099546_))))
                                 (_g95089543_ _g95099546_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop95229569_
                                                      _target95199564_
                                                      '()
                                                      '()))
                                                   (_g95089543_
                                                    _g95099546_)))))
                                         (_g95089543_ _g95099546_))
                                     (_g95089543_ _g95099546_))))
                             (_g95089543_ _g95099546_))))
                     (_g95089543_ _g95099546_)))))
          (_g95079649_ _stx9505_)))))
  (define gxc#collect-body-setq%
    (lambda (_stx9437_ . _args9438_)
      (let ((_g94409457_
             (lambda (_g94419454_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g94419454_))))
        (let ((_g94399502_
               (lambda (_g94419460_)
                 (if (gx#stx-pair? _g94419460_)
                     (let ((_e94449462_ (gx#stx-e _g94419460_)))
                       (let ((_hd94459465_ (##car _e94449462_))
                             (_tl94469467_ (##cdr _e94449462_)))
                         (if (gx#stx-pair? _tl94469467_)
                             (let ((_e94479470_ (gx#stx-e _tl94469467_)))
                               (let ((_hd94489473_ (##car _e94479470_))
                                     (_tl94499475_ (##cdr _e94479470_)))
                                 (if (gx#stx-pair? _tl94499475_)
                                     (let ((_e94509478_
                                            (gx#stx-e _tl94499475_)))
                                       (let ((_hd94519481_ (##car _e94509478_))
                                             (_tl94529483_
                                              (##cdr _e94509478_)))
                                         (if (gx#stx-null? _tl94529483_)
                                             ((lambda (_L9486_ _L9487_)
                                                (apply gxc#compile-e
                                                       _L9486_
                                                       _args9438_))
                                              _hd94519481_
                                              _hd94489473_)
                                             (_g94409457_ _g94419460_))))
                                     (_g94409457_ _g94419460_))))
                             (_g94409457_ _g94419460_))))
                     (_g94409457_ _g94419460_)))))
          (_g94399502_ _stx9437_)))))
  (define gxc#collect-operands
    (lambda (_stx9350_ . _args9351_)
      (let ((_g93539372_
             (lambda (_g93549369_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g93549369_))))
        (let ((_g93529434_
               (lambda (_g93549375_)
                 (if (gx#stx-pair? _g93549375_)
                     (let ((_e93569377_ (gx#stx-e _g93549375_)))
                       (let ((_hd93579380_ (##car _e93569377_))
                             (_tl93589382_ (##cdr _e93569377_)))
                         (if (gx#stx-pair/null? _tl93589382_)
                             (if (fx>= (gx#stx-length _tl93589382_) '0)
                                 (let ((_g10136_
                                        (gx#syntax-split-splice
                                         _tl93589382_
                                         '0)))
                                   (begin
                                     (let ((_g10137_ (values-count _g10136_)))
                                       (if (not (fx= _g10137_ 2))
                                           (error "Context expects 2 values"
                                                  _g10137_)))
                                     (let ((_target93599385_
                                            (values-ref _g10136_ 0))
                                           (_tl93619387_
                                            (values-ref _g10136_ 1)))
                                       (if (gx#stx-null? _tl93619387_)
                                           (letrec ((_loop93629390_
                                                     (lambda (_hd93609393_
                                                              _rands93669395_)
                                                       (if (gx#stx-pair?
                                                            _hd93609393_)
                                                           (let ((_e93639398_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd93609393_)))
                     (let ((_lp-hd93649401_ (##car _e93639398_))
                           (_lp-tl93659403_ (##cdr _e93639398_)))
                       (_loop93629390_
                        _lp-tl93659403_
                        (cons _lp-hd93649401_ _rands93669395_))))
                   (let ((_rands93679406_ (reverse _rands93669395_)))
                     ((lambda (_L9409_)
                        (for-each
                         (lambda (_g94229424_)
                           (apply gxc#compile-e _g94229424_ _args9351_))
                         (begin
                           '#!void
                           (foldr1 (lambda (_g94269429_ _g94279431_)
                                     (cons _g94269429_ _g94279431_))
                                   '()
                                   _L9409_))))
                      _rands93679406_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop93629390_
                                              _target93599385_
                                              '()))
                                           (_g93539372_ _g93549375_)))))
                                 (_g93539372_ _g93549375_))
                             (_g93539372_ _g93549375_))))
                     (_g93539372_ _g93549375_)))))
          (_g93529434_ _stx9350_)))))
  (define gxc#collect-bindings-define-values%
    (lambda (_stx9281_)
      (let ((_g92839300_
             (lambda (_g92849297_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g92849297_))))
        (let ((_g92829347_
               (lambda (_g92849303_)
                 (if (gx#stx-pair? _g92849303_)
                     (let ((_e92879305_ (gx#stx-e _g92849303_)))
                       (let ((_hd92889308_ (##car _e92879305_))
                             (_tl92899310_ (##cdr _e92879305_)))
                         (if (gx#stx-pair? _tl92899310_)
                             (let ((_e92909313_ (gx#stx-e _tl92899310_)))
                               (let ((_hd92919316_ (##car _e92909313_))
                                     (_tl92929318_ (##cdr _e92909313_)))
                                 (if (gx#stx-pair? _tl92929318_)
                                     (let ((_e92939321_
                                            (gx#stx-e _tl92929318_)))
                                       (let ((_hd92949324_ (##car _e92939321_))
                                             (_tl92959326_
                                              (##cdr _e92939321_)))
                                         (if (gx#stx-null? _tl92959326_)
                                             ((lambda (_L9329_ _L9330_)
                                                (gx#stx-for-each1
                                                 (lambda (_bind9345_)
                                                   (if (gx#identifier?
                                                        _bind9345_)
                                                       (gxc#add-module-binding!
                                                        _bind9345_
                                                        '#f)
                                                       '#!void))
                                                 _L9330_))
                                              _hd92949324_
                                              _hd92919316_)
                                             (_g92839300_ _g92849303_))))
                                     (_g92839300_ _g92849303_))))
                             (_g92839300_ _g92849303_))))
                     (_g92839300_ _g92849303_)))))
          (_g92829347_ _stx9281_)))))
  (define gxc#collect-bindings-define-syntax%
    (lambda (_stx9214_)
      (let ((_g92169233_
             (lambda (_g92179230_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g92179230_))))
        (let ((_g92159278_
               (lambda (_g92179236_)
                 (if (gx#stx-pair? _g92179236_)
                     (let ((_e92209238_ (gx#stx-e _g92179236_)))
                       (let ((_hd92219241_ (##car _e92209238_))
                             (_tl92229243_ (##cdr _e92209238_)))
                         (if (gx#stx-pair? _tl92229243_)
                             (let ((_e92239246_ (gx#stx-e _tl92229243_)))
                               (let ((_hd92249249_ (##car _e92239246_))
                                     (_tl92259251_ (##cdr _e92239246_)))
                                 (if (gx#stx-pair? _tl92259251_)
                                     (let ((_e92269254_
                                            (gx#stx-e _tl92259251_)))
                                       (let ((_hd92279257_ (##car _e92269254_))
                                             (_tl92289259_
                                              (##cdr _e92269254_)))
                                         (if (gx#stx-null? _tl92289259_)
                                             ((lambda (_L9262_ _L9263_)
                                                (gxc#add-module-binding!
                                                 _L9263_
                                                 '#t))
                                              _hd92279257_
                                              _hd92249249_)
                                             (_g92169233_ _g92179236_))))
                                     (_g92169233_ _g92179236_))))
                             (_g92169233_ _g92179236_))))
                     (_g92169233_ _g92179236_)))))
          (_g92159278_ _stx9214_)))))
  (define gxc#lift-modules-module%
    (lambda (_stx9156_ _modules9157_)
      (let ((_g91599173_
             (lambda (_g91609170_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g91609170_))))
        (let ((_g91589211_
               (lambda (_g91609176_)
                 (if (gx#stx-pair? _g91609176_)
                     (let ((_e91639178_ (gx#stx-e _g91609176_)))
                       (let ((_hd91649181_ (##car _e91639178_))
                             (_tl91659183_ (##cdr _e91639178_)))
                         (if (gx#stx-pair? _tl91659183_)
                             (let ((_e91669186_ (gx#stx-e _tl91659183_)))
                               (let ((_hd91679189_ (##car _e91669186_))
                                     (_tl91689191_ (##cdr _e91669186_)))
                                 ((lambda (_L9194_ _L9195_)
                                    (let ((_ctx9208_
                                           (gx#syntax-local-e__0 _L9195_)))
                                      (begin
                                        (set-box!
                                         _modules9157_
                                         (cons _ctx9208_
                                               (unbox _modules9157_)))
                                        (call-with-parameters
                                         (lambda ()
                                           (gxc#compile-e
                                            (##structure-ref
                                             _ctx9208_
                                             '11
                                             gx#module-context::t
                                             '#f)
                                            _modules9157_))
                                         gx#current-expander-context
                                         _ctx9208_))))
                                  _tl91689191_
                                  _hd91679189_)))
                             (_g91599173_ _g91609176_))))
                     (_g91599173_ _g91609176_)))))
          (_g91589211_ _stx9156_)))))
  (define gxc#add-module-binding!
    (lambda (_id9150_ _syntax?9151_)
      (let ((_eid9153_
             (##structure-ref
              (gx#resolve-identifier__0 _id9150_)
              '1
              gx#binding::t
              '#f))
            (_ht9154_
             (##structure-ref
              (gxc#current-compile-symbol-table)
              '2
              gxc#symbol-table::t
              '#f)))
        (if (interned-symbol? _eid9153_)
            '#!void
            (table-set!
             _ht9154_
             _eid9153_
             (gx#make-binding-id__1
              (gxc#generate-runtime-gensym-reference__0 _eid9153_)
              _syntax?9151_))))))
  (define gxc#generate-runtime-binding-id
    (lambda (_id9131_)
      (let ((_bind9133_ (gx#resolve-identifier__0 _id9131_)))
        (if _bind9133_
            (let ((_eid9135_ (##structure-ref _bind9133_ '1 gx#binding::t '#f))
                  (_ht9136_
                   (##structure-ref
                    (gxc#current-compile-symbol-table)
                    '2
                    gxc#symbol-table::t
                    '#f)))
              (if (interned-symbol? _eid9135_)
                  _eid9135_
                  (let ((_$e9138_ (table-ref _ht9136_ _eid9135_ '#f)))
                    (if _$e9138_
                        (values _$e9138_)
                        (if (##structure-instance-of?
                             _bind9133_
                             'gx#local-binding::t)
                            (let ((_gid9141_
                                   (gxc#generate-runtime-gensym-reference__0
                                    _eid9135_)))
                              (begin
                                (table-set! _ht9136_ _eid9135_ _gid9141_)
                                _gid9141_))
                            (if (##structure-instance-of?
                                 _bind9133_
                                 'gx#module-binding::t)
                                (let ((_gid9148_
                                       (let ((_$e9143_
                                              (##structure-ref
                                               (##structure-ref
                                                _bind9133_
                                                '4
                                                gx#module-binding::t
                                                '#f)
                                               '6
                                               gx#module-context::t
                                               '#f)))
                                         (if _$e9143_
                                             ((lambda (_ns9146_)
                                                (make-symbol
                                                 _ns9146_
                                                 '"#"
                                                 _eid9135_))
                                              _$e9143_)
                                             (gxc#generate-runtime-gensym-reference__0
                                              _eid9135_)))))
                                  (begin
                                    (table-set! _ht9136_ _eid9135_ _gid9148_)
                                    _gid9148_))
                                (gxc#raise-compile-error
                                 '"Cannot compile reference to uninterned binding"
                                 _id9131_
                                 _eid9135_
                                 _bind9133_)))))))
            (if (interned-symbol? (gx#stx-e _id9131_))
                (gx#stx-e _id9131_)
                (gxc#raise-compile-error
                 '"Cannot compile reference to uninterned identifier"
                 _id9131_))))))
  (define gxc#generate-runtime-binding-id*
    (lambda (_id9129_)
      (if (gx#identifier? _id9129_)
          (gxc#generate-runtime-binding-id _id9129_)
          (gxc#generate-runtime-temporary__0))))
  (begin
    (define gxc#generate-runtime-gensym-reference__opt-lambda9107
      (lambda (_sym9109_ _quote?9110_)
        (let ((_ht9112_
               (##structure-ref
                (gxc#current-compile-symbol-table)
                '1
                gxc#symbol-table::t
                '#f)))
          (let ((_$e9114_ (table-ref _ht9112_ _sym9109_ '#f)))
            (if _$e9114_
                (values _$e9114_)
                (let ((_g9117_ (if _quote?9110_
                                   (make-symbol
                                    '"__"
                                    _sym9109_
                                    '"__"
                                    (gxc#current-compile-timestamp))
                                   (make-symbol '"_" _sym9109_ '"_"))))
                  (begin (table-set! _ht9112_ _sym9109_ _g9117_) _g9117_)))))))
    (begin
      (define gxc#generate-runtime-gensym-reference__0
        (lambda (_sym9122_)
          (let ((_quote?9124_ '#f))
            (gxc#generate-runtime-gensym-reference__opt-lambda9107
             _sym9122_
             _quote?9124_))))
      (define gxc#generate-runtime-gensym-reference
        (lambda _g10139_
          (let ((_g10138_ (length _g10139_)))
            (cond ((fx= _g10138_ 1)
                   (apply gxc#generate-runtime-gensym-reference__0 _g10139_))
                  ((fx= _g10138_ 2)
                   (apply gxc#generate-runtime-gensym-reference__opt-lambda9107
                          _g10139_))
                  (else (error "No clause matching arguments" _g10139_))))))))
  (define gxc#generate-runtime-identifier
    (lambda (_id9106_)
      (gxc#generate-runtime-identifier-key (gx#core-identifier-key _id9106_))))
  (define gxc#generate-runtime-identifier-key
    (lambda (_key9068_)
      (if (interned-symbol? _key9068_)
          _key9068_
          (if (uninterned-symbol? _key9068_)
              (gxc#generate-runtime-gensym-reference__0 _key9068_)
              (let ((_key90699076_ _key9068_))
                (let ((_E90719080_
                       (lambda ()
                         (error '"No clause matching" _key90699076_))))
                  (let ((_K90729094_
                         (lambda (_mark9083_ _eid9084_)
                           (let ((_$e9086_
                                  (##structure-ref
                                   _mark9083_
                                   '1
                                   gx#expander-mark::t
                                   '#f)))
                             (if _$e9086_
                                 ((lambda (_ht9089_)
                                    (let ((_$e9091_
                                           (table-ref _ht9089_ _eid9084_ '#f)))
                                      (if _$e9091_
                                          (values _$e9091_)
                                          (gxc#generate-runtime-identifier-key
                                           _eid9084_))))
                                  _$e9086_)
                                 (gxc#generate-runtime-identifier-key
                                  _eid9084_))))))
                    (if (##pair? _key90699076_)
                        (let ((_hd90739097_ (##car _key90699076_))
                              (_tl90749099_ (##cdr _key90699076_)))
                          (let ((_eid9102_ _hd90739097_))
                            (let ((_mark9104_ _tl90749099_))
                              (_K90729094_ _mark9104_ _eid9102_))))
                        (_E90719080_)))))))))
  (begin
    (define gxc#generate-runtime-temporary__opt-lambda9053
      (lambda (_top9055_)
        (if _top9055_
            (let ((_ns9057_
                   (##structure-ref
                    (gx#current-expander-context)
                    '6
                    gx#module-context::t
                    '#f))
                  (_phi9058_ (gx#current-expander-phi)))
              (if (fxpositive? _phi9058_)
                  (make-symbol
                   _ns9057_
                   '"["
                   (number->string _phi9058_)
                   '"]#_"
                   (gensym)
                   '"_")
                  (make-symbol _ns9057_ '"#_" (gensym) '"_")))
            (make-symbol '"_" (gensym) '"_"))))
    (begin
      (define gxc#generate-runtime-temporary__0
        (lambda ()
          (let ((_top9064_ '#f))
            (gxc#generate-runtime-temporary__opt-lambda9053 _top9064_))))
      (define gxc#generate-runtime-temporary
        (lambda _g10141_
          (let ((_g10140_ (length _g10141_)))
            (cond ((fx= _g10140_ 0)
                   (apply gxc#generate-runtime-temporary__0 _g10141_))
                  ((fx= _g10140_ 1)
                   (apply gxc#generate-runtime-temporary__opt-lambda9053
                          _g10141_))
                  (else (error "No clause matching arguments" _g10141_))))))))
  (define gxc#generate-runtime-empty (lambda (_stx9052_) '(begin)))
  (define gxc#generate-runtime-begin%
    (lambda (_stx8972_)
      (let ((_g89748984_
             (lambda (_g89758981_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g89758981_))))
        (let ((_g89739049_
               (lambda (_g89758987_)
                 (if (gx#stx-pair? _g89758987_)
                     (let ((_e89778989_ (gx#stx-e _g89758987_)))
                       (let ((_hd89788992_ (##car _e89778989_))
                             (_tl89798994_ (##cdr _e89778989_)))
                         ((lambda (_L8997_)
                            (let ((_body9007_
                                   (gx#stx-map1 gxc#compile-e _L8997_)))
                              (let ((_body9046_
                                     (filter (lambda (_stx9009_)
                                               (let ((_g90129021_
                                                      (lambda (_g90139018_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g90139018_))))
                                                 (let ((_g90119028_
                                                        (lambda (_g90139024_)
                                                          ((lambda () '#t)))))
                                                   (let ((_g90109043_
                                                          (lambda (_g90139031_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g90139031_)
                        (let ((_e90149033_ (gx#stx-e _g90139031_)))
                          (let ((_hd90159036_ (##car _e90149033_))
                                (_tl90169038_ (##cdr _e90149033_)))
                            (if (gx#identifier? _hd90159036_)
                                (if (gx#stx-eq? 'begin _hd90159036_)
                                    (if (gx#stx-null? _tl90169038_)
                                        ((lambda () '#f))
                                        (_g90119028_ _g90139031_))
                                    (_g90119028_ _g90139031_))
                                (_g90119028_ _g90139031_))))
                        (_g90119028_ _g90139031_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g90109043_
                                                      _stx9009_)))))
                                             _body9007_)))
                                (let ()
                                  (if (fx= (length _body9046_) '1)
                                      (car _body9046_)
                                      (cons 'begin _body9046_))))))
                          _tl89798994_)))
                     (_g89748984_ _g89758987_)))))
          (_g89739049_ _stx8972_)))))
  (define gxc#generate-runtime-begin-foreign%
    (lambda (_stx8934_)
      (let ((_g89368946_
             (lambda (_g89378943_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g89378943_))))
        (let ((_g89358969_
               (lambda (_g89378949_)
                 (if (gx#stx-pair? _g89378949_)
                     (let ((_e89398951_ (gx#stx-e _g89378949_)))
                       (let ((_hd89408954_ (##car _e89398951_))
                             (_tl89418956_ (##cdr _e89398951_)))
                         ((lambda (_L8959_)
                            (cons 'begin (gx#syntax->datum _L8959_)))
                          _tl89418956_)))
                     (_g89368946_ _g89378949_)))))
          (_g89358969_ _stx8934_)))))
  (define gxc#generate-runtime-declare%
    (lambda (_stx8896_)
      (let ((_g88988908_
             (lambda (_g88998905_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g88998905_))))
        (let ((_g88978931_
               (lambda (_g88998911_)
                 (if (gx#stx-pair? _g88998911_)
                     (let ((_e89018913_ (gx#stx-e _g88998911_)))
                       (let ((_hd89028916_ (##car _e89018913_))
                             (_tl89038918_ (##cdr _e89018913_)))
                         ((lambda (_L8921_)
                            (cons 'declare (map gx#syntax->datum _L8921_)))
                          _tl89038918_)))
                     (_g88988908_ _g88998911_)))))
          (_g88978931_ _stx8896_)))))
  (define gxc#generate-runtime-define-values%
    (lambda (_stx8660_)
      (let ((_g86628679_
             (lambda (_g86638676_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g86638676_))))
        (let ((_g86618893_
               (lambda (_g86638682_)
                 (if (gx#stx-pair? _g86638682_)
                     (let ((_e86668684_ (gx#stx-e _g86638682_)))
                       (let ((_hd86678687_ (##car _e86668684_))
                             (_tl86688689_ (##cdr _e86668684_)))
                         (if (gx#stx-pair? _tl86688689_)
                             (let ((_e86698692_ (gx#stx-e _tl86688689_)))
                               (let ((_hd86708695_ (##car _e86698692_))
                                     (_tl86718697_ (##cdr _e86698692_)))
                                 (if (gx#stx-pair? _tl86718697_)
                                     (let ((_e86728700_
                                            (gx#stx-e _tl86718697_)))
                                       (let ((_hd86738703_ (##car _e86728700_))
                                             (_tl86748705_
                                              (##cdr _e86728700_)))
                                         (if (gx#stx-null? _tl86748705_)
                                             ((lambda (_L8708_ _L8709_)
                                                (let ((_g87268739_
                                                       (lambda (_g87278736_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g87278736_))))
                                                  (let ((_g87258853_
                                                         (lambda (_g87278742_)
                                                           ((lambda ()
                                                              (let ((_tmp8746_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gxc#generate-runtime-temporary__opt-lambda9053
                              '#t)))
                        (let ((_body8850_
                               ((letrec ((_lp8748_
                                          (lambda (_rest8750_ _k8751_ _r8752_)
                                            (let ((_g87578773_
                                                   (lambda (_g87588770_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g87588770_))))
                                              (let ((_g87568780_
                                                     (lambda (_g87588776_)
                                                       ((lambda ()
                                                          (reverse _r8752_))))))
                                                (let ((_g87558801_
                                                       (lambda (_g87588783_)
                                                         ((lambda (_L8785_)
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L8785_)
                        (foldl1 cons
                                (cons (cons 'define
                                            (cons (gxc#generate-runtime-binding-id
                                                   _L8785_)
                                                  (cons (cons 'values->list
                                                              (cons _tmp8746_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _k8751_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())
                                _r8752_)
                        (_g87568780_ _g87588783_)))
                  _g87588783_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g87548825_
                                                         (lambda (_g87588804_)
                                                           (if (gx#stx-pair?
                                                                _g87588804_)
                                                               (let ((_e87658806_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _g87588804_)))
                         (let ((_hd87668809_ (##car _e87658806_))
                               (_tl87678811_ (##cdr _e87658806_)))
                           ((lambda (_L8814_ _L8815_)
                              (_lp8748_
                               _L8814_
                               (fx+ _k8751_ '1)
                               (cons (cons 'define
                                           (cons (gxc#generate-runtime-binding-id
                                                  _L8815_)
                                                 (cons (cons 'values-ref
                                                             (cons _tmp8746_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _k8751_ '())))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _r8752_)))
                            _tl87678811_
                            _hd87668809_)))
                       (_g87558801_ _g87588804_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g87538847_
                                                           (lambda (_g87588828_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g87588828_)
                         (let ((_e87608830_ (gx#stx-e _g87588828_)))
                           (let ((_hd87618833_ (##car _e87608830_))
                                 (_tl87628835_ (##cdr _e87608830_)))
                             (if (gx#stx-datum? _hd87618833_)
                                 (if (equal? (gx#stx-e _hd87618833_) '#f)
                                     ((lambda (_L8838_)
                                        (_lp8748_
                                         _L8838_
                                         (fx+ _k8751_ '1)
                                         _r8752_))
                                      _tl87628835_)
                                     (_g87548825_ _g87588828_))
                                 (_g87548825_ _g87588828_))))
                         (_g87548825_ _g87588828_)))))
              (_g87538847_ _rest8750_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _lp8748_)
                                _L8709_
                                '0
                                '())))
                          (let ()
                            (cons 'begin
                                  (cons (cons 'define
                                              (cons _tmp8746_
                                                    (cons (gxc#compile-e
                                                           _L8708_)
                                                          '())))
                                        (cons (gxc#generate-runtime-check-values
                                               _tmp8746_
                                               _L8709_)
                                              _body8850_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g87248875_
                                                           (lambda (_g87278856_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g87278856_)
                         (let ((_e87328858_ (gx#stx-e _g87278856_)))
                           (let ((_hd87338861_ (##car _e87328858_))
                                 (_tl87348863_ (##cdr _e87328858_)))
                             (if (gx#stx-null? _tl87348863_)
                                 ((lambda (_L8866_)
                                    (cons 'define
                                          (cons (gxc#generate-runtime-binding-id
                                                 _L8866_)
                                                (cons (gxc#compile-e _L8708_)
                                                      '()))))
                                  _hd87338861_)
                                 (_g87258853_ _g87278856_))))
                         (_g87258853_ _g87278856_)))))
              (let ((_g87238890_
                     (lambda (_g87278878_)
                       (if (gx#stx-pair? _g87278878_)
                           (let ((_e87288880_ (gx#stx-e _g87278878_)))
                             (let ((_hd87298883_ (##car _e87288880_))
                                   (_tl87308885_ (##cdr _e87288880_)))
                               (if (gx#stx-datum? _hd87298883_)
                                   (if (equal? (gx#stx-e _hd87298883_) '#f)
                                       (if (gx#stx-null? _tl87308885_)
                                           ((lambda ()
                                              (gxc#compile-e _L8708_)))
                                           (_g87248875_ _g87278878_))
                                       (_g87248875_ _g87278878_))
                                   (_g87248875_ _g87278878_))))
                           (_g87248875_ _g87278878_)))))
                (_g87238890_ _L8709_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd86738703_
                                              _hd86708695_)
                                             (_g86628679_ _g86638682_))))
                                     (_g86628679_ _g86638682_))))
                             (_g86628679_ _g86638682_))))
                     (_g86628679_ _g86638682_)))))
          (_g86618893_ _stx8660_)))))
  (define gxc#generate-runtime-check-values
    (lambda (_vals8648_ _hd8649_)
      (let ((_len8651_ (gx#stx-length _hd8649_)))
        (let ((_cmp8653_ (if (gx#stx-list? _hd8649_) 'fx= 'fx>=)))
          (let ((_errmsg8655_
                 (string-append
                  (if (gx#stx-list? _hd8649_)
                      '"Context expects "
                      '"Context expects at least ")
                  (number->string _len8651_)
                  '" values")))
            (let ((_count8657_ (gxc#generate-runtime-temporary__0)))
              (let ()
                (if (if (not (gx#stx-list? _hd8649_)) (fx= _len8651_ '0) '#f)
                    '#!void
                    (cons 'let
                          (cons (cons (cons _count8657_
                                            (cons (cons 'values-count
                                                        (cons _vals8648_ '()))
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (cons _cmp8653_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _count8657_ (cons _len8651_ '())))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _errmsg8655_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _count8657_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))))
  (define gxc#generate-runtime-lambda%
    (lambda (_stx8581_)
      (let ((_g85838600_
             (lambda (_g85848597_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g85848597_))))
        (let ((_g85828645_
               (lambda (_g85848603_)
                 (if (gx#stx-pair? _g85848603_)
                     (let ((_e85878605_ (gx#stx-e _g85848603_)))
                       (let ((_hd85888608_ (##car _e85878605_))
                             (_tl85898610_ (##cdr _e85878605_)))
                         (if (gx#stx-pair? _tl85898610_)
                             (let ((_e85908613_ (gx#stx-e _tl85898610_)))
                               (let ((_hd85918616_ (##car _e85908613_))
                                     (_tl85928618_ (##cdr _e85908613_)))
                                 (if (gx#stx-pair? _tl85928618_)
                                     (let ((_e85938621_
                                            (gx#stx-e _tl85928618_)))
                                       (let ((_hd85948624_ (##car _e85938621_))
                                             (_tl85958626_
                                              (##cdr _e85938621_)))
                                         (if (gx#stx-null? _tl85958626_)
                                             ((lambda (_L8629_ _L8630_)
                                                (cons 'lambda
                                                      (cons (gxc#generate-runtime-lambda-head
                                                             _L8630_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L8629_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd85948624_
                                              _hd85918616_)
                                             (_g85838600_ _g85848603_))))
                                     (_g85838600_ _g85848603_))))
                             (_g85838600_ _g85848603_))))
                     (_g85838600_ _g85848603_)))))
          (_g85828645_ _stx8581_)))))
  (define gxc#generate-runtime-lambda-head
    (lambda (_hd8579_)
      (gx#stx-map1 gxc#generate-runtime-binding-id* _hd8579_)))
  (define gxc#generate-runtime-case-lambda%
    (lambda (_stx7116_)
      (let ((_runtime-identifier=?7118_
             (lambda (_id-stx8570_ _sym8571_)
               (let ((_bind85728574_ (gx#resolve-identifier__0 _id-stx8570_)))
                 (if _bind85728574_
                     (let ((_bind8577_ _bind85728574_))
                       (eq? (##structure-ref _bind8577_ '1 gx#binding::t '#f)
                            _sym8571_))
                     '#f)))))
        (let ((_dispatch-case?7119_
               (lambda (_hd7800_ _body7801_)
                 (let ((_form7803_ (cons _hd7800_ (cons _body7801_ '()))))
                   (let ((_g78087965_
                          (lambda (_g78097962_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g78097962_))))
                     (let ((_g78077972_
                            (lambda (_g78097968_) ((lambda () '#f)))))
                       (let ((_g78068113_
                              (lambda (_g78097975_)
                                (if (gx#stx-pair? _g78097975_)
                                    (let ((_e79257977_ (gx#stx-e _g78097975_)))
                                      (let ((_hd79267980_ (##car _e79257977_))
                                            (_tl79277982_ (##cdr _e79257977_)))
                                        (if (gx#stx-pair? _tl79277982_)
                                            (let ((_e79287985_
                                                   (gx#stx-e _tl79277982_)))
                                              (let ((_hd79297988_
                                                     (##car _e79287985_))
                                                    (_tl79307990_
                                                     (##cdr _e79287985_)))
                                                (if (gx#stx-pair? _hd79297988_)
                                                    (let ((_e79317993_
                                                           (gx#stx-e
                                                            _hd79297988_)))
                                                      (let ((_hd79327996_
                                                             (##car _e79317993_))
                                                            (_tl79337998_
                                                             (##cdr _e79317993_)))
                                                        (if (gx#identifier?
                                                             _hd79327996_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd79327996_)
                        (if (gx#stx-pair? _tl79337998_)
                            (let ((_e79348001_ (gx#stx-e _tl79337998_)))
                              (let ((_hd79358004_ (##car _e79348001_))
                                    (_tl79368006_ (##cdr _e79348001_)))
                                (if (gx#stx-pair? _hd79358004_)
                                    (let ((_e79378009_
                                           (gx#stx-e _hd79358004_)))
                                      (let ((_hd79388012_ (##car _e79378009_))
                                            (_tl79398014_ (##cdr _e79378009_)))
                                        (if (gx#identifier? _hd79388012_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd79388012_)
                                                (if (gx#stx-pair? _tl79398014_)
                                                    (let ((_e79408017_
                                                           (gx#stx-e
                                                            _tl79398014_)))
                                                      (let ((_hd79418020_
                                                             (##car _e79408017_))
                                                            (_tl79428022_
                                                             (##cdr _e79408017_)))
                                                        (if (gx#stx-null?
                                                             _tl79428022_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl79368006_)
                        (let ((_e79438025_ (gx#stx-e _tl79368006_)))
                          (let ((_hd79448028_ (##car _e79438025_))
                                (_tl79458030_ (##cdr _e79438025_)))
                            (if (gx#stx-pair? _hd79448028_)
                                (let ((_e79468033_ (gx#stx-e _hd79448028_)))
                                  (let ((_hd79478036_ (##car _e79468033_))
                                        (_tl79488038_ (##cdr _e79468033_)))
                                    (if (gx#identifier? _hd79478036_)
                                        (if (gx#stx-eq? '%#ref _hd79478036_)
                                            (if (gx#stx-pair? _tl79488038_)
                                                (let ((_e79498041_
                                                       (gx#stx-e
                                                        _tl79488038_)))
                                                  (let ((_hd79508044_
                                                         (##car _e79498041_))
                                                        (_tl79518046_
                                                         (##cdr _e79498041_)))
                                                    (if (gx#stx-null?
                                                         _tl79518046_)
                                                        (if (gx#stx-pair?
                                                             _tl79458030_)
                                                            (let ((_e79528049_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl79458030_)))
                      (let ((_hd79538052_ (##car _e79528049_))
                            (_tl79548054_ (##cdr _e79528049_)))
                        (if (gx#stx-pair? _hd79538052_)
                            (let ((_e79558057_ (gx#stx-e _hd79538052_)))
                              (let ((_hd79568060_ (##car _e79558057_))
                                    (_tl79578062_ (##cdr _e79558057_)))
                                (if (gx#identifier? _hd79568060_)
                                    (if (gx#stx-eq? '%#ref _hd79568060_)
                                        (if (gx#stx-pair? _tl79578062_)
                                            (let ((_e79588065_
                                                   (gx#stx-e _tl79578062_)))
                                              (let ((_hd79598068_
                                                     (##car _e79588065_))
                                                    (_tl79608070_
                                                     (##cdr _e79588065_)))
                                                (if (gx#stx-null? _tl79608070_)
                                                    (if (gx#stx-null?
                                                         _tl79548054_)
                                                        (if (gx#stx-null?
                                                             _tl79307990_)
                                                            ((lambda (_L8073_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L8074_
                              _L8075_
                              _L8076_)
                       (if (if (gx#identifier? _L8076_)
                               (if (_runtime-identifier=?7118_ _L8075_ 'apply)
                                   (if (gx#free-identifier=? _L8076_ _L8073_)
                                       (not (gx#free-identifier=?
                                             _L8074_
                                             _L8076_))
                                       '#f)
                                   '#f)
                               '#f)
                           '#t
                           (_g78077972_ _g78097975_)))
                     _hd79598068_
                     _hd79508044_
                     _hd79418020_
                     _hd79267980_)
                    (_g78077972_ _g78097975_))
                (_g78077972_ _g78097975_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g78077972_
                                                     _g78097975_))))
                                            (_g78077972_ _g78097975_))
                                        (_g78077972_ _g78097975_))
                                    (_g78077972_ _g78097975_))))
                            (_g78077972_ _g78097975_))))
                    (_g78077972_ _g78097975_))
                (_g78077972_ _g78097975_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g78077972_ _g78097975_))
                                            (_g78077972_ _g78097975_))
                                        (_g78077972_ _g78097975_))))
                                (_g78077972_ _g78097975_))))
                        (_g78077972_ _g78097975_))
                    (_g78077972_ _g78097975_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g78077972_ _g78097975_))
                                                (_g78077972_ _g78097975_))
                                            (_g78077972_ _g78097975_))))
                                    (_g78077972_ _g78097975_))))
                            (_g78077972_ _g78097975_))
                        (_g78077972_ _g78097975_))
                    (_g78077972_ _g78097975_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g78077972_
                                                     _g78097975_))))
                                            (_g78077972_ _g78097975_))))
                                    (_g78077972_ _g78097975_)))))
                         (let ((_g78058373_
                                (lambda (_g78098116_)
                                  (if (gx#stx-pair? _g78098116_)
                                      (let ((_e78618118_
                                             (gx#stx-e _g78098116_)))
                                        (let ((_hd78628121_
                                               (##car _e78618118_))
                                              (_tl78638123_
                                               (##cdr _e78618118_)))
                                          (if (gx#stx-pair/null? _hd78628121_)
                                              (if (fx>= (gx#stx-length
                                                         _hd78628121_)
                                                        '0)
                                                  (let ((_g10150_
                                                         (gx#syntax-split-splice
                                                          _hd78628121_
                                                          '0)))
                                                    (begin
                                                      (let ((_g10151_
                                                             (values-count
                                                              _g10150_)))
                                                        (if (not (fx= _g10151_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g10151_)))
              (let ((_target78648126_ (values-ref _g10150_ 0))
                    (_tl78668128_ (values-ref _g10150_ 1)))
                (letrec ((_loop78678131_
                          (lambda (_hd78658134_ _arg78718136_)
                            (if (gx#stx-pair? _hd78658134_)
                                (let ((_e78688139_ (gx#stx-e _hd78658134_)))
                                  (let ((_lp-hd78698142_ (##car _e78688139_))
                                        (_lp-tl78708144_ (##cdr _e78688139_)))
                                    (_loop78678131_
                                     _lp-tl78708144_
                                     (cons _lp-hd78698142_ _arg78718136_))))
                                (let ((_arg78728147_ (reverse _arg78718136_)))
                                  (if (gx#stx-pair? _tl78638123_)
                                      (let ((_e78738150_
                                             (gx#stx-e _tl78638123_)))
                                        (let ((_hd78748153_
                                               (##car _e78738150_))
                                              (_tl78758155_
                                               (##cdr _e78738150_)))
                                          (if (gx#stx-pair? _hd78748153_)
                                              (let ((_e78768158_
                                                     (gx#stx-e _hd78748153_)))
                                                (let ((_hd78778161_
                                                       (##car _e78768158_))
                                                      (_tl78788163_
                                                       (##cdr _e78768158_)))
                                                  (if (gx#identifier?
                                                       _hd78778161_)
                                                      (if (gx#stx-eq?
                                                           '%#call
                                                           _hd78778161_)
                                                          (if (gx#stx-pair?
                                                               _tl78788163_)
                                                              (let ((_e78798166_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl78788163_)))
                        (let ((_hd78808169_ (##car _e78798166_))
                              (_tl78818171_ (##cdr _e78798166_)))
                          (if (gx#stx-pair? _hd78808169_)
                              (let ((_e78828174_ (gx#stx-e _hd78808169_)))
                                (let ((_hd78838177_ (##car _e78828174_))
                                      (_tl78848179_ (##cdr _e78828174_)))
                                  (if (gx#identifier? _hd78838177_)
                                      (if (gx#stx-eq? '%#ref _hd78838177_)
                                          (if (gx#stx-pair? _tl78848179_)
                                              (let ((_e78858182_
                                                     (gx#stx-e _tl78848179_)))
                                                (let ((_hd78868185_
                                                       (##car _e78858182_))
                                                      (_tl78878187_
                                                       (##cdr _e78858182_)))
                                                  (if (gx#stx-null?
                                                       _tl78878187_)
                                                      (if (gx#stx-pair?
                                                           _tl78818171_)
                                                          (let ((_e78888190_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl78818171_)))
                    (let ((_hd78898193_ (##car _e78888190_))
                          (_tl78908195_ (##cdr _e78888190_)))
                      (if (gx#stx-pair? _hd78898193_)
                          (let ((_e78918198_ (gx#stx-e _hd78898193_)))
                            (let ((_hd78928201_ (##car _e78918198_))
                                  (_tl78938203_ (##cdr _e78918198_)))
                              (if (gx#identifier? _hd78928201_)
                                  (if (gx#stx-eq? '%#ref _hd78928201_)
                                      (if (gx#stx-pair? _tl78938203_)
                                          (let ((_e78948206_
                                                 (gx#stx-e _tl78938203_)))
                                            (let ((_hd78958209_
                                                   (##car _e78948206_))
                                                  (_tl78968211_
                                                   (##cdr _e78948206_)))
                                              (if (gx#stx-null? _tl78968211_)
                                                  (if (gx#stx-pair/null?
                                                       _tl78908195_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl78908195_)
                        '1)
                  (let ((_g10152_ (gx#syntax-split-splice _tl78908195_ '1)))
                    (begin
                      (let ((_g10153_ (values-count _g10152_)))
                        (if (not (fx= _g10153_ 2))
                            (error "Context expects 2 values" _g10153_)))
                      (let ((_target78978214_ (values-ref _g10152_ 0))
                            (_tl78998216_ (values-ref _g10152_ 1)))
                        (if (gx#stx-pair? _tl78998216_)
                            (let ((_e79068219_ (gx#stx-e _tl78998216_)))
                              (let ((_hd79078222_ (##car _e79068219_))
                                    (_tl79088224_ (##cdr _e79068219_)))
                                (if (gx#stx-pair? _hd79078222_)
                                    (let ((_e79098227_
                                           (gx#stx-e _hd79078222_)))
                                      (let ((_hd79108230_ (##car _e79098227_))
                                            (_tl79118232_ (##cdr _e79098227_)))
                                        (if (gx#identifier? _hd79108230_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd79108230_)
                                                (if (gx#stx-pair? _tl79118232_)
                                                    (let ((_e79128235_
                                                           (gx#stx-e
                                                            _tl79118232_)))
                                                      (let ((_hd79138238_
                                                             (##car _e79128235_))
                                                            (_tl79148240_
                                                             (##cdr _e79128235_)))
                                                        (if (gx#stx-null?
                                                             _tl79148240_)
                                                            (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl79088224_)
                        (letrec ((_loop79008243_
                                  (lambda (_hd78988246_ _xarg79048248_)
                                    (if (gx#stx-pair? _hd78988246_)
                                        (let ((_e79018251_
                                               (gx#stx-e _hd78988246_)))
                                          (let ((_lp-hd79028254_
                                                 (##car _e79018251_))
                                                (_lp-tl79038256_
                                                 (##cdr _e79018251_)))
                                            (if (gx#stx-pair? _lp-hd79028254_)
                                                (let ((_e79158259_
                                                       (gx#stx-e
                                                        _lp-hd79028254_)))
                                                  (let ((_hd79168262_
                                                         (##car _e79158259_))
                                                        (_tl79178264_
                                                         (##cdr _e79158259_)))
                                                    (if (gx#identifier?
                                                         _hd79168262_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd79168262_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl79178264_)
                        (let ((_e79188267_ (gx#stx-e _tl79178264_)))
                          (let ((_hd79198270_ (##car _e79188267_))
                                (_tl79208272_ (##cdr _e79188267_)))
                            (if (gx#stx-null? _tl79208272_)
                                (_loop79008243_
                                 _lp-tl79038256_
                                 (cons _hd79198270_ _xarg79048248_))
                                (_g78068113_ _g78098116_))))
                        (_g78068113_ _g78098116_))
                    (_g78068113_ _g78098116_))
                (_g78068113_ _g78098116_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g78068113_ _g78098116_))))
                                        (let ((_xarg79058275_
                                               (reverse _xarg79048248_)))
                                          (if (gx#stx-null? _tl78758155_)
                                              ((lambda (_L8278_
                                                        _L8279_
                                                        _L8280_
                                                        _L8281_
                                                        _L8282_
                                                        _L8283_)
                                                 (if (if (gx#identifier-list?
                                                          (begin
                                                            '#!void
                                                            (foldr1 (lambda (_g83268329_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g83278331_)
                              (cons _g83268329_ _g83278331_))
                            '()
                            _L8283_)))
                 (if (gx#identifier? _L8282_)
                     (if (_runtime-identifier=?7118_ _L8281_ 'apply)
                         (if (fx= (length (begin
                                            '#!void
                                            (foldr1 (lambda (_g83338336_
                                                             _g83348338_)
                                                      (cons _g83338336_
                                                            _g83348338_))
                                                    '()
                                                    _L8283_)))
                                  (length (begin
                                            '#!void
                                            (foldr1 (lambda (_g83408343_
                                                             _g83418345_)
                                                      (cons _g83408343_
                                                            _g83418345_))
                                                    '()
                                                    _L8279_))))
                             (if (andmap gx#free-identifier=?
                                         (begin
                                           '#!void
                                           (foldr1 (lambda (_g83478350_
                                                            _g83488352_)
                                                     (cons _g83478350_
                                                           _g83488352_))
                                                   '()
                                                   _L8283_))
                                         (begin
                                           '#!void
                                           (foldr1 (lambda (_g83548357_
                                                            _g83558359_)
                                                     (cons _g83548357_
                                                           _g83558359_))
                                                   '()
                                                   _L8279_)))
                                 (if (gx#free-identifier=? _L8282_ _L8278_)
                                     (not (find (lambda (_g83618363_)
                                                  (gx#free-identifier=?
                                                   _g83618363_
                                                   _L8280_))
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g83658368_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g83668370_)
                    (cons _g83658368_ _g83668370_))
                  (cons _L8282_ '())
                  _L8283_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '#f)
                                 '#f)
                             '#f)
                         '#f)
                     '#f)
                 '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#t
                                                     (_g78068113_
                                                      _g78098116_)))
                                               _hd79138238_
                                               _xarg79058275_
                                               _hd78958209_
                                               _hd78868185_
                                               _tl78668128_
                                               _arg78728147_)
                                              (_g78068113_ _g78098116_)))))))
                          (_loop79008243_ _target78978214_ '()))
                        (_g78068113_ _g78098116_))
                    (_g78068113_ _g78098116_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g78068113_ _g78098116_))
                                                (_g78068113_ _g78098116_))
                                            (_g78068113_ _g78098116_))))
                                    (_g78068113_ _g78098116_))))
                            (_g78068113_ _g78098116_)))))
                  (_g78068113_ _g78098116_))
              (_g78068113_ _g78098116_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g78068113_ _g78098116_))))
                                          (_g78068113_ _g78098116_))
                                      (_g78068113_ _g78098116_))
                                  (_g78068113_ _g78098116_))))
                          (_g78068113_ _g78098116_))))
                  (_g78068113_ _g78098116_))
              (_g78068113_ _g78098116_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g78068113_ _g78098116_))
                                          (_g78068113_ _g78098116_))
                                      (_g78068113_ _g78098116_))))
                              (_g78068113_ _g78098116_))))
                      (_g78068113_ _g78098116_))
                  (_g78068113_ _g78098116_))
              (_g78068113_ _g78098116_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g78068113_ _g78098116_))))
                                      (_g78068113_ _g78098116_)))))))
                  (_loop78678131_ _target78648126_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g78068113_ _g78098116_))
                                              (_g78068113_ _g78098116_))))
                                      (_g78068113_ _g78098116_)))))
                           (let ((_g78048567_
                                  (lambda (_g78098376_)
                                    (if (gx#stx-pair? _g78098376_)
                                        (let ((_e78138378_
                                               (gx#stx-e _g78098376_)))
                                          (let ((_hd78148381_
                                                 (##car _e78138378_))
                                                (_tl78158383_
                                                 (##cdr _e78138378_)))
                                            (if (gx#stx-pair/null?
                                                 _hd78148381_)
                                                (if (fx>= (gx#stx-length
                                                           _hd78148381_)
                                                          '0)
                                                    (let ((_g10154_
                                                           (gx#syntax-split-splice
                                                            _hd78148381_
                                                            '0)))
                                                      (begin
                                                        (let ((_g10155_
                                                               (values-count
                                                                _g10154_)))
                                                          (if (not (fx= _g10155_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                2))
                      (error "Context expects 2 values" _g10155_)))
                (let ((_target78168386_ (values-ref _g10154_ 0))
                      (_tl78188388_ (values-ref _g10154_ 1)))
                  (if (gx#stx-null? _tl78188388_)
                      (letrec ((_loop78198391_
                                (lambda (_hd78178394_ _arg78238396_)
                                  (if (gx#stx-pair? _hd78178394_)
                                      (let ((_e78208399_
                                             (gx#stx-e _hd78178394_)))
                                        (let ((_lp-hd78218402_
                                               (##car _e78208399_))
                                              (_lp-tl78228404_
                                               (##cdr _e78208399_)))
                                          (_loop78198391_
                                           _lp-tl78228404_
                                           (cons _lp-hd78218402_
                                                 _arg78238396_))))
                                      (let ((_arg78248407_
                                             (reverse _arg78238396_)))
                                        (if (gx#stx-pair? _tl78158383_)
                                            (let ((_e78258410_
                                                   (gx#stx-e _tl78158383_)))
                                              (let ((_hd78268413_
                                                     (##car _e78258410_))
                                                    (_tl78278415_
                                                     (##cdr _e78258410_)))
                                                (if (gx#stx-pair? _hd78268413_)
                                                    (let ((_e78288418_
                                                           (gx#stx-e
                                                            _hd78268413_)))
                                                      (let ((_hd78298421_
                                                             (##car _e78288418_))
                                                            (_tl78308423_
                                                             (##cdr _e78288418_)))
                                                        (if (gx#identifier?
                                                             _hd78298421_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd78298421_)
                        (if (gx#stx-pair? _tl78308423_)
                            (let ((_e78318426_ (gx#stx-e _tl78308423_)))
                              (let ((_hd78328429_ (##car _e78318426_))
                                    (_tl78338431_ (##cdr _e78318426_)))
                                (if (gx#stx-pair? _hd78328429_)
                                    (let ((_e78348434_
                                           (gx#stx-e _hd78328429_)))
                                      (let ((_hd78358437_ (##car _e78348434_))
                                            (_tl78368439_ (##cdr _e78348434_)))
                                        (if (gx#identifier? _hd78358437_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd78358437_)
                                                (if (gx#stx-pair? _tl78368439_)
                                                    (let ((_e78378442_
                                                           (gx#stx-e
                                                            _tl78368439_)))
                                                      (let ((_hd78388445_
                                                             (##car _e78378442_))
                                                            (_tl78398447_
                                                             (##cdr _e78378442_)))
                                                        (if (gx#stx-null?
                                                             _tl78398447_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl78338431_)
                        (if (fx>= (gx#stx-length _tl78338431_) '0)
                            (let ((_g10156_
                                   (gx#syntax-split-splice _tl78338431_ '0)))
                              (begin
                                (let ((_g10157_ (values-count _g10156_)))
                                  (if (not (fx= _g10157_ 2))
                                      (error "Context expects 2 values"
                                             _g10157_)))
                                (let ((_target78408450_
                                       (values-ref _g10156_ 0))
                                      (_tl78428452_ (values-ref _g10156_ 1)))
                                  (if (gx#stx-null? _tl78428452_)
                                      (letrec ((_loop78438455_
                                                (lambda (_hd78418458_
                                                         _xarg78478460_)
                                                  (if (gx#stx-pair?
                                                       _hd78418458_)
                                                      (let ((_e78448463_
                                                             (gx#stx-e
                                                              _hd78418458_)))
                                                        (let ((_lp-hd78458466_
                                                               (##car _e78448463_))
                                                              (_lp-tl78468468_
                                                               (##cdr _e78448463_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd78458466_)
                                                              (let ((_e78498471_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _lp-hd78458466_)))
                        (let ((_hd78508474_ (##car _e78498471_))
                              (_tl78518476_ (##cdr _e78498471_)))
                          (if (gx#identifier? _hd78508474_)
                              (if (gx#stx-eq? '%#ref _hd78508474_)
                                  (if (gx#stx-pair? _tl78518476_)
                                      (let ((_e78528479_
                                             (gx#stx-e _tl78518476_)))
                                        (let ((_hd78538482_
                                               (##car _e78528479_))
                                              (_tl78548484_
                                               (##cdr _e78528479_)))
                                          (if (gx#stx-null? _tl78548484_)
                                              (_loop78438455_
                                               _lp-tl78468468_
                                               (cons _hd78538482_
                                                     _xarg78478460_))
                                              (_g78058373_ _g78098376_))))
                                      (_g78058373_ _g78098376_))
                                  (_g78058373_ _g78098376_))
                              (_g78058373_ _g78098376_))))
                      (_g78058373_ _g78098376_))))
              (let ((_xarg78488487_ (reverse _xarg78478460_)))
                (if (gx#stx-null? _tl78278415_)
                    ((lambda (_L8490_ _L8491_ _L8492_)
                       (if (if (gx#identifier-list?
                                (begin
                                  '#!void
                                  (foldr1 (lambda (_g85208523_ _g85218525_)
                                            (cons _g85208523_ _g85218525_))
                                          '()
                                          _L8492_)))
                               (if (fx= (length (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g85278530_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g85288532_)
                    (cons _g85278530_ _g85288532_))
                  '()
                  _L8492_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (length (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g85348537_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g85358539_)
                    (cons _g85348537_ _g85358539_))
                  '()
                  _L8490_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (andmap gx#free-identifier=?
                                               (begin
                                                 '#!void
                                                 (foldr1 (lambda (_g85418544_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g85428546_)
                   (cons _g85418544_ _g85428546_))
                 '()
                 _L8492_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (begin
                                                 '#!void
                                                 (foldr1 (lambda (_g85488551_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g85498553_)
                   (cons _g85488551_ _g85498553_))
                 '()
                 _L8490_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (not (find (lambda (_g85558557_)
                                                    (gx#free-identifier=?
                                                     _g85558557_
                                                     _L8491_))
                                                  (begin
                                                    '#!void
                                                    (foldr1 (lambda (_g85598562_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g85608564_)
                      (cons _g85598562_ _g85608564_))
                    '()
                    _L8492_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '#f)
                                   '#f)
                               '#f)
                           '#t
                           (_g78058373_ _g78098376_)))
                     _xarg78488487_
                     _hd78388445_
                     _arg78248407_)
                    (_g78058373_ _g78098376_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop78438455_ _target78408450_ '()))
                                      (_g78058373_ _g78098376_)))))
                            (_g78058373_ _g78098376_))
                        (_g78058373_ _g78098376_))
                    (_g78058373_ _g78098376_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g78058373_ _g78098376_))
                                                (_g78058373_ _g78098376_))
                                            (_g78058373_ _g78098376_))))
                                    (_g78058373_ _g78098376_))))
                            (_g78058373_ _g78098376_))
                        (_g78058373_ _g78098376_))
                    (_g78058373_ _g78098376_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g78058373_
                                                     _g78098376_))))
                                            (_g78058373_ _g78098376_)))))))
                        (_loop78198391_ _target78168386_ '()))
                      (_g78058373_ _g78098376_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g78058373_ _g78098376_))
                                                (_g78058373_ _g78098376_))))
                                        (_g78058373_ _g78098376_)))))
                             (_g78048567_ _form7803_))))))))))
          (let ((_dispatch-case-e7120_
                 (lambda (_hd7264_ _body7265_)
                   (let ((_form7267_ (cons _hd7264_ (cons _body7265_ '()))))
                     (let ((_g72717395_
                            (lambda (_g72727392_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g72727392_))))
                       (let ((_g72707513_
                              (lambda (_g72727398_)
                                (if (gx#stx-pair? _g72727398_)
                                    (let ((_e73617400_ (gx#stx-e _g72727398_)))
                                      (let ((_hd73627403_ (##car _e73617400_))
                                            (_tl73637405_ (##cdr _e73617400_)))
                                        (if (gx#stx-pair? _tl73637405_)
                                            (let ((_e73647408_
                                                   (gx#stx-e _tl73637405_)))
                                              (let ((_hd73657411_
                                                     (##car _e73647408_))
                                                    (_tl73667413_
                                                     (##cdr _e73647408_)))
                                                (if (gx#stx-pair? _hd73657411_)
                                                    (let ((_e73677416_
                                                           (gx#stx-e
                                                            _hd73657411_)))
                                                      (let ((_hd73687419_
                                                             (##car _e73677416_))
                                                            (_tl73697421_
                                                             (##cdr _e73677416_)))
                                                        (if (gx#identifier?
                                                             _hd73687419_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd73687419_)
                        (if (gx#stx-pair? _tl73697421_)
                            (let ((_e73707424_ (gx#stx-e _tl73697421_)))
                              (let ((_hd73717427_ (##car _e73707424_))
                                    (_tl73727429_ (##cdr _e73707424_)))
                                (if (gx#stx-pair? _hd73717427_)
                                    (let ((_e73737432_
                                           (gx#stx-e _hd73717427_)))
                                      (let ((_hd73747435_ (##car _e73737432_))
                                            (_tl73757437_ (##cdr _e73737432_)))
                                        (if (gx#identifier? _hd73747435_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd73747435_)
                                                (if (gx#stx-pair? _tl73757437_)
                                                    (let ((_e73767440_
                                                           (gx#stx-e
                                                            _tl73757437_)))
                                                      (let ((_hd73777443_
                                                             (##car _e73767440_))
                                                            (_tl73787445_
                                                             (##cdr _e73767440_)))
                                                        (if (gx#stx-null?
                                                             _tl73787445_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl73727429_)
                        (let ((_e73797448_ (gx#stx-e _tl73727429_)))
                          (let ((_hd73807451_ (##car _e73797448_))
                                (_tl73817453_ (##cdr _e73797448_)))
                            (if (gx#stx-pair? _hd73807451_)
                                (let ((_e73827456_ (gx#stx-e _hd73807451_)))
                                  (let ((_hd73837459_ (##car _e73827456_))
                                        (_tl73847461_ (##cdr _e73827456_)))
                                    (if (gx#identifier? _hd73837459_)
                                        (if (gx#stx-eq? '%#ref _hd73837459_)
                                            (if (gx#stx-pair? _tl73847461_)
                                                (let ((_e73857464_
                                                       (gx#stx-e
                                                        _tl73847461_)))
                                                  (let ((_hd73867467_
                                                         (##car _e73857464_))
                                                        (_tl73877469_
                                                         (##cdr _e73857464_)))
                                                    (if (gx#stx-null?
                                                         _tl73877469_)
                                                        (if (gx#stx-pair?
                                                             _tl73817453_)
                                                            (let ((_e73887472_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl73817453_)))
                      (let ((_hd73897475_ (##car _e73887472_))
                            (_tl73907477_ (##cdr _e73887472_)))
                        (if (gx#stx-null? _tl73907477_)
                            (if (gx#stx-null? _tl73667413_)
                                ((lambda (_L7480_ _L7481_ _L7482_)
                                   (gxc#compile-e
                                    (cons (gx#datum->syntax__0 '#f '%#ref)
                                          (cons _L7480_ '()))))
                                 _hd73867467_
                                 _hd73777443_
                                 _hd73627403_)
                                (_g72717395_ _g72727398_))
                            (_g72717395_ _g72727398_))))
                    (_g72717395_ _g72727398_))
                (_g72717395_ _g72727398_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g72717395_ _g72727398_))
                                            (_g72717395_ _g72727398_))
                                        (_g72717395_ _g72727398_))))
                                (_g72717395_ _g72727398_))))
                        (_g72717395_ _g72727398_))
                    (_g72717395_ _g72727398_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g72717395_ _g72727398_))
                                                (_g72717395_ _g72727398_))
                                            (_g72717395_ _g72727398_))))
                                    (_g72717395_ _g72727398_))))
                            (_g72717395_ _g72727398_))
                        (_g72717395_ _g72727398_))
                    (_g72717395_ _g72727398_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g72717395_
                                                     _g72727398_))))
                                            (_g72717395_ _g72727398_))))
                                    (_g72717395_ _g72727398_)))))
                         (let ((_g72697649_
                                (lambda (_g72727516_)
                                  (if (gx#stx-pair? _g72727516_)
                                      (let ((_e73227518_
                                             (gx#stx-e _g72727516_)))
                                        (let ((_hd73237521_
                                               (##car _e73227518_))
                                              (_tl73247523_
                                               (##cdr _e73227518_)))
                                          (if (gx#stx-pair/null? _hd73237521_)
                                              (if (fx>= (gx#stx-length
                                                         _hd73237521_)
                                                        '0)
                                                  (let ((_g10144_
                                                         (gx#syntax-split-splice
                                                          _hd73237521_
                                                          '0)))
                                                    (begin
                                                      (let ((_g10145_
                                                             (values-count
                                                              _g10144_)))
                                                        (if (not (fx= _g10145_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g10145_)))
              (let ((_target73257526_ (values-ref _g10144_ 0))
                    (_tl73277528_ (values-ref _g10144_ 1)))
                (letrec ((_loop73287531_
                          (lambda (_hd73267534_ _arg73327536_)
                            (if (gx#stx-pair? _hd73267534_)
                                (let ((_e73297539_ (gx#stx-e _hd73267534_)))
                                  (let ((_lp-hd73307542_ (##car _e73297539_))
                                        (_lp-tl73317544_ (##cdr _e73297539_)))
                                    (_loop73287531_
                                     _lp-tl73317544_
                                     (cons _lp-hd73307542_ _arg73327536_))))
                                (let ((_arg73337547_ (reverse _arg73327536_)))
                                  (if (gx#stx-pair? _tl73247523_)
                                      (let ((_e73347550_
                                             (gx#stx-e _tl73247523_)))
                                        (let ((_hd73357553_
                                               (##car _e73347550_))
                                              (_tl73367555_
                                               (##cdr _e73347550_)))
                                          (if (gx#stx-pair? _hd73357553_)
                                              (let ((_e73377558_
                                                     (gx#stx-e _hd73357553_)))
                                                (let ((_hd73387561_
                                                       (##car _e73377558_))
                                                      (_tl73397563_
                                                       (##cdr _e73377558_)))
                                                  (if (gx#identifier?
                                                       _hd73387561_)
                                                      (if (gx#stx-eq?
                                                           '%#call
                                                           _hd73387561_)
                                                          (if (gx#stx-pair?
                                                               _tl73397563_)
                                                              (let ((_e73407566_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl73397563_)))
                        (let ((_hd73417569_ (##car _e73407566_))
                              (_tl73427571_ (##cdr _e73407566_)))
                          (if (gx#stx-pair? _hd73417569_)
                              (let ((_e73437574_ (gx#stx-e _hd73417569_)))
                                (let ((_hd73447577_ (##car _e73437574_))
                                      (_tl73457579_ (##cdr _e73437574_)))
                                  (if (gx#identifier? _hd73447577_)
                                      (if (gx#stx-eq? '%#ref _hd73447577_)
                                          (if (gx#stx-pair? _tl73457579_)
                                              (let ((_e73467582_
                                                     (gx#stx-e _tl73457579_)))
                                                (let ((_hd73477585_
                                                       (##car _e73467582_))
                                                      (_tl73487587_
                                                       (##cdr _e73467582_)))
                                                  (if (gx#stx-null?
                                                       _tl73487587_)
                                                      (if (gx#stx-pair?
                                                           _tl73427571_)
                                                          (let ((_e73497590_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl73427571_)))
                    (let ((_hd73507593_ (##car _e73497590_))
                          (_tl73517595_ (##cdr _e73497590_)))
                      (if (gx#stx-pair? _hd73507593_)
                          (let ((_e73527598_ (gx#stx-e _hd73507593_)))
                            (let ((_hd73537601_ (##car _e73527598_))
                                  (_tl73547603_ (##cdr _e73527598_)))
                              (if (gx#identifier? _hd73537601_)
                                  (if (gx#stx-eq? '%#ref _hd73537601_)
                                      (if (gx#stx-pair? _tl73547603_)
                                          (let ((_e73557606_
                                                 (gx#stx-e _tl73547603_)))
                                            (let ((_hd73567609_
                                                   (##car _e73557606_))
                                                  (_tl73577611_
                                                   (##cdr _e73557606_)))
                                              (if (gx#stx-null? _tl73577611_)
                                                  (if (gx#stx-null?
                                                       _tl73367555_)
                                                      ((lambda (_L7614_
                                                                _L7615_
                                                                _L7616_
                                                                _L7617_)
                                                         (gxc#compile-e
                                                          (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '%#ref)
                        (cons _L7614_ '()))))
               _hd73567609_
               _hd73477585_
               _tl73277528_
               _arg73337547_)
              (_g72707513_ _g72727516_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g72707513_ _g72727516_))))
                                          (_g72707513_ _g72727516_))
                                      (_g72707513_ _g72727516_))
                                  (_g72707513_ _g72727516_))))
                          (_g72707513_ _g72727516_))))
                  (_g72707513_ _g72727516_))
              (_g72707513_ _g72727516_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g72707513_ _g72727516_))
                                          (_g72707513_ _g72727516_))
                                      (_g72707513_ _g72727516_))))
                              (_g72707513_ _g72727516_))))
                      (_g72707513_ _g72727516_))
                  (_g72707513_ _g72727516_))
              (_g72707513_ _g72727516_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g72707513_ _g72727516_))))
                                      (_g72707513_ _g72727516_)))))))
                  (_loop73287531_ _target73257526_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g72707513_ _g72727516_))
                                              (_g72707513_ _g72727516_))))
                                      (_g72707513_ _g72727516_)))))
                           (let ((_g72687797_
                                  (lambda (_g72727652_)
                                    (if (gx#stx-pair? _g72727652_)
                                        (let ((_e72767654_
                                               (gx#stx-e _g72727652_)))
                                          (let ((_hd72777657_
                                                 (##car _e72767654_))
                                                (_tl72787659_
                                                 (##cdr _e72767654_)))
                                            (if (gx#stx-pair/null?
                                                 _hd72777657_)
                                                (if (fx>= (gx#stx-length
                                                           _hd72777657_)
                                                          '0)
                                                    (let ((_g10146_
                                                           (gx#syntax-split-splice
                                                            _hd72777657_
                                                            '0)))
                                                      (begin
                                                        (let ((_g10147_
                                                               (values-count
                                                                _g10146_)))
                                                          (if (not (fx= _g10147_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                2))
                      (error "Context expects 2 values" _g10147_)))
                (let ((_target72797662_ (values-ref _g10146_ 0))
                      (_tl72817664_ (values-ref _g10146_ 1)))
                  (if (gx#stx-null? _tl72817664_)
                      (letrec ((_loop72827667_
                                (lambda (_hd72807670_ _arg72867672_)
                                  (if (gx#stx-pair? _hd72807670_)
                                      (let ((_e72837675_
                                             (gx#stx-e _hd72807670_)))
                                        (let ((_lp-hd72847678_
                                               (##car _e72837675_))
                                              (_lp-tl72857680_
                                               (##cdr _e72837675_)))
                                          (_loop72827667_
                                           _lp-tl72857680_
                                           (cons _lp-hd72847678_
                                                 _arg72867672_))))
                                      (let ((_arg72877683_
                                             (reverse _arg72867672_)))
                                        (if (gx#stx-pair? _tl72787659_)
                                            (let ((_e72887686_
                                                   (gx#stx-e _tl72787659_)))
                                              (let ((_hd72897689_
                                                     (##car _e72887686_))
                                                    (_tl72907691_
                                                     (##cdr _e72887686_)))
                                                (if (gx#stx-pair? _hd72897689_)
                                                    (let ((_e72917694_
                                                           (gx#stx-e
                                                            _hd72897689_)))
                                                      (let ((_hd72927697_
                                                             (##car _e72917694_))
                                                            (_tl72937699_
                                                             (##cdr _e72917694_)))
                                                        (if (gx#identifier?
                                                             _hd72927697_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd72927697_)
                        (if (gx#stx-pair? _tl72937699_)
                            (let ((_e72947702_ (gx#stx-e _tl72937699_)))
                              (let ((_hd72957705_ (##car _e72947702_))
                                    (_tl72967707_ (##cdr _e72947702_)))
                                (if (gx#stx-pair? _hd72957705_)
                                    (let ((_e72977710_
                                           (gx#stx-e _hd72957705_)))
                                      (let ((_hd72987713_ (##car _e72977710_))
                                            (_tl72997715_ (##cdr _e72977710_)))
                                        (if (gx#identifier? _hd72987713_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd72987713_)
                                                (if (gx#stx-pair? _tl72997715_)
                                                    (let ((_e73007718_
                                                           (gx#stx-e
                                                            _tl72997715_)))
                                                      (let ((_hd73017721_
                                                             (##car _e73007718_))
                                                            (_tl73027723_
                                                             (##cdr _e73007718_)))
                                                        (if (gx#stx-null?
                                                             _tl73027723_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl72967707_)
                        (if (fx>= (gx#stx-length _tl72967707_) '0)
                            (let ((_g10148_
                                   (gx#syntax-split-splice _tl72967707_ '0)))
                              (begin
                                (let ((_g10149_ (values-count _g10148_)))
                                  (if (not (fx= _g10149_ 2))
                                      (error "Context expects 2 values"
                                             _g10149_)))
                                (let ((_target73037726_
                                       (values-ref _g10148_ 0))
                                      (_tl73057728_ (values-ref _g10148_ 1)))
                                  (if (gx#stx-null? _tl73057728_)
                                      (letrec ((_loop73067731_
                                                (lambda (_hd73047734_
                                                         _xarg73107736_)
                                                  (if (gx#stx-pair?
                                                       _hd73047734_)
                                                      (let ((_e73077739_
                                                             (gx#stx-e
                                                              _hd73047734_)))
                                                        (let ((_lp-hd73087742_
                                                               (##car _e73077739_))
                                                              (_lp-tl73097744_
                                                               (##cdr _e73077739_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd73087742_)
                                                              (let ((_e73127747_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _lp-hd73087742_)))
                        (let ((_hd73137750_ (##car _e73127747_))
                              (_tl73147752_ (##cdr _e73127747_)))
                          (if (gx#identifier? _hd73137750_)
                              (if (gx#stx-eq? '%#ref _hd73137750_)
                                  (if (gx#stx-pair? _tl73147752_)
                                      (let ((_e73157755_
                                             (gx#stx-e _tl73147752_)))
                                        (let ((_hd73167758_
                                               (##car _e73157755_))
                                              (_tl73177760_
                                               (##cdr _e73157755_)))
                                          (if (gx#stx-null? _tl73177760_)
                                              (_loop73067731_
                                               _lp-tl73097744_
                                               (cons _hd73167758_
                                                     _xarg73107736_))
                                              (_g72697649_ _g72727652_))))
                                      (_g72697649_ _g72727652_))
                                  (_g72697649_ _g72727652_))
                              (_g72697649_ _g72727652_))))
                      (_g72697649_ _g72727652_))))
              (let ((_xarg73117763_ (reverse _xarg73107736_)))
                (if (gx#stx-null? _tl72907691_)
                    ((lambda (_L7766_ _L7767_ _L7768_)
                       (gxc#compile-e
                        (cons (gx#datum->syntax__0 '#f '%#ref)
                              (cons _L7767_ '()))))
                     _xarg73117763_
                     _hd73017721_
                     _arg72877683_)
                    (_g72697649_ _g72727652_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop73067731_ _target73037726_ '()))
                                      (_g72697649_ _g72727652_)))))
                            (_g72697649_ _g72727652_))
                        (_g72697649_ _g72727652_))
                    (_g72697649_ _g72727652_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g72697649_ _g72727652_))
                                                (_g72697649_ _g72727652_))
                                            (_g72697649_ _g72727652_))))
                                    (_g72697649_ _g72727652_))))
                            (_g72697649_ _g72727652_))
                        (_g72697649_ _g72727652_))
                    (_g72697649_ _g72727652_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g72697649_
                                                     _g72727652_))))
                                            (_g72697649_ _g72727652_)))))))
                        (_loop72827667_ _target72797662_ '()))
                      (_g72697649_ _g72727652_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g72697649_ _g72727652_))
                                                (_g72697649_ _g72727652_))))
                                        (_g72697649_ _g72727652_)))))
                             (_g72687797_ _form7267_)))))))))
            (let ((_generate17121_
                   (lambda (_args7252_ _arglen7253_ _hd7254_ _body7255_)
                     (let ((_len7257_ (gx#stx-length _hd7254_)))
                       (let ((_condition7259_
                              (if (gx#stx-list? _hd7254_)
                                  (cons 'fx=
                                        (cons _arglen7253_
                                              (cons _len7257_ '())))
                                  (if (> _len7257_ '0)
                                      (cons 'fx>=
                                            (cons _arglen7253_
                                                  (cons _len7257_ '())))
                                      '#t))))
                         (let ((_dispatch7261_
                                (if (_dispatch-case?7119_ _hd7254_ _body7255_)
                                    (_dispatch-case-e7120_ _hd7254_ _body7255_)
                                    (cons 'lambda
                                          (cons (gxc#generate-runtime-lambda-head
                                                 _hd7254_)
                                                (cons (gxc#compile-e
                                                       _body7255_)
                                                      '()))))))
                           (let ()
                             (cons _condition7259_
                                   (cons (cons 'apply
                                               (cons _dispatch7261_
                                                     (cons _args7252_ '())))
                                         '())))))))))
              (let ((_g71237151_
                     (lambda (_g71247148_)
                       (gx#raise-syntax-error '#f '"Bad syntax" _g71247148_))))
                (let ((_g71227249_
                       (lambda (_g71247154_)
                         (if (gx#stx-pair? _g71247154_)
                             (let ((_e71277156_ (gx#stx-e _g71247154_)))
                               (let ((_hd71287159_ (##car _e71277156_))
                                     (_tl71297161_ (##cdr _e71277156_)))
                                 (if (gx#stx-pair/null? _tl71297161_)
                                     (if (fx>= (gx#stx-length _tl71297161_) '0)
                                         (let ((_g10142_
                                                (gx#syntax-split-splice
                                                 _tl71297161_
                                                 '0)))
                                           (begin
                                             (let ((_g10143_
                                                    (values-count _g10142_)))
                                               (if (not (fx= _g10143_ 2))
                                                   (error "Context expects 2 values"
                                                          _g10143_)))
                                             (let ((_target71307164_
                                                    (values-ref _g10142_ 0))
                                                   (_tl71327166_
                                                    (values-ref _g10142_ 1)))
                                               (if (gx#stx-null? _tl71327166_)
                                                   (letrec ((_loop71337169_
                                                             (lambda (_hd71317172_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _body71377174_
                              _hd71387176_)
                       (if (gx#stx-pair? _hd71317172_)
                           (let ((_e71347179_ (gx#stx-e _hd71317172_)))
                             (let ((_lp-hd71357182_ (##car _e71347179_))
                                   (_lp-tl71367184_ (##cdr _e71347179_)))
                               (if (gx#stx-pair? _lp-hd71357182_)
                                   (let ((_e71417187_
                                          (gx#stx-e _lp-hd71357182_)))
                                     (let ((_hd71427190_ (##car _e71417187_))
                                           (_tl71437192_ (##cdr _e71417187_)))
                                       (if (gx#stx-pair? _tl71437192_)
                                           (let ((_e71447195_
                                                  (gx#stx-e _tl71437192_)))
                                             (let ((_hd71457198_
                                                    (##car _e71447195_))
                                                   (_tl71467200_
                                                    (##cdr _e71447195_)))
                                               (if (gx#stx-null? _tl71467200_)
                                                   (_loop71337169_
                                                    _lp-tl71367184_
                                                    (cons _hd71457198_
                                                          _body71377174_)
                                                    (cons _hd71427190_
                                                          _hd71387176_))
                                                   (_g71237151_ _g71247154_))))
                                           (_g71237151_ _g71247154_))))
                                   (_g71237151_ _g71247154_))))
                           (let ((_body71397203_ (reverse _body71377174_))
                                 (_hd71407205_ (reverse _hd71387176_)))
                             ((lambda (_L7208_ _L7209_)
                                (let ((_args7225_
                                       (gxc#generate-runtime-temporary__0))
                                      (_arglen7226_
                                       (gxc#generate-runtime-temporary__0)))
                                  (cons 'lambda
                                        (cons _args7225_
                                              (cons (cons 'let
                                                          (cons (cons (cons _arglen7226_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons 'length (cons _args7225_ '()))
                                          '()))
                              '())
                        (cons (cons 'cond
                                    (foldr1 cons
                                            (cons (cons 'else
                                                        (cons (cons 'error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons '"No clause matching arguments"
                                  (cons _args7225_ '())))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())
                                            (map (lambda (_g72277230_
                                                          _g72287232_)
                                                   (_generate17121_
                                                    _args7225_
                                                    _arglen7226_
                                                    _g72277230_
                                                    _g72287232_))
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g72347237_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g72357239_)
                     (cons _g72347237_ _g72357239_))
                   '()
                   _L7209_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g72417244_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g72427246_)
                     (cons _g72417244_ _g72427246_))
                   '()
                   _L7208_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))))
                              _body71397203_
                              _hd71407205_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop71337169_
                                                      _target71307164_
                                                      '()
                                                      '()))
                                                   (_g71237151_
                                                    _g71247154_)))))
                                         (_g71237151_ _g71247154_))
                                     (_g71237151_ _g71247154_))))
                             (_g71237151_ _g71247154_)))))
                  (_g71227249_ _stx7116_)))))))))
  (begin
    (define gxc#generate-runtime-let-values%__opt-lambda6796
      (lambda (_stx6798_ _compiled-body?6799_)
        (let ((_generate-simple6801_
               (lambda (_hd7103_ _body7104_)
                 (gxc#generate-runtime-simple-let
                  'let
                  _hd7103_
                  _body7104_
                  _compiled-body?6799_))))
          (let ((_generate-values-post6803_
                 (lambda (_post6875_ _body6876_)
                   ((letrec ((_lp6878_
                              (lambda (_rest6880_ _body6881_)
                                (let ((_rest68826890_ _rest6880_))
                                  (let ((_E68856894_
                                         (lambda ()
                                           (error '"No clause matching"
                                                  _rest68826890_))))
                                    (let ((_else68846898_
                                           (lambda () _body6881_)))
                                      (let ((_K68866904_
                                             (lambda (_rest6901_ _bind6902_)
                                               (_lp6878_
                                                _rest6901_
                                                (cons 'let
                                                      (cons _bind6902_
                                                            (cons _body6881_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (##pair? _rest68826890_)
                                            (let ((_hd68876907_
                                                   (##car _rest68826890_))
                                                  (_tl68886909_
                                                   (##cdr _rest68826890_)))
                                              (let ((_bind6912_ _hd68876907_))
                                                (let ((_rest6914_
                                                       _tl68886909_))
                                                  (_K68866904_
                                                   _rest6914_
                                                   _bind6912_))))
                                            (_else68846898_)))))))))
                      _lp6878_)
                    _post6875_
                    _body6876_))))
            (let ((_generate-values-check6804_
                   (lambda (_check6872_ _body6873_)
                     (cons 'begin
                           (foldr1 cons
                                   (cons _body6873_ '())
                                   (reverse _check6872_))))))
              (let ((_generate-values6802_
                     (lambda (_hd6916_ _body6917_)
                       ((letrec ((_lp6919_
                                  (lambda (_rest6921_
                                           _bind6922_
                                           _check6923_
                                           _post6924_)
                                    (let ((_g69276938_
                                           (lambda (_g69286935_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g69286935_))))
                                      (let ((_g69266952_
                                             (lambda (_g69286941_)
                                               ((lambda ()
                                                  (let ((_body6945_
                                                         (if _compiled-body?6799_
                                                             _body6917_
                                                             (gxc#compile-e
                                                              _body6917_))))
                                                    (let ((_body6947_
                                                           (_generate-values-post6803_
                                                            _post6924_
                                                            _body6945_)))
                                                      (let ((_body6949_
                                                             (_generate-values-check6804_
                                                              _check6923_
                                                              _body6947_)))
                                                        (let ()
                                                          (cons 'let
                                                                (cons (reverse _bind6922_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _body6949_ '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_g69257100_
                                               (lambda (_g69286955_)
                                                 (if (gx#stx-pair? _g69286955_)
                                                     (let ((_e69316957_
                                                            (gx#stx-e
                                                             _g69286955_)))
                                                       (let ((_hd69326960_
                                                              (##car _e69316957_))
                                                             (_tl69336962_
                                                              (##cdr _e69316957_)))
                                                         ((lambda (_L6965_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L6966_)
                    (let ((_g69817006_
                           (lambda (_g69827003_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g69827003_))))
                      (let ((_g69807050_
                             (lambda (_g69827009_)
                               (if (gx#stx-pair? _g69827009_)
                                   (let ((_e69967011_ (gx#stx-e _g69827009_)))
                                     (let ((_hd69977014_ (##car _e69967011_))
                                           (_tl69987016_ (##cdr _e69967011_)))
                                       (if (gx#stx-pair? _tl69987016_)
                                           (let ((_e69997019_
                                                  (gx#stx-e _tl69987016_)))
                                             (let ((_hd70007022_
                                                    (##car _e69997019_))
                                                   (_tl70017024_
                                                    (##cdr _e69997019_)))
                                               (if (gx#stx-null? _tl70017024_)
                                                   ((lambda (_L7027_ _L7028_)
                                                      (let ((_vals7041_
                                                             (gxc#generate-runtime-temporary__0)))
                                                        (let ((_expr7043_
                                                               (gxc#compile-e
                                                                _L7027_)))
                                                          (let ((_check-values7045_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#generate-runtime-check-values
                          _vals7041_
                          _L7028_)))
                    (let ((_refs7047_
                           (gxc#generate-runtime-let-values-bind
                            _vals7041_
                            _L7028_)))
                      (let ()
                        (_lp6919_
                         _L6965_
                         (cons (cons _vals7041_ (cons _expr7043_ '()))
                               _bind6922_)
                         (cons _check-values7045_ _check6923_)
                         (cons _refs7047_ _post6924_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd70007022_
                                                    _hd69977014_)
                                                   (_g69817006_ _g69827009_))))
                                           (_g69817006_ _g69827009_))))
                                   (_g69817006_ _g69827009_)))))
                        (let ((_g69797097_
                               (lambda (_g69827053_)
                                 (if (gx#stx-pair? _g69827053_)
                                     (let ((_e69857055_
                                            (gx#stx-e _g69827053_)))
                                       (let ((_hd69867058_ (##car _e69857055_))
                                             (_tl69877060_
                                              (##cdr _e69857055_)))
                                         (if (gx#stx-pair? _hd69867058_)
                                             (let ((_e69887063_
                                                    (gx#stx-e _hd69867058_)))
                                               (let ((_hd69897066_
                                                      (##car _e69887063_))
                                                     (_tl69907068_
                                                      (##cdr _e69887063_)))
                                                 (if (gx#stx-null?
                                                      _tl69907068_)
                                                     (if (gx#stx-pair?
                                                          _tl69877060_)
                                                         (let ((_e69917071_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl69877060_)))
                   (let ((_hd69927074_ (##car _e69917071_))
                         (_tl69937076_ (##cdr _e69917071_)))
                     (if (gx#stx-null? _tl69937076_)
                         ((lambda (_L7079_ _L7080_)
                            (let ((_eid7094_
                                   (gxc#generate-runtime-binding-id* _L7080_))
                                  (_expr7095_ (gxc#compile-e _L7079_)))
                              (_lp6919_
                               _L6965_
                               (cons (cons _eid7094_ (cons _expr7095_ '()))
                                     _bind6922_)
                               _check6923_
                               _post6924_)))
                          _hd69927074_
                          _hd69897066_)
                         (_g69807050_ _g69827053_))))
                 (_g69807050_ _g69827053_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g69807050_
                                                      _g69827053_))))
                                             (_g69807050_ _g69827053_))))
                                     (_g69807050_ _g69827053_)))))
                          (_g69797097_ _L6966_)))))
                  _tl69336962_
                  _hd69326960_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g69266952_
                                                      _g69286955_)))))
                                          (_g69257100_ _rest6921_)))))))
                          _lp6919_)
                        _hd6916_
                        '()
                        '()
                        '()))))
                (let ((_g68066823_
                       (lambda (_g68076820_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g68076820_))))
                  (let ((_g68056869_
                         (lambda (_g68076826_)
                           (if (gx#stx-pair? _g68076826_)
                               (let ((_e68106828_ (gx#stx-e _g68076826_)))
                                 (let ((_hd68116831_ (##car _e68106828_))
                                       (_tl68126833_ (##cdr _e68106828_)))
                                   (if (gx#stx-pair? _tl68126833_)
                                       (let ((_e68136836_
                                              (gx#stx-e _tl68126833_)))
                                         (let ((_hd68146839_
                                                (##car _e68136836_))
                                               (_tl68156841_
                                                (##cdr _e68136836_)))
                                           (if (gx#stx-pair? _tl68156841_)
                                               (let ((_e68166844_
                                                      (gx#stx-e _tl68156841_)))
                                                 (let ((_hd68176847_
                                                        (##car _e68166844_))
                                                       (_tl68186849_
                                                        (##cdr _e68166844_)))
                                                   (if (gx#stx-null?
                                                        _tl68186849_)
                                                       ((lambda (_L6852_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L6853_)
                  (if (gxc#generate-runtime-simple-let? _L6853_)
                      (_generate-simple6801_ _L6853_ _L6852_)
                      (_generate-values6802_ _L6853_ _L6852_)))
                _hd68176847_
                _hd68146839_)
               (_g68066823_ _g68076826_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g68066823_ _g68076826_))))
                                       (_g68066823_ _g68076826_))))
                               (_g68066823_ _g68076826_)))))
                    (_g68056869_ _stx6798_)))))))))
    (begin
      (define gxc#generate-runtime-let-values%__0
        (lambda (_stx7109_)
          (let ((_compiled-body?7111_ '#f))
            (gxc#generate-runtime-let-values%__opt-lambda6796
             _stx7109_
             _compiled-body?7111_))))
      (define gxc#generate-runtime-let-values%
        (lambda _g10159_
          (let ((_g10158_ (length _g10159_)))
            (cond ((fx= _g10158_ 1)
                   (apply gxc#generate-runtime-let-values%__0 _g10159_))
                  ((fx= _g10158_ 2)
                   (apply gxc#generate-runtime-let-values%__opt-lambda6796
                          _g10159_))
                  (else (error "No clause matching arguments" _g10159_))))))))
  (define gxc#generate-runtime-let-values-bind
    (lambda (_vals6697_ _hd6698_)
      ((letrec ((_lp6700_
                 (lambda (_rest6702_ _k6703_ _r6704_)
                   (let ((_g67096725_
                          (lambda (_g67106722_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g67106722_))))
                     (let ((_g67086732_
                            (lambda (_g67106728_)
                              ((lambda () (reverse _r6704_))))))
                       (let ((_g67076748_
                              (lambda (_g67106735_)
                                ((lambda (_L6737_)
                                   (if (gx#identifier? _L6737_)
                                       (foldl1 cons
                                               (cons (cons (gxc#generate-runtime-binding-id
                                                            _L6737_)
                                                           (cons (cons 'values->list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _vals6697_ (cons _k6703_ '())))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               _r6704_)
                                       (_g67086732_ _g67106735_)))
                                 _g67106735_))))
                         (let ((_g67066772_
                                (lambda (_g67106751_)
                                  (if (gx#stx-pair? _g67106751_)
                                      (let ((_e67176753_
                                             (gx#stx-e _g67106751_)))
                                        (let ((_hd67186756_
                                               (##car _e67176753_))
                                              (_tl67196758_
                                               (##cdr _e67176753_)))
                                          ((lambda (_L6761_ _L6762_)
                                             (_lp6700_
                                              _L6761_
                                              (fx+ _k6703_ '1)
                                              (cons (cons (gxc#generate-runtime-binding-id
                                                           _L6762_)
                                                          (cons (cons 'values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _vals6697_ (cons _k6703_ '())))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _r6704_)))
                                           _tl67196758_
                                           _hd67186756_)))
                                      (_g67076748_ _g67106751_)))))
                           (let ((_g67056794_
                                  (lambda (_g67106775_)
                                    (if (gx#stx-pair? _g67106775_)
                                        (let ((_e67126777_
                                               (gx#stx-e _g67106775_)))
                                          (let ((_hd67136780_
                                                 (##car _e67126777_))
                                                (_tl67146782_
                                                 (##cdr _e67126777_)))
                                            (if (gx#stx-datum? _hd67136780_)
                                                (if (equal? (gx#stx-e
                                                             _hd67136780_)
                                                            '#f)
                                                    ((lambda (_L6785_)
                                                       (_lp6700_
                                                        _L6785_
                                                        (fx+ _k6703_ '1)
                                                        _r6704_))
                                                     _tl67146782_)
                                                    (_g67066772_ _g67106775_))
                                                (_g67066772_ _g67106775_))))
                                        (_g67066772_ _g67106775_)))))
                             (_g67056794_ _rest6702_)))))))))
         _lp6700_)
       _hd6698_
       '0
       '())))
  (begin
    (define gxc#generate-runtime-letrec-values%__opt-lambda6375
      (lambda (_stx6377_ _compiled-body?6378_)
        (let ((_generate-simple6380_
               (lambda (_hd6684_ _body6685_)
                 (gxc#generate-runtime-simple-let
                  'letrec
                  _hd6684_
                  _body6685_
                  _compiled-body?6378_))))
          (let ((_generate-values-check6382_
                 (lambda (_check6458_ _body6459_)
                   (cons 'begin
                         (foldr1 cons
                                 (cons _body6459_ '())
                                 (reverse _check6458_))))))
            (let ((_generate-values-post6383_
                   (lambda (_post6451_ _body6452_)
                     (cons 'begin
                           (foldr1 cons
                                   (cons _body6452_ '())
                                   (map (lambda (_g64536455_)
                                          (cons 'set! _g64536455_))
                                        (reverse _post6451_)))))))
              (let ((_generate-values6381_
                     (lambda (_hd6461_ _body6462_)
                       ((letrec ((_lp6464_
                                  (lambda (_rest6466_
                                           _bind6467_
                                           _check6468_
                                           _post6469_)
                                    (let ((_g64726483_
                                           (lambda (_g64736480_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g64736480_))))
                                      (let ((_g64716497_
                                             (lambda (_g64736486_)
                                               ((lambda ()
                                                  (let ((_body6490_
                                                         (if _compiled-body?6378_
                                                             _body6462_
                                                             (gxc#compile-e
                                                              _body6462_))))
                                                    (let ((_body6492_
                                                           (_generate-values-post6383_
                                                            _post6469_
                                                            _body6490_)))
                                                      (let ((_body6494_
                                                             (_generate-values-check6382_
                                                              _check6468_
                                                              _body6492_)))
                                                        (let ()
                                                          (cons 'letrec
                                                                (cons (reverse _bind6467_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _body6494_ '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_g64706681_
                                               (lambda (_g64736500_)
                                                 (if (gx#stx-pair? _g64736500_)
                                                     (let ((_e64766502_
                                                            (gx#stx-e
                                                             _g64736500_)))
                                                       (let ((_hd64776505_
                                                              (##car _e64766502_))
                                                             (_tl64786507_
                                                              (##cdr _e64766502_)))
                                                         ((lambda (_L6510_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L6511_)
                    (let ((_g65266551_
                           (lambda (_g65276548_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g65276548_))))
                      (let ((_g65256631_
                             (lambda (_g65276554_)
                               (if (gx#stx-pair? _g65276554_)
                                   (let ((_e65416556_ (gx#stx-e _g65276554_)))
                                     (let ((_hd65426559_ (##car _e65416556_))
                                           (_tl65436561_ (##cdr _e65416556_)))
                                       (if (gx#stx-pair? _tl65436561_)
                                           (let ((_e65446564_
                                                  (gx#stx-e _tl65436561_)))
                                             (let ((_hd65456567_
                                                    (##car _e65446564_))
                                                   (_tl65466569_
                                                    (##cdr _e65446564_)))
                                               (if (gx#stx-null? _tl65466569_)
                                                   ((lambda (_L6572_ _L6573_)
                                                      (let ((_vals6586_
                                                             (gxc#generate-runtime-temporary__0)))
                                                        (let ((_expr6588_
                                                               (gxc#compile-e
                                                                _L6572_)))
                                                          (let ((_check-values6590_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gxc#generate-runtime-check-values
                          _vals6586_
                          _L6573_)))
                    (let ((_refs6592_
                           (gxc#generate-runtime-let-values-bind
                            _vals6586_
                            _L6573_)))
                      (let ()
                        (_lp6464_
                         _L6510_
                         (foldl1 cons
                                 (cons (cons _vals6586_ (cons _expr6588_ '()))
                                       _bind6467_)
                                 (map (lambda (_e65946596_)
                                        (let ((_g65986607_ _e65946596_))
                                          (let ((_E66006611_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _g65986607_))))
                                            (let ((_K66016616_
                                                   (lambda (_eid6614_)
                                                     (cons _eid6614_
                                                           (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##pair? _g65986607_)
                                                  (let ((_hd66026619_
                                                         (##car _g65986607_))
                                                        (_tl66036621_
                                                         (##cdr _g65986607_)))
                                                    (let ((_eid6624_
                                                           _hd66026619_))
                                                      (if (##pair? _tl66036621_)
                                                          (let ((_hd66046626_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _tl66036621_))
                        (_tl66056628_ (##cdr _tl66036621_)))
                    (if (##null? _tl66056628_)
                        (_K66016616_ _eid6624_)
                        (_E66006611_)))
                  (_E66006611_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E66006611_))))))
                                      _refs6592_))
                         (cons _check-values6590_ _check6468_)
                         (foldl1 cons _refs6592_ _post6469_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd65456567_
                                                    _hd65426559_)
                                                   (_g65266551_ _g65276554_))))
                                           (_g65266551_ _g65276554_))))
                                   (_g65266551_ _g65276554_)))))
                        (let ((_g65246678_
                               (lambda (_g65276634_)
                                 (if (gx#stx-pair? _g65276634_)
                                     (let ((_e65306636_
                                            (gx#stx-e _g65276634_)))
                                       (let ((_hd65316639_ (##car _e65306636_))
                                             (_tl65326641_
                                              (##cdr _e65306636_)))
                                         (if (gx#stx-pair? _hd65316639_)
                                             (let ((_e65336644_
                                                    (gx#stx-e _hd65316639_)))
                                               (let ((_hd65346647_
                                                      (##car _e65336644_))
                                                     (_tl65356649_
                                                      (##cdr _e65336644_)))
                                                 (if (gx#stx-null?
                                                      _tl65356649_)
                                                     (if (gx#stx-pair?
                                                          _tl65326641_)
                                                         (let ((_e65366652_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl65326641_)))
                   (let ((_hd65376655_ (##car _e65366652_))
                         (_tl65386657_ (##cdr _e65366652_)))
                     (if (gx#stx-null? _tl65386657_)
                         ((lambda (_L6660_ _L6661_)
                            (let ((_eid6675_
                                   (gxc#generate-runtime-binding-id* _L6661_))
                                  (_expr6676_ (gxc#compile-e _L6660_)))
                              (_lp6464_
                               _L6510_
                               (cons (cons _eid6675_ (cons _expr6676_ '()))
                                     _bind6467_)
                               _check6468_
                               _post6469_)))
                          _hd65376655_
                          _hd65346647_)
                         (_g65256631_ _g65276634_))))
                 (_g65256631_ _g65276634_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g65256631_
                                                      _g65276634_))))
                                             (_g65256631_ _g65276634_))))
                                     (_g65256631_ _g65276634_)))))
                          (_g65246678_ _L6511_)))))
                  _tl64786507_
                  _hd64776505_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g64716497_
                                                      _g64736500_)))))
                                          (_g64706681_ _rest6466_)))))))
                          _lp6464_)
                        _hd6461_
                        '()
                        '()
                        '()))))
                (let ((_g63856402_
                       (lambda (_g63866399_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g63866399_))))
                  (let ((_g63846448_
                         (lambda (_g63866405_)
                           (if (gx#stx-pair? _g63866405_)
                               (let ((_e63896407_ (gx#stx-e _g63866405_)))
                                 (let ((_hd63906410_ (##car _e63896407_))
                                       (_tl63916412_ (##cdr _e63896407_)))
                                   (if (gx#stx-pair? _tl63916412_)
                                       (let ((_e63926415_
                                              (gx#stx-e _tl63916412_)))
                                         (let ((_hd63936418_
                                                (##car _e63926415_))
                                               (_tl63946420_
                                                (##cdr _e63926415_)))
                                           (if (gx#stx-pair? _tl63946420_)
                                               (let ((_e63956423_
                                                      (gx#stx-e _tl63946420_)))
                                                 (let ((_hd63966426_
                                                        (##car _e63956423_))
                                                       (_tl63976428_
                                                        (##cdr _e63956423_)))
                                                   (if (gx#stx-null?
                                                        _tl63976428_)
                                                       ((lambda (_L6431_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L6432_)
                  (if (gxc#generate-runtime-simple-let? _L6432_)
                      (_generate-simple6380_ _L6432_ _L6431_)
                      (_generate-values6381_ _L6432_ _L6431_)))
                _hd63966426_
                _hd63936418_)
               (_g63856402_ _g63866405_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g63856402_ _g63866405_))))
                                       (_g63856402_ _g63866405_))))
                               (_g63856402_ _g63866405_)))))
                    (_g63846448_ _stx6377_)))))))))
    (begin
      (define gxc#generate-runtime-letrec-values%__0
        (lambda (_stx6690_)
          (let ((_compiled-body?6692_ '#f))
            (gxc#generate-runtime-letrec-values%__opt-lambda6375
             _stx6690_
             _compiled-body?6692_))))
      (define gxc#generate-runtime-letrec-values%
        (lambda _g10161_
          (let ((_g10160_ (length _g10161_)))
            (cond ((fx= _g10160_ 1)
                   (apply gxc#generate-runtime-letrec-values%__0 _g10161_))
                  ((fx= _g10160_ 2)
                   (apply gxc#generate-runtime-letrec-values%__opt-lambda6375
                          _g10161_))
                  (else (error "No clause matching arguments" _g10161_))))))))
  (define gxc#generate-runtime-letrec*-values%
    (lambda (_stx5496_)
      (let ((_collect-closures5499_
             (lambda (_forms6317_)
               (map (lambda (_e63186320_)
                      (let ((_g63226331_ _e63186320_))
                        (let ((_E63246335_
                               (lambda ()
                                 (error '"No clause matching" _g63226331_))))
                          (let ((_K63256340_
                                 (lambda (_expr6338_)
                                   (gxc#collect-expression-refs _expr6338_))))
                            (if (##pair? _g63226331_)
                                (let ((_hd63266343_ (##car _g63226331_))
                                      (_tl63276345_ (##cdr _g63226331_)))
                                  (if (##pair? _tl63276345_)
                                      (let ((_hd63286348_ (##car _tl63276345_))
                                            (_tl63296350_
                                             (##cdr _tl63276345_)))
                                        (let ((_expr6353_ _hd63286348_))
                                          (if (##null? _tl63296350_)
                                              (_K63256340_ _expr6353_)
                                              (_E63246335_))))
                                      (_E63246335_)))
                                (_E63246335_))))))
                    _forms6317_))))
        (let ((_collect-bindings5500_
               (lambda (_forms6241_)
                 (map (lambda (_e62426244_)
                        (let ((_g62466255_ _e62426244_))
                          (let ((_E62486259_
                                 (lambda ()
                                   (error '"No clause matching" _g62466255_))))
                            (let ((_K62496302_
                                   (lambda (_bind6262_)
                                     ((letrec ((_lp6264_
                                                (lambda (_rest6266_ _r6267_)
                                                  (let ((_rest62686276_
                                                         _rest6266_))
                                                    (let ((_E62716280_
                                                           (lambda ()
                                                             (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _rest62686276_))))
              (let ((_else62706284_
                     (lambda ()
                       (if (gx#identifier? _rest6266_)
                           (cons _rest6266_ _r6267_)
                           _r6267_))))
                (let ((_K62726290_
                       (lambda (_rest6287_ _id6288_)
                         (if (gx#identifier? _id6288_)
                             (_lp6264_
                              _rest6287_
                              (cons (##structure-ref
                                     (gx#resolve-identifier__0 _id6288_)
                                     '1
                                     gx#binding::t
                                     '#f)
                                    _r6267_))
                             (_lp6264_ _rest6287_ _r6267_)))))
                  (if (##pair? _rest62686276_)
                      (let ((_hd62736293_ (##car _rest62686276_))
                            (_tl62746295_ (##cdr _rest62686276_)))
                        (let ((_id6298_ _hd62736293_))
                          (let ((_rest6300_ _tl62746295_))
                            (_K62726290_ _rest6300_ _id6298_))))
                      (_else62706284_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _lp6264_)
                                      _bind6262_
                                      '()))))
                              (if (##pair? _g62466255_)
                                  (let ((_hd62506305_ (##car _g62466255_))
                                        (_tl62516307_ (##cdr _g62466255_)))
                                    (let ((_bind6310_ _hd62506305_))
                                      (if (##pair? _tl62516307_)
                                          (let ((_hd62526312_
                                                 (##car _tl62516307_))
                                                (_tl62536314_
                                                 (##cdr _tl62516307_)))
                                            (if (##null? _tl62536314_)
                                                (_K62496302_ _bind6310_)
                                                (_E62486259_)))
                                          (_E62486259_))))
                                  (_E62486259_))))))
                      _forms6241_))))
          (let ((_closure-reference?5504_
                 (lambda (_closure5793_ _bindings5794_)
                   (ormap1 (lambda (_g57955797_)
                             (table-ref _closure5793_ _g57955797_ '#f))
                           _bindings5794_))))
            (let ((_is-effect-expr?5506_
                   (lambda (_expr5704_)
                     (let ((_g57065716_
                            (lambda (_g57075713_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g57075713_))))
                       (let ((_g57055739_
                              (lambda (_g57075719_)
                                (if (gx#stx-pair? _g57075719_)
                                    (let ((_e57095721_ (gx#stx-e _g57075719_)))
                                      (let ((_hd57105724_ (##car _e57095721_))
                                            (_tl57115726_ (##cdr _e57095721_)))
                                        ((lambda (_L5729_)
                                           (not (memq (gx#stx-e _L5729_)
                                                      '(%#lambda
                                                        %#case-lambda
                                                        %#quote
                                                        %#quote-syntax
                                                        %#ref))))
                                         _hd57105724_)))
                                    (_g57065716_ _g57075719_)))))
                         (_g57055739_ _expr5704_))))))
              (let ((_is-lambda-expr?5507_
                     (lambda (_expr5666_)
                       (let ((_g56685678_
                              (lambda (_g56695675_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g56695675_))))
                         (let ((_g56675701_
                                (lambda (_g56695681_)
                                  (if (gx#stx-pair? _g56695681_)
                                      (let ((_e56715683_
                                             (gx#stx-e _g56695681_)))
                                        (let ((_hd56725686_
                                               (##car _e56715683_))
                                              (_tl56735688_
                                               (##cdr _e56715683_)))
                                          ((lambda (_L5691_)
                                             (memq (gx#stx-e _L5691_)
                                                   '(%#lambda %#case-lambda)))
                                           _hd56725686_)))
                                      (_g56685678_ _g56695681_)))))
                           (_g56675701_ _expr5666_))))))
                (let ((_lift-rec5503_
                       (lambda (_forms5800_)
                         ((letrec ((_lp5802_
                                    (lambda (_rest5804_
                                             _pre5805_
                                             _bind5806_
                                             _init5807_)
                                      (let ((_rest58085816_ _rest5804_))
                                        (let ((_E58115820_
                                               (lambda ()
                                                 (error '"No clause matching"
                                                        _rest58085816_))))
                                          (let ((_else58105824_
                                                 (lambda ()
                                                   (values (reverse _pre5805_)
                                                           (reverse _bind5806_)
                                                           (reverse _init5807_)))))
                                            (let ((_K58126015_
                                                   (lambda (_rest5827_
                                                            _bind-hd5828_)
                                                     (let ((_g58325867_
                                                            (lambda (_g58335864_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g58335864_))))
                                                       (let ((_g58315924_
                                                              (lambda (_g58335870_)
                                                                (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g58335870_)
                            (let ((_e58575872_ (gx#stx-e _g58335870_)))
                              (let ((_hd58585875_ (##car _e58575872_))
                                    (_tl58595877_ (##cdr _e58575872_)))
                                (if (gx#stx-pair? _tl58595877_)
                                    (let ((_e58605880_
                                           (gx#stx-e _tl58595877_)))
                                      (let ((_hd58615883_ (##car _e58605880_))
                                            (_tl58625885_ (##cdr _e58605880_)))
                                        (if (gx#stx-null? _tl58625885_)
                                            ((lambda (_L5888_ _L5889_)
                                               (let ((_vals5908_
                                                      (gxc#generate-runtime-temporary__0)))
                                                 (let ((_expr5910_
                                                        (gxc#compile-e
                                                         _L5888_)))
                                                   (let ((_check-values5912_
                                                          (gxc#generate-runtime-check-values
                                                           _vals5908_
                                                           _L5889_)))
                                                     (let ((_refs5914_
                                                            (gxc#generate-runtime-let-values-bind
                                                             _vals5908_
                                                             _L5889_)))
                                                       (let ()
                                                         (_lp5802_
                                                          _rest5827_
                                                          (foldl1 (lambda (_ref5917_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _r5918_)
                            (cons (cons (car _ref5917_) (cons '#!void '()))
                                  _r5918_))
                          _pre5805_
                          _refs5914_)
                  _bind5806_
                  (cons (cons 'let
                              (cons (cons (cons _vals5908_
                                                (cons _expr5910_ '()))
                                          '())
                                    (cons _check-values5912_
                                          (cons (map (lambda (_g59195921_)
                                                       (cons 'set!
                                                             _g59195921_))
                                                     _refs5914_)
                                                '()))))
                        _init5807_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd58615883_
                                             _hd58585875_)
                                            (_g58325867_ _g58335870_))))
                                    (_g58325867_ _g58335870_))))
                            (_g58325867_ _g58335870_)))))
                 (let ((_g58305970_
                        (lambda (_g58335927_)
                          (if (gx#stx-pair? _g58335927_)
                              (let ((_e58465929_ (gx#stx-e _g58335927_)))
                                (let ((_hd58475932_ (##car _e58465929_))
                                      (_tl58485934_ (##cdr _e58465929_)))
                                  (if (gx#stx-pair? _hd58475932_)
                                      (let ((_e58495937_
                                             (gx#stx-e _hd58475932_)))
                                        (let ((_hd58505940_
                                               (##car _e58495937_))
                                              (_tl58515942_
                                               (##cdr _e58495937_)))
                                          (if (gx#stx-null? _tl58515942_)
                                              (if (gx#stx-pair? _tl58485934_)
                                                  (let ((_e58525945_
                                                         (gx#stx-e
                                                          _tl58485934_)))
                                                    (let ((_hd58535948_
                                                           (##car _e58525945_))
                                                          (_tl58545950_
                                                           (##cdr _e58525945_)))
                                                      (if (gx#stx-null?
                                                           _tl58545950_)
                                                          ((lambda (_L5953_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L5954_)
                     (let ((_eid5968_
                            (gxc#generate-runtime-binding-id _L5954_)))
                       (if (_is-lambda-expr?5507_ _L5953_)
                           (_lp5802_
                            _rest5827_
                            _pre5805_
                            (cons (cons _eid5968_
                                        (cons (gxc#compile-e _L5953_) '()))
                                  _bind5806_)
                            _init5807_)
                           (_lp5802_
                            _rest5827_
                            (cons (cons _eid5968_ (cons '#!void '()))
                                  _pre5805_)
                            _bind5806_
                            (cons (cons 'set!
                                        (cons _eid5968_
                                              (cons (gxc#compile-e _L5953_)
                                                    '())))
                                  _init5807_)))))
                   _hd58535948_
                   _hd58505940_)
                  (_g58315924_ _g58335927_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g58315924_ _g58335927_))
                                              (_g58315924_ _g58335927_))))
                                      (_g58315924_ _g58335927_))))
                              (_g58315924_ _g58335927_)))))
                   (let ((_g58296012_
                          (lambda (_g58335973_)
                            (if (gx#stx-pair? _g58335973_)
                                (let ((_e58355975_ (gx#stx-e _g58335973_)))
                                  (let ((_hd58365978_ (##car _e58355975_))
                                        (_tl58375980_ (##cdr _e58355975_)))
                                    (if (gx#stx-pair? _hd58365978_)
                                        (let ((_e58385983_
                                               (gx#stx-e _hd58365978_)))
                                          (let ((_hd58395986_
                                                 (##car _e58385983_))
                                                (_tl58405988_
                                                 (##cdr _e58385983_)))
                                            (if (gx#stx-datum? _hd58395986_)
                                                (if (equal? (gx#stx-e
                                                             _hd58395986_)
                                                            '#f)
                                                    (if (gx#stx-null?
                                                         _tl58405988_)
                                                        (if (gx#stx-pair?
                                                             _tl58375980_)
                                                            (let ((_e58415991_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl58375980_)))
                      (let ((_hd58425994_ (##car _e58415991_))
                            (_tl58435996_ (##cdr _e58415991_)))
                        (if (gx#stx-null? _tl58435996_)
                            ((lambda (_L5999_)
                               (_lp5802_
                                _rest5827_
                                _pre5805_
                                _bind5806_
                                (cons (gxc#compile-e _L5999_) _init5807_)))
                             _hd58425994_)
                            (_g58305970_ _g58335973_))))
                    (_g58305970_ _g58335973_))
                (_g58305970_ _g58335973_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g58305970_ _g58335973_))
                                                (_g58305970_ _g58335973_))))
                                        (_g58305970_ _g58335973_))))
                                (_g58305970_ _g58335973_)))))
                     (_g58296012_ _bind-hd5828_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##pair? _rest58085816_)
                                                  (let ((_hd58136018_
                                                         (##car _rest58085816_))
                                                        (_tl58146020_
                                                         (##cdr _rest58085816_)))
                                                    (let ((_bind-hd6023_
                                                           _hd58136018_))
                                                      (let ((_rest6025_
                                                             _tl58146020_))
                                                        (_K58126015_
                                                         _rest6025_
                                                         _bind-hd6023_))))
                                                  (_else58105824_)))))))))
                            _lp5802_)
                          _forms5800_
                          '()
                          '()
                          '()))))
                  (let ((_is-effect-bind?5505_
                         (lambda (_hd-bind5742_)
                           (let ((_g57445757_
                                  (lambda (_g57455754_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g57455754_))))
                             (let ((_g57435790_
                                    (lambda (_g57455760_)
                                      (if (gx#stx-pair? _g57455760_)
                                          (let ((_e57475762_
                                                 (gx#stx-e _g57455760_)))
                                            (let ((_hd57485765_
                                                   (##car _e57475762_))
                                                  (_tl57495767_
                                                   (##cdr _e57475762_)))
                                              (if (gx#stx-pair? _tl57495767_)
                                                  (let ((_e57505770_
                                                         (gx#stx-e
                                                          _tl57495767_)))
                                                    (let ((_hd57515773_
                                                           (##car _e57505770_))
                                                          (_tl57525775_
                                                           (##cdr _e57505770_)))
                                                      (if (gx#stx-null?
                                                           _tl57525775_)
                                                          ((lambda (_L5778_)
                                                             (_is-effect-expr?5506_
                                                              _L5778_))
                                                           _hd57515773_)
                                                          (_g57445757_
                                                           _g57455760_))))
                                                  (_g57445757_ _g57455760_))))
                                          (_g57445757_ _g57455760_)))))
                               (_g57435790_ _hd-bind5742_))))))
                    (let ((_lift-pre5501_
                           (lambda (_hd6134_ _bindings6135_ _closures6136_)
                             ((letrec ((_lp6138_
                                        (lambda (_rest-forms6140_
                                                 _rest-bindings6141_
                                                 _rest-closures6142_
                                                 _post-forms6143_
                                                 _post-bindings6144_
                                                 _post-closures6145_
                                                 _pre-forms6146_
                                                 _lifted?6147_)
                                          (let ((_rest-forms61486164_
                                                 _rest-forms6140_)
                                                (_rest-bindings61496166_
                                                 _rest-bindings6141_)
                                                (_rest-closures61506168_
                                                 _rest-closures6142_))
                                            (let ((_E61536172_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _rest-forms61486164_
                                                            _rest-bindings61496166_
                                                            _rest-closures61506168_))))
                                              (let ((_else61526176_
                                                     (lambda ()
                                                       (if _lifted?6147_
                                                           (_lp6138_
                                                            (reverse _post-forms6143_)
                                                            (reverse _post-bindings6144_)
                                                            (reverse _post-closures6145_)
                                                            '()
                                                            '()
                                                            '()
                                                            _pre-forms6146_
                                                            '#f)
                                                           (values (reverse _pre-forms6146_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _post-forms6143_)
                           (reverse _post-bindings6144_)
                           (reverse _post-closures6145_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_K61546229_
                                                       (lambda (_rest-forms6179_
                                                                _form6180_)
                                                         (let ((_K61556217_
                                                                (lambda (_rest-bindings6182_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _bindings6183_)
                          (let ((_K61566205_
                                 (lambda (_rest-closures6185_ _closure6186_)
                                   (if (let ((_$e6188_
                                              (_closure-reference?5504_
                                               _closure6186_
                                               _bindings6183_)))
                                         (if _$e6188_
                                             _$e6188_
                                             (let ((_$e6195_
                                                    (ormap1 (lambda (_g61906192_)
                                                              (_closure-reference?5504_
                                                               _closure6186_
                                                               _g61906192_))
                                                            _rest-bindings6182_)))
                                               (if _$e6195_
                                                   _$e6195_
                                                   (let ((_$e6202_
                                                          (ormap1 (lambda (_g61976199_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (_closure-reference?5504_
                             _closure6186_
                             _g61976199_))
                          _post-bindings6144_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _$e6202_
                                                         _$e6202_
                                                         (if (_is-effect-bind?5505_
                                                              _form6180_)
                                                             (find _is-effect-bind?5505_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _post-forms6143_)
                     '#f)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_lp6138_
                                        _rest-forms6179_
                                        _rest-bindings6182_
                                        _rest-closures6185_
                                        (cons _form6180_ _post-forms6143_)
                                        (cons _bindings6183_
                                              _post-bindings6144_)
                                        (cons _closure6186_
                                              _post-closures6145_)
                                        _pre-forms6146_
                                        _lifted?6147_)
                                       (_lp6138_
                                        _rest-forms6179_
                                        _rest-bindings6182_
                                        _rest-closures6185_
                                        _post-forms6143_
                                        _post-bindings6144_
                                        _post-closures6145_
                                        (cons _form6180_ _pre-forms6146_)
                                        '#t)))))
                            (if (##pair? _rest-closures61506168_)
                                (let ((_hd61576208_
                                       (##car _rest-closures61506168_))
                                      (_tl61586210_
                                       (##cdr _rest-closures61506168_)))
                                  (let ((_closure6213_ _hd61576208_))
                                    (let ((_rest-closures6215_ _tl61586210_))
                                      (_K61566205_
                                       _rest-closures6215_
                                       _closure6213_))))
                                (_else61526176_))))))
                   (if (##pair? _rest-bindings61496166_)
                       (let ((_hd61596220_ (##car _rest-bindings61496166_))
                             (_tl61606222_ (##cdr _rest-bindings61496166_)))
                         (let ((_bindings6225_ _hd61596220_))
                           (let ((_rest-bindings6227_ _tl61606222_))
                             (_K61556217_
                              _rest-bindings6227_
                              _bindings6225_))))
                       (_else61526176_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (##pair? _rest-forms61486164_)
                                                      (let ((_hd61616232_
                                                             (##car _rest-forms61486164_))
                                                            (_tl61626234_
                                                             (##cdr _rest-forms61486164_)))
                                                        (let ((_form6237_
                                                               _hd61616232_))
                                                          (let ((_rest-forms6239_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl61626234_))
                    (_K61546229_ _rest-forms6239_ _form6237_))))
              (_else61526176_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _lp6138_)
                              _hd6134_
                              _bindings6135_
                              _closures6136_
                              '()
                              '()
                              '()
                              '()
                              '#f))))
                      (let ((_lift-post5502_
                             (lambda (_hd6027_ _bindings6028_ _closures6029_)
                               ((letrec ((_lp6031_
                                          (lambda (_rest-forms6033_
                                                   _rest-bindings6034_
                                                   _rest-closures6035_
                                                   _pre-forms6036_
                                                   _pre-bindings6037_
                                                   _pre-closures6038_
                                                   _post-forms6039_
                                                   _lifted?6040_)
                                            (let ((_rest-forms60416057_
                                                   _rest-forms6033_)
                                                  (_rest-bindings60426059_
                                                   _rest-bindings6034_)
                                                  (_rest-closures60436061_
                                                   _rest-closures6035_))
                                              (let ((_E60466065_
                                                     (lambda ()
                                                       (error '"No clause matching"
                                                              _rest-forms60416057_
                                                              _rest-bindings60426059_
                                                              _rest-closures60436061_))))
                                                (let ((_else60456069_
                                                       (lambda ()
                                                         (if _lifted?6040_
                                                             (_lp6031_
                                                              (reverse _pre-forms6036_)
                                                              (reverse _pre-bindings6037_)
                                                              (reverse _pre-closures6038_)
                                                              '()
                                                              '()
                                                              '()
                                                              _post-forms6039_
                                                              '#f)
                                                             (values _post-forms6039_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _pre-forms6036_
                             _pre-bindings6037_
                             _pre-closures6038_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_K60476122_
                                                         (lambda (_rest-forms6072_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _form6073_)
                   (let ((_K60486110_
                          (lambda (_rest-bindings6075_ _bindings6076_)
                            (let ((_K60496098_
                                   (lambda (_rest-closures6078_ _closure6079_)
                                     (if (let ((_$e6081_
                                                (_closure-reference?5504_
                                                 _closure6079_
                                                 _bindings6076_)))
                                           (if _$e6081_
                                               _$e6081_
                                               (let ((_$e6088_
                                                      (ormap1 (lambda (_g60836085_)
                                                                (_closure-reference?5504_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g60836085_
                         _bindings6076_))
                      _rest-closures6078_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _$e6088_
                                                     _$e6088_
                                                     (let ((_$e6095_
                                                            (ormap1 (lambda (_g60906092_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (_closure-reference?5504_
                               _g60906092_
                               _bindings6076_))
                            _pre-closures6038_)))
               (if _$e6095_
                   _$e6095_
                   (if (_is-effect-bind?5505_ _form6073_)
                       (find _is-effect-bind?5505_ _pre-forms6036_)
                       '#f)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_lp6031_
                                          _rest-forms6072_
                                          _rest-bindings6075_
                                          _rest-closures6078_
                                          (cons _form6073_ _pre-forms6036_)
                                          (cons _bindings6076_
                                                _pre-bindings6037_)
                                          (cons _closure6079_
                                                _pre-closures6038_)
                                          _post-forms6039_
                                          _lifted?6040_)
                                         (_lp6031_
                                          _rest-forms6072_
                                          _rest-bindings6075_
                                          _rest-closures6078_
                                          _pre-forms6036_
                                          _pre-bindings6037_
                                          _pre-closures6038_
                                          (cons _form6073_ _post-forms6039_)
                                          '#t)))))
                              (if (##pair? _rest-closures60436061_)
                                  (let ((_hd60506101_
                                         (##car _rest-closures60436061_))
                                        (_tl60516103_
                                         (##cdr _rest-closures60436061_)))
                                    (let ((_closure6106_ _hd60506101_))
                                      (let ((_rest-closures6108_ _tl60516103_))
                                        (_K60496098_
                                         _rest-closures6108_
                                         _closure6106_))))
                                  (_else60456069_))))))
                     (if (##pair? _rest-bindings60426059_)
                         (let ((_hd60526113_ (##car _rest-bindings60426059_))
                               (_tl60536115_ (##cdr _rest-bindings60426059_)))
                           (let ((_bindings6118_ _hd60526113_))
                             (let ((_rest-bindings6120_ _tl60536115_))
                               (_K60486110_
                                _rest-bindings6120_
                                _bindings6118_))))
                         (_else60456069_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (##pair? _rest-forms60416057_)
                                                        (let ((_hd60546125_
                                                               (##car _rest-forms60416057_))
                                                              (_tl60556127_
                                                               (##cdr _rest-forms60416057_)))
                                                          (let ((_form6130_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd60546125_))
                    (let ((_rest-forms6132_ _tl60556127_))
                      (_K60476122_ _rest-forms6132_ _form6130_))))
                (_else60456069_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _lp6031_)
                                (reverse _hd6027_)
                                (reverse _bindings6028_)
                                (reverse _closures6029_)
                                '()
                                '()
                                '()
                                '()
                                '#f))))
                        (let ((_linearize5498_
                               (lambda (_forms6355_)
                                 (let ((_closures6357_
                                        (_collect-closures5499_ _forms6355_)))
                                   (let ((_bindings6359_
                                          (_collect-bindings5500_
                                           _forms6355_)))
                                     (let ((_g10164_
                                            (_lift-pre5501_
                                             _forms6355_
                                             _bindings6359_
                                             _closures6357_)))
                                       (begin
                                         (let ((_g10165_
                                                (values-count _g10164_)))
                                           (if (not (fx= _g10165_ 4))
                                               (error "Context expects 4 values"
                                                      _g10165_)))
                                         (let ((_pre-bind6361_
                                                (values-ref _g10164_ 0))
                                               (_forms6362_
                                                (values-ref _g10164_ 1))
                                               (_bindings6363_
                                                (values-ref _g10164_ 2))
                                               (_closures6364_
                                                (values-ref _g10164_ 3)))
                                           (let ((_g10166_
                                                  (_lift-post5502_
                                                   _forms6362_
                                                   _bindings6363_
                                                   _closures6364_)))
                                             (begin
                                               (let ((_g10167_
                                                      (values-count _g10166_)))
                                                 (if (not (fx= _g10167_ 4))
                                                     (error "Context expects 4 values"
                                                            _g10167_)))
                                               (let ((_post-bind6366_
                                                      (values-ref _g10166_ 0))
                                                     (_forms6367_
                                                      (values-ref _g10166_ 1))
                                                     (_bindings6368_
                                                      (values-ref _g10166_ 2))
                                                     (_closures6369_
                                                      (values-ref _g10166_ 3)))
                                                 (let ((_g10168_
                                                        (_lift-rec5503_
                                                         _forms6367_)))
                                                   (begin
                                                     (let ((_g10169_
                                                            (values-count
                                                             _g10168_)))
                                                       (if (not (fx= _g10169_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             3))
                   (error "Context expects 3 values" _g10169_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_rec-pre6371_
                                                            (values-ref
                                                             _g10168_
                                                             0))
                                                           (_rec-bind6372_
                                                            (values-ref
                                                             _g10168_
                                                             1))
                                                           (_rec-init6373_
                                                            (values-ref
                                                             _g10168_
                                                             2)))
                                                       (let ()
                                                         (values _pre-bind6361_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _rec-pre6371_
                         _rec-bind6372_
                         _rec-init6373_
                         _post-bind6366_))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (letrec ((_generate-let*5508_
                                    (lambda (_hd5595_ _body5596_)
                                      (let ((_hd55975605_ _hd5595_))
                                        (let ((_E56005609_
                                               (lambda ()
                                                 (error '"No clause matching"
                                                        _hd55975605_))))
                                          (let ((_else55995613_
                                                 (lambda () _body5596_)))
                                            (let ((_K56015654_
                                                   (lambda (_rest5616_
                                                            _bind5617_)
                                                     (let ((_bind56185627_
                                                            _bind5617_))
                                                       (let ((_E56205631_
                                                              (lambda ()
                                                                (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind56185627_))))
                 (let ((_K56215637_
                        (lambda (_expr5634_ _hd5635_)
                          (if (gx#stx-ormap gx#identifier? _hd5635_)
                              (gxc#generate-runtime-let-values%__opt-lambda6796
                               (cons '%#let-values
                                     (cons (cons _bind5617_ '())
                                           (cons (_generate-let*5508_
                                                  _rest5616_
                                                  _body5596_)
                                                 '())))
                               '#t)
                              (cons 'begin
                                    (cons (gxc#compile-e _expr5634_)
                                          (cons (_generate-let*5508_
                                                 _rest5616_
                                                 _body5596_)
                                                '())))))))
                   (if (##pair? _bind56185627_)
                       (let ((_hd56225640_ (##car _bind56185627_))
                             (_tl56235642_ (##cdr _bind56185627_)))
                         (let ((_hd5645_ _hd56225640_))
                           (if (##pair? _tl56235642_)
                               (let ((_hd56245647_ (##car _tl56235642_))
                                     (_tl56255649_ (##cdr _tl56235642_)))
                                 (let ((_expr5652_ _hd56245647_))
                                   (if (##null? _tl56255649_)
                                       (_K56215637_ _expr5652_ _hd5645_)
                                       (_E56205631_))))
                               (_E56205631_))))
                       (_E56205631_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##pair? _hd55975605_)
                                                  (let ((_hd56025657_
                                                         (##car _hd55975605_))
                                                        (_tl56035659_
                                                         (##cdr _hd55975605_)))
                                                    (let ((_bind5662_
                                                           _hd56025657_))
                                                      (let ((_rest5664_
                                                             _tl56035659_))
                                                        (_K56015654_
                                                         _rest5664_
                                                         _bind5662_))))
                                                  (_else55995613_)))))))))
                            (let ((_g55105527_
                                   (lambda (_g55115524_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g55115524_))))
                              (let ((_g55095592_
                                     (lambda (_g55115530_)
                                       (if (gx#stx-pair? _g55115530_)
                                           (let ((_e55145532_
                                                  (gx#stx-e _g55115530_)))
                                             (let ((_hd55155535_
                                                    (##car _e55145532_))
                                                   (_tl55165537_
                                                    (##cdr _e55145532_)))
                                               (if (gx#stx-pair? _tl55165537_)
                                                   (let ((_e55175540_
                                                          (gx#stx-e
                                                           _tl55165537_)))
                                                     (let ((_hd55185543_
                                                            (##car _e55175540_))
                                                           (_tl55195545_
                                                            (##cdr _e55175540_)))
                                                       (if (gx#stx-pair?
                                                            _tl55195545_)
                                                           (let ((_e55205548_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl55195545_)))
                     (let ((_hd55215551_ (##car _e55205548_))
                           (_tl55225553_ (##cdr _e55205548_)))
                       (if (gx#stx-null? _tl55225553_)
                           ((lambda (_L5556_ _L5557_)
                              (let ((_g10162_ (_linearize5498_ _L5557_)))
                                (begin
                                  (let ((_g10163_ (values-count _g10162_)))
                                    (if (not (fx= _g10163_ 5))
                                        (error "Context expects 5 values"
                                               _g10163_)))
                                  (let ((_pre5573_ (values-ref _g10162_ 0))
                                        (_rec-pre5574_ (values-ref _g10162_ 1))
                                        (_rec-bind5575_
                                         (values-ref _g10162_ 2))
                                        (_rec-init5576_
                                         (values-ref _g10162_ 3))
                                        (_post5577_ (values-ref _g10162_ 4)))
                                    (let ((_body5579_ (gxc#compile-e _L5556_)))
                                      (let ((_body5581_
                                             (if (null? _post5577_)
                                                 _body5579_
                                                 (_generate-let*5508_
                                                  _post5577_
                                                  _body5579_))))
                                        (let ((_body5583_
                                               (if (null? _rec-init5576_)
                                                   _body5581_
                                                   (cons 'begin
                                                         (foldr1 cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _body5581_ '())
                         _rec-init5576_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ((_body5585_
                                                 (if (null? _rec-bind5575_)
                                                     _body5583_
                                                     (cons 'letrec
                                                           (cons _rec-bind5575_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _body5583_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_body5587_
                                                   (if (null? _rec-pre5574_)
                                                       _body5585_
                                                       (cons 'let
                                                             (cons _rec-pre5574_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _body5585_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_body5589_
                                                     (if (null? _pre5573_)
                                                         _body5587_
                                                         (_generate-let*5508_
                                                          _pre5573_
                                                          _body5587_))))
                                                (let () _body5589_)))))))))))
                            _hd55215551_
                            _hd55185543_)
                           (_g55105527_ _g55115530_))))
                   (_g55105527_ _g55115530_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g55105527_ _g55115530_))))
                                           (_g55105527_ _g55115530_)))))
                                (_g55095592_ _stx5496_))))))))))))))))
  (define gxc#generate-runtime-simple-let?
    (lambda (_hd5389_)
      ((letrec ((_lp5391_
                 (lambda (_rest5393_)
                   (let ((_g53975418_
                          (lambda (_g53985415_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g53985415_))))
                     (let ((_g53965425_
                            (lambda (_g53985421_) ((lambda () '#f)))))
                       (let ((_g53955432_
                              (lambda (_g53985428_)
                                (if (gx#stx-null? _g53985428_)
                                    ((lambda () '#t))
                                    (_g53965425_ _g53985428_)))))
                         (let ((_g53945493_
                                (lambda (_g53985435_)
                                  (if (gx#stx-pair? _g53985435_)
                                      (let ((_e54025437_
                                             (gx#stx-e _g53985435_)))
                                        (let ((_hd54035440_
                                               (##car _e54025437_))
                                              (_tl54045442_
                                               (##cdr _e54025437_)))
                                          (if (gx#stx-pair? _hd54035440_)
                                              (let ((_e54055445_
                                                     (gx#stx-e _hd54035440_)))
                                                (let ((_hd54065448_
                                                       (##car _e54055445_))
                                                      (_tl54075450_
                                                       (##cdr _e54055445_)))
                                                  (if (gx#stx-pair?
                                                       _hd54065448_)
                                                      (let ((_e54085453_
                                                             (gx#stx-e
                                                              _hd54065448_)))
                                                        (let ((_hd54095456_
                                                               (##car _e54085453_))
                                                              (_tl54105458_
                                                               (##cdr _e54085453_)))
                                                          (if (gx#stx-null?
                                                               _tl54105458_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl54075450_)
                          (let ((_e54115461_ (gx#stx-e _tl54075450_)))
                            (let ((_hd54125464_ (##car _e54115461_))
                                  (_tl54135466_ (##cdr _e54115461_)))
                              (if (gx#stx-null? _tl54135466_)
                                  ((lambda (_L5469_ _L5470_ _L5471_)
                                     (_lp5391_ _L5469_))
                                   _tl54045442_
                                   _hd54125464_
                                   _hd54095456_)
                                  (_g53955432_ _g53985435_))))
                          (_g53955432_ _g53985435_))
                      (_g53955432_ _g53985435_))))
              (_g53955432_ _g53985435_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g53955432_ _g53985435_))))
                                      (_g53955432_ _g53985435_)))))
                           (_g53945493_ _rest5393_))))))))
         _lp5391_)
       _hd5389_)))
  (define gxc#generate-runtime-simple-let
    (lambda (_form5313_ _hd5314_ _body5315_ _compiled-body?5316_)
      (let ((_generate15318_
             (lambda (_bind5320_)
               (let ((_g53225339_
                      (lambda (_g53235336_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g53235336_))))
                 (let ((_g53215386_
                        (lambda (_g53235342_)
                          (if (gx#stx-pair? _g53235342_)
                              (let ((_e53265344_ (gx#stx-e _g53235342_)))
                                (let ((_hd53275347_ (##car _e53265344_))
                                      (_tl53285349_ (##cdr _e53265344_)))
                                  (if (gx#stx-pair? _hd53275347_)
                                      (let ((_e53295352_
                                             (gx#stx-e _hd53275347_)))
                                        (let ((_hd53305355_
                                               (##car _e53295352_))
                                              (_tl53315357_
                                               (##cdr _e53295352_)))
                                          (if (gx#stx-null? _tl53315357_)
                                              (if (gx#stx-pair? _tl53285349_)
                                                  (let ((_e53325360_
                                                         (gx#stx-e
                                                          _tl53285349_)))
                                                    (let ((_hd53335363_
                                                           (##car _e53325360_))
                                                          (_tl53345365_
                                                           (##cdr _e53325360_)))
                                                      (if (gx#stx-null?
                                                           _tl53345365_)
                                                          ((lambda (_L5368_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L5369_)
                     (cons (gxc#generate-runtime-binding-id* _L5369_)
                           (cons (gxc#compile-e _L5368_) '())))
                   _hd53335363_
                   _hd53305355_)
                  (_g53225339_ _g53235342_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g53225339_ _g53235342_))
                                              (_g53225339_ _g53235342_))))
                                      (_g53225339_ _g53235342_))))
                              (_g53225339_ _g53235342_)))))
                   (_g53215386_ _bind5320_))))))
        (cons _form5313_
              (cons (map _generate15318_ _hd5314_)
                    (cons (if _compiled-body?5316_
                              _body5315_
                              (gxc#compile-e _body5315_))
                          '()))))))
  (define gxc#generate-runtime-quote%
    (lambda (_stx5224_)
      (letrec ((_generate15226_
                (lambda (_datum5278_)
                  (if (let ((_$e5280_ (null? _datum5278_)))
                        (if _$e5280_
                            _$e5280_
                            (let ((_$e5283_ (interned-symbol? _datum5278_)))
                              (if _$e5283_
                                  _$e5283_
                                  (gx#self-quoting? _datum5278_)))))
                      _datum5278_
                      (if (uninterned-symbol? _datum5278_)
                          (gxc#generate-runtime-gensym-reference__opt-lambda9107
                           _datum5278_
                           '#t)
                          (if (pair? _datum5278_)
                              (cons (_generate15226_ (car _datum5278_))
                                    (_generate15226_ (cdr _datum5278_)))
                              (if (box? _datum5278_)
                                  (box (_generate15226_ (unbox _datum5278_)))
                                  (if (vector? _datum5278_)
                                      (vector-map _generate15226_ _datum5278_)
                                      (if (let ((_$e5286_
                                                 (s8vector? _datum5278_)))
                                            (if _$e5286_
                                                _$e5286_
                                                (let ((_$e5289_
                                                       (u8vector?
                                                        _datum5278_)))
                                                  (if _$e5289_
                                                      _$e5289_
                                                      (let ((_$e5292_
                                                             (s16vector?
                                                              _datum5278_)))
                                                        (if _$e5292_
                                                            _$e5292_
                                                            (let ((_$e5295_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (u16vector? _datum5278_)))
                      (if _$e5295_
                          _$e5295_
                          (let ((_$e5298_ (s32vector? _datum5278_)))
                            (if _$e5298_
                                _$e5298_
                                (let ((_$e5301_ (u32vector? _datum5278_)))
                                  (if _$e5301_
                                      _$e5301_
                                      (let ((_$e5304_
                                             (s64vector? _datum5278_)))
                                        (if _$e5304_
                                            _$e5304_
                                            (let ((_$e5307_
                                                   (u64vector? _datum5278_)))
                                              (if _$e5307_
                                                  _$e5307_
                                                  (let ((_$e5310_
                                                         (f32vector?
                                                          _datum5278_)))
                                                    (if _$e5310_
                                                        _$e5310_
                                                        (f64vector?
                                                         _datum5278_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _datum5278_
                                          (gxc#raise-compile-error
                                           '"Cannot compile non-primitive quote"
                                           _stx5224_))))))))))
        (let ((_g52285241_
               (lambda (_g52295238_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g52295238_))))
          (let ((_g52275275_
                 (lambda (_g52295244_)
                   (if (gx#stx-pair? _g52295244_)
                       (let ((_e52315246_ (gx#stx-e _g52295244_)))
                         (let ((_hd52325249_ (##car _e52315246_))
                               (_tl52335251_ (##cdr _e52315246_)))
                           (if (gx#stx-pair? _tl52335251_)
                               (let ((_e52345254_ (gx#stx-e _tl52335251_)))
                                 (let ((_hd52355257_ (##car _e52345254_))
                                       (_tl52365259_ (##cdr _e52345254_)))
                                   (if (gx#stx-null? _tl52365259_)
                                       ((lambda (_L5262_)
                                          (cons 'quote
                                                (cons (_generate15226_
                                                       (gx#stx-e _L5262_))
                                                      '())))
                                        _hd52355257_)
                                       (_g52285241_ _g52295244_))))
                               (_g52285241_ _g52295244_))))
                       (_g52285241_ _g52295244_)))))
            (_g52275275_ _stx5224_))))))
  (define gxc#generate-runtime-call%
    (lambda (_stx5186_)
      (let ((_g51885198_
             (lambda (_g51895195_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g51895195_))))
        (let ((_g51875221_
               (lambda (_g51895201_)
                 (if (gx#stx-pair? _g51895201_)
                     (let ((_e51915203_ (gx#stx-e _g51895201_)))
                       (let ((_hd51925206_ (##car _e51915203_))
                             (_tl51935208_ (##cdr _e51915203_)))
                         ((lambda (_L5211_) (map gxc#compile-e _L5211_))
                          _tl51935208_)))
                     (_g51885198_ _g51895201_)))))
          (_g51875221_ _stx5186_)))))
  (define gxc#generate-runtime-if%
    (lambda (_stx5148_)
      (let ((_g51505160_
             (lambda (_g51515157_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g51515157_))))
        (let ((_g51495183_
               (lambda (_g51515163_)
                 (if (gx#stx-pair? _g51515163_)
                     (let ((_e51535165_ (gx#stx-e _g51515163_)))
                       (let ((_hd51545168_ (##car _e51535165_))
                             (_tl51555170_ (##cdr _e51535165_)))
                         ((lambda (_L5173_)
                            (cons 'if (map gxc#compile-e _L5173_)))
                          _tl51555170_)))
                     (_g51505160_ _g51515163_)))))
          (_g51495183_ _stx5148_)))))
  (define gxc#generate-runtime-ref%
    (lambda (_stx5097_)
      (let ((_g50995112_
             (lambda (_g51005109_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g51005109_))))
        (let ((_g50985145_
               (lambda (_g51005115_)
                 (if (gx#stx-pair? _g51005115_)
                     (let ((_e51025117_ (gx#stx-e _g51005115_)))
                       (let ((_hd51035120_ (##car _e51025117_))
                             (_tl51045122_ (##cdr _e51025117_)))
                         (if (gx#stx-pair? _tl51045122_)
                             (let ((_e51055125_ (gx#stx-e _tl51045122_)))
                               (let ((_hd51065128_ (##car _e51055125_))
                                     (_tl51075130_ (##cdr _e51055125_)))
                                 (if (gx#stx-null? _tl51075130_)
                                     ((lambda (_L5133_)
                                        (gxc#generate-runtime-binding-id
                                         _L5133_))
                                      _hd51065128_)
                                     (_g50995112_ _g51005115_))))
                             (_g50995112_ _g51005115_))))
                     (_g50995112_ _g51005115_)))))
          (_g50985145_ _stx5097_)))))
  (define gxc#generate-runtime-setq%
    (lambda (_stx5030_)
      (let ((_g50325049_
             (lambda (_g50335046_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g50335046_))))
        (let ((_g50315094_
               (lambda (_g50335052_)
                 (if (gx#stx-pair? _g50335052_)
                     (let ((_e50365054_ (gx#stx-e _g50335052_)))
                       (let ((_hd50375057_ (##car _e50365054_))
                             (_tl50385059_ (##cdr _e50365054_)))
                         (if (gx#stx-pair? _tl50385059_)
                             (let ((_e50395062_ (gx#stx-e _tl50385059_)))
                               (let ((_hd50405065_ (##car _e50395062_))
                                     (_tl50415067_ (##cdr _e50395062_)))
                                 (if (gx#stx-pair? _tl50415067_)
                                     (let ((_e50425070_
                                            (gx#stx-e _tl50415067_)))
                                       (let ((_hd50435073_ (##car _e50425070_))
                                             (_tl50445075_
                                              (##cdr _e50425070_)))
                                         (if (gx#stx-null? _tl50445075_)
                                             ((lambda (_L5078_ _L5079_)
                                                (cons 'set!
                                                      (cons (gxc#generate-runtime-binding-id
                                                             _L5079_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L5078_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd50435073_
                                              _hd50405065_)
                                             (_g50325049_ _g50335052_))))
                                     (_g50325049_ _g50335052_))))
                             (_g50325049_ _g50335052_))))
                     (_g50325049_ _g50335052_)))))
          (_g50315094_ _stx5030_)))))
  (define gxc#generate-runtime-struct-instancep%
    (lambda (_stx4963_)
      (let ((_g49654982_
             (lambda (_g49664979_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g49664979_))))
        (let ((_g49645027_
               (lambda (_g49664985_)
                 (if (gx#stx-pair? _g49664985_)
                     (let ((_e49694987_ (gx#stx-e _g49664985_)))
                       (let ((_hd49704990_ (##car _e49694987_))
                             (_tl49714992_ (##cdr _e49694987_)))
                         (if (gx#stx-pair? _tl49714992_)
                             (let ((_e49724995_ (gx#stx-e _tl49714992_)))
                               (let ((_hd49734998_ (##car _e49724995_))
                                     (_tl49745000_ (##cdr _e49724995_)))
                                 (if (gx#stx-pair? _tl49745000_)
                                     (let ((_e49755003_
                                            (gx#stx-e _tl49745000_)))
                                       (let ((_hd49765006_ (##car _e49755003_))
                                             (_tl49775008_
                                              (##cdr _e49755003_)))
                                         (if (gx#stx-null? _tl49775008_)
                                             ((lambda (_L5011_ _L5012_)
                                                (cons '##structure-instance-of?
                                                      (cons (gxc#compile-e
                                                             _L5011_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L5012_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd49765006_
                                              _hd49734998_)
                                             (_g49654982_ _g49664985_))))
                                     (_g49654982_ _g49664985_))))
                             (_g49654982_ _g49664985_))))
                     (_g49654982_ _g49664985_)))))
          (_g49645027_ _stx4963_)))))
  (define gxc#generate-runtime-struct-direct-instancep%
    (lambda (_stx4896_)
      (let ((_g48984915_
             (lambda (_g48994912_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g48994912_))))
        (let ((_g48974960_
               (lambda (_g48994918_)
                 (if (gx#stx-pair? _g48994918_)
                     (let ((_e49024920_ (gx#stx-e _g48994918_)))
                       (let ((_hd49034923_ (##car _e49024920_))
                             (_tl49044925_ (##cdr _e49024920_)))
                         (if (gx#stx-pair? _tl49044925_)
                             (let ((_e49054928_ (gx#stx-e _tl49044925_)))
                               (let ((_hd49064931_ (##car _e49054928_))
                                     (_tl49074933_ (##cdr _e49054928_)))
                                 (if (gx#stx-pair? _tl49074933_)
                                     (let ((_e49084936_
                                            (gx#stx-e _tl49074933_)))
                                       (let ((_hd49094939_ (##car _e49084936_))
                                             (_tl49104941_
                                              (##cdr _e49084936_)))
                                         (if (gx#stx-null? _tl49104941_)
                                             ((lambda (_L4944_ _L4945_)
                                                (cons '##structure-direct-instance-of?
                                                      (cons (gxc#compile-e
                                                             _L4944_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L4945_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd49094939_
                                              _hd49064931_)
                                             (_g48984915_ _g48994918_))))
                                     (_g48984915_ _g48994918_))))
                             (_g48984915_ _g48994918_))))
                     (_g48984915_ _g48994918_)))))
          (_g48974960_ _stx4896_)))))
  (define gxc#generate-runtime-struct-ref%
    (lambda (_stx4813_)
      (let ((_g48154836_
             (lambda (_g48164833_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g48164833_))))
        (let ((_g48144893_
               (lambda (_g48164839_)
                 (if (gx#stx-pair? _g48164839_)
                     (let ((_e48204841_ (gx#stx-e _g48164839_)))
                       (let ((_hd48214844_ (##car _e48204841_))
                             (_tl48224846_ (##cdr _e48204841_)))
                         (if (gx#stx-pair? _tl48224846_)
                             (let ((_e48234849_ (gx#stx-e _tl48224846_)))
                               (let ((_hd48244852_ (##car _e48234849_))
                                     (_tl48254854_ (##cdr _e48234849_)))
                                 (if (gx#stx-pair? _tl48254854_)
                                     (let ((_e48264857_
                                            (gx#stx-e _tl48254854_)))
                                       (let ((_hd48274860_ (##car _e48264857_))
                                             (_tl48284862_
                                              (##cdr _e48264857_)))
                                         (if (gx#stx-pair? _tl48284862_)
                                             (let ((_e48294865_
                                                    (gx#stx-e _tl48284862_)))
                                               (let ((_hd48304868_
                                                      (##car _e48294865_))
                                                     (_tl48314870_
                                                      (##cdr _e48294865_)))
                                                 (if (gx#stx-null?
                                                      _tl48314870_)
                                                     ((lambda (_L4873_
                                                               _L4874_
                                                               _L4875_)
                                                        (cons '##structure-ref
                                                              (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L4873_)
                            (cons (gxc#compile-e _L4874_)
                                  (cons (gxc#compile-e _L4875_)
                                        (cons ''#f '()))))))
              _hd48304868_
              _hd48274860_
              _hd48244852_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g48154836_
                                                      _g48164839_))))
                                             (_g48154836_ _g48164839_))))
                                     (_g48154836_ _g48164839_))))
                             (_g48154836_ _g48164839_))))
                     (_g48154836_ _g48164839_)))))
          (_g48144893_ _stx4813_)))))
  (define gxc#generate-runtime-struct-setq%
    (lambda (_stx4714_)
      (let ((_g47164741_
             (lambda (_g47174738_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g47174738_))))
        (let ((_g47154810_
               (lambda (_g47174744_)
                 (if (gx#stx-pair? _g47174744_)
                     (let ((_e47224746_ (gx#stx-e _g47174744_)))
                       (let ((_hd47234749_ (##car _e47224746_))
                             (_tl47244751_ (##cdr _e47224746_)))
                         (if (gx#stx-pair? _tl47244751_)
                             (let ((_e47254754_ (gx#stx-e _tl47244751_)))
                               (let ((_hd47264757_ (##car _e47254754_))
                                     (_tl47274759_ (##cdr _e47254754_)))
                                 (if (gx#stx-pair? _tl47274759_)
                                     (let ((_e47284762_
                                            (gx#stx-e _tl47274759_)))
                                       (let ((_hd47294765_ (##car _e47284762_))
                                             (_tl47304767_
                                              (##cdr _e47284762_)))
                                         (if (gx#stx-pair? _tl47304767_)
                                             (let ((_e47314770_
                                                    (gx#stx-e _tl47304767_)))
                                               (let ((_hd47324773_
                                                      (##car _e47314770_))
                                                     (_tl47334775_
                                                      (##cdr _e47314770_)))
                                                 (if (gx#stx-pair?
                                                      _tl47334775_)
                                                     (let ((_e47344778_
                                                            (gx#stx-e
                                                             _tl47334775_)))
                                                       (let ((_hd47354781_
                                                              (##car _e47344778_))
                                                             (_tl47364783_
                                                              (##cdr _e47344778_)))
                                                         (if (gx#stx-null?
                                                              _tl47364783_)
                                                             ((lambda (_L4786_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L4787_
                               _L4788_
                               _L4789_)
                        (cons '##structure-set!
                              (cons (gxc#compile-e _L4787_)
                                    (cons (gxc#compile-e _L4786_)
                                          (cons (gxc#compile-e _L4788_)
                                                (cons (gxc#compile-e _L4789_)
                                                      (cons ''#f '())))))))
                      _hd47354781_
                      _hd47324773_
                      _hd47294765_
                      _hd47264757_)
                     (_g47164741_ _g47174744_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g47164741_
                                                      _g47174744_))))
                                             (_g47164741_ _g47174744_))))
                                     (_g47164741_ _g47174744_))))
                             (_g47164741_ _g47174744_))))
                     (_g47164741_ _g47174744_)))))
          (_g47154810_ _stx4714_)))))
  (define gxc#generate-runtime-loader-import%
    (lambda (_stx4623_)
      (let ((_g46254635_
             (lambda (_g46264632_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g46264632_))))
        (let ((_g46244711_
               (lambda (_g46264638_)
                 (if (gx#stx-pair? _g46264638_)
                     (let ((_e46284640_ (gx#stx-e _g46264638_)))
                       (let ((_hd46294643_ (##car _e46284640_))
                             (_tl46304645_ (##cdr _e46284640_)))
                         ((lambda (_L4648_)
                            (let ((_ht4658_ (make-hash-table-eq)))
                              ((letrec ((_lp4660_
                                         (lambda (_rest4662_ _loads4663_)
                                           (let ((_K4665_ (lambda (_ctx4704_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _rest4705_)
                    (let ((_id4707_
                           (##structure-ref
                            _ctx4704_
                            '1
                            gx#expander-context::t
                            '#f)))
                      (if (table-ref _ht4658_ _id4707_ '#f)
                          (_lp4660_ _rest4705_ _loads4663_)
                          (let ((_rt4709_
                                 (string-append
                                  (symbol->string _id4707_)
                                  '"__rt")))
                            (begin
                              (table-set! _ht4658_ _id4707_ _rt4709_)
                              (_lp4660_
                               _rest4705_
                               (cons _rt4709_ _loads4663_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_rest46664674_ _rest4662_))
                                               (let ((_E46694678_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _rest46664674_))))
                                                 (let ((_else46684686_
                                                        (lambda ()
                                                          (cons 'begin
                                                                (map (lambda (_g46814683_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (list 'load-module _g46814683_))
                             (reverse _loads4663_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_K46704692_
                                                          (lambda (_rest4689_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _in4690_)
                    (if (##structure-instance-of?
                         _in4690_
                         'gx#module-context::t)
                        (_K4665_ _in4690_ _rest4689_)
                        (if (##structure-direct-instance-of?
                             _in4690_
                             'gx#module-import::t)
                            (if (fxpositive?
                                 (##structure-ref
                                  _in4690_
                                  '3
                                  gx#module-import::t
                                  '#f))
                                (_lp4660_ _rest4689_ _loads4663_)
                                (_K4665_ (##structure-ref
                                          (##structure-ref
                                           _in4690_
                                           '1
                                           gx#module-import::t
                                           '#f)
                                          '1
                                          gx#module-export::t
                                          '#f)
                                         _rest4689_))
                            (if (##structure-direct-instance-of?
                                 _in4690_
                                 'gx#import-set::t)
                                (if (fxpositive?
                                     (##structure-ref
                                      _in4690_
                                      '2
                                      gx#import-set::t
                                      '#f))
                                    (_lp4660_ _rest4689_ _loads4663_)
                                    (_K4665_ (##structure-ref
                                              _in4690_
                                              '1
                                              gx#import-set::t
                                              '#f)
                                             _rest4689_))
                                (gxc#raise-compile-error
                                 '"Unexpected import"
                                 _stx4623_
                                 _in4690_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##pair? _rest46664674_)
                                                         (let ((_hd46714695_
                                                                (##car _rest46664674_))
                                                               (_tl46724697_
                                                                (##cdr _rest46664674_)))
                                                           (let ((_in4700_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd46714695_))
                     (let ((_rest4702_ _tl46724697_))
                       (_K46704692_ _rest4702_ _in4700_))))
                 (_else46684686_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _lp4660_)
                               _L4648_
                               '())))
                          _tl46304645_)))
                     (_g46254635_ _g46264638_)))))
          (_g46244711_ _stx4623_)))))
  (define gxc#generate-runtime-phi-quote-syntax%
    (lambda (_stx4564_)
      (let ((_generate-quote4566_
             (lambda (_q4621_)
               (if (gx#identifier? _q4621_)
                   (gxc#generate-runtime-identifier _q4621_)
                   (gxc#raise-compile-error
                    '"Cannot quote non-identifier syntax"
                    _stx4564_
                    _q4621_)))))
        (let ((_g45684581_
               (lambda (_g45694578_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g45694578_))))
          (let ((_g45674618_
                 (lambda (_g45694584_)
                   (if (gx#stx-pair? _g45694584_)
                       (let ((_e45714586_ (gx#stx-e _g45694584_)))
                         (let ((_hd45724589_ (##car _e45714586_))
                               (_tl45734591_ (##cdr _e45714586_)))
                           (if (gx#stx-pair? _tl45734591_)
                               (let ((_e45744594_ (gx#stx-e _tl45734591_)))
                                 (let ((_hd45754597_ (##car _e45744594_))
                                       (_tl45764599_ (##cdr _e45744594_)))
                                   (if (gx#stx-null? _tl45764599_)
                                       ((lambda (_L4602_)
                                          (let ((_gid4615_
                                                 (gxc#generate-runtime-temporary__opt-lambda9053
                                                  '#t))
                                                (_quote-e4616_
                                                 (_generate-quote4566_
                                                  _L4602_)))
                                            (begin
                                              (set-box!
                                               (gxc#current-compile-lift)
                                               (cons (cons 'define
                                                           (cons _gid4615_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'gx#core-quote-syntax
                                     (cons (cons 'quote
                                                 (cons _quote-e4616_ '()))
                                           '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (unbox (gxc#current-compile-lift))))
                                              _gid4615_)))
                                        _hd45754597_)
                                       (_g45684581_ _g45694584_))))
                               (_g45684581_ _g45694584_))))
                       (_g45684581_ _g45694584_)))))
            (_g45674618_ _stx4564_))))))
  (define gxc#generate-runtime-phi-define-runtime%
    (lambda (_stx4497_)
      (let ((_g44994516_
             (lambda (_g45004513_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g45004513_))))
        (let ((_g44984561_
               (lambda (_g45004519_)
                 (if (gx#stx-pair? _g45004519_)
                     (let ((_e45034521_ (gx#stx-e _g45004519_)))
                       (let ((_hd45044524_ (##car _e45034521_))
                             (_tl45054526_ (##cdr _e45034521_)))
                         (if (gx#stx-pair? _tl45054526_)
                             (let ((_e45064529_ (gx#stx-e _tl45054526_)))
                               (let ((_hd45074532_ (##car _e45064529_))
                                     (_tl45084534_ (##cdr _e45064529_)))
                                 (if (gx#stx-pair? _tl45084534_)
                                     (let ((_e45094537_
                                            (gx#stx-e _tl45084534_)))
                                       (let ((_hd45104540_ (##car _e45094537_))
                                             (_tl45114542_
                                              (##cdr _e45094537_)))
                                         (if (gx#stx-null? _tl45114542_)
                                             ((lambda (_L4545_ _L4546_)
                                                (cons 'define
                                                      (cons (gx#stx-e _L4546_)
                                                            (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L4545_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd45104540_
                                              _hd45074532_)
                                             (_g44994516_ _g45004519_))))
                                     (_g44994516_ _g45004519_))))
                             (_g44994516_ _g45004519_))))
                     (_g44994516_ _g45004519_)))))
          (_g44984561_ _stx4497_)))))
  (define gxc#generate-meta-begin%
    (lambda (_stx4446_ _state4447_)
      (let ((_g44494459_
             (lambda (_g44504456_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g44504456_))))
        (let ((_g44484494_
               (lambda (_g44504462_)
                 (if (gx#stx-pair? _g44504462_)
                     (let ((_e44524464_ (gx#stx-e _g44504462_)))
                       (let ((_hd44534467_ (##car _e44524464_))
                             (_tl44544469_ (##cdr _e44524464_)))
                         ((lambda (_L4472_)
                            (let ((_c-body4486_
                                   (map (lambda (_g44814483_)
                                          (gxc#compile-e
                                           _g44814483_
                                           _state4447_))
                                        _L4472_)))
                              (let ((_c-body4491_
                                     (filter (lambda (_$obj4488_)
                                               (not (eq? _$obj4488_ '#!void)))
                                             _c-body4486_)))
                                (let () (cons '%#begin _c-body4491_)))))
                          _tl44544469_)))
                     (_g44494459_ _g44504462_)))))
          (_g44484494_ _stx4446_)))))
  (define gxc#generate-meta-begin-syntax%
    (lambda (_stx4354_ _state4355_)
      (let ((_g43574367_
             (lambda (_g43584364_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g43584364_))))
        (let ((_g43564443_
               (lambda (_g43584370_)
                 (if (gx#stx-pair? _g43584370_)
                     (let ((_e43604372_ (gx#stx-e _g43584370_)))
                       (let ((_hd43614375_ (##car _e43604372_))
                             (_tl43624377_ (##cdr _e43604372_)))
                         ((lambda (_L4380_)
                            (let ((_phi4390_
                                   (fx+ (gx#current-expander-phi) '1)))
                              (let ((_block4392_
                                     (gxc#meta-state-begin-phi!
                                      _state4355_
                                      _phi4390_)))
                                (let ((_compiled4395_
                                       (call-with-parameters
                                        (lambda ()
                                          (gxc#apply-generate-meta-phi
                                           (cons (gx#datum->syntax__0
                                                  '#f
                                                  '%#begin)
                                                 _L4380_)
                                           _state4355_))
                                        gx#current-expander-phi
                                        _phi4390_)))
                                  (let ()
                                    (let ((_g43984408_
                                           (lambda (_g43994405_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g43994405_))))
                                      (let ((_g43974440_
                                             (lambda (_g43994411_)
                                               (if (gx#stx-pair? _g43994411_)
                                                   (let ((_e44014413_
                                                          (gx#stx-e
                                                           _g43994411_)))
                                                     (let ((_hd44024416_
                                                            (##car _e44014413_))
                                                           (_tl44034418_
                                                            (##cdr _e44014413_)))
                                                       (if (gx#identifier?
                                                            _hd44024416_)
                                                           (if (gx#stx-eq?
                                                                '%#begin
                                                                _hd44024416_)
                                                               ((lambda (_L4421_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_c-body4438_
                                 (filter (lambda (_$obj4435_)
                                           (not (eq? _$obj4435_ '#!void)))
                                         _L4421_)))
                            (if _block4392_
                                (cons '%#begin-syntax
                                      (cons (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote (cons _block4392_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _c-body4438_))
                                (if (null? _c-body4438_)
                                    '#!void
                                    (cons '%#begin-syntax _c-body4438_)))))
                        _tl44034418_)
                       (_g43984408_ _g43994411_))
                   (_g43984408_ _g43994411_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g43984408_
                                                    _g43994411_)))))
                                        (_g43974440_ _compiled4395_))))))))
                          _tl43624377_)))
                     (_g43574367_ _g43584370_)))))
          (_g43564443_ _stx4354_)))))
  (define gxc#generate-meta-module%
    (lambda (_stx4285_ _state4286_)
      (begin
        (gxc#meta-state-end-phi! _state4286_)
        (let ((_g42884302_
               (lambda (_g42894299_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g42894299_))))
          (let ((_g42874351_
                 (lambda (_g42894305_)
                   (if (gx#stx-pair? _g42894305_)
                       (let ((_e42924307_ (gx#stx-e _g42894305_)))
                         (let ((_hd42934310_ (##car _e42924307_))
                               (_tl42944312_ (##cdr _e42924307_)))
                           (if (gx#stx-pair? _tl42944312_)
                               (let ((_e42954315_ (gx#stx-e _tl42944312_)))
                                 (let ((_hd42964318_ (##car _e42954315_))
                                       (_tl42974320_ (##cdr _e42954315_)))
                                   ((lambda (_L4323_ _L4324_)
                                      (let ((_key4337_
                                             (gx#core-identifier-key _L4324_)))
                                        (begin
                                          (if (interned-symbol? _key4337_)
                                              '#!void
                                              (gxc#raise-compile-error
                                               '"Cannot compile module with uninterned id"
                                               _stx4285_
                                               _L4324_
                                               _key4337_))
                                          (let ((_ctx4339_
                                                 (gx#syntax-local-e__0
                                                  _L4324_)))
                                            (let ((_code4342_
                                                   (call-with-parameters
                                                    (lambda ()
                                                      (gxc#compile-e
                                                       (##structure-ref
                                                        _ctx4339_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)
                                                       _state4286_))
                                                    gx#current-expander-context
                                                    _ctx4339_)))
                                              (let ((_rt4344_
                                                     (table-ref
                                                      (gxc#current-compile-runtime-sections)
                                                      _ctx4339_
                                                      '#f)))
                                                (let ((_loader4346_
                                                       (if _rt4344_
                                                           (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons '%#ref (cons '_gx#load-module '()))
                                     (cons (cons '%#quote (cons _rt4344_ '()))
                                           '())))
                         '())
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_modid4348_
                                                         (gx#stx-e _L4324_)))
                                                    (let ()
                                                      (begin
                                                        (gxc#meta-state-end-phi!
                                                         _state4286_)
                                                        (cons '%#module
                                                              (cons _modid4348_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _code4342_ _loader4346_)))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _tl42974320_
                                    _hd42964318_)))
                               (_g42884302_ _g42894305_))))
                       (_g42884302_ _g42894305_)))))
            (_g42874351_ _stx4285_))))))
  (define gxc#generate-meta-import-path
    (lambda (_ctx4275_ _context-chain4276_)
      ((letrec ((_lp4278_
                 (lambda (_ctx4280_ _path4281_)
                   (let ((_super4283_
                          (##structure-ref
                           _ctx4280_
                           '3
                           gx#phi-context::t
                           '#f)))
                     (if (memq _super4283_ _context-chain4276_)
                         (cons* '#f
                                (car (##structure-ref
                                      _ctx4280_
                                      '7
                                      gx#module-context::t
                                      '#f))
                                _path4281_)
                         (if (##structure-instance-of?
                              _super4283_
                              'gx#module-context::t)
                             (_lp4278_
                              _super4283_
                              (cons (car (##structure-ref
                                          _ctx4280_
                                          '7
                                          gx#module-context::t
                                          '#f))
                                    _path4281_))
                             (cons (make-symbol
                                    '":"
                                    (##structure-ref
                                     _ctx4280_
                                     '1
                                     gx#expander-context::t
                                     '#f))
                                   _path4281_)))))))
         _lp4278_)
       _ctx4275_
       '())))
  (define gxc#current-context-chain
    (lambda ()
      ((letrec ((_lp4270_
                 (lambda (_ctx4272_ _r4273_)
                   (if (##structure-instance-of?
                        _ctx4272_
                        'gx#module-context::t)
                       (_lp4270_
                        (##structure-ref _ctx4272_ '3 gx#phi-context::t '#f)
                        (cons _ctx4272_ _r4273_))
                       _r4273_))))
         _lp4270_)
       (gx#current-expander-context)
       '())))
  (define gxc#generate-meta-import%
    (lambda (_stx4039_ _state4040_)
      (let ((_context-chain4042_ (gxc#current-context-chain)))
        (let ((_make-import-spec4043_
               (lambda (_in4206_)
                 (let ((_in42074219_ _in4206_))
                   (let ((_E42094223_
                          (lambda ()
                            (error '"No clause matching" _in42074219_))))
                     (let ((_K42104233_
                            (lambda (_phi4226_
                                     _name4227_
                                     _src-name4228_
                                     _src-phi4229_
                                     _src-key4230_
                                     _src-ctx4231_)
                              (cons _phi4226_
                                    (cons (gxc#generate-runtime-identifier-key
                                           _name4227_)
                                          (cons _src-phi4229_
                                                (cons (gxc#generate-runtime-identifier-key
                                                       _src-name4228_)
                                                      '())))))))
                       (if (##structure-direct-instance-of?
                            _in42074219_
                            (##type-id gx#module-import::t))
                           (let ((_e42114236_ (##vector-ref _in42074219_ '1)))
                             (if (##structure-direct-instance-of?
                                  _e42114236_
                                  (##type-id gx#module-export::t))
                                 (let ((_e42144239_
                                        (##vector-ref _e42114236_ '1)))
                                   (let ((_src-ctx4242_ _e42144239_))
                                     (let ((_e42154244_
                                            (##vector-ref _e42114236_ '2)))
                                       (let ((_src-key4247_ _e42154244_))
                                         (let ((_e42164249_
                                                (##vector-ref _e42114236_ '3)))
                                           (let ((_src-phi4252_ _e42164249_))
                                             (let ((_e42174254_
                                                    (##vector-ref
                                                     _e42114236_
                                                     '4)))
                                               (let ((_src-name4257_
                                                      _e42174254_))
                                                 (let ((_e42124259_
                                                        (##vector-ref
                                                         _in42074219_
                                                         '2)))
                                                   (let ((_name4262_
                                                          _e42124259_))
                                                     (let ((_e42134264_
                                                            (##vector-ref
                                                             _in42074219_
                                                             '3)))
                                                       (let ((_phi4267_
                                                              _e42134264_))
                                                         (_K42104233_
                                                          _phi4267_
                                                          _name4262_
                                                          _src-name4257_
                                                          _src-phi4252_
                                                          _src-key4247_
                                                          _src-ctx4242_)))))))))))))
                                 (_E42094223_)))
                           (_E42094223_))))))))
          (let ((_make-import-path4044_
                 (lambda (_ctx4204_)
                   (gxc#generate-meta-import-path
                    _ctx4204_
                    _context-chain4042_))))
            (let ((_make-import-spec-in4045_
                   (lambda (_ctx4201_ _in4202_)
                     (cons 'spec:
                           (cons (_make-import-path4044_ _ctx4201_)
                                 (reverse _in4202_))))))
              (begin
                (gxc#meta-state-end-phi! _state4040_)
                (let ((_g40474057_
                       (lambda (_g40484054_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g40484054_))))
                  (let ((_g40464198_
                         (lambda (_g40484060_)
                           (if (gx#stx-pair? _g40484060_)
                               (let ((_e40504062_ (gx#stx-e _g40484060_)))
                                 (let ((_hd40514065_ (##car _e40504062_))
                                       (_tl40524067_ (##cdr _e40504062_)))
                                   ((lambda (_L4070_)
                                      ((letrec ((_lp4081_
                                                 (lambda (_rest4083_
                                                          _current-src4084_
                                                          _current-in4085_
                                                          _r4086_)
                                                   (let ((_rest40874095_
                                                          _rest4083_))
                                                     (let ((_E40904099_
                                                            (lambda ()
                                                              (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _rest40874095_))))
               (let ((_else40894105_
                      (lambda ()
                        (let ((_r4103_ (if _current-src4084_
                                           (cons (_make-import-spec-in4045_
                                                  _current-src4084_
                                                  _current-in4085_)
                                                 _r4086_)
                                           _r4086_)))
                          (cons '%#import (reverse _r4103_))))))
                 (let ((_K40914186_
                        (lambda (_rest4108_ _in4109_)
                          (if (##structure-direct-instance-of?
                               _in4109_
                               'gx#module-import::t)
                              (let ((_in41104117_ _in4109_))
                                (let ((_E41124121_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _in41104117_))))
                                  (let ((_K41134126_
                                         (lambda (_src-ctx4124_)
                                           (if (eq? _current-src4084_
                                                    _src-ctx4124_)
                                               (_lp4081_
                                                _rest4108_
                                                _current-src4084_
                                                (cons (_make-import-spec4043_
                                                       _in4109_)
                                                      _current-in4085_)
                                                _r4086_)
                                               (if _current-src4084_
                                                   (_lp4081_
                                                    _rest4108_
                                                    _src-ctx4124_
                                                    (cons (_make-import-spec4043_
                                                           _in4109_)
                                                          '())
                                                    (cons (_make-import-spec-in4045_
                                                           _current-src4084_
                                                           _current-in4085_)
                                                          _r4086_))
                                                   (_lp4081_
                                                    _rest4108_
                                                    _src-ctx4124_
                                                    (cons (_make-import-spec4043_
                                                           _in4109_)
                                                          '())
                                                    _r4086_))))))
                                    (if (##structure-direct-instance-of?
                                         _in41104117_
                                         (##type-id gx#module-import::t))
                                        (let ((_e41144129_
                                               (##vector-ref _in41104117_ '1)))
                                          (if (##structure-direct-instance-of?
                                               _e41144129_
                                               (##type-id gx#module-export::t))
                                              (let ((_e41154132_
                                                     (##vector-ref
                                                      _e41144129_
                                                      '1)))
                                                (let ((_src-ctx4135_
                                                       _e41154132_))
                                                  (_K41134126_ _src-ctx4135_)))
                                              (_E41124121_)))
                                        (_E41124121_)))))
                              (if (##structure-direct-instance-of?
                                   _in4109_
                                   'gx#import-set::t)
                                  (let ((_phi4137_
                                         (##structure-ref
                                          _in4109_
                                          '2
                                          gx#import-set::t
                                          '#f)))
                                    (let ((_src4139_
                                           (##structure-ref
                                            _in4109_
                                            '1
                                            gx#import-set::t
                                            '#f)))
                                      (let ((_src-in4179_
                                             (let ((_g41404149_
                                                    (_make-import-path4044_
                                                     _src4139_)))
                                               (let ((_E41434153_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _g41404149_))))
                                                 (let ((_try-match41424164_
                                                        (lambda ()
                                                          (let ((_K41444159_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_path4157_) (cons 'in: _path4157_))))
                    (let ((_path4162_ _g41404149_))
                      (_K41444159_ _path4162_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_K41454169_
                                                          (lambda (_path4167_)
                                                            _path4167_)))
                                                     (if (##pair? _g41404149_)
                                                         (let ((_hd41464172_
                                                                (##car _g41404149_))
                                                               (_tl41474174_
                                                                (##cdr _g41404149_)))
                                                           (let ((_path4177_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd41464172_))
                     (if (##null? _tl41474174_)
                         (_K41454169_ _path4177_)
                         (_try-match41424164_))))
                 (_try-match41424164_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_r4181_ (if _current-src4084_
                                                           (cons (_make-import-spec-in4045_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _current-src4084_
                          _current-in4085_)
                         _r4086_)
                   _r4086_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (_lp4081_
                                             _rest4108_
                                             '#f
                                             '()
                                             (cons (if (fxzero? _phi4137_)
                                                       _src-in4179_
                                                       (cons 'phi:
                                                             (cons _phi4137_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _src-in4179_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _r4181_)))))))
                                  (if (##structure-instance-of?
                                       _in4109_
                                       'gx#module-context::t)
                                      (let ((_r4184_ (if _current-src4084_
                                                         (cons (_make-import-spec-in4045_
                                                                _current-src4084_
                                                                _current-in4085_)
                                                               _r4086_)
                                                         _r4086_)))
                                        (_lp4081_
                                         _rest4108_
                                         '#f
                                         '()
                                         (cons (cons 'runtime:
                                                     (_make-import-path4044_
                                                      _in4109_))
                                               _r4184_)))
                                      '#!void))))))
                   (if (##pair? _rest40874095_)
                       (let ((_hd40924189_ (##car _rest40874095_))
                             (_tl40934191_ (##cdr _rest40874095_)))
                         (let ((_in4194_ _hd40924189_))
                           (let ((_rest4196_ _tl40934191_))
                             (_K40914186_ _rest4196_ _in4194_))))
                       (_else40894105_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _lp4081_)
                                       _L4070_
                                       '#f
                                       '()
                                       '()))
                                    _tl40524067_)))
                               (_g40474057_ _g40484060_)))))
                    (_g40464198_ _stx4039_))))))))))
  (define gxc#generate-meta-export%
    (lambda (_stx3849_ _state3850_)
      (let ((_context-chain3852_ (gxc#current-context-chain)))
        (let ((_make-import-path3853_
               (lambda (_ctx4037_)
                 (gxc#generate-meta-import-path
                  _ctx4037_
                  _context-chain3852_))))
          (let ((_g38553865_
                 (lambda (_g38563862_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g38563862_))))
            (let ((_g38544034_
                   (lambda (_g38563868_)
                     (if (gx#stx-pair? _g38563868_)
                         (let ((_e38583870_ (gx#stx-e _g38563868_)))
                           (let ((_hd38593873_ (##car _e38583870_))
                                 (_tl38603875_ (##cdr _e38583870_)))
                             ((lambda (_L3878_)
                                ((letrec ((_lp3889_
                                           (lambda (_rest3891_ _r3892_)
                                             (let ((_rest38933901_ _rest3891_))
                                               (let ((_E38963905_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _rest38933901_))))
                                                 (let ((_else38953909_
                                                        (lambda ()
                                                          (cons '%#export
                                                                (reverse _r3892_)))))
                                                   (let ((_K38974022_
                                                          (lambda (_rest3912_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _out3913_)
                    (let ((_out39143927_ _out3913_))
                      (let ((_E39173931_
                             (lambda ()
                               (error '"No clause matching" _out39143927_))))
                        (let ((_try-match39163994_
                               (lambda ()
                                 (let ((_K39183981_
                                        (lambda (_phi3935_ _src3936_)
                                          (let ((_out3976_
                                                 (if _src3936_
                                                     (cons 'import:
                                                           (cons (let ((_g39373946_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (_make-import-path3853_ _src3936_)))
                           (let ((_E39403950_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _g39373946_))))
                             (let ((_try-match39393961_
                                    (lambda ()
                                      (let ((_K39413956_
                                             (lambda (_path3954_)
                                               (cons 'in: _path3954_))))
                                        (let ((_path3959_ _g39373946_))
                                          (_K39413956_ _path3959_))))))
                               (let ((_K39423966_
                                      (lambda (_path3964_) _path3964_)))
                                 (if (##pair? _g39373946_)
                                     (let ((_hd39433969_ (##car _g39373946_))
                                           (_tl39443971_ (##cdr _g39373946_)))
                                       (let ((_path3974_ _hd39433969_))
                                         (if (##null? _tl39443971_)
                                             (_K39423966_ _path3974_)
                                             (_try-match39393961_))))
                                     (_try-match39393961_))))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#t)))
                                            (let ((_out3978_
                                                   (if (fxzero? _phi3935_)
                                                       _out3976_
                                                       (cons 'phi:
                                                             (cons _phi3935_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _out3976_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (_lp3889_
                                                 _rest3912_
                                                 (cons _out3978_
                                                       _r3892_))))))))
                                   (if (##structure-direct-instance-of?
                                        _out39143927_
                                        (##type-id gx#export-set::t))
                                       (let ((_e39193984_
                                              (##vector-ref _out39143927_ '1)))
                                         (let ((_src3987_ _e39193984_))
                                           (let ((_e39203989_
                                                  (##vector-ref
                                                   _out39143927_
                                                   '2)))
                                             (let ((_phi3992_ _e39203989_))
                                               (_K39183981_
                                                _phi3992_
                                                _src3987_)))))
                                       (_E39173931_))))))
                          (let ((_K39214001_
                                 (lambda (_name3997_ _phi3998_ _key3999_)
                                   (_lp3889_
                                    _rest3912_
                                    (cons (cons 'spec:
                                                (cons _phi3998_
                                                      (cons (gxc#generate-runtime-identifier-key
                                                             _key3999_)
                                                            (cons (gxc#generate-runtime-identifier-key
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _name3997_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _r3892_)))))
                            (if (##structure-direct-instance-of?
                                 _out39143927_
                                 (##type-id gx#module-export::t))
                                (let ((_e39224004_
                                       (##vector-ref _out39143927_ '1)))
                                  (let ((_e39234007_
                                         (##vector-ref _out39143927_ '2)))
                                    (let ((_key4010_ _e39234007_))
                                      (let ((_e39244012_
                                             (##vector-ref _out39143927_ '3)))
                                        (let ((_phi4015_ _e39244012_))
                                          (let ((_e39254017_
                                                 (##vector-ref
                                                  _out39143927_
                                                  '4)))
                                            (let ((_name4020_ _e39254017_))
                                              (_K39214001_
                                               _name4020_
                                               _phi4015_
                                               _key4010_))))))))
                                (_try-match39163994_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##pair? _rest38933901_)
                                                         (let ((_hd38984025_
                                                                (##car _rest38933901_))
                                                               (_tl38994027_
                                                                (##cdr _rest38933901_)))
                                                           (let ((_out4030_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd38984025_))
                     (let ((_rest4032_ _tl38994027_))
                       (_K38974022_ _rest4032_ _out4030_))))
                 (_else38953909_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _lp3889_)
                                 _L3878_
                                 '()))
                              _tl38603875_)))
                         (_g38553865_ _g38563868_)))))
              (_g38544034_ _stx3849_)))))))
  (define gxc#generate-meta-provide%
    (lambda (_stx3810_ _state3811_)
      (begin
        (gxc#meta-state-end-phi! _state3811_)
        (let ((_g38133823_
               (lambda (_g38143820_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g38143820_))))
          (let ((_g38123846_
                 (lambda (_g38143826_)
                   (if (gx#stx-pair? _g38143826_)
                       (let ((_e38163828_ (gx#stx-e _g38143826_)))
                         (let ((_hd38173831_ (##car _e38163828_))
                               (_tl38183833_ (##cdr _e38163828_)))
                           ((lambda (_L3836_)
                              (cons '%#provide
                                    (map gxc#generate-runtime-identifier
                                         _L3836_)))
                            _tl38183833_)))
                       (_g38133823_ _g38143826_)))))
            (_g38123846_ _stx3810_))))))
  (define gxc#generate-meta-extern%
    (lambda (_stx3681_ _state3682_)
      (let ((_generate13684_
             (lambda (_id3805_ _eid3806_)
               (let ((_eid3808_ (gx#stx-e _eid3806_)))
                 (begin
                   (if (interned-symbol? _eid3808_)
                       '#!void
                       (gxc#raise-compile-error
                        '"Cannot compile extern reference"
                        _stx3681_
                        _eid3808_))
                   (cons (gxc#generate-runtime-identifier _id3805_)
                         (cons _eid3808_ '())))))))
        (let ((_g36863714_
               (lambda (_g36873711_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g36873711_))))
          (let ((_g36853802_
                 (lambda (_g36873717_)
                   (if (gx#stx-pair? _g36873717_)
                       (let ((_e36903719_ (gx#stx-e _g36873717_)))
                         (let ((_hd36913722_ (##car _e36903719_))
                               (_tl36923724_ (##cdr _e36903719_)))
                           (if (gx#stx-pair/null? _tl36923724_)
                               (if (fx>= (gx#stx-length _tl36923724_) '0)
                                   (let ((_g10170_
                                          (gx#syntax-split-splice
                                           _tl36923724_
                                           '0)))
                                     (begin
                                       (let ((_g10171_
                                              (values-count _g10170_)))
                                         (if (not (fx= _g10171_ 2))
                                             (error "Context expects 2 values"
                                                    _g10171_)))
                                       (let ((_target36933727_
                                              (values-ref _g10170_ 0))
                                             (_tl36953729_
                                              (values-ref _g10170_ 1)))
                                         (if (gx#stx-null? _tl36953729_)
                                             (letrec ((_loop36963732_
                                                       (lambda (_hd36943735_
                                                                _eid37003737_
                                                                _id37013739_)
                                                         (if (gx#stx-pair?
                                                              _hd36943735_)
                                                             (let ((_e36973742_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd36943735_)))
                       (let ((_lp-hd36983745_ (##car _e36973742_))
                             (_lp-tl36993747_ (##cdr _e36973742_)))
                         (if (gx#stx-pair? _lp-hd36983745_)
                             (let ((_e37043750_ (gx#stx-e _lp-hd36983745_)))
                               (let ((_hd37053753_ (##car _e37043750_))
                                     (_tl37063755_ (##cdr _e37043750_)))
                                 (if (gx#stx-pair? _tl37063755_)
                                     (let ((_e37073758_
                                            (gx#stx-e _tl37063755_)))
                                       (let ((_hd37083761_ (##car _e37073758_))
                                             (_tl37093763_
                                              (##cdr _e37073758_)))
                                         (if (gx#stx-null? _tl37093763_)
                                             (_loop36963732_
                                              _lp-tl36993747_
                                              (cons _hd37083761_ _eid37003737_)
                                              (cons _hd37053753_ _id37013739_))
                                             (_g36863714_ _g36873717_))))
                                     (_g36863714_ _g36873717_))))
                             (_g36863714_ _g36873717_))))
                     (let ((_eid37023766_ (reverse _eid37003737_))
                           (_id37033768_ (reverse _id37013739_)))
                       ((lambda (_L3771_ _L3772_)
                          (cons '%#extern
                                (map _generate13684_
                                     (begin
                                       '#!void
                                       (foldr1 (lambda (_g37873790_
                                                        _g37883792_)
                                                 (cons _g37873790_
                                                       _g37883792_))
                                               '()
                                               _L3772_))
                                     (begin
                                       '#!void
                                       (foldr1 (lambda (_g37943797_
                                                        _g37953799_)
                                                 (cons _g37943797_
                                                       _g37953799_))
                                               '()
                                               _L3771_)))))
                        _eid37023766_
                        _id37033768_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop36963732_
                                                _target36933727_
                                                '()
                                                '()))
                                             (_g36863714_ _g36873717_)))))
                                   (_g36863714_ _g36873717_))
                               (_g36863714_ _g36873717_))))
                       (_g36863714_ _g36873717_)))))
            (_g36853802_ _stx3681_))))))
  (define gxc#generate-meta-define-values%
    (lambda (_stx3476_ _state3477_)
      (let ((_generate13479_
             (lambda (_id3676_)
               (let ((_eid3678_ (gxc#generate-runtime-binding-id _id3676_))
                     (_ident3679_ (gxc#generate-runtime-identifier _id3676_)))
                 (cons '%#define-runtime
                       (cons _ident3679_ (cons _eid3678_ '())))))))
        (let ((_generate*3480_
               (lambda (_all3644_)
                 (let ((_all36453653_ _all3644_))
                   (let ((_E36483657_
                          (lambda ()
                            (error '"No clause matching" _all36453653_))))
                     (let ((_else36473661_
                            (lambda () (cons '%#begin _all3644_))))
                       (let ((_K36493666_ (lambda (_one3664_) _one3664_)))
                         (if (##pair? _all36453653_)
                             (let ((_hd36503669_ (##car _all36453653_))
                                   (_tl36513671_ (##cdr _all36453653_)))
                               (let ((_one3674_ _hd36503669_))
                                 (if (##null? _tl36513671_)
                                     (_K36493666_ _one3674_)
                                     (_else36473661_))))
                             (_else36473661_)))))))))
          (let ((_g34823499_
                 (lambda (_g34833496_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g34833496_))))
            (let ((_g34813641_
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
                                           (let ((_hd34933523_
                                                  (##car _e34923520_))
                                                 (_tl34943525_
                                                  (##cdr _e34923520_)))
                                             (if (gx#stx-null? _tl34943525_)
                                                 ((lambda (_L3528_ _L3529_)
                                                    ((letrec ((_lp3545_
                                                               (lambda (_rest3547_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _r3548_)
                         (let ((_g35533569_
                                (lambda (_g35543566_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g35543566_))))
                           (let ((_g35523576_
                                  (lambda (_g35543572_)
                                    ((lambda ()
                                       (_generate*3480_ (reverse _r3548_)))))))
                             (let ((_g35513592_
                                    (lambda (_g35543579_)
                                      ((lambda (_L3581_)
                                         (if (gx#identifier? _L3581_)
                                             (_generate*3480_
                                              (foldl1 cons
                                                      (cons (_generate13479_
                                                             _L3581_)
                                                            '())
                                                      _r3548_))
                                             (_g35523576_ _g35543579_)))
                                       _g35543579_))))
                               (let ((_g35503616_
                                      (lambda (_g35543595_)
                                        (if (gx#stx-pair? _g35543595_)
                                            (let ((_e35613597_
                                                   (gx#stx-e _g35543595_)))
                                              (let ((_hd35623600_
                                                     (##car _e35613597_))
                                                    (_tl35633602_
                                                     (##cdr _e35613597_)))
                                                ((lambda (_L3605_ _L3606_)
                                                   (_lp3545_
                                                    _L3605_
                                                    (cons (_generate13479_
                                                           _L3606_)
                                                          _r3548_)))
                                                 _tl35633602_
                                                 _hd35623600_)))
                                            (_g35513592_ _g35543595_)))))
                                 (let ((_g35493638_
                                        (lambda (_g35543619_)
                                          (if (gx#stx-pair? _g35543619_)
                                              (let ((_e35563621_
                                                     (gx#stx-e _g35543619_)))
                                                (let ((_hd35573624_
                                                       (##car _e35563621_))
                                                      (_tl35583626_
                                                       (##cdr _e35563621_)))
                                                  (if (gx#stx-datum?
                                                       _hd35573624_)
                                                      (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd35573624_)
                          '#f)
                  ((lambda (_L3629_) (_lp3545_ _L3629_ _r3548_)) _tl35583626_)
                  (_g35503616_ _g35543619_))
              (_g35503616_ _g35543619_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g35503616_ _g35543619_)))))
                                   (_g35493638_ _rest3547_)))))))))
               _lp3545_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _L3529_
                                                     '()))
                                                  _hd34933523_
                                                  _hd34903515_)
                                                 (_g34823499_ _g34833502_))))
                                         (_g34823499_ _g34833502_))))
                                 (_g34823499_ _g34833502_))))
                         (_g34823499_ _g34833502_)))))
              (_g34813641_ _stx3476_)))))))
  (define gxc#generate-meta-define-syntax%
    (lambda (_stx3373_ _state3374_)
      (let ((_g33763393_
             (lambda (_g33773390_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g33773390_))))
        (let ((_g33753473_
               (lambda (_g33773396_)
                 (if (gx#stx-pair? _g33773396_)
                     (let ((_e33803398_ (gx#stx-e _g33773396_)))
                       (let ((_hd33813401_ (##car _e33803398_))
                             (_tl33823403_ (##cdr _e33803398_)))
                         (if (gx#stx-pair? _tl33823403_)
                             (let ((_e33833406_ (gx#stx-e _tl33823403_)))
                               (let ((_hd33843409_ (##car _e33833406_))
                                     (_tl33853411_ (##cdr _e33833406_)))
                                 (if (gx#stx-pair? _tl33853411_)
                                     (let ((_e33863414_
                                            (gx#stx-e _tl33853411_)))
                                       (let ((_hd33873417_ (##car _e33863414_))
                                             (_tl33883419_
                                              (##cdr _e33863414_)))
                                         (if (gx#stx-null? _tl33883419_)
                                             ((lambda (_L3422_ _L3423_)
                                                (let ((_eid3438_
                                                       (gxc#generate-runtime-binding-id
                                                        _L3423_)))
                                                  (let ((_phi3440_
                                                         (fx+ (gx#current-expander-phi)
                                                              '1)))
                                                    (let ((_block3442_
                                                           (gxc#meta-state-begin-phi!
                                                            _state3374_
                                                            _phi3440_)))
                                                      (let ()
                                                        (begin
                                                          (let ((_g34453452_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g34463449_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g34463449_))))
                    (let ((_g34443470_
                           (lambda (_g34463455_)
                             ((lambda (_L3457_)
                                (let ()
                                  (gxc#meta-state-add-phi!
                                   _state3374_
                                   _phi3440_
                                   (cons (gx#datum->syntax__0
                                          '#f
                                          '%#define-runtime)
                                         (cons _L3457_ (cons _L3422_ '()))))))
                              _g34463455_))))
                      (_g34443470_ _eid3438_)))
                  (if _block3442_
                      (cons '%#begin
                            (cons (cons '%#begin-syntax
                                        (cons (cons '%#call
                                                    (cons (cons '%#ref
                                                                (cons '_gx#load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#quote (cons _block3442_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))
                                  (cons (cons '%#define-syntax
                                              (cons (gxc#generate-runtime-identifier
                                                     _L3423_)
                                                    (cons _eid3438_ '())))
                                        '())))
                      (cons '%#define-syntax
                            (cons (gxc#generate-runtime-identifier _L3423_)
                                  (cons _eid3438_ '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd33873417_
                                              _hd33843409_)
                                             (_g33763393_ _g33773396_))))
                                     (_g33763393_ _g33773396_))))
                             (_g33763393_ _g33773396_))))
                     (_g33763393_ _g33773396_)))))
          (_g33753473_ _stx3373_)))))
  (define gxc#generate-meta-define-alias%
    (lambda (_stx3305_ _state3306_)
      (let ((_g33083325_
             (lambda (_g33093322_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g33093322_))))
        (let ((_g33073370_
               (lambda (_g33093328_)
                 (if (gx#stx-pair? _g33093328_)
                     (let ((_e33123330_ (gx#stx-e _g33093328_)))
                       (let ((_hd33133333_ (##car _e33123330_))
                             (_tl33143335_ (##cdr _e33123330_)))
                         (if (gx#stx-pair? _tl33143335_)
                             (let ((_e33153338_ (gx#stx-e _tl33143335_)))
                               (let ((_hd33163341_ (##car _e33153338_))
                                     (_tl33173343_ (##cdr _e33153338_)))
                                 (if (gx#stx-pair? _tl33173343_)
                                     (let ((_e33183346_
                                            (gx#stx-e _tl33173343_)))
                                       (let ((_hd33193349_ (##car _e33183346_))
                                             (_tl33203351_
                                              (##cdr _e33183346_)))
                                         (if (gx#stx-null? _tl33203351_)
                                             ((lambda (_L3354_ _L3355_)
                                                (cons '%#define-alias
                                                      (cons (gxc#generate-runtime-identifier
                                                             _L3355_)
                                                            (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L3354_)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd33193349_
                                              _hd33163341_)
                                             (_g33083325_ _g33093328_))))
                                     (_g33083325_ _g33093328_))))
                             (_g33083325_ _g33093328_))))
                     (_g33083325_ _g33093328_)))))
          (_g33073370_ _stx3305_)))))
  (define gxc#generate-meta-phi-define-values%
    (lambda (_stx3302_ _state3303_)
      (begin
        (gxc#meta-state-add-phi!
         _state3303_
         (gx#current-expander-phi)
         _stx3302_)
        (gxc#generate-meta-define-values% _stx3302_ _state3303_))))
  (define gxc#generate-meta-phi-expr
    (lambda (_stx3299_ _state3300_)
      (begin
        (gxc#meta-state-add-phi!
         _state3300_
         (gx#current-expander-phi)
         _stx3299_)
        '#!void)))
  (define gxc#meta-state::t
    (make-struct-type 'gxc#meta-state::t '#f '4 'meta-state '() ':init!))
  (define gxc#meta-state? (make-struct-predicate gxc#meta-state::t))
  (define gxc#make-meta-state
    (lambda _$args3296_
      (apply make-struct-instance gxc#meta-state::t _$args3296_)))
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
    (lambda (_self3293_ _ctx3294_)
      (struct-instance-init!
       _self3293_
       (symbol->string
        (##structure-ref _ctx3294_ '1 gx#expander-context::t '#f))
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
    (lambda _$args3290_
      (apply make-struct-instance gxc#meta-state-block::t _$args3290_)))
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
    (lambda (_state3249_ _phi3250_)
      (let ((_state32513259_ _state3249_))
        (let ((_E32533263_
               (lambda () (error '"No clause matching" _state32513259_))))
          (let ((_K32543272_
                 (lambda (_open3266_ _n3267_ _src3268_)
                   (if (table-ref _open3266_ _phi3250_ '#f)
                       '#f
                       (let ((_block-ref3270_
                              (string-append
                               _src3268_
                               '"__"
                               (number->string _n3267_))))
                         (begin
                           (##structure-set!
                            _state3249_
                            (fx+ _n3267_ '1)
                            '2
                            gxc#meta-state::t
                            '#f)
                           (table-set!
                            _open3266_
                            _phi3250_
                            (##structure
                             gxc#meta-state-block::t
                             (gx#current-expander-context)
                             _phi3250_
                             _n3267_
                             '()))
                           _block-ref3270_))))))
            (if (##structure-instance-of?
                 _state32513259_
                 (##type-id gxc#meta-state::t))
                (let ((_e32553275_ (##vector-ref _state32513259_ '1)))
                  (let ((_src3278_ _e32553275_))
                    (let ((_e32563280_ (##vector-ref _state32513259_ '2)))
                      (let ((_n3283_ _e32563280_))
                        (let ((_e32573285_ (##vector-ref _state32513259_ '3)))
                          (let ((_open3288_ _e32573285_))
                            (_K32543272_ _open3288_ _n3283_ _src3278_)))))))
                (_E32533263_)))))))
  (define gxc#meta-state-add-phi!
    (lambda (_state3243_ _phi3244_ _stx3245_)
      (let ((_block3247_
             (table-ref
              (##structure-ref _state3243_ '3 gxc#meta-state::t '#f)
              _phi3244_
              '#f)))
        (##structure-set!
         _block3247_
         (cons _stx3245_
               (##structure-ref _block3247_ '4 gxc#meta-state-block::t '#f))
         '4
         gxc#meta-state-block::t
         '#f))))
  (define gxc#meta-state-end-phi!
    (lambda (_state3238_)
      (begin
        (##structure-set!
         _state3238_
         (hash-fold
          (lambda (_g10172_ _block3240_ _r3241_) (cons _block3240_ _r3241_))
          (##structure-ref _state3238_ '4 gxc#meta-state::t '#f)
          (##structure-ref _state3238_ '3 gxc#meta-state::t '#f))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _state3238_
         (make-hash-table-eq)
         '3
         gxc#meta-state::t
         '#f))))
  (define gxc#meta-state-end!
    (lambda (_state3190_)
      (begin
        (gxc#meta-state-end-phi! _state3190_)
        (foldl1 (lambda (_block3192_ _r3193_)
                  (let ((_block31943203_ _block3192_))
                    (let ((_E31963207_
                           (lambda ()
                             (error '"No clause matching" _block31943203_))))
                      (let ((_K31973215_
                             (lambda (_code3210_ _n3211_ _phi3212_ _ctx3213_)
                               (if (null? _code3210_)
                                   _r3193_
                                   (cons (cons _ctx3213_
                                               (cons _phi3212_
                                                     (cons _n3211_
                                                           (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (reverse _code3210_))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _r3193_)))))
                        (if (##structure-instance-of?
                             _block31943203_
                             (##type-id gxc#meta-state-block::t))
                            (let ((_e31983218_
                                   (##vector-ref _block31943203_ '1)))
                              (let ((_ctx3221_ _e31983218_))
                                (let ((_e31993223_
                                       (##vector-ref _block31943203_ '2)))
                                  (let ((_phi3226_ _e31993223_))
                                    (let ((_e32003228_
                                           (##vector-ref _block31943203_ '3)))
                                      (let ((_n3231_ _e32003228_))
                                        (let ((_e32013233_
                                               (##vector-ref
                                                _block31943203_
                                                '4)))
                                          (let ((_code3236_ _e32013233_))
                                            (_K31973215_
                                             _code3236_
                                             _n3231_
                                             _phi3226_
                                             _ctx3221_)))))))))
                            (_E31963207_))))))
                '()
                (##structure-ref _state3190_ '4 gxc#meta-state::t '#f)))))
  (define gxc#collect-expression-refs
    (lambda (_stx3186_)
      (let ((_ht3188_ (make-hash-table-eq)))
        (begin
          (gxc#apply-collect-expression-refs _stx3186_ _ht3188_)
          _ht3188_))))
  (define gxc#collect-refs-ref%
    (lambda (_stx3129_ _ht3130_)
      (let ((_g31323145_
             (lambda (_g31333142_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g31333142_))))
        (let ((_g31313183_
               (lambda (_g31333148_)
                 (if (gx#stx-pair? _g31333148_)
                     (let ((_e31353150_ (gx#stx-e _g31333148_)))
                       (let ((_hd31363153_ (##car _e31353150_))
                             (_tl31373155_ (##cdr _e31353150_)))
                         (if (gx#stx-pair? _tl31373155_)
                             (let ((_e31383158_ (gx#stx-e _tl31373155_)))
                               (let ((_hd31393161_ (##car _e31383158_))
                                     (_tl31403163_ (##cdr _e31383158_)))
                                 (if (gx#stx-null? _tl31403163_)
                                     ((lambda (_L3166_)
                                        (let ((_bind3178_
                                               (gx#resolve-identifier__0
                                                _L3166_)))
                                          (let ((_eid3180_
                                                 (if _bind3178_
                                                     (##structure-ref
                                                      _bind3178_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (gx#stx-e _L3166_))))
                                            (let ()
                                              (table-set!
                                               _ht3130_
                                               _eid3180_
                                               _eid3180_)))))
                                      _hd31393161_)
                                     (_g31323145_ _g31333148_))))
                             (_g31323145_ _g31333148_))))
                     (_g31323145_ _g31333148_)))))
          (_g31313183_ _stx3129_)))))
  (define gxc#collect-refs-setq%
    (lambda (_stx3056_ _ht3057_)
      (let ((_g30593076_
             (lambda (_g30603073_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g30603073_))))
        (let ((_g30583126_
               (lambda (_g30603079_)
                 (if (gx#stx-pair? _g30603079_)
                     (let ((_e30633081_ (gx#stx-e _g30603079_)))
                       (let ((_hd30643084_ (##car _e30633081_))
                             (_tl30653086_ (##cdr _e30633081_)))
                         (if (gx#stx-pair? _tl30653086_)
                             (let ((_e30663089_ (gx#stx-e _tl30653086_)))
                               (let ((_hd30673092_ (##car _e30663089_))
                                     (_tl30683094_ (##cdr _e30663089_)))
                                 (if (gx#stx-pair? _tl30683094_)
                                     (let ((_e30693097_
                                            (gx#stx-e _tl30683094_)))
                                       (let ((_hd30703100_ (##car _e30693097_))
                                             (_tl30713102_
                                              (##cdr _e30693097_)))
                                         (if (gx#stx-null? _tl30713102_)
                                             ((lambda (_L3105_ _L3106_)
                                                (let ((_bind3121_
                                                       (gx#resolve-identifier__0
                                                        _L3106_)))
                                                  (let ((_eid3123_
                                                         (if _bind3121_
                                                             (##structure-ref
                                                              _bind3121_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (gx#stx-e
                                                              _L3106_))))
                                                    (let ()
                                                      (begin
                                                        (table-set!
                                                         _ht3057_
                                                         _eid3123_
                                                         _eid3123_)
                                                        (gxc#compile-e
                                                         _L3105_
                                                         _ht3057_))))))
                                              _hd30703100_
                                              _hd30673092_)
                                             (_g30593076_ _g30603079_))))
                                     (_g30593076_ _g30603079_))))
                             (_g30593076_ _g30603079_))))
                     (_g30593076_ _g30603079_)))))
          (_g30583126_ _stx3056_)))))
  (define gxc#find-runtime-begin%
    (lambda (_stx3018_)
      (let ((_g30203030_
             (lambda (_g30213027_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g30213027_))))
        (let ((_g30193053_
               (lambda (_g30213033_)
                 (if (gx#stx-pair? _g30213033_)
                     (let ((_e30233035_ (gx#stx-e _g30213033_)))
                       (let ((_hd30243038_ (##car _e30233035_))
                             (_tl30253040_ (##cdr _e30233035_)))
                         ((lambda (_L3043_) (ormap1 gxc#compile-e _L3043_))
                          _tl30253040_)))
                     (_g30203030_ _g30213033_)))))
          (_g30193053_ _stx3018_))))))
