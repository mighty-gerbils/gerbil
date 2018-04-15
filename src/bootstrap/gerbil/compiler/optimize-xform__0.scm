(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#&identity-expression
    (##make-promise
     (lambda ()
       (let ((_tbl19105_ (make-table 'test: eq?)))
         (table-set! _tbl19105_ '%#begin-annotation gxc#xform-identity)
         (table-set! _tbl19105_ '%#lambda gxc#xform-identity)
         (table-set! _tbl19105_ '%#case-lambda gxc#xform-identity)
         (table-set! _tbl19105_ '%#let-values gxc#xform-identity)
         (table-set! _tbl19105_ '%#letrec-values gxc#xform-identity)
         (table-set! _tbl19105_ '%#letrec*-values gxc#xform-identity)
         (table-set! _tbl19105_ '%#quote gxc#xform-identity)
         (table-set! _tbl19105_ '%#quote-syntax gxc#xform-identity)
         (table-set! _tbl19105_ '%#call gxc#xform-identity)
         (table-set! _tbl19105_ '%#if gxc#xform-identity)
         (table-set! _tbl19105_ '%#ref gxc#xform-identity)
         (table-set! _tbl19105_ '%#set! gxc#xform-identity)
         (table-set! _tbl19105_ '%#struct-instance? gxc#xform-identity)
         (table-set! _tbl19105_ '%#struct-direct-instance? gxc#xform-identity)
         (table-set! _tbl19105_ '%#struct-ref gxc#xform-identity)
         (table-set! _tbl19105_ '%#struct-set! gxc#xform-identity)
         (table-set! _tbl19105_ '%#struct-direct-ref gxc#xform-identity)
         (table-set! _tbl19105_ '%#struct-direct-set! gxc#xform-identity)
         (table-set! _tbl19105_ '%#struct-unchecked-ref gxc#xform-identity)
         (table-set! _tbl19105_ '%#struct-unchecked-set! gxc#xform-identity)
         _tbl19105_))))
  (define gxc#&identity-special-form
    (##make-promise
     (lambda ()
       (let ((_tbl19101_ (make-table 'test: eq?)))
         (table-set! _tbl19101_ '%#begin gxc#xform-identity)
         (table-set! _tbl19101_ '%#begin-syntax gxc#xform-identity)
         (table-set! _tbl19101_ '%#begin-foreign gxc#xform-identity)
         (table-set! _tbl19101_ '%#module gxc#xform-identity)
         (table-set! _tbl19101_ '%#import gxc#xform-identity)
         (table-set! _tbl19101_ '%#export gxc#xform-identity)
         (table-set! _tbl19101_ '%#provide gxc#xform-identity)
         (table-set! _tbl19101_ '%#extern gxc#xform-identity)
         (table-set! _tbl19101_ '%#define-values gxc#xform-identity)
         (table-set! _tbl19101_ '%#define-syntax gxc#xform-identity)
         (table-set! _tbl19101_ '%#define-alias gxc#xform-identity)
         (table-set! _tbl19101_ '%#declare gxc#xform-identity)
         _tbl19101_))))
  (define gxc#&identity
    (##make-promise
     (lambda ()
       (let ((_tbl19097_ (make-table 'test: eq?)))
         (hash-copy! _tbl19097_ (force gxc#&identity-special-form))
         (hash-copy! _tbl19097_ (force gxc#&identity-expression))
         _tbl19097_))))
  (define gxc#&basic-xform-expression
    (##make-promise
     (lambda ()
       (let ((_tbl19093_ (make-table 'test: eq?)))
         (table-set!
          _tbl19093_
          '%#begin-annotation
          gxc#xform-begin-annotation%)
         (table-set! _tbl19093_ '%#lambda gxc#xform-lambda%)
         (table-set! _tbl19093_ '%#case-lambda gxc#xform-case-lambda%)
         (table-set! _tbl19093_ '%#let-values gxc#xform-let-values%)
         (table-set! _tbl19093_ '%#letrec-values gxc#xform-let-values%)
         (table-set! _tbl19093_ '%#letrec*-values gxc#xform-let-values%)
         (table-set! _tbl19093_ '%#quote gxc#xform-identity)
         (table-set! _tbl19093_ '%#quote-syntax gxc#xform-identity)
         (table-set! _tbl19093_ '%#call gxc#xform-operands)
         (table-set! _tbl19093_ '%#if gxc#xform-operands)
         (table-set! _tbl19093_ '%#ref gxc#xform-identity)
         (table-set! _tbl19093_ '%#set! gxc#xform-setq%)
         (table-set! _tbl19093_ '%#struct-instance? gxc#xform-operands)
         (table-set! _tbl19093_ '%#struct-direct-instance? gxc#xform-operands)
         (table-set! _tbl19093_ '%#struct-ref gxc#xform-operands)
         (table-set! _tbl19093_ '%#struct-set! gxc#xform-operands)
         (table-set! _tbl19093_ '%#struct-direct-ref gxc#xform-operands)
         (table-set! _tbl19093_ '%#struct-direct-set! gxc#xform-operands)
         (table-set! _tbl19093_ '%#struct-unchecked-ref gxc#xform-operands)
         (table-set! _tbl19093_ '%#struct-unchecked-set! gxc#xform-operands)
         _tbl19093_))))
  (define gxc#&basic-xform
    (##make-promise
     (lambda ()
       (let ((_tbl19089_ (make-table 'test: eq?)))
         (hash-copy! _tbl19089_ (force gxc#&basic-xform-expression))
         (hash-copy! _tbl19089_ (force gxc#&identity))
         (table-set! _tbl19089_ '%#begin gxc#xform-begin%)
         (table-set! _tbl19089_ '%#begin-syntax gxc#xform-begin-syntax%)
         (table-set! _tbl19089_ '%#module gxc#xform-module%)
         (table-set! _tbl19089_ '%#define-values gxc#xform-define-values%)
         (table-set! _tbl19089_ '%#define-syntax gxc#xform-define-syntax%)
         _tbl19089_))))
  (define gxc#&collect-mutators
    (##make-promise
     (lambda ()
       (let ((_tbl19085_ (make-table 'test: eq?)))
         (hash-copy! _tbl19085_ (force gxc#&void))
         (table-set! _tbl19085_ '%#begin gxc#collect-begin%)
         (table-set! _tbl19085_ '%#begin-syntax gxc#collect-begin-syntax%)
         (table-set!
          _tbl19085_
          '%#begin-annotation
          gxc#collect-begin-annotation%)
         (table-set! _tbl19085_ '%#module gxc#collect-module%)
         (table-set! _tbl19085_ '%#define-values gxc#collect-define-values%)
         (table-set! _tbl19085_ '%#define-syntax gxc#collect-define-syntax%)
         (table-set! _tbl19085_ '%#lambda gxc#collect-body-lambda%)
         (table-set! _tbl19085_ '%#case-lambda gxc#collect-body-case-lambda%)
         (table-set! _tbl19085_ '%#let-values gxc#collect-body-let-values%)
         (table-set! _tbl19085_ '%#letrec-values gxc#collect-body-let-values%)
         (table-set! _tbl19085_ '%#letrec*-values gxc#collect-body-let-values%)
         (table-set! _tbl19085_ '%#call gxc#collect-operands)
         (table-set! _tbl19085_ '%#if gxc#collect-operands)
         (table-set! _tbl19085_ '%#set! gxc#collect-mutators-setq%)
         (table-set! _tbl19085_ '%#struct-instance? gxc#collect-operands)
         (table-set!
          _tbl19085_
          '%#struct-direct-instance?
          gxc#collect-operands)
         (table-set! _tbl19085_ '%#struct-ref gxc#collect-operands)
         (table-set! _tbl19085_ '%#struct-set! gxc#collect-operands)
         (table-set! _tbl19085_ '%#struct-direct-ref gxc#collect-operands)
         (table-set! _tbl19085_ '%#struct-direct-set! gxc#collect-operands)
         (table-set! _tbl19085_ '%#struct-unchecked-ref gxc#collect-operands)
         (table-set! _tbl19085_ '%#struct-unchecked-set! gxc#collect-operands)
         _tbl19085_))))
  (define gxc#apply-collect-mutators
    (lambda (_stx19078_ . _args19080_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx19078_ _args19080_))
       gxc#current-compile-methods
       (force gxc#&collect-mutators))))
  (define gxc#&expression-subst
    (##make-promise
     (lambda ()
       (let ((_tbl19075_ (make-table 'test: eq?)))
         (hash-copy! _tbl19075_ (force gxc#&basic-xform-expression))
         (table-set! _tbl19075_ '%#begin gxc#xform-begin%)
         (table-set! _tbl19075_ '%#ref gxc#expression-subst-ref%)
         (table-set! _tbl19075_ '%#set! gxc#expression-subst-setq%)
         _tbl19075_))))
  (define gxc#apply-expression-subst
    (lambda (_stx19068_ . _args19070_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx19068_ _args19070_))
       gxc#current-compile-methods
       (force gxc#&expression-subst))))
  (define gxc#&expression-subst*
    (##make-promise
     (lambda ()
       (let ((_tbl19065_ (make-table 'test: eq?)))
         (hash-copy! _tbl19065_ (force gxc#&expression-subst))
         (table-set! _tbl19065_ '%#ref gxc#expression-subst*-ref%)
         (table-set! _tbl19065_ '%#set! gxc#expression-subst*-setq%)
         _tbl19065_))))
  (define gxc#apply-expression-subst*
    (lambda (_stx19058_ . _args19060_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx19058_ _args19060_))
       gxc#current-compile-methods
       (force gxc#&expression-subst*))))
  (define gxc#&find-expression
    (##make-promise
     (lambda ()
       (let ((_tbl19055_ (make-table 'test: eq?)))
         (hash-copy! _tbl19055_ (force gxc#&false-expression))
         (table-set! _tbl19055_ '%#begin gxc#find-body%)
         (table-set! _tbl19055_ '%#begin-annotation gxc#find-begin-annotation%)
         (table-set! _tbl19055_ '%#lambda gxc#find-lambda%)
         (table-set! _tbl19055_ '%#case-lambda gxc#find-case-lambda%)
         (table-set! _tbl19055_ '%#let-values gxc#find-let-values%)
         (table-set! _tbl19055_ '%#letrec-values gxc#find-let-values%)
         (table-set! _tbl19055_ '%#letrec*-values gxc#find-let-values%)
         (table-set! _tbl19055_ '%#call gxc#find-body%)
         (table-set! _tbl19055_ '%#if gxc#find-body%)
         (table-set! _tbl19055_ '%#set! gxc#find-setq%)
         (table-set! _tbl19055_ '%#struct-instance? gxc#find-body%)
         (table-set! _tbl19055_ '%#struct-direct-instance? gxc#find-body%)
         (table-set! _tbl19055_ '%#struct-ref gxc#find-body%)
         (table-set! _tbl19055_ '%#struct-set! gxc#find-body%)
         (table-set! _tbl19055_ '%#struct-direct-ref gxc#find-body%)
         (table-set! _tbl19055_ '%#struct-direct-set! gxc#find-body%)
         (table-set! _tbl19055_ '%#struct-unchecked-ref gxc#find-body%)
         (table-set! _tbl19055_ '%#struct-unchecked-set! gxc#find-body%)
         _tbl19055_))))
  (define gxc#&find-var-refs
    (##make-promise
     (lambda ()
       (let ((_tbl19051_ (make-table 'test: eq?)))
         (hash-copy! _tbl19051_ (force gxc#&find-expression))
         (table-set! _tbl19051_ '%#ref gxc#find-var-refs-ref%)
         (table-set! _tbl19051_ '%#set! gxc#find-var-refs-setq%)
         _tbl19051_))))
  (define gxc#apply-find-var-refs
    (lambda (_stx19044_ . _args19046_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx19044_ _args19046_))
       gxc#current-compile-methods
       (force gxc#&find-var-refs))))
  (define gxc#&collect-runtime-refs
    (##make-promise
     (lambda ()
       (let ((_tbl19041_ (make-table 'test: eq?)))
         (hash-copy! _tbl19041_ (force gxc#&collect-expression-refs))
         (table-set! _tbl19041_ '%#ref gxc#collect-runtime-refs-ref%)
         (table-set! _tbl19041_ '%#set! gxc#collect-runtime-refs-setq%)
         _tbl19041_))))
  (define gxc#apply-collect-runtime-refs
    (lambda (_stx19034_ . _args19036_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx19034_ _args19036_))
       gxc#current-compile-methods
       (force gxc#&collect-runtime-refs))))
  (define gxc#xform-identity (lambda (_stx19031_ . _args19032_) _stx19031_))
  (define gxc#xform-wrap-source
    (lambda (_stx19028_ _src-stx19029_)
      (gx#stx-wrap-source _stx19028_ (gx#stx-source _src-stx19029_))))
  (define gxc#xform-apply-compile-e
    (lambda (_args19022_)
      (lambda (_g1902319025_)
        (apply gxc#compile-e _g1902319025_ _args19022_))))
  (define gxc#xform-begin%
    (lambda (_stx18981_ . _args18982_)
      (let* ((_g1898418994_
              (lambda (_g1898518991_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1898518991_)))
             (_g1898319019_
              (lambda (_g1898518997_)
                (if (gx#stx-pair? _g1898518997_)
                    (let ((_e1898718999_ (gx#stx-e _g1898518997_)))
                      (let ((_hd1898819002_ (##car _e1898718999_))
                            (_tl1898919004_ (##cdr _e1898718999_)))
                        ((lambda (_L19007_)
                           (let ((_forms19017_
                                  (map (gxc#xform-apply-compile-e _args18982_)
                                       _L19007_)))
                             (gxc#xform-wrap-source
                              (cons '%#begin _forms19017_)
                              _stx18981_)))
                         _tl1898919004_)))
                    (_g1898418994_ _g1898518997_)))))
        (_g1898319019_ _stx18981_))))
  (define gxc#xform-begin-syntax%
    (lambda (_stx18939_ . _args18940_)
      (let* ((_g1894218952_
              (lambda (_g1894318949_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1894318949_)))
             (_g1894118978_
              (lambda (_g1894318955_)
                (if (gx#stx-pair? _g1894318955_)
                    (let ((_e1894518957_ (gx#stx-e _g1894318955_)))
                      (let ((_hd1894618960_ (##car _e1894518957_))
                            (_tl1894718962_ (##cdr _e1894518957_)))
                        ((lambda (_L18965_)
                           (call-with-parameters
                            (lambda ()
                              (let ((_forms18976_
                                     (map (gxc#xform-apply-compile-e
                                           _args18940_)
                                          _L18965_)))
                                (gxc#xform-wrap-source
                                 (cons '%#begin-syntax _forms18976_)
                                 _stx18939_)))
                            gx#current-expander-phi
                            (fx+ (gx#current-expander-phi) '1)))
                         _tl1894718962_)))
                    (_g1894218952_ _g1894318955_)))))
        (_g1894118978_ _stx18939_))))
  (define gxc#xform-module%
    (lambda (_stx18876_ . _args18877_)
      (let* ((_g1887918893_
              (lambda (_g1888018890_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1888018890_)))
             (_g1887818936_
              (lambda (_g1888018896_)
                (if (gx#stx-pair? _g1888018896_)
                    (let ((_e1888318898_ (gx#stx-e _g1888018896_)))
                      (let ((_hd1888418901_ (##car _e1888318898_))
                            (_tl1888518903_ (##cdr _e1888318898_)))
                        (if (gx#stx-pair? _tl1888518903_)
                            (let ((_e1888618906_ (gx#stx-e _tl1888518903_)))
                              (let ((_hd1888718909_ (##car _e1888618906_))
                                    (_tl1888818911_ (##cdr _e1888618906_)))
                                ((lambda (_L18914_ _L18915_)
                                   (let* ((_ctx18928_
                                           (gx#syntax-local-e__0 _L18915_))
                                          (_code18930_
                                           (##structure-ref
                                            _ctx18928_
                                            '11
                                            gx#module-context::t
                                            '#f))
                                          (_code18933_
                                           (call-with-parameters
                                            (lambda ()
                                              (apply gxc#compile-e
                                                     _code18930_
                                                     _args18877_))
                                            gx#current-expander-context
                                            _ctx18928_)))
                                     (##structure-set!
                                      _ctx18928_
                                      _code18933_
                                      '11
                                      gx#module-context::t
                                      '#f)
                                     (gxc#xform-wrap-source
                                      (cons '%#module
                                            (cons _L18915_
                                                  (cons _code18933_ '())))
                                      _stx18876_)))
                                 _tl1888818911_
                                 _hd1888718909_)))
                            (_g1887918893_ _g1888018896_))))
                    (_g1887918893_ _g1888018896_)))))
        (_g1887818936_ _stx18876_))))
  (define gxc#xform-define-values%
    (lambda (_stx18806_ . _args18807_)
      (let* ((_g1880918826_
              (lambda (_g1881018823_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1881018823_)))
             (_g1880818873_
              (lambda (_g1881018829_)
                (if (gx#stx-pair? _g1881018829_)
                    (let ((_e1881318831_ (gx#stx-e _g1881018829_)))
                      (let ((_hd1881418834_ (##car _e1881318831_))
                            (_tl1881518836_ (##cdr _e1881318831_)))
                        (if (gx#stx-pair? _tl1881518836_)
                            (let ((_e1881618839_ (gx#stx-e _tl1881518836_)))
                              (let ((_hd1881718842_ (##car _e1881618839_))
                                    (_tl1881818844_ (##cdr _e1881618839_)))
                                (if (gx#stx-pair? _tl1881818844_)
                                    (let ((_e1881918847_
                                           (gx#stx-e _tl1881818844_)))
                                      (let ((_hd1882018850_
                                             (##car _e1881918847_))
                                            (_tl1882118852_
                                             (##cdr _e1881918847_)))
                                        (if (gx#stx-null? _tl1882118852_)
                                            ((lambda (_L18855_ _L18856_)
                                               (let ((_expr18871_
                                                      (apply gxc#compile-e
                                                             _L18855_
                                                             _args18807_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#define-values
                                                        (cons _L18856_
                                                              (cons _expr18871_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx18806_)))
                                             _hd1882018850_
                                             _hd1881718842_)
                                            (_g1880918826_ _g1881018829_))))
                                    (_g1880918826_ _g1881018829_))))
                            (_g1880918826_ _g1881018829_))))
                    (_g1880918826_ _g1881018829_)))))
        (_g1880818873_ _stx18806_))))
  (define gxc#xform-define-syntax%
    (lambda (_stx18735_ . _args18736_)
      (let* ((_g1873818755_
              (lambda (_g1873918752_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1873918752_)))
             (_g1873718803_
              (lambda (_g1873918758_)
                (if (gx#stx-pair? _g1873918758_)
                    (let ((_e1874218760_ (gx#stx-e _g1873918758_)))
                      (let ((_hd1874318763_ (##car _e1874218760_))
                            (_tl1874418765_ (##cdr _e1874218760_)))
                        (if (gx#stx-pair? _tl1874418765_)
                            (let ((_e1874518768_ (gx#stx-e _tl1874418765_)))
                              (let ((_hd1874618771_ (##car _e1874518768_))
                                    (_tl1874718773_ (##cdr _e1874518768_)))
                                (if (gx#stx-pair? _tl1874718773_)
                                    (let ((_e1874818776_
                                           (gx#stx-e _tl1874718773_)))
                                      (let ((_hd1874918779_
                                             (##car _e1874818776_))
                                            (_tl1875018781_
                                             (##cdr _e1874818776_)))
                                        (if (gx#stx-null? _tl1875018781_)
                                            ((lambda (_L18784_ _L18785_)
                                               (call-with-parameters
                                                (lambda ()
                                                  (let ((_expr18801_
                                                         (apply gxc#compile-e
                                                                _L18784_
                                                                _args18736_)))
                                                    (gxc#xform-wrap-source
                                                     (cons '%#define-syntax
                                                           (cons _L18785_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _expr18801_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _stx18735_)))
                                                gx#current-expander-phi
                                                (fx+ (gx#current-expander-phi)
                                                     '1)))
                                             _hd1874918779_
                                             _hd1874618771_)
                                            (_g1873818755_ _g1873918758_))))
                                    (_g1873818755_ _g1873918758_))))
                            (_g1873818755_ _g1873918758_))))
                    (_g1873818755_ _g1873918758_)))))
        (_g1873718803_ _stx18735_))))
  (define gxc#xform-begin-annotation%
    (lambda (_stx18665_ . _args18666_)
      (let* ((_g1866818685_
              (lambda (_g1866918682_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1866918682_)))
             (_g1866718732_
              (lambda (_g1866918688_)
                (if (gx#stx-pair? _g1866918688_)
                    (let ((_e1867218690_ (gx#stx-e _g1866918688_)))
                      (let ((_hd1867318693_ (##car _e1867218690_))
                            (_tl1867418695_ (##cdr _e1867218690_)))
                        (if (gx#stx-pair? _tl1867418695_)
                            (let ((_e1867518698_ (gx#stx-e _tl1867418695_)))
                              (let ((_hd1867618701_ (##car _e1867518698_))
                                    (_tl1867718703_ (##cdr _e1867518698_)))
                                (if (gx#stx-pair? _tl1867718703_)
                                    (let ((_e1867818706_
                                           (gx#stx-e _tl1867718703_)))
                                      (let ((_hd1867918709_
                                             (##car _e1867818706_))
                                            (_tl1868018711_
                                             (##cdr _e1867818706_)))
                                        (if (gx#stx-null? _tl1868018711_)
                                            ((lambda (_L18714_ _L18715_)
                                               (let ((_expr18730_
                                                      (apply gxc#compile-e
                                                             _L18714_
                                                             _args18666_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#begin-annotation
                                                        (cons _L18715_
                                                              (cons _expr18730_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx18665_)))
                                             _hd1867918709_
                                             _hd1867618701_)
                                            (_g1866818685_ _g1866918688_))))
                                    (_g1866818685_ _g1866918688_))))
                            (_g1866818685_ _g1866918688_))))
                    (_g1866818685_ _g1866918688_)))))
        (_g1866718732_ _stx18665_))))
  (define gxc#xform-lambda%
    (lambda (_stx18608_ . _args18609_)
      (let* ((_g1861118625_
              (lambda (_g1861218622_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1861218622_)))
             (_g1861018662_
              (lambda (_g1861218628_)
                (if (gx#stx-pair? _g1861218628_)
                    (let ((_e1861518630_ (gx#stx-e _g1861218628_)))
                      (let ((_hd1861618633_ (##car _e1861518630_))
                            (_tl1861718635_ (##cdr _e1861518630_)))
                        (if (gx#stx-pair? _tl1861718635_)
                            (let ((_e1861818638_ (gx#stx-e _tl1861718635_)))
                              (let ((_hd1861918641_ (##car _e1861818638_))
                                    (_tl1862018643_ (##cdr _e1861818638_)))
                                ((lambda (_L18646_ _L18647_)
                                   (let ((_body18660_
                                          (map (gxc#xform-apply-compile-e
                                                _args18609_)
                                               _L18646_)))
                                     (gxc#xform-wrap-source
                                      (cons '%#lambda
                                            (cons _L18647_ _body18660_))
                                      _stx18608_)))
                                 _tl1862018643_
                                 _hd1861918641_)))
                            (_g1861118625_ _g1861218628_))))
                    (_g1861118625_ _g1861218628_)))))
        (_g1861018662_ _stx18608_))))
  (define gxc#xform-case-lambda%
    (lambda (_stx18521_ . _args18522_)
      (letrec ((_clause-e18524_
                (lambda (_clause18565_)
                  (let* ((_g1856718578_
                          (lambda (_g1856818575_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1856818575_)))
                         (_g1856618605_
                          (lambda (_g1856818581_)
                            (if (gx#stx-pair? _g1856818581_)
                                (let ((_e1857118583_ (gx#stx-e _g1856818581_)))
                                  (let ((_hd1857218586_ (##car _e1857118583_))
                                        (_tl1857318588_ (##cdr _e1857118583_)))
                                    ((lambda (_L18591_ _L18592_)
                                       (let ((_body18603_
                                              (map (gxc#xform-apply-compile-e
                                                    _args18522_)
                                                   _L18591_)))
                                         (cons _L18592_ _body18603_)))
                                     _tl1857318588_
                                     _hd1857218586_)))
                                (_g1856718578_ _g1856818581_)))))
                    (_g1856618605_ _clause18565_)))))
        (let* ((_g1852618536_
                (lambda (_g1852718533_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1852718533_)))
               (_g1852518562_
                (lambda (_g1852718539_)
                  (if (gx#stx-pair? _g1852718539_)
                      (let ((_e1852918541_ (gx#stx-e _g1852718539_)))
                        (let ((_hd1853018544_ (##car _e1852918541_))
                              (_tl1853118546_ (##cdr _e1852918541_)))
                          ((lambda (_L18549_)
                             (let ((_clauses18560_
                                    (map _clause-e18524_ _L18549_)))
                               (gxc#xform-wrap-source
                                (cons '%#case-lambda _clauses18560_)
                                _stx18521_)))
                           _tl1853118546_)))
                      (_g1852618536_ _g1852718539_)))))
          (_g1852518562_ _stx18521_)))))
  (define gxc#xform-let-values%
    (lambda (_stx18315_ . _args18316_)
      (let* ((_g1831818351_
              (lambda (_g1831918348_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1831918348_)))
             (_g1831718518_
              (lambda (_g1831918354_)
                (if (gx#stx-pair? _g1831918354_)
                    (let ((_e1832418356_ (gx#stx-e _g1831918354_)))
                      (let ((_hd1832518359_ (##car _e1832418356_))
                            (_tl1832618361_ (##cdr _e1832418356_)))
                        (if (gx#stx-pair? _tl1832618361_)
                            (let ((_e1832718364_ (gx#stx-e _tl1832618361_)))
                              (let ((_hd1832818367_ (##car _e1832718364_))
                                    (_tl1832918369_ (##cdr _e1832718364_)))
                                (if (gx#stx-pair/null? _hd1832818367_)
                                    (let ((_g19107_
                                           (gx#syntax-split-splice
                                            _hd1832818367_
                                            '0)))
                                      (begin
                                        (let ((_g19108_
                                               (if (##values? _g19107_)
                                                   (##vector-length _g19107_)
                                                   1)))
                                          (if (not (##fx= _g19108_ 2))
                                              (error "Context expects 2 values"
                                                     _g19108_)))
                                        (let ((_target1833018372_
                                               (##vector-ref _g19107_ 0))
                                              (_tl1833218374_
                                               (##vector-ref _g19107_ 1)))
                                          (if (gx#stx-null? _tl1833218374_)
                                              (letrec ((_loop1833318377_
                                                        (lambda (_hd1833118380_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr1833718382_
                         _hd1833818384_)
                  (if (gx#stx-pair? _hd1833118380_)
                      (let ((_e1833418387_ (gx#stx-e _hd1833118380_)))
                        (let ((_lp-hd1833518390_ (##car _e1833418387_))
                              (_lp-tl1833618392_ (##cdr _e1833418387_)))
                          (if (gx#stx-pair? _lp-hd1833518390_)
                              (let ((_e1834118395_
                                     (gx#stx-e _lp-hd1833518390_)))
                                (let ((_hd1834218398_ (##car _e1834118395_))
                                      (_tl1834318400_ (##cdr _e1834118395_)))
                                  (if (gx#stx-pair? _tl1834318400_)
                                      (let ((_e1834418403_
                                             (gx#stx-e _tl1834318400_)))
                                        (let ((_hd1834518406_
                                               (##car _e1834418403_))
                                              (_tl1834618408_
                                               (##cdr _e1834418403_)))
                                          (if (gx#stx-null? _tl1834618408_)
                                              (_loop1833318377_
                                               _lp-tl1833618392_
                                               (cons _hd1834518406_
                                                     _expr1833718382_)
                                               (cons _hd1834218398_
                                                     _hd1833818384_))
                                              (_g1831818351_ _g1831918354_))))
                                      (_g1831818351_ _g1831918354_))))
                              (_g1831818351_ _g1831918354_))))
                      (let ((_expr1833918411_ (reverse _expr1833718382_))
                            (_hd1834018413_ (reverse _hd1833818384_)))
                        ((lambda (_L18416_ _L18417_ _L18418_ _L18419_)
                           (let* ((_g1843818454_
                                   (lambda (_g1843918451_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1843918451_)))
                                  (_g1843718508_
                                   (lambda (_g1843918457_)
                                     (if (gx#stx-pair/null? _g1843918457_)
                                         (let ((_g19109_
                                                (gx#syntax-split-splice
                                                 _g1843918457_
                                                 '0)))
                                           (begin
                                             (let ((_g19110_
                                                    (if (##values? _g19109_)
                                                        (##vector-length
                                                         _g19109_)
                                                        1)))
                                               (if (not (##fx= _g19110_ 2))
                                                   (error "Context expects 2 values"
                                                          _g19110_)))
                                             (let ((_target1844118459_
                                                    (##vector-ref _g19109_ 0))
                                                   (_tl1844318461_
                                                    (##vector-ref _g19109_ 1)))
                                               (if (gx#stx-null?
                                                    _tl1844318461_)
                                                   (letrec ((_loop1844418464_
                                                             (lambda (_hd1844218467_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _expr1844818469_)
                       (if (gx#stx-pair? _hd1844218467_)
                           (let ((_e1844518472_ (gx#syntax-e _hd1844218467_)))
                             (let ((_lp-hd1844618475_ (##car _e1844518472_))
                                   (_lp-tl1844718477_ (##cdr _e1844518472_)))
                               (_loop1844418464_
                                _lp-tl1844718477_
                                (cons _lp-hd1844618475_ _expr1844818469_))))
                           (let ((_expr1844918480_ (reverse _expr1844818469_)))
                             ((lambda (_L18483_)
                                (let ()
                                  (let ((_body18496_
                                         (map (gxc#xform-apply-compile-e
                                               _args18316_)
                                              _L18416_)))
                                    (gxc#xform-wrap-source
                                     (cons _L18419_
                                           (cons (begin
                                                   (gx#syntax-check-splice-targets
                                                    _L18483_
                                                    _L18418_)
                                                   (foldr2 (lambda (_g1849718501_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1849818503_
                            _g1849918505_)
                     (cons (cons _g1849818503_ (cons _g1849718501_ '()))
                           _g1849918505_))
                   '()
                   _L18483_
                   _L18418_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _body18496_))
                                     _stx18315_))))
                              _expr1844918480_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1844418464_
                                                      _target1844118459_
                                                      '()))
                                                   (_g1843818454_
                                                    _g1843918457_)))))
                                         (_g1843818454_ _g1843918457_)))))
                             (_g1843718508_
                              (map (gxc#xform-apply-compile-e _args18316_)
                                   (foldr1 (lambda (_g1851018513_
                                                    _g1851118515_)
                                             (cons _g1851018513_
                                                   _g1851118515_))
                                           '()
                                           _L18417_)))))
                         _tl1832918369_
                         _expr1833918411_
                         _hd1834018413_
                         _hd1832518359_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop1833318377_
                                                 _target1833018372_
                                                 '()
                                                 '()))
                                              (_g1831818351_ _g1831918354_)))))
                                    (_g1831818351_ _g1831918354_))))
                            (_g1831818351_ _g1831918354_))))
                    (_g1831818351_ _g1831918354_)))))
        (_g1831718518_ _stx18315_))))
  (define gxc#xform-operands
    (lambda (_stx18271_ . _args18272_)
      (let* ((_g1827418285_
              (lambda (_g1827518282_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1827518282_)))
             (_g1827318312_
              (lambda (_g1827518288_)
                (if (gx#stx-pair? _g1827518288_)
                    (let ((_e1827818290_ (gx#stx-e _g1827518288_)))
                      (let ((_hd1827918293_ (##car _e1827818290_))
                            (_tl1828018295_ (##cdr _e1827818290_)))
                        ((lambda (_L18298_ _L18299_)
                           (let ((_rands18310_
                                  (map (gxc#xform-apply-compile-e _args18272_)
                                       _L18298_)))
                             (gxc#xform-wrap-source
                              (cons _L18299_ _rands18310_)
                              _stx18271_)))
                         _tl1828018295_
                         _hd1827918293_)))
                    (_g1827418285_ _g1827518288_)))))
        (_g1827318312_ _stx18271_))))
  (define gxc#xform-call% gxc#xform-operands)
  (define gxc#xform-setq%
    (lambda (_stx18201_ . _args18202_)
      (let* ((_g1820418221_
              (lambda (_g1820518218_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1820518218_)))
             (_g1820318268_
              (lambda (_g1820518224_)
                (if (gx#stx-pair? _g1820518224_)
                    (let ((_e1820818226_ (gx#stx-e _g1820518224_)))
                      (let ((_hd1820918229_ (##car _e1820818226_))
                            (_tl1821018231_ (##cdr _e1820818226_)))
                        (if (gx#stx-pair? _tl1821018231_)
                            (let ((_e1821118234_ (gx#stx-e _tl1821018231_)))
                              (let ((_hd1821218237_ (##car _e1821118234_))
                                    (_tl1821318239_ (##cdr _e1821118234_)))
                                (if (gx#stx-pair? _tl1821318239_)
                                    (let ((_e1821418242_
                                           (gx#stx-e _tl1821318239_)))
                                      (let ((_hd1821518245_
                                             (##car _e1821418242_))
                                            (_tl1821618247_
                                             (##cdr _e1821418242_)))
                                        (if (gx#stx-null? _tl1821618247_)
                                            ((lambda (_L18250_ _L18251_)
                                               (let ((_expr18266_
                                                      (apply gxc#compile-e
                                                             _L18250_
                                                             _args18202_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#set!
                                                        (cons _L18251_
                                                              (cons _expr18266_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx18201_)))
                                             _hd1821518245_
                                             _hd1821218237_)
                                            (_g1820418221_ _g1820518224_))))
                                    (_g1820418221_ _g1820518224_))))
                            (_g1820418221_ _g1820518224_))))
                    (_g1820418221_ _g1820518224_)))))
        (_g1820318268_ _stx18201_))))
  (define gxc#collect-mutators-setq%
    (lambda (_stx18132_)
      (let* ((_g1813418151_
              (lambda (_g1813518148_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1813518148_)))
             (_g1813318198_
              (lambda (_g1813518154_)
                (if (gx#stx-pair? _g1813518154_)
                    (let ((_e1813818156_ (gx#stx-e _g1813518154_)))
                      (let ((_hd1813918159_ (##car _e1813818156_))
                            (_tl1814018161_ (##cdr _e1813818156_)))
                        (if (gx#stx-pair? _tl1814018161_)
                            (let ((_e1814118164_ (gx#stx-e _tl1814018161_)))
                              (let ((_hd1814218167_ (##car _e1814118164_))
                                    (_tl1814318169_ (##cdr _e1814118164_)))
                                (if (gx#stx-pair? _tl1814318169_)
                                    (let ((_e1814418172_
                                           (gx#stx-e _tl1814318169_)))
                                      (let ((_hd1814518175_
                                             (##car _e1814418172_))
                                            (_tl1814618177_
                                             (##cdr _e1814418172_)))
                                        (if (gx#stx-null? _tl1814618177_)
                                            ((lambda (_L18180_ _L18181_)
                                               (let ((_sym18196_
                                                      (gxc#identifier-symbol
                                                       _L18181_)))
                                                 (gxc#verbose
                                                  '"collect mutator "
                                                  _sym18196_)
                                                 (table-set!
                                                  (gxc#current-compile-mutators)
                                                  _sym18196_
                                                  '#t)
                                                 (gxc#compile-e _L18180_)))
                                             _hd1814518175_
                                             _hd1814218167_)
                                            (_g1813418151_ _g1813518154_))))
                                    (_g1813418151_ _g1813518154_))))
                            (_g1813418151_ _g1813518154_))))
                    (_g1813418151_ _g1813518154_)))))
        (_g1813318198_ _stx18132_))))
  (define gxc#expression-subst-ref%
    (lambda (_stx18079_ _id18080_ _new-id18081_)
      (let* ((_g1808318096_
              (lambda (_g1808418093_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1808418093_)))
             (_g1808218129_
              (lambda (_g1808418099_)
                (if (gx#stx-pair? _g1808418099_)
                    (let ((_e1808618101_ (gx#stx-e _g1808418099_)))
                      (let ((_hd1808718104_ (##car _e1808618101_))
                            (_tl1808818106_ (##cdr _e1808618101_)))
                        (if (gx#stx-pair? _tl1808818106_)
                            (let ((_e1808918109_ (gx#stx-e _tl1808818106_)))
                              (let ((_hd1809018112_ (##car _e1808918109_))
                                    (_tl1809118114_ (##cdr _e1808918109_)))
                                (if (gx#stx-null? _tl1809118114_)
                                    ((lambda (_L18117_)
                                       (if (gx#free-identifier=?
                                            _L18117_
                                            _id18080_)
                                           (gxc#xform-wrap-source
                                            (cons '%#ref
                                                  (cons _new-id18081_ '()))
                                            _stx18079_)
                                           _stx18079_))
                                     _hd1809018112_)
                                    (_g1808318096_ _g1808418099_))))
                            (_g1808318096_ _g1808418099_))))
                    (_g1808318096_ _g1808418099_)))))
        (_g1808218129_ _stx18079_))))
  (define gxc#expression-subst*-ref%
    (lambda (_stx18020_ _subst18021_)
      (let* ((_g1802318036_
              (lambda (_g1802418033_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1802418033_)))
             (_g1802218076_
              (lambda (_g1802418039_)
                (if (gx#stx-pair? _g1802418039_)
                    (let ((_e1802618041_ (gx#stx-e _g1802418039_)))
                      (let ((_hd1802718044_ (##car _e1802618041_))
                            (_tl1802818046_ (##cdr _e1802618041_)))
                        (if (gx#stx-pair? _tl1802818046_)
                            (let ((_e1802918049_ (gx#stx-e _tl1802818046_)))
                              (let ((_hd1803018052_ (##car _e1802918049_))
                                    (_tl1803118054_ (##cdr _e1802918049_)))
                                (if (gx#stx-null? _tl1803118054_)
                                    ((lambda (_L18057_)
                                       (let ((_$e18071_
                                              (find (lambda (_sub18069_)
                                                      (gx#free-identifier=?
                                                       _L18057_
                                                       (car _sub18069_)))
                                                    _subst18021_)))
                                         (if _$e18071_
                                             ((lambda (_sub18074_)
                                                (gxc#xform-wrap-source
                                                 (cons '%#ref
                                                       (cons (cdr _sub18074_)
                                                             '()))
                                                 _stx18020_))
                                              _$e18071_)
                                             _stx18020_)))
                                     _hd1803018052_)
                                    (_g1802318036_ _g1802418039_))))
                            (_g1802318036_ _g1802418039_))))
                    (_g1802318036_ _g1802418039_)))))
        (_g1802218076_ _stx18020_))))
  (define gxc#expression-subst-setq%
    (lambda (_stx17948_ _id17949_ _new-id17950_)
      (let* ((_g1795217969_
              (lambda (_g1795317966_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1795317966_)))
             (_g1795118017_
              (lambda (_g1795317972_)
                (if (gx#stx-pair? _g1795317972_)
                    (let ((_e1795617974_ (gx#stx-e _g1795317972_)))
                      (let ((_hd1795717977_ (##car _e1795617974_))
                            (_tl1795817979_ (##cdr _e1795617974_)))
                        (if (gx#stx-pair? _tl1795817979_)
                            (let ((_e1795917982_ (gx#stx-e _tl1795817979_)))
                              (let ((_hd1796017985_ (##car _e1795917982_))
                                    (_tl1796117987_ (##cdr _e1795917982_)))
                                (if (gx#stx-pair? _tl1796117987_)
                                    (let ((_e1796217990_
                                           (gx#stx-e _tl1796117987_)))
                                      (let ((_hd1796317993_
                                             (##car _e1796217990_))
                                            (_tl1796417995_
                                             (##cdr _e1796217990_)))
                                        (if (gx#stx-null? _tl1796417995_)
                                            ((lambda (_L17998_ _L17999_)
                                               (let ((_new-expr18014_
                                                      (gxc#compile-e
                                                       _L17998_
                                                       _id17949_
                                                       _new-id17950_))
                                                     (_new-xid18015_
                                                      (if (gx#free-identifier=?
                                                           _L17999_
                                                           _id17949_)
                                                          _new-id17950_
                                                          _L17999_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#set!
                                                        (cons _new-xid18015_
                                                              (cons _new-expr18014_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx17948_)))
                                             _hd1796317993_
                                             _hd1796017985_)
                                            (_g1795217969_ _g1795317972_))))
                                    (_g1795217969_ _g1795317972_))))
                            (_g1795217969_ _g1795317972_))))
                    (_g1795217969_ _g1795317972_)))))
        (_g1795118017_ _stx17948_))))
  (define gxc#expression-subst*-setq%
    (lambda (_stx17872_ _subst17873_)
      (let* ((_g1787517892_
              (lambda (_g1787617889_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1787617889_)))
             (_g1787417945_
              (lambda (_g1787617895_)
                (if (gx#stx-pair? _g1787617895_)
                    (let ((_e1787917897_ (gx#stx-e _g1787617895_)))
                      (let ((_hd1788017900_ (##car _e1787917897_))
                            (_tl1788117902_ (##cdr _e1787917897_)))
                        (if (gx#stx-pair? _tl1788117902_)
                            (let ((_e1788217905_ (gx#stx-e _tl1788117902_)))
                              (let ((_hd1788317908_ (##car _e1788217905_))
                                    (_tl1788417910_ (##cdr _e1788217905_)))
                                (if (gx#stx-pair? _tl1788417910_)
                                    (let ((_e1788517913_
                                           (gx#stx-e _tl1788417910_)))
                                      (let ((_hd1788617916_
                                             (##car _e1788517913_))
                                            (_tl1788717918_
                                             (##cdr _e1788517913_)))
                                        (if (gx#stx-null? _tl1788717918_)
                                            ((lambda (_L17921_ _L17922_)
                                               (let ((_new-expr17942_
                                                      (gxc#compile-e
                                                       _L17921_
                                                       _subst17873_))
                                                     (_new-xid17943_
                                                      (let ((_$e17939_
                                                             (find (lambda (_sub17937_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#free-identifier=? _L17922_ (car _sub17937_)))
                           _subst17873_)))
                (if _$e17939_ (cdr _$e17939_) _L17922_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (gxc#xform-wrap-source
                                                  (cons '%#set!
                                                        (cons _new-xid17943_
                                                              (cons _new-expr17942_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx17872_)))
                                             _hd1788617916_
                                             _hd1788317908_)
                                            (_g1787517892_ _g1787617895_))))
                                    (_g1787517892_ _g1787617895_))))
                            (_g1787517892_ _g1787617895_))))
                    (_g1787517892_ _g1787617895_)))))
        (_g1787417945_ _stx17872_))))
  (define gxc#collect-runtime-refs-ref%
    (lambda (_stx17818_ _ht17819_)
      (let* ((_g1782117834_
              (lambda (_g1782217831_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1782217831_)))
             (_g1782017869_
              (lambda (_g1782217837_)
                (if (gx#stx-pair? _g1782217837_)
                    (let ((_e1782417839_ (gx#stx-e _g1782217837_)))
                      (let ((_hd1782517842_ (##car _e1782417839_))
                            (_tl1782617844_ (##cdr _e1782417839_)))
                        (if (gx#stx-pair? _tl1782617844_)
                            (let ((_e1782717847_ (gx#stx-e _tl1782617844_)))
                              (let ((_hd1782817850_ (##car _e1782717847_))
                                    (_tl1782917852_ (##cdr _e1782717847_)))
                                (if (gx#stx-null? _tl1782917852_)
                                    ((lambda (_L17855_)
                                       (let ((_eid17867_
                                              (gxc#identifier-symbol
                                               _L17855_)))
                                         (hash-update!
                                          _ht17819_
                                          _eid17867_
                                          1+
                                          '0)))
                                     _hd1782817850_)
                                    (_g1782117834_ _g1782217837_))))
                            (_g1782117834_ _g1782217837_))))
                    (_g1782117834_ _g1782217837_)))))
        (_g1782017869_ _stx17818_))))
  (define gxc#collect-runtime-refs-setq%
    (lambda (_stx17748_ _ht17749_)
      (let* ((_g1775117768_
              (lambda (_g1775217765_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1775217765_)))
             (_g1775017815_
              (lambda (_g1775217771_)
                (if (gx#stx-pair? _g1775217771_)
                    (let ((_e1775517773_ (gx#stx-e _g1775217771_)))
                      (let ((_hd1775617776_ (##car _e1775517773_))
                            (_tl1775717778_ (##cdr _e1775517773_)))
                        (if (gx#stx-pair? _tl1775717778_)
                            (let ((_e1775817781_ (gx#stx-e _tl1775717778_)))
                              (let ((_hd1775917784_ (##car _e1775817781_))
                                    (_tl1776017786_ (##cdr _e1775817781_)))
                                (if (gx#stx-pair? _tl1776017786_)
                                    (let ((_e1776117789_
                                           (gx#stx-e _tl1776017786_)))
                                      (let ((_hd1776217792_
                                             (##car _e1776117789_))
                                            (_tl1776317794_
                                             (##cdr _e1776117789_)))
                                        (if (gx#stx-null? _tl1776317794_)
                                            ((lambda (_L17797_ _L17798_)
                                               (let ((_eid17813_
                                                      (gxc#identifier-symbol
                                                       _L17798_)))
                                                 (hash-update!
                                                  _ht17749_
                                                  _eid17813_
                                                  1+
                                                  '0)
                                                 (gxc#compile-e
                                                  _L17797_
                                                  _ht17749_)))
                                             _hd1776217792_
                                             _hd1775917784_)
                                            (_g1775117768_ _g1775217771_))))
                                    (_g1775117768_ _g1775217771_))))
                            (_g1775117768_ _g1775217771_))))
                    (_g1775117768_ _g1775217771_)))))
        (_g1775017815_ _stx17748_))))
  (define gxc#find-body%
    (lambda (_stx17661_ _arg17662_)
      (let* ((_g1766417683_
              (lambda (_g1766517680_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1766517680_)))
             (_g1766317745_
              (lambda (_g1766517686_)
                (if (gx#stx-pair? _g1766517686_)
                    (let ((_e1766717688_ (gx#stx-e _g1766517686_)))
                      (let ((_hd1766817691_ (##car _e1766717688_))
                            (_tl1766917693_ (##cdr _e1766717688_)))
                        (if (gx#stx-pair/null? _tl1766917693_)
                            (let ((_g19111_
                                   (gx#syntax-split-splice _tl1766917693_ '0)))
                              (begin
                                (let ((_g19112_
                                       (if (##values? _g19111_)
                                           (##vector-length _g19111_)
                                           1)))
                                  (if (not (##fx= _g19112_ 2))
                                      (error "Context expects 2 values"
                                             _g19112_)))
                                (let ((_target1767017696_
                                       (##vector-ref _g19111_ 0))
                                      (_tl1767217698_
                                       (##vector-ref _g19111_ 1)))
                                  (if (gx#stx-null? _tl1767217698_)
                                      (letrec ((_loop1767317701_
                                                (lambda (_hd1767117704_
                                                         _expr1767717706_)
                                                  (if (gx#stx-pair?
                                                       _hd1767117704_)
                                                      (let ((_e1767417709_
                                                             (gx#stx-e
                                                              _hd1767117704_)))
                                                        (let ((_lp-hd1767517712_
                                                               (##car _e1767417709_))
                                                              (_lp-tl1767617714_
                                                               (##cdr _e1767417709_)))
                                                          (_loop1767317701_
                                                           _lp-tl1767617714_
                                                           (cons _lp-hd1767517712_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr1767717706_))))
              (let ((_expr1767817717_ (reverse _expr1767717706_)))
                ((lambda (_L17720_)
                   (ormap1 (lambda (_g1773317735_)
                             (gxc#compile-e _g1773317735_ _arg17662_))
                           (foldr1 (lambda (_g1773717740_ _g1773817742_)
                                     (cons _g1773717740_ _g1773817742_))
                                   '()
                                   _L17720_)))
                 _expr1767817717_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1767317701_
                                         _target1767017696_
                                         '()))
                                      (_g1766417683_ _g1766517686_)))))
                            (_g1766417683_ _g1766517686_))))
                    (_g1766417683_ _g1766517686_)))))
        (_g1766317745_ _stx17661_))))
  (define gxc#find-begin-annotation%
    (lambda (_stx17593_ _arg17594_)
      (let* ((_g1759617613_
              (lambda (_g1759717610_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1759717610_)))
             (_g1759517658_
              (lambda (_g1759717616_)
                (if (gx#stx-pair? _g1759717616_)
                    (let ((_e1760017618_ (gx#stx-e _g1759717616_)))
                      (let ((_hd1760117621_ (##car _e1760017618_))
                            (_tl1760217623_ (##cdr _e1760017618_)))
                        (if (gx#stx-pair? _tl1760217623_)
                            (let ((_e1760317626_ (gx#stx-e _tl1760217623_)))
                              (let ((_hd1760417629_ (##car _e1760317626_))
                                    (_tl1760517631_ (##cdr _e1760317626_)))
                                (if (gx#stx-pair? _tl1760517631_)
                                    (let ((_e1760617634_
                                           (gx#stx-e _tl1760517631_)))
                                      (let ((_hd1760717637_
                                             (##car _e1760617634_))
                                            (_tl1760817639_
                                             (##cdr _e1760617634_)))
                                        (if (gx#stx-null? _tl1760817639_)
                                            ((lambda (_L17642_ _L17643_)
                                               (gxc#compile-e
                                                _L17642_
                                                _arg17594_))
                                             _hd1760717637_
                                             _hd1760417629_)
                                            (_g1759617613_ _g1759717616_))))
                                    (_g1759617613_ _g1759717616_))))
                            (_g1759617613_ _g1759717616_))))
                    (_g1759617613_ _g1759717616_)))))
        (_g1759517658_ _stx17593_))))
  (define gxc#find-lambda%
    (lambda (_stx17525_ _arg17526_)
      (let* ((_g1752817545_
              (lambda (_g1752917542_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1752917542_)))
             (_g1752717590_
              (lambda (_g1752917548_)
                (if (gx#stx-pair? _g1752917548_)
                    (let ((_e1753217550_ (gx#stx-e _g1752917548_)))
                      (let ((_hd1753317553_ (##car _e1753217550_))
                            (_tl1753417555_ (##cdr _e1753217550_)))
                        (if (gx#stx-pair? _tl1753417555_)
                            (let ((_e1753517558_ (gx#stx-e _tl1753417555_)))
                              (let ((_hd1753617561_ (##car _e1753517558_))
                                    (_tl1753717563_ (##cdr _e1753517558_)))
                                (if (gx#stx-pair? _tl1753717563_)
                                    (let ((_e1753817566_
                                           (gx#stx-e _tl1753717563_)))
                                      (let ((_hd1753917569_
                                             (##car _e1753817566_))
                                            (_tl1754017571_
                                             (##cdr _e1753817566_)))
                                        (if (gx#stx-null? _tl1754017571_)
                                            ((lambda (_L17574_ _L17575_)
                                               (gxc#compile-e
                                                _L17574_
                                                _arg17526_))
                                             _hd1753917569_
                                             _hd1753617561_)
                                            (_g1752817545_ _g1752917548_))))
                                    (_g1752817545_ _g1752917548_))))
                            (_g1752817545_ _g1752917548_))))
                    (_g1752817545_ _g1752917548_)))))
        (_g1752717590_ _stx17525_))))
  (define gxc#find-case-lambda%
    (lambda (_stx17407_ _arg17408_)
      (let* ((_g1741017438_
              (lambda (_g1741117435_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1741117435_)))
             (_g1740917522_
              (lambda (_g1741117441_)
                (if (gx#stx-pair? _g1741117441_)
                    (let ((_e1741417443_ (gx#stx-e _g1741117441_)))
                      (let ((_hd1741517446_ (##car _e1741417443_))
                            (_tl1741617448_ (##cdr _e1741417443_)))
                        (if (gx#stx-pair/null? _tl1741617448_)
                            (let ((_g19113_
                                   (gx#syntax-split-splice _tl1741617448_ '0)))
                              (begin
                                (let ((_g19114_
                                       (if (##values? _g19113_)
                                           (##vector-length _g19113_)
                                           1)))
                                  (if (not (##fx= _g19114_ 2))
                                      (error "Context expects 2 values"
                                             _g19114_)))
                                (let ((_target1741717451_
                                       (##vector-ref _g19113_ 0))
                                      (_tl1741917453_
                                       (##vector-ref _g19113_ 1)))
                                  (if (gx#stx-null? _tl1741917453_)
                                      (letrec ((_loop1742017456_
                                                (lambda (_hd1741817459_
                                                         _body1742417461_
                                                         _hd1742517463_)
                                                  (if (gx#stx-pair?
                                                       _hd1741817459_)
                                                      (let ((_e1742117466_
                                                             (gx#stx-e
                                                              _hd1741817459_)))
                                                        (let ((_lp-hd1742217469_
                                                               (##car _e1742117466_))
                                                              (_lp-tl1742317471_
                                                               (##cdr _e1742117466_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd1742217469_)
                                                              (let ((_e1742817474_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _lp-hd1742217469_)))
                        (let ((_hd1742917477_ (##car _e1742817474_))
                              (_tl1743017479_ (##cdr _e1742817474_)))
                          (if (gx#stx-pair? _tl1743017479_)
                              (let ((_e1743117482_ (gx#stx-e _tl1743017479_)))
                                (let ((_hd1743217485_ (##car _e1743117482_))
                                      (_tl1743317487_ (##cdr _e1743117482_)))
                                  (if (gx#stx-null? _tl1743317487_)
                                      (_loop1742017456_
                                       _lp-tl1742317471_
                                       (cons _hd1743217485_ _body1742417461_)
                                       (cons _hd1742917477_ _hd1742517463_))
                                      (_g1741017438_ _g1741117441_))))
                              (_g1741017438_ _g1741117441_))))
                      (_g1741017438_ _g1741117441_))))
              (let ((_body1742617490_ (reverse _body1742417461_))
                    (_hd1742717492_ (reverse _hd1742517463_)))
                ((lambda (_L17495_ _L17496_)
                   (ormap1 (lambda (_g1751017512_)
                             (gxc#compile-e _g1751017512_ _arg17408_))
                           (foldr1 (lambda (_g1751417517_ _g1751517519_)
                                     (cons _g1751417517_ _g1751517519_))
                                   '()
                                   _L17495_)))
                 _body1742617490_
                 _hd1742717492_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1742017456_
                                         _target1741717451_
                                         '()
                                         '()))
                                      (_g1741017438_ _g1741117441_)))))
                            (_g1741017438_ _g1741117441_))))
                    (_g1741017438_ _g1741117441_)))))
        (_g1740917522_ _stx17407_))))
  (define gxc#find-let-values%
    (lambda (_stx17257_ _arg17258_)
      (let* ((_g1726017295_
              (lambda (_g1726117292_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1726117292_)))
             (_g1725917404_
              (lambda (_g1726117298_)
                (if (gx#stx-pair? _g1726117298_)
                    (let ((_e1726517300_ (gx#stx-e _g1726117298_)))
                      (let ((_hd1726617303_ (##car _e1726517300_))
                            (_tl1726717305_ (##cdr _e1726517300_)))
                        (if (gx#stx-pair? _tl1726717305_)
                            (let ((_e1726817308_ (gx#stx-e _tl1726717305_)))
                              (let ((_hd1726917311_ (##car _e1726817308_))
                                    (_tl1727017313_ (##cdr _e1726817308_)))
                                (if (gx#stx-pair/null? _hd1726917311_)
                                    (let ((_g19115_
                                           (gx#syntax-split-splice
                                            _hd1726917311_
                                            '0)))
                                      (begin
                                        (let ((_g19116_
                                               (if (##values? _g19115_)
                                                   (##vector-length _g19115_)
                                                   1)))
                                          (if (not (##fx= _g19116_ 2))
                                              (error "Context expects 2 values"
                                                     _g19116_)))
                                        (let ((_target1727117316_
                                               (##vector-ref _g19115_ 0))
                                              (_tl1727317318_
                                               (##vector-ref _g19115_ 1)))
                                          (if (gx#stx-null? _tl1727317318_)
                                              (letrec ((_loop1727417321_
                                                        (lambda (_hd1727217324_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr1727817326_
                         _bind1727917328_)
                  (if (gx#stx-pair? _hd1727217324_)
                      (let ((_e1727517331_ (gx#stx-e _hd1727217324_)))
                        (let ((_lp-hd1727617334_ (##car _e1727517331_))
                              (_lp-tl1727717336_ (##cdr _e1727517331_)))
                          (if (gx#stx-pair? _lp-hd1727617334_)
                              (let ((_e1728217339_
                                     (gx#stx-e _lp-hd1727617334_)))
                                (let ((_hd1728317342_ (##car _e1728217339_))
                                      (_tl1728417344_ (##cdr _e1728217339_)))
                                  (if (gx#stx-pair? _tl1728417344_)
                                      (let ((_e1728517347_
                                             (gx#stx-e _tl1728417344_)))
                                        (let ((_hd1728617350_
                                               (##car _e1728517347_))
                                              (_tl1728717352_
                                               (##cdr _e1728517347_)))
                                          (if (gx#stx-null? _tl1728717352_)
                                              (_loop1727417321_
                                               _lp-tl1727717336_
                                               (cons _hd1728617350_
                                                     _expr1727817326_)
                                               (cons _hd1728317342_
                                                     _bind1727917328_))
                                              (_g1726017295_ _g1726117298_))))
                                      (_g1726017295_ _g1726117298_))))
                              (_g1726017295_ _g1726117298_))))
                      (let ((_expr1728017355_ (reverse _expr1727817326_))
                            (_bind1728117357_ (reverse _bind1727917328_)))
                        (if (gx#stx-pair? _tl1727017313_)
                            (let ((_e1728817360_ (gx#stx-e _tl1727017313_)))
                              (let ((_hd1728917363_ (##car _e1728817360_))
                                    (_tl1729017365_ (##cdr _e1728817360_)))
                                (if (gx#stx-null? _tl1729017365_)
                                    ((lambda (_L17368_ _L17369_ _L17370_)
                                       (let ((_$e17401_
                                              (ormap1 (lambda (_g1738917391_)
                                                        (gxc#compile-e
                                                         _g1738917391_
                                                         _arg17258_))
                                                      (foldr1 (lambda (_g1739317396_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1739417398_)
                        (cons _g1739317396_ _g1739417398_))
                      '()
                      _L17369_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (if _$e17401_
                                             _$e17401_
                                             (gxc#compile-e
                                              _L17368_
                                              _arg17258_))))
                                     _hd1728917363_
                                     _expr1728017355_
                                     _bind1728117357_)
                                    (_g1726017295_ _g1726117298_))))
                            (_g1726017295_ _g1726117298_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop1727417321_
                                                 _target1727117316_
                                                 '()
                                                 '()))
                                              (_g1726017295_ _g1726117298_)))))
                                    (_g1726017295_ _g1726117298_))))
                            (_g1726017295_ _g1726117298_))))
                    (_g1726017295_ _g1726117298_)))))
        (_g1725917404_ _stx17257_))))
  (define gxc#find-setq%
    (lambda (_stx17189_ _arg17190_)
      (let* ((_g1719217209_
              (lambda (_g1719317206_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1719317206_)))
             (_g1719117254_
              (lambda (_g1719317212_)
                (if (gx#stx-pair? _g1719317212_)
                    (let ((_e1719617214_ (gx#stx-e _g1719317212_)))
                      (let ((_hd1719717217_ (##car _e1719617214_))
                            (_tl1719817219_ (##cdr _e1719617214_)))
                        (if (gx#stx-pair? _tl1719817219_)
                            (let ((_e1719917222_ (gx#stx-e _tl1719817219_)))
                              (let ((_hd1720017225_ (##car _e1719917222_))
                                    (_tl1720117227_ (##cdr _e1719917222_)))
                                (if (gx#stx-pair? _tl1720117227_)
                                    (let ((_e1720217230_
                                           (gx#stx-e _tl1720117227_)))
                                      (let ((_hd1720317233_
                                             (##car _e1720217230_))
                                            (_tl1720417235_
                                             (##cdr _e1720217230_)))
                                        (if (gx#stx-null? _tl1720417235_)
                                            ((lambda (_L17238_ _L17239_)
                                               (gxc#compile-e
                                                _L17238_
                                                _arg17190_))
                                             _hd1720317233_
                                             _hd1720017225_)
                                            (_g1719217209_ _g1719317212_))))
                                    (_g1719217209_ _g1719317212_))))
                            (_g1719217209_ _g1719317212_))))
                    (_g1719217209_ _g1719317212_)))))
        (_g1719117254_ _stx17189_))))
  (define gxc#find-var-refs-ref%
    (lambda (_stx17133_ _ids17134_)
      (let* ((_g1713617149_
              (lambda (_g1713717146_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1713717146_)))
             (_g1713517186_
              (lambda (_g1713717152_)
                (if (gx#stx-pair? _g1713717152_)
                    (let ((_e1713917154_ (gx#stx-e _g1713717152_)))
                      (let ((_hd1714017157_ (##car _e1713917154_))
                            (_tl1714117159_ (##cdr _e1713917154_)))
                        (if (gx#stx-pair? _tl1714117159_)
                            (let ((_e1714217162_ (gx#stx-e _tl1714117159_)))
                              (let ((_hd1714317165_ (##car _e1714217162_))
                                    (_tl1714417167_ (##cdr _e1714217162_)))
                                (if (gx#stx-null? _tl1714417167_)
                                    ((lambda (_L17170_)
                                       (find (lambda (_g1718117183_)
                                               (gx#free-identifier=?
                                                _L17170_
                                                _g1718117183_))
                                             _ids17134_))
                                     _hd1714317165_)
                                    (_g1713617149_ _g1713717152_))))
                            (_g1713617149_ _g1713717152_))))
                    (_g1713617149_ _g1713717152_)))))
        (_g1713517186_ _stx17133_))))
  (define gxc#find-var-refs-setq%
    (lambda (_stx17057_ _ids17058_)
      (let* ((_g1706017077_
              (lambda (_g1706117074_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1706117074_)))
             (_g1705917130_
              (lambda (_g1706117080_)
                (if (gx#stx-pair? _g1706117080_)
                    (let ((_e1706417082_ (gx#stx-e _g1706117080_)))
                      (let ((_hd1706517085_ (##car _e1706417082_))
                            (_tl1706617087_ (##cdr _e1706417082_)))
                        (if (gx#stx-pair? _tl1706617087_)
                            (let ((_e1706717090_ (gx#stx-e _tl1706617087_)))
                              (let ((_hd1706817093_ (##car _e1706717090_))
                                    (_tl1706917095_ (##cdr _e1706717090_)))
                                (if (gx#stx-pair? _tl1706917095_)
                                    (let ((_e1707017098_
                                           (gx#stx-e _tl1706917095_)))
                                      (let ((_hd1707117101_
                                             (##car _e1707017098_))
                                            (_tl1707217103_
                                             (##cdr _e1707017098_)))
                                        (if (gx#stx-null? _tl1707217103_)
                                            ((lambda (_L17106_ _L17107_)
                                               (let ((_$e17127_
                                                      (find (lambda (_g1712217124_)
                                                              (gx#free-identifier=?
                                                               _L17107_
                                                               _g1712217124_))
                                                            _ids17058_)))
                                                 (if _$e17127_
                                                     _$e17127_
                                                     (gxc#compile-e
                                                      _L17106_
                                                      _ids17058_))))
                                             _hd1707117101_
                                             _hd1706817093_)
                                            (_g1706017077_ _g1706117080_))))
                                    (_g1706017077_ _g1706117080_))))
                            (_g1706017077_ _g1706117080_))))
                    (_g1706017077_ _g1706117080_)))))
        (_g1705917130_ _stx17057_)))))
