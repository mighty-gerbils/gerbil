(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#core-expand-begin%
    (lambda (_stx9080_)
      (let ((_expand-special9082_
             (lambda (_hd9084_ _K9085_ _rest9086_ _r9087_)
               (_K9085_ _rest9086_
                        (cons (gx#core-expand-top _hd9084_) _r9087_)))))
        (gx#core-expand-block__0 _stx9080_ _expand-special9082_))))
  (define gx#core-expand-begin-syntax%
    (lambda (_stx8833_)
      (let ((_expand-special8835_
             (lambda (_hd8955_ _K8956_ _rest8957_ _r8958_)
               (let ((_K8962_ (lambda (_e8960_)
                                (_K8956_ _rest8957_ (cons _e8960_ _r8958_)))))
                 (let ((_e89638992_ _hd8955_))
                   (let ((_E89878996_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e89638992_))))
                     (let ((_E89839008_
                            (lambda ()
                              (if (gx#stx-pair? _e89638992_)
                                  (let ((_e89889000_
                                         (gx#syntax-e _e89638992_)))
                                    (let ((_hd89899003_ (##car _e89889000_))
                                          (_tl89909005_ (##cdr _e89889000_)))
                                      (if (if (gx#identifier? _hd89899003_)
                                              (gx#core-identifier=?
                                               _hd89899003_
                                               '%#define-runtime)
                                              '#f)
                                          (if '#t
                                              (_K8962_ (gx#core-expand-define-runtime%
                                                        _hd8955_))
                                              (_E89878996_))
                                          (_E89878996_))))
                                  (_E89878996_)))))
                       (let ((_E89799020_
                              (lambda ()
                                (if (gx#stx-pair? _e89638992_)
                                    (let ((_e89849012_
                                           (gx#syntax-e _e89638992_)))
                                      (let ((_hd89859015_ (##car _e89849012_))
                                            (_tl89869017_ (##cdr _e89849012_)))
                                        (if (if (gx#identifier? _hd89859015_)
                                                (gx#core-identifier=?
                                                 _hd89859015_
                                                 '%#define-alias)
                                                '#f)
                                            (if '#t
                                                (_K8962_ (gx#core-expand-define-alias%
                                                          _hd8955_))
                                                (_E89839008_))
                                            (_E89839008_))))
                                    (_E89839008_)))))
                         (let ((_E89699032_
                                (lambda ()
                                  (if (gx#stx-pair? _e89638992_)
                                      (let ((_e89809024_
                                             (gx#syntax-e _e89638992_)))
                                        (let ((_hd89819027_
                                               (##car _e89809024_))
                                              (_tl89829029_
                                               (##cdr _e89809024_)))
                                          (if (if (gx#identifier? _hd89819027_)
                                                  (gx#core-identifier=?
                                                   _hd89819027_
                                                   '%#define-syntax)
                                                  '#f)
                                              (if '#t
                                                  (_K8962_ (gx#core-expand-define-syntax%
                                                            _hd8955_))
                                                  (_E89799020_))
                                              (_E89799020_))))
                                      (_E89799020_)))))
                           (let ((_E89659064_
                                  (lambda ()
                                    (if (gx#stx-pair? _e89638992_)
                                        (let ((_e89709036_
                                               (gx#syntax-e _e89638992_)))
                                          (let ((_hd89719039_
                                                 (##car _e89709036_))
                                                (_tl89729041_
                                                 (##cdr _e89709036_)))
                                            (if (if (gx#identifier?
                                                     _hd89719039_)
                                                    (gx#core-identifier=?
                                                     _hd89719039_
                                                     '%#define-values)
                                                    '#f)
                                                (if (gx#stx-pair? _tl89729041_)
                                                    (let ((_e89739044_
                                                           (gx#syntax-e
                                                            _tl89729041_)))
                                                      (let ((_hd89749047_
                                                             (##car _e89739044_))
                                                            (_tl89759049_
                                                             (##cdr _e89739044_)))
                                                        (let ((_hd-bind9052_
                                                               _hd89749047_))
                                                          (if (gx#stx-pair?
                                                               _tl89759049_)
                                                              (let ((_e89769054_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl89759049_)))
                        (let ((_hd89779057_ (##car _e89769054_))
                              (_tl89789059_ (##cdr _e89769054_)))
                          (let ((_expr9062_ _hd89779057_))
                            (if (gx#stx-null? _tl89789059_)
                                (if (gx#core-bind-values? _hd-bind9052_)
                                    (begin
                                      (gx#core-bind-values!__0 _hd-bind9052_)
                                      (_K8962_ _hd8955_))
                                    (_E89699032_))
                                (_E89699032_)))))
                      (_E89699032_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E89699032_))
                                                (_E89699032_))))
                                        (_E89699032_)))))
                             (let ((_E89649076_
                                    (lambda ()
                                      (if (gx#stx-pair? _e89638992_)
                                          (let ((_e89669068_
                                                 (gx#syntax-e _e89638992_)))
                                            (let ((_hd89679071_
                                                   (##car _e89669068_))
                                                  (_tl89689073_
                                                   (##cdr _e89669068_)))
                                              (if (if (gx#identifier?
                                                       _hd89679071_)
                                                      (gx#core-identifier=?
                                                       _hd89679071_
                                                       '%#begin-syntax)
                                                      '#f)
                                                  (if '#t
                                                      (_K8962_ (gx#core-expand-begin-syntax%
                                                                _hd8955_))
                                                      (_E89659064_))
                                                  (_E89659064_))))
                                          (_E89659064_)))))
                               (let () (_E89649076_)))))))))))))
        (let ((_eval-body8836_
               (lambda (_rbody8844_)
                 ((letrec ((_lp8846_
                            (lambda (_rest8848_ _body8849_ _ebody8850_)
                              (let ((_rest88518859_ _rest8848_))
                                (let ((_E88548863_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _rest88518859_))))
                                  (let ((_else88538867_
                                         (lambda ()
                                           (values _body8849_
                                                   (gx#eval-syntax*
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#begin
                                                      _ebody8850_)
                                                     (gx#stx-source
                                                      _stx8833_)))))))
                                    (let ((_K88558943_
                                           (lambda (_rest8870_ _hd8871_)
                                             (let ((_e88728889_ _hd8871_))
                                               (let ((_E88848893_
                                                      (lambda ()
                                                        (_lp8846_
                                                         _rest8870_
                                                         (cons _hd8871_
                                                               _body8849_)
                                                         (cons _hd8871_
                                                               _ebody8850_)))))
                                                 (let ((_E88748905_
                                                        (lambda ()
                                                          (if (gx#stx-pair?
                                                               _e88728889_)
                                                              (let ((_e88858897_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _e88728889_)))
                        (let ((_hd88868900_ (##car _e88858897_))
                              (_tl88878902_ (##cdr _e88858897_)))
                          (if (if (gx#identifier? _hd88868900_)
                                  (gx#core-identifier=?
                                   _hd88868900_
                                   '%#begin-syntax)
                                  '#f)
                              (if '#t
                                  (_lp8846_
                                   _rest8870_
                                   (cons _hd8871_ _body8849_)
                                   _ebody8850_)
                                  (_E88848893_))
                              (_E88848893_))))
                      (_E88848893_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_E88738939_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e88728889_)
                        (let ((_e88758909_ (gx#syntax-e _e88728889_)))
                          (let ((_hd88768912_ (##car _e88758909_))
                                (_tl88778914_ (##cdr _e88758909_)))
                            (if (if (gx#identifier? _hd88768912_)
                                    (gx#core-identifier=?
                                     _hd88768912_
                                     '%#define-values)
                                    '#f)
                                (if (gx#stx-pair? _tl88778914_)
                                    (let ((_e88788917_
                                           (gx#syntax-e _tl88778914_)))
                                      (let ((_hd88798920_ (##car _e88788917_))
                                            (_tl88808922_ (##cdr _e88788917_)))
                                        (let ((_hd-bind8925_ _hd88798920_))
                                          (if (gx#stx-pair? _tl88808922_)
                                              (let ((_e88818927_
                                                     (gx#syntax-e
                                                      _tl88808922_)))
                                                (let ((_hd88828930_
                                                       (##car _e88818927_))
                                                      (_tl88838932_
                                                       (##cdr _e88818927_)))
                                                  (let ((_expr8935_
                                                         _hd88828930_))
                                                    (if (gx#stx-null?
                                                         _tl88838932_)
                                                        (if '#t
                                                            (let ((_ehd8937_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#core-quote-syntax__1
                            (cons (gx#core-quote-syntax__0 '%#define-values)
                                  (cons (gx#core-quote-bind-values
                                         _hd-bind8925_)
                                        (cons (gx#core-expand-expression
                                               _expr8935_)
                                              '())))
                            (gx#stx-source _hd8871_))))
                      (_lp8846_
                       _rest8870_
                       (cons _ehd8937_ _body8849_)
                       (cons _ehd8937_ _ebody8850_)))
                    (_E88748905_))
                (_E88748905_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E88748905_)))))
                                    (_E88748905_))
                                (_E88748905_))))
                        (_E88748905_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (_E88738939_)))))))))
                                      (if (##pair? _rest88518859_)
                                          (let ((_hd88568946_
                                                 (##car _rest88518859_))
                                                (_tl88578948_
                                                 (##cdr _rest88518859_)))
                                            (let ((_hd8951_ _hd88568946_))
                                              (let ((_rest8953_ _tl88578948_))
                                                (_K88558943_
                                                 _rest8953_
                                                 _hd8951_))))
                                          (_else88538867_)))))))))
                    _lp8846_)
                  _rbody8844_
                  '()
                  '()))))
          (call-with-parameters
           (lambda ()
             (let ((_rbody8839_
                    (gx#core-expand-block__1
                     _stx8833_
                     _expand-special8835_
                     '#f)))
               (let ((_g9094_ (_eval-body8836_ _rbody8839_)))
                 (begin
                   (let ((_g9095_ (values-count _g9094_)))
                     (if (not (fx= _g9095_ 2))
                         (error "Context expects 2 values" _g9095_)))
                   (let ((_expanded-body8841_ (values-ref _g9094_ 0))
                         (_value8842_ (values-ref _g9094_ 1)))
                     (gx#core-quote-syntax__1
                      (if (##structure-instance-of?
                           (gx#current-expander-context)
                           'gx#module-context::t)
                          (gx#core-cons '%#begin-syntax _expanded-body8841_)
                          (cons (gx#core-quote-syntax__0 '%#quote)
                                (cons _value8842_ '())))
                      (gx#stx-source _stx8833_)))))))
           gx#current-expander-phi
           (fx+ (gx#current-expander-phi) '1))))))
  (define gx#core-expand-begin-foreign%
    (lambda (_stx8803_)
      (let ((_e88048811_ _stx8803_))
        (let ((_E88068815_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e88048811_))))
          (let ((_E88058829_
                 (lambda ()
                   (if (gx#stx-pair? _e88048811_)
                       (let ((_e88078819_ (gx#syntax-e _e88048811_)))
                         (let ((_hd88088822_ (##car _e88078819_))
                               (_tl88098824_ (##cdr _e88078819_)))
                           (let ((_body8827_ _tl88098824_))
                             (if (gx#stx-list? _body8827_)
                                 (gx#core-quote-syntax__1
                                  (gx#core-cons '%#begin-foreign _body8827_)
                                  (gx#stx-source _stx8803_))
                                 (_E88068815_)))))
                       (_E88068815_)))))
            (let () (_E88058829_)))))))
  (define gx#core-expand-begin-module%
    (lambda (_stx8801_)
      (gx#raise-syntax-error '#f '"Illegal expansion" _stx8801_)))
  (define gx#core-expand-begin-annotation%
    (lambda (_stx8789_)
      (let ((_e87908793_ _stx8789_))
        (let ((_E87918797_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e87908793_))))
          (let () (_E87918797_))))))
  (define gx#core-expand-local-block
    (lambda (_stx8513_ _body8514_)
      (let ((_expand-internal-special8518_
             (lambda (_hd8675_ _K8676_ _rest8677_ _r8678_)
               (let ((_e86798704_ _hd8675_))
                 (let ((_E86998708_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e86798704_))))
                   (let ((_E86958720_
                          (lambda ()
                            (if (gx#stx-pair? _e86798704_)
                                (let ((_e87008712_ (gx#syntax-e _e86798704_)))
                                  (let ((_hd87018715_ (##car _e87008712_))
                                        (_tl87028717_ (##cdr _e87008712_)))
                                    (if (if (gx#identifier? _hd87018715_)
                                            (gx#core-identifier=?
                                             _hd87018715_
                                             '%#declare)
                                            '#f)
                                        (if '#t
                                            (_K8676_ _rest8677_
                                                     (cons (gx#core-expand-declare%
                                                            _hd8675_)
                                                           _r8678_))
                                            (_E86998708_))
                                        (_E86998708_))))
                                (_E86998708_)))))
                     (let ((_E86918732_
                            (lambda ()
                              (if (gx#stx-pair? _e86798704_)
                                  (let ((_e86968724_
                                         (gx#syntax-e _e86798704_)))
                                    (let ((_hd86978727_ (##car _e86968724_))
                                          (_tl86988729_ (##cdr _e86968724_)))
                                      (if (if (gx#identifier? _hd86978727_)
                                              (gx#core-identifier=?
                                               _hd86978727_
                                               '%#define-alias)
                                              '#f)
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd8675_)
                                                (_K8676_ _rest8677_ _r8678_))
                                              (_E86958720_))
                                          (_E86958720_))))
                                  (_E86958720_)))))
                       (let ((_E86818744_
                              (lambda ()
                                (if (gx#stx-pair? _e86798704_)
                                    (let ((_e86928736_
                                           (gx#syntax-e _e86798704_)))
                                      (let ((_hd86938739_ (##car _e86928736_))
                                            (_tl86948741_ (##cdr _e86928736_)))
                                        (if (if (gx#identifier? _hd86938739_)
                                                (gx#core-identifier=?
                                                 _hd86938739_
                                                 '%#define-syntax)
                                                '#f)
                                            (if '#t
                                                (begin
                                                  (gx#core-expand-define-syntax%
                                                   _hd8675_)
                                                  (_K8676_ _rest8677_ _r8678_))
                                                (_E86918732_))
                                            (_E86918732_))))
                                    (_E86918732_)))))
                         (let ((_E86808776_
                                (lambda ()
                                  (if (gx#stx-pair? _e86798704_)
                                      (let ((_e86828748_
                                             (gx#syntax-e _e86798704_)))
                                        (let ((_hd86838751_
                                               (##car _e86828748_))
                                              (_tl86848753_
                                               (##cdr _e86828748_)))
                                          (if (if (gx#identifier? _hd86838751_)
                                                  (gx#core-identifier=?
                                                   _hd86838751_
                                                   '%#define-values)
                                                  '#f)
                                              (if (gx#stx-pair? _tl86848753_)
                                                  (let ((_e86858756_
                                                         (gx#syntax-e
                                                          _tl86848753_)))
                                                    (let ((_hd86868759_
                                                           (##car _e86858756_))
                                                          (_tl86878761_
                                                           (##cdr _e86858756_)))
                                                      (let ((_hd-bind8764_
                                                             _hd86868759_))
                                                        (if (gx#stx-pair?
                                                             _tl86878761_)
                                                            (let ((_e86888766_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl86878761_)))
                      (let ((_hd86898769_ (##car _e86888766_))
                            (_tl86908771_ (##cdr _e86888766_)))
                        (let ((_expr8774_ _hd86898769_))
                          (if (gx#stx-null? _tl86908771_)
                              (if (gx#core-bind-values? _hd-bind8764_)
                                  (begin
                                    (gx#core-bind-values!__0 _hd-bind8764_)
                                    (_K8676_ _rest8677_
                                             (cons _hd8675_ _r8678_)))
                                  (_E86818744_))
                              (_E86818744_)))))
                    (_E86818744_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E86818744_))
                                              (_E86818744_))))
                                      (_E86818744_)))))
                           (let () (_E86808776_)))))))))))
        (let ((_wrap-internal8519_
               (lambda (_rbody8521_)
                 ((letrec ((_lp8523_
                            (lambda (_rest8525_
                                     _decls8526_
                                     _bind8527_
                                     _body8528_)
                              (let ((_e85298536_ _rest8525_))
                                (let ((_E85318585_
                                       (lambda ()
                                         (let ((_body8580_
                                                (let ((_body85398549_
                                                       _body8528_))
                                                  (let ((_E85438553_
                                                         (lambda ()
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _body85398549_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_else85428557_
                                                           (lambda ()
                                                             (gx#core-quote-syntax__1
                                                              (gx#core-cons
                                                               '%#begin
                                                               _body8528_)
                                                              (gx#stx-source
                                                               _stx8513_)))))
                                                      (let ((_try-match85418573_
                                                             (lambda ()
                                                               (let ((_K85448563_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_expr8561_) _expr8561_)))
                         (if (##pair? _body85398549_)
                             (let ((_hd85458566_ (##car _body85398549_))
                                   (_tl85468568_ (##cdr _body85398549_)))
                               (let ((_expr8571_ _hd85458566_))
                                 (if (##null? _tl85468568_)
                                     (_K85448563_ _expr8571_)
                                     (_else85428557_))))
                             (_else85428557_))))))
                (let ((_K85478577_
                       (lambda ()
                         (gx#raise-syntax-error '#f '"Bad syntax" _stx8513_))))
                  (if (##null? _body85398549_)
                      (_K85478577_)
                      (_try-match85418573_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_body8582_
                                                  (if (null? _bind8527_)
                                                      _body8580_
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#letrec*-values)
                                                             (cons _bind8527_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _body8580_ '())))
               (gx#stx-source _stx8513_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ()
                                               (if (null? _decls8526_)
                                                   _body8582_
                                                   (gx#core-quote-syntax__1
                                                    (cons (gx#core-quote-syntax__0
                                                           '%#begin-annotation)
                                                          (cons _decls8526_
                                                                (cons _body8582_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gx#stx-source
                                                     _stx8513_)))))))))
                                  (let ((_E85308671_
                                         (lambda ()
                                           (if (gx#stx-pair? _e85298536_)
                                               (let ((_e85328589_
                                                      (gx#syntax-e
                                                       _e85298536_)))
                                                 (let ((_hd85338592_
                                                        (##car _e85328589_))
                                                       (_tl85348594_
                                                        (##cdr _e85328589_)))
                                                   (let ((_hd8597_
                                                          _hd85338592_))
                                                     (let ((_rest8599_
                                                            _tl85348594_))
                                                       (if '#t
                                                           (let ((_e86008617_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd8597_))
                     (let ((_E86128621_
                            (lambda ()
                              (if (null? _bind8527_)
                                  (_lp8523_
                                   _rest8599_
                                   _decls8526_
                                   _bind8527_
                                   (cons _hd8597_ _body8528_))
                                  (_lp8523_
                                   _rest8599_
                                   _decls8526_
                                   (cons (cons '#f (cons _hd8597_ '()))
                                         _bind8527_)
                                   _body8528_)))))
                       (let ((_E86028635_
                              (lambda ()
                                (if (gx#stx-pair? _e86008617_)
                                    (let ((_e86138625_
                                           (gx#syntax-e _e86008617_)))
                                      (let ((_hd86148628_ (##car _e86138625_))
                                            (_tl86158630_ (##cdr _e86138625_)))
                                        (if (if (gx#identifier? _hd86148628_)
                                                (gx#core-identifier=?
                                                 _hd86148628_
                                                 '%#declare)
                                                '#f)
                                            (let ((_xdecls8633_ _tl86158630_))
                                              (if '#t
                                                  (_lp8523_
                                                   _rest8599_
                                                   (gx#stx-foldr
                                                    cons
                                                    _decls8526_
                                                    _xdecls8633_)
                                                   _bind8527_
                                                   _body8528_)
                                                  (_E86128621_)))
                                            (_E86128621_))))
                                    (_E86128621_)))))
                         (let ((_E86018667_
                                (lambda ()
                                  (if (gx#stx-pair? _e86008617_)
                                      (let ((_e86038639_
                                             (gx#syntax-e _e86008617_)))
                                        (let ((_hd86048642_
                                               (##car _e86038639_))
                                              (_tl86058644_
                                               (##cdr _e86038639_)))
                                          (if (if (gx#identifier? _hd86048642_)
                                                  (gx#core-identifier=?
                                                   _hd86048642_
                                                   '%#define-values)
                                                  '#f)
                                              (if (gx#stx-pair? _tl86058644_)
                                                  (let ((_e86068647_
                                                         (gx#syntax-e
                                                          _tl86058644_)))
                                                    (let ((_hd86078650_
                                                           (##car _e86068647_))
                                                          (_tl86088652_
                                                           (##cdr _e86068647_)))
                                                      (let ((_hd-bind8655_
                                                             _hd86078650_))
                                                        (if (gx#stx-pair?
                                                             _tl86088652_)
                                                            (let ((_e86098657_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl86088652_)))
                      (let ((_hd86108660_ (##car _e86098657_))
                            (_tl86118662_ (##cdr _e86098657_)))
                        (let ((_expr8665_ _hd86108660_))
                          (if (gx#stx-null? _tl86118662_)
                              (if '#t
                                  (_lp8523_
                                   _rest8599_
                                   _decls8526_
                                   (cons (cons (gx#core-quote-bind-values
                                                _hd-bind8655_)
                                               (cons (gx#core-expand-expression
                                                      _expr8665_)
                                                     '()))
                                         _bind8527_)
                                   _body8528_)
                                  (_E86028635_))
                              (_E86028635_)))))
                    (_E86028635_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E86028635_))
                                              (_E86028635_))))
                                      (_E86028635_)))))
                           (let () (_E86018667_))))))
                   (_E85318585_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E85318585_)))))
                                    (let () (_E85308671_))))))))
                    _lp8523_)
                  _rbody8521_
                  '()
                  '()
                  '()))))
          (let ((_expand-internal8517_
                 (lambda (_hd8780_ _rest8781_)
                   (call-with-parameters
                    (lambda ()
                      (_wrap-internal8519_
                       (gx#core-expand-block__1
                        (gx#stx-wrap-source
                         (cons* '%#begin _hd8780_ _rest8781_)
                         (gx#stx-source _stx8513_))
                        _expand-internal-special8518_
                        '#f)))
                    gx#current-expander-context
                    (let ((__obj9088 (make-object gx#local-context::t '5)))
                      (begin
                        (gx#local-context:::init!__0 __obj9088)
                        __obj9088))))))
            (let ((_expand-special8516_
                   (lambda (_hd8784_ _K8785_ _rest8786_ _r8787_)
                     (_K8785_ '()
                              (cons (_expand-internal8517_ _hd8784_ _rest8786_)
                                    _r8787_)))))
              (gx#core-expand-block*
               (gx#stx-wrap-source
                (cons '%#begin _body8514_)
                (gx#stx-source _stx8513_))
               _expand-special8516_)))))))
  (define gx#core-expand-declare%
    (lambda (_stx8451_)
      (let ((_e84528459_ _stx8451_))
        (let ((_E84548463_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e84528459_))))
          (let ((_E84538509_
                 (lambda ()
                   (if (gx#stx-pair? _e84528459_)
                       (let ((_e84558467_ (gx#syntax-e _e84528459_)))
                         (let ((_hd84568470_ (##car _e84558467_))
                               (_tl84578472_ (##cdr _e84558467_)))
                           (let ((_body8475_ _tl84578472_))
                             (if (gx#stx-list? _body8475_)
                                 (gx#core-quote-syntax__1
                                  (gx#core-cons
                                   '%#declare
                                   (gx#stx-map1
                                    (lambda (_decl8477_)
                                      (let ((_e84788485_ _decl8477_))
                                        (let ((_E84808489_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _e84788485_))))
                                          (let ((_E84798505_
                                                 (lambda ()
                                                   (if (gx#stx-pair?
                                                        _e84788485_)
                                                       (let ((_e84818493_
                                                              (gx#syntax-e
                                                               _e84788485_)))
                                                         (let ((_hd84828496_
                                                                (##car _e84818493_))
                                                               (_tl84838498_
                                                                (##cdr _e84818493_)))
                                                           (let ((_head8501_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd84828496_))
                     (let ((_args8503_ _tl84838498_))
                       (if (gx#stx-list? _args8503_)
                           (gx#stx-map1 gx#core-quote-syntax _decl8477_)
                           (_E84808489_))))))
               (_E84808489_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let () (_E84798505_))))))
                                    _body8475_))
                                  (gx#stx-source _stx8451_))
                                 (_E84548463_)))))
                       (_E84548463_)))))
            (let () (_E84538509_)))))))
  (define gx#core-expand-extern%
    (lambda (_stx8335_)
      (let ((_e83368343_ _stx8335_))
        (let ((_E83388347_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e83368343_))))
          (let ((_E83378447_
                 (lambda ()
                   (if (gx#stx-pair? _e83368343_)
                       (let ((_e83398351_ (gx#syntax-e _e83368343_)))
                         (let ((_hd83408354_ (##car _e83398351_))
                               (_tl83418356_ (##cdr _e83398351_)))
                           (let ((_body8359_ _tl83418356_))
                             (if (gx#stx-list? _body8359_)
                                 (begin
                                   (gx#stx-for-each1
                                    (lambda (_bind8361_)
                                      (let ((_e83628372_ _bind8361_))
                                        (let ((_E83648376_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _e83628372_))))
                                          (let ((_E83638400_
                                                 (lambda ()
                                                   (if (gx#stx-pair?
                                                        _e83628372_)
                                                       (let ((_e83658380_
                                                              (gx#syntax-e
                                                               _e83628372_)))
                                                         (let ((_hd83668383_
                                                                (##car _e83658380_))
                                                               (_tl83678385_
                                                                (##cdr _e83658380_)))
                                                           (let ((_id8388_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd83668383_))
                     (if (gx#stx-pair? _tl83678385_)
                         (let ((_e83688390_ (gx#syntax-e _tl83678385_)))
                           (let ((_hd83698393_ (##car _e83688390_))
                                 (_tl83708395_ (##cdr _e83688390_)))
                             (let ((_eid8398_ _hd83698393_))
                               (if (gx#stx-null? _tl83708395_)
                                   (if (if (gx#identifier? _id8388_)
                                           (gx#identifier? _eid8398_)
                                           '#f)
                                       (gx#core-bind-extern!__0
                                        _id8388_
                                        (gx#stx-e _eid8398_))
                                       (_E83648376_))
                                   (_E83648376_)))))
                         (_E83648376_)))))
               (_E83648376_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let () (_E83638400_))))))
                                    _body8359_)
                                   (gx#core-quote-syntax__1
                                    (gx#core-cons
                                     '%#extern
                                     (gx#stx-map1
                                      (lambda (_bind8404_)
                                        (let ((_e84058415_ _bind8404_))
                                          (let ((_E84078419_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _e84058415_))))
                                            (let ((_E84068443_
                                                   (lambda ()
                                                     (if (gx#stx-pair?
                                                          _e84058415_)
                                                         (let ((_e84088423_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e84058415_)))
                   (let ((_hd84098426_ (##car _e84088423_))
                         (_tl84108428_ (##cdr _e84088423_)))
                     (let ((_id8431_ _hd84098426_))
                       (if (gx#stx-pair? _tl84108428_)
                           (let ((_e84118433_ (gx#syntax-e _tl84108428_)))
                             (let ((_hd84128436_ (##car _e84118433_))
                                   (_tl84138438_ (##cdr _e84118433_)))
                               (let ((_eid8441_ _hd84128436_))
                                 (if (gx#stx-null? _tl84138438_)
                                     (if '#t
                                         (cons (gx#core-quote-syntax__0
                                                _id8431_)
                                               (cons (gx#stx-e _eid8441_) '()))
                                         (_E84078419_))
                                     (_E84078419_)))))
                           (_E84078419_)))))
                 (_E84078419_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let () (_E84068443_))))))
                                      _body8359_))
                                    (gx#stx-source _stx8335_)))
                                 (_E83388347_)))))
                       (_E83388347_)))))
            (let () (_E83378447_)))))))
  (define gx#core-expand-define-values%
    (lambda (_stx8281_)
      (let ((_e82828295_ _stx8281_))
        (let ((_E82848299_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e82828295_))))
          (let ((_E82838331_
                 (lambda ()
                   (if (gx#stx-pair? _e82828295_)
                       (let ((_e82858303_ (gx#syntax-e _e82828295_)))
                         (let ((_hd82868306_ (##car _e82858303_))
                               (_tl82878308_ (##cdr _e82858303_)))
                           (if (gx#stx-pair? _tl82878308_)
                               (let ((_e82888311_ (gx#syntax-e _tl82878308_)))
                                 (let ((_hd82898314_ (##car _e82888311_))
                                       (_tl82908316_ (##cdr _e82888311_)))
                                   (let ((_hd8319_ _hd82898314_))
                                     (if (gx#stx-pair? _tl82908316_)
                                         (let ((_e82918321_
                                                (gx#syntax-e _tl82908316_)))
                                           (let ((_hd82928324_
                                                  (##car _e82918321_))
                                                 (_tl82938326_
                                                  (##cdr _e82918321_)))
                                             (let ((_expr8329_ _hd82928324_))
                                               (if (gx#stx-null? _tl82938326_)
                                                   (if (gx#core-bind-values?
                                                        _hd8319_)
                                                       (begin
                                                         (gx#core-bind-values!__0
                                                          _hd8319_)
                                                         (gx#core-quote-syntax__1
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#define-values)
                        (cons (gx#core-quote-bind-values _hd8319_)
                              (cons (gx#core-expand-expression _expr8329_)
                                    '())))
                  (gx#stx-source _stx8281_)))
               (_E82848299_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E82848299_)))))
                                         (_E82848299_)))))
                               (_E82848299_))))
                       (_E82848299_)))))
            (let () (_E82838331_)))))))
  (define gx#core-expand-define-runtime%
    (lambda (_stx8227_)
      (let ((_e82288241_ _stx8227_))
        (let ((_E82308245_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e82288241_))))
          (let ((_E82298277_
                 (lambda ()
                   (if (gx#stx-pair? _e82288241_)
                       (let ((_e82318249_ (gx#syntax-e _e82288241_)))
                         (let ((_hd82328252_ (##car _e82318249_))
                               (_tl82338254_ (##cdr _e82318249_)))
                           (if (gx#stx-pair? _tl82338254_)
                               (let ((_e82348257_ (gx#syntax-e _tl82338254_)))
                                 (let ((_hd82358260_ (##car _e82348257_))
                                       (_tl82368262_ (##cdr _e82348257_)))
                                   (let ((_id8265_ _hd82358260_))
                                     (if (gx#stx-pair? _tl82368262_)
                                         (let ((_e82378267_
                                                (gx#syntax-e _tl82368262_)))
                                           (let ((_hd82388270_
                                                  (##car _e82378267_))
                                                 (_tl82398272_
                                                  (##cdr _e82378267_)))
                                             (let ((_binding-id8275_
                                                    _hd82388270_))
                                               (if (gx#stx-null? _tl82398272_)
                                                   (if (if (gx#identifier?
                                                            _id8265_)
                                                           (gx#identifier?
                                                            _binding-id8275_)
                                                           '#f)
                                                       (begin
                                                         (gx#core-bind-runtime-reference!__0
                                                          _id8265_
                                                          (gx#stx-e
                                                           _binding-id8275_))
                                                         (gx#core-quote-syntax__0
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#define-runtime)
                        (cons (gx#core-quote-syntax__0 _id8265_)
                              (cons (gx#core-quote-syntax__0 _binding-id8275_)
                                    '())))))
               (_E82308245_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E82308245_)))))
                                         (_E82308245_)))))
                               (_E82308245_))))
                       (_E82308245_)))))
            (let () (_E82298277_)))))))
  (define gx#core-expand-define-syntax%
    (lambda (_stx8170_)
      (let ((_e81718184_ _stx8170_))
        (let ((_E81738188_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e81718184_))))
          (let ((_E81728223_
                 (lambda ()
                   (if (gx#stx-pair? _e81718184_)
                       (let ((_e81748192_ (gx#syntax-e _e81718184_)))
                         (let ((_hd81758195_ (##car _e81748192_))
                               (_tl81768197_ (##cdr _e81748192_)))
                           (if (gx#stx-pair? _tl81768197_)
                               (let ((_e81778200_ (gx#syntax-e _tl81768197_)))
                                 (let ((_hd81788203_ (##car _e81778200_))
                                       (_tl81798205_ (##cdr _e81778200_)))
                                   (let ((_id8208_ _hd81788203_))
                                     (if (gx#stx-pair? _tl81798205_)
                                         (let ((_e81808210_
                                                (gx#syntax-e _tl81798205_)))
                                           (let ((_hd81818213_
                                                  (##car _e81808210_))
                                                 (_tl81828215_
                                                  (##cdr _e81808210_)))
                                             (let ((_expr8218_ _hd81818213_))
                                               (if (gx#stx-null? _tl81828215_)
                                                   (if (gx#identifier?
                                                        _id8208_)
                                                       (let ((_g9096_ (gx#core-expand-expression+1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _expr8218_)))
                 (begin
                   (let ((_g9097_ (values-count _g9096_)))
                     (if (not (fx= _g9097_ 2))
                         (error "Context expects 2 values" _g9097_)))
                   (let ((_e-stx8220_ (values-ref _g9096_ 0))
                         (_e8221_ (values-ref _g9096_ 1)))
                     (begin
                       (gx#core-bind-syntax!__0 _id8208_ _e8221_)
                       (gx#core-quote-syntax__1
                        (cons (gx#core-quote-syntax__0 '%#define-syntax)
                              (cons (gx#core-quote-syntax__0 _id8208_)
                                    (cons _e-stx8220_ '())))
                        (gx#stx-source _stx8170_))))))
               (_E81738188_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E81738188_)))))
                                         (_E81738188_)))))
                               (_E81738188_))))
                       (_E81738188_)))))
            (let () (_E81728223_)))))))
  (define gx#core-expand-define-alias%
    (lambda (_stx8114_)
      (let ((_e81158128_ _stx8114_))
        (let ((_E81178132_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e81158128_))))
          (let ((_E81168166_
                 (lambda ()
                   (if (gx#stx-pair? _e81158128_)
                       (let ((_e81188136_ (gx#syntax-e _e81158128_)))
                         (let ((_hd81198139_ (##car _e81188136_))
                               (_tl81208141_ (##cdr _e81188136_)))
                           (if (gx#stx-pair? _tl81208141_)
                               (let ((_e81218144_ (gx#syntax-e _tl81208141_)))
                                 (let ((_hd81228147_ (##car _e81218144_))
                                       (_tl81238149_ (##cdr _e81218144_)))
                                   (let ((_id8152_ _hd81228147_))
                                     (if (gx#stx-pair? _tl81238149_)
                                         (let ((_e81248154_
                                                (gx#syntax-e _tl81238149_)))
                                           (let ((_hd81258157_
                                                  (##car _e81248154_))
                                                 (_tl81268159_
                                                  (##cdr _e81248154_)))
                                             (let ((_alias-id8162_
                                                    _hd81258157_))
                                               (if (gx#stx-null? _tl81268159_)
                                                   (if (if (gx#identifier?
                                                            _id8152_)
                                                           (gx#identifier?
                                                            _alias-id8162_)
                                                           '#f)
                                                       (let ((_alias-id8164_
                                                              (gx#core-quote-syntax__0
                                                               _alias-id8162_)))
                                                         (begin
                                                           (gx#core-bind-alias!__0
                                                            _id8152_
                                                            _alias-id8164_)
                                                           (gx#core-quote-syntax__0
                                                            (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#define-alias)
                          (cons (gx#core-quote-syntax__0 _id8152_)
                                (cons _alias-id8164_ '()))))))
               (_E81178132_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E81178132_)))))
                                         (_E81178132_)))))
                               (_E81178132_))))
                       (_E81178132_)))))
            (let () (_E81168166_)))))))
  (begin
    (define gx#core-expand-lambda%__opt-lambda8055
      (lambda (_stx8057_ _wrap?8058_)
        (let ((_e80598069_ _stx8057_))
          (let ((_E80618073_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e80598069_))))
            (let ((_E80608100_
                   (lambda ()
                     (if (gx#stx-pair? _e80598069_)
                         (let ((_e80628077_ (gx#syntax-e _e80598069_)))
                           (let ((_hd80638080_ (##car _e80628077_))
                                 (_tl80648082_ (##cdr _e80628077_)))
                             (if (gx#stx-pair? _tl80648082_)
                                 (let ((_e80658085_
                                        (gx#syntax-e _tl80648082_)))
                                   (let ((_hd80668088_ (##car _e80658085_))
                                         (_tl80678090_ (##cdr _e80658085_)))
                                     (let ((_hd8093_ _hd80668088_))
                                       (let ((_body8095_ _tl80678090_))
                                         (if (gx#core-bind-values? _hd8093_)
                                             (call-with-parameters
                                              (lambda ()
                                                (begin
                                                  (gx#core-bind-values!__0
                                                   _hd8093_)
                                                  (let ((_body8098_
                                                         (cons (gx#core-quote-bind-values
                                                                _hd8093_)
                                                               (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _stx8057_
                              _body8095_)
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if _wrap?8058_
                                                        (gx#core-quote-syntax__1
                                                         (gx#core-cons
                                                          '%#lambda
                                                          _body8098_)
                                                         (gx#stx-source
                                                          _stx8057_))
                                                        _body8098_))))
                                              gx#current-expander-context
                                              (let ((__obj9089
                                                     (make-object
                                                      gx#local-context::t
                                                      '5)))
                                                (begin
                                                  (gx#local-context:::init!__0
                                                   __obj9089)
                                                  __obj9089)))
                                             (_E80618073_))))))
                                 (_E80618073_))))
                         (_E80618073_)))))
              (let () (_E80608100_)))))))
    (begin
      (define gx#core-expand-lambda%__0
        (lambda (_stx8107_)
          (let ((_wrap?8109_ '#t))
            (gx#core-expand-lambda%__opt-lambda8055 _stx8107_ _wrap?8109_))))
      (define gx#core-expand-lambda%
        (lambda _g9099_
          (let ((_g9098_ (length _g9099_)))
            (cond ((fx= _g9098_ 1) (apply gx#core-expand-lambda%__0 _g9099_))
                  ((fx= _g9098_ 2)
                   (apply gx#core-expand-lambda%__opt-lambda8055 _g9099_))
                  (else (error "No clause matching arguments" _g9099_))))))))
  (define gx#core-expand-case-lambda%
    (lambda (_stx8021_)
      (let ((_e80228029_ _stx8021_))
        (let ((_E80248033_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e80228029_))))
          (let ((_E80238052_
                 (lambda ()
                   (if (gx#stx-pair? _e80228029_)
                       (let ((_e80258037_ (gx#syntax-e _e80228029_)))
                         (let ((_hd80268040_ (##car _e80258037_))
                               (_tl80278042_ (##cdr _e80258037_)))
                           (let ((_clauses8045_ _tl80278042_))
                             (if (gx#stx-list? _clauses8045_)
                                 (gx#core-quote-syntax__1
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    (lambda (_clause8047_)
                                      (gx#core-expand-lambda%__opt-lambda8055
                                       (gx#stx-wrap-source
                                        (cons '%#case-lambda-clause
                                              _clause8047_)
                                        (let ((_$e8049_
                                               (gx#stx-source _clause8047_)))
                                          (if _$e8049_
                                              _$e8049_
                                              (gx#stx-source _stx8021_))))
                                       '#f))
                                    _clauses8045_))
                                  (gx#stx-source _stx8021_))
                                 (_E80248033_)))))
                       (_E80248033_)))))
            (let () (_E80238052_)))))))
  (define gx#core-expand-let-values%
    (lambda (_stx7975_)
      (let ((_e79767986_ _stx7975_))
        (let ((_E79787990_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e79767986_))))
          (let ((_E79778017_
                 (lambda ()
                   (if (gx#stx-pair? _e79767986_)
                       (let ((_e79797994_ (gx#syntax-e _e79767986_)))
                         (let ((_hd79807997_ (##car _e79797994_))
                               (_tl79817999_ (##cdr _e79797994_)))
                           (if (gx#stx-pair? _tl79817999_)
                               (let ((_e79828002_ (gx#syntax-e _tl79817999_)))
                                 (let ((_hd79838005_ (##car _e79828002_))
                                       (_tl79848007_ (##cdr _e79828002_)))
                                   (let ((_hd8010_ _hd79838005_))
                                     (let ((_body8012_ _tl79848007_))
                                       (if (gx#core-expand-let-bind? _hd8010_)
                                           (let ((_expressions8014_
                                                  (gx#stx-map1
                                                   gx#core-expand-let-bind-expression
                                                   _hd8010_)))
                                             (call-with-parameters
                                              (lambda ()
                                                (begin
                                                  (gx#stx-for-each1
                                                   gx#core-expand-let-bind-values!
                                                   _hd8010_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#let-values)
                                                         (cons (gx#stx-map2
                                                                gx#core-expand-let-bind-quote
                                                                _hd8010_
                                                                _expressions8014_)
                                                               (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _stx7975_
                              _body8012_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source _stx7975_))))
                                              gx#current-expander-context
                                              (let ((__obj9090
                                                     (make-object
                                                      gx#local-context::t
                                                      '5)))
                                                (begin
                                                  (gx#local-context:::init!__0
                                                   __obj9090)
                                                  __obj9090))))
                                           (_E79787990_))))))
                               (_E79787990_))))
                       (_E79787990_)))))
            (let () (_E79778017_)))))))
  (begin
    (define gx#core-expand-letrec-values%__opt-lambda7918
      (lambda (_stx7920_ _form7921_)
        (let ((_e79227932_ _stx7920_))
          (let ((_E79247936_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e79227932_))))
            (let ((_E79237961_
                   (lambda ()
                     (if (gx#stx-pair? _e79227932_)
                         (let ((_e79257940_ (gx#syntax-e _e79227932_)))
                           (let ((_hd79267943_ (##car _e79257940_))
                                 (_tl79277945_ (##cdr _e79257940_)))
                             (if (gx#stx-pair? _tl79277945_)
                                 (let ((_e79287948_
                                        (gx#syntax-e _tl79277945_)))
                                   (let ((_hd79297951_ (##car _e79287948_))
                                         (_tl79307953_ (##cdr _e79287948_)))
                                     (let ((_hd7956_ _hd79297951_))
                                       (let ((_body7958_ _tl79307953_))
                                         (if (gx#core-expand-let-bind?
                                              _hd7956_)
                                             (call-with-parameters
                                              (lambda ()
                                                (begin
                                                  (gx#stx-for-each1
                                                   gx#core-expand-let-bind-values!
                                                   _hd7956_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          _form7921_)
                                                         (cons (gx#stx-map2
                                                                gx#core-expand-let-bind-quote
                                                                _hd7956_
                                                                (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#core-expand-let-bind-expression
                         _hd7956_))
                       (cons (gx#core-expand-local-block _stx7920_ _body7958_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source _stx7920_))))
                                              gx#current-expander-context
                                              (let ((__obj9091
                                                     (make-object
                                                      gx#local-context::t
                                                      '5)))
                                                (begin
                                                  (gx#local-context:::init!__0
                                                   __obj9091)
                                                  __obj9091)))
                                             (_E79247936_))))))
                                 (_E79247936_))))
                         (_E79247936_)))))
              (let () (_E79237961_)))))))
    (begin
      (define gx#core-expand-letrec-values%__0
        (lambda (_stx7968_)
          (let ((_form7970_ '%#letrec-values))
            (gx#core-expand-letrec-values%__opt-lambda7918
             _stx7968_
             _form7970_))))
      (define gx#core-expand-letrec-values%
        (lambda _g9101_
          (let ((_g9100_ (length _g9101_)))
            (cond ((fx= _g9100_ 1)
                   (apply gx#core-expand-letrec-values%__0 _g9101_))
                  ((fx= _g9100_ 2)
                   (apply gx#core-expand-letrec-values%__opt-lambda7918
                          _g9101_))
                  (else (error "No clause matching arguments" _g9101_))))))))
  (define gx#core-expand-letrec*-values%
    (lambda (_stx7917_)
      (gx#core-expand-letrec-values%__opt-lambda7918
       _stx7917_
       '%#letrec*-values)))
  (define gx#core-expand-let-bind?
    (lambda (_stx7874_)
      (if (gx#stx-list? _stx7874_)
          (gx#stx-andmap
           (lambda (_bind7876_)
             (let ((_e78777887_ _bind7876_))
               (let ((_E78797891_ (lambda () '#f)))
                 (let ((_E78787913_
                        (lambda ()
                          (if (gx#stx-pair? _e78777887_)
                              (let ((_e78807895_ (gx#syntax-e _e78777887_)))
                                (let ((_hd78817898_ (##car _e78807895_))
                                      (_tl78827900_ (##cdr _e78807895_)))
                                  (let ((_hd7903_ _hd78817898_))
                                    (if (gx#stx-pair? _tl78827900_)
                                        (let ((_e78837905_
                                               (gx#syntax-e _tl78827900_)))
                                          (let ((_hd78847908_
                                                 (##car _e78837905_))
                                                (_tl78857910_
                                                 (##cdr _e78837905_)))
                                            (if (gx#stx-null? _tl78857910_)
                                                (if '#t
                                                    (gx#core-bind-values?
                                                     _hd7903_)
                                                    (_E78797891_))
                                                (_E78797891_))))
                                        (_E78797891_)))))
                              (_E78797891_)))))
                   (let () (_E78787913_))))))
           _stx7874_)
          '#f)))
  (define gx#core-expand-let-bind-expression
    (lambda (_bind7833_)
      (let ((_e78347844_ _bind7833_))
        (let ((_E78367848_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e78347844_))))
          (let ((_E78357870_
                 (lambda ()
                   (if (gx#stx-pair? _e78347844_)
                       (let ((_e78377852_ (gx#syntax-e _e78347844_)))
                         (let ((_hd78387855_ (##car _e78377852_))
                               (_tl78397857_ (##cdr _e78377852_)))
                           (if (gx#stx-pair? _tl78397857_)
                               (let ((_e78407860_ (gx#syntax-e _tl78397857_)))
                                 (let ((_hd78417863_ (##car _e78407860_))
                                       (_tl78427865_ (##cdr _e78407860_)))
                                   (let ((_expr7868_ _hd78417863_))
                                     (if (gx#stx-null? _tl78427865_)
                                         (if '#t
                                             (gx#core-expand-expression
                                              _expr7868_)
                                             (_E78367848_))
                                         (_E78367848_)))))
                               (_E78367848_))))
                       (_E78367848_)))))
            (let () (_E78357870_)))))))
  (define gx#core-expand-let-bind-values!
    (lambda (_bind7792_)
      (let ((_e77937803_ _bind7792_))
        (let ((_E77957807_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e77937803_))))
          (let ((_E77947829_
                 (lambda ()
                   (if (gx#stx-pair? _e77937803_)
                       (let ((_e77967811_ (gx#syntax-e _e77937803_)))
                         (let ((_hd77977814_ (##car _e77967811_))
                               (_tl77987816_ (##cdr _e77967811_)))
                           (let ((_hd7819_ _hd77977814_))
                             (if (gx#stx-pair? _tl77987816_)
                                 (let ((_e77997821_
                                        (gx#syntax-e _tl77987816_)))
                                   (let ((_hd78007824_ (##car _e77997821_))
                                         (_tl78017826_ (##cdr _e77997821_)))
                                     (if (gx#stx-null? _tl78017826_)
                                         (if '#t
                                             (gx#core-bind-values!__0 _hd7819_)
                                             (_E77957807_))
                                         (_E77957807_))))
                                 (_E77957807_)))))
                       (_E77957807_)))))
            (let () (_E77947829_)))))))
  (define gx#core-expand-let-bind-quote
    (lambda (_bind7750_ _expr7751_)
      (let ((_e77527762_ _bind7750_))
        (let ((_E77547766_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e77527762_))))
          (let ((_E77537788_
                 (lambda ()
                   (if (gx#stx-pair? _e77527762_)
                       (let ((_e77557770_ (gx#syntax-e _e77527762_)))
                         (let ((_hd77567773_ (##car _e77557770_))
                               (_tl77577775_ (##cdr _e77557770_)))
                           (let ((_hd7778_ _hd77567773_))
                             (if (gx#stx-pair? _tl77577775_)
                                 (let ((_e77587780_
                                        (gx#syntax-e _tl77577775_)))
                                   (let ((_hd77597783_ (##car _e77587780_))
                                         (_tl77607785_ (##cdr _e77587780_)))
                                     (if (gx#stx-null? _tl77607785_)
                                         (if '#t
                                             (cons (gx#core-quote-bind-values
                                                    _hd7778_)
                                                   (cons _expr7751_ '()))
                                             (_E77547766_))
                                         (_E77547766_))))
                                 (_E77547766_)))))
                       (_E77547766_)))))
            (let () (_E77537788_)))))))
  (define gx#core-expand-let-syntax%
    (lambda (_stx7704_)
      (let ((_e77057715_ _stx7704_))
        (let ((_E77077719_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e77057715_))))
          (let ((_E77067746_
                 (lambda ()
                   (if (gx#stx-pair? _e77057715_)
                       (let ((_e77087723_ (gx#syntax-e _e77057715_)))
                         (let ((_hd77097726_ (##car _e77087723_))
                               (_tl77107728_ (##cdr _e77087723_)))
                           (if (gx#stx-pair? _tl77107728_)
                               (let ((_e77117731_ (gx#syntax-e _tl77107728_)))
                                 (let ((_hd77127734_ (##car _e77117731_))
                                       (_tl77137736_ (##cdr _e77117731_)))
                                   (let ((_hd7739_ _hd77127734_))
                                     (let ((_body7741_ _tl77137736_))
                                       (if (gx#core-expand-let-bind-syntax?
                                            _hd7739_)
                                           (let ((_expanders7743_
                                                  (gx#stx-map1
                                                   gx#core-expand-let-bind-syntax-expression
                                                   _hd7739_)))
                                             (call-with-parameters
                                              (lambda ()
                                                (begin
                                                  (gx#stx-for-each2
                                                   gx#core-expand-let-bind-syntax!
                                                   _hd7739_
                                                   _expanders7743_)
                                                  (gx#core-expand-local-block
                                                   _stx7704_
                                                   _body7741_)))
                                              gx#current-expander-context
                                              (let ((__obj9092
                                                     (make-object
                                                      gx#local-context::t
                                                      '5)))
                                                (begin
                                                  (gx#local-context:::init!__0
                                                   __obj9092)
                                                  __obj9092))))
                                           (_E77077719_))))))
                               (_E77077719_))))
                       (_E77077719_)))))
            (let () (_E77067746_)))))))
  (define gx#core-expand-letrec-syntax%
    (lambda (_stx7653_)
      (let ((_e76547664_ _stx7653_))
        (let ((_E76567668_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e76547664_))))
          (let ((_E76557700_
                 (lambda ()
                   (if (gx#stx-pair? _e76547664_)
                       (let ((_e76577672_ (gx#syntax-e _e76547664_)))
                         (let ((_hd76587675_ (##car _e76577672_))
                               (_tl76597677_ (##cdr _e76577672_)))
                           (if (gx#stx-pair? _tl76597677_)
                               (let ((_e76607680_ (gx#syntax-e _tl76597677_)))
                                 (let ((_hd76617683_ (##car _e76607680_))
                                       (_tl76627685_ (##cdr _e76607680_)))
                                   (let ((_hd7688_ _hd76617683_))
                                     (let ((_body7690_ _tl76627685_))
                                       (if (gx#core-expand-let-bind-syntax?
                                            _hd7688_)
                                           (call-with-parameters
                                            (lambda ()
                                              (begin
                                                (gx#stx-for-each2
                                                 gx#core-expand-let-bind-syntax!
                                                 _hd7688_
                                                 (make-list
                                                  (gx#stx-length _hd7688_)
                                                  '#!void))
                                                (gx#stx-for-each2
                                                 (lambda (_g76927695_
                                                          _g76937697_)
                                                   (gx#core-expand-let-bind-syntax!__opt-lambda7510
                                                    _g76927695_
                                                    _g76937697_
                                                    '#t))
                                                 _hd7688_
                                                 (gx#stx-map1
                                                  gx#core-expand-let-bind-syntax-expression
                                                  _hd7688_))
                                                (gx#core-expand-local-block
                                                 _stx7653_
                                                 _body7690_)))
                                            gx#current-expander-context
                                            (let ((__obj9093
                                                   (make-object
                                                    gx#local-context::t
                                                    '5)))
                                              (begin
                                                (gx#local-context:::init!__0
                                                 __obj9093)
                                                __obj9093)))
                                           (_E76567668_))))))
                               (_E76567668_))))
                       (_E76567668_)))))
            (let () (_E76557700_)))))))
  (define gx#core-expand-let-bind-syntax?
    (lambda (_stx7610_)
      (if (gx#stx-list? _stx7610_)
          (gx#stx-andmap
           (lambda (_bind7612_)
             (let ((_e76137623_ _bind7612_))
               (let ((_E76157627_ (lambda () '#f)))
                 (let ((_E76147649_
                        (lambda ()
                          (if (gx#stx-pair? _e76137623_)
                              (let ((_e76167631_ (gx#syntax-e _e76137623_)))
                                (let ((_hd76177634_ (##car _e76167631_))
                                      (_tl76187636_ (##cdr _e76167631_)))
                                  (let ((_hd7639_ _hd76177634_))
                                    (if (gx#stx-pair? _tl76187636_)
                                        (let ((_e76197641_
                                               (gx#syntax-e _tl76187636_)))
                                          (let ((_hd76207644_
                                                 (##car _e76197641_))
                                                (_tl76217646_
                                                 (##cdr _e76197641_)))
                                            (if (gx#stx-null? _tl76217646_)
                                                (if '#t
                                                    (gx#identifier? _hd7639_)
                                                    (_E76157627_))
                                                (_E76157627_))))
                                        (_E76157627_)))))
                              (_E76157627_)))))
                   (let () (_E76147649_))))))
           _stx7610_)
          '#f)))
  (define gx#core-expand-let-bind-syntax-expression
    (lambda (_bind7567_)
      (let ((_e75687578_ _bind7567_))
        (let ((_E75707582_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e75687578_))))
          (let ((_E75697606_
                 (lambda ()
                   (if (gx#stx-pair? _e75687578_)
                       (let ((_e75717586_ (gx#syntax-e _e75687578_)))
                         (let ((_hd75727589_ (##car _e75717586_))
                               (_tl75737591_ (##cdr _e75717586_)))
                           (if (gx#stx-pair? _tl75737591_)
                               (let ((_e75747594_ (gx#syntax-e _tl75737591_)))
                                 (let ((_hd75757597_ (##car _e75747594_))
                                       (_tl75767599_ (##cdr _e75747594_)))
                                   (let ((_expr7602_ _hd75757597_))
                                     (if (gx#stx-null? _tl75767599_)
                                         (if '#t
                                             (let ((_g9102_ (gx#core-expand-expression+1
                                                             _expr7602_)))
                                               (begin
                                                 (let ((_g9103_ (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g9102_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (not (fx= _g9103_ 2))
                                                       (error "Context expects 2 values"
                                                              _g9103_)))
                                                 (let ((_e7604_ (values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g9102_
                         1)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _e7604_)))
                                             (_E75707582_))
                                         (_E75707582_)))))
                               (_E75707582_))))
                       (_E75707582_)))))
            (let () (_E75697606_)))))))
  (begin
    (define gx#core-expand-let-bind-syntax!__opt-lambda7510
      (lambda (_bind7512_ _e7513_ _rebind?7514_)
        (let ((_e75157525_ _bind7512_))
          (let ((_E75177529_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e75157525_))))
            (let ((_E75167551_
                   (lambda ()
                     (if (gx#stx-pair? _e75157525_)
                         (let ((_e75187533_ (gx#syntax-e _e75157525_)))
                           (let ((_hd75197536_ (##car _e75187533_))
                                 (_tl75207538_ (##cdr _e75187533_)))
                             (let ((_id7541_ _hd75197536_))
                               (if (gx#stx-pair? _tl75207538_)
                                   (let ((_e75217543_
                                          (gx#syntax-e _tl75207538_)))
                                     (let ((_hd75227546_ (##car _e75217543_))
                                           (_tl75237548_ (##cdr _e75217543_)))
                                       (if (gx#stx-null? _tl75237548_)
                                           (if '#t
                                               (gx#core-bind-syntax!__1
                                                _id7541_
                                                _e7513_
                                                _rebind?7514_)
                                               (_E75177529_))
                                           (_E75177529_))))
                                   (_E75177529_)))))
                         (_E75177529_)))))
              (let () (_E75167551_)))))))
    (begin
      (define gx#core-expand-let-bind-syntax!__0
        (lambda (_bind7558_ _e7559_)
          (let ((_rebind?7561_ '#f))
            (gx#core-expand-let-bind-syntax!__opt-lambda7510
             _bind7558_
             _e7559_
             _rebind?7561_))))
      (define gx#core-expand-let-bind-syntax!
        (lambda _g9105_
          (let ((_g9104_ (length _g9105_)))
            (cond ((fx= _g9104_ 2)
                   (apply gx#core-expand-let-bind-syntax!__0 _g9105_))
                  ((fx= _g9104_ 3)
                   (apply gx#core-expand-let-bind-syntax!__opt-lambda7510
                          _g9105_))
                  (else (error "No clause matching arguments" _g9105_))))))))
  (define gx#core-expand-expression%
    (lambda (_stx7470_)
      (let ((_e74717481_ _stx7470_))
        (let ((_E74737485_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e74717481_))))
          (let ((_E74727507_
                 (lambda ()
                   (if (gx#stx-pair? _e74717481_)
                       (let ((_e74747489_ (gx#syntax-e _e74717481_)))
                         (let ((_hd74757492_ (##car _e74747489_))
                               (_tl74767494_ (##cdr _e74747489_)))
                           (if (gx#stx-pair? _tl74767494_)
                               (let ((_e74777497_ (gx#syntax-e _tl74767494_)))
                                 (let ((_hd74787500_ (##car _e74777497_))
                                       (_tl74797502_ (##cdr _e74777497_)))
                                   (let ((_expr7505_ _hd74787500_))
                                     (if (gx#stx-null? _tl74797502_)
                                         (if '#t
                                             (gx#core-expand-expression
                                              _expr7505_)
                                             (_E74737485_))
                                         (_E74737485_)))))
                               (_E74737485_))))
                       (_E74737485_)))))
            (let () (_E74727507_)))))))
  (define gx#core-expand-quote%
    (lambda (_stx7429_)
      (let ((_e74307440_ _stx7429_))
        (let ((_E74327444_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e74307440_))))
          (let ((_E74317466_
                 (lambda ()
                   (if (gx#stx-pair? _e74307440_)
                       (let ((_e74337448_ (gx#syntax-e _e74307440_)))
                         (let ((_hd74347451_ (##car _e74337448_))
                               (_tl74357453_ (##cdr _e74337448_)))
                           (if (gx#stx-pair? _tl74357453_)
                               (let ((_e74367456_ (gx#syntax-e _tl74357453_)))
                                 (let ((_hd74377459_ (##car _e74367456_))
                                       (_tl74387461_ (##cdr _e74367456_)))
                                   (let ((_e7464_ _hd74377459_))
                                     (if (gx#stx-null? _tl74387461_)
                                         (if '#t
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#quote)
                                                    (cons (gx#syntax->datum
                                                           _e7464_)
                                                          '()))
                                              (gx#stx-source _stx7429_))
                                             (_E74327444_))
                                         (_E74327444_)))))
                               (_E74327444_))))
                       (_E74327444_)))))
            (let () (_E74317466_)))))))
  (define gx#core-expand-quote-syntax%
    (lambda (_stx7388_)
      (let ((_e73897399_ _stx7388_))
        (let ((_E73917403_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e73897399_))))
          (let ((_E73907425_
                 (lambda ()
                   (if (gx#stx-pair? _e73897399_)
                       (let ((_e73927407_ (gx#syntax-e _e73897399_)))
                         (let ((_hd73937410_ (##car _e73927407_))
                               (_tl73947412_ (##cdr _e73927407_)))
                           (if (gx#stx-pair? _tl73947412_)
                               (let ((_e73957415_ (gx#syntax-e _tl73947412_)))
                                 (let ((_hd73967418_ (##car _e73957415_))
                                       (_tl73977420_ (##cdr _e73957415_)))
                                   (let ((_e7423_ _hd73967418_))
                                     (if (gx#stx-null? _tl73977420_)
                                         (if '#t
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#quote-syntax)
                                                    (cons (gx#core-quote-syntax__0
                                                           _e7423_)
                                                          '()))
                                              (gx#stx-source _stx7388_))
                                             (_E73917403_))
                                         (_E73917403_)))))
                               (_E73917403_))))
                       (_E73917403_)))))
            (let () (_E73907425_)))))))
  (define gx#core-expand-call%
    (lambda (_stx7345_)
      (let ((_e73467356_ _stx7345_))
        (let ((_E73487360_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e73467356_))))
          (let ((_E73477384_
                 (lambda ()
                   (if (gx#stx-pair? _e73467356_)
                       (let ((_e73497364_ (gx#syntax-e _e73467356_)))
                         (let ((_hd73507367_ (##car _e73497364_))
                               (_tl73517369_ (##cdr _e73497364_)))
                           (if (gx#stx-pair? _tl73517369_)
                               (let ((_e73527372_ (gx#syntax-e _tl73517369_)))
                                 (let ((_hd73537375_ (##car _e73527372_))
                                       (_tl73547377_ (##cdr _e73527372_)))
                                   (let ((_rator7380_ _hd73537375_))
                                     (let ((_args7382_ _tl73547377_))
                                       (if (gx#stx-list? _args7382_)
                                           (gx#core-quote-syntax__1
                                            (gx#core-cons*
                                             '%#call
                                             (gx#core-expand-expression
                                              _rator7380_)
                                             (gx#stx-map1
                                              gx#core-expand-expression
                                              _args7382_))
                                            (gx#stx-source _stx7345_))
                                           (_E73487360_))))))
                               (_E73487360_))))
                       (_E73487360_)))))
            (let () (_E73477384_)))))))
  (define gx#core-expand-if%
    (lambda (_stx7278_)
      (let ((_e72797295_ _stx7278_))
        (let ((_E72817299_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e72797295_))))
          (let ((_E72807341_
                 (lambda ()
                   (if (gx#stx-pair? _e72797295_)
                       (let ((_e72827303_ (gx#syntax-e _e72797295_)))
                         (let ((_hd72837306_ (##car _e72827303_))
                               (_tl72847308_ (##cdr _e72827303_)))
                           (if (gx#stx-pair? _tl72847308_)
                               (let ((_e72857311_ (gx#syntax-e _tl72847308_)))
                                 (let ((_hd72867314_ (##car _e72857311_))
                                       (_tl72877316_ (##cdr _e72857311_)))
                                   (let ((_test7319_ _hd72867314_))
                                     (if (gx#stx-pair? _tl72877316_)
                                         (let ((_e72887321_
                                                (gx#syntax-e _tl72877316_)))
                                           (let ((_hd72897324_
                                                  (##car _e72887321_))
                                                 (_tl72907326_
                                                  (##cdr _e72887321_)))
                                             (let ((_K7329_ _hd72897324_))
                                               (if (gx#stx-pair? _tl72907326_)
                                                   (let ((_e72917331_
                                                          (gx#syntax-e
                                                           _tl72907326_)))
                                                     (let ((_hd72927334_
                                                            (##car _e72917331_))
                                                           (_tl72937336_
                                                            (##cdr _e72917331_)))
                                                       (let ((_E7339_ _hd72927334_))
                                                         (if (gx#stx-null?
                                                              _tl72937336_)
                                                             (if '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-quote-syntax__1
                          (cons (gx#core-quote-syntax__0 '%#if)
                                (cons (gx#core-expand-expression _test7319_)
                                      (cons (gx#core-expand-expression _K7329_)
                                            (cons (gx#core-expand-expression
                                                   _E7339_)
                                                  '()))))
                          (gx#stx-source _stx7278_))
                         (_E72817299_))
                     (_E72817299_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E72817299_)))))
                                         (_E72817299_)))))
                               (_E72817299_))))
                       (_E72817299_)))))
            (let () (_E72807341_)))))))
  (define gx#core-expand-ref%
    (lambda (_stx7237_)
      (let ((_e72387248_ _stx7237_))
        (let ((_E72407252_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e72387248_))))
          (let ((_E72397274_
                 (lambda ()
                   (if (gx#stx-pair? _e72387248_)
                       (let ((_e72417256_ (gx#syntax-e _e72387248_)))
                         (let ((_hd72427259_ (##car _e72417256_))
                               (_tl72437261_ (##cdr _e72417256_)))
                           (if (gx#stx-pair? _tl72437261_)
                               (let ((_e72447264_ (gx#syntax-e _tl72437261_)))
                                 (let ((_hd72457267_ (##car _e72447264_))
                                       (_tl72467269_ (##cdr _e72447264_)))
                                   (let ((_id7272_ _hd72457267_))
                                     (if (gx#stx-null? _tl72467269_)
                                         (if (gx#core-runtime-ref? _id7272_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#ref)
                                                    (cons (gx#core-quote-runtime-ref
                                                           _id7272_
                                                           _stx7237_)
                                                          '()))
                                              (gx#stx-source _stx7237_))
                                             (_E72407252_))
                                         (_E72407252_)))))
                               (_E72407252_))))
                       (_E72407252_)))))
            (let () (_E72397274_)))))))
  (define gx#core-expand-setq%
    (lambda (_stx7183_)
      (let ((_e71847197_ _stx7183_))
        (let ((_E71867201_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e71847197_))))
          (let ((_E71857233_
                 (lambda ()
                   (if (gx#stx-pair? _e71847197_)
                       (let ((_e71877205_ (gx#syntax-e _e71847197_)))
                         (let ((_hd71887208_ (##car _e71877205_))
                               (_tl71897210_ (##cdr _e71877205_)))
                           (if (gx#stx-pair? _tl71897210_)
                               (let ((_e71907213_ (gx#syntax-e _tl71897210_)))
                                 (let ((_hd71917216_ (##car _e71907213_))
                                       (_tl71927218_ (##cdr _e71907213_)))
                                   (let ((_id7221_ _hd71917216_))
                                     (if (gx#stx-pair? _tl71927218_)
                                         (let ((_e71937223_
                                                (gx#syntax-e _tl71927218_)))
                                           (let ((_hd71947226_
                                                  (##car _e71937223_))
                                                 (_tl71957228_
                                                  (##cdr _e71937223_)))
                                             (let ((_expr7231_ _hd71947226_))
                                               (if (gx#stx-null? _tl71957228_)
                                                   (if (gx#core-runtime-ref?
                                                        _id7221_)
                                                       (gx#core-quote-syntax__1
                                                        (cons (gx#core-quote-syntax__0
                                                               '%#set!)
                                                              (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _id7221_
                             _stx7183_)
                            (cons (gx#core-expand-expression _expr7231_) '())))
                (gx#stx-source _stx7183_))
               (_E71867201_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E71867201_)))))
                                         (_E71867201_)))))
                               (_E71867201_))))
                       (_E71867201_)))))
            (let () (_E71857233_)))))))
  (define gx#macro-expand-extern
    (lambda (_stx7031_)
      (let ((_generate7033_
             (lambda (_body7063_)
               ((letrec ((_lp7065_
                          (lambda (_rest7067_ _ns7068_ _r7069_)
                            (let ((_e70707085_ _rest7067_))
                              (let ((_E70837089_
                                     (lambda ()
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _e70707085_))))
                                (let ((_E70797093_
                                       (lambda ()
                                         (if (gx#stx-null? _e70707085_)
                                             (if '#t
                                                 (reverse _r7069_)
                                                 (_E70837089_))
                                             (_E70837089_)))))
                                  (let ((_E70727150_
                                         (lambda ()
                                           (if (gx#stx-pair? _e70707085_)
                                               (let ((_e70807097_
                                                      (gx#syntax-e
                                                       _e70707085_)))
                                                 (let ((_hd70817100_
                                                        (##car _e70807097_))
                                                       (_tl70827102_
                                                        (##cdr _e70807097_)))
                                                   (let ((_hd7105_
                                                          _hd70817100_))
                                                     (let ((_rest7107_
                                                            _tl70827102_))
                                                       (if '#t
                                                           (if (gx#identifier?
                                                                _hd7105_)
                                                               (_lp7065_
                                                                _rest7107_
                                                                _ns7068_
                                                                (cons (cons _hd7105_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (if _ns7068_
                                              (gx#stx-identifier
                                               _hd7105_
                                               _ns7068_
                                               '"#"
                                               _hd7105_)
                                              _hd7105_)
                                          '()))
                              _r7069_))
                       (let ((_e71087118_ _hd7105_))
                         (let ((_E71107122_
                                (lambda ()
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _e71087118_))))
                           (let ((_E71097146_
                                  (lambda ()
                                    (if (gx#stx-pair? _e71087118_)
                                        (let ((_e71117126_
                                               (gx#syntax-e _e71087118_)))
                                          (let ((_hd71127129_
                                                 (##car _e71117126_))
                                                (_tl71137131_
                                                 (##cdr _e71117126_)))
                                            (let ((_id7134_ _hd71127129_))
                                              (if (gx#stx-pair? _tl71137131_)
                                                  (let ((_e71147136_
                                                         (gx#syntax-e
                                                          _tl71137131_)))
                                                    (let ((_hd71157139_
                                                           (##car _e71147136_))
                                                          (_tl71167141_
                                                           (##cdr _e71147136_)))
                                                      (let ((_eid7144_
                                                             _hd71157139_))
                                                        (if (gx#stx-null?
                                                             _tl71167141_)
                                                            (if (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _id7134_)
                            (gx#identifier? _eid7144_)
                            '#f)
                        (_lp7065_
                         _rest7107_
                         _ns7068_
                         (cons (cons _id7134_ (cons _eid7144_ '())) _r7069_))
                        (_E71107122_))
                    (_E71107122_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E71107122_)))))
                                        (_E71107122_)))))
                             (let () (_E71097146_))))))
                   (_E70797093_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E70797093_)))))
                                    (let ((_E70717179_
                                           (lambda ()
                                             (if (gx#stx-pair? _e70707085_)
                                                 (let ((_e70737154_
                                                        (gx#syntax-e
                                                         _e70707085_)))
                                                   (let ((_hd70747157_
                                                          (##car _e70737154_))
                                                         (_tl70757159_
                                                          (##cdr _e70737154_)))
                                                     (if (eq? (gx#stx-e
                                                               _hd70747157_)
                                                              'namespace:)
                                                         (if (gx#stx-pair?
                                                              _tl70757159_)
                                                             (let ((_e70767162_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl70757159_)))
                       (let ((_hd70777165_ (##car _e70767162_))
                             (_tl70787167_ (##cdr _e70767162_)))
                         (let ((_ns7170_ _hd70777165_))
                           (let ((_rest7172_ _tl70787167_))
                             (if '#t
                                 (let ((_ns7177_
                                        (if (gx#identifier? _ns7170_)
                                            (symbol->string
                                             (gx#stx-e _ns7170_))
                                            (if (let ((_$e7174_
                                                       (gx#stx-string?
                                                        _ns7170_)))
                                                  (if _$e7174_
                                                      _$e7174_
                                                      (gx#stx-false?
                                                       _ns7170_)))
                                                (gx#stx-e _ns7170_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _stx7031_
                                                 _ns7170_)))))
                                   (_lp7065_ _rest7172_ _ns7177_ _r7069_))
                                 (_E70727150_))))))
                     (_E70727150_))
                 (_E70727150_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E70727150_)))))
                                      (let () (_E70717179_))))))))))
                  _lp7065_)
                _body7063_
                (gx#core-context-namespace__0)
                '()))))
        (let ((_e70347041_ _stx7031_))
          (let ((_E70367045_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e70347041_))))
            (let ((_E70357059_
                   (lambda ()
                     (if (gx#stx-pair? _e70347041_)
                         (let ((_e70377049_ (gx#syntax-e _e70347041_)))
                           (let ((_hd70387052_ (##car _e70377049_))
                                 (_tl70397054_ (##cdr _e70377049_)))
                             (let ((_body7057_ _tl70397054_))
                               (if (gx#stx-list? _body7057_)
                                   (gx#core-cons
                                    '%#extern
                                    (_generate7033_ _body7057_))
                                   (_E70367045_)))))
                         (_E70367045_)))))
              (let () (_E70357059_))))))))
  (define gx#macro-expand-define-values
    (lambda (_stx6977_)
      (let ((_e69786991_ _stx6977_))
        (let ((_E69806995_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e69786991_))))
          (let ((_E69797027_
                 (lambda ()
                   (if (gx#stx-pair? _e69786991_)
                       (let ((_e69816999_ (gx#syntax-e _e69786991_)))
                         (let ((_hd69827002_ (##car _e69816999_))
                               (_tl69837004_ (##cdr _e69816999_)))
                           (if (gx#stx-pair? _tl69837004_)
                               (let ((_e69847007_ (gx#syntax-e _tl69837004_)))
                                 (let ((_hd69857010_ (##car _e69847007_))
                                       (_tl69867012_ (##cdr _e69847007_)))
                                   (let ((_hd7015_ _hd69857010_))
                                     (if (gx#stx-pair? _tl69867012_)
                                         (let ((_e69877017_
                                                (gx#syntax-e _tl69867012_)))
                                           (let ((_hd69887020_
                                                  (##car _e69877017_))
                                                 (_tl69897022_
                                                  (##cdr _e69877017_)))
                                             (let ((_expr7025_ _hd69887020_))
                                               (if (gx#stx-null? _tl69897022_)
                                                   (if (gx#stx-andmap
                                                        gx#identifier?
                                                        _hd7015_)
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-values)
                                                             (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            gx#user-binding-identifier
                            _hd7015_)
                           (cons _expr7025_ '())))
               (_E69806995_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E69806995_)))))
                                         (_E69806995_)))))
                               (_E69806995_))))
                       (_E69806995_)))))
            (let () (_E69797027_)))))))
  (define gx#macro-expand-define-syntax
    (lambda (_stx6923_)
      (let ((_e69246937_ _stx6923_))
        (let ((_E69266941_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e69246937_))))
          (let ((_E69256973_
                 (lambda ()
                   (if (gx#stx-pair? _e69246937_)
                       (let ((_e69276945_ (gx#syntax-e _e69246937_)))
                         (let ((_hd69286948_ (##car _e69276945_))
                               (_tl69296950_ (##cdr _e69276945_)))
                           (if (gx#stx-pair? _tl69296950_)
                               (let ((_e69306953_ (gx#syntax-e _tl69296950_)))
                                 (let ((_hd69316956_ (##car _e69306953_))
                                       (_tl69326958_ (##cdr _e69306953_)))
                                   (let ((_hd6961_ _hd69316956_))
                                     (if (gx#stx-pair? _tl69326958_)
                                         (let ((_e69336963_
                                                (gx#syntax-e _tl69326958_)))
                                           (let ((_hd69346966_
                                                  (##car _e69336963_))
                                                 (_tl69356968_
                                                  (##cdr _e69336963_)))
                                             (let ((_expr6971_ _hd69346966_))
                                               (if (gx#stx-null? _tl69356968_)
                                                   (if (gx#identifier?
                                                        _hd6961_)
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-syntax)
                                                             (cons _hd6961_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _expr6971_ '())))
               (_E69266941_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E69266941_)))))
                                         (_E69266941_)))))
                               (_E69266941_))))
                       (_E69266941_)))))
            (let () (_E69256973_)))))))
  (define gx#macro-expand-define-alias
    (lambda (_stx6869_)
      (let ((_e68706883_ _stx6869_))
        (let ((_E68726887_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e68706883_))))
          (let ((_E68716919_
                 (lambda ()
                   (if (gx#stx-pair? _e68706883_)
                       (let ((_e68736891_ (gx#syntax-e _e68706883_)))
                         (let ((_hd68746894_ (##car _e68736891_))
                               (_tl68756896_ (##cdr _e68736891_)))
                           (if (gx#stx-pair? _tl68756896_)
                               (let ((_e68766899_ (gx#syntax-e _tl68756896_)))
                                 (let ((_hd68776902_ (##car _e68766899_))
                                       (_tl68786904_ (##cdr _e68766899_)))
                                   (let ((_id6907_ _hd68776902_))
                                     (if (gx#stx-pair? _tl68786904_)
                                         (let ((_e68796909_
                                                (gx#syntax-e _tl68786904_)))
                                           (let ((_hd68806912_
                                                  (##car _e68796909_))
                                                 (_tl68816914_
                                                  (##cdr _e68796909_)))
                                             (let ((_alias-id6917_
                                                    _hd68806912_))
                                               (if (gx#stx-null? _tl68816914_)
                                                   (if (if (gx#identifier?
                                                            _id6907_)
                                                           (gx#identifier?
                                                            _alias-id6917_)
                                                           '#f)
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-alias)
                                                             (cons _id6907_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _alias-id6917_ '())))
               (_E68726887_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E68726887_)))))
                                         (_E68726887_)))))
                               (_E68726887_))))
                       (_E68726887_)))))
            (let () (_E68716919_)))))))
  (define gx#macro-expand-lambda%
    (lambda (_stx6826_)
      (let ((_e68276837_ _stx6826_))
        (let ((_E68296841_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e68276837_))))
          (let ((_E68286865_
                 (lambda ()
                   (if (gx#stx-pair? _e68276837_)
                       (let ((_e68306845_ (gx#syntax-e _e68276837_)))
                         (let ((_hd68316848_ (##car _e68306845_))
                               (_tl68326850_ (##cdr _e68306845_)))
                           (if (gx#stx-pair? _tl68326850_)
                               (let ((_e68336853_ (gx#syntax-e _tl68326850_)))
                                 (let ((_hd68346856_ (##car _e68336853_))
                                       (_tl68356858_ (##cdr _e68336853_)))
                                   (let ((_hd6861_ _hd68346856_))
                                     (let ((_body6863_ _tl68356858_))
                                       (if (if (gx#stx-andmap
                                                gx#identifier?
                                                _hd6861_)
                                               (if (gx#stx-list? _body6863_)
                                                   (not (gx#stx-null?
                                                         _body6863_))
                                                   '#f)
                                               '#f)
                                           (gx#core-cons*
                                            '%#lambda
                                            (gx#stx-map1
                                             gx#user-binding-identifier
                                             _hd6861_)
                                            _body6863_)
                                           (_E68296841_))))))
                               (_E68296841_))))
                       (_E68296841_)))))
            (let () (_E68286865_)))))))
  (define gx#macro-expand-case-lambda
    (lambda (_stx6762_)
      (let ((_generate6764_
             (lambda (_clause6794_)
               (let ((_e67956802_ _clause6794_))
                 (let ((_E67976806_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; malformed clause"
                           _stx6762_
                           _clause6794_))))
                   (let ((_E67966822_
                          (lambda ()
                            (if (gx#stx-pair? _e67956802_)
                                (let ((_e67986810_ (gx#syntax-e _e67956802_)))
                                  (let ((_hd67996813_ (##car _e67986810_))
                                        (_tl68006815_ (##cdr _e67986810_)))
                                    (let ((_hd6818_ _hd67996813_))
                                      (let ((_body6820_ _tl68006815_))
                                        (if (if (gx#stx-andmap
                                                 gx#identifier?
                                                 _hd6818_)
                                                (if (gx#stx-list? _body6820_)
                                                    (not (gx#stx-null?
                                                          _body6820_))
                                                    '#f)
                                                '#f)
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd6818_)
                                                   _body6820_)
                                             (gx#stx-source _clause6794_))
                                            (_E67976806_))))))
                                (_E67976806_)))))
                     (let () (_E67966822_))))))))
        (let ((_e67656772_ _stx6762_))
          (let ((_E67676776_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e67656772_))))
            (let ((_E67666790_
                   (lambda ()
                     (if (gx#stx-pair? _e67656772_)
                         (let ((_e67686780_ (gx#syntax-e _e67656772_)))
                           (let ((_hd67696783_ (##car _e67686780_))
                                 (_tl67706785_ (##cdr _e67686780_)))
                             (let ((_clauses6788_ _tl67706785_))
                               (if (gx#stx-list? _clauses6788_)
                                   (gx#core-cons
                                    '%#case-lambda
                                    (gx#stx-map1 _generate6764_ _clauses6788_))
                                   (_E67676776_)))))
                         (_E67676776_)))))
              (let () (_E67666790_))))))))
  (begin
    (define gx#macro-expand-let-values__opt-lambda6661
      (lambda (_stx6663_ _form6664_)
        (let ((_generate6666_
               (lambda (_bind6709_)
                 (let ((_e67106720_ _bind6709_))
                   (let ((_E67126724_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; malformed binding"
                             _stx6663_
                             _bind6709_))))
                     (let ((_E67116748_
                            (lambda ()
                              (if (gx#stx-pair? _e67106720_)
                                  (let ((_e67136728_
                                         (gx#syntax-e _e67106720_)))
                                    (let ((_hd67146731_ (##car _e67136728_))
                                          (_tl67156733_ (##cdr _e67136728_)))
                                      (let ((_ids6736_ _hd67146731_))
                                        (if (gx#stx-pair? _tl67156733_)
                                            (let ((_e67166738_
                                                   (gx#syntax-e _tl67156733_)))
                                              (let ((_hd67176741_
                                                     (##car _e67166738_))
                                                    (_tl67186743_
                                                     (##cdr _e67166738_)))
                                                (let ((_expr6746_
                                                       _hd67176741_))
                                                  (if (gx#stx-null?
                                                       _tl67186743_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids6736_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids6736_)
                        (cons _expr6746_ '()))
                  (_E67126724_))
              (_E67126724_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E67126724_)))))
                                  (_E67126724_)))))
                       (let () (_E67116748_))))))))
          (let ((_e66676677_ _stx6663_))
            (let ((_E66696681_
                   (lambda ()
                     (gx#raise-syntax-error '#f '"Bad syntax" _e66676677_))))
              (let ((_E66686705_
                     (lambda ()
                       (if (gx#stx-pair? _e66676677_)
                           (let ((_e66706685_ (gx#syntax-e _e66676677_)))
                             (let ((_hd66716688_ (##car _e66706685_))
                                   (_tl66726690_ (##cdr _e66706685_)))
                               (if (gx#stx-pair? _tl66726690_)
                                   (let ((_e66736693_
                                          (gx#syntax-e _tl66726690_)))
                                     (let ((_hd66746696_ (##car _e66736693_))
                                           (_tl66756698_ (##cdr _e66736693_)))
                                       (let ((_hd6701_ _hd66746696_))
                                         (let ((_body6703_ _tl66756698_))
                                           (if (if (gx#stx-list? _hd6701_)
                                                   (if (gx#stx-list?
                                                        _body6703_)
                                                       (not (gx#stx-null?
                                                             _body6703_))
                                                       '#f)
                                                   '#f)
                                               (gx#core-cons*
                                                _form6664_
                                                (gx#stx-map1
                                                 _generate6666_
                                                 _hd6701_)
                                                _body6703_)
                                               (_E66696681_))))))
                                   (_E66696681_))))
                           (_E66696681_)))))
                (let () (_E66686705_))))))))
    (begin
      (define gx#macro-expand-let-values__0
        (lambda (_stx6755_)
          (let ((_form6757_ '%#let-values))
            (gx#macro-expand-let-values__opt-lambda6661
             _stx6755_
             _form6757_))))
      (define gx#macro-expand-let-values
        (lambda _g9107_
          (let ((_g9106_ (length _g9107_)))
            (cond ((fx= _g9106_ 1)
                   (apply gx#macro-expand-let-values__0 _g9107_))
                  ((fx= _g9106_ 2)
                   (apply gx#macro-expand-let-values__opt-lambda6661 _g9107_))
                  (else (error "No clause matching arguments" _g9107_))))))))
  (define gx#macro-expand-letrec-values
    (lambda (_stx6660_)
      (gx#macro-expand-let-values__opt-lambda6661 _stx6660_ '%#letrec-values)))
  (define gx#macro-expand-letrec*-values
    (lambda (_stx6658_)
      (gx#macro-expand-let-values__opt-lambda6661
       _stx6658_
       '%#letrec*-values)))
  (define gx#macro-expand-if
    (lambda (_stx6549_)
      (let ((_e65506576_ _stx6549_))
        (let ((_E65626580_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e65506576_))))
          (let ((_E65526622_
                 (lambda ()
                   (if (gx#stx-pair? _e65506576_)
                       (let ((_e65636584_ (gx#syntax-e _e65506576_)))
                         (let ((_hd65646587_ (##car _e65636584_))
                               (_tl65656589_ (##cdr _e65636584_)))
                           (if (gx#stx-pair? _tl65656589_)
                               (let ((_e65666592_ (gx#syntax-e _tl65656589_)))
                                 (let ((_hd65676595_ (##car _e65666592_))
                                       (_tl65686597_ (##cdr _e65666592_)))
                                   (let ((_test6600_ _hd65676595_))
                                     (if (gx#stx-pair? _tl65686597_)
                                         (let ((_e65696602_
                                                (gx#syntax-e _tl65686597_)))
                                           (let ((_hd65706605_
                                                  (##car _e65696602_))
                                                 (_tl65716607_
                                                  (##cdr _e65696602_)))
                                             (let ((_K6610_ _hd65706605_))
                                               (if (gx#stx-pair? _tl65716607_)
                                                   (let ((_e65726612_
                                                          (gx#syntax-e
                                                           _tl65716607_)))
                                                     (let ((_hd65736615_
                                                            (##car _e65726612_))
                                                           (_tl65746617_
                                                            (##cdr _e65726612_)))
                                                       (let ((_E6620_ _hd65736615_))
                                                         (if (gx#stx-null?
                                                              _tl65746617_)
                                                             (if '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-list '%#if _test6600_ _K6610_ _E6620_)
                         (_E65626580_))
                     (_E65626580_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E65626580_)))))
                                         (_E65626580_)))))
                               (_E65626580_))))
                       (_E65626580_)))))
            (let ((_E65516654_
                   (lambda ()
                     (if (gx#stx-pair? _e65506576_)
                         (let ((_e65536626_ (gx#syntax-e _e65506576_)))
                           (let ((_hd65546629_ (##car _e65536626_))
                                 (_tl65556631_ (##cdr _e65536626_)))
                             (if (gx#stx-pair? _tl65556631_)
                                 (let ((_e65566634_
                                        (gx#syntax-e _tl65556631_)))
                                   (let ((_hd65576637_ (##car _e65566634_))
                                         (_tl65586639_ (##cdr _e65566634_)))
                                     (let ((_test6642_ _hd65576637_))
                                       (if (gx#stx-pair? _tl65586639_)
                                           (let ((_e65596644_
                                                  (gx#syntax-e _tl65586639_)))
                                             (let ((_hd65606647_
                                                    (##car _e65596644_))
                                                   (_tl65616649_
                                                    (##cdr _e65596644_)))
                                               (let ((_K6652_ _hd65606647_))
                                                 (if (gx#stx-null?
                                                      _tl65616649_)
                                                     (if '#t
                                                         (gx#core-list
                                                          '%#if
                                                          _test6642_
                                                          _K6652_
                                                          '#!void)
                                                         (_E65526622_))
                                                     (_E65526622_)))))
                                           (_E65526622_)))))
                                 (_E65526622_))))
                         (_E65526622_)))))
              (let () (_E65516654_))))))))
  (define gx#free-identifier=?
    (lambda (_xid6537_ _yid6538_)
      (let ((_xe6540_ (gx#resolve-identifier__0 _xid6537_))
            (_ye6541_ (gx#resolve-identifier__0 _yid6538_)))
        (if (if _xe6540_ _ye6541_ '#f)
            (let ((_$e6543_ (eq? _xe6540_ _ye6541_)))
              (if _$e6543_
                  _$e6543_
                  (if (##structure-instance-of? _xe6540_ 'gx#binding::t)
                      (if (##structure-instance-of? _ye6541_ 'gx#binding::t)
                          (eq? (##structure-ref _xe6540_ '1 gx#binding::t '#f)
                               (##structure-ref _ye6541_ '1 gx#binding::t '#f))
                          '#f)
                      '#f)))
            (if (let ((_$e6546_ _xe6540_)) (if _$e6546_ _$e6546_ _ye6541_))
                '#f
                (gx#stx-eq? _xid6537_ _yid6538_))))))
  (define gx#bound-identifier=?
    (lambda (_xid6521_ _yid6522_)
      (let ((_context6524_
             (lambda (_e6535_)
               (if (##structure-direct-instance-of?
                    _e6535_
                    'gx#syntax-quote::t)
                   (##structure-ref _e6535_ '3 gx#syntax-quote::t '#f)
                   (gx#current-expander-context)))))
        (let ((_marks6525_
               (lambda (_e6533_)
                 (if (symbol? _e6533_)
                     '()
                     (if (##structure-direct-instance-of?
                          _e6533_
                          'gx#identifier-wrap::t)
                         (##structure-ref _e6533_ '3 gx#identifier-wrap::t '#f)
                         (##structure-ref
                          _e6533_
                          '4
                          gx#syntax-quote::t
                          '#f))))))
          (let ((_unwrap6526_
                 (lambda (_e6531_)
                   (if (symbol? _e6531_)
                       _e6531_
                       (gx#syntax-local-unwrap _e6531_)))))
            (let ((_x6528_ (_unwrap6526_ _xid6521_))
                  (_y6529_ (_unwrap6526_ _yid6522_)))
              (if (gx#stx-eq? _x6528_ _y6529_)
                  (if (eq? (_context6524_ _x6528_) (_context6524_ _y6529_))
                      (andmap eq? (_marks6525_ _x6528_) (_marks6525_ _y6529_))
                      '#f)
                  '#f)))))))
  (define gx#underscore?
    (lambda (_stx6519_)
      (if (gx#identifier? _stx6519_) (gx#core-identifier=? _stx6519_ '_) '#f)))
  (define gx#ellipsis?
    (lambda (_stx6517_)
      (if (gx#identifier? _stx6517_)
          (gx#core-identifier=? _stx6517_ '...)
          '#f)))
  (define gx#user-binding-identifier
    (lambda (_x6515_)
      (if (gx#identifier? _x6515_)
          (if (not (gx#underscore? _x6515_)) _x6515_ '#f)
          '#f)))
  (begin
    (define gx#check-duplicate-identifiers__opt-lambda6459
      (lambda (_stx6461_ _where6462_)
        ((letrec ((_lp6464_
                   (lambda (_rest6466_)
                     (let ((_rest64676475_ _rest6466_))
                       (let ((_E64706479_
                              (lambda ()
                                (error '"No clause matching" _rest64676475_))))
                         (let ((_else64696483_ (lambda () '#t)))
                           (let ((_K64716493_
                                  (lambda (_rest6486_ _hd6487_)
                                    (if (not (gx#identifier? _hd6487_))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad identifier"
                                         _where6462_
                                         _hd6487_)
                                        (if (find (lambda (_g64886490_)
                                                    (gx#bound-identifier=?
                                                     _g64886490_
                                                     _hd6487_))
                                                  _rest6486_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate identifier"
                                             _where6462_
                                             _hd6487_)
                                            (_lp6464_ _rest6486_))))))
                             (if (##pair? _rest64676475_)
                                 (let ((_hd64726496_ (##car _rest64676475_))
                                       (_tl64736498_ (##cdr _rest64676475_)))
                                   (let ((_hd6501_ _hd64726496_))
                                     (let ((_rest6503_ _tl64736498_))
                                       (_K64716493_ _rest6503_ _hd6501_))))
                                 (_else64696483_)))))))))
           _lp6464_)
         (gx#syntax->list _stx6461_))))
    (begin
      (define gx#check-duplicate-identifiers__0
        (lambda (_stx6508_)
          (let ((_where6510_ _stx6508_))
            (gx#check-duplicate-identifiers__opt-lambda6459
             _stx6508_
             _where6510_))))
      (define gx#check-duplicate-identifiers
        (lambda _g9109_
          (let ((_g9108_ (length _g9109_)))
            (cond ((fx= _g9108_ 1)
                   (apply gx#check-duplicate-identifiers__0 _g9109_))
                  ((fx= _g9108_ 2)
                   (apply gx#check-duplicate-identifiers__opt-lambda6459
                          _g9109_))
                  (else (error "No clause matching arguments" _g9109_))))))))
  (define gx#core-bind-values?
    (lambda (_stx6453_)
      (gx#stx-andmap
       (lambda (_x6455_)
         (let ((_$e6457_ (gx#identifier? _x6455_)))
           (if _$e6457_ _$e6457_ (gx#stx-false? _x6455_))))
       _stx6453_)))
  (begin
    (define gx#core-bind-values!__opt-lambda6415
      (lambda (_stx6417_ _rebind?6418_ _phi6419_ _ctx6420_)
        (gx#stx-for-each1
         (lambda (_id6422_)
           (if (gx#identifier? _id6422_)
               (gx#core-bind-runtime!__opt-lambda6354
                _id6422_
                _rebind?6418_
                _phi6419_
                _ctx6420_)
               '#!void))
         _stx6417_)))
    (begin
      (define gx#core-bind-values!__0
        (lambda (_stx6427_)
          (let ((_rebind?6429_ '#f))
            (let ((_phi6431_ (gx#current-expander-phi)))
              (let ((_ctx6433_ (gx#current-expander-context)))
                (gx#core-bind-values!__opt-lambda6415
                 _stx6427_
                 _rebind?6429_
                 _phi6431_
                 _ctx6433_))))))
      (define gx#core-bind-values!__1
        (lambda (_stx6435_ _rebind?6436_)
          (let ((_phi6438_ (gx#current-expander-phi)))
            (let ((_ctx6440_ (gx#current-expander-context)))
              (gx#core-bind-values!__opt-lambda6415
               _stx6435_
               _rebind?6436_
               _phi6438_
               _ctx6440_)))))
      (define gx#core-bind-values!__2
        (lambda (_stx6442_ _rebind?6443_ _phi6444_)
          (let ((_ctx6446_ (gx#current-expander-context)))
            (gx#core-bind-values!__opt-lambda6415
             _stx6442_
             _rebind?6443_
             _phi6444_
             _ctx6446_))))
      (define gx#core-bind-values!
        (lambda _g9111_
          (let ((_g9110_ (length _g9111_)))
            (cond ((fx= _g9110_ 1) (apply gx#core-bind-values!__0 _g9111_))
                  ((fx= _g9110_ 2) (apply gx#core-bind-values!__1 _g9111_))
                  ((fx= _g9110_ 3) (apply gx#core-bind-values!__2 _g9111_))
                  ((fx= _g9110_ 4)
                   (apply gx#core-bind-values!__opt-lambda6415 _g9111_))
                  (else (error "No clause matching arguments" _g9111_))))))))
  (define gx#core-quote-bind-values
    (lambda (_stx6412_)
      (gx#stx-map1
       (lambda (_x6414_)
         (if (gx#identifier? _x6414_) (gx#core-quote-syntax__0 _x6414_) '#f))
       _stx6412_)))
  (define gx#core-runtime-ref?
    (lambda (_stx6405_)
      (if (gx#identifier? _stx6405_)
          (let ((_bind6407_ (gx#resolve-identifier__0 _stx6405_)))
            (let ((_$e6409_ (not _bind6407_)))
              (if _$e6409_
                  _$e6409_
                  (##structure-instance-of?
                   _bind6407_
                   'gx#runtime-binding::t))))
          '#f)))
  (define gx#core-quote-runtime-ref
    (lambda (_id6397_ _form6398_)
      (let ((_bind6400_ (gx#resolve-identifier__0 _id6397_)))
        (if (##structure-instance-of? _bind6400_ 'gx#runtime-binding::t)
            (gx#core-quote-syntax__0 _id6397_)
            (if (not _bind6400_)
                (if (let ((_$e6402_
                           (gx#core-context-rebind?__opt-lambda4271
                            (gx#core-context-top__0))))
                      (if _$e6402_
                          _$e6402_
                          (gx#core-extern-symbol? (gx#stx-e _id6397_))))
                    (gx#core-quote-syntax__0 _id6397_)
                    (gx#raise-syntax-error
                     '#f
                     '"Reference to unbound identifier"
                     _form6398_
                     _id6397_))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; not a runtime binding"
                 _form6398_
                 _id6397_))))))
  (begin
    (define gx#core-bind-runtime!__opt-lambda6354
      (lambda (_id6356_ _rebind?6357_ _phi6358_ _ctx6359_)
        (let ((_key6361_ (gx#core-identifier-key _id6356_)))
          (let ((_eid6363_
                 (gx#make-binding-id__opt-lambda6121
                  _key6361_
                  '#f
                  _phi6358_
                  _ctx6359_)))
            (let ((_bind6365_
                   (if (##structure-instance-of?
                        _ctx6359_
                        'gx#module-context::t)
                       (##structure
                        gx#module-binding::t
                        _eid6363_
                        _key6361_
                        _phi6358_
                        _ctx6359_)
                       (if (##structure-instance-of?
                            _ctx6359_
                            'gx#top-context::t)
                           (##structure
                            gx#top-binding::t
                            _eid6363_
                            _key6361_
                            _phi6358_)
                           (if (##structure-instance-of?
                                _ctx6359_
                                'gx#local-context::t)
                               (##structure
                                gx#local-binding::t
                                _eid6363_
                                _key6361_
                                _phi6358_)
                               (##structure
                                gx#runtime-binding::t
                                _eid6363_
                                _key6361_
                                _phi6358_))))))
              (let ()
                (gx#bind-identifier!__opt-lambda4718
                 _id6356_
                 _bind6365_
                 _rebind?6357_
                 _phi6358_
                 _ctx6359_)))))))
    (begin
      (define gx#core-bind-runtime!__0
        (lambda (_id6371_)
          (let ((_rebind?6373_ '#f))
            (let ((_phi6375_ (gx#current-expander-phi)))
              (let ((_ctx6377_ (gx#current-expander-context)))
                (gx#core-bind-runtime!__opt-lambda6354
                 _id6371_
                 _rebind?6373_
                 _phi6375_
                 _ctx6377_))))))
      (define gx#core-bind-runtime!__1
        (lambda (_id6379_ _rebind?6380_)
          (let ((_phi6382_ (gx#current-expander-phi)))
            (let ((_ctx6384_ (gx#current-expander-context)))
              (gx#core-bind-runtime!__opt-lambda6354
               _id6379_
               _rebind?6380_
               _phi6382_
               _ctx6384_)))))
      (define gx#core-bind-runtime!__2
        (lambda (_id6386_ _rebind?6387_ _phi6388_)
          (let ((_ctx6390_ (gx#current-expander-context)))
            (gx#core-bind-runtime!__opt-lambda6354
             _id6386_
             _rebind?6387_
             _phi6388_
             _ctx6390_))))
      (define gx#core-bind-runtime!
        (lambda _g9113_
          (let ((_g9112_ (length _g9113_)))
            (cond ((fx= _g9112_ 1) (apply gx#core-bind-runtime!__0 _g9113_))
                  ((fx= _g9112_ 2) (apply gx#core-bind-runtime!__1 _g9113_))
                  ((fx= _g9112_ 3) (apply gx#core-bind-runtime!__2 _g9113_))
                  ((fx= _g9112_ 4)
                   (apply gx#core-bind-runtime!__opt-lambda6354 _g9113_))
                  (else (error "No clause matching arguments" _g9113_))))))))
  (begin
    (define gx#core-bind-runtime-reference!__opt-lambda6309
      (lambda (_id6311_ _eid6312_ _rebind?6313_ _phi6314_ _ctx6315_)
        (let ((_key6317_ (gx#core-identifier-key _id6311_)))
          (let ((_bind6319_
                 (if (##structure-instance-of? _ctx6315_ 'gx#module-context::t)
                     (##structure
                      gx#module-binding::t
                      _eid6312_
                      _key6317_
                      _phi6314_
                      _ctx6315_)
                     (if (##structure-instance-of?
                          _ctx6315_
                          'gx#top-context::t)
                         (##structure
                          gx#top-binding::t
                          _eid6312_
                          _key6317_
                          _phi6314_)
                         (##structure
                          gx#runtime-binding::t
                          _eid6312_
                          _key6317_
                          _phi6314_)))))
            (let ()
              (gx#bind-identifier!__opt-lambda4718
               _id6311_
               _bind6319_
               _rebind?6313_
               _phi6314_
               _ctx6315_))))))
    (begin
      (define gx#core-bind-runtime-reference!__0
        (lambda (_id6325_ _eid6326_)
          (let ((_rebind?6328_ '#f))
            (let ((_phi6330_ (gx#current-expander-phi)))
              (let ((_ctx6332_ (gx#current-expander-context)))
                (gx#core-bind-runtime-reference!__opt-lambda6309
                 _id6325_
                 _eid6326_
                 _rebind?6328_
                 _phi6330_
                 _ctx6332_))))))
      (define gx#core-bind-runtime-reference!__1
        (lambda (_id6334_ _eid6335_ _rebind?6336_)
          (let ((_phi6338_ (gx#current-expander-phi)))
            (let ((_ctx6340_ (gx#current-expander-context)))
              (gx#core-bind-runtime-reference!__opt-lambda6309
               _id6334_
               _eid6335_
               _rebind?6336_
               _phi6338_
               _ctx6340_)))))
      (define gx#core-bind-runtime-reference!__2
        (lambda (_id6342_ _eid6343_ _rebind?6344_ _phi6345_)
          (let ((_ctx6347_ (gx#current-expander-context)))
            (gx#core-bind-runtime-reference!__opt-lambda6309
             _id6342_
             _eid6343_
             _rebind?6344_
             _phi6345_
             _ctx6347_))))
      (define gx#core-bind-runtime-reference!
        (lambda _g9115_
          (let ((_g9114_ (length _g9115_)))
            (cond ((fx= _g9114_ 2)
                   (apply gx#core-bind-runtime-reference!__0 _g9115_))
                  ((fx= _g9114_ 3)
                   (apply gx#core-bind-runtime-reference!__1 _g9115_))
                  ((fx= _g9114_ 4)
                   (apply gx#core-bind-runtime-reference!__2 _g9115_))
                  ((fx= _g9114_ 5)
                   (apply gx#core-bind-runtime-reference!__opt-lambda6309
                          _g9115_))
                  (else (error "No clause matching arguments" _g9115_))))))))
  (begin
    (define gx#core-bind-extern!__opt-lambda6269
      (lambda (_id6271_ _eid6272_ _rebind?6273_ _phi6274_ _ctx6275_)
        (gx#bind-identifier!__opt-lambda4718
         _id6271_
         (##structure
          gx#extern-binding::t
          _eid6272_
          (gx#core-identifier-key _id6271_)
          _phi6274_)
         _rebind?6273_
         _phi6274_
         _ctx6275_)))
    (begin
      (define gx#core-bind-extern!__0
        (lambda (_id6280_ _eid6281_)
          (let ((_rebind?6283_ '#f))
            (let ((_phi6285_ (gx#current-expander-phi)))
              (let ((_ctx6287_ (gx#current-expander-context)))
                (gx#core-bind-extern!__opt-lambda6269
                 _id6280_
                 _eid6281_
                 _rebind?6283_
                 _phi6285_
                 _ctx6287_))))))
      (define gx#core-bind-extern!__1
        (lambda (_id6289_ _eid6290_ _rebind?6291_)
          (let ((_phi6293_ (gx#current-expander-phi)))
            (let ((_ctx6295_ (gx#current-expander-context)))
              (gx#core-bind-extern!__opt-lambda6269
               _id6289_
               _eid6290_
               _rebind?6291_
               _phi6293_
               _ctx6295_)))))
      (define gx#core-bind-extern!__2
        (lambda (_id6297_ _eid6298_ _rebind?6299_ _phi6300_)
          (let ((_ctx6302_ (gx#current-expander-context)))
            (gx#core-bind-extern!__opt-lambda6269
             _id6297_
             _eid6298_
             _rebind?6299_
             _phi6300_
             _ctx6302_))))
      (define gx#core-bind-extern!
        (lambda _g9117_
          (let ((_g9116_ (length _g9117_)))
            (cond ((fx= _g9116_ 2) (apply gx#core-bind-extern!__0 _g9117_))
                  ((fx= _g9116_ 3) (apply gx#core-bind-extern!__1 _g9117_))
                  ((fx= _g9116_ 4) (apply gx#core-bind-extern!__2 _g9117_))
                  ((fx= _g9116_ 5)
                   (apply gx#core-bind-extern!__opt-lambda6269 _g9117_))
                  (else (error "No clause matching arguments" _g9117_))))))))
  (begin
    (define gx#core-bind-syntax!__opt-lambda6223
      (lambda (_id6225_ _e6226_ _rebind?6227_ _phi6228_ _ctx6229_)
        (gx#bind-identifier!__opt-lambda4718
         _id6225_
         (let ((_key6234_ (gx#core-identifier-key _id6225_))
               (_e6235_ (if (let ((_$e6231_
                                   (##structure-instance-of?
                                    _e6226_
                                    'gx#expander::t)))
                              (if _$e6231_
                                  _$e6231_
                                  (##structure-instance-of?
                                   _e6226_
                                   'gx#expander-context::t)))
                            _e6226_
                            (##structure
                             gx#user-expander::t
                             _e6226_
                             _ctx6229_
                             _phi6228_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__opt-lambda6121
             _key6234_
             '#t
             _phi6228_
             _ctx6229_)
            _key6234_
            _phi6228_
            _e6235_))
         _rebind?6227_
         _phi6228_
         _ctx6229_)))
    (begin
      (define gx#core-bind-syntax!__0
        (lambda (_id6240_ _e6241_)
          (let ((_rebind?6243_ '#f))
            (let ((_phi6245_ (gx#current-expander-phi)))
              (let ((_ctx6247_ (gx#current-expander-context)))
                (gx#core-bind-syntax!__opt-lambda6223
                 _id6240_
                 _e6241_
                 _rebind?6243_
                 _phi6245_
                 _ctx6247_))))))
      (define gx#core-bind-syntax!__1
        (lambda (_id6249_ _e6250_ _rebind?6251_)
          (let ((_phi6253_ (gx#current-expander-phi)))
            (let ((_ctx6255_ (gx#current-expander-context)))
              (gx#core-bind-syntax!__opt-lambda6223
               _id6249_
               _e6250_
               _rebind?6251_
               _phi6253_
               _ctx6255_)))))
      (define gx#core-bind-syntax!__2
        (lambda (_id6257_ _e6258_ _rebind?6259_ _phi6260_)
          (let ((_ctx6262_ (gx#current-expander-context)))
            (gx#core-bind-syntax!__opt-lambda6223
             _id6257_
             _e6258_
             _rebind?6259_
             _phi6260_
             _ctx6262_))))
      (define gx#core-bind-syntax!
        (lambda _g9119_
          (let ((_g9118_ (length _g9119_)))
            (cond ((fx= _g9118_ 2) (apply gx#core-bind-syntax!__0 _g9119_))
                  ((fx= _g9118_ 3) (apply gx#core-bind-syntax!__1 _g9119_))
                  ((fx= _g9118_ 4) (apply gx#core-bind-syntax!__2 _g9119_))
                  ((fx= _g9118_ 5)
                   (apply gx#core-bind-syntax!__opt-lambda6223 _g9119_))
                  (else (error "No clause matching arguments" _g9119_))))))))
  (begin
    (define gx#core-bind-root-syntax!__opt-lambda6206
      (lambda (_id6208_ _e6209_ _rebind?6210_)
        (gx#core-bind-syntax!__opt-lambda6223
         _id6208_
         _e6209_
         _rebind?6210_
         '0
         (gx#core-context-root__0))))
    (begin
      (define gx#core-bind-root-syntax!__0
        (lambda (_id6215_ _e6216_)
          (let ((_rebind?6218_ '#f))
            (gx#core-bind-root-syntax!__opt-lambda6206
             _id6215_
             _e6216_
             _rebind?6218_))))
      (define gx#core-bind-root-syntax!
        (lambda _g9121_
          (let ((_g9120_ (length _g9121_)))
            (cond ((fx= _g9120_ 2)
                   (apply gx#core-bind-root-syntax!__0 _g9121_))
                  ((fx= _g9120_ 3)
                   (apply gx#core-bind-root-syntax!__opt-lambda6206 _g9121_))
                  (else (error "No clause matching arguments" _g9121_))))))))
  (begin
    (define gx#core-bind-alias!__opt-lambda6164
      (lambda (_id6166_ _alias-id6167_ _rebind?6168_ _phi6169_ _ctx6170_)
        (gx#bind-identifier!__opt-lambda4718
         _id6166_
         (let ((_key6172_ (gx#core-identifier-key _id6166_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__opt-lambda6121
             _key6172_
             '#t
             _phi6169_
             _ctx6170_)
            _key6172_
            _phi6169_
            _alias-id6167_))
         _rebind?6168_
         _phi6169_
         _ctx6170_)))
    (begin
      (define gx#core-bind-alias!__0
        (lambda (_id6177_ _alias-id6178_)
          (let ((_rebind?6180_ '#f))
            (let ((_phi6182_ (gx#current-expander-phi)))
              (let ((_ctx6184_ (gx#current-expander-context)))
                (gx#core-bind-alias!__opt-lambda6164
                 _id6177_
                 _alias-id6178_
                 _rebind?6180_
                 _phi6182_
                 _ctx6184_))))))
      (define gx#core-bind-alias!__1
        (lambda (_id6186_ _alias-id6187_ _rebind?6188_)
          (let ((_phi6190_ (gx#current-expander-phi)))
            (let ((_ctx6192_ (gx#current-expander-context)))
              (gx#core-bind-alias!__opt-lambda6164
               _id6186_
               _alias-id6187_
               _rebind?6188_
               _phi6190_
               _ctx6192_)))))
      (define gx#core-bind-alias!__2
        (lambda (_id6194_ _alias-id6195_ _rebind?6196_ _phi6197_)
          (let ((_ctx6199_ (gx#current-expander-context)))
            (gx#core-bind-alias!__opt-lambda6164
             _id6194_
             _alias-id6195_
             _rebind?6196_
             _phi6197_
             _ctx6199_))))
      (define gx#core-bind-alias!
        (lambda _g9123_
          (let ((_g9122_ (length _g9123_)))
            (cond ((fx= _g9122_ 2) (apply gx#core-bind-alias!__0 _g9123_))
                  ((fx= _g9122_ 3) (apply gx#core-bind-alias!__1 _g9123_))
                  ((fx= _g9122_ 4) (apply gx#core-bind-alias!__2 _g9123_))
                  ((fx= _g9122_ 5)
                   (apply gx#core-bind-alias!__opt-lambda6164 _g9123_))
                  (else (error "No clause matching arguments" _g9123_))))))))
  (begin
    (define gx#make-binding-id__opt-lambda6121
      (lambda (_key6123_ _syntax?6124_ _phi6125_ _ctx6126_)
        (if (uninterned-symbol? _key6123_)
            (gensym 'L)
            (if (pair? _key6123_)
                (gensym (car _key6123_))
                (if (##structure-instance-of? _ctx6126_ 'gx#top-context::t)
                    (let ((_ns6128_
                           (gx#core-context-namespace__opt-lambda4254
                            _ctx6126_)))
                      (if (if (fxzero? _phi6125_) (not _syntax?6124_) '#f)
                          (if _ns6128_
                              (make-symbol _ns6128_ '"#" _key6123_)
                              _key6123_)
                          (if _syntax?6124_
                              (make-symbol
                               (let ((_$e6130_ _ns6128_))
                                 (if _$e6130_ _$e6130_ '""))
                               '"[:"
                               (number->string _phi6125_)
                               '":]#"
                               _key6123_)
                              (make-symbol
                               (let ((_$e6133_ _ns6128_))
                                 (if _$e6133_ _$e6133_ '""))
                               '"["
                               (number->string _phi6125_)
                               '"]#"
                               _key6123_))))
                    (gensym _key6123_))))))
    (begin
      (define gx#make-binding-id__0
        (lambda (_key6139_)
          (let ((_syntax?6141_ '#f))
            (let ((_phi6143_ (gx#current-expander-phi)))
              (let ((_ctx6145_ (gx#current-expander-context)))
                (gx#make-binding-id__opt-lambda6121
                 _key6139_
                 _syntax?6141_
                 _phi6143_
                 _ctx6145_))))))
      (define gx#make-binding-id__1
        (lambda (_key6147_ _syntax?6148_)
          (let ((_phi6150_ (gx#current-expander-phi)))
            (let ((_ctx6152_ (gx#current-expander-context)))
              (gx#make-binding-id__opt-lambda6121
               _key6147_
               _syntax?6148_
               _phi6150_
               _ctx6152_)))))
      (define gx#make-binding-id__2
        (lambda (_key6154_ _syntax?6155_ _phi6156_)
          (let ((_ctx6158_ (gx#current-expander-context)))
            (gx#make-binding-id__opt-lambda6121
             _key6154_
             _syntax?6155_
             _phi6156_
             _ctx6158_))))
      (define gx#make-binding-id
        (lambda _g9125_
          (let ((_g9124_ (length _g9125_)))
            (cond ((fx= _g9124_ 1) (apply gx#make-binding-id__0 _g9125_))
                  ((fx= _g9124_ 2) (apply gx#make-binding-id__1 _g9125_))
                  ((fx= _g9124_ 3) (apply gx#make-binding-id__2 _g9125_))
                  ((fx= _g9124_ 4)
                   (apply gx#make-binding-id__opt-lambda6121 _g9125_))
                  (else (error "No clause matching arguments" _g9125_)))))))))
