(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1711108655)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_stx90998_)
        (letrec ((_expand-special91000_
                  (lambda (_hd91002_ _K91003_ _rest91004_ _r91005_)
                    (_K91003_
                     _rest91004_
                     (cons (gx#core-expand-top _hd91002_) _r91005_)))))
          (gx#core-expand-block__0 _stx90998_ _expand-special91000_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_stx90751_)
        (letrec ((_expand-special90753_
                  (lambda (_hd90873_ _K90874_ _rest90875_ _r90876_)
                    (let* ((_K90880_
                            (lambda (_e90878_)
                              (_K90874_ _rest90875_ (cons _e90878_ _r90876_))))
                           (_e9088190910_ _hd90873_)
                           (_E9090590914_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e9088190910_)))
                           (_E9090190926_
                            (lambda ()
                              (if (gx#stx-pair? _e9088190910_)
                                  (let ((_e9090690918_
                                         (gx#syntax-e _e9088190910_)))
                                    (let ((_hd9090790921_
                                           (##car _e9090690918_))
                                          (_tl9090890923_
                                           (##cdr _e9090690918_)))
                                      (if (and (gx#identifier? _hd9090790921_)
                                               (gx#core-identifier=?
                                                _hd9090790921_
                                                '%#define-runtime))
                                          (if '#t
                                              (_K90880_
                                               (gx#core-expand-define-runtime%
                                                _hd90873_))
                                              (_E9090590914_))
                                          (_E9090590914_))))
                                  (_E9090590914_))))
                           (_E9089790938_
                            (lambda ()
                              (if (gx#stx-pair? _e9088190910_)
                                  (let ((_e9090290930_
                                         (gx#syntax-e _e9088190910_)))
                                    (let ((_hd9090390933_
                                           (##car _e9090290930_))
                                          (_tl9090490935_
                                           (##cdr _e9090290930_)))
                                      (if (and (gx#identifier? _hd9090390933_)
                                               (gx#core-identifier=?
                                                _hd9090390933_
                                                '%#define-alias))
                                          (if '#t
                                              (_K90880_
                                               (gx#core-expand-define-alias%
                                                _hd90873_))
                                              (_E9090190926_))
                                          (_E9090190926_))))
                                  (_E9090190926_))))
                           (_E9088790950_
                            (lambda ()
                              (if (gx#stx-pair? _e9088190910_)
                                  (let ((_e9089890942_
                                         (gx#syntax-e _e9088190910_)))
                                    (let ((_hd9089990945_
                                           (##car _e9089890942_))
                                          (_tl9090090947_
                                           (##cdr _e9089890942_)))
                                      (if (and (gx#identifier? _hd9089990945_)
                                               (gx#core-identifier=?
                                                _hd9089990945_
                                                '%#define-syntax))
                                          (if '#t
                                              (_K90880_
                                               (gx#core-expand-define-syntax%
                                                _hd90873_))
                                              (_E9089790938_))
                                          (_E9089790938_))))
                                  (_E9089790938_))))
                           (_E9088390982_
                            (lambda ()
                              (if (gx#stx-pair? _e9088190910_)
                                  (let ((_e9088890954_
                                         (gx#syntax-e _e9088190910_)))
                                    (let ((_hd9088990957_
                                           (##car _e9088890954_))
                                          (_tl9089090959_
                                           (##cdr _e9088890954_)))
                                      (if (and (gx#identifier? _hd9088990957_)
                                               (gx#core-identifier=?
                                                _hd9088990957_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl9089090959_)
                                              (let ((_e9089190962_
                                                     (gx#syntax-e
                                                      _tl9089090959_)))
                                                (let ((_hd9089290965_
                                                       (##car _e9089190962_))
                                                      (_tl9089390967_
                                                       (##cdr _e9089190962_)))
                                                  (let ((_hd-bind90970_
                                                         _hd9089290965_))
                                                    (if (gx#stx-pair?
                                                         _tl9089390967_)
                                                        (let ((_e9089490972_
                                                               (gx#syntax-e
                                                                _tl9089390967_)))
                                                          (let ((_hd9089590975_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e9089490972_))
                        (_tl9089690977_ (##cdr _e9089490972_)))
                    (let ((_expr90980_ _hd9089590975_))
                      (if (gx#stx-null? _tl9089690977_)
                          (if (gx#core-bind-values? _hd-bind90970_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind90970_)
                                (_K90880_ _hd90873_))
                              (_E9088790950_))
                          (_E9088790950_)))))
                (_E9088790950_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9088790950_))
                                          (_E9088790950_))))
                                  (_E9088790950_))))
                           (_E9088290994_
                            (lambda ()
                              (if (gx#stx-pair? _e9088190910_)
                                  (let ((_e9088490986_
                                         (gx#syntax-e _e9088190910_)))
                                    (let ((_hd9088590989_
                                           (##car _e9088490986_))
                                          (_tl9088690991_
                                           (##cdr _e9088490986_)))
                                      (if (and (gx#identifier? _hd9088590989_)
                                               (gx#core-identifier=?
                                                _hd9088590989_
                                                '%#begin-syntax))
                                          (if '#t
                                              (_K90880_
                                               (gx#core-expand-begin-syntax%
                                                _hd90873_))
                                              (_E9088390982_))
                                          (_E9088390982_))))
                                  (_E9088390982_)))))
                      (_E9088290994_))))
                 (_eval-body90754_
                  (lambda (_rbody90762_)
                    (let _lp90764_ ((_rest90766_ _rbody90762_)
                                    (_body90767_ '())
                                    (_ebody90768_ '()))
                      (let* ((_rest9076990777_ _rest90766_)
                             (_else9077190785_
                              (lambda ()
                                (values _body90767_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons '%#begin _ebody90768_)
                                          (gx#stx-source _stx90751_))))))
                             (_K9077390861_
                              (lambda (_rest90788_ _hd90789_)
                                (let* ((_e9079090807_ _hd90789_)
                                       (_E9080290811_
                                        (lambda ()
                                          (_lp90764_
                                           _rest90788_
                                           (cons _hd90789_ _body90767_)
                                           (cons _hd90789_ _ebody90768_))))
                                       (_E9079290823_
                                        (lambda ()
                                          (if (gx#stx-pair? _e9079090807_)
                                              (let ((_e9080390815_
                                                     (gx#syntax-e
                                                      _e9079090807_)))
                                                (let ((_hd9080490818_
                                                       (##car _e9080390815_))
                                                      (_tl9080590820_
                                                       (##cdr _e9080390815_)))
                                                  (if (and (gx#identifier?
                                                            _hd9080490818_)
                                                           (gx#core-identifier=?
                                                            _hd9080490818_
                                                            '%#begin-syntax))
                                                      (if '#t
                                                          (_lp90764_
                                                           _rest90788_
                                                           (cons _hd90789_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body90767_)
                   _ebody90768_)
                  (_E9080290811_))
              (_E9080290811_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9080290811_))))
                                       (_E9079190857_
                                        (lambda ()
                                          (if (gx#stx-pair? _e9079090807_)
                                              (let ((_e9079390827_
                                                     (gx#syntax-e
                                                      _e9079090807_)))
                                                (let ((_hd9079490830_
                                                       (##car _e9079390827_))
                                                      (_tl9079590832_
                                                       (##cdr _e9079390827_)))
                                                  (if (and (gx#identifier?
                                                            _hd9079490830_)
                                                           (gx#core-identifier=?
                                                            _hd9079490830_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _tl9079590832_)
                                                          (let ((_e9079690835_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl9079590832_)))
                    (let ((_hd9079790838_ (##car _e9079690835_))
                          (_tl9079890840_ (##cdr _e9079690835_)))
                      (let ((_hd-bind90843_ _hd9079790838_))
                        (if (gx#stx-pair? _tl9079890840_)
                            (let ((_e9079990845_ (gx#syntax-e _tl9079890840_)))
                              (let ((_hd9080090848_ (##car _e9079990845_))
                                    (_tl9080190850_ (##cdr _e9079990845_)))
                                (let ((_expr90853_ _hd9080090848_))
                                  (if (gx#stx-null? _tl9080190850_)
                                      (if '#t
                                          (let ((_ehd90855_
                                                 (gx#core-quote-syntax__1
                                                  (cons (gx#core-quote-syntax__0
                                                         '%#define-values)
                                                        (cons (gx#core-quote-bind-values
                                                               _hd-bind90843_)
                                                              (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr90853_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _hd90789_))))
                                            (_lp90764_
                                             _rest90788_
                                             (cons _ehd90855_ _body90767_)
                                             (cons _ehd90855_ _ebody90768_)))
                                          (_E9079290823_))
                                      (_E9079290823_)))))
                            (_E9079290823_)))))
                  (_E9079290823_))
              (_E9079290823_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9079290823_)))))
                                  (_E9079190857_)))))
                        (if (##pair? _rest9076990777_)
                            (let ((_hd9077490864_ (##car _rest9076990777_))
                                  (_tl9077590866_ (##cdr _rest9076990777_)))
                              (let* ((_hd90869_ _hd9077490864_)
                                     (_rest90871_ _tl9077590866_))
                                (_K9077390861_ _rest90871_ _hd90869_)))
                            (_else9077190785_)))))))
          (call-with-parameters
           (lambda ()
             (let* ((_rbody90757_
                     (gx#core-expand-block__1
                      _stx90751_
                      _expand-special90753_
                      '#f))
                    (_g91021_ (_eval-body90754_ _rbody90757_)))
               (begin
                 (let ((_g91022_
                        (if (##values? _g91021_)
                            (##vector-length _g91021_)
                            1)))
                   (if (not (##fx= _g91022_ 2))
                       (error "Context expects 2 values" _g91022_)))
                 (let ((_expanded-body90759_ (##vector-ref _g91021_ 0))
                       (_value90760_ (##vector-ref _g91021_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _expanded-body90759_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _value90760_ '())))
                    (gx#stx-source _stx90751_))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_stx90721_)
        (let* ((_e9072290729_ _stx90721_)
               (_E9072490733_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9072290729_)))
               (_E9072390747_
                (lambda ()
                  (if (gx#stx-pair? _e9072290729_)
                      (let ((_e9072590737_ (gx#syntax-e _e9072290729_)))
                        (let ((_hd9072690740_ (##car _e9072590737_))
                              (_tl9072790742_ (##cdr _e9072590737_)))
                          (let ((_body90745_ _tl9072790742_))
                            (if (gx#stx-list? _body90745_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _body90745_)
                                 (gx#stx-source _stx90721_))
                                (_E9072490733_)))))
                      (_E9072490733_)))))
          (_E9072390747_))))
    (define gx#core-expand-begin-module%
      (lambda (_stx90719_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _stx90719_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_stx90665_)
        (let* ((_e9066690679_ _stx90665_)
               (_E9066890683_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9066690679_)))
               (_E9066790715_
                (lambda ()
                  (if (gx#stx-pair? _e9066690679_)
                      (let ((_e9066990687_ (gx#syntax-e _e9066690679_)))
                        (let ((_hd9067090690_ (##car _e9066990687_))
                              (_tl9067190692_ (##cdr _e9066990687_)))
                          (if (gx#stx-pair? _tl9067190692_)
                              (let ((_e9067290695_
                                     (gx#syntax-e _tl9067190692_)))
                                (let ((_hd9067390698_ (##car _e9067290695_))
                                      (_tl9067490700_ (##cdr _e9067290695_)))
                                  (let ((_ann90703_ _hd9067390698_))
                                    (if (gx#stx-pair? _tl9067490700_)
                                        (let ((_e9067590705_
                                               (gx#syntax-e _tl9067490700_)))
                                          (let ((_hd9067690708_
                                                 (##car _e9067590705_))
                                                (_tl9067790710_
                                                 (##cdr _e9067590705_)))
                                            (let ((_expr90713_ _hd9067690708_))
                                              (if (gx#stx-null? _tl9067790710_)
                                                  (if '#t
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#begin-annotation)
                                                             (cons _ann90703_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#core-expand-expression _expr90713_) '())))
               (gx#stx-source _stx90665_))
              (_E9066890683_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9066890683_)))))
                                        (_E9066890683_)))))
                              (_E9066890683_))))
                      (_E9066890683_)))))
          (_E9066790715_))))
    (define gx#core-expand-local-block
      (lambda (_stx90389_ _body90390_)
        (letrec ((_expand-special90392_
                  (lambda (_hd90660_ _K90661_ _rest90662_ _r90663_)
                    (_K90661_
                     '()
                     (cons (_expand-internal90393_ _hd90660_ _rest90662_)
                           _r90663_))))
                 (_expand-internal90393_
                  (lambda (_hd90656_ _rest90657_)
                    (call-with-parameters
                     (lambda ()
                       (_wrap-internal90395_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _hd90656_ _rest90657_))
                          (gx#stx-source _stx90389_))
                         _expand-internal-special90394_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj91015
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init! __obj91015)
                       __obj91015))))
                 (_expand-internal-special90394_
                  (lambda (_hd90551_ _K90552_ _rest90553_ _r90554_)
                    (let* ((_e9055590580_ _hd90551_)
                           (_E9057590584_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _e9055590580_)))
                           (_E9057190596_
                            (lambda ()
                              (if (gx#stx-pair? _e9055590580_)
                                  (let ((_e9057690588_
                                         (gx#syntax-e _e9055590580_)))
                                    (let ((_hd9057790591_
                                           (##car _e9057690588_))
                                          (_tl9057890593_
                                           (##cdr _e9057690588_)))
                                      (if (and (gx#identifier? _hd9057790591_)
                                               (gx#core-identifier=?
                                                _hd9057790591_
                                                '%#declare))
                                          (if '#t
                                              (_K90552_
                                               _rest90553_
                                               (cons (gx#core-expand-declare%
                                                      _hd90551_)
                                                     _r90554_))
                                              (_E9057590584_))
                                          (_E9057590584_))))
                                  (_E9057590584_))))
                           (_E9056790608_
                            (lambda ()
                              (if (gx#stx-pair? _e9055590580_)
                                  (let ((_e9057290600_
                                         (gx#syntax-e _e9055590580_)))
                                    (let ((_hd9057390603_
                                           (##car _e9057290600_))
                                          (_tl9057490605_
                                           (##cdr _e9057290600_)))
                                      (if (and (gx#identifier? _hd9057390603_)
                                               (gx#core-identifier=?
                                                _hd9057390603_
                                                '%#define-alias))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd90551_)
                                                (_K90552_
                                                 _rest90553_
                                                 _r90554_))
                                              (_E9057190596_))
                                          (_E9057190596_))))
                                  (_E9057190596_))))
                           (_E9055790620_
                            (lambda ()
                              (if (gx#stx-pair? _e9055590580_)
                                  (let ((_e9056890612_
                                         (gx#syntax-e _e9055590580_)))
                                    (let ((_hd9056990615_
                                           (##car _e9056890612_))
                                          (_tl9057090617_
                                           (##cdr _e9056890612_)))
                                      (if (and (gx#identifier? _hd9056990615_)
                                               (gx#core-identifier=?
                                                _hd9056990615_
                                                '%#define-syntax))
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-syntax%
                                                 _hd90551_)
                                                (_K90552_
                                                 _rest90553_
                                                 _r90554_))
                                              (_E9056790608_))
                                          (_E9056790608_))))
                                  (_E9056790608_))))
                           (_E9055690652_
                            (lambda ()
                              (if (gx#stx-pair? _e9055590580_)
                                  (let ((_e9055890624_
                                         (gx#syntax-e _e9055590580_)))
                                    (let ((_hd9055990627_
                                           (##car _e9055890624_))
                                          (_tl9056090629_
                                           (##cdr _e9055890624_)))
                                      (if (and (gx#identifier? _hd9055990627_)
                                               (gx#core-identifier=?
                                                _hd9055990627_
                                                '%#define-values))
                                          (if (gx#stx-pair? _tl9056090629_)
                                              (let ((_e9056190632_
                                                     (gx#syntax-e
                                                      _tl9056090629_)))
                                                (let ((_hd9056290635_
                                                       (##car _e9056190632_))
                                                      (_tl9056390637_
                                                       (##cdr _e9056190632_)))
                                                  (let ((_hd-bind90640_
                                                         _hd9056290635_))
                                                    (if (gx#stx-pair?
                                                         _tl9056390637_)
                                                        (let ((_e9056490642_
                                                               (gx#syntax-e
                                                                _tl9056390637_)))
                                                          (let ((_hd9056590645_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e9056490642_))
                        (_tl9056690647_ (##cdr _e9056490642_)))
                    (let ((_expr90650_ _hd9056590645_))
                      (if (gx#stx-null? _tl9056690647_)
                          (if (gx#core-bind-values? _hd-bind90640_)
                              (begin
                                (gx#core-bind-values!__0 _hd-bind90640_)
                                (_K90552_
                                 _rest90553_
                                 (cons _hd90551_ _r90554_)))
                              (_E9055790620_))
                          (_E9055790620_)))))
                (_E9055790620_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E9055790620_))
                                          (_E9055790620_))))
                                  (_E9055790620_)))))
                      (_E9055690652_))))
                 (_wrap-internal90395_
                  (lambda (_rbody90397_)
                    (let _lp90399_ ((_rest90401_ _rbody90397_)
                                    (_decls90402_ '())
                                    (_bind90403_ '())
                                    (_body90404_ '()))
                      (let* ((_e9040590412_ _rest90401_)
                             (_E9040790461_
                              (lambda ()
                                (let* ((_body90456_
                                        (let* ((_body9041590425_ _body90404_)
                                               (_else9041890433_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _body90404_)
                                                   (gx#stx-source
                                                    _stx90389_)))))
                                          (let ((_K9042390453_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _stx90389_)))
                                                (_K9042090439_
                                                 (lambda (_expr90437_)
                                                   _expr90437_)))
                                            (let ((_try-match9041790449_
                                                   (lambda ()
                                                     (if (##pair? _body9041590425_)
                                                         (let ((_tl9042290444_
                                                                (##cdr _body9041590425_))
                                                               (_hd9042190442_
                                                                (##car _body9041590425_)))
                                                           (if (##null? _tl9042290444_)
                                                               (let ((_expr90447_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd9042190442_))
                         (_K9042090439_ _expr90447_))
                       (_else9041890433_)))
                 (_else9041890433_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##null? _body9041590425_)
                                                  (_K9042390453_)
                                                  (_try-match9041790449_))))))
                                       (_body90458_
                                        (if (null? _bind90403_)
                                            _body90456_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _bind90403_
                                                         (cons _body90456_
                                                               '())))
                                             (gx#stx-source _stx90389_)))))
                                  (if (null? _decls90402_)
                                      _body90458_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _decls90402_
                                                   (cons _body90458_ '())))
                                       (gx#stx-source _stx90389_))))))
                             (_E9040690547_
                              (lambda ()
                                (if (gx#stx-pair? _e9040590412_)
                                    (let ((_e9040890465_
                                           (gx#syntax-e _e9040590412_)))
                                      (let ((_hd9040990468_
                                             (##car _e9040890465_))
                                            (_tl9041090470_
                                             (##cdr _e9040890465_)))
                                        (let* ((_hd90473_ _hd9040990468_)
                                               (_rest90475_ _tl9041090470_))
                                          (if '#t
                                              (let* ((_e9047690493_ _hd90473_)
                                                     (_E9048890497_
                                                      (lambda ()
                                                        (if (null? _bind90403_)
                                                            (_lp90399_
                                                             _rest90475_
                                                             _decls90402_
                                                             _bind90403_
                                                             (cons _hd90473_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body90404_))
                    (_lp90399_
                     _rest90475_
                     _decls90402_
                     (cons (cons '#f (cons _hd90473_ '())) _bind90403_)
                     _body90404_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E9047890511_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e9047690493_)
                                                            (let ((_e9048990501_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e9047690493_)))
                      (let ((_hd9049090504_ (##car _e9048990501_))
                            (_tl9049190506_ (##cdr _e9048990501_)))
                        (if (and (gx#identifier? _hd9049090504_)
                                 (gx#core-identifier=?
                                  _hd9049090504_
                                  '%#declare))
                            (let ((_xdecls90509_ _tl9049190506_))
                              (if '#t
                                  (_lp90399_
                                   _rest90475_
                                   (gx#stx-foldr
                                    cons
                                    _decls90402_
                                    _xdecls90509_)
                                   _bind90403_
                                   _body90404_)
                                  (_E9048890497_)))
                            (_E9048890497_))))
                    (_E9048890497_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E9047790543_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e9047690493_)
                                                            (let ((_e9047990515_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e9047690493_)))
                      (let ((_hd9048090518_ (##car _e9047990515_))
                            (_tl9048190520_ (##cdr _e9047990515_)))
                        (if (and (gx#identifier? _hd9048090518_)
                                 (gx#core-identifier=?
                                  _hd9048090518_
                                  '%#define-values))
                            (if (gx#stx-pair? _tl9048190520_)
                                (let ((_e9048290523_
                                       (gx#syntax-e _tl9048190520_)))
                                  (let ((_hd9048390526_ (##car _e9048290523_))
                                        (_tl9048490528_ (##cdr _e9048290523_)))
                                    (let ((_hd-bind90531_ _hd9048390526_))
                                      (if (gx#stx-pair? _tl9048490528_)
                                          (let ((_e9048590533_
                                                 (gx#syntax-e _tl9048490528_)))
                                            (let ((_hd9048690536_
                                                   (##car _e9048590533_))
                                                  (_tl9048790538_
                                                   (##cdr _e9048590533_)))
                                              (let ((_expr90541_
                                                     _hd9048690536_))
                                                (if (gx#stx-null?
                                                     _tl9048790538_)
                                                    (if '#t
                                                        (_lp90399_
                                                         _rest90475_
                                                         _decls90402_
                                                         (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd-bind90531_)
                             (cons (gx#core-expand-expression _expr90541_)
                                   '()))
                       _bind90403_)
                 _body90404_)
                (_E9047890511_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E9047890511_)))))
                                          (_E9047890511_)))))
                                (_E9047890511_))
                            (_E9047890511_))))
                    (_E9047890511_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E9047790543_))
                                              (_E9040790461_)))))
                                    (_E9040790461_)))))
                        (_E9040690547_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _body90390_)
            (gx#stx-source _stx90389_))
           _expand-special90392_))))
    (define gx#core-expand-declare%
      (lambda (_stx90327_)
        (let* ((_e9032890335_ _stx90327_)
               (_E9033090339_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9032890335_)))
               (_E9032990385_
                (lambda ()
                  (if (gx#stx-pair? _e9032890335_)
                      (let ((_e9033190343_ (gx#syntax-e _e9032890335_)))
                        (let ((_hd9033290346_ (##car _e9033190343_))
                              (_tl9033390348_ (##cdr _e9033190343_)))
                          (let ((_body90351_ _tl9033390348_))
                            (if (gx#stx-list? _body90351_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_decl90353_)
                                     (let* ((_e9035490361_ _decl90353_)
                                            (_E9035690365_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _e9035490361_)))
                                            (_E9035590381_
                                             (lambda ()
                                               (if (gx#stx-pair? _e9035490361_)
                                                   (let ((_e9035790369_
                                                          (gx#syntax-e
                                                           _e9035490361_)))
                                                     (let ((_hd9035890372_
                                                            (##car _e9035790369_))
                                                           (_tl9035990374_
                                                            (##cdr _e9035790369_)))
                                                       (let* ((_head90377_
                                                               _hd9035890372_)
                                                              (_args90379_
                                                               _tl9035990374_))
                                                         (if (gx#stx-list?
                                                              _args90379_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _decl90353_)
                                                             (_E9035690365_)))))
                                                   (_E9035690365_)))))
                                       (_E9035590381_)))
                                   _body90351_))
                                 (gx#stx-source _stx90327_))
                                (_E9033090339_)))))
                      (_E9033090339_)))))
          (_E9032990385_))))
    (define gx#core-expand-extern%
      (lambda (_stx90231_)
        (let* ((_e9023290239_ _stx90231_)
               (_E9023490243_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9023290239_)))
               (_E9023390323_
                (lambda ()
                  (if (gx#stx-pair? _e9023290239_)
                      (let ((_e9023590247_ (gx#syntax-e _e9023290239_)))
                        (let ((_hd9023690250_ (##car _e9023590247_))
                              (_tl9023790252_ (##cdr _e9023590247_)))
                          (let ((_body90255_ _tl9023790252_))
                            (if '#t
                                (let _lp90257_ ((_rest90259_ _body90255_)
                                                (_r90260_ '()))
                                  (let* ((_e9026190275_ _rest90259_)
                                         (_E9027390279_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                             _stx90231_)))
                                         (_E9026390283_
                                          (lambda ()
                                            (if (gx#stx-null? _e9026190275_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#extern
                                                      (reverse _r90260_))
                                                     (gx#stx-source
                                                      _stx90231_))
                                                    (_E9027390279_))
                                                (_E9027390279_))))
                                         (_E9026290319_
                                          (lambda ()
                                            (if (gx#stx-pair? _e9026190275_)
                                                (let ((_e9026490287_
                                                       (gx#syntax-e
                                                        _e9026190275_)))
                                                  (let ((_hd9026590290_
                                                         (##car _e9026490287_))
                                                        (_tl9026690292_
                                                         (##cdr _e9026490287_)))
                                                    (if (gx#stx-pair?
                                                         _hd9026590290_)
                                                        (let ((_e9026790295_
                                                               (gx#syntax-e
                                                                _hd9026590290_)))
                                                          (let ((_hd9026890298_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e9026790295_))
                        (_tl9026990300_ (##cdr _e9026790295_)))
                    (let ((_id90303_ _hd9026890298_))
                      (if (gx#stx-pair? _tl9026990300_)
                          (let ((_e9027090305_ (gx#syntax-e _tl9026990300_)))
                            (let ((_hd9027190308_ (##car _e9027090305_))
                                  (_tl9027290310_ (##cdr _e9027090305_)))
                              (let ((_eid90313_ _hd9027190308_))
                                (if (gx#stx-null? _tl9027290310_)
                                    (let ((_rest90315_ _tl9026690292_))
                                      (if (and (gx#identifier? _id90303_)
                                               (gx#identifier? _eid90313_))
                                          (let ((_eid90317_
                                                 (gx#stx-e _eid90313_)))
                                            (gx#core-bind-extern!__0
                                             _id90303_
                                             _eid90317_)
                                            (_lp90257_
                                             _rest90315_
                                             (cons (cons (gx#core-quote-syntax__0
                                                          _id90303_)
                                                         (cons _eid90317_ '()))
                                                   _r90260_)))
                                          (_E9026390283_)))
                                    (_E9026390283_)))))
                          (_E9026390283_)))))
                (_E9026390283_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E9026390283_)))))
                                    (_E9026290319_)))
                                (_E9023490243_)))))
                      (_E9023490243_)))))
          (_E9023390323_))))
    (define gx#core-expand-define-values%
      (lambda (_stx90177_)
        (let* ((_e9017890191_ _stx90177_)
               (_E9018090195_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9017890191_)))
               (_E9017990227_
                (lambda ()
                  (if (gx#stx-pair? _e9017890191_)
                      (let ((_e9018190199_ (gx#syntax-e _e9017890191_)))
                        (let ((_hd9018290202_ (##car _e9018190199_))
                              (_tl9018390204_ (##cdr _e9018190199_)))
                          (if (gx#stx-pair? _tl9018390204_)
                              (let ((_e9018490207_
                                     (gx#syntax-e _tl9018390204_)))
                                (let ((_hd9018590210_ (##car _e9018490207_))
                                      (_tl9018690212_ (##cdr _e9018490207_)))
                                  (let ((_hd90215_ _hd9018590210_))
                                    (if (gx#stx-pair? _tl9018690212_)
                                        (let ((_e9018790217_
                                               (gx#syntax-e _tl9018690212_)))
                                          (let ((_hd9018890220_
                                                 (##car _e9018790217_))
                                                (_tl9018990222_
                                                 (##cdr _e9018790217_)))
                                            (let ((_expr90225_ _hd9018890220_))
                                              (if (gx#stx-null? _tl9018990222_)
                                                  (if (gx#core-bind-values?
                                                       _hd90215_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _hd90215_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd90215_)
                             (cons (gx#core-expand-expression _expr90225_)
                                   '())))
                 (gx#stx-source _stx90177_)))
              (_E9018090195_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9018090195_)))))
                                        (_E9018090195_)))))
                              (_E9018090195_))))
                      (_E9018090195_)))))
          (_E9017990227_))))
    (define gx#core-expand-define-runtime%
      (lambda (_stx90121_)
        (let* ((_e9012290135_ _stx90121_)
               (_E9012490139_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9012290135_)))
               (_E9012390173_
                (lambda ()
                  (if (gx#stx-pair? _e9012290135_)
                      (let ((_e9012590143_ (gx#syntax-e _e9012290135_)))
                        (let ((_hd9012690146_ (##car _e9012590143_))
                              (_tl9012790148_ (##cdr _e9012590143_)))
                          (if (gx#stx-pair? _tl9012790148_)
                              (let ((_e9012890151_
                                     (gx#syntax-e _tl9012790148_)))
                                (let ((_hd9012990154_ (##car _e9012890151_))
                                      (_tl9013090156_ (##cdr _e9012890151_)))
                                  (let ((_id90159_ _hd9012990154_))
                                    (if (gx#stx-pair? _tl9013090156_)
                                        (let ((_e9013190161_
                                               (gx#syntax-e _tl9013090156_)))
                                          (let ((_hd9013290164_
                                                 (##car _e9013190161_))
                                                (_tl9013390166_
                                                 (##cdr _e9013190161_)))
                                            (let ((_binding-id90169_
                                                   _hd9013290164_))
                                              (if (gx#stx-null? _tl9013390166_)
                                                  (if (and (gx#identifier?
                                                            _id90159_)
                                                           (gx#identifier?
                                                            _binding-id90169_))
                                                      (let ((_eid90171_
                                                             (gx#stx-e
                                                              _binding-id90169_)))
                                                        (gx#core-bind-runtime-reference!__0
                                                         _id90159_
                                                         _eid90171_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-runtime)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id90159_)
                             (cons _eid90171_ '())))))
              (_E9012490139_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9012490139_)))))
                                        (_E9012490139_)))))
                              (_E9012490139_))))
                      (_E9012490139_)))))
          (_E9012390173_))))
    (define gx#core-expand-define-syntax%
      (lambda (_stx90064_)
        (let* ((_e9006590078_ _stx90064_)
               (_E9006790082_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9006590078_)))
               (_E9006690117_
                (lambda ()
                  (if (gx#stx-pair? _e9006590078_)
                      (let ((_e9006890086_ (gx#syntax-e _e9006590078_)))
                        (let ((_hd9006990089_ (##car _e9006890086_))
                              (_tl9007090091_ (##cdr _e9006890086_)))
                          (if (gx#stx-pair? _tl9007090091_)
                              (let ((_e9007190094_
                                     (gx#syntax-e _tl9007090091_)))
                                (let ((_hd9007290097_ (##car _e9007190094_))
                                      (_tl9007390099_ (##cdr _e9007190094_)))
                                  (let ((_id90102_ _hd9007290097_))
                                    (if (gx#stx-pair? _tl9007390099_)
                                        (let ((_e9007490104_
                                               (gx#syntax-e _tl9007390099_)))
                                          (let ((_hd9007590107_
                                                 (##car _e9007490104_))
                                                (_tl9007690109_
                                                 (##cdr _e9007490104_)))
                                            (let ((_expr90112_ _hd9007590107_))
                                              (if (gx#stx-null? _tl9007690109_)
                                                  (if (gx#identifier?
                                                       _id90102_)
                                                      (let ((_g91023_
                                                             (gx#core-expand-expression+1
                                                              _expr90112_)))
                                                        (begin
                                                          (let ((_g91024_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g91023_)
                             (##vector-length _g91023_)
                             1)))
                    (if (not (##fx= _g91024_ 2))
                        (error "Context expects 2 values" _g91024_)))
                  (let ((_e-stx90114_ (##vector-ref _g91023_ 0))
                        (_e90115_ (##vector-ref _g91023_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _id90102_ _e90115_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _id90102_)
                                   (cons _e-stx90114_ '())))
                       (gx#stx-source _stx90064_))))))
              (_E9006790082_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9006790082_)))))
                                        (_E9006790082_)))))
                              (_E9006790082_))))
                      (_E9006790082_)))))
          (_E9006690117_))))
    (define gx#core-expand-define-alias%
      (lambda (_stx90008_)
        (let* ((_e9000990022_ _stx90008_)
               (_E9001190026_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e9000990022_)))
               (_E9001090060_
                (lambda ()
                  (if (gx#stx-pair? _e9000990022_)
                      (let ((_e9001290030_ (gx#syntax-e _e9000990022_)))
                        (let ((_hd9001390033_ (##car _e9001290030_))
                              (_tl9001490035_ (##cdr _e9001290030_)))
                          (if (gx#stx-pair? _tl9001490035_)
                              (let ((_e9001590038_
                                     (gx#syntax-e _tl9001490035_)))
                                (let ((_hd9001690041_ (##car _e9001590038_))
                                      (_tl9001790043_ (##cdr _e9001590038_)))
                                  (let ((_id90046_ _hd9001690041_))
                                    (if (gx#stx-pair? _tl9001790043_)
                                        (let ((_e9001890048_
                                               (gx#syntax-e _tl9001790043_)))
                                          (let ((_hd9001990051_
                                                 (##car _e9001890048_))
                                                (_tl9002090053_
                                                 (##cdr _e9001890048_)))
                                            (let ((_alias-id90056_
                                                   _hd9001990051_))
                                              (if (gx#stx-null? _tl9002090053_)
                                                  (if (and (gx#identifier?
                                                            _id90046_)
                                                           (gx#identifier?
                                                            _alias-id90056_))
                                                      (let ((_alias-id90058_
                                                             (gx#core-quote-syntax__0
                                                              _alias-id90056_)))
                                                        (gx#core-bind-alias!__0
                                                         _id90046_
                                                         _alias-id90058_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id90046_)
                             (cons _alias-id90058_ '())))))
              (_E9001190026_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E9001190026_)))))
                                        (_E9001190026_)))))
                              (_E9001190026_))))
                      (_E9001190026_)))))
          (_E9001090060_))))
    (define gx#core-expand-lambda%__%
      (lambda (_stx89951_ _wrap?89952_)
        (let* ((_e8995389963_ _stx89951_)
               (_E8995589967_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8995389963_)))
               (_E8995489994_
                (lambda ()
                  (if (gx#stx-pair? _e8995389963_)
                      (let ((_e8995689971_ (gx#syntax-e _e8995389963_)))
                        (let ((_hd8995789974_ (##car _e8995689971_))
                              (_tl8995889976_ (##cdr _e8995689971_)))
                          (if (gx#stx-pair? _tl8995889976_)
                              (let ((_e8995989979_
                                     (gx#syntax-e _tl8995889976_)))
                                (let ((_hd8996089982_ (##car _e8995989979_))
                                      (_tl8996189984_ (##cdr _e8995989979_)))
                                  (let* ((_hd89987_ _hd8996089982_)
                                         (_body89989_ _tl8996189984_))
                                    (if (gx#core-bind-values? _hd89987_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#core-bind-values!__0 _hd89987_)
                                           (let ((_body89992_
                                                  (cons (gx#core-quote-bind-values
                                                         _hd89987_)
                                                        (cons (gx#core-expand-local-block
                                                               _stx89951_
                                                               _body89989_)
                                                              '()))))
                                             (if _wrap?89952_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _body89992_)
                                                  (gx#stx-source _stx89951_))
                                                 _body89992_)))
                                         gx#current-expander-context
                                         (let ((__obj91016
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj91016)
                                           __obj91016))
                                        (_E8995589967_)))))
                              (_E8995589967_))))
                      (_E8995589967_)))))
          (_E8995489994_))))
    (define gx#core-expand-lambda%__0
      (lambda (_stx90001_)
        (let ((_wrap?90003_ '#t))
          (gx#core-expand-lambda%__% _stx90001_ _wrap?90003_))))
    (define gx#core-expand-lambda%
      (lambda _g91026_
        (let ((_g91025_ (##length _g91026_)))
          (cond ((##fx= _g91025_ 1)
                 (apply (lambda (_stx90001_)
                          (gx#core-expand-lambda%__0 _stx90001_))
                        _g91026_))
                ((##fx= _g91025_ 2)
                 (apply (lambda (_stx90005_ _wrap?90006_)
                          (gx#core-expand-lambda%__% _stx90005_ _wrap?90006_))
                        _g91026_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g91026_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_stx89915_)
        (let* ((_e8991689923_ _stx89915_)
               (_E8991889927_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8991689923_)))
               (_E8991789946_
                (lambda ()
                  (if (gx#stx-pair? _e8991689923_)
                      (let ((_e8991989931_ (gx#syntax-e _e8991689923_)))
                        (let ((_hd8992089934_ (##car _e8991989931_))
                              (_tl8992189936_ (##cdr _e8991989931_)))
                          (let ((_clauses89939_ _tl8992189936_))
                            (if (gx#stx-list? _clauses89939_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_clause89941_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _clause89941_)
                                       (let ((_$e89943_
                                              (gx#stx-source _clause89941_)))
                                         (if _$e89943_
                                             _$e89943_
                                             (gx#stx-source _stx89915_))))
                                      '#f))
                                   _clauses89939_))
                                 (gx#stx-source _stx89915_))
                                (_E8991889927_)))))
                      (_E8991889927_)))))
          (_E8991789946_))))
    (define gx#core-expand-let-values%
      (lambda (_stx89869_)
        (let* ((_e8987089880_ _stx89869_)
               (_E8987289884_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8987089880_)))
               (_E8987189911_
                (lambda ()
                  (if (gx#stx-pair? _e8987089880_)
                      (let ((_e8987389888_ (gx#syntax-e _e8987089880_)))
                        (let ((_hd8987489891_ (##car _e8987389888_))
                              (_tl8987589893_ (##cdr _e8987389888_)))
                          (if (gx#stx-pair? _tl8987589893_)
                              (let ((_e8987689896_
                                     (gx#syntax-e _tl8987589893_)))
                                (let ((_hd8987789899_ (##car _e8987689896_))
                                      (_tl8987889901_ (##cdr _e8987689896_)))
                                  (let* ((_hd89904_ _hd8987789899_)
                                         (_body89906_ _tl8987889901_))
                                    (if (gx#core-expand-let-bind? _hd89904_)
                                        (let ((_expressions89908_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _hd89904_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd89904_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd89904_
                                                           _expressions89908_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx89869_
                         _body89906_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx89869_)))
                                           gx#current-expander-context
                                           (let ((__obj91017
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj91017)
                                             __obj91017)))
                                        (_E8987289884_)))))
                              (_E8987289884_))))
                      (_E8987289884_)))))
          (_E8987189911_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx89814_ _form89815_)
        (let* ((_e8981689826_ _stx89814_)
               (_E8981889830_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8981689826_)))
               (_E8981789855_
                (lambda ()
                  (if (gx#stx-pair? _e8981689826_)
                      (let ((_e8981989834_ (gx#syntax-e _e8981689826_)))
                        (let ((_hd8982089837_ (##car _e8981989834_))
                              (_tl8982189839_ (##cdr _e8981989834_)))
                          (if (gx#stx-pair? _tl8982189839_)
                              (let ((_e8982289842_
                                     (gx#syntax-e _tl8982189839_)))
                                (let ((_hd8982389845_ (##car _e8982289842_))
                                      (_tl8982489847_ (##cdr _e8982289842_)))
                                  (let* ((_hd89850_ _hd8982389845_)
                                         (_body89852_ _tl8982489847_))
                                    (if (gx#core-expand-let-bind? _hd89850_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _hd89850_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _form89815_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _hd89850_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _hd89850_))
                                                        (cons (gx#core-expand-local-block
                                                               _stx89814_
                                                               _body89852_)
                                                              '())))
                                            (gx#stx-source _stx89814_)))
                                         gx#current-expander-context
                                         (let ((__obj91018
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj91018)
                                           __obj91018))
                                        (_E8981889830_)))))
                              (_E8981889830_))))
                      (_E8981889830_)))))
          (_E8981789855_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_stx89862_)
        (let ((_form89864_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _stx89862_ _form89864_))))
    (define gx#core-expand-letrec-values%
      (lambda _g91028_
        (let ((_g91027_ (##length _g91028_)))
          (cond ((##fx= _g91027_ 1)
                 (apply (lambda (_stx89862_)
                          (gx#core-expand-letrec-values%__0 _stx89862_))
                        _g91028_))
                ((##fx= _g91027_ 2)
                 (apply (lambda (_stx89866_ _form89867_)
                          (gx#core-expand-letrec-values%__%
                           _stx89866_
                           _form89867_))
                        _g91028_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g91028_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_stx89811_)
        (gx#core-expand-letrec-values%__% _stx89811_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_stx89768_)
        (if (gx#stx-list? _stx89768_)
            (gx#stx-andmap
             (lambda (_bind89770_)
               (let* ((_e8977189781_ _bind89770_)
                      (_E8977389785_ (lambda () '#f))
                      (_E8977289807_
                       (lambda ()
                         (if (gx#stx-pair? _e8977189781_)
                             (let ((_e8977489789_ (gx#syntax-e _e8977189781_)))
                               (let ((_hd8977589792_ (##car _e8977489789_))
                                     (_tl8977689794_ (##cdr _e8977489789_)))
                                 (let ((_hd89797_ _hd8977589792_))
                                   (if (gx#stx-pair? _tl8977689794_)
                                       (let ((_e8977789799_
                                              (gx#syntax-e _tl8977689794_)))
                                         (let ((_hd8977889802_
                                                (##car _e8977789799_))
                                               (_tl8977989804_
                                                (##cdr _e8977789799_)))
                                           (if (gx#stx-null? _tl8977989804_)
                                               (if '#t
                                                   (gx#core-bind-values?
                                                    _hd89797_)
                                                   (_E8977389785_))
                                               (_E8977389785_))))
                                       (_E8977389785_)))))
                             (_E8977389785_)))))
                 (_E8977289807_)))
             _stx89768_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_bind89727_)
        (let* ((_e8972889738_ _bind89727_)
               (_E8973089742_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8972889738_)))
               (_E8972989764_
                (lambda ()
                  (if (gx#stx-pair? _e8972889738_)
                      (let ((_e8973189746_ (gx#syntax-e _e8972889738_)))
                        (let ((_hd8973289749_ (##car _e8973189746_))
                              (_tl8973389751_ (##cdr _e8973189746_)))
                          (if (gx#stx-pair? _tl8973389751_)
                              (let ((_e8973489754_
                                     (gx#syntax-e _tl8973389751_)))
                                (let ((_hd8973589757_ (##car _e8973489754_))
                                      (_tl8973689759_ (##cdr _e8973489754_)))
                                  (let ((_expr89762_ _hd8973589757_))
                                    (if (gx#stx-null? _tl8973689759_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr89762_)
                                            (_E8973089742_))
                                        (_E8973089742_)))))
                              (_E8973089742_))))
                      (_E8973089742_)))))
          (_E8972989764_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_bind89686_)
        (let* ((_e8968789697_ _bind89686_)
               (_E8968989701_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8968789697_)))
               (_E8968889723_
                (lambda ()
                  (if (gx#stx-pair? _e8968789697_)
                      (let ((_e8969089705_ (gx#syntax-e _e8968789697_)))
                        (let ((_hd8969189708_ (##car _e8969089705_))
                              (_tl8969289710_ (##cdr _e8969089705_)))
                          (let ((_hd89713_ _hd8969189708_))
                            (if (gx#stx-pair? _tl8969289710_)
                                (let ((_e8969389715_
                                       (gx#syntax-e _tl8969289710_)))
                                  (let ((_hd8969489718_ (##car _e8969389715_))
                                        (_tl8969589720_ (##cdr _e8969389715_)))
                                    (if (gx#stx-null? _tl8969589720_)
                                        (if '#t
                                            (gx#core-bind-values!__0 _hd89713_)
                                            (_E8968989701_))
                                        (_E8968989701_))))
                                (_E8968989701_)))))
                      (_E8968989701_)))))
          (_E8968889723_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_bind89644_ _expr89645_)
        (let* ((_e8964689656_ _bind89644_)
               (_E8964889660_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8964689656_)))
               (_E8964789682_
                (lambda ()
                  (if (gx#stx-pair? _e8964689656_)
                      (let ((_e8964989664_ (gx#syntax-e _e8964689656_)))
                        (let ((_hd8965089667_ (##car _e8964989664_))
                              (_tl8965189669_ (##cdr _e8964989664_)))
                          (let ((_hd89672_ _hd8965089667_))
                            (if (gx#stx-pair? _tl8965189669_)
                                (let ((_e8965289674_
                                       (gx#syntax-e _tl8965189669_)))
                                  (let ((_hd8965389677_ (##car _e8965289674_))
                                        (_tl8965489679_ (##cdr _e8965289674_)))
                                    (if (gx#stx-null? _tl8965489679_)
                                        (if '#t
                                            (cons (gx#core-quote-bind-values
                                                   _hd89672_)
                                                  (cons _expr89645_ '()))
                                            (_E8964889660_))
                                        (_E8964889660_))))
                                (_E8964889660_)))))
                      (_E8964889660_)))))
          (_E8964789682_))))
    (define gx#core-expand-let-syntax%
      (lambda (_stx89598_)
        (let* ((_e8959989609_ _stx89598_)
               (_E8960189613_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8959989609_)))
               (_E8960089640_
                (lambda ()
                  (if (gx#stx-pair? _e8959989609_)
                      (let ((_e8960289617_ (gx#syntax-e _e8959989609_)))
                        (let ((_hd8960389620_ (##car _e8960289617_))
                              (_tl8960489622_ (##cdr _e8960289617_)))
                          (if (gx#stx-pair? _tl8960489622_)
                              (let ((_e8960589625_
                                     (gx#syntax-e _tl8960489622_)))
                                (let ((_hd8960689628_ (##car _e8960589625_))
                                      (_tl8960789630_ (##cdr _e8960589625_)))
                                  (let* ((_hd89633_ _hd8960689628_)
                                         (_body89635_ _tl8960789630_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd89633_)
                                        (let ((_expanders89637_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _hd89633_)))
                                          (call-with-parameters
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd89633_
                                              _expanders89637_)
                                             (gx#core-expand-local-block
                                              _stx89598_
                                              _body89635_))
                                           gx#current-expander-context
                                           (let ((__obj91019
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!
                                              __obj91019)
                                             __obj91019)))
                                        (_E8960189613_)))))
                              (_E8960189613_))))
                      (_E8960189613_)))))
          (_E8960089640_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_stx89547_)
        (let* ((_e8954889558_ _stx89547_)
               (_E8955089562_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8954889558_)))
               (_E8954989594_
                (lambda ()
                  (if (gx#stx-pair? _e8954889558_)
                      (let ((_e8955189566_ (gx#syntax-e _e8954889558_)))
                        (let ((_hd8955289569_ (##car _e8955189566_))
                              (_tl8955389571_ (##cdr _e8955189566_)))
                          (if (gx#stx-pair? _tl8955389571_)
                              (let ((_e8955489574_
                                     (gx#syntax-e _tl8955389571_)))
                                (let ((_hd8955589577_ (##car _e8955489574_))
                                      (_tl8955689579_ (##cdr _e8955489574_)))
                                  (let* ((_hd89582_ _hd8955589577_)
                                         (_body89584_ _tl8955689579_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _hd89582_)
                                        (call-with-parameters
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd89582_
                                            (make-list
                                             (gx#stx-length _hd89582_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g8958689589_
                                                     _g8958789591_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g8958689589_
                                               _g8958789591_
                                               '#t))
                                            _hd89582_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd89582_))
                                           (gx#core-expand-local-block
                                            _stx89547_
                                            _body89584_))
                                         gx#current-expander-context
                                         (let ((__obj91020
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!
                                            __obj91020)
                                           __obj91020))
                                        (_E8955089562_)))))
                              (_E8955089562_))))
                      (_E8955089562_)))))
          (_E8954989594_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_stx89504_)
        (if (gx#stx-list? _stx89504_)
            (gx#stx-andmap
             (lambda (_bind89506_)
               (let* ((_e8950789517_ _bind89506_)
                      (_E8950989521_ (lambda () '#f))
                      (_E8950889543_
                       (lambda ()
                         (if (gx#stx-pair? _e8950789517_)
                             (let ((_e8951089525_ (gx#syntax-e _e8950789517_)))
                               (let ((_hd8951189528_ (##car _e8951089525_))
                                     (_tl8951289530_ (##cdr _e8951089525_)))
                                 (let ((_hd89533_ _hd8951189528_))
                                   (if (gx#stx-pair? _tl8951289530_)
                                       (let ((_e8951389535_
                                              (gx#syntax-e _tl8951289530_)))
                                         (let ((_hd8951489538_
                                                (##car _e8951389535_))
                                               (_tl8951589540_
                                                (##cdr _e8951389535_)))
                                           (if (gx#stx-null? _tl8951589540_)
                                               (if '#t
                                                   (gx#identifier? _hd89533_)
                                                   (_E8950989521_))
                                               (_E8950989521_))))
                                       (_E8950989521_)))))
                             (_E8950989521_)))))
                 (_E8950889543_)))
             _stx89504_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_bind89461_)
        (let* ((_e8946289472_ _bind89461_)
               (_E8946489476_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8946289472_)))
               (_E8946389500_
                (lambda ()
                  (if (gx#stx-pair? _e8946289472_)
                      (let ((_e8946589480_ (gx#syntax-e _e8946289472_)))
                        (let ((_hd8946689483_ (##car _e8946589480_))
                              (_tl8946789485_ (##cdr _e8946589480_)))
                          (if (gx#stx-pair? _tl8946789485_)
                              (let ((_e8946889488_
                                     (gx#syntax-e _tl8946789485_)))
                                (let ((_hd8946989491_ (##car _e8946889488_))
                                      (_tl8947089493_ (##cdr _e8946889488_)))
                                  (let ((_expr89496_ _hd8946989491_))
                                    (if (gx#stx-null? _tl8947089493_)
                                        (if '#t
                                            (let ((_g91029_
                                                   (gx#core-expand-expression+1
                                                    _expr89496_)))
                                              (begin
                                                (let ((_g91030_
                                                       (if (##values? _g91029_)
                                                           (##vector-length
                                                            _g91029_)
                                                           1)))
                                                  (if (not (##fx= _g91030_ 2))
                                                      (error "Context expects 2 values"
                                                             _g91030_)))
                                                (let ((_e89498_
                                                       (##vector-ref
                                                        _g91029_
                                                        1)))
                                                  _e89498_)))
                                            (_E8946489476_))
                                        (_E8946489476_)))))
                              (_E8946489476_))))
                      (_E8946489476_)))))
          (_E8946389500_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind89406_ _e89407_ _rebind?89408_)
        (let* ((_e8940989419_ _bind89406_)
               (_E8941189423_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8940989419_)))
               (_E8941089445_
                (lambda ()
                  (if (gx#stx-pair? _e8940989419_)
                      (let ((_e8941289427_ (gx#syntax-e _e8940989419_)))
                        (let ((_hd8941389430_ (##car _e8941289427_))
                              (_tl8941489432_ (##cdr _e8941289427_)))
                          (let ((_id89435_ _hd8941389430_))
                            (if (gx#stx-pair? _tl8941489432_)
                                (let ((_e8941589437_
                                       (gx#syntax-e _tl8941489432_)))
                                  (let ((_hd8941689440_ (##car _e8941589437_))
                                        (_tl8941789442_ (##cdr _e8941589437_)))
                                    (if (gx#stx-null? _tl8941789442_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id89435_
                                             _e89407_
                                             _rebind?89408_)
                                            (_E8941189423_))
                                        (_E8941189423_))))
                                (_E8941189423_)))))
                      (_E8941189423_)))))
          (_E8941089445_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_bind89452_ _e89453_)
        (let ((_rebind?89455_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _bind89452_
           _e89453_
           _rebind?89455_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g91032_
        (let ((_g91031_ (##length _g91032_)))
          (cond ((##fx= _g91031_ 2)
                 (apply (lambda (_bind89452_ _e89453_)
                          (gx#core-expand-let-bind-syntax!__0
                           _bind89452_
                           _e89453_))
                        _g91032_))
                ((##fx= _g91031_ 3)
                 (apply (lambda (_bind89457_ _e89458_ _rebind?89459_)
                          (gx#core-expand-let-bind-syntax!__%
                           _bind89457_
                           _e89458_
                           _rebind?89459_))
                        _g91032_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g91032_))))))
    (define gx#core-expand-expression%
      (lambda (_stx89364_)
        (let* ((_e8936589375_ _stx89364_)
               (_E8936789379_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8936589375_)))
               (_E8936689401_
                (lambda ()
                  (if (gx#stx-pair? _e8936589375_)
                      (let ((_e8936889383_ (gx#syntax-e _e8936589375_)))
                        (let ((_hd8936989386_ (##car _e8936889383_))
                              (_tl8937089388_ (##cdr _e8936889383_)))
                          (if (gx#stx-pair? _tl8937089388_)
                              (let ((_e8937189391_
                                     (gx#syntax-e _tl8937089388_)))
                                (let ((_hd8937289394_ (##car _e8937189391_))
                                      (_tl8937389396_ (##cdr _e8937189391_)))
                                  (let ((_expr89399_ _hd8937289394_))
                                    (if (gx#stx-null? _tl8937389396_)
                                        (if '#t
                                            (gx#core-expand-expression
                                             _expr89399_)
                                            (_E8936789379_))
                                        (_E8936789379_)))))
                              (_E8936789379_))))
                      (_E8936789379_)))))
          (_E8936689401_))))
    (define gx#core-expand-quote%
      (lambda (_stx89323_)
        (let* ((_e8932489334_ _stx89323_)
               (_E8932689338_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8932489334_)))
               (_E8932589360_
                (lambda ()
                  (if (gx#stx-pair? _e8932489334_)
                      (let ((_e8932789342_ (gx#syntax-e _e8932489334_)))
                        (let ((_hd8932889345_ (##car _e8932789342_))
                              (_tl8932989347_ (##cdr _e8932789342_)))
                          (if (gx#stx-pair? _tl8932989347_)
                              (let ((_e8933089350_
                                     (gx#syntax-e _tl8932989347_)))
                                (let ((_hd8933189353_ (##car _e8933089350_))
                                      (_tl8933289355_ (##cdr _e8933089350_)))
                                  (let ((_e89358_ _hd8933189353_))
                                    (if (gx#stx-null? _tl8933289355_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote)
                                                   (cons (gx#syntax->datum
                                                          _e89358_)
                                                         '()))
                                             (gx#stx-source _stx89323_))
                                            (_E8932689338_))
                                        (_E8932689338_)))))
                              (_E8932689338_))))
                      (_E8932689338_)))))
          (_E8932589360_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_stx89282_)
        (let* ((_e8928389293_ _stx89282_)
               (_E8928589297_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8928389293_)))
               (_E8928489319_
                (lambda ()
                  (if (gx#stx-pair? _e8928389293_)
                      (let ((_e8928689301_ (gx#syntax-e _e8928389293_)))
                        (let ((_hd8928789304_ (##car _e8928689301_))
                              (_tl8928889306_ (##cdr _e8928689301_)))
                          (if (gx#stx-pair? _tl8928889306_)
                              (let ((_e8928989309_
                                     (gx#syntax-e _tl8928889306_)))
                                (let ((_hd8929089312_ (##car _e8928989309_))
                                      (_tl8929189314_ (##cdr _e8928989309_)))
                                  (let ((_e89317_ _hd8929089312_))
                                    (if (gx#stx-null? _tl8929189314_)
                                        (if '#t
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#quote-syntax)
                                                   (cons (gx#core-quote-syntax__0
                                                          _e89317_)
                                                         '()))
                                             (gx#stx-source _stx89282_))
                                            (_E8928589297_))
                                        (_E8928589297_)))))
                              (_E8928589297_))))
                      (_E8928589297_)))))
          (_E8928489319_))))
    (define gx#core-expand-call%
      (lambda (_stx89239_)
        (let* ((_e8924089250_ _stx89239_)
               (_E8924289254_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8924089250_)))
               (_E8924189278_
                (lambda ()
                  (if (gx#stx-pair? _e8924089250_)
                      (let ((_e8924389258_ (gx#syntax-e _e8924089250_)))
                        (let ((_hd8924489261_ (##car _e8924389258_))
                              (_tl8924589263_ (##cdr _e8924389258_)))
                          (if (gx#stx-pair? _tl8924589263_)
                              (let ((_e8924689266_
                                     (gx#syntax-e _tl8924589263_)))
                                (let ((_hd8924789269_ (##car _e8924689266_))
                                      (_tl8924889271_ (##cdr _e8924689266_)))
                                  (let* ((_rator89274_ _hd8924789269_)
                                         (_args89276_ _tl8924889271_))
                                    (if (gx#stx-list? _args89276_)
                                        (gx#core-quote-syntax__1
                                         (gx#core-cons*
                                          '%#call
                                          (gx#core-expand-expression
                                           _rator89274_)
                                          (gx#stx-map1
                                           gx#core-expand-expression
                                           _args89276_))
                                         (gx#stx-source _stx89239_))
                                        (_E8924289254_)))))
                              (_E8924289254_))))
                      (_E8924289254_)))))
          (_E8924189278_))))
    (define gx#core-expand-if%
      (lambda (_stx89172_)
        (let* ((_e8917389189_ _stx89172_)
               (_E8917589193_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8917389189_)))
               (_E8917489235_
                (lambda ()
                  (if (gx#stx-pair? _e8917389189_)
                      (let ((_e8917689197_ (gx#syntax-e _e8917389189_)))
                        (let ((_hd8917789200_ (##car _e8917689197_))
                              (_tl8917889202_ (##cdr _e8917689197_)))
                          (if (gx#stx-pair? _tl8917889202_)
                              (let ((_e8917989205_
                                     (gx#syntax-e _tl8917889202_)))
                                (let ((_hd8918089208_ (##car _e8917989205_))
                                      (_tl8918189210_ (##cdr _e8917989205_)))
                                  (let ((_test89213_ _hd8918089208_))
                                    (if (gx#stx-pair? _tl8918189210_)
                                        (let ((_e8918289215_
                                               (gx#syntax-e _tl8918189210_)))
                                          (let ((_hd8918389218_
                                                 (##car _e8918289215_))
                                                (_tl8918489220_
                                                 (##cdr _e8918289215_)))
                                            (let ((_K89223_ _hd8918389218_))
                                              (if (gx#stx-pair? _tl8918489220_)
                                                  (let ((_e8918589225_
                                                         (gx#syntax-e
                                                          _tl8918489220_)))
                                                    (let ((_hd8918689228_
                                                           (##car _e8918589225_))
                                                          (_tl8918789230_
                                                           (##cdr _e8918589225_)))
                                                      (let ((_E89233_
                                                             _hd8918689228_))
                                                        (if (gx#stx-null?
                                                             _tl8918789230_)
                                                            (if '#t
                                                                (gx#core-quote-syntax__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-quote-syntax__0 '%#if)
                               (cons (gx#core-expand-expression _test89213_)
                                     (cons (gx#core-expand-expression _K89223_)
                                           (cons (gx#core-expand-expression
                                                  _E89233_)
                                                 '()))))
                         (gx#stx-source _stx89172_))
                        (_E8917589193_))
                    (_E8917589193_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8917589193_)))))
                                        (_E8917589193_)))))
                              (_E8917589193_))))
                      (_E8917589193_)))))
          (_E8917489235_))))
    (define gx#core-expand-ref%
      (lambda (_stx89131_)
        (let* ((_e8913289142_ _stx89131_)
               (_E8913489146_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8913289142_)))
               (_E8913389168_
                (lambda ()
                  (if (gx#stx-pair? _e8913289142_)
                      (let ((_e8913589150_ (gx#syntax-e _e8913289142_)))
                        (let ((_hd8913689153_ (##car _e8913589150_))
                              (_tl8913789155_ (##cdr _e8913589150_)))
                          (if (gx#stx-pair? _tl8913789155_)
                              (let ((_e8913889158_
                                     (gx#syntax-e _tl8913789155_)))
                                (let ((_hd8913989161_ (##car _e8913889158_))
                                      (_tl8914089163_ (##cdr _e8913889158_)))
                                  (let ((_id89166_ _hd8913989161_))
                                    (if (gx#stx-null? _tl8914089163_)
                                        (if (gx#identifier? _id89166_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _id89166_
                                                          _stx89131_)
                                                         '()))
                                             (gx#stx-source _stx89131_))
                                            (_E8913489146_))
                                        (_E8913489146_)))))
                              (_E8913489146_))))
                      (_E8913489146_)))))
          (_E8913389168_))))
    (define gx#core-expand-setq%
      (lambda (_stx89077_)
        (let* ((_e8907889091_ _stx89077_)
               (_E8908089095_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8907889091_)))
               (_E8907989127_
                (lambda ()
                  (if (gx#stx-pair? _e8907889091_)
                      (let ((_e8908189099_ (gx#syntax-e _e8907889091_)))
                        (let ((_hd8908289102_ (##car _e8908189099_))
                              (_tl8908389104_ (##cdr _e8908189099_)))
                          (if (gx#stx-pair? _tl8908389104_)
                              (let ((_e8908489107_
                                     (gx#syntax-e _tl8908389104_)))
                                (let ((_hd8908589110_ (##car _e8908489107_))
                                      (_tl8908689112_ (##cdr _e8908489107_)))
                                  (let ((_id89115_ _hd8908589110_))
                                    (if (gx#stx-pair? _tl8908689112_)
                                        (let ((_e8908789117_
                                               (gx#syntax-e _tl8908689112_)))
                                          (let ((_hd8908889120_
                                                 (##car _e8908789117_))
                                                (_tl8908989122_
                                                 (##cdr _e8908789117_)))
                                            (let ((_expr89125_ _hd8908889120_))
                                              (if (gx#stx-null? _tl8908989122_)
                                                  (if (gx#identifier?
                                                       _id89115_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id89115_
                            _stx89077_)
                           (cons (gx#core-expand-expression _expr89125_) '())))
               (gx#stx-source _stx89077_))
              (_E8908089095_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8908089095_)))))
                                        (_E8908089095_)))))
                              (_E8908089095_))))
                      (_E8908089095_)))))
          (_E8907989127_))))
    (define gx#macro-expand-extern
      (lambda (_stx88925_)
        (letrec ((_generate88927_
                  (lambda (_body88957_)
                    (let _lp88959_ ((_rest88961_ _body88957_)
                                    (_ns88962_ (gx#core-context-namespace__0))
                                    (_r88963_ '()))
                      (let* ((_e8896488979_ _rest88961_)
                             (_E8897788983_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _e8896488979_)))
                             (_E8897388987_
                              (lambda ()
                                (if (gx#stx-null? _e8896488979_)
                                    (if '#t (reverse _r88963_) (_E8897788983_))
                                    (_E8897788983_))))
                             (_E8896689044_
                              (lambda ()
                                (if (gx#stx-pair? _e8896488979_)
                                    (let ((_e8897488991_
                                           (gx#syntax-e _e8896488979_)))
                                      (let ((_hd8897588994_
                                             (##car _e8897488991_))
                                            (_tl8897688996_
                                             (##cdr _e8897488991_)))
                                        (let* ((_hd88999_ _hd8897588994_)
                                               (_rest89001_ _tl8897688996_))
                                          (if '#t
                                              (if (gx#identifier? _hd88999_)
                                                  (_lp88959_
                                                   _rest89001_
                                                   _ns88962_
                                                   (cons (cons _hd88999_
                                                               (cons (if _ns88962_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#stx-identifier
                                  _hd88999_
                                  _ns88962_
                                  '"#"
                                  _hd88999_)
                                 _hd88999_)
                             '()))
                 _r88963_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_e8900289012_
                                                          _hd88999_)
                                                         (_E8900489016_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e8900289012_)))
                                                         (_E8900389040_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e8900289012_)
                        (let ((_e8900589020_ (gx#syntax-e _e8900289012_)))
                          (let ((_hd8900689023_ (##car _e8900589020_))
                                (_tl8900789025_ (##cdr _e8900589020_)))
                            (let ((_id89028_ _hd8900689023_))
                              (if (gx#stx-pair? _tl8900789025_)
                                  (let ((_e8900889030_
                                         (gx#syntax-e _tl8900789025_)))
                                    (let ((_hd8900989033_
                                           (##car _e8900889030_))
                                          (_tl8901089035_
                                           (##cdr _e8900889030_)))
                                      (let ((_eid89038_ _hd8900989033_))
                                        (if (gx#stx-null? _tl8901089035_)
                                            (if (and (gx#identifier? _id89028_)
                                                     (gx#identifier?
                                                      _eid89038_))
                                                (_lp88959_
                                                 _rest89001_
                                                 _ns88962_
                                                 (cons (cons _id89028_
                                                             (cons _eid89038_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               _r88963_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8900489016_))
                                            (_E8900489016_)))))
                                  (_E8900489016_)))))
                        (_E8900489016_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E8900389040_)))
                                              (_E8897388987_)))))
                                    (_E8897388987_))))
                             (_E8896589073_
                              (lambda ()
                                (if (gx#stx-pair? _e8896488979_)
                                    (let ((_e8896789048_
                                           (gx#syntax-e _e8896488979_)))
                                      (let ((_hd8896889051_
                                             (##car _e8896789048_))
                                            (_tl8896989053_
                                             (##cdr _e8896789048_)))
                                        (if (eq? (gx#stx-e _hd8896889051_)
                                                 'namespace:)
                                            (if (gx#stx-pair? _tl8896989053_)
                                                (let ((_e8897089056_
                                                       (gx#syntax-e
                                                        _tl8896989053_)))
                                                  (let ((_hd8897189059_
                                                         (##car _e8897089056_))
                                                        (_tl8897289061_
                                                         (##cdr _e8897089056_)))
                                                    (let* ((_ns89064_
                                                            _hd8897189059_)
                                                           (_rest89066_
                                                            _tl8897289061_))
                                                      (if '#t
                                                          (let ((_ns89071_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#identifier? _ns89064_)
                             (symbol->string (gx#stx-e _ns89064_))
                             (if (or (gx#stx-string? _ns89064_)
                                     (gx#stx-false? _ns89064_))
                                 (gx#stx-e _ns89064_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; extern expects namespace identifier"
                                  _stx88925_
                                  _ns89064_)))))
                    (_lp88959_ _rest89066_ _ns89071_ _r88963_))
                  (_E8896689044_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E8896689044_))
                                            (_E8896689044_))))
                                    (_E8896689044_)))))
                        (_E8896589073_))))))
          (let* ((_e8892888935_ _stx88925_)
                 (_E8893088939_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8892888935_)))
                 (_E8892988953_
                  (lambda ()
                    (if (gx#stx-pair? _e8892888935_)
                        (let ((_e8893188943_ (gx#syntax-e _e8892888935_)))
                          (let ((_hd8893288946_ (##car _e8893188943_))
                                (_tl8893388948_ (##cdr _e8893188943_)))
                            (let ((_body88951_ _tl8893388948_))
                              (if (gx#stx-list? _body88951_)
                                  (gx#core-cons
                                   '%#extern
                                   (_generate88927_ _body88951_))
                                  (_E8893088939_)))))
                        (_E8893088939_)))))
            (_E8892988953_)))))
    (define gx#macro-expand-define-values
      (lambda (_stx88871_)
        (let* ((_e8887288885_ _stx88871_)
               (_E8887488889_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8887288885_)))
               (_E8887388921_
                (lambda ()
                  (if (gx#stx-pair? _e8887288885_)
                      (let ((_e8887588893_ (gx#syntax-e _e8887288885_)))
                        (let ((_hd8887688896_ (##car _e8887588893_))
                              (_tl8887788898_ (##cdr _e8887588893_)))
                          (if (gx#stx-pair? _tl8887788898_)
                              (let ((_e8887888901_
                                     (gx#syntax-e _tl8887788898_)))
                                (let ((_hd8887988904_ (##car _e8887888901_))
                                      (_tl8888088906_ (##cdr _e8887888901_)))
                                  (let ((_hd88909_ _hd8887988904_))
                                    (if (gx#stx-pair? _tl8888088906_)
                                        (let ((_e8888188911_
                                               (gx#syntax-e _tl8888088906_)))
                                          (let ((_hd8888288914_
                                                 (##car _e8888188911_))
                                                (_tl8888388916_
                                                 (##cdr _e8888188911_)))
                                            (let ((_expr88919_ _hd8888288914_))
                                              (if (gx#stx-null? _tl8888388916_)
                                                  (if (gx#stx-andmap
                                                       gx#identifier?
                                                       _hd88909_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-values)
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#user-binding-identifier
                           _hd88909_)
                          (cons _expr88919_ '())))
              (_E8887488889_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8887488889_)))))
                                        (_E8887488889_)))))
                              (_E8887488889_))))
                      (_E8887488889_)))))
          (_E8887388921_))))
    (define gx#macro-expand-define-syntax
      (lambda (_stx88817_)
        (let* ((_e8881888831_ _stx88817_)
               (_E8882088835_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8881888831_)))
               (_E8881988867_
                (lambda ()
                  (if (gx#stx-pair? _e8881888831_)
                      (let ((_e8882188839_ (gx#syntax-e _e8881888831_)))
                        (let ((_hd8882288842_ (##car _e8882188839_))
                              (_tl8882388844_ (##cdr _e8882188839_)))
                          (if (gx#stx-pair? _tl8882388844_)
                              (let ((_e8882488847_
                                     (gx#syntax-e _tl8882388844_)))
                                (let ((_hd8882588850_ (##car _e8882488847_))
                                      (_tl8882688852_ (##cdr _e8882488847_)))
                                  (let ((_hd88855_ _hd8882588850_))
                                    (if (gx#stx-pair? _tl8882688852_)
                                        (let ((_e8882788857_
                                               (gx#syntax-e _tl8882688852_)))
                                          (let ((_hd8882888860_
                                                 (##car _e8882788857_))
                                                (_tl8882988862_
                                                 (##cdr _e8882788857_)))
                                            (let ((_expr88865_ _hd8882888860_))
                                              (if (gx#stx-null? _tl8882988862_)
                                                  (if (gx#identifier?
                                                       _hd88855_)
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-syntax)
                                                            (cons _hd88855_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _expr88865_ '())))
              (_E8882088835_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8882088835_)))))
                                        (_E8882088835_)))))
                              (_E8882088835_))))
                      (_E8882088835_)))))
          (_E8881988867_))))
    (define gx#macro-expand-define-alias
      (lambda (_stx88763_)
        (let* ((_e8876488777_ _stx88763_)
               (_E8876688781_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8876488777_)))
               (_E8876588813_
                (lambda ()
                  (if (gx#stx-pair? _e8876488777_)
                      (let ((_e8876788785_ (gx#syntax-e _e8876488777_)))
                        (let ((_hd8876888788_ (##car _e8876788785_))
                              (_tl8876988790_ (##cdr _e8876788785_)))
                          (if (gx#stx-pair? _tl8876988790_)
                              (let ((_e8877088793_
                                     (gx#syntax-e _tl8876988790_)))
                                (let ((_hd8877188796_ (##car _e8877088793_))
                                      (_tl8877288798_ (##cdr _e8877088793_)))
                                  (let ((_id88801_ _hd8877188796_))
                                    (if (gx#stx-pair? _tl8877288798_)
                                        (let ((_e8877388803_
                                               (gx#syntax-e _tl8877288798_)))
                                          (let ((_hd8877488806_
                                                 (##car _e8877388803_))
                                                (_tl8877588808_
                                                 (##cdr _e8877388803_)))
                                            (let ((_alias-id88811_
                                                   _hd8877488806_))
                                              (if (gx#stx-null? _tl8877588808_)
                                                  (if (and (gx#identifier?
                                                            _id88801_)
                                                           (gx#identifier?
                                                            _alias-id88811_))
                                                      (cons (gx#core-quote-syntax__0
                                                             '%#define-alias)
                                                            (cons _id88801_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _alias-id88811_ '())))
              (_E8876688781_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8876688781_)))))
                                        (_E8876688781_)))))
                              (_E8876688781_))))
                      (_E8876688781_)))))
          (_E8876588813_))))
    (define gx#macro-expand-lambda%
      (lambda (_stx88720_)
        (let* ((_e8872188731_ _stx88720_)
               (_E8872388735_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8872188731_)))
               (_E8872288759_
                (lambda ()
                  (if (gx#stx-pair? _e8872188731_)
                      (let ((_e8872488739_ (gx#syntax-e _e8872188731_)))
                        (let ((_hd8872588742_ (##car _e8872488739_))
                              (_tl8872688744_ (##cdr _e8872488739_)))
                          (if (gx#stx-pair? _tl8872688744_)
                              (let ((_e8872788747_
                                     (gx#syntax-e _tl8872688744_)))
                                (let ((_hd8872888750_ (##car _e8872788747_))
                                      (_tl8872988752_ (##cdr _e8872788747_)))
                                  (let* ((_hd88755_ _hd8872888750_)
                                         (_body88757_ _tl8872988752_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _hd88755_)
                                             (gx#stx-list? _body88757_)
                                             (not (gx#stx-null? _body88757_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1
                                          gx#user-binding-identifier
                                          _hd88755_)
                                         _body88757_)
                                        (_E8872388735_)))))
                              (_E8872388735_))))
                      (_E8872388735_)))))
          (_E8872288759_))))
    (define gx#macro-expand-case-lambda
      (lambda (_stx88656_)
        (letrec ((_generate88658_
                  (lambda (_clause88688_)
                    (let* ((_e8868988696_ _clause88688_)
                           (_E8869188700_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _stx88656_
                               _clause88688_)))
                           (_E8869088716_
                            (lambda ()
                              (if (gx#stx-pair? _e8868988696_)
                                  (let ((_e8869288704_
                                         (gx#syntax-e _e8868988696_)))
                                    (let ((_hd8869388707_
                                           (##car _e8869288704_))
                                          (_tl8869488709_
                                           (##cdr _e8869288704_)))
                                      (let* ((_hd88712_ _hd8869388707_)
                                             (_body88714_ _tl8869488709_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _hd88712_)
                                                 (gx#stx-list? _body88714_)
                                                 (not (gx#stx-null?
                                                       _body88714_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd88712_)
                                                   _body88714_)
                                             (gx#stx-source _clause88688_))
                                            (_E8869188700_)))))
                                  (_E8869188700_)))))
                      (_E8869088716_)))))
          (let* ((_e8865988666_ _stx88656_)
                 (_E8866188670_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8865988666_)))
                 (_E8866088684_
                  (lambda ()
                    (if (gx#stx-pair? _e8865988666_)
                        (let ((_e8866288674_ (gx#syntax-e _e8865988666_)))
                          (let ((_hd8866388677_ (##car _e8866288674_))
                                (_tl8866488679_ (##cdr _e8866288674_)))
                            (let ((_clauses88682_ _tl8866488679_))
                              (if (gx#stx-list? _clauses88682_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _generate88658_
                                    _clauses88682_))
                                  (_E8866188670_)))))
                        (_E8866188670_)))))
            (_E8866088684_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_stx88557_ _form88558_)
        (letrec ((_generate88560_
                  (lambda (_bind88603_)
                    (let* ((_e8860488614_ _bind88603_)
                           (_E8860688618_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx88557_
                               _bind88603_)))
                           (_E8860588642_
                            (lambda ()
                              (if (gx#stx-pair? _e8860488614_)
                                  (let ((_e8860788622_
                                         (gx#syntax-e _e8860488614_)))
                                    (let ((_hd8860888625_
                                           (##car _e8860788622_))
                                          (_tl8860988627_
                                           (##cdr _e8860788622_)))
                                      (let ((_ids88630_ _hd8860888625_))
                                        (if (gx#stx-pair? _tl8860988627_)
                                            (let ((_e8861088632_
                                                   (gx#syntax-e
                                                    _tl8860988627_)))
                                              (let ((_hd8861188635_
                                                     (##car _e8861088632_))
                                                    (_tl8861288637_
                                                     (##cdr _e8861088632_)))
                                                (let ((_expr88640_
                                                       _hd8861188635_))
                                                  (if (gx#stx-null?
                                                       _tl8861288637_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids88630_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids88630_)
                        (cons _expr88640_ '()))
                  (_E8860688618_))
              (_E8860688618_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E8860688618_)))))
                                  (_E8860688618_)))))
                      (_E8860588642_)))))
          (let* ((_e8856188571_ _stx88557_)
                 (_E8856388575_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _e8856188571_)))
                 (_E8856288599_
                  (lambda ()
                    (if (gx#stx-pair? _e8856188571_)
                        (let ((_e8856488579_ (gx#syntax-e _e8856188571_)))
                          (let ((_hd8856588582_ (##car _e8856488579_))
                                (_tl8856688584_ (##cdr _e8856488579_)))
                            (if (gx#stx-pair? _tl8856688584_)
                                (let ((_e8856788587_
                                       (gx#syntax-e _tl8856688584_)))
                                  (let ((_hd8856888590_ (##car _e8856788587_))
                                        (_tl8856988592_ (##cdr _e8856788587_)))
                                    (let* ((_hd88595_ _hd8856888590_)
                                           (_body88597_ _tl8856988592_))
                                      (if (and (gx#stx-list? _hd88595_)
                                               (gx#stx-list? _body88597_)
                                               (not (gx#stx-null?
                                                     _body88597_)))
                                          (gx#core-cons*
                                           _form88558_
                                           (gx#stx-map1
                                            _generate88560_
                                            _hd88595_)
                                           _body88597_)
                                          (_E8856388575_)))))
                                (_E8856388575_))))
                        (_E8856388575_)))))
            (_E8856288599_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_stx88649_)
        (let ((_form88651_ '%#let-values))
          (gx#macro-expand-let-values__% _stx88649_ _form88651_))))
    (define gx#macro-expand-let-values
      (lambda _g91034_
        (let ((_g91033_ (##length _g91034_)))
          (cond ((##fx= _g91033_ 1)
                 (apply (lambda (_stx88649_)
                          (gx#macro-expand-let-values__0 _stx88649_))
                        _g91034_))
                ((##fx= _g91033_ 2)
                 (apply (lambda (_stx88653_ _form88654_)
                          (gx#macro-expand-let-values__%
                           _stx88653_
                           _form88654_))
                        _g91034_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g91034_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_stx88554_)
        (gx#macro-expand-let-values__% _stx88554_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_stx88552_)
        (gx#macro-expand-let-values__% _stx88552_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_stx88443_)
        (let* ((_e8844488470_ _stx88443_)
               (_E8845688474_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _e8844488470_)))
               (_E8844688516_
                (lambda ()
                  (if (gx#stx-pair? _e8844488470_)
                      (let ((_e8845788478_ (gx#syntax-e _e8844488470_)))
                        (let ((_hd8845888481_ (##car _e8845788478_))
                              (_tl8845988483_ (##cdr _e8845788478_)))
                          (if (gx#stx-pair? _tl8845988483_)
                              (let ((_e8846088486_
                                     (gx#syntax-e _tl8845988483_)))
                                (let ((_hd8846188489_ (##car _e8846088486_))
                                      (_tl8846288491_ (##cdr _e8846088486_)))
                                  (let ((_test88494_ _hd8846188489_))
                                    (if (gx#stx-pair? _tl8846288491_)
                                        (let ((_e8846388496_
                                               (gx#syntax-e _tl8846288491_)))
                                          (let ((_hd8846488499_
                                                 (##car _e8846388496_))
                                                (_tl8846588501_
                                                 (##cdr _e8846388496_)))
                                            (let ((_K88504_ _hd8846488499_))
                                              (if (gx#stx-pair? _tl8846588501_)
                                                  (let ((_e8846688506_
                                                         (gx#syntax-e
                                                          _tl8846588501_)))
                                                    (let ((_hd8846788509_
                                                           (##car _e8846688506_))
                                                          (_tl8846888511_
                                                           (##cdr _e8846688506_)))
                                                      (let ((_E88514_
                                                             _hd8846788509_))
                                                        (if (gx#stx-null?
                                                             _tl8846888511_)
                                                            (if '#t
                                                                (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#if
                         _test88494_
                         _K88504_
                         _E88514_)
                        (_E8845688474_))
                    (_E8845688474_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E8845688474_)))))
                                        (_E8845688474_)))))
                              (_E8845688474_))))
                      (_E8845688474_))))
               (_E8844588548_
                (lambda ()
                  (if (gx#stx-pair? _e8844488470_)
                      (let ((_e8844788520_ (gx#syntax-e _e8844488470_)))
                        (let ((_hd8844888523_ (##car _e8844788520_))
                              (_tl8844988525_ (##cdr _e8844788520_)))
                          (if (gx#stx-pair? _tl8844988525_)
                              (let ((_e8845088528_
                                     (gx#syntax-e _tl8844988525_)))
                                (let ((_hd8845188531_ (##car _e8845088528_))
                                      (_tl8845288533_ (##cdr _e8845088528_)))
                                  (let ((_test88536_ _hd8845188531_))
                                    (if (gx#stx-pair? _tl8845288533_)
                                        (let ((_e8845388538_
                                               (gx#syntax-e _tl8845288533_)))
                                          (let ((_hd8845488541_
                                                 (##car _e8845388538_))
                                                (_tl8845588543_
                                                 (##cdr _e8845388538_)))
                                            (let ((_K88546_ _hd8845488541_))
                                              (if (gx#stx-null? _tl8845588543_)
                                                  (if '#t
                                                      (gx#core-list
                                                       '%#if
                                                       _test88536_
                                                       _K88546_
                                                       '#!void)
                                                      (_E8844688516_))
                                                  (_E8844688516_)))))
                                        (_E8844688516_)))))
                              (_E8844688516_))))
                      (_E8844688516_)))))
          (_E8844588548_))))
    (define gx#free-identifier=?
      (lambda (_xid88431_ _yid88432_)
        (let ((_xe88434_ (gx#resolve-identifier__0 _xid88431_))
              (_ye88435_ (gx#resolve-identifier__0 _yid88432_)))
          (if (and _xe88434_ _ye88435_)
              (let ((_$e88437_ (eq? _xe88434_ _ye88435_)))
                (if _$e88437_
                    _$e88437_
                    (if (##structure-instance-of? _xe88434_ 'gx#binding::t)
                        (if (##structure-instance-of? _ye88435_ 'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _xe88434_
                                  '1
                                  gx#binding::t
                                  '#f)
                                 (##unchecked-structure-ref
                                  _ye88435_
                                  '1
                                  gx#binding::t
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _xe88434_ _ye88435_)
                  '#f
                  (gx#stx-eq? _xid88431_ _yid88432_))))))
    (define gx#bound-identifier=?
      (lambda (_xid88415_ _yid88416_)
        (letrec ((_context88418_
                  (lambda (_e88429_)
                    (if (##structure-direct-instance-of?
                         _e88429_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref
                         _e88429_
                         '3
                         gx#syntax-quote::t
                         '#f)
                        (gx#current-expander-context))))
                 (_marks88419_
                  (lambda (_e88427_)
                    (if (symbol? _e88427_)
                        '()
                        (if (##structure-direct-instance-of?
                             _e88427_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref
                             _e88427_
                             '3
                             gx#identifier-wrap::t
                             '#f)
                            (##unchecked-structure-ref
                             _e88427_
                             '4
                             gx#syntax-quote::t
                             '#f)))))
                 (_unwrap88420_
                  (lambda (_e88425_)
                    (if (symbol? _e88425_)
                        _e88425_
                        (gx#syntax-local-unwrap _e88425_)))))
          (let ((_x88422_ (_unwrap88420_ _xid88415_))
                (_y88423_ (_unwrap88420_ _yid88416_)))
            (if (gx#stx-eq? _x88422_ _y88423_)
                (if (eq? (_context88418_ _x88422_) (_context88418_ _y88423_))
                    (equal? (_marks88419_ _x88422_) (_marks88419_ _y88423_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_stx88413_)
        (if (gx#identifier? _stx88413_)
            (gx#core-identifier=? _stx88413_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_stx88411_)
        (if (gx#identifier? _stx88411_)
            (gx#core-identifier=? _stx88411_ '...)
            '#f)))
    (define gx#user-binding-identifier
      (lambda (_x88409_)
        (if (gx#identifier? _x88409_)
            (if (not (gx#underscore? _x88409_)) _x88409_ '#f)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx88355_ _where88356_)
        (let _lp88358_ ((_rest88360_ (gx#syntax->list _stx88355_)))
          (let* ((_rest8836188369_ _rest88360_)
                 (_else8836388377_ (lambda () '#t))
                 (_K8836588387_
                  (lambda (_rest88380_ _hd88381_)
                    (if (not (gx#identifier? _hd88381_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where88356_
                         _hd88381_)
                        (if (find (lambda (_g8838288384_)
                                    (gx#bound-identifier=?
                                     _g8838288384_
                                     _hd88381_))
                                  _rest88380_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where88356_
                             _hd88381_)
                            (_lp88358_ _rest88380_))))))
            (if (##pair? _rest8836188369_)
                (let ((_hd8836688390_ (##car _rest8836188369_))
                      (_tl8836788392_ (##cdr _rest8836188369_)))
                  (let* ((_hd88395_ _hd8836688390_)
                         (_rest88397_ _tl8836788392_))
                    (_K8836588387_ _rest88397_ _hd88395_)))
                (_else8836388377_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_stx88402_)
        (let ((_where88404_ _stx88402_))
          (gx#check-duplicate-identifiers__% _stx88402_ _where88404_))))
    (define gx#check-duplicate-identifiers
      (lambda _g91036_
        (let ((_g91035_ (##length _g91036_)))
          (cond ((##fx= _g91035_ 1)
                 (apply (lambda (_stx88402_)
                          (gx#check-duplicate-identifiers__0 _stx88402_))
                        _g91036_))
                ((##fx= _g91035_ 2)
                 (apply (lambda (_stx88406_ _where88407_)
                          (gx#check-duplicate-identifiers__%
                           _stx88406_
                           _where88407_))
                        _g91036_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g91036_))))))
    (define gx#core-bind-values?
      (lambda (_stx88347_)
        (gx#stx-andmap
         (lambda (_x88349_)
           (let ((_$e88351_ (gx#identifier? _x88349_)))
             (if _$e88351_ _$e88351_ (gx#stx-false? _x88349_))))
         _stx88347_)))
    (define gx#core-bind-values!__%
      (lambda (_stx88311_ _rebind?88312_ _phi88313_ _ctx88314_)
        (gx#stx-for-each1
         (lambda (_id88316_)
           (if (gx#identifier? _id88316_)
               (gx#core-bind-runtime!__%
                _id88316_
                _rebind?88312_
                _phi88313_
                _ctx88314_)
               '#!void))
         _stx88311_)))
    (define gx#core-bind-values!__0
      (lambda (_stx88321_)
        (let* ((_rebind?88323_ '#f)
               (_phi88325_ (gx#current-expander-phi))
               (_ctx88327_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx88321_
           _rebind?88323_
           _phi88325_
           _ctx88327_))))
    (define gx#core-bind-values!__1
      (lambda (_stx88329_ _rebind?88330_)
        (let* ((_phi88332_ (gx#current-expander-phi))
               (_ctx88334_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx88329_
           _rebind?88330_
           _phi88332_
           _ctx88334_))))
    (define gx#core-bind-values!__2
      (lambda (_stx88336_ _rebind?88337_ _phi88338_)
        (let ((_ctx88340_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _stx88336_
           _rebind?88337_
           _phi88338_
           _ctx88340_))))
    (define gx#core-bind-values!
      (lambda _g91038_
        (let ((_g91037_ (##length _g91038_)))
          (cond ((##fx= _g91037_ 1)
                 (apply (lambda (_stx88321_)
                          (gx#core-bind-values!__0 _stx88321_))
                        _g91038_))
                ((##fx= _g91037_ 2)
                 (apply (lambda (_stx88329_ _rebind?88330_)
                          (gx#core-bind-values!__1 _stx88329_ _rebind?88330_))
                        _g91038_))
                ((##fx= _g91037_ 3)
                 (apply (lambda (_stx88336_ _rebind?88337_ _phi88338_)
                          (gx#core-bind-values!__2
                           _stx88336_
                           _rebind?88337_
                           _phi88338_))
                        _g91038_))
                ((##fx= _g91037_ 4)
                 (apply (lambda (_stx88342_
                                 _rebind?88343_
                                 _phi88344_
                                 _ctx88345_)
                          (gx#core-bind-values!__%
                           _stx88342_
                           _rebind?88343_
                           _phi88344_
                           _ctx88345_))
                        _g91038_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g91038_))))))
    (define gx#core-quote-bind-values
      (lambda (_stx88306_)
        (gx#stx-map1
         (lambda (_x88308_)
           (if (gx#identifier? _x88308_)
               (gx#core-quote-syntax__0 _x88308_)
               '#f))
         _stx88306_)))
    (define gx#core-runtime-ref?
      (lambda (_stx88299_)
        (if (gx#identifier? _stx88299_)
            (let* ((_bind88301_ (gx#resolve-identifier__0 _stx88299_))
                   (_$e88303_ (not _bind88301_)))
              (if _$e88303_
                  _$e88303_
                  (##structure-instance-of?
                   _bind88301_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_id88291_ _form88292_)
        (let ((_bind88294_ (gx#resolve-identifier__0 _id88291_)))
          (if (##structure-instance-of? _bind88294_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _id88291_)
              (if (not _bind88294_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _id88291_)))
                      (gx#core-quote-syntax__0 _id88291_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _form88292_
                       _id88291_))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _form88292_
                   _id88291_))))))
    (define gx#core-bind-runtime!__%
      (lambda (_id88250_ _rebind?88251_ _phi88252_ _ctx88253_)
        (let* ((_key88255_ (gx#core-identifier-key _id88250_))
               (_eid88257_
                (gx#make-binding-id__% _key88255_ '#f _phi88252_ _ctx88253_))
               (_bind88259_
                (if (##structure-instance-of? _ctx88253_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid88257_
                     _key88255_
                     _phi88252_
                     _ctx88253_)
                    (if (##structure-instance-of?
                         _ctx88253_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid88257_
                         _key88255_
                         _phi88252_)
                        (if (##structure-instance-of?
                             _ctx88253_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid88257_
                             _key88255_
                             _phi88252_)
                            (##structure
                             gx#runtime-binding::t
                             _eid88257_
                             _key88255_
                             _phi88252_))))))
          (gx#bind-identifier!__%
           _id88250_
           _bind88259_
           _rebind?88251_
           _phi88252_
           _ctx88253_))))
    (define gx#core-bind-runtime!__0
      (lambda (_id88265_)
        (let* ((_rebind?88267_ '#f)
               (_phi88269_ (gx#current-expander-phi))
               (_ctx88271_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id88265_
           _rebind?88267_
           _phi88269_
           _ctx88271_))))
    (define gx#core-bind-runtime!__1
      (lambda (_id88273_ _rebind?88274_)
        (let* ((_phi88276_ (gx#current-expander-phi))
               (_ctx88278_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id88273_
           _rebind?88274_
           _phi88276_
           _ctx88278_))))
    (define gx#core-bind-runtime!__2
      (lambda (_id88280_ _rebind?88281_ _phi88282_)
        (let ((_ctx88284_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _id88280_
           _rebind?88281_
           _phi88282_
           _ctx88284_))))
    (define gx#core-bind-runtime!
      (lambda _g91040_
        (let ((_g91039_ (##length _g91040_)))
          (cond ((##fx= _g91039_ 1)
                 (apply (lambda (_id88265_)
                          (gx#core-bind-runtime!__0 _id88265_))
                        _g91040_))
                ((##fx= _g91039_ 2)
                 (apply (lambda (_id88273_ _rebind?88274_)
                          (gx#core-bind-runtime!__1 _id88273_ _rebind?88274_))
                        _g91040_))
                ((##fx= _g91039_ 3)
                 (apply (lambda (_id88280_ _rebind?88281_ _phi88282_)
                          (gx#core-bind-runtime!__2
                           _id88280_
                           _rebind?88281_
                           _phi88282_))
                        _g91040_))
                ((##fx= _g91039_ 4)
                 (apply (lambda (_id88286_
                                 _rebind?88287_
                                 _phi88288_
                                 _ctx88289_)
                          (gx#core-bind-runtime!__%
                           _id88286_
                           _rebind?88287_
                           _phi88288_
                           _ctx88289_))
                        _g91040_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g91040_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id88205_ _eid88206_ _rebind?88207_ _phi88208_ _ctx88209_)
        (let* ((_key88211_ (gx#core-identifier-key _id88205_))
               (_bind88213_
                (if (##structure-instance-of? _ctx88209_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid88206_
                     _key88211_
                     _phi88208_
                     _ctx88209_)
                    (if (##structure-instance-of?
                         _ctx88209_
                         'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid88206_
                         _key88211_
                         _phi88208_)
                        (##structure
                         gx#runtime-binding::t
                         _eid88206_
                         _key88211_
                         _phi88208_)))))
          (gx#bind-identifier!__%
           _id88205_
           _bind88213_
           _rebind?88207_
           _phi88208_
           _ctx88209_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_id88219_ _eid88220_)
        (let* ((_rebind?88222_ '#f)
               (_phi88224_ (gx#current-expander-phi))
               (_ctx88226_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id88219_
           _eid88220_
           _rebind?88222_
           _phi88224_
           _ctx88226_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_id88228_ _eid88229_ _rebind?88230_)
        (let* ((_phi88232_ (gx#current-expander-phi))
               (_ctx88234_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id88228_
           _eid88229_
           _rebind?88230_
           _phi88232_
           _ctx88234_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_id88236_ _eid88237_ _rebind?88238_ _phi88239_)
        (let ((_ctx88241_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _id88236_
           _eid88237_
           _rebind?88238_
           _phi88239_
           _ctx88241_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g91042_
        (let ((_g91041_ (##length _g91042_)))
          (cond ((##fx= _g91041_ 2)
                 (apply (lambda (_id88219_ _eid88220_)
                          (gx#core-bind-runtime-reference!__0
                           _id88219_
                           _eid88220_))
                        _g91042_))
                ((##fx= _g91041_ 3)
                 (apply (lambda (_id88228_ _eid88229_ _rebind?88230_)
                          (gx#core-bind-runtime-reference!__1
                           _id88228_
                           _eid88229_
                           _rebind?88230_))
                        _g91042_))
                ((##fx= _g91041_ 4)
                 (apply (lambda (_id88236_
                                 _eid88237_
                                 _rebind?88238_
                                 _phi88239_)
                          (gx#core-bind-runtime-reference!__2
                           _id88236_
                           _eid88237_
                           _rebind?88238_
                           _phi88239_))
                        _g91042_))
                ((##fx= _g91041_ 5)
                 (apply (lambda (_id88243_
                                 _eid88244_
                                 _rebind?88245_
                                 _phi88246_
                                 _ctx88247_)
                          (gx#core-bind-runtime-reference!__%
                           _id88243_
                           _eid88244_
                           _rebind?88245_
                           _phi88246_
                           _ctx88247_))
                        _g91042_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g91042_))))))
    (define gx#core-bind-extern!__%
      (lambda (_id88165_ _eid88166_ _rebind?88167_ _phi88168_ _ctx88169_)
        (gx#bind-identifier!__%
         _id88165_
         (##structure
          gx#extern-binding::t
          _eid88166_
          (gx#core-identifier-key _id88165_)
          _phi88168_)
         _rebind?88167_
         _phi88168_
         _ctx88169_)))
    (define gx#core-bind-extern!__0
      (lambda (_id88174_ _eid88175_)
        (let* ((_rebind?88177_ '#f)
               (_phi88179_ (gx#current-expander-phi))
               (_ctx88181_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id88174_
           _eid88175_
           _rebind?88177_
           _phi88179_
           _ctx88181_))))
    (define gx#core-bind-extern!__1
      (lambda (_id88183_ _eid88184_ _rebind?88185_)
        (let* ((_phi88187_ (gx#current-expander-phi))
               (_ctx88189_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id88183_
           _eid88184_
           _rebind?88185_
           _phi88187_
           _ctx88189_))))
    (define gx#core-bind-extern!__2
      (lambda (_id88191_ _eid88192_ _rebind?88193_ _phi88194_)
        (let ((_ctx88196_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _id88191_
           _eid88192_
           _rebind?88193_
           _phi88194_
           _ctx88196_))))
    (define gx#core-bind-extern!
      (lambda _g91044_
        (let ((_g91043_ (##length _g91044_)))
          (cond ((##fx= _g91043_ 2)
                 (apply (lambda (_id88174_ _eid88175_)
                          (gx#core-bind-extern!__0 _id88174_ _eid88175_))
                        _g91044_))
                ((##fx= _g91043_ 3)
                 (apply (lambda (_id88183_ _eid88184_ _rebind?88185_)
                          (gx#core-bind-extern!__1
                           _id88183_
                           _eid88184_
                           _rebind?88185_))
                        _g91044_))
                ((##fx= _g91043_ 4)
                 (apply (lambda (_id88191_
                                 _eid88192_
                                 _rebind?88193_
                                 _phi88194_)
                          (gx#core-bind-extern!__2
                           _id88191_
                           _eid88192_
                           _rebind?88193_
                           _phi88194_))
                        _g91044_))
                ((##fx= _g91043_ 5)
                 (apply (lambda (_id88198_
                                 _eid88199_
                                 _rebind?88200_
                                 _phi88201_
                                 _ctx88202_)
                          (gx#core-bind-extern!__%
                           _id88198_
                           _eid88199_
                           _rebind?88200_
                           _phi88201_
                           _ctx88202_))
                        _g91044_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g91044_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_id88119_ _e88120_ _rebind?88121_ _phi88122_ _ctx88123_)
        (gx#bind-identifier!__%
         _id88119_
         (let ((_key88128_ (gx#core-identifier-key _id88119_))
               (_e88129_
                (if (or (##structure-instance-of? _e88120_ 'gx#expander::t)
                        (##structure-instance-of?
                         _e88120_
                         'gx#expander-context::t))
                    _e88120_
                    (##structure
                     gx#user-expander::t
                     _e88120_
                     _ctx88123_
                     _phi88122_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key88128_ '#t _phi88122_ _ctx88123_)
            _key88128_
            _phi88122_
            _e88129_))
         _rebind?88121_
         _phi88122_
         _ctx88123_)))
    (define gx#core-bind-syntax!__0
      (lambda (_id88134_ _e88135_)
        (let* ((_rebind?88137_ '#f)
               (_phi88139_ (gx#current-expander-phi))
               (_ctx88141_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id88134_
           _e88135_
           _rebind?88137_
           _phi88139_
           _ctx88141_))))
    (define gx#core-bind-syntax!__1
      (lambda (_id88143_ _e88144_ _rebind?88145_)
        (let* ((_phi88147_ (gx#current-expander-phi))
               (_ctx88149_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id88143_
           _e88144_
           _rebind?88145_
           _phi88147_
           _ctx88149_))))
    (define gx#core-bind-syntax!__2
      (lambda (_id88151_ _e88152_ _rebind?88153_ _phi88154_)
        (let ((_ctx88156_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _id88151_
           _e88152_
           _rebind?88153_
           _phi88154_
           _ctx88156_))))
    (define gx#core-bind-syntax!
      (lambda _g91046_
        (let ((_g91045_ (##length _g91046_)))
          (cond ((##fx= _g91045_ 2)
                 (apply (lambda (_id88134_ _e88135_)
                          (gx#core-bind-syntax!__0 _id88134_ _e88135_))
                        _g91046_))
                ((##fx= _g91045_ 3)
                 (apply (lambda (_id88143_ _e88144_ _rebind?88145_)
                          (gx#core-bind-syntax!__1
                           _id88143_
                           _e88144_
                           _rebind?88145_))
                        _g91046_))
                ((##fx= _g91045_ 4)
                 (apply (lambda (_id88151_ _e88152_ _rebind?88153_ _phi88154_)
                          (gx#core-bind-syntax!__2
                           _id88151_
                           _e88152_
                           _rebind?88153_
                           _phi88154_))
                        _g91046_))
                ((##fx= _g91045_ 5)
                 (apply (lambda (_id88158_
                                 _e88159_
                                 _rebind?88160_
                                 _phi88161_
                                 _ctx88162_)
                          (gx#core-bind-syntax!__%
                           _id88158_
                           _e88159_
                           _rebind?88160_
                           _phi88161_
                           _ctx88162_))
                        _g91046_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g91046_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_id88102_ _e88103_ _rebind?88104_)
        (gx#core-bind-syntax!__%
         _id88102_
         _e88103_
         _rebind?88104_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_id88109_ _e88110_)
        (let ((_rebind?88112_ '#f))
          (gx#core-bind-root-syntax!__% _id88109_ _e88110_ _rebind?88112_))))
    (define gx#core-bind-root-syntax!
      (lambda _g91048_
        (let ((_g91047_ (##length _g91048_)))
          (cond ((##fx= _g91047_ 2)
                 (apply (lambda (_id88109_ _e88110_)
                          (gx#core-bind-root-syntax!__0 _id88109_ _e88110_))
                        _g91048_))
                ((##fx= _g91047_ 3)
                 (apply (lambda (_id88114_ _e88115_ _rebind?88116_)
                          (gx#core-bind-root-syntax!__%
                           _id88114_
                           _e88115_
                           _rebind?88116_))
                        _g91048_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g91048_))))))
    (define gx#core-bind-alias!__%
      (lambda (_id88060_ _alias-id88061_ _rebind?88062_ _phi88063_ _ctx88064_)
        (gx#bind-identifier!__%
         _id88060_
         (let ((_key88066_ (gx#core-identifier-key _id88060_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key88066_ '#t _phi88063_ _ctx88064_)
            _key88066_
            _phi88063_
            _alias-id88061_))
         _rebind?88062_
         _phi88063_
         _ctx88064_)))
    (define gx#core-bind-alias!__0
      (lambda (_id88071_ _alias-id88072_)
        (let* ((_rebind?88074_ '#f)
               (_phi88076_ (gx#current-expander-phi))
               (_ctx88078_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id88071_
           _alias-id88072_
           _rebind?88074_
           _phi88076_
           _ctx88078_))))
    (define gx#core-bind-alias!__1
      (lambda (_id88080_ _alias-id88081_ _rebind?88082_)
        (let* ((_phi88084_ (gx#current-expander-phi))
               (_ctx88086_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id88080_
           _alias-id88081_
           _rebind?88082_
           _phi88084_
           _ctx88086_))))
    (define gx#core-bind-alias!__2
      (lambda (_id88088_ _alias-id88089_ _rebind?88090_ _phi88091_)
        (let ((_ctx88093_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _id88088_
           _alias-id88089_
           _rebind?88090_
           _phi88091_
           _ctx88093_))))
    (define gx#core-bind-alias!
      (lambda _g91050_
        (let ((_g91049_ (##length _g91050_)))
          (cond ((##fx= _g91049_ 2)
                 (apply (lambda (_id88071_ _alias-id88072_)
                          (gx#core-bind-alias!__0 _id88071_ _alias-id88072_))
                        _g91050_))
                ((##fx= _g91049_ 3)
                 (apply (lambda (_id88080_ _alias-id88081_ _rebind?88082_)
                          (gx#core-bind-alias!__1
                           _id88080_
                           _alias-id88081_
                           _rebind?88082_))
                        _g91050_))
                ((##fx= _g91049_ 4)
                 (apply (lambda (_id88088_
                                 _alias-id88089_
                                 _rebind?88090_
                                 _phi88091_)
                          (gx#core-bind-alias!__2
                           _id88088_
                           _alias-id88089_
                           _rebind?88090_
                           _phi88091_))
                        _g91050_))
                ((##fx= _g91049_ 5)
                 (apply (lambda (_id88095_
                                 _alias-id88096_
                                 _rebind?88097_
                                 _phi88098_
                                 _ctx88099_)
                          (gx#core-bind-alias!__%
                           _id88095_
                           _alias-id88096_
                           _rebind?88097_
                           _phi88098_
                           _ctx88099_))
                        _g91050_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g91050_))))))
    (define gx#make-binding-id__%
      (lambda (_key88017_ _syntax?88018_ _phi88019_ _ctx88020_)
        (if (uninterned-symbol? _key88017_)
            (gensym 'L)
            (if (pair? _key88017_)
                (gensym (car _key88017_))
                (if (##structure-instance-of? _ctx88020_ 'gx#top-context::t)
                    (let ((_ns88022_
                           (gx#core-context-namespace__% _ctx88020_)))
                      (if (and (fxzero? _phi88019_) (not _syntax?88018_))
                          (if _ns88022_
                              (make-symbol__1 _ns88022_ '"#" _key88017_)
                              _key88017_)
                          (if _syntax?88018_
                              (make-symbol__1
                               (let ((_$e88024_ _ns88022_))
                                 (if _$e88024_ _$e88024_ '""))
                               '"[:"
                               (number->string _phi88019_)
                               '":]#"
                               _key88017_)
                              (make-symbol__1
                               (let ((_$e88027_ _ns88022_))
                                 (if _$e88027_ _$e88027_ '""))
                               '"["
                               (number->string _phi88019_)
                               '"]#"
                               _key88017_))))
                    (gensym _key88017_))))))
    (define gx#make-binding-id__0
      (lambda (_key88033_)
        (let* ((_syntax?88035_ '#f)
               (_phi88037_ (gx#current-expander-phi))
               (_ctx88039_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key88033_
           _syntax?88035_
           _phi88037_
           _ctx88039_))))
    (define gx#make-binding-id__1
      (lambda (_key88041_ _syntax?88042_)
        (let* ((_phi88044_ (gx#current-expander-phi))
               (_ctx88046_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key88041_
           _syntax?88042_
           _phi88044_
           _ctx88046_))))
    (define gx#make-binding-id__2
      (lambda (_key88048_ _syntax?88049_ _phi88050_)
        (let ((_ctx88052_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _key88048_
           _syntax?88049_
           _phi88050_
           _ctx88052_))))
    (define gx#make-binding-id
      (lambda _g91052_
        (let ((_g91051_ (##length _g91052_)))
          (cond ((##fx= _g91051_ 1)
                 (apply (lambda (_key88033_)
                          (gx#make-binding-id__0 _key88033_))
                        _g91052_))
                ((##fx= _g91051_ 2)
                 (apply (lambda (_key88041_ _syntax?88042_)
                          (gx#make-binding-id__1 _key88041_ _syntax?88042_))
                        _g91052_))
                ((##fx= _g91051_ 3)
                 (apply (lambda (_key88048_ _syntax?88049_ _phi88050_)
                          (gx#make-binding-id__2
                           _key88048_
                           _syntax?88049_
                           _phi88050_))
                        _g91052_))
                ((##fx= _g91051_ 4)
                 (apply (lambda (_key88054_
                                 _syntax?88055_
                                 _phi88056_
                                 _ctx88057_)
                          (gx#make-binding-id__%
                           _key88054_
                           _syntax?88055_
                           _phi88056_
                           _ctx88057_))
                        _g91052_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g91052_))))))))
