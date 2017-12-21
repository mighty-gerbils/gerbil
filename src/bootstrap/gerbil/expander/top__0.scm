(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#core-expand-begin%
    (lambda (_stx9152_)
      (letrec ((_expand-special9154_
                (lambda (_hd9156_ _K9157_ _rest9158_ _r9159_)
                  (_K9157_ _rest9158_
                           (cons (gx#core-expand-top _hd9156_) _r9159_)))))
        (gx#core-expand-block__0 _stx9152_ _expand-special9154_))))
  (define gx#core-expand-begin-syntax%
    (lambda (_stx8905_)
      (letrec ((_expand-special8907_
                (lambda (_hd9027_ _K9028_ _rest9029_ _r9030_)
                  (let* ((_K9034_ (lambda (_e9032_)
                                    (_K9028_ _rest9029_
                                             (cons _e9032_ _r9030_))))
                         (_e90359064_ _hd9027_)
                         (_E90599068_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e90359064_)))
                         (_E90559080_
                          (lambda ()
                            (if (gx#stx-pair? _e90359064_)
                                (let ((_e90609072_ (gx#syntax-e _e90359064_)))
                                  (let ((_hd90619075_ (##car _e90609072_))
                                        (_tl90629077_ (##cdr _e90609072_)))
                                    (if (if (gx#identifier? _hd90619075_)
                                            (gx#core-identifier=?
                                             _hd90619075_
                                             '%#define-runtime)
                                            '#f)
                                        (if '#t
                                            (_K9034_ (gx#core-expand-define-runtime%
                                                      _hd9027_))
                                            (_E90599068_))
                                        (_E90599068_))))
                                (_E90599068_))))
                         (_E90519092_
                          (lambda ()
                            (if (gx#stx-pair? _e90359064_)
                                (let ((_e90569084_ (gx#syntax-e _e90359064_)))
                                  (let ((_hd90579087_ (##car _e90569084_))
                                        (_tl90589089_ (##cdr _e90569084_)))
                                    (if (if (gx#identifier? _hd90579087_)
                                            (gx#core-identifier=?
                                             _hd90579087_
                                             '%#define-alias)
                                            '#f)
                                        (if '#t
                                            (_K9034_ (gx#core-expand-define-alias%
                                                      _hd9027_))
                                            (_E90559080_))
                                        (_E90559080_))))
                                (_E90559080_))))
                         (_E90419104_
                          (lambda ()
                            (if (gx#stx-pair? _e90359064_)
                                (let ((_e90529096_ (gx#syntax-e _e90359064_)))
                                  (let ((_hd90539099_ (##car _e90529096_))
                                        (_tl90549101_ (##cdr _e90529096_)))
                                    (if (if (gx#identifier? _hd90539099_)
                                            (gx#core-identifier=?
                                             _hd90539099_
                                             '%#define-syntax)
                                            '#f)
                                        (if '#t
                                            (_K9034_ (gx#core-expand-define-syntax%
                                                      _hd9027_))
                                            (_E90519092_))
                                        (_E90519092_))))
                                (_E90519092_))))
                         (_E90379136_
                          (lambda ()
                            (if (gx#stx-pair? _e90359064_)
                                (let ((_e90429108_ (gx#syntax-e _e90359064_)))
                                  (let ((_hd90439111_ (##car _e90429108_))
                                        (_tl90449113_ (##cdr _e90429108_)))
                                    (if (if (gx#identifier? _hd90439111_)
                                            (gx#core-identifier=?
                                             _hd90439111_
                                             '%#define-values)
                                            '#f)
                                        (if (gx#stx-pair? _tl90449113_)
                                            (let ((_e90459116_
                                                   (gx#syntax-e _tl90449113_)))
                                              (let ((_hd90469119_
                                                     (##car _e90459116_))
                                                    (_tl90479121_
                                                     (##cdr _e90459116_)))
                                                (let ((_hd-bind9124_
                                                       _hd90469119_))
                                                  (if (gx#stx-pair?
                                                       _tl90479121_)
                                                      (let ((_e90489126_
                                                             (gx#syntax-e
                                                              _tl90479121_)))
                                                        (let ((_hd90499129_
                                                               (##car _e90489126_))
                                                              (_tl90509131_
                                                               (##cdr _e90489126_)))
                                                          (let ((_expr9134_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd90499129_))
                    (if (gx#stx-null? _tl90509131_)
                        (if (gx#core-bind-values? _hd-bind9124_)
                            (begin
                              (gx#core-bind-values!__0 _hd-bind9124_)
                              (_K9034_ _hd9027_))
                            (_E90419104_))
                        (_E90419104_)))))
              (_E90419104_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E90419104_))
                                        (_E90419104_))))
                                (_E90419104_))))
                         (_E90369148_
                          (lambda ()
                            (if (gx#stx-pair? _e90359064_)
                                (let ((_e90389140_ (gx#syntax-e _e90359064_)))
                                  (let ((_hd90399143_ (##car _e90389140_))
                                        (_tl90409145_ (##cdr _e90389140_)))
                                    (if (if (gx#identifier? _hd90399143_)
                                            (gx#core-identifier=?
                                             _hd90399143_
                                             '%#begin-syntax)
                                            '#f)
                                        (if '#t
                                            (_K9034_ (gx#core-expand-begin-syntax%
                                                      _hd9027_))
                                            (_E90379136_))
                                        (_E90379136_))))
                                (_E90379136_)))))
                    (_E90369148_))))
               (_eval-body8908_
                (lambda (_rbody8916_)
                  (let _lp8918_ ((_rest8920_ _rbody8916_)
                                 (_body8921_ '())
                                 (_ebody8922_ '()))
                    (let* ((_rest89238931_ _rest8920_)
                           (_E89268935_
                            (lambda ()
                              (error '"No clause matching" _rest89238931_)))
                           (_else89258939_
                            (lambda ()
                              (values _body8921_
                                      (gx#eval-syntax*
                                       (gx#core-quote-syntax__1
                                        (gx#core-cons '%#begin _ebody8922_)
                                        (gx#stx-source _stx8905_))))))
                           (_K89279015_
                            (lambda (_rest8942_ _hd8943_)
                              (let* ((_e89448961_ _hd8943_)
                                     (_E89568965_
                                      (lambda ()
                                        (_lp8918_
                                         _rest8942_
                                         (cons _hd8943_ _body8921_)
                                         (cons _hd8943_ _ebody8922_))))
                                     (_E89468977_
                                      (lambda ()
                                        (if (gx#stx-pair? _e89448961_)
                                            (let ((_e89578969_
                                                   (gx#syntax-e _e89448961_)))
                                              (let ((_hd89588972_
                                                     (##car _e89578969_))
                                                    (_tl89598974_
                                                     (##cdr _e89578969_)))
                                                (if (if (gx#identifier?
                                                         _hd89588972_)
                                                        (gx#core-identifier=?
                                                         _hd89588972_
                                                         '%#begin-syntax)
                                                        '#f)
                                                    (if '#t
                                                        (_lp8918_
                                                         _rest8942_
                                                         (cons _hd8943_
                                                               _body8921_)
                                                         _ebody8922_)
                                                        (_E89568965_))
                                                    (_E89568965_))))
                                            (_E89568965_))))
                                     (_E89459011_
                                      (lambda ()
                                        (if (gx#stx-pair? _e89448961_)
                                            (let ((_e89478981_
                                                   (gx#syntax-e _e89448961_)))
                                              (let ((_hd89488984_
                                                     (##car _e89478981_))
                                                    (_tl89498986_
                                                     (##cdr _e89478981_)))
                                                (if (if (gx#identifier?
                                                         _hd89488984_)
                                                        (gx#core-identifier=?
                                                         _hd89488984_
                                                         '%#define-values)
                                                        '#f)
                                                    (if (gx#stx-pair?
                                                         _tl89498986_)
                                                        (let ((_e89508989_
                                                               (gx#syntax-e
                                                                _tl89498986_)))
                                                          (let ((_hd89518992_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e89508989_))
                        (_tl89528994_ (##cdr _e89508989_)))
                    (let ((_hd-bind8997_ _hd89518992_))
                      (if (gx#stx-pair? _tl89528994_)
                          (let ((_e89538999_ (gx#syntax-e _tl89528994_)))
                            (let ((_hd89549002_ (##car _e89538999_))
                                  (_tl89559004_ (##cdr _e89538999_)))
                              (let ((_expr9007_ _hd89549002_))
                                (if (gx#stx-null? _tl89559004_)
                                    (if '#t
                                        (let ((_ehd9009_
                                               (gx#core-quote-syntax__1
                                                (cons (gx#core-quote-syntax__0
                                                       '%#define-values)
                                                      (cons (gx#core-quote-bind-values
                                                             _hd-bind8997_)
                                                            (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr9007_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#stx-source _hd8943_))))
                                          (_lp8918_
                                           _rest8942_
                                           (cons _ehd9009_ _body8921_)
                                           (cons _ehd9009_ _ebody8922_)))
                                        (_E89468977_))
                                    (_E89468977_)))))
                          (_E89468977_)))))
                (_E89468977_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E89468977_))))
                                            (_E89468977_)))))
                                (_E89459011_)))))
                      (if (##pair? _rest89238931_)
                          (let ((_hd89289018_ (##car _rest89238931_))
                                (_tl89299020_ (##cdr _rest89238931_)))
                            (let* ((_hd9023_ _hd89289018_)
                                   (_rest9025_ _tl89299020_))
                              (_K89279015_ _rest9025_ _hd9023_)))
                          (_else89258939_)))))))
        (call-with-parameters
         (lambda ()
           (let* ((_rbody8911_
                   (gx#core-expand-block__1
                    _stx8905_
                    _expand-special8907_
                    '#f))
                  (_g9166_ (_eval-body8908_ _rbody8911_)))
             (begin
               (let ((_g9167_ (values-count _g9166_)))
                 (if (not (fx= _g9167_ 2))
                     (error "Context expects 2 values" _g9167_)))
               (let ((_expanded-body8913_ (values-ref _g9166_ 0))
                     (_value8914_ (values-ref _g9166_ 1)))
                 (gx#core-quote-syntax__1
                  (if (##structure-instance-of?
                       (gx#current-expander-context)
                       'gx#module-context::t)
                      (gx#core-cons '%#begin-syntax _expanded-body8913_)
                      (cons (gx#core-quote-syntax__0 '%#quote)
                            (cons _value8914_ '())))
                  (gx#stx-source _stx8905_))))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1)))))
  (define gx#core-expand-begin-foreign%
    (lambda (_stx8875_)
      (let* ((_e88768883_ _stx8875_)
             (_E88788887_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e88768883_)))
             (_E88778901_
              (lambda ()
                (if (gx#stx-pair? _e88768883_)
                    (let ((_e88798891_ (gx#syntax-e _e88768883_)))
                      (let ((_hd88808894_ (##car _e88798891_))
                            (_tl88818896_ (##cdr _e88798891_)))
                        (let ((_body8899_ _tl88818896_))
                          (if (gx#stx-list? _body8899_)
                              (gx#core-quote-syntax__1
                               (gx#core-cons '%#begin-foreign _body8899_)
                               (gx#stx-source _stx8875_))
                              (_E88788887_)))))
                    (_E88788887_)))))
        (_E88778901_))))
  (define gx#core-expand-begin-module%
    (lambda (_stx8873_)
      (gx#raise-syntax-error '#f '"Illegal expansion" _stx8873_)))
  (define gx#core-expand-begin-annotation%
    (lambda (_stx8861_)
      (let* ((_e88628865_ _stx8861_)
             (_E88638869_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e88628865_))))
        (_E88638869_))))
  (define gx#core-expand-local-block
    (lambda (_stx8585_ _body8586_)
      (letrec ((_expand-special8588_
                (lambda (_hd8856_ _K8857_ _rest8858_ _r8859_)
                  (_K8857_ '()
                           (cons (_expand-internal8589_ _hd8856_ _rest8858_)
                                 _r8859_))))
               (_expand-internal8589_
                (lambda (_hd8852_ _rest8853_)
                  (call-with-parameters
                   (lambda ()
                     (_wrap-internal8591_
                      (gx#core-expand-block__1
                       (gx#stx-wrap-source
                        (cons* '%#begin _hd8852_ _rest8853_)
                        (gx#stx-source _stx8585_))
                       _expand-internal-special8590_
                       '#f)))
                   gx#current-expander-context
                   (let ((__obj9160 (make-object gx#local-context::t '5)))
                     (begin
                       (gx#local-context:::init!__0 __obj9160)
                       __obj9160)))))
               (_expand-internal-special8590_
                (lambda (_hd8747_ _K8748_ _rest8749_ _r8750_)
                  (let* ((_e87518776_ _hd8747_)
                         (_E87718780_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e87518776_)))
                         (_E87678792_
                          (lambda ()
                            (if (gx#stx-pair? _e87518776_)
                                (let ((_e87728784_ (gx#syntax-e _e87518776_)))
                                  (let ((_hd87738787_ (##car _e87728784_))
                                        (_tl87748789_ (##cdr _e87728784_)))
                                    (if (if (gx#identifier? _hd87738787_)
                                            (gx#core-identifier=?
                                             _hd87738787_
                                             '%#declare)
                                            '#f)
                                        (if '#t
                                            (_K8748_ _rest8749_
                                                     (cons (gx#core-expand-declare%
                                                            _hd8747_)
                                                           _r8750_))
                                            (_E87718780_))
                                        (_E87718780_))))
                                (_E87718780_))))
                         (_E87638804_
                          (lambda ()
                            (if (gx#stx-pair? _e87518776_)
                                (let ((_e87688796_ (gx#syntax-e _e87518776_)))
                                  (let ((_hd87698799_ (##car _e87688796_))
                                        (_tl87708801_ (##cdr _e87688796_)))
                                    (if (if (gx#identifier? _hd87698799_)
                                            (gx#core-identifier=?
                                             _hd87698799_
                                             '%#define-alias)
                                            '#f)
                                        (if '#t
                                            (begin
                                              (gx#core-expand-define-alias%
                                               _hd8747_)
                                              (_K8748_ _rest8749_ _r8750_))
                                            (_E87678792_))
                                        (_E87678792_))))
                                (_E87678792_))))
                         (_E87538816_
                          (lambda ()
                            (if (gx#stx-pair? _e87518776_)
                                (let ((_e87648808_ (gx#syntax-e _e87518776_)))
                                  (let ((_hd87658811_ (##car _e87648808_))
                                        (_tl87668813_ (##cdr _e87648808_)))
                                    (if (if (gx#identifier? _hd87658811_)
                                            (gx#core-identifier=?
                                             _hd87658811_
                                             '%#define-syntax)
                                            '#f)
                                        (if '#t
                                            (begin
                                              (gx#core-expand-define-syntax%
                                               _hd8747_)
                                              (_K8748_ _rest8749_ _r8750_))
                                            (_E87638804_))
                                        (_E87638804_))))
                                (_E87638804_))))
                         (_E87528848_
                          (lambda ()
                            (if (gx#stx-pair? _e87518776_)
                                (let ((_e87548820_ (gx#syntax-e _e87518776_)))
                                  (let ((_hd87558823_ (##car _e87548820_))
                                        (_tl87568825_ (##cdr _e87548820_)))
                                    (if (if (gx#identifier? _hd87558823_)
                                            (gx#core-identifier=?
                                             _hd87558823_
                                             '%#define-values)
                                            '#f)
                                        (if (gx#stx-pair? _tl87568825_)
                                            (let ((_e87578828_
                                                   (gx#syntax-e _tl87568825_)))
                                              (let ((_hd87588831_
                                                     (##car _e87578828_))
                                                    (_tl87598833_
                                                     (##cdr _e87578828_)))
                                                (let ((_hd-bind8836_
                                                       _hd87588831_))
                                                  (if (gx#stx-pair?
                                                       _tl87598833_)
                                                      (let ((_e87608838_
                                                             (gx#syntax-e
                                                              _tl87598833_)))
                                                        (let ((_hd87618841_
                                                               (##car _e87608838_))
                                                              (_tl87628843_
                                                               (##cdr _e87608838_)))
                                                          (let ((_expr8846_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd87618841_))
                    (if (gx#stx-null? _tl87628843_)
                        (if (gx#core-bind-values? _hd-bind8836_)
                            (begin
                              (gx#core-bind-values!__0 _hd-bind8836_)
                              (_K8748_ _rest8749_ (cons _hd8747_ _r8750_)))
                            (_E87538816_))
                        (_E87538816_)))))
              (_E87538816_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E87538816_))
                                        (_E87538816_))))
                                (_E87538816_)))))
                    (_E87528848_))))
               (_wrap-internal8591_
                (lambda (_rbody8593_)
                  (let _lp8595_ ((_rest8597_ _rbody8593_)
                                 (_decls8598_ '())
                                 (_bind8599_ '())
                                 (_body8600_ '()))
                    (let* ((_e86018608_ _rest8597_)
                           (_E86038657_
                            (lambda ()
                              (let* ((_body8652_
                                      (let* ((_body86118621_ _body8600_)
                                             (_E86158625_
                                              (lambda ()
                                                (error '"No clause matching"
                                                       _body86118621_)))
                                             (_else86148629_
                                              (lambda ()
                                                (gx#core-quote-syntax__1
                                                 (gx#core-cons
                                                  '%#begin
                                                  _body8600_)
                                                 (gx#stx-source _stx8585_))))
                                             (_try-match86138645_
                                              (lambda ()
                                                (let ((_K86168635_
                                                       (lambda (_expr8633_)
                                                         _expr8633_)))
                                                  (if (##pair? _body86118621_)
                                                      (let ((_hd86178638_
                                                             (##car _body86118621_))
                                                            (_tl86188640_
                                                             (##cdr _body86118621_)))
                                                        (let ((_expr8643_
                                                               _hd86178638_))
                                                          (if (##null? _tl86188640_)
                                                              (_K86168635_
                                                               _expr8643_)
                                                              (_else86148629_))))
                                                      (_else86148629_)))))
                                             (_K86198649_
                                              (lambda ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _stx8585_))))
                                        (if (##null? _body86118621_)
                                            (_K86198649_)
                                            (_try-match86138645_))))
                                     (_body8654_
                                      (if (null? _bind8599_)
                                          _body8652_
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#letrec*-values)
                                                 (cons _bind8599_
                                                       (cons _body8652_ '())))
                                           (gx#stx-source _stx8585_)))))
                                (if (null? _decls8598_)
                                    _body8654_
                                    (gx#core-quote-syntax__1
                                     (cons (gx#core-quote-syntax__0
                                            '%#begin-annotation)
                                           (cons _decls8598_
                                                 (cons _body8654_ '())))
                                     (gx#stx-source _stx8585_))))))
                           (_E86028743_
                            (lambda ()
                              (if (gx#stx-pair? _e86018608_)
                                  (let ((_e86048661_
                                         (gx#syntax-e _e86018608_)))
                                    (let ((_hd86058664_ (##car _e86048661_))
                                          (_tl86068666_ (##cdr _e86048661_)))
                                      (let* ((_hd8669_ _hd86058664_)
                                             (_rest8671_ _tl86068666_))
                                        (if '#t
                                            (let* ((_e86728689_ _hd8669_)
                                                   (_E86848693_
                                                    (lambda ()
                                                      (if (null? _bind8599_)
                                                          (_lp8595_
                                                           _rest8671_
                                                           _decls8598_
                                                           _bind8599_
                                                           (cons _hd8669_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body8600_))
                  (_lp8595_
                   _rest8671_
                   _decls8598_
                   (cons (cons '#f (cons _hd8669_ '())) _bind8599_)
                   _body8600_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E86748707_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e86728689_)
                                                          (let ((_e86858697_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e86728689_)))
                    (let ((_hd86868700_ (##car _e86858697_))
                          (_tl86878702_ (##cdr _e86858697_)))
                      (if (if (gx#identifier? _hd86868700_)
                              (gx#core-identifier=? _hd86868700_ '%#declare)
                              '#f)
                          (let ((_xdecls8705_ _tl86878702_))
                            (if '#t
                                (_lp8595_
                                 _rest8671_
                                 (gx#stx-foldr cons _decls8598_ _xdecls8705_)
                                 _bind8599_
                                 _body8600_)
                                (_E86848693_)))
                          (_E86848693_))))
                  (_E86848693_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E86738739_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e86728689_)
                                                          (let ((_e86758711_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e86728689_)))
                    (let ((_hd86768714_ (##car _e86758711_))
                          (_tl86778716_ (##cdr _e86758711_)))
                      (if (if (gx#identifier? _hd86768714_)
                              (gx#core-identifier=?
                               _hd86768714_
                               '%#define-values)
                              '#f)
                          (if (gx#stx-pair? _tl86778716_)
                              (let ((_e86788719_ (gx#syntax-e _tl86778716_)))
                                (let ((_hd86798722_ (##car _e86788719_))
                                      (_tl86808724_ (##cdr _e86788719_)))
                                  (let ((_hd-bind8727_ _hd86798722_))
                                    (if (gx#stx-pair? _tl86808724_)
                                        (let ((_e86818729_
                                               (gx#syntax-e _tl86808724_)))
                                          (let ((_hd86828732_
                                                 (##car _e86818729_))
                                                (_tl86838734_
                                                 (##cdr _e86818729_)))
                                            (let ((_expr8737_ _hd86828732_))
                                              (if (gx#stx-null? _tl86838734_)
                                                  (if '#t
                                                      (_lp8595_
                                                       _rest8671_
                                                       _decls8598_
                                                       (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd-bind8727_)
                           (cons (gx#core-expand-expression _expr8737_) '()))
                     _bind8599_)
               _body8600_)
              (_E86748707_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E86748707_)))))
                                        (_E86748707_)))))
                              (_E86748707_))
                          (_E86748707_))))
                  (_E86748707_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E86738739_))
                                            (_E86038657_)))))
                                  (_E86038657_)))))
                      (_E86028743_))))))
        (gx#core-expand-block*
         (gx#stx-wrap-source
          (cons '%#begin _body8586_)
          (gx#stx-source _stx8585_))
         _expand-special8588_))))
  (define gx#core-expand-declare%
    (lambda (_stx8523_)
      (let* ((_e85248531_ _stx8523_)
             (_E85268535_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e85248531_)))
             (_E85258581_
              (lambda ()
                (if (gx#stx-pair? _e85248531_)
                    (let ((_e85278539_ (gx#syntax-e _e85248531_)))
                      (let ((_hd85288542_ (##car _e85278539_))
                            (_tl85298544_ (##cdr _e85278539_)))
                        (let ((_body8547_ _tl85298544_))
                          (if (gx#stx-list? _body8547_)
                              (gx#core-quote-syntax__1
                               (gx#core-cons
                                '%#declare
                                (gx#stx-map1
                                 (lambda (_decl8549_)
                                   (let* ((_e85508557_ _decl8549_)
                                          (_E85528561_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _e85508557_)))
                                          (_E85518577_
                                           (lambda ()
                                             (if (gx#stx-pair? _e85508557_)
                                                 (let ((_e85538565_
                                                        (gx#syntax-e
                                                         _e85508557_)))
                                                   (let ((_hd85548568_
                                                          (##car _e85538565_))
                                                         (_tl85558570_
                                                          (##cdr _e85538565_)))
                                                     (let* ((_head8573_
                                                             _hd85548568_)
                                                            (_args8575_
                                                             _tl85558570_))
                                                       (if (gx#stx-list?
                                                            _args8575_)
                                                           (gx#stx-map1
                                                            gx#core-quote-syntax
                                                            _decl8549_)
                                                           (_E85528561_)))))
                                                 (_E85528561_)))))
                                     (_E85518577_)))
                                 _body8547_))
                               (gx#stx-source _stx8523_))
                              (_E85268535_)))))
                    (_E85268535_)))))
        (_E85258581_))))
  (define gx#core-expand-extern%
    (lambda (_stx8407_)
      (let* ((_e84088415_ _stx8407_)
             (_E84108419_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e84088415_)))
             (_E84098519_
              (lambda ()
                (if (gx#stx-pair? _e84088415_)
                    (let ((_e84118423_ (gx#syntax-e _e84088415_)))
                      (let ((_hd84128426_ (##car _e84118423_))
                            (_tl84138428_ (##cdr _e84118423_)))
                        (let ((_body8431_ _tl84138428_))
                          (if (gx#stx-list? _body8431_)
                              (begin
                                (gx#stx-for-each1
                                 (lambda (_bind8433_)
                                   (let* ((_e84348444_ _bind8433_)
                                          (_E84368448_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _e84348444_)))
                                          (_E84358472_
                                           (lambda ()
                                             (if (gx#stx-pair? _e84348444_)
                                                 (let ((_e84378452_
                                                        (gx#syntax-e
                                                         _e84348444_)))
                                                   (let ((_hd84388455_
                                                          (##car _e84378452_))
                                                         (_tl84398457_
                                                          (##cdr _e84378452_)))
                                                     (let ((_id8460_
                                                            _hd84388455_))
                                                       (if (gx#stx-pair?
                                                            _tl84398457_)
                                                           (let ((_e84408462_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl84398457_)))
                     (let ((_hd84418465_ (##car _e84408462_))
                           (_tl84428467_ (##cdr _e84408462_)))
                       (let ((_eid8470_ _hd84418465_))
                         (if (gx#stx-null? _tl84428467_)
                             (if (if (gx#identifier? _id8460_)
                                     (gx#identifier? _eid8470_)
                                     '#f)
                                 (gx#core-bind-extern!__0
                                  _id8460_
                                  (gx#stx-e _eid8470_))
                                 (_E84368448_))
                             (_E84368448_)))))
                   (_E84368448_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E84368448_)))))
                                     (_E84358472_)))
                                 _body8431_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#extern
                                  (gx#stx-map1
                                   (lambda (_bind8476_)
                                     (let* ((_e84778487_ _bind8476_)
                                            (_E84798491_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _e84778487_)))
                                            (_E84788515_
                                             (lambda ()
                                               (if (gx#stx-pair? _e84778487_)
                                                   (let ((_e84808495_
                                                          (gx#syntax-e
                                                           _e84778487_)))
                                                     (let ((_hd84818498_
                                                            (##car _e84808495_))
                                                           (_tl84828500_
                                                            (##cdr _e84808495_)))
                                                       (let ((_id8503_
                                                              _hd84818498_))
                                                         (if (gx#stx-pair?
                                                              _tl84828500_)
                                                             (let ((_e84838505_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl84828500_)))
                       (let ((_hd84848508_ (##car _e84838505_))
                             (_tl84858510_ (##cdr _e84838505_)))
                         (let ((_eid8513_ _hd84848508_))
                           (if (gx#stx-null? _tl84858510_)
                               (if '#t
                                   (cons (gx#core-quote-syntax__0 _id8503_)
                                         (cons (gx#stx-e _eid8513_) '()))
                                   (_E84798491_))
                               (_E84798491_)))))
                     (_E84798491_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E84798491_)))))
                                       (_E84788515_)))
                                   _body8431_))
                                 (gx#stx-source _stx8407_)))
                              (_E84108419_)))))
                    (_E84108419_)))))
        (_E84098519_))))
  (define gx#core-expand-define-values%
    (lambda (_stx8353_)
      (let* ((_e83548367_ _stx8353_)
             (_E83568371_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e83548367_)))
             (_E83558403_
              (lambda ()
                (if (gx#stx-pair? _e83548367_)
                    (let ((_e83578375_ (gx#syntax-e _e83548367_)))
                      (let ((_hd83588378_ (##car _e83578375_))
                            (_tl83598380_ (##cdr _e83578375_)))
                        (if (gx#stx-pair? _tl83598380_)
                            (let ((_e83608383_ (gx#syntax-e _tl83598380_)))
                              (let ((_hd83618386_ (##car _e83608383_))
                                    (_tl83628388_ (##cdr _e83608383_)))
                                (let ((_hd8391_ _hd83618386_))
                                  (if (gx#stx-pair? _tl83628388_)
                                      (let ((_e83638393_
                                             (gx#syntax-e _tl83628388_)))
                                        (let ((_hd83648396_
                                               (##car _e83638393_))
                                              (_tl83658398_
                                               (##cdr _e83638393_)))
                                          (let ((_expr8401_ _hd83648396_))
                                            (if (gx#stx-null? _tl83658398_)
                                                (if (gx#core-bind-values?
                                                     _hd8391_)
                                                    (begin
                                                      (gx#core-bind-values!__0
                                                       _hd8391_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-values)
                                                             (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd8391_)
                           (cons (gx#core-expand-expression _expr8401_) '())))
               (gx#stx-source _stx8353_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E83568371_))
                                                (_E83568371_)))))
                                      (_E83568371_)))))
                            (_E83568371_))))
                    (_E83568371_)))))
        (_E83558403_))))
  (define gx#core-expand-define-runtime%
    (lambda (_stx8299_)
      (let* ((_e83008313_ _stx8299_)
             (_E83028317_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e83008313_)))
             (_E83018349_
              (lambda ()
                (if (gx#stx-pair? _e83008313_)
                    (let ((_e83038321_ (gx#syntax-e _e83008313_)))
                      (let ((_hd83048324_ (##car _e83038321_))
                            (_tl83058326_ (##cdr _e83038321_)))
                        (if (gx#stx-pair? _tl83058326_)
                            (let ((_e83068329_ (gx#syntax-e _tl83058326_)))
                              (let ((_hd83078332_ (##car _e83068329_))
                                    (_tl83088334_ (##cdr _e83068329_)))
                                (let ((_id8337_ _hd83078332_))
                                  (if (gx#stx-pair? _tl83088334_)
                                      (let ((_e83098339_
                                             (gx#syntax-e _tl83088334_)))
                                        (let ((_hd83108342_
                                               (##car _e83098339_))
                                              (_tl83118344_
                                               (##cdr _e83098339_)))
                                          (let ((_binding-id8347_
                                                 _hd83108342_))
                                            (if (gx#stx-null? _tl83118344_)
                                                (if (if (gx#identifier?
                                                         _id8337_)
                                                        (gx#identifier?
                                                         _binding-id8347_)
                                                        '#f)
                                                    (begin
                                                      (gx#core-bind-runtime-reference!__0
                                                       _id8337_
                                                       (gx#stx-e
                                                        _binding-id8347_))
                                                      (gx#core-quote-syntax__0
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-runtime)
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id8337_)
                           (cons (gx#core-quote-syntax__0 _binding-id8347_)
                                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E83028317_))
                                                (_E83028317_)))))
                                      (_E83028317_)))))
                            (_E83028317_))))
                    (_E83028317_)))))
        (_E83018349_))))
  (define gx#core-expand-define-syntax%
    (lambda (_stx8242_)
      (let* ((_e82438256_ _stx8242_)
             (_E82458260_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e82438256_)))
             (_E82448295_
              (lambda ()
                (if (gx#stx-pair? _e82438256_)
                    (let ((_e82468264_ (gx#syntax-e _e82438256_)))
                      (let ((_hd82478267_ (##car _e82468264_))
                            (_tl82488269_ (##cdr _e82468264_)))
                        (if (gx#stx-pair? _tl82488269_)
                            (let ((_e82498272_ (gx#syntax-e _tl82488269_)))
                              (let ((_hd82508275_ (##car _e82498272_))
                                    (_tl82518277_ (##cdr _e82498272_)))
                                (let ((_id8280_ _hd82508275_))
                                  (if (gx#stx-pair? _tl82518277_)
                                      (let ((_e82528282_
                                             (gx#syntax-e _tl82518277_)))
                                        (let ((_hd82538285_
                                               (##car _e82528282_))
                                              (_tl82548287_
                                               (##cdr _e82528282_)))
                                          (let ((_expr8290_ _hd82538285_))
                                            (if (gx#stx-null? _tl82548287_)
                                                (if (gx#identifier? _id8280_)
                                                    (let ((_g9168_ (gx#core-expand-expression+1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _expr8290_)))
              (begin
                (let ((_g9169_ (values-count _g9168_)))
                  (if (not (fx= _g9169_ 2))
                      (error "Context expects 2 values" _g9169_)))
                (let ((_e-stx8292_ (values-ref _g9168_ 0))
                      (_e8293_ (values-ref _g9168_ 1)))
                  (begin
                    (gx#core-bind-syntax!__0 _id8280_ _e8293_)
                    (gx#core-quote-syntax__1
                     (cons (gx#core-quote-syntax__0 '%#define-syntax)
                           (cons (gx#core-quote-syntax__0 _id8280_)
                                 (cons _e-stx8292_ '())))
                     (gx#stx-source _stx8242_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E82458260_))
                                                (_E82458260_)))))
                                      (_E82458260_)))))
                            (_E82458260_))))
                    (_E82458260_)))))
        (_E82448295_))))
  (define gx#core-expand-define-alias%
    (lambda (_stx8186_)
      (let* ((_e81878200_ _stx8186_)
             (_E81898204_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e81878200_)))
             (_E81888238_
              (lambda ()
                (if (gx#stx-pair? _e81878200_)
                    (let ((_e81908208_ (gx#syntax-e _e81878200_)))
                      (let ((_hd81918211_ (##car _e81908208_))
                            (_tl81928213_ (##cdr _e81908208_)))
                        (if (gx#stx-pair? _tl81928213_)
                            (let ((_e81938216_ (gx#syntax-e _tl81928213_)))
                              (let ((_hd81948219_ (##car _e81938216_))
                                    (_tl81958221_ (##cdr _e81938216_)))
                                (let ((_id8224_ _hd81948219_))
                                  (if (gx#stx-pair? _tl81958221_)
                                      (let ((_e81968226_
                                             (gx#syntax-e _tl81958221_)))
                                        (let ((_hd81978229_
                                               (##car _e81968226_))
                                              (_tl81988231_
                                               (##cdr _e81968226_)))
                                          (let ((_alias-id8234_ _hd81978229_))
                                            (if (gx#stx-null? _tl81988231_)
                                                (if (if (gx#identifier?
                                                         _id8224_)
                                                        (gx#identifier?
                                                         _alias-id8234_)
                                                        '#f)
                                                    (let ((_alias-id8236_
                                                           (gx#core-quote-syntax__0
                                                            _alias-id8234_)))
                                                      (begin
                                                        (gx#core-bind-alias!__0
                                                         _id8224_
                                                         _alias-id8236_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id8224_)
                             (cons _alias-id8236_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E81898204_))
                                                (_E81898204_)))))
                                      (_E81898204_)))))
                            (_E81898204_))))
                    (_E81898204_)))))
        (_E81888238_))))
  (begin
    (define gx#core-expand-lambda%__opt-lambda8127
      (lambda (_stx8129_ _wrap?8130_)
        (let* ((_e81318141_ _stx8129_)
               (_E81338145_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e81318141_)))
               (_E81328172_
                (lambda ()
                  (if (gx#stx-pair? _e81318141_)
                      (let ((_e81348149_ (gx#syntax-e _e81318141_)))
                        (let ((_hd81358152_ (##car _e81348149_))
                              (_tl81368154_ (##cdr _e81348149_)))
                          (if (gx#stx-pair? _tl81368154_)
                              (let ((_e81378157_ (gx#syntax-e _tl81368154_)))
                                (let ((_hd81388160_ (##car _e81378157_))
                                      (_tl81398162_ (##cdr _e81378157_)))
                                  (let* ((_hd8165_ _hd81388160_)
                                         (_body8167_ _tl81398162_))
                                    (if (gx#core-bind-values? _hd8165_)
                                        (call-with-parameters
                                         (lambda ()
                                           (begin
                                             (gx#core-bind-values!__0 _hd8165_)
                                             (let ((_body8170_
                                                    (cons (gx#core-quote-bind-values
                                                           _hd8165_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx8129_
                         _body8167_)
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if _wrap?8130_
                                                   (gx#core-quote-syntax__1
                                                    (gx#core-cons
                                                     '%#lambda
                                                     _body8170_)
                                                    (gx#stx-source _stx8129_))
                                                   _body8170_))))
                                         gx#current-expander-context
                                         (let ((__obj9161
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (begin
                                             (gx#local-context:::init!__0
                                              __obj9161)
                                             __obj9161)))
                                        (_E81338145_)))))
                              (_E81338145_))))
                      (_E81338145_)))))
          (_E81328172_))))
    (begin
      (define gx#core-expand-lambda%__0
        (lambda (_stx8179_)
          (let ((_wrap?8181_ '#t))
            (gx#core-expand-lambda%__opt-lambda8127 _stx8179_ _wrap?8181_))))
      (define gx#core-expand-lambda%
        (lambda _g9171_
          (let ((_g9170_ (length _g9171_)))
            (cond ((fx= _g9170_ 1) (apply gx#core-expand-lambda%__0 _g9171_))
                  ((fx= _g9170_ 2)
                   (apply gx#core-expand-lambda%__opt-lambda8127 _g9171_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-lambda%
                    _g9171_))))))))
  (define gx#core-expand-case-lambda%
    (lambda (_stx8093_)
      (let* ((_e80948101_ _stx8093_)
             (_E80968105_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e80948101_)))
             (_E80958124_
              (lambda ()
                (if (gx#stx-pair? _e80948101_)
                    (let ((_e80978109_ (gx#syntax-e _e80948101_)))
                      (let ((_hd80988112_ (##car _e80978109_))
                            (_tl80998114_ (##cdr _e80978109_)))
                        (let ((_clauses8117_ _tl80998114_))
                          (if (gx#stx-list? _clauses8117_)
                              (gx#core-quote-syntax__1
                               (gx#core-cons
                                '%#case-lambda
                                (gx#stx-map1
                                 (lambda (_clause8119_)
                                   (gx#core-expand-lambda%__opt-lambda8127
                                    (gx#stx-wrap-source
                                     (cons '%#case-lambda-clause _clause8119_)
                                     (let ((_$e8121_
                                            (gx#stx-source _clause8119_)))
                                       (if _$e8121_
                                           _$e8121_
                                           (gx#stx-source _stx8093_))))
                                    '#f))
                                 _clauses8117_))
                               (gx#stx-source _stx8093_))
                              (_E80968105_)))))
                    (_E80968105_)))))
        (_E80958124_))))
  (define gx#core-expand-let-values%
    (lambda (_stx8047_)
      (let* ((_e80488058_ _stx8047_)
             (_E80508062_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e80488058_)))
             (_E80498089_
              (lambda ()
                (if (gx#stx-pair? _e80488058_)
                    (let ((_e80518066_ (gx#syntax-e _e80488058_)))
                      (let ((_hd80528069_ (##car _e80518066_))
                            (_tl80538071_ (##cdr _e80518066_)))
                        (if (gx#stx-pair? _tl80538071_)
                            (let ((_e80548074_ (gx#syntax-e _tl80538071_)))
                              (let ((_hd80558077_ (##car _e80548074_))
                                    (_tl80568079_ (##cdr _e80548074_)))
                                (let* ((_hd8082_ _hd80558077_)
                                       (_body8084_ _tl80568079_))
                                  (if (gx#core-expand-let-bind? _hd8082_)
                                      (let ((_expressions8086_
                                             (gx#stx-map1
                                              gx#core-expand-let-bind-expression
                                              _hd8082_)))
                                        (call-with-parameters
                                         (lambda ()
                                           (begin
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd8082_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd8082_
                                                           _expressions8086_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx8047_
                         _body8084_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx8047_))))
                                         gx#current-expander-context
                                         (let ((__obj9162
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (begin
                                             (gx#local-context:::init!__0
                                              __obj9162)
                                             __obj9162))))
                                      (_E80508062_)))))
                            (_E80508062_))))
                    (_E80508062_)))))
        (_E80498089_))))
  (begin
    (define gx#core-expand-letrec-values%__opt-lambda7990
      (lambda (_stx7992_ _form7993_)
        (let* ((_e79948004_ _stx7992_)
               (_E79968008_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e79948004_)))
               (_E79958033_
                (lambda ()
                  (if (gx#stx-pair? _e79948004_)
                      (let ((_e79978012_ (gx#syntax-e _e79948004_)))
                        (let ((_hd79988015_ (##car _e79978012_))
                              (_tl79998017_ (##cdr _e79978012_)))
                          (if (gx#stx-pair? _tl79998017_)
                              (let ((_e80008020_ (gx#syntax-e _tl79998017_)))
                                (let ((_hd80018023_ (##car _e80008020_))
                                      (_tl80028025_ (##cdr _e80008020_)))
                                  (let* ((_hd8028_ _hd80018023_)
                                         (_body8030_ _tl80028025_))
                                    (if (gx#core-expand-let-bind? _hd8028_)
                                        (call-with-parameters
                                         (lambda ()
                                           (begin
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd8028_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     _form7993_)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd8028_
                                                           (gx#stx-map1
                                                            gx#core-expand-let-bind-expression
                                                            _hd8028_))
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx7992_
                         _body8030_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx7992_))))
                                         gx#current-expander-context
                                         (let ((__obj9163
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (begin
                                             (gx#local-context:::init!__0
                                              __obj9163)
                                             __obj9163)))
                                        (_E79968008_)))))
                              (_E79968008_))))
                      (_E79968008_)))))
          (_E79958033_))))
    (begin
      (define gx#core-expand-letrec-values%__0
        (lambda (_stx8040_)
          (let ((_form8042_ '%#letrec-values))
            (gx#core-expand-letrec-values%__opt-lambda7990
             _stx8040_
             _form8042_))))
      (define gx#core-expand-letrec-values%
        (lambda _g9173_
          (let ((_g9172_ (length _g9173_)))
            (cond ((fx= _g9172_ 1)
                   (apply gx#core-expand-letrec-values%__0 _g9173_))
                  ((fx= _g9172_ 2)
                   (apply gx#core-expand-letrec-values%__opt-lambda7990
                          _g9173_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-letrec-values%
                    _g9173_))))))))
  (define gx#core-expand-letrec*-values%
    (lambda (_stx7989_)
      (gx#core-expand-letrec-values%__opt-lambda7990
       _stx7989_
       '%#letrec*-values)))
  (define gx#core-expand-let-bind?
    (lambda (_stx7946_)
      (if (gx#stx-list? _stx7946_)
          (gx#stx-andmap
           (lambda (_bind7948_)
             (let* ((_e79497959_ _bind7948_)
                    (_E79517963_ (lambda () '#f))
                    (_E79507985_
                     (lambda ()
                       (if (gx#stx-pair? _e79497959_)
                           (let ((_e79527967_ (gx#syntax-e _e79497959_)))
                             (let ((_hd79537970_ (##car _e79527967_))
                                   (_tl79547972_ (##cdr _e79527967_)))
                               (let ((_hd7975_ _hd79537970_))
                                 (if (gx#stx-pair? _tl79547972_)
                                     (let ((_e79557977_
                                            (gx#syntax-e _tl79547972_)))
                                       (let ((_hd79567980_ (##car _e79557977_))
                                             (_tl79577982_
                                              (##cdr _e79557977_)))
                                         (if (gx#stx-null? _tl79577982_)
                                             (if '#t
                                                 (gx#core-bind-values?
                                                  _hd7975_)
                                                 (_E79517963_))
                                             (_E79517963_))))
                                     (_E79517963_)))))
                           (_E79517963_)))))
               (_E79507985_)))
           _stx7946_)
          '#f)))
  (define gx#core-expand-let-bind-expression
    (lambda (_bind7905_)
      (let* ((_e79067916_ _bind7905_)
             (_E79087920_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e79067916_)))
             (_E79077942_
              (lambda ()
                (if (gx#stx-pair? _e79067916_)
                    (let ((_e79097924_ (gx#syntax-e _e79067916_)))
                      (let ((_hd79107927_ (##car _e79097924_))
                            (_tl79117929_ (##cdr _e79097924_)))
                        (if (gx#stx-pair? _tl79117929_)
                            (let ((_e79127932_ (gx#syntax-e _tl79117929_)))
                              (let ((_hd79137935_ (##car _e79127932_))
                                    (_tl79147937_ (##cdr _e79127932_)))
                                (let ((_expr7940_ _hd79137935_))
                                  (if (gx#stx-null? _tl79147937_)
                                      (if '#t
                                          (gx#core-expand-expression
                                           _expr7940_)
                                          (_E79087920_))
                                      (_E79087920_)))))
                            (_E79087920_))))
                    (_E79087920_)))))
        (_E79077942_))))
  (define gx#core-expand-let-bind-values!
    (lambda (_bind7864_)
      (let* ((_e78657875_ _bind7864_)
             (_E78677879_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e78657875_)))
             (_E78667901_
              (lambda ()
                (if (gx#stx-pair? _e78657875_)
                    (let ((_e78687883_ (gx#syntax-e _e78657875_)))
                      (let ((_hd78697886_ (##car _e78687883_))
                            (_tl78707888_ (##cdr _e78687883_)))
                        (let ((_hd7891_ _hd78697886_))
                          (if (gx#stx-pair? _tl78707888_)
                              (let ((_e78717893_ (gx#syntax-e _tl78707888_)))
                                (let ((_hd78727896_ (##car _e78717893_))
                                      (_tl78737898_ (##cdr _e78717893_)))
                                  (if (gx#stx-null? _tl78737898_)
                                      (if '#t
                                          (gx#core-bind-values!__0 _hd7891_)
                                          (_E78677879_))
                                      (_E78677879_))))
                              (_E78677879_)))))
                    (_E78677879_)))))
        (_E78667901_))))
  (define gx#core-expand-let-bind-quote
    (lambda (_bind7822_ _expr7823_)
      (let* ((_e78247834_ _bind7822_)
             (_E78267838_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e78247834_)))
             (_E78257860_
              (lambda ()
                (if (gx#stx-pair? _e78247834_)
                    (let ((_e78277842_ (gx#syntax-e _e78247834_)))
                      (let ((_hd78287845_ (##car _e78277842_))
                            (_tl78297847_ (##cdr _e78277842_)))
                        (let ((_hd7850_ _hd78287845_))
                          (if (gx#stx-pair? _tl78297847_)
                              (let ((_e78307852_ (gx#syntax-e _tl78297847_)))
                                (let ((_hd78317855_ (##car _e78307852_))
                                      (_tl78327857_ (##cdr _e78307852_)))
                                  (if (gx#stx-null? _tl78327857_)
                                      (if '#t
                                          (cons (gx#core-quote-bind-values
                                                 _hd7850_)
                                                (cons _expr7823_ '()))
                                          (_E78267838_))
                                      (_E78267838_))))
                              (_E78267838_)))))
                    (_E78267838_)))))
        (_E78257860_))))
  (define gx#core-expand-let-syntax%
    (lambda (_stx7776_)
      (let* ((_e77777787_ _stx7776_)
             (_E77797791_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e77777787_)))
             (_E77787818_
              (lambda ()
                (if (gx#stx-pair? _e77777787_)
                    (let ((_e77807795_ (gx#syntax-e _e77777787_)))
                      (let ((_hd77817798_ (##car _e77807795_))
                            (_tl77827800_ (##cdr _e77807795_)))
                        (if (gx#stx-pair? _tl77827800_)
                            (let ((_e77837803_ (gx#syntax-e _tl77827800_)))
                              (let ((_hd77847806_ (##car _e77837803_))
                                    (_tl77857808_ (##cdr _e77837803_)))
                                (let* ((_hd7811_ _hd77847806_)
                                       (_body7813_ _tl77857808_))
                                  (if (gx#core-expand-let-bind-syntax?
                                       _hd7811_)
                                      (let ((_expanders7815_
                                             (gx#stx-map1
                                              gx#core-expand-let-bind-syntax-expression
                                              _hd7811_)))
                                        (call-with-parameters
                                         (lambda ()
                                           (begin
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd7811_
                                              _expanders7815_)
                                             (gx#core-expand-local-block
                                              _stx7776_
                                              _body7813_)))
                                         gx#current-expander-context
                                         (let ((__obj9164
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (begin
                                             (gx#local-context:::init!__0
                                              __obj9164)
                                             __obj9164))))
                                      (_E77797791_)))))
                            (_E77797791_))))
                    (_E77797791_)))))
        (_E77787818_))))
  (define gx#core-expand-letrec-syntax%
    (lambda (_stx7725_)
      (let* ((_e77267736_ _stx7725_)
             (_E77287740_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e77267736_)))
             (_E77277772_
              (lambda ()
                (if (gx#stx-pair? _e77267736_)
                    (let ((_e77297744_ (gx#syntax-e _e77267736_)))
                      (let ((_hd77307747_ (##car _e77297744_))
                            (_tl77317749_ (##cdr _e77297744_)))
                        (if (gx#stx-pair? _tl77317749_)
                            (let ((_e77327752_ (gx#syntax-e _tl77317749_)))
                              (let ((_hd77337755_ (##car _e77327752_))
                                    (_tl77347757_ (##cdr _e77327752_)))
                                (let* ((_hd7760_ _hd77337755_)
                                       (_body7762_ _tl77347757_))
                                  (if (gx#core-expand-let-bind-syntax?
                                       _hd7760_)
                                      (call-with-parameters
                                       (lambda ()
                                         (begin
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd7760_
                                            (make-list
                                             (gx#stx-length _hd7760_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g77647767_ _g77657769_)
                                              (gx#core-expand-let-bind-syntax!__opt-lambda7582
                                               _g77647767_
                                               _g77657769_
                                               '#t))
                                            _hd7760_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd7760_))
                                           (gx#core-expand-local-block
                                            _stx7725_
                                            _body7762_)))
                                       gx#current-expander-context
                                       (let ((__obj9165
                                              (make-object
                                               gx#local-context::t
                                               '5)))
                                         (begin
                                           (gx#local-context:::init!__0
                                            __obj9165)
                                           __obj9165)))
                                      (_E77287740_)))))
                            (_E77287740_))))
                    (_E77287740_)))))
        (_E77277772_))))
  (define gx#core-expand-let-bind-syntax?
    (lambda (_stx7682_)
      (if (gx#stx-list? _stx7682_)
          (gx#stx-andmap
           (lambda (_bind7684_)
             (let* ((_e76857695_ _bind7684_)
                    (_E76877699_ (lambda () '#f))
                    (_E76867721_
                     (lambda ()
                       (if (gx#stx-pair? _e76857695_)
                           (let ((_e76887703_ (gx#syntax-e _e76857695_)))
                             (let ((_hd76897706_ (##car _e76887703_))
                                   (_tl76907708_ (##cdr _e76887703_)))
                               (let ((_hd7711_ _hd76897706_))
                                 (if (gx#stx-pair? _tl76907708_)
                                     (let ((_e76917713_
                                            (gx#syntax-e _tl76907708_)))
                                       (let ((_hd76927716_ (##car _e76917713_))
                                             (_tl76937718_
                                              (##cdr _e76917713_)))
                                         (if (gx#stx-null? _tl76937718_)
                                             (if '#t
                                                 (gx#identifier? _hd7711_)
                                                 (_E76877699_))
                                             (_E76877699_))))
                                     (_E76877699_)))))
                           (_E76877699_)))))
               (_E76867721_)))
           _stx7682_)
          '#f)))
  (define gx#core-expand-let-bind-syntax-expression
    (lambda (_bind7639_)
      (let* ((_e76407650_ _bind7639_)
             (_E76427654_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e76407650_)))
             (_E76417678_
              (lambda ()
                (if (gx#stx-pair? _e76407650_)
                    (let ((_e76437658_ (gx#syntax-e _e76407650_)))
                      (let ((_hd76447661_ (##car _e76437658_))
                            (_tl76457663_ (##cdr _e76437658_)))
                        (if (gx#stx-pair? _tl76457663_)
                            (let ((_e76467666_ (gx#syntax-e _tl76457663_)))
                              (let ((_hd76477669_ (##car _e76467666_))
                                    (_tl76487671_ (##cdr _e76467666_)))
                                (let ((_expr7674_ _hd76477669_))
                                  (if (gx#stx-null? _tl76487671_)
                                      (if '#t
                                          (let ((_g9174_ (gx#core-expand-expression+1
                                                          _expr7674_)))
                                            (begin
                                              (let ((_g9175_ (values-count
                                                              _g9174_)))
                                                (if (not (fx= _g9175_ 2))
                                                    (error "Context expects 2 values"
                                                           _g9175_)))
                                              (let ((_e7676_ (values-ref
                                                              _g9174_
                                                              1)))
                                                _e7676_)))
                                          (_E76427654_))
                                      (_E76427654_)))))
                            (_E76427654_))))
                    (_E76427654_)))))
        (_E76417678_))))
  (begin
    (define gx#core-expand-let-bind-syntax!__opt-lambda7582
      (lambda (_bind7584_ _e7585_ _rebind?7586_)
        (let* ((_e75877597_ _bind7584_)
               (_E75897601_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e75877597_)))
               (_E75887623_
                (lambda ()
                  (if (gx#stx-pair? _e75877597_)
                      (let ((_e75907605_ (gx#syntax-e _e75877597_)))
                        (let ((_hd75917608_ (##car _e75907605_))
                              (_tl75927610_ (##cdr _e75907605_)))
                          (let ((_id7613_ _hd75917608_))
                            (if (gx#stx-pair? _tl75927610_)
                                (let ((_e75937615_ (gx#syntax-e _tl75927610_)))
                                  (let ((_hd75947618_ (##car _e75937615_))
                                        (_tl75957620_ (##cdr _e75937615_)))
                                    (if (gx#stx-null? _tl75957620_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id7613_
                                             _e7585_
                                             _rebind?7586_)
                                            (_E75897601_))
                                        (_E75897601_))))
                                (_E75897601_)))))
                      (_E75897601_)))))
          (_E75887623_))))
    (begin
      (define gx#core-expand-let-bind-syntax!__0
        (lambda (_bind7630_ _e7631_)
          (let ((_rebind?7633_ '#f))
            (gx#core-expand-let-bind-syntax!__opt-lambda7582
             _bind7630_
             _e7631_
             _rebind?7633_))))
      (define gx#core-expand-let-bind-syntax!
        (lambda _g9177_
          (let ((_g9176_ (length _g9177_)))
            (cond ((fx= _g9176_ 2)
                   (apply gx#core-expand-let-bind-syntax!__0 _g9177_))
                  ((fx= _g9176_ 3)
                   (apply gx#core-expand-let-bind-syntax!__opt-lambda7582
                          _g9177_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-let-bind-syntax!
                    _g9177_))))))))
  (define gx#core-expand-expression%
    (lambda (_stx7542_)
      (let* ((_e75437553_ _stx7542_)
             (_E75457557_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e75437553_)))
             (_E75447579_
              (lambda ()
                (if (gx#stx-pair? _e75437553_)
                    (let ((_e75467561_ (gx#syntax-e _e75437553_)))
                      (let ((_hd75477564_ (##car _e75467561_))
                            (_tl75487566_ (##cdr _e75467561_)))
                        (if (gx#stx-pair? _tl75487566_)
                            (let ((_e75497569_ (gx#syntax-e _tl75487566_)))
                              (let ((_hd75507572_ (##car _e75497569_))
                                    (_tl75517574_ (##cdr _e75497569_)))
                                (let ((_expr7577_ _hd75507572_))
                                  (if (gx#stx-null? _tl75517574_)
                                      (if '#t
                                          (gx#core-expand-expression
                                           _expr7577_)
                                          (_E75457557_))
                                      (_E75457557_)))))
                            (_E75457557_))))
                    (_E75457557_)))))
        (_E75447579_))))
  (define gx#core-expand-quote%
    (lambda (_stx7501_)
      (let* ((_e75027512_ _stx7501_)
             (_E75047516_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e75027512_)))
             (_E75037538_
              (lambda ()
                (if (gx#stx-pair? _e75027512_)
                    (let ((_e75057520_ (gx#syntax-e _e75027512_)))
                      (let ((_hd75067523_ (##car _e75057520_))
                            (_tl75077525_ (##cdr _e75057520_)))
                        (if (gx#stx-pair? _tl75077525_)
                            (let ((_e75087528_ (gx#syntax-e _tl75077525_)))
                              (let ((_hd75097531_ (##car _e75087528_))
                                    (_tl75107533_ (##cdr _e75087528_)))
                                (let ((_e7536_ _hd75097531_))
                                  (if (gx#stx-null? _tl75107533_)
                                      (if '#t
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#quote)
                                                 (cons (gx#syntax->datum
                                                        _e7536_)
                                                       '()))
                                           (gx#stx-source _stx7501_))
                                          (_E75047516_))
                                      (_E75047516_)))))
                            (_E75047516_))))
                    (_E75047516_)))))
        (_E75037538_))))
  (define gx#core-expand-quote-syntax%
    (lambda (_stx7460_)
      (let* ((_e74617471_ _stx7460_)
             (_E74637475_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e74617471_)))
             (_E74627497_
              (lambda ()
                (if (gx#stx-pair? _e74617471_)
                    (let ((_e74647479_ (gx#syntax-e _e74617471_)))
                      (let ((_hd74657482_ (##car _e74647479_))
                            (_tl74667484_ (##cdr _e74647479_)))
                        (if (gx#stx-pair? _tl74667484_)
                            (let ((_e74677487_ (gx#syntax-e _tl74667484_)))
                              (let ((_hd74687490_ (##car _e74677487_))
                                    (_tl74697492_ (##cdr _e74677487_)))
                                (let ((_e7495_ _hd74687490_))
                                  (if (gx#stx-null? _tl74697492_)
                                      (if '#t
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#quote-syntax)
                                                 (cons (gx#core-quote-syntax__0
                                                        _e7495_)
                                                       '()))
                                           (gx#stx-source _stx7460_))
                                          (_E74637475_))
                                      (_E74637475_)))))
                            (_E74637475_))))
                    (_E74637475_)))))
        (_E74627497_))))
  (define gx#core-expand-call%
    (lambda (_stx7417_)
      (let* ((_e74187428_ _stx7417_)
             (_E74207432_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e74187428_)))
             (_E74197456_
              (lambda ()
                (if (gx#stx-pair? _e74187428_)
                    (let ((_e74217436_ (gx#syntax-e _e74187428_)))
                      (let ((_hd74227439_ (##car _e74217436_))
                            (_tl74237441_ (##cdr _e74217436_)))
                        (if (gx#stx-pair? _tl74237441_)
                            (let ((_e74247444_ (gx#syntax-e _tl74237441_)))
                              (let ((_hd74257447_ (##car _e74247444_))
                                    (_tl74267449_ (##cdr _e74247444_)))
                                (let* ((_rator7452_ _hd74257447_)
                                       (_args7454_ _tl74267449_))
                                  (if (gx#stx-list? _args7454_)
                                      (gx#core-quote-syntax__1
                                       (gx#core-cons*
                                        '%#call
                                        (gx#core-expand-expression _rator7452_)
                                        (gx#stx-map1
                                         gx#core-expand-expression
                                         _args7454_))
                                       (gx#stx-source _stx7417_))
                                      (_E74207432_)))))
                            (_E74207432_))))
                    (_E74207432_)))))
        (_E74197456_))))
  (define gx#core-expand-if%
    (lambda (_stx7350_)
      (let* ((_e73517367_ _stx7350_)
             (_E73537371_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e73517367_)))
             (_E73527413_
              (lambda ()
                (if (gx#stx-pair? _e73517367_)
                    (let ((_e73547375_ (gx#syntax-e _e73517367_)))
                      (let ((_hd73557378_ (##car _e73547375_))
                            (_tl73567380_ (##cdr _e73547375_)))
                        (if (gx#stx-pair? _tl73567380_)
                            (let ((_e73577383_ (gx#syntax-e _tl73567380_)))
                              (let ((_hd73587386_ (##car _e73577383_))
                                    (_tl73597388_ (##cdr _e73577383_)))
                                (let ((_test7391_ _hd73587386_))
                                  (if (gx#stx-pair? _tl73597388_)
                                      (let ((_e73607393_
                                             (gx#syntax-e _tl73597388_)))
                                        (let ((_hd73617396_
                                               (##car _e73607393_))
                                              (_tl73627398_
                                               (##cdr _e73607393_)))
                                          (let ((_K7401_ _hd73617396_))
                                            (if (gx#stx-pair? _tl73627398_)
                                                (let ((_e73637403_
                                                       (gx#syntax-e
                                                        _tl73627398_)))
                                                  (let ((_hd73647406_
                                                         (##car _e73637403_))
                                                        (_tl73657408_
                                                         (##cdr _e73637403_)))
                                                    (let ((_E7411_ _hd73647406_))
                                                      (if (gx#stx-null?
                                                           _tl73657408_)
                                                          (if '#t
                                                              (gx#core-quote-syntax__1
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '%#if)
                             (cons (gx#core-expand-expression _test7391_)
                                   (cons (gx#core-expand-expression _K7401_)
                                         (cons (gx#core-expand-expression
                                                _E7411_)
                                               '()))))
                       (gx#stx-source _stx7350_))
                      (_E73537371_))
                  (_E73537371_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E73537371_)))))
                                      (_E73537371_)))))
                            (_E73537371_))))
                    (_E73537371_)))))
        (_E73527413_))))
  (define gx#core-expand-ref%
    (lambda (_stx7309_)
      (let* ((_e73107320_ _stx7309_)
             (_E73127324_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e73107320_)))
             (_E73117346_
              (lambda ()
                (if (gx#stx-pair? _e73107320_)
                    (let ((_e73137328_ (gx#syntax-e _e73107320_)))
                      (let ((_hd73147331_ (##car _e73137328_))
                            (_tl73157333_ (##cdr _e73137328_)))
                        (if (gx#stx-pair? _tl73157333_)
                            (let ((_e73167336_ (gx#syntax-e _tl73157333_)))
                              (let ((_hd73177339_ (##car _e73167336_))
                                    (_tl73187341_ (##cdr _e73167336_)))
                                (let ((_id7344_ _hd73177339_))
                                  (if (gx#stx-null? _tl73187341_)
                                      (if (gx#core-runtime-ref? _id7344_)
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#ref)
                                                 (cons (gx#core-quote-runtime-ref
                                                        _id7344_
                                                        _stx7309_)
                                                       '()))
                                           (gx#stx-source _stx7309_))
                                          (_E73127324_))
                                      (_E73127324_)))))
                            (_E73127324_))))
                    (_E73127324_)))))
        (_E73117346_))))
  (define gx#core-expand-setq%
    (lambda (_stx7255_)
      (let* ((_e72567269_ _stx7255_)
             (_E72587273_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e72567269_)))
             (_E72577305_
              (lambda ()
                (if (gx#stx-pair? _e72567269_)
                    (let ((_e72597277_ (gx#syntax-e _e72567269_)))
                      (let ((_hd72607280_ (##car _e72597277_))
                            (_tl72617282_ (##cdr _e72597277_)))
                        (if (gx#stx-pair? _tl72617282_)
                            (let ((_e72627285_ (gx#syntax-e _tl72617282_)))
                              (let ((_hd72637288_ (##car _e72627285_))
                                    (_tl72647290_ (##cdr _e72627285_)))
                                (let ((_id7293_ _hd72637288_))
                                  (if (gx#stx-pair? _tl72647290_)
                                      (let ((_e72657295_
                                             (gx#syntax-e _tl72647290_)))
                                        (let ((_hd72667298_
                                               (##car _e72657295_))
                                              (_tl72677300_
                                               (##cdr _e72657295_)))
                                          (let ((_expr7303_ _hd72667298_))
                                            (if (gx#stx-null? _tl72677300_)
                                                (if (gx#core-runtime-ref?
                                                     _id7293_)
                                                    (gx#core-quote-syntax__1
                                                     (cons (gx#core-quote-syntax__0
                                                            '%#set!)
                                                           (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id7293_
                          _stx7255_)
                         (cons (gx#core-expand-expression _expr7303_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gx#stx-source _stx7255_))
                                                    (_E72587273_))
                                                (_E72587273_)))))
                                      (_E72587273_)))))
                            (_E72587273_))))
                    (_E72587273_)))))
        (_E72577305_))))
  (define gx#macro-expand-extern
    (lambda (_stx7103_)
      (letrec ((_generate7105_
                (lambda (_body7135_)
                  (let _lp7137_ ((_rest7139_ _body7135_)
                                 (_ns7140_ (gx#core-context-namespace__0))
                                 (_r7141_ '()))
                    (let* ((_e71427157_ _rest7139_)
                           (_E71557161_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e71427157_)))
                           (_E71517165_
                            (lambda ()
                              (if (gx#stx-null? _e71427157_)
                                  (if '#t (reverse _r7141_) (_E71557161_))
                                  (_E71557161_))))
                           (_E71447222_
                            (lambda ()
                              (if (gx#stx-pair? _e71427157_)
                                  (let ((_e71527169_
                                         (gx#syntax-e _e71427157_)))
                                    (let ((_hd71537172_ (##car _e71527169_))
                                          (_tl71547174_ (##cdr _e71527169_)))
                                      (let* ((_hd7177_ _hd71537172_)
                                             (_rest7179_ _tl71547174_))
                                        (if '#t
                                            (if (gx#identifier? _hd7177_)
                                                (_lp7137_
                                                 _rest7179_
                                                 _ns7140_
                                                 (cons (cons _hd7177_
                                                             (cons (if _ns7140_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#stx-identifier
                                _hd7177_
                                _ns7140_
                                '"#"
                                _hd7177_)
                               _hd7177_)
                           '()))
               _r7141_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let* ((_e71807190_ _hd7177_)
                                                       (_E71827194_
                                                        (lambda ()
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _e71807190_)))
                                                       (_E71817218_
                                                        (lambda ()
                                                          (if (gx#stx-pair?
                                                               _e71807190_)
                                                              (let ((_e71837198_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _e71807190_)))
                        (let ((_hd71847201_ (##car _e71837198_))
                              (_tl71857203_ (##cdr _e71837198_)))
                          (let ((_id7206_ _hd71847201_))
                            (if (gx#stx-pair? _tl71857203_)
                                (let ((_e71867208_ (gx#syntax-e _tl71857203_)))
                                  (let ((_hd71877211_ (##car _e71867208_))
                                        (_tl71887213_ (##cdr _e71867208_)))
                                    (let ((_eid7216_ _hd71877211_))
                                      (if (gx#stx-null? _tl71887213_)
                                          (if (if (gx#identifier? _id7206_)
                                                  (gx#identifier? _eid7216_)
                                                  '#f)
                                              (_lp7137_
                                               _rest7179_
                                               _ns7140_
                                               (cons (cons _id7206_
                                                           (cons _eid7216_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _r7141_))
                                              (_E71827194_))
                                          (_E71827194_)))))
                                (_E71827194_)))))
                      (_E71827194_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E71817218_)))
                                            (_E71517165_)))))
                                  (_E71517165_))))
                           (_E71437251_
                            (lambda ()
                              (if (gx#stx-pair? _e71427157_)
                                  (let ((_e71457226_
                                         (gx#syntax-e _e71427157_)))
                                    (let ((_hd71467229_ (##car _e71457226_))
                                          (_tl71477231_ (##cdr _e71457226_)))
                                      (if (eq? (gx#stx-e _hd71467229_)
                                               'namespace:)
                                          (if (gx#stx-pair? _tl71477231_)
                                              (let ((_e71487234_
                                                     (gx#syntax-e
                                                      _tl71477231_)))
                                                (let ((_hd71497237_
                                                       (##car _e71487234_))
                                                      (_tl71507239_
                                                       (##cdr _e71487234_)))
                                                  (let* ((_ns7242_
                                                          _hd71497237_)
                                                         (_rest7244_
                                                          _tl71507239_))
                                                    (if '#t
                                                        (let ((_ns7249_
                                                               (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _ns7242_)
                           (symbol->string (gx#stx-e _ns7242_))
                           (if (let ((_$e7246_ (gx#stx-string? _ns7242_)))
                                 (if _$e7246_
                                     _$e7246_
                                     (gx#stx-false? _ns7242_)))
                               (gx#stx-e _ns7242_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _stx7103_
                                _ns7242_)))))
                  (_lp7137_ _rest7244_ _ns7249_ _r7141_))
                (_E71447222_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E71447222_))
                                          (_E71447222_))))
                                  (_E71447222_)))))
                      (_E71437251_))))))
        (let* ((_e71067113_ _stx7103_)
               (_E71087117_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e71067113_)))
               (_E71077131_
                (lambda ()
                  (if (gx#stx-pair? _e71067113_)
                      (let ((_e71097121_ (gx#syntax-e _e71067113_)))
                        (let ((_hd71107124_ (##car _e71097121_))
                              (_tl71117126_ (##cdr _e71097121_)))
                          (let ((_body7129_ _tl71117126_))
                            (if (gx#stx-list? _body7129_)
                                (gx#core-cons
                                 '%#extern
                                 (_generate7105_ _body7129_))
                                (_E71087117_)))))
                      (_E71087117_)))))
          (_E71077131_)))))
  (define gx#macro-expand-define-values
    (lambda (_stx7049_)
      (let* ((_e70507063_ _stx7049_)
             (_E70527067_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e70507063_)))
             (_E70517099_
              (lambda ()
                (if (gx#stx-pair? _e70507063_)
                    (let ((_e70537071_ (gx#syntax-e _e70507063_)))
                      (let ((_hd70547074_ (##car _e70537071_))
                            (_tl70557076_ (##cdr _e70537071_)))
                        (if (gx#stx-pair? _tl70557076_)
                            (let ((_e70567079_ (gx#syntax-e _tl70557076_)))
                              (let ((_hd70577082_ (##car _e70567079_))
                                    (_tl70587084_ (##cdr _e70567079_)))
                                (let ((_hd7087_ _hd70577082_))
                                  (if (gx#stx-pair? _tl70587084_)
                                      (let ((_e70597089_
                                             (gx#syntax-e _tl70587084_)))
                                        (let ((_hd70607092_
                                               (##car _e70597089_))
                                              (_tl70617094_
                                               (##cdr _e70597089_)))
                                          (let ((_expr7097_ _hd70607092_))
                                            (if (gx#stx-null? _tl70617094_)
                                                (if (gx#stx-andmap
                                                     gx#identifier?
                                                     _hd7087_)
                                                    (cons (gx#core-quote-syntax__0
                                                           '%#define-values)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _hd7087_)
                        (cons _expr7097_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E70527067_))
                                                (_E70527067_)))))
                                      (_E70527067_)))))
                            (_E70527067_))))
                    (_E70527067_)))))
        (_E70517099_))))
  (define gx#macro-expand-define-syntax
    (lambda (_stx6995_)
      (let* ((_e69967009_ _stx6995_)
             (_E69987013_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e69967009_)))
             (_E69977045_
              (lambda ()
                (if (gx#stx-pair? _e69967009_)
                    (let ((_e69997017_ (gx#syntax-e _e69967009_)))
                      (let ((_hd70007020_ (##car _e69997017_))
                            (_tl70017022_ (##cdr _e69997017_)))
                        (if (gx#stx-pair? _tl70017022_)
                            (let ((_e70027025_ (gx#syntax-e _tl70017022_)))
                              (let ((_hd70037028_ (##car _e70027025_))
                                    (_tl70047030_ (##cdr _e70027025_)))
                                (let ((_hd7033_ _hd70037028_))
                                  (if (gx#stx-pair? _tl70047030_)
                                      (let ((_e70057035_
                                             (gx#syntax-e _tl70047030_)))
                                        (let ((_hd70067038_
                                               (##car _e70057035_))
                                              (_tl70077040_
                                               (##cdr _e70057035_)))
                                          (let ((_expr7043_ _hd70067038_))
                                            (if (gx#stx-null? _tl70077040_)
                                                (if (gx#identifier? _hd7033_)
                                                    (cons (gx#core-quote-syntax__0
                                                           '%#define-syntax)
                                                          (cons _hd7033_
                                                                (cons _expr7043_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E69987013_))
                                                (_E69987013_)))))
                                      (_E69987013_)))))
                            (_E69987013_))))
                    (_E69987013_)))))
        (_E69977045_))))
  (define gx#macro-expand-define-alias
    (lambda (_stx6941_)
      (let* ((_e69426955_ _stx6941_)
             (_E69446959_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e69426955_)))
             (_E69436991_
              (lambda ()
                (if (gx#stx-pair? _e69426955_)
                    (let ((_e69456963_ (gx#syntax-e _e69426955_)))
                      (let ((_hd69466966_ (##car _e69456963_))
                            (_tl69476968_ (##cdr _e69456963_)))
                        (if (gx#stx-pair? _tl69476968_)
                            (let ((_e69486971_ (gx#syntax-e _tl69476968_)))
                              (let ((_hd69496974_ (##car _e69486971_))
                                    (_tl69506976_ (##cdr _e69486971_)))
                                (let ((_id6979_ _hd69496974_))
                                  (if (gx#stx-pair? _tl69506976_)
                                      (let ((_e69516981_
                                             (gx#syntax-e _tl69506976_)))
                                        (let ((_hd69526984_
                                               (##car _e69516981_))
                                              (_tl69536986_
                                               (##cdr _e69516981_)))
                                          (let ((_alias-id6989_ _hd69526984_))
                                            (if (gx#stx-null? _tl69536986_)
                                                (if (if (gx#identifier?
                                                         _id6979_)
                                                        (gx#identifier?
                                                         _alias-id6989_)
                                                        '#f)
                                                    (cons (gx#core-quote-syntax__0
                                                           '%#define-alias)
                                                          (cons _id6979_
                                                                (cons _alias-id6989_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E69446959_))
                                                (_E69446959_)))))
                                      (_E69446959_)))))
                            (_E69446959_))))
                    (_E69446959_)))))
        (_E69436991_))))
  (define gx#macro-expand-lambda%
    (lambda (_stx6898_)
      (let* ((_e68996909_ _stx6898_)
             (_E69016913_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e68996909_)))
             (_E69006937_
              (lambda ()
                (if (gx#stx-pair? _e68996909_)
                    (let ((_e69026917_ (gx#syntax-e _e68996909_)))
                      (let ((_hd69036920_ (##car _e69026917_))
                            (_tl69046922_ (##cdr _e69026917_)))
                        (if (gx#stx-pair? _tl69046922_)
                            (let ((_e69056925_ (gx#syntax-e _tl69046922_)))
                              (let ((_hd69066928_ (##car _e69056925_))
                                    (_tl69076930_ (##cdr _e69056925_)))
                                (let* ((_hd6933_ _hd69066928_)
                                       (_body6935_ _tl69076930_))
                                  (if (if (gx#stx-andmap
                                           gx#identifier?
                                           _hd6933_)
                                          (if (gx#stx-list? _body6935_)
                                              (not (gx#stx-null? _body6935_))
                                              '#f)
                                          '#f)
                                      (gx#core-cons*
                                       '%#lambda
                                       (gx#stx-map1
                                        gx#user-binding-identifier
                                        _hd6933_)
                                       _body6935_)
                                      (_E69016913_)))))
                            (_E69016913_))))
                    (_E69016913_)))))
        (_E69006937_))))
  (define gx#macro-expand-case-lambda
    (lambda (_stx6834_)
      (letrec ((_generate6836_
                (lambda (_clause6866_)
                  (let* ((_e68676874_ _clause6866_)
                         (_E68696878_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; malformed clause"
                             _stx6834_
                             _clause6866_)))
                         (_E68686894_
                          (lambda ()
                            (if (gx#stx-pair? _e68676874_)
                                (let ((_e68706882_ (gx#syntax-e _e68676874_)))
                                  (let ((_hd68716885_ (##car _e68706882_))
                                        (_tl68726887_ (##cdr _e68706882_)))
                                    (let* ((_hd6890_ _hd68716885_)
                                           (_body6892_ _tl68726887_))
                                      (if (if (gx#stx-andmap
                                               gx#identifier?
                                               _hd6890_)
                                              (if (gx#stx-list? _body6892_)
                                                  (not (gx#stx-null?
                                                        _body6892_))
                                                  '#f)
                                              '#f)
                                          (gx#stx-wrap-source
                                           (cons (gx#stx-map1
                                                  gx#user-binding-identifier
                                                  _hd6890_)
                                                 _body6892_)
                                           (gx#stx-source _clause6866_))
                                          (_E68696878_)))))
                                (_E68696878_)))))
                    (_E68686894_)))))
        (let* ((_e68376844_ _stx6834_)
               (_E68396848_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e68376844_)))
               (_E68386862_
                (lambda ()
                  (if (gx#stx-pair? _e68376844_)
                      (let ((_e68406852_ (gx#syntax-e _e68376844_)))
                        (let ((_hd68416855_ (##car _e68406852_))
                              (_tl68426857_ (##cdr _e68406852_)))
                          (let ((_clauses6860_ _tl68426857_))
                            (if (gx#stx-list? _clauses6860_)
                                (gx#core-cons
                                 '%#case-lambda
                                 (gx#stx-map1 _generate6836_ _clauses6860_))
                                (_E68396848_)))))
                      (_E68396848_)))))
          (_E68386862_)))))
  (begin
    (define gx#macro-expand-let-values__opt-lambda6733
      (lambda (_stx6735_ _form6736_)
        (letrec ((_generate6738_
                  (lambda (_bind6781_)
                    (let* ((_e67826792_ _bind6781_)
                           (_E67846796_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx6735_
                               _bind6781_)))
                           (_E67836820_
                            (lambda ()
                              (if (gx#stx-pair? _e67826792_)
                                  (let ((_e67856800_
                                         (gx#syntax-e _e67826792_)))
                                    (let ((_hd67866803_ (##car _e67856800_))
                                          (_tl67876805_ (##cdr _e67856800_)))
                                      (let ((_ids6808_ _hd67866803_))
                                        (if (gx#stx-pair? _tl67876805_)
                                            (let ((_e67886810_
                                                   (gx#syntax-e _tl67876805_)))
                                              (let ((_hd67896813_
                                                     (##car _e67886810_))
                                                    (_tl67906815_
                                                     (##cdr _e67886810_)))
                                                (let ((_expr6818_
                                                       _hd67896813_))
                                                  (if (gx#stx-null?
                                                       _tl67906815_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids6808_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids6808_)
                        (cons _expr6818_ '()))
                  (_E67846796_))
              (_E67846796_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E67846796_)))))
                                  (_E67846796_)))))
                      (_E67836820_)))))
          (let* ((_e67396749_ _stx6735_)
                 (_E67416753_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e67396749_)))
                 (_E67406777_
                  (lambda ()
                    (if (gx#stx-pair? _e67396749_)
                        (let ((_e67426757_ (gx#syntax-e _e67396749_)))
                          (let ((_hd67436760_ (##car _e67426757_))
                                (_tl67446762_ (##cdr _e67426757_)))
                            (if (gx#stx-pair? _tl67446762_)
                                (let ((_e67456765_ (gx#syntax-e _tl67446762_)))
                                  (let ((_hd67466768_ (##car _e67456765_))
                                        (_tl67476770_ (##cdr _e67456765_)))
                                    (let* ((_hd6773_ _hd67466768_)
                                           (_body6775_ _tl67476770_))
                                      (if (if (gx#stx-list? _hd6773_)
                                              (if (gx#stx-list? _body6775_)
                                                  (not (gx#stx-null?
                                                        _body6775_))
                                                  '#f)
                                              '#f)
                                          (gx#core-cons*
                                           _form6736_
                                           (gx#stx-map1
                                            _generate6738_
                                            _hd6773_)
                                           _body6775_)
                                          (_E67416753_)))))
                                (_E67416753_))))
                        (_E67416753_)))))
            (_E67406777_)))))
    (begin
      (define gx#macro-expand-let-values__0
        (lambda (_stx6827_)
          (let ((_form6829_ '%#let-values))
            (gx#macro-expand-let-values__opt-lambda6733
             _stx6827_
             _form6829_))))
      (define gx#macro-expand-let-values
        (lambda _g9179_
          (let ((_g9178_ (length _g9179_)))
            (cond ((fx= _g9178_ 1)
                   (apply gx#macro-expand-let-values__0 _g9179_))
                  ((fx= _g9178_ 2)
                   (apply gx#macro-expand-let-values__opt-lambda6733 _g9179_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#macro-expand-let-values
                    _g9179_))))))))
  (define gx#macro-expand-letrec-values
    (lambda (_stx6732_)
      (gx#macro-expand-let-values__opt-lambda6733 _stx6732_ '%#letrec-values)))
  (define gx#macro-expand-letrec*-values
    (lambda (_stx6730_)
      (gx#macro-expand-let-values__opt-lambda6733
       _stx6730_
       '%#letrec*-values)))
  (define gx#macro-expand-if
    (lambda (_stx6621_)
      (let* ((_e66226648_ _stx6621_)
             (_E66346652_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e66226648_)))
             (_E66246694_
              (lambda ()
                (if (gx#stx-pair? _e66226648_)
                    (let ((_e66356656_ (gx#syntax-e _e66226648_)))
                      (let ((_hd66366659_ (##car _e66356656_))
                            (_tl66376661_ (##cdr _e66356656_)))
                        (if (gx#stx-pair? _tl66376661_)
                            (let ((_e66386664_ (gx#syntax-e _tl66376661_)))
                              (let ((_hd66396667_ (##car _e66386664_))
                                    (_tl66406669_ (##cdr _e66386664_)))
                                (let ((_test6672_ _hd66396667_))
                                  (if (gx#stx-pair? _tl66406669_)
                                      (let ((_e66416674_
                                             (gx#syntax-e _tl66406669_)))
                                        (let ((_hd66426677_
                                               (##car _e66416674_))
                                              (_tl66436679_
                                               (##cdr _e66416674_)))
                                          (let ((_K6682_ _hd66426677_))
                                            (if (gx#stx-pair? _tl66436679_)
                                                (let ((_e66446684_
                                                       (gx#syntax-e
                                                        _tl66436679_)))
                                                  (let ((_hd66456687_
                                                         (##car _e66446684_))
                                                        (_tl66466689_
                                                         (##cdr _e66446684_)))
                                                    (let ((_E6692_ _hd66456687_))
                                                      (if (gx#stx-null?
                                                           _tl66466689_)
                                                          (if '#t
                                                              (gx#core-list
                                                               '%#if
                                                               _test6672_
                                                               _K6682_
                                                               _E6692_)
                                                              (_E66346652_))
                                                          (_E66346652_)))))
                                                (_E66346652_)))))
                                      (_E66346652_)))))
                            (_E66346652_))))
                    (_E66346652_))))
             (_E66236726_
              (lambda ()
                (if (gx#stx-pair? _e66226648_)
                    (let ((_e66256698_ (gx#syntax-e _e66226648_)))
                      (let ((_hd66266701_ (##car _e66256698_))
                            (_tl66276703_ (##cdr _e66256698_)))
                        (if (gx#stx-pair? _tl66276703_)
                            (let ((_e66286706_ (gx#syntax-e _tl66276703_)))
                              (let ((_hd66296709_ (##car _e66286706_))
                                    (_tl66306711_ (##cdr _e66286706_)))
                                (let ((_test6714_ _hd66296709_))
                                  (if (gx#stx-pair? _tl66306711_)
                                      (let ((_e66316716_
                                             (gx#syntax-e _tl66306711_)))
                                        (let ((_hd66326719_
                                               (##car _e66316716_))
                                              (_tl66336721_
                                               (##cdr _e66316716_)))
                                          (let ((_K6724_ _hd66326719_))
                                            (if (gx#stx-null? _tl66336721_)
                                                (if '#t
                                                    (gx#core-list
                                                     '%#if
                                                     _test6714_
                                                     _K6724_
                                                     '#!void)
                                                    (_E66246694_))
                                                (_E66246694_)))))
                                      (_E66246694_)))))
                            (_E66246694_))))
                    (_E66246694_)))))
        (_E66236726_))))
  (define gx#free-identifier=?
    (lambda (_xid6609_ _yid6610_)
      (let ((_xe6612_ (gx#resolve-identifier__0 _xid6609_))
            (_ye6613_ (gx#resolve-identifier__0 _yid6610_)))
        (if (if _xe6612_ _ye6613_ '#f)
            (let ((_$e6615_ (eq? _xe6612_ _ye6613_)))
              (if _$e6615_
                  _$e6615_
                  (if (##structure-instance-of? _xe6612_ 'gx#binding::t)
                      (if (##structure-instance-of? _ye6613_ 'gx#binding::t)
                          (eq? (##structure-ref _xe6612_ '1 gx#binding::t '#f)
                               (##structure-ref _ye6613_ '1 gx#binding::t '#f))
                          '#f)
                      '#f)))
            (if (let ((_$e6618_ _xe6612_)) (if _$e6618_ _$e6618_ _ye6613_))
                '#f
                (gx#stx-eq? _xid6609_ _yid6610_))))))
  (define gx#bound-identifier=?
    (lambda (_xid6593_ _yid6594_)
      (letrec ((_context6596_
                (lambda (_e6607_)
                  (if (##structure-direct-instance-of?
                       _e6607_
                       'gx#syntax-quote::t)
                      (##direct-structure-ref
                       _e6607_
                       '3
                       gx#syntax-quote::t
                       '#f)
                      (gx#current-expander-context))))
               (_marks6597_
                (lambda (_e6605_)
                  (if (symbol? _e6605_)
                      '()
                      (if (##structure-direct-instance-of?
                           _e6605_
                           'gx#identifier-wrap::t)
                          (##direct-structure-ref
                           _e6605_
                           '3
                           gx#identifier-wrap::t
                           '#f)
                          (##direct-structure-ref
                           _e6605_
                           '4
                           gx#syntax-quote::t
                           '#f)))))
               (_unwrap6598_
                (lambda (_e6603_)
                  (if (symbol? _e6603_)
                      _e6603_
                      (gx#syntax-local-unwrap _e6603_)))))
        (let ((_x6600_ (_unwrap6598_ _xid6593_))
              (_y6601_ (_unwrap6598_ _yid6594_)))
          (if (gx#stx-eq? _x6600_ _y6601_)
              (if (eq? (_context6596_ _x6600_) (_context6596_ _y6601_))
                  (andmap eq? (_marks6597_ _x6600_) (_marks6597_ _y6601_))
                  '#f)
              '#f)))))
  (define gx#underscore?
    (lambda (_stx6591_)
      (if (gx#identifier? _stx6591_) (gx#core-identifier=? _stx6591_ '_) '#f)))
  (define gx#ellipsis?
    (lambda (_stx6589_)
      (if (gx#identifier? _stx6589_)
          (gx#core-identifier=? _stx6589_ '...)
          '#f)))
  (define gx#user-binding-identifier
    (lambda (_x6587_)
      (if (gx#identifier? _x6587_)
          (if (not (gx#underscore? _x6587_)) _x6587_ '#f)
          '#f)))
  (begin
    (define gx#check-duplicate-identifiers__opt-lambda6531
      (lambda (_stx6533_ _where6534_)
        (let _lp6536_ ((_rest6538_ (gx#syntax->list _stx6533_)))
          (let* ((_rest65396547_ _rest6538_)
                 (_E65426551_
                  (lambda () (error '"No clause matching" _rest65396547_)))
                 (_else65416555_ (lambda () '#t))
                 (_K65436565_
                  (lambda (_rest6558_ _hd6559_)
                    (if (not (gx#identifier? _hd6559_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where6534_
                         _hd6559_)
                        (if (find (lambda (_g65606562_)
                                    (gx#bound-identifier=?
                                     _g65606562_
                                     _hd6559_))
                                  _rest6558_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where6534_
                             _hd6559_)
                            (_lp6536_ _rest6558_))))))
            (if (##pair? _rest65396547_)
                (let ((_hd65446568_ (##car _rest65396547_))
                      (_tl65456570_ (##cdr _rest65396547_)))
                  (let* ((_hd6573_ _hd65446568_) (_rest6575_ _tl65456570_))
                    (_K65436565_ _rest6575_ _hd6573_)))
                (_else65416555_))))))
    (begin
      (define gx#check-duplicate-identifiers__0
        (lambda (_stx6580_)
          (let ((_where6582_ _stx6580_))
            (gx#check-duplicate-identifiers__opt-lambda6531
             _stx6580_
             _where6582_))))
      (define gx#check-duplicate-identifiers
        (lambda _g9181_
          (let ((_g9180_ (length _g9181_)))
            (cond ((fx= _g9180_ 1)
                   (apply gx#check-duplicate-identifiers__0 _g9181_))
                  ((fx= _g9180_ 2)
                   (apply gx#check-duplicate-identifiers__opt-lambda6531
                          _g9181_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#check-duplicate-identifiers
                    _g9181_))))))))
  (define gx#core-bind-values?
    (lambda (_stx6525_)
      (gx#stx-andmap
       (lambda (_x6527_)
         (let ((_$e6529_ (gx#identifier? _x6527_)))
           (if _$e6529_ _$e6529_ (gx#stx-false? _x6527_))))
       _stx6525_)))
  (begin
    (define gx#core-bind-values!__opt-lambda6487
      (lambda (_stx6489_ _rebind?6490_ _phi6491_ _ctx6492_)
        (gx#stx-for-each1
         (lambda (_id6494_)
           (if (gx#identifier? _id6494_)
               (gx#core-bind-runtime!__opt-lambda6426
                _id6494_
                _rebind?6490_
                _phi6491_
                _ctx6492_)
               '#!void))
         _stx6489_)))
    (begin
      (define gx#core-bind-values!__0
        (lambda (_stx6499_)
          (let* ((_rebind?6501_ '#f)
                 (_phi6503_ (gx#current-expander-phi))
                 (_ctx6505_ (gx#current-expander-context)))
            (gx#core-bind-values!__opt-lambda6487
             _stx6499_
             _rebind?6501_
             _phi6503_
             _ctx6505_))))
      (define gx#core-bind-values!__1
        (lambda (_stx6507_ _rebind?6508_)
          (let* ((_phi6510_ (gx#current-expander-phi))
                 (_ctx6512_ (gx#current-expander-context)))
            (gx#core-bind-values!__opt-lambda6487
             _stx6507_
             _rebind?6508_
             _phi6510_
             _ctx6512_))))
      (define gx#core-bind-values!__2
        (lambda (_stx6514_ _rebind?6515_ _phi6516_)
          (let ((_ctx6518_ (gx#current-expander-context)))
            (gx#core-bind-values!__opt-lambda6487
             _stx6514_
             _rebind?6515_
             _phi6516_
             _ctx6518_))))
      (define gx#core-bind-values!
        (lambda _g9183_
          (let ((_g9182_ (length _g9183_)))
            (cond ((fx= _g9182_ 1) (apply gx#core-bind-values!__0 _g9183_))
                  ((fx= _g9182_ 2) (apply gx#core-bind-values!__1 _g9183_))
                  ((fx= _g9182_ 3) (apply gx#core-bind-values!__2 _g9183_))
                  ((fx= _g9182_ 4)
                   (apply gx#core-bind-values!__opt-lambda6487 _g9183_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-values!
                    _g9183_))))))))
  (define gx#core-quote-bind-values
    (lambda (_stx6484_)
      (gx#stx-map1
       (lambda (_x6486_)
         (if (gx#identifier? _x6486_) (gx#core-quote-syntax__0 _x6486_) '#f))
       _stx6484_)))
  (define gx#core-runtime-ref?
    (lambda (_stx6477_)
      (if (gx#identifier? _stx6477_)
          (let* ((_bind6479_ (gx#resolve-identifier__0 _stx6477_))
                 (_$e6481_ (not _bind6479_)))
            (if _$e6481_
                _$e6481_
                (##structure-instance-of? _bind6479_ 'gx#runtime-binding::t)))
          '#f)))
  (define gx#core-quote-runtime-ref
    (lambda (_id6469_ _form6470_)
      (let ((_bind6472_ (gx#resolve-identifier__0 _id6469_)))
        (if (##structure-instance-of? _bind6472_ 'gx#runtime-binding::t)
            (gx#core-quote-syntax__0 _id6469_)
            (if (not _bind6472_)
                (if (let ((_$e6474_
                           (gx#core-context-rebind?__opt-lambda4341
                            (gx#core-context-top__0))))
                      (if _$e6474_
                          _$e6474_
                          (gx#core-extern-symbol? (gx#stx-e _id6469_))))
                    (gx#core-quote-syntax__0 _id6469_)
                    (gx#raise-syntax-error
                     '#f
                     '"Reference to unbound identifier"
                     _form6470_
                     _id6469_))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; not a runtime binding"
                 _form6470_
                 _id6469_))))))
  (begin
    (define gx#core-bind-runtime!__opt-lambda6426
      (lambda (_id6428_ _rebind?6429_ _phi6430_ _ctx6431_)
        (let* ((_key6433_ (gx#core-identifier-key _id6428_))
               (_eid6435_
                (gx#make-binding-id__opt-lambda6193
                 _key6433_
                 '#f
                 _phi6430_
                 _ctx6431_))
               (_bind6437_
                (if (##structure-instance-of? _ctx6431_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid6435_
                     _key6433_
                     _phi6430_
                     _ctx6431_)
                    (if (##structure-instance-of? _ctx6431_ 'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid6435_
                         _key6433_
                         _phi6430_)
                        (if (##structure-instance-of?
                             _ctx6431_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid6435_
                             _key6433_
                             _phi6430_)
                            (##structure
                             gx#runtime-binding::t
                             _eid6435_
                             _key6433_
                             _phi6430_))))))
          (gx#bind-identifier!__opt-lambda4788
           _id6428_
           _bind6437_
           _rebind?6429_
           _phi6430_
           _ctx6431_))))
    (begin
      (define gx#core-bind-runtime!__0
        (lambda (_id6443_)
          (let* ((_rebind?6445_ '#f)
                 (_phi6447_ (gx#current-expander-phi))
                 (_ctx6449_ (gx#current-expander-context)))
            (gx#core-bind-runtime!__opt-lambda6426
             _id6443_
             _rebind?6445_
             _phi6447_
             _ctx6449_))))
      (define gx#core-bind-runtime!__1
        (lambda (_id6451_ _rebind?6452_)
          (let* ((_phi6454_ (gx#current-expander-phi))
                 (_ctx6456_ (gx#current-expander-context)))
            (gx#core-bind-runtime!__opt-lambda6426
             _id6451_
             _rebind?6452_
             _phi6454_
             _ctx6456_))))
      (define gx#core-bind-runtime!__2
        (lambda (_id6458_ _rebind?6459_ _phi6460_)
          (let ((_ctx6462_ (gx#current-expander-context)))
            (gx#core-bind-runtime!__opt-lambda6426
             _id6458_
             _rebind?6459_
             _phi6460_
             _ctx6462_))))
      (define gx#core-bind-runtime!
        (lambda _g9185_
          (let ((_g9184_ (length _g9185_)))
            (cond ((fx= _g9184_ 1) (apply gx#core-bind-runtime!__0 _g9185_))
                  ((fx= _g9184_ 2) (apply gx#core-bind-runtime!__1 _g9185_))
                  ((fx= _g9184_ 3) (apply gx#core-bind-runtime!__2 _g9185_))
                  ((fx= _g9184_ 4)
                   (apply gx#core-bind-runtime!__opt-lambda6426 _g9185_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-runtime!
                    _g9185_))))))))
  (begin
    (define gx#core-bind-runtime-reference!__opt-lambda6381
      (lambda (_id6383_ _eid6384_ _rebind?6385_ _phi6386_ _ctx6387_)
        (let* ((_key6389_ (gx#core-identifier-key _id6383_))
               (_bind6391_
                (if (##structure-instance-of? _ctx6387_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid6384_
                     _key6389_
                     _phi6386_
                     _ctx6387_)
                    (if (##structure-instance-of? _ctx6387_ 'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid6384_
                         _key6389_
                         _phi6386_)
                        (##structure
                         gx#runtime-binding::t
                         _eid6384_
                         _key6389_
                         _phi6386_)))))
          (gx#bind-identifier!__opt-lambda4788
           _id6383_
           _bind6391_
           _rebind?6385_
           _phi6386_
           _ctx6387_))))
    (begin
      (define gx#core-bind-runtime-reference!__0
        (lambda (_id6397_ _eid6398_)
          (let* ((_rebind?6400_ '#f)
                 (_phi6402_ (gx#current-expander-phi))
                 (_ctx6404_ (gx#current-expander-context)))
            (gx#core-bind-runtime-reference!__opt-lambda6381
             _id6397_
             _eid6398_
             _rebind?6400_
             _phi6402_
             _ctx6404_))))
      (define gx#core-bind-runtime-reference!__1
        (lambda (_id6406_ _eid6407_ _rebind?6408_)
          (let* ((_phi6410_ (gx#current-expander-phi))
                 (_ctx6412_ (gx#current-expander-context)))
            (gx#core-bind-runtime-reference!__opt-lambda6381
             _id6406_
             _eid6407_
             _rebind?6408_
             _phi6410_
             _ctx6412_))))
      (define gx#core-bind-runtime-reference!__2
        (lambda (_id6414_ _eid6415_ _rebind?6416_ _phi6417_)
          (let ((_ctx6419_ (gx#current-expander-context)))
            (gx#core-bind-runtime-reference!__opt-lambda6381
             _id6414_
             _eid6415_
             _rebind?6416_
             _phi6417_
             _ctx6419_))))
      (define gx#core-bind-runtime-reference!
        (lambda _g9187_
          (let ((_g9186_ (length _g9187_)))
            (cond ((fx= _g9186_ 2)
                   (apply gx#core-bind-runtime-reference!__0 _g9187_))
                  ((fx= _g9186_ 3)
                   (apply gx#core-bind-runtime-reference!__1 _g9187_))
                  ((fx= _g9186_ 4)
                   (apply gx#core-bind-runtime-reference!__2 _g9187_))
                  ((fx= _g9186_ 5)
                   (apply gx#core-bind-runtime-reference!__opt-lambda6381
                          _g9187_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-runtime-reference!
                    _g9187_))))))))
  (begin
    (define gx#core-bind-extern!__opt-lambda6341
      (lambda (_id6343_ _eid6344_ _rebind?6345_ _phi6346_ _ctx6347_)
        (gx#bind-identifier!__opt-lambda4788
         _id6343_
         (##structure
          gx#extern-binding::t
          _eid6344_
          (gx#core-identifier-key _id6343_)
          _phi6346_)
         _rebind?6345_
         _phi6346_
         _ctx6347_)))
    (begin
      (define gx#core-bind-extern!__0
        (lambda (_id6352_ _eid6353_)
          (let* ((_rebind?6355_ '#f)
                 (_phi6357_ (gx#current-expander-phi))
                 (_ctx6359_ (gx#current-expander-context)))
            (gx#core-bind-extern!__opt-lambda6341
             _id6352_
             _eid6353_
             _rebind?6355_
             _phi6357_
             _ctx6359_))))
      (define gx#core-bind-extern!__1
        (lambda (_id6361_ _eid6362_ _rebind?6363_)
          (let* ((_phi6365_ (gx#current-expander-phi))
                 (_ctx6367_ (gx#current-expander-context)))
            (gx#core-bind-extern!__opt-lambda6341
             _id6361_
             _eid6362_
             _rebind?6363_
             _phi6365_
             _ctx6367_))))
      (define gx#core-bind-extern!__2
        (lambda (_id6369_ _eid6370_ _rebind?6371_ _phi6372_)
          (let ((_ctx6374_ (gx#current-expander-context)))
            (gx#core-bind-extern!__opt-lambda6341
             _id6369_
             _eid6370_
             _rebind?6371_
             _phi6372_
             _ctx6374_))))
      (define gx#core-bind-extern!
        (lambda _g9189_
          (let ((_g9188_ (length _g9189_)))
            (cond ((fx= _g9188_ 2) (apply gx#core-bind-extern!__0 _g9189_))
                  ((fx= _g9188_ 3) (apply gx#core-bind-extern!__1 _g9189_))
                  ((fx= _g9188_ 4) (apply gx#core-bind-extern!__2 _g9189_))
                  ((fx= _g9188_ 5)
                   (apply gx#core-bind-extern!__opt-lambda6341 _g9189_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-extern!
                    _g9189_))))))))
  (begin
    (define gx#core-bind-syntax!__opt-lambda6295
      (lambda (_id6297_ _e6298_ _rebind?6299_ _phi6300_ _ctx6301_)
        (gx#bind-identifier!__opt-lambda4788
         _id6297_
         (let ((_key6306_ (gx#core-identifier-key _id6297_))
               (_e6307_ (if (let ((_$e6303_
                                   (##structure-instance-of?
                                    _e6298_
                                    'gx#expander::t)))
                              (if _$e6303_
                                  _$e6303_
                                  (##structure-instance-of?
                                   _e6298_
                                   'gx#expander-context::t)))
                            _e6298_
                            (##structure
                             gx#user-expander::t
                             _e6298_
                             _ctx6301_
                             _phi6300_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__opt-lambda6193
             _key6306_
             '#t
             _phi6300_
             _ctx6301_)
            _key6306_
            _phi6300_
            _e6307_))
         _rebind?6299_
         _phi6300_
         _ctx6301_)))
    (begin
      (define gx#core-bind-syntax!__0
        (lambda (_id6312_ _e6313_)
          (let* ((_rebind?6315_ '#f)
                 (_phi6317_ (gx#current-expander-phi))
                 (_ctx6319_ (gx#current-expander-context)))
            (gx#core-bind-syntax!__opt-lambda6295
             _id6312_
             _e6313_
             _rebind?6315_
             _phi6317_
             _ctx6319_))))
      (define gx#core-bind-syntax!__1
        (lambda (_id6321_ _e6322_ _rebind?6323_)
          (let* ((_phi6325_ (gx#current-expander-phi))
                 (_ctx6327_ (gx#current-expander-context)))
            (gx#core-bind-syntax!__opt-lambda6295
             _id6321_
             _e6322_
             _rebind?6323_
             _phi6325_
             _ctx6327_))))
      (define gx#core-bind-syntax!__2
        (lambda (_id6329_ _e6330_ _rebind?6331_ _phi6332_)
          (let ((_ctx6334_ (gx#current-expander-context)))
            (gx#core-bind-syntax!__opt-lambda6295
             _id6329_
             _e6330_
             _rebind?6331_
             _phi6332_
             _ctx6334_))))
      (define gx#core-bind-syntax!
        (lambda _g9191_
          (let ((_g9190_ (length _g9191_)))
            (cond ((fx= _g9190_ 2) (apply gx#core-bind-syntax!__0 _g9191_))
                  ((fx= _g9190_ 3) (apply gx#core-bind-syntax!__1 _g9191_))
                  ((fx= _g9190_ 4) (apply gx#core-bind-syntax!__2 _g9191_))
                  ((fx= _g9190_ 5)
                   (apply gx#core-bind-syntax!__opt-lambda6295 _g9191_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-syntax!
                    _g9191_))))))))
  (begin
    (define gx#core-bind-root-syntax!__opt-lambda6278
      (lambda (_id6280_ _e6281_ _rebind?6282_)
        (gx#core-bind-syntax!__opt-lambda6295
         _id6280_
         _e6281_
         _rebind?6282_
         '0
         (gx#core-context-root__0))))
    (begin
      (define gx#core-bind-root-syntax!__0
        (lambda (_id6287_ _e6288_)
          (let ((_rebind?6290_ '#f))
            (gx#core-bind-root-syntax!__opt-lambda6278
             _id6287_
             _e6288_
             _rebind?6290_))))
      (define gx#core-bind-root-syntax!
        (lambda _g9193_
          (let ((_g9192_ (length _g9193_)))
            (cond ((fx= _g9192_ 2)
                   (apply gx#core-bind-root-syntax!__0 _g9193_))
                  ((fx= _g9192_ 3)
                   (apply gx#core-bind-root-syntax!__opt-lambda6278 _g9193_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-root-syntax!
                    _g9193_))))))))
  (begin
    (define gx#core-bind-alias!__opt-lambda6236
      (lambda (_id6238_ _alias-id6239_ _rebind?6240_ _phi6241_ _ctx6242_)
        (gx#bind-identifier!__opt-lambda4788
         _id6238_
         (let ((_key6244_ (gx#core-identifier-key _id6238_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__opt-lambda6193
             _key6244_
             '#t
             _phi6241_
             _ctx6242_)
            _key6244_
            _phi6241_
            _alias-id6239_))
         _rebind?6240_
         _phi6241_
         _ctx6242_)))
    (begin
      (define gx#core-bind-alias!__0
        (lambda (_id6249_ _alias-id6250_)
          (let* ((_rebind?6252_ '#f)
                 (_phi6254_ (gx#current-expander-phi))
                 (_ctx6256_ (gx#current-expander-context)))
            (gx#core-bind-alias!__opt-lambda6236
             _id6249_
             _alias-id6250_
             _rebind?6252_
             _phi6254_
             _ctx6256_))))
      (define gx#core-bind-alias!__1
        (lambda (_id6258_ _alias-id6259_ _rebind?6260_)
          (let* ((_phi6262_ (gx#current-expander-phi))
                 (_ctx6264_ (gx#current-expander-context)))
            (gx#core-bind-alias!__opt-lambda6236
             _id6258_
             _alias-id6259_
             _rebind?6260_
             _phi6262_
             _ctx6264_))))
      (define gx#core-bind-alias!__2
        (lambda (_id6266_ _alias-id6267_ _rebind?6268_ _phi6269_)
          (let ((_ctx6271_ (gx#current-expander-context)))
            (gx#core-bind-alias!__opt-lambda6236
             _id6266_
             _alias-id6267_
             _rebind?6268_
             _phi6269_
             _ctx6271_))))
      (define gx#core-bind-alias!
        (lambda _g9195_
          (let ((_g9194_ (length _g9195_)))
            (cond ((fx= _g9194_ 2) (apply gx#core-bind-alias!__0 _g9195_))
                  ((fx= _g9194_ 3) (apply gx#core-bind-alias!__1 _g9195_))
                  ((fx= _g9194_ 4) (apply gx#core-bind-alias!__2 _g9195_))
                  ((fx= _g9194_ 5)
                   (apply gx#core-bind-alias!__opt-lambda6236 _g9195_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-alias!
                    _g9195_))))))))
  (begin
    (define gx#make-binding-id__opt-lambda6193
      (lambda (_key6195_ _syntax?6196_ _phi6197_ _ctx6198_)
        (if (uninterned-symbol? _key6195_)
            (gensym 'L)
            (if (pair? _key6195_)
                (gensym (car _key6195_))
                (if (##structure-instance-of? _ctx6198_ 'gx#top-context::t)
                    (let ((_ns6200_
                           (gx#core-context-namespace__opt-lambda4324
                            _ctx6198_)))
                      (if (if (fxzero? _phi6197_) (not _syntax?6196_) '#f)
                          (if _ns6200_
                              (make-symbol _ns6200_ '"#" _key6195_)
                              _key6195_)
                          (if _syntax?6196_
                              (make-symbol
                               (let ((_$e6202_ _ns6200_))
                                 (if _$e6202_ _$e6202_ '""))
                               '"[:"
                               (number->string _phi6197_)
                               '":]#"
                               _key6195_)
                              (make-symbol
                               (let ((_$e6205_ _ns6200_))
                                 (if _$e6205_ _$e6205_ '""))
                               '"["
                               (number->string _phi6197_)
                               '"]#"
                               _key6195_))))
                    (gensym _key6195_))))))
    (begin
      (define gx#make-binding-id__0
        (lambda (_key6211_)
          (let* ((_syntax?6213_ '#f)
                 (_phi6215_ (gx#current-expander-phi))
                 (_ctx6217_ (gx#current-expander-context)))
            (gx#make-binding-id__opt-lambda6193
             _key6211_
             _syntax?6213_
             _phi6215_
             _ctx6217_))))
      (define gx#make-binding-id__1
        (lambda (_key6219_ _syntax?6220_)
          (let* ((_phi6222_ (gx#current-expander-phi))
                 (_ctx6224_ (gx#current-expander-context)))
            (gx#make-binding-id__opt-lambda6193
             _key6219_
             _syntax?6220_
             _phi6222_
             _ctx6224_))))
      (define gx#make-binding-id__2
        (lambda (_key6226_ _syntax?6227_ _phi6228_)
          (let ((_ctx6230_ (gx#current-expander-context)))
            (gx#make-binding-id__opt-lambda6193
             _key6226_
             _syntax?6227_
             _phi6228_
             _ctx6230_))))
      (define gx#make-binding-id
        (lambda _g9197_
          (let ((_g9196_ (length _g9197_)))
            (cond ((fx= _g9196_ 1) (apply gx#make-binding-id__0 _g9197_))
                  ((fx= _g9196_ 2) (apply gx#make-binding-id__1 _g9197_))
                  ((fx= _g9196_ 3) (apply gx#make-binding-id__2 _g9197_))
                  ((fx= _g9196_ 4)
                   (apply gx#make-binding-id__opt-lambda6193 _g9197_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#make-binding-id
                    _g9197_)))))))))
