(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#core-expand-begin%
    (lambda (_stx10993_)
      (letrec ((_expand-special10995_
                (lambda (_hd10997_ _K10998_ _rest10999_ _r11000_)
                  (_K10998_
                   _rest10999_
                   (cons (gx#core-expand-top _hd10997_) _r11000_)))))
        (gx#core-expand-block__0 _stx10993_ _expand-special10995_))))
  (define gx#core-expand-begin-syntax%
    (lambda (_stx10746_)
      (letrec ((_expand-special10748_
                (lambda (_hd10868_ _K10869_ _rest10870_ _r10871_)
                  (let* ((_K10875_
                          (lambda (_e10873_)
                            (_K10869_ _rest10870_ (cons _e10873_ _r10871_))))
                         (_e1087610905_ _hd10868_)
                         (_E1090010909_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e1087610905_)))
                         (_E1089610921_
                          (lambda ()
                            (if (gx#stx-pair? _e1087610905_)
                                (let ((_e1090110913_
                                       (gx#syntax-e _e1087610905_)))
                                  (let ((_hd1090210916_ (##car _e1090110913_))
                                        (_tl1090310918_ (##cdr _e1090110913_)))
                                    (if (if (gx#identifier? _hd1090210916_)
                                            (gx#core-identifier=?
                                             _hd1090210916_
                                             '%#define-runtime)
                                            '#f)
                                        (if '#t
                                            (_K10875_
                                             (gx#core-expand-define-runtime%
                                              _hd10868_))
                                            (_E1090010909_))
                                        (_E1090010909_))))
                                (_E1090010909_))))
                         (_E1089210933_
                          (lambda ()
                            (if (gx#stx-pair? _e1087610905_)
                                (let ((_e1089710925_
                                       (gx#syntax-e _e1087610905_)))
                                  (let ((_hd1089810928_ (##car _e1089710925_))
                                        (_tl1089910930_ (##cdr _e1089710925_)))
                                    (if (if (gx#identifier? _hd1089810928_)
                                            (gx#core-identifier=?
                                             _hd1089810928_
                                             '%#define-alias)
                                            '#f)
                                        (if '#t
                                            (_K10875_
                                             (gx#core-expand-define-alias%
                                              _hd10868_))
                                            (_E1089610921_))
                                        (_E1089610921_))))
                                (_E1089610921_))))
                         (_E1088210945_
                          (lambda ()
                            (if (gx#stx-pair? _e1087610905_)
                                (let ((_e1089310937_
                                       (gx#syntax-e _e1087610905_)))
                                  (let ((_hd1089410940_ (##car _e1089310937_))
                                        (_tl1089510942_ (##cdr _e1089310937_)))
                                    (if (if (gx#identifier? _hd1089410940_)
                                            (gx#core-identifier=?
                                             _hd1089410940_
                                             '%#define-syntax)
                                            '#f)
                                        (if '#t
                                            (_K10875_
                                             (gx#core-expand-define-syntax%
                                              _hd10868_))
                                            (_E1089210933_))
                                        (_E1089210933_))))
                                (_E1089210933_))))
                         (_E1087810977_
                          (lambda ()
                            (if (gx#stx-pair? _e1087610905_)
                                (let ((_e1088310949_
                                       (gx#syntax-e _e1087610905_)))
                                  (let ((_hd1088410952_ (##car _e1088310949_))
                                        (_tl1088510954_ (##cdr _e1088310949_)))
                                    (if (if (gx#identifier? _hd1088410952_)
                                            (gx#core-identifier=?
                                             _hd1088410952_
                                             '%#define-values)
                                            '#f)
                                        (if (gx#stx-pair? _tl1088510954_)
                                            (let ((_e1088610957_
                                                   (gx#syntax-e
                                                    _tl1088510954_)))
                                              (let ((_hd1088710960_
                                                     (##car _e1088610957_))
                                                    (_tl1088810962_
                                                     (##cdr _e1088610957_)))
                                                (let ((_hd-bind10965_
                                                       _hd1088710960_))
                                                  (if (gx#stx-pair?
                                                       _tl1088810962_)
                                                      (let ((_e1088910967_
                                                             (gx#syntax-e
                                                              _tl1088810962_)))
                                                        (let ((_hd1089010970_
                                                               (##car _e1088910967_))
                                                              (_tl1089110972_
                                                               (##cdr _e1088910967_)))
                                                          (let ((_expr10975_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1089010970_))
                    (if (gx#stx-null? _tl1089110972_)
                        (if (gx#core-bind-values? _hd-bind10965_)
                            (begin
                              (gx#core-bind-values!__0 _hd-bind10965_)
                              (_K10875_ _hd10868_))
                            (_E1088210945_))
                        (_E1088210945_)))))
              (_E1088210945_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1088210945_))
                                        (_E1088210945_))))
                                (_E1088210945_))))
                         (_E1087710989_
                          (lambda ()
                            (if (gx#stx-pair? _e1087610905_)
                                (let ((_e1087910981_
                                       (gx#syntax-e _e1087610905_)))
                                  (let ((_hd1088010984_ (##car _e1087910981_))
                                        (_tl1088110986_ (##cdr _e1087910981_)))
                                    (if (if (gx#identifier? _hd1088010984_)
                                            (gx#core-identifier=?
                                             _hd1088010984_
                                             '%#begin-syntax)
                                            '#f)
                                        (if '#t
                                            (_K10875_
                                             (gx#core-expand-begin-syntax%
                                              _hd10868_))
                                            (_E1087810977_))
                                        (_E1087810977_))))
                                (_E1087810977_)))))
                    (_E1087710989_))))
               (_eval-body10749_
                (lambda (_rbody10757_)
                  (let _lp10759_ ((_rest10761_ _rbody10757_)
                                  (_body10762_ '())
                                  (_ebody10763_ '()))
                    (let* ((_rest1076410772_ _rest10761_)
                           (_else1076610780_
                            (lambda ()
                              (values _body10762_
                                      (gx#eval-syntax*
                                       (gx#core-quote-syntax__1
                                        (gx#core-cons '%#begin _ebody10763_)
                                        (gx#stx-source _stx10746_))))))
                           (_K1076810856_
                            (lambda (_rest10783_ _hd10784_)
                              (let* ((_e1078510802_ _hd10784_)
                                     (_E1079710806_
                                      (lambda ()
                                        (_lp10759_
                                         _rest10783_
                                         (cons _hd10784_ _body10762_)
                                         (cons _hd10784_ _ebody10763_))))
                                     (_E1078710818_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1078510802_)
                                            (let ((_e1079810810_
                                                   (gx#syntax-e
                                                    _e1078510802_)))
                                              (let ((_hd1079910813_
                                                     (##car _e1079810810_))
                                                    (_tl1080010815_
                                                     (##cdr _e1079810810_)))
                                                (if (if (gx#identifier?
                                                         _hd1079910813_)
                                                        (gx#core-identifier=?
                                                         _hd1079910813_
                                                         '%#begin-syntax)
                                                        '#f)
                                                    (if '#t
                                                        (_lp10759_
                                                         _rest10783_
                                                         (cons _hd10784_
                                                               _body10762_)
                                                         _ebody10763_)
                                                        (_E1079710806_))
                                                    (_E1079710806_))))
                                            (_E1079710806_))))
                                     (_E1078610852_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1078510802_)
                                            (let ((_e1078810822_
                                                   (gx#syntax-e
                                                    _e1078510802_)))
                                              (let ((_hd1078910825_
                                                     (##car _e1078810822_))
                                                    (_tl1079010827_
                                                     (##cdr _e1078810822_)))
                                                (if (if (gx#identifier?
                                                         _hd1078910825_)
                                                        (gx#core-identifier=?
                                                         _hd1078910825_
                                                         '%#define-values)
                                                        '#f)
                                                    (if (gx#stx-pair?
                                                         _tl1079010827_)
                                                        (let ((_e1079110830_
                                                               (gx#syntax-e
                                                                _tl1079010827_)))
                                                          (let ((_hd1079210833_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1079110830_))
                        (_tl1079310835_ (##cdr _e1079110830_)))
                    (let ((_hd-bind10838_ _hd1079210833_))
                      (if (gx#stx-pair? _tl1079310835_)
                          (let ((_e1079410840_ (gx#syntax-e _tl1079310835_)))
                            (let ((_hd1079510843_ (##car _e1079410840_))
                                  (_tl1079610845_ (##cdr _e1079410840_)))
                              (let ((_expr10848_ _hd1079510843_))
                                (if (gx#stx-null? _tl1079610845_)
                                    (if '#t
                                        (let ((_ehd10850_
                                               (gx#core-quote-syntax__1
                                                (cons (gx#core-quote-syntax__0
                                                       '%#define-values)
                                                      (cons (gx#core-quote-bind-values
                                                             _hd-bind10838_)
                                                            (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr10848_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#stx-source _hd10784_))))
                                          (_lp10759_
                                           _rest10783_
                                           (cons _ehd10850_ _body10762_)
                                           (cons _ehd10850_ _ebody10763_)))
                                        (_E1078710818_))
                                    (_E1078710818_)))))
                          (_E1078710818_)))))
                (_E1078710818_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1078710818_))))
                                            (_E1078710818_)))))
                                (_E1078610852_)))))
                      (if (##pair? _rest1076410772_)
                          (let ((_hd1076910859_ (##car _rest1076410772_))
                                (_tl1077010861_ (##cdr _rest1076410772_)))
                            (let* ((_hd10864_ _hd1076910859_)
                                   (_rest10866_ _tl1077010861_))
                              (_K1076810856_ _rest10866_ _hd10864_)))
                          (_else1076610780_)))))))
        (call-with-parameters
         (lambda ()
           (let* ((_rbody10752_
                   (gx#core-expand-block__1
                    _stx10746_
                    _expand-special10748_
                    '#f))
                  (_g11010_ (_eval-body10749_ _rbody10752_)))
             (begin
               (let ((_g11011_
                      (if (##values? _g11010_) (##vector-length _g11010_) 1)))
                 (if (not (##fx= _g11011_ 2))
                     (error "Context expects 2 values" _g11011_)))
               (let ((_expanded-body10754_ (##vector-ref _g11010_ 0))
                     (_value10755_ (##vector-ref _g11010_ 1)))
                 (gx#core-quote-syntax__1
                  (if (##structure-instance-of?
                       (gx#current-expander-context)
                       'gx#module-context::t)
                      (gx#core-cons '%#begin-syntax _expanded-body10754_)
                      (cons (gx#core-quote-syntax__0 '%#quote)
                            (cons _value10755_ '())))
                  (gx#stx-source _stx10746_))))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1)))))
  (define gx#core-expand-begin-foreign%
    (lambda (_stx10716_)
      (let* ((_e1071710724_ _stx10716_)
             (_E1071910728_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1071710724_)))
             (_E1071810742_
              (lambda ()
                (if (gx#stx-pair? _e1071710724_)
                    (let ((_e1072010732_ (gx#syntax-e _e1071710724_)))
                      (let ((_hd1072110735_ (##car _e1072010732_))
                            (_tl1072210737_ (##cdr _e1072010732_)))
                        (let ((_body10740_ _tl1072210737_))
                          (if (gx#stx-list? _body10740_)
                              (gx#core-quote-syntax__1
                               (gx#core-cons '%#begin-foreign _body10740_)
                               (gx#stx-source _stx10716_))
                              (_E1071910728_)))))
                    (_E1071910728_)))))
        (_E1071810742_))))
  (define gx#core-expand-begin-module%
    (lambda (_stx10714_)
      (gx#raise-syntax-error '#f '"Illegal expansion" _stx10714_)))
  (define gx#core-expand-begin-annotation%
    (lambda (_stx10660_)
      (let* ((_e1066110674_ _stx10660_)
             (_E1066310678_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1066110674_)))
             (_E1066210710_
              (lambda ()
                (if (gx#stx-pair? _e1066110674_)
                    (let ((_e1066410682_ (gx#syntax-e _e1066110674_)))
                      (let ((_hd1066510685_ (##car _e1066410682_))
                            (_tl1066610687_ (##cdr _e1066410682_)))
                        (if (gx#stx-pair? _tl1066610687_)
                            (let ((_e1066710690_ (gx#syntax-e _tl1066610687_)))
                              (let ((_hd1066810693_ (##car _e1066710690_))
                                    (_tl1066910695_ (##cdr _e1066710690_)))
                                (let ((_ann10698_ _hd1066810693_))
                                  (if (gx#stx-pair? _tl1066910695_)
                                      (let ((_e1067010700_
                                             (gx#syntax-e _tl1066910695_)))
                                        (let ((_hd1067110703_
                                               (##car _e1067010700_))
                                              (_tl1067210705_
                                               (##cdr _e1067010700_)))
                                          (let ((_expr10708_ _hd1067110703_))
                                            (if (gx#stx-null? _tl1067210705_)
                                                (if '#t
                                                    (gx#core-quote-syntax__1
                                                     (cons (gx#core-quote-syntax__0
                                                            '%#begin-annotation)
                                                           (cons _ann10698_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#core-expand-expression _expr10708_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gx#stx-source
                                                      _stx10660_))
                                                    (_E1066310678_))
                                                (_E1066310678_)))))
                                      (_E1066310678_)))))
                            (_E1066310678_))))
                    (_E1066310678_)))))
        (_E1066210710_))))
  (define gx#core-expand-local-block
    (lambda (_stx10384_ _body10385_)
      (letrec ((_expand-special10387_
                (lambda (_hd10655_ _K10656_ _rest10657_ _r10658_)
                  (_K10656_
                   '()
                   (cons (_expand-internal10388_ _hd10655_ _rest10657_)
                         _r10658_))))
               (_expand-internal10388_
                (lambda (_hd10651_ _rest10652_)
                  (call-with-parameters
                   (lambda ()
                     (_wrap-internal10390_
                      (gx#core-expand-block__1
                       (gx#stx-wrap-source
                        (cons '%#begin (cons _hd10651_ _rest10652_))
                        (gx#stx-source _stx10384_))
                       _expand-internal-special10389_
                       '#f)))
                   gx#current-expander-context
                   (let ((__obj11004 (make-object gx#local-context::t '5)))
                     (begin
                       (gx#local-context:::init!__0 __obj11004)
                       __obj11004)))))
               (_expand-internal-special10389_
                (lambda (_hd10546_ _K10547_ _rest10548_ _r10549_)
                  (let* ((_e1055010575_ _hd10546_)
                         (_E1057010579_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e1055010575_)))
                         (_E1056610591_
                          (lambda ()
                            (if (gx#stx-pair? _e1055010575_)
                                (let ((_e1057110583_
                                       (gx#syntax-e _e1055010575_)))
                                  (let ((_hd1057210586_ (##car _e1057110583_))
                                        (_tl1057310588_ (##cdr _e1057110583_)))
                                    (if (if (gx#identifier? _hd1057210586_)
                                            (gx#core-identifier=?
                                             _hd1057210586_
                                             '%#declare)
                                            '#f)
                                        (if '#t
                                            (_K10547_
                                             _rest10548_
                                             (cons (gx#core-expand-declare%
                                                    _hd10546_)
                                                   _r10549_))
                                            (_E1057010579_))
                                        (_E1057010579_))))
                                (_E1057010579_))))
                         (_E1056210603_
                          (lambda ()
                            (if (gx#stx-pair? _e1055010575_)
                                (let ((_e1056710595_
                                       (gx#syntax-e _e1055010575_)))
                                  (let ((_hd1056810598_ (##car _e1056710595_))
                                        (_tl1056910600_ (##cdr _e1056710595_)))
                                    (if (if (gx#identifier? _hd1056810598_)
                                            (gx#core-identifier=?
                                             _hd1056810598_
                                             '%#define-alias)
                                            '#f)
                                        (if '#t
                                            (begin
                                              (gx#core-expand-define-alias%
                                               _hd10546_)
                                              (_K10547_ _rest10548_ _r10549_))
                                            (_E1056610591_))
                                        (_E1056610591_))))
                                (_E1056610591_))))
                         (_E1055210615_
                          (lambda ()
                            (if (gx#stx-pair? _e1055010575_)
                                (let ((_e1056310607_
                                       (gx#syntax-e _e1055010575_)))
                                  (let ((_hd1056410610_ (##car _e1056310607_))
                                        (_tl1056510612_ (##cdr _e1056310607_)))
                                    (if (if (gx#identifier? _hd1056410610_)
                                            (gx#core-identifier=?
                                             _hd1056410610_
                                             '%#define-syntax)
                                            '#f)
                                        (if '#t
                                            (begin
                                              (gx#core-expand-define-syntax%
                                               _hd10546_)
                                              (_K10547_ _rest10548_ _r10549_))
                                            (_E1056210603_))
                                        (_E1056210603_))))
                                (_E1056210603_))))
                         (_E1055110647_
                          (lambda ()
                            (if (gx#stx-pair? _e1055010575_)
                                (let ((_e1055310619_
                                       (gx#syntax-e _e1055010575_)))
                                  (let ((_hd1055410622_ (##car _e1055310619_))
                                        (_tl1055510624_ (##cdr _e1055310619_)))
                                    (if (if (gx#identifier? _hd1055410622_)
                                            (gx#core-identifier=?
                                             _hd1055410622_
                                             '%#define-values)
                                            '#f)
                                        (if (gx#stx-pair? _tl1055510624_)
                                            (let ((_e1055610627_
                                                   (gx#syntax-e
                                                    _tl1055510624_)))
                                              (let ((_hd1055710630_
                                                     (##car _e1055610627_))
                                                    (_tl1055810632_
                                                     (##cdr _e1055610627_)))
                                                (let ((_hd-bind10635_
                                                       _hd1055710630_))
                                                  (if (gx#stx-pair?
                                                       _tl1055810632_)
                                                      (let ((_e1055910637_
                                                             (gx#syntax-e
                                                              _tl1055810632_)))
                                                        (let ((_hd1056010640_
                                                               (##car _e1055910637_))
                                                              (_tl1056110642_
                                                               (##cdr _e1055910637_)))
                                                          (let ((_expr10645_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1056010640_))
                    (if (gx#stx-null? _tl1056110642_)
                        (if (gx#core-bind-values? _hd-bind10635_)
                            (begin
                              (gx#core-bind-values!__0 _hd-bind10635_)
                              (_K10547_ _rest10548_ (cons _hd10546_ _r10549_)))
                            (_E1055210615_))
                        (_E1055210615_)))))
              (_E1055210615_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1055210615_))
                                        (_E1055210615_))))
                                (_E1055210615_)))))
                    (_E1055110647_))))
               (_wrap-internal10390_
                (lambda (_rbody10392_)
                  (let _lp10394_ ((_rest10396_ _rbody10392_)
                                  (_decls10397_ '())
                                  (_bind10398_ '())
                                  (_body10399_ '()))
                    (let* ((_e1040010407_ _rest10396_)
                           (_E1040210456_
                            (lambda ()
                              (let* ((_body10451_
                                      (let* ((_body1041010420_ _body10399_)
                                             (_else1041310428_
                                              (lambda ()
                                                (gx#core-quote-syntax__1
                                                 (gx#core-cons
                                                  '%#begin
                                                  _body10399_)
                                                 (gx#stx-source _stx10384_)))))
                                        (let ((_K1041810448_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _stx10384_)))
                                              (_K1041510434_
                                               (lambda (_expr10432_)
                                                 _expr10432_)))
                                          (let ((_try-match1041210444_
                                                 (lambda ()
                                                   (if (##pair? _body1041010420_)
                                                       (let ((_tl1041710439_
                                                              (##cdr _body1041010420_))
                                                             (_hd1041610437_
                                                              (##car _body1041010420_)))
                                                         (if (##null? _tl1041710439_)
                                                             (let ((_expr10442_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd1041610437_))
                       (_K1041510434_ _expr10442_))
                     (_else1041310428_)))
               (_else1041310428_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (##null? _body1041010420_)
                                                (let () (_K1041810448_))
                                                (_try-match1041210444_))))))
                                     (_body10453_
                                      (if (null? _bind10398_)
                                          _body10451_
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#letrec*-values)
                                                 (cons _bind10398_
                                                       (cons _body10451_ '())))
                                           (gx#stx-source _stx10384_)))))
                                (if (null? _decls10397_)
                                    _body10453_
                                    (gx#core-quote-syntax__1
                                     (cons (gx#core-quote-syntax__0
                                            '%#begin-annotation)
                                           (cons _decls10397_
                                                 (cons _body10453_ '())))
                                     (gx#stx-source _stx10384_))))))
                           (_E1040110542_
                            (lambda ()
                              (if (gx#stx-pair? _e1040010407_)
                                  (let ((_e1040310460_
                                         (gx#syntax-e _e1040010407_)))
                                    (let ((_hd1040410463_
                                           (##car _e1040310460_))
                                          (_tl1040510465_
                                           (##cdr _e1040310460_)))
                                      (let* ((_hd10468_ _hd1040410463_)
                                             (_rest10470_ _tl1040510465_))
                                        (if '#t
                                            (let* ((_e1047110488_ _hd10468_)
                                                   (_E1048310492_
                                                    (lambda ()
                                                      (if (null? _bind10398_)
                                                          (_lp10394_
                                                           _rest10470_
                                                           _decls10397_
                                                           _bind10398_
                                                           (cons _hd10468_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body10399_))
                  (_lp10394_
                   _rest10470_
                   _decls10397_
                   (cons (cons '#f (cons _hd10468_ '())) _bind10398_)
                   _body10399_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1047310506_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e1047110488_)
                                                          (let ((_e1048410496_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e1047110488_)))
                    (let ((_hd1048510499_ (##car _e1048410496_))
                          (_tl1048610501_ (##cdr _e1048410496_)))
                      (if (if (gx#identifier? _hd1048510499_)
                              (gx#core-identifier=? _hd1048510499_ '%#declare)
                              '#f)
                          (let ((_xdecls10504_ _tl1048610501_))
                            (if '#t
                                (_lp10394_
                                 _rest10470_
                                 (gx#stx-foldr cons _decls10397_ _xdecls10504_)
                                 _bind10398_
                                 _body10399_)
                                (_E1048310492_)))
                          (_E1048310492_))))
                  (_E1048310492_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1047210538_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e1047110488_)
                                                          (let ((_e1047410510_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e1047110488_)))
                    (let ((_hd1047510513_ (##car _e1047410510_))
                          (_tl1047610515_ (##cdr _e1047410510_)))
                      (if (if (gx#identifier? _hd1047510513_)
                              (gx#core-identifier=?
                               _hd1047510513_
                               '%#define-values)
                              '#f)
                          (if (gx#stx-pair? _tl1047610515_)
                              (let ((_e1047710518_
                                     (gx#syntax-e _tl1047610515_)))
                                (let ((_hd1047810521_ (##car _e1047710518_))
                                      (_tl1047910523_ (##cdr _e1047710518_)))
                                  (let ((_hd-bind10526_ _hd1047810521_))
                                    (if (gx#stx-pair? _tl1047910523_)
                                        (let ((_e1048010528_
                                               (gx#syntax-e _tl1047910523_)))
                                          (let ((_hd1048110531_
                                                 (##car _e1048010528_))
                                                (_tl1048210533_
                                                 (##cdr _e1048010528_)))
                                            (let ((_expr10536_ _hd1048110531_))
                                              (if (gx#stx-null? _tl1048210533_)
                                                  (if '#t
                                                      (_lp10394_
                                                       _rest10470_
                                                       _decls10397_
                                                       (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd-bind10526_)
                           (cons (gx#core-expand-expression _expr10536_) '()))
                     _bind10398_)
               _body10399_)
              (_E1047310506_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1047310506_)))))
                                        (_E1047310506_)))))
                              (_E1047310506_))
                          (_E1047310506_))))
                  (_E1047310506_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1047210538_))
                                            (_E1040210456_)))))
                                  (_E1040210456_)))))
                      (_E1040110542_))))))
        (gx#core-expand-block*
         (gx#stx-wrap-source
          (cons '%#begin _body10385_)
          (gx#stx-source _stx10384_))
         _expand-special10387_))))
  (define gx#core-expand-declare%
    (lambda (_stx10322_)
      (let* ((_e1032310330_ _stx10322_)
             (_E1032510334_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1032310330_)))
             (_E1032410380_
              (lambda ()
                (if (gx#stx-pair? _e1032310330_)
                    (let ((_e1032610338_ (gx#syntax-e _e1032310330_)))
                      (let ((_hd1032710341_ (##car _e1032610338_))
                            (_tl1032810343_ (##cdr _e1032610338_)))
                        (let ((_body10346_ _tl1032810343_))
                          (if (gx#stx-list? _body10346_)
                              (gx#core-quote-syntax__1
                               (gx#core-cons
                                '%#declare
                                (gx#stx-map1
                                 (lambda (_decl10348_)
                                   (let* ((_e1034910356_ _decl10348_)
                                          (_E1035110360_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _e1034910356_)))
                                          (_E1035010376_
                                           (lambda ()
                                             (if (gx#stx-pair? _e1034910356_)
                                                 (let ((_e1035210364_
                                                        (gx#syntax-e
                                                         _e1034910356_)))
                                                   (let ((_hd1035310367_
                                                          (##car _e1035210364_))
                                                         (_tl1035410369_
                                                          (##cdr _e1035210364_)))
                                                     (let* ((_head10372_
                                                             _hd1035310367_)
                                                            (_args10374_
                                                             _tl1035410369_))
                                                       (if (gx#stx-list?
                                                            _args10374_)
                                                           (gx#stx-map1
                                                            gx#core-quote-syntax
                                                            _decl10348_)
                                                           (_E1035110360_)))))
                                                 (_E1035110360_)))))
                                     (_E1035010376_)))
                                 _body10346_))
                               (gx#stx-source _stx10322_))
                              (_E1032510334_)))))
                    (_E1032510334_)))))
        (_E1032410380_))))
  (define gx#core-expand-extern%
    (lambda (_stx10206_)
      (let* ((_e1020710214_ _stx10206_)
             (_E1020910218_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1020710214_)))
             (_E1020810318_
              (lambda ()
                (if (gx#stx-pair? _e1020710214_)
                    (let ((_e1021010222_ (gx#syntax-e _e1020710214_)))
                      (let ((_hd1021110225_ (##car _e1021010222_))
                            (_tl1021210227_ (##cdr _e1021010222_)))
                        (let ((_body10230_ _tl1021210227_))
                          (if (gx#stx-list? _body10230_)
                              (begin
                                (gx#stx-for-each1
                                 (lambda (_bind10232_)
                                   (let* ((_e1023310243_ _bind10232_)
                                          (_E1023510247_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _e1023310243_)))
                                          (_E1023410271_
                                           (lambda ()
                                             (if (gx#stx-pair? _e1023310243_)
                                                 (let ((_e1023610251_
                                                        (gx#syntax-e
                                                         _e1023310243_)))
                                                   (let ((_hd1023710254_
                                                          (##car _e1023610251_))
                                                         (_tl1023810256_
                                                          (##cdr _e1023610251_)))
                                                     (let ((_id10259_
                                                            _hd1023710254_))
                                                       (if (gx#stx-pair?
                                                            _tl1023810256_)
                                                           (let ((_e1023910261_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl1023810256_)))
                     (let ((_hd1024010264_ (##car _e1023910261_))
                           (_tl1024110266_ (##cdr _e1023910261_)))
                       (let ((_eid10269_ _hd1024010264_))
                         (if (gx#stx-null? _tl1024110266_)
                             (if (if (gx#identifier? _id10259_)
                                     (gx#identifier? _eid10269_)
                                     '#f)
                                 (gx#core-bind-extern!__0
                                  _id10259_
                                  (gx#stx-e _eid10269_))
                                 (_E1023510247_))
                             (_E1023510247_)))))
                   (_E1023510247_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E1023510247_)))))
                                     (_E1023410271_)))
                                 _body10230_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#extern
                                  (gx#stx-map1
                                   (lambda (_bind10275_)
                                     (let* ((_e1027610286_ _bind10275_)
                                            (_E1027810290_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _e1027610286_)))
                                            (_E1027710314_
                                             (lambda ()
                                               (if (gx#stx-pair? _e1027610286_)
                                                   (let ((_e1027910294_
                                                          (gx#syntax-e
                                                           _e1027610286_)))
                                                     (let ((_hd1028010297_
                                                            (##car _e1027910294_))
                                                           (_tl1028110299_
                                                            (##cdr _e1027910294_)))
                                                       (let ((_id10302_
                                                              _hd1028010297_))
                                                         (if (gx#stx-pair?
                                                              _tl1028110299_)
                                                             (let ((_e1028210304_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl1028110299_)))
                       (let ((_hd1028310307_ (##car _e1028210304_))
                             (_tl1028410309_ (##cdr _e1028210304_)))
                         (let ((_eid10312_ _hd1028310307_))
                           (if (gx#stx-null? _tl1028410309_)
                               (if '#t
                                   (cons (gx#core-quote-syntax__0 _id10302_)
                                         (cons (gx#stx-e _eid10312_) '()))
                                   (_E1027810290_))
                               (_E1027810290_)))))
                     (_E1027810290_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1027810290_)))))
                                       (_E1027710314_)))
                                   _body10230_))
                                 (gx#stx-source _stx10206_)))
                              (_E1020910218_)))))
                    (_E1020910218_)))))
        (_E1020810318_))))
  (define gx#core-expand-define-values%
    (lambda (_stx10152_)
      (let* ((_e1015310166_ _stx10152_)
             (_E1015510170_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1015310166_)))
             (_E1015410202_
              (lambda ()
                (if (gx#stx-pair? _e1015310166_)
                    (let ((_e1015610174_ (gx#syntax-e _e1015310166_)))
                      (let ((_hd1015710177_ (##car _e1015610174_))
                            (_tl1015810179_ (##cdr _e1015610174_)))
                        (if (gx#stx-pair? _tl1015810179_)
                            (let ((_e1015910182_ (gx#syntax-e _tl1015810179_)))
                              (let ((_hd1016010185_ (##car _e1015910182_))
                                    (_tl1016110187_ (##cdr _e1015910182_)))
                                (let ((_hd10190_ _hd1016010185_))
                                  (if (gx#stx-pair? _tl1016110187_)
                                      (let ((_e1016210192_
                                             (gx#syntax-e _tl1016110187_)))
                                        (let ((_hd1016310195_
                                               (##car _e1016210192_))
                                              (_tl1016410197_
                                               (##cdr _e1016210192_)))
                                          (let ((_expr10200_ _hd1016310195_))
                                            (if (gx#stx-null? _tl1016410197_)
                                                (if (gx#core-bind-values?
                                                     _hd10190_)
                                                    (begin
                                                      (gx#core-bind-values!__0
                                                       _hd10190_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-values)
                                                             (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd10190_)
                           (cons (gx#core-expand-expression _expr10200_) '())))
               (gx#stx-source _stx10152_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1015510170_))
                                                (_E1015510170_)))))
                                      (_E1015510170_)))))
                            (_E1015510170_))))
                    (_E1015510170_)))))
        (_E1015410202_))))
  (define gx#core-expand-define-runtime%
    (lambda (_stx10098_)
      (let* ((_e1009910112_ _stx10098_)
             (_E1010110116_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1009910112_)))
             (_E1010010148_
              (lambda ()
                (if (gx#stx-pair? _e1009910112_)
                    (let ((_e1010210120_ (gx#syntax-e _e1009910112_)))
                      (let ((_hd1010310123_ (##car _e1010210120_))
                            (_tl1010410125_ (##cdr _e1010210120_)))
                        (if (gx#stx-pair? _tl1010410125_)
                            (let ((_e1010510128_ (gx#syntax-e _tl1010410125_)))
                              (let ((_hd1010610131_ (##car _e1010510128_))
                                    (_tl1010710133_ (##cdr _e1010510128_)))
                                (let ((_id10136_ _hd1010610131_))
                                  (if (gx#stx-pair? _tl1010710133_)
                                      (let ((_e1010810138_
                                             (gx#syntax-e _tl1010710133_)))
                                        (let ((_hd1010910141_
                                               (##car _e1010810138_))
                                              (_tl1011010143_
                                               (##cdr _e1010810138_)))
                                          (let ((_binding-id10146_
                                                 _hd1010910141_))
                                            (if (gx#stx-null? _tl1011010143_)
                                                (if (if (gx#identifier?
                                                         _id10136_)
                                                        (gx#identifier?
                                                         _binding-id10146_)
                                                        '#f)
                                                    (begin
                                                      (gx#core-bind-runtime-reference!__0
                                                       _id10136_
                                                       (gx#stx-e
                                                        _binding-id10146_))
                                                      (gx#core-quote-syntax__0
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-runtime)
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id10136_)
                           (cons (gx#core-quote-syntax__0 _binding-id10146_)
                                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1010110116_))
                                                (_E1010110116_)))))
                                      (_E1010110116_)))))
                            (_E1010110116_))))
                    (_E1010110116_)))))
        (_E1010010148_))))
  (define gx#core-expand-define-syntax%
    (lambda (_stx10041_)
      (let* ((_e1004210055_ _stx10041_)
             (_E1004410059_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1004210055_)))
             (_E1004310094_
              (lambda ()
                (if (gx#stx-pair? _e1004210055_)
                    (let ((_e1004510063_ (gx#syntax-e _e1004210055_)))
                      (let ((_hd1004610066_ (##car _e1004510063_))
                            (_tl1004710068_ (##cdr _e1004510063_)))
                        (if (gx#stx-pair? _tl1004710068_)
                            (let ((_e1004810071_ (gx#syntax-e _tl1004710068_)))
                              (let ((_hd1004910074_ (##car _e1004810071_))
                                    (_tl1005010076_ (##cdr _e1004810071_)))
                                (let ((_id10079_ _hd1004910074_))
                                  (if (gx#stx-pair? _tl1005010076_)
                                      (let ((_e1005110081_
                                             (gx#syntax-e _tl1005010076_)))
                                        (let ((_hd1005210084_
                                               (##car _e1005110081_))
                                              (_tl1005310086_
                                               (##cdr _e1005110081_)))
                                          (let ((_expr10089_ _hd1005210084_))
                                            (if (gx#stx-null? _tl1005310086_)
                                                (if (gx#identifier? _id10079_)
                                                    (let ((_g11012_
                                                           (gx#core-expand-expression+1
                                                            _expr10089_)))
                                                      (begin
                                                        (let ((_g11013_
                                                               (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g11012_)
                           (##vector-length _g11012_)
                           1)))
                  (if (not (##fx= _g11013_ 2))
                      (error "Context expects 2 values" _g11013_)))
                (let ((_e-stx10091_ (##vector-ref _g11012_ 0))
                      (_e10092_ (##vector-ref _g11012_ 1)))
                  (begin
                    (gx#core-bind-syntax!__0 _id10079_ _e10092_)
                    (gx#core-quote-syntax__1
                     (cons (gx#core-quote-syntax__0 '%#define-syntax)
                           (cons (gx#core-quote-syntax__0 _id10079_)
                                 (cons _e-stx10091_ '())))
                     (gx#stx-source _stx10041_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1004410059_))
                                                (_E1004410059_)))))
                                      (_E1004410059_)))))
                            (_E1004410059_))))
                    (_E1004410059_)))))
        (_E1004310094_))))
  (define gx#core-expand-define-alias%
    (lambda (_stx9985_)
      (let* ((_e99869999_ _stx9985_)
             (_E998810003_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e99869999_)))
             (_E998710037_
              (lambda ()
                (if (gx#stx-pair? _e99869999_)
                    (let ((_e998910007_ (gx#syntax-e _e99869999_)))
                      (let ((_hd999010010_ (##car _e998910007_))
                            (_tl999110012_ (##cdr _e998910007_)))
                        (if (gx#stx-pair? _tl999110012_)
                            (let ((_e999210015_ (gx#syntax-e _tl999110012_)))
                              (let ((_hd999310018_ (##car _e999210015_))
                                    (_tl999410020_ (##cdr _e999210015_)))
                                (let ((_id10023_ _hd999310018_))
                                  (if (gx#stx-pair? _tl999410020_)
                                      (let ((_e999510025_
                                             (gx#syntax-e _tl999410020_)))
                                        (let ((_hd999610028_
                                               (##car _e999510025_))
                                              (_tl999710030_
                                               (##cdr _e999510025_)))
                                          (let ((_alias-id10033_
                                                 _hd999610028_))
                                            (if (gx#stx-null? _tl999710030_)
                                                (if (if (gx#identifier?
                                                         _id10023_)
                                                        (gx#identifier?
                                                         _alias-id10033_)
                                                        '#f)
                                                    (let ((_alias-id10035_
                                                           (gx#core-quote-syntax__0
                                                            _alias-id10033_)))
                                                      (begin
                                                        (gx#core-bind-alias!__0
                                                         _id10023_
                                                         _alias-id10035_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id10023_)
                             (cons _alias-id10035_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E998810003_))
                                                (_E998810003_)))))
                                      (_E998810003_)))))
                            (_E998810003_))))
                    (_E998810003_)))))
        (_E998710037_))))
  (begin
    (define gx#core-expand-lambda%__%
      (lambda (_stx9928_ _wrap?9929_)
        (let* ((_e99309940_ _stx9928_)
               (_E99329944_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e99309940_)))
               (_E99319971_
                (lambda ()
                  (if (gx#stx-pair? _e99309940_)
                      (let ((_e99339948_ (gx#syntax-e _e99309940_)))
                        (let ((_hd99349951_ (##car _e99339948_))
                              (_tl99359953_ (##cdr _e99339948_)))
                          (if (gx#stx-pair? _tl99359953_)
                              (let ((_e99369956_ (gx#syntax-e _tl99359953_)))
                                (let ((_hd99379959_ (##car _e99369956_))
                                      (_tl99389961_ (##cdr _e99369956_)))
                                  (let* ((_hd9964_ _hd99379959_)
                                         (_body9966_ _tl99389961_))
                                    (if (gx#core-bind-values? _hd9964_)
                                        (call-with-parameters
                                         (lambda ()
                                           (begin
                                             (gx#core-bind-values!__0 _hd9964_)
                                             (let ((_body9969_
                                                    (cons (gx#core-quote-bind-values
                                                           _hd9964_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx9928_
                         _body9966_)
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if _wrap?9929_
                                                   (gx#core-quote-syntax__1
                                                    (gx#core-cons
                                                     '%#lambda
                                                     _body9969_)
                                                    (gx#stx-source _stx9928_))
                                                   _body9969_))))
                                         gx#current-expander-context
                                         (let ((__obj11005
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (begin
                                             (gx#local-context:::init!__0
                                              __obj11005)
                                             __obj11005)))
                                        (_E99329944_)))))
                              (_E99329944_))))
                      (_E99329944_)))))
          (_E99319971_))))
    (begin
      (define gx#core-expand-lambda%__0
        (lambda (_stx9978_)
          (let ((_wrap?9980_ '#t))
            (gx#core-expand-lambda%__% _stx9978_ _wrap?9980_))))
      (define gx#core-expand-lambda%
        (lambda _g11015_
          (let ((_g11014_ (length _g11015_)))
            (cond ((##fx= _g11014_ 1)
                   (apply gx#core-expand-lambda%__0 _g11015_))
                  ((##fx= _g11014_ 2)
                   (apply gx#core-expand-lambda%__% _g11015_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-lambda%
                    _g11015_))))))))
  (define gx#core-expand-case-lambda%
    (lambda (_stx9892_)
      (let* ((_e98939900_ _stx9892_)
             (_E98959904_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e98939900_)))
             (_E98949923_
              (lambda ()
                (if (gx#stx-pair? _e98939900_)
                    (let ((_e98969908_ (gx#syntax-e _e98939900_)))
                      (let ((_hd98979911_ (##car _e98969908_))
                            (_tl98989913_ (##cdr _e98969908_)))
                        (let ((_clauses9916_ _tl98989913_))
                          (if (gx#stx-list? _clauses9916_)
                              (gx#core-quote-syntax__1
                               (gx#core-cons
                                '%#case-lambda
                                (gx#stx-map1
                                 (lambda (_clause9918_)
                                   (gx#core-expand-lambda%__%
                                    (gx#stx-wrap-source
                                     (cons '%#case-lambda-clause _clause9918_)
                                     (let ((_$e9920_
                                            (gx#stx-source _clause9918_)))
                                       (if _$e9920_
                                           _$e9920_
                                           (gx#stx-source _stx9892_))))
                                    '#f))
                                 _clauses9916_))
                               (gx#stx-source _stx9892_))
                              (_E98959904_)))))
                    (_E98959904_)))))
        (_E98949923_))))
  (define gx#core-expand-let-values%
    (lambda (_stx9846_)
      (let* ((_e98479857_ _stx9846_)
             (_E98499861_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e98479857_)))
             (_E98489888_
              (lambda ()
                (if (gx#stx-pair? _e98479857_)
                    (let ((_e98509865_ (gx#syntax-e _e98479857_)))
                      (let ((_hd98519868_ (##car _e98509865_))
                            (_tl98529870_ (##cdr _e98509865_)))
                        (if (gx#stx-pair? _tl98529870_)
                            (let ((_e98539873_ (gx#syntax-e _tl98529870_)))
                              (let ((_hd98549876_ (##car _e98539873_))
                                    (_tl98559878_ (##cdr _e98539873_)))
                                (let* ((_hd9881_ _hd98549876_)
                                       (_body9883_ _tl98559878_))
                                  (if (gx#core-expand-let-bind? _hd9881_)
                                      (let ((_expressions9885_
                                             (gx#stx-map1
                                              gx#core-expand-let-bind-expression
                                              _hd9881_)))
                                        (call-with-parameters
                                         (lambda ()
                                           (begin
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd9881_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd9881_
                                                           _expressions9885_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx9846_
                         _body9883_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx9846_))))
                                         gx#current-expander-context
                                         (let ((__obj11006
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (begin
                                             (gx#local-context:::init!__0
                                              __obj11006)
                                             __obj11006))))
                                      (_E98499861_)))))
                            (_E98499861_))))
                    (_E98499861_)))))
        (_E98489888_))))
  (begin
    (define gx#core-expand-letrec-values%__%
      (lambda (_stx9791_ _form9792_)
        (let* ((_e97939803_ _stx9791_)
               (_E97959807_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e97939803_)))
               (_E97949832_
                (lambda ()
                  (if (gx#stx-pair? _e97939803_)
                      (let ((_e97969811_ (gx#syntax-e _e97939803_)))
                        (let ((_hd97979814_ (##car _e97969811_))
                              (_tl97989816_ (##cdr _e97969811_)))
                          (if (gx#stx-pair? _tl97989816_)
                              (let ((_e97999819_ (gx#syntax-e _tl97989816_)))
                                (let ((_hd98009822_ (##car _e97999819_))
                                      (_tl98019824_ (##cdr _e97999819_)))
                                  (let* ((_hd9827_ _hd98009822_)
                                         (_body9829_ _tl98019824_))
                                    (if (gx#core-expand-let-bind? _hd9827_)
                                        (call-with-parameters
                                         (lambda ()
                                           (begin
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd9827_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     _form9792_)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd9827_
                                                           (gx#stx-map1
                                                            gx#core-expand-let-bind-expression
                                                            _hd9827_))
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx9791_
                         _body9829_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx9791_))))
                                         gx#current-expander-context
                                         (let ((__obj11007
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (begin
                                             (gx#local-context:::init!__0
                                              __obj11007)
                                             __obj11007)))
                                        (_E97959807_)))))
                              (_E97959807_))))
                      (_E97959807_)))))
          (_E97949832_))))
    (begin
      (define gx#core-expand-letrec-values%__0
        (lambda (_stx9839_)
          (let ((_form9841_ '%#letrec-values))
            (gx#core-expand-letrec-values%__% _stx9839_ _form9841_))))
      (define gx#core-expand-letrec-values%
        (lambda _g11017_
          (let ((_g11016_ (length _g11017_)))
            (cond ((##fx= _g11016_ 1)
                   (apply gx#core-expand-letrec-values%__0 _g11017_))
                  ((##fx= _g11016_ 2)
                   (apply gx#core-expand-letrec-values%__% _g11017_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-letrec-values%
                    _g11017_))))))))
  (define gx#core-expand-letrec*-values%
    (lambda (_stx9788_)
      (gx#core-expand-letrec-values%__% _stx9788_ '%#letrec*-values)))
  (define gx#core-expand-let-bind?
    (lambda (_stx9745_)
      (if (gx#stx-list? _stx9745_)
          (gx#stx-andmap
           (lambda (_bind9747_)
             (let* ((_e97489758_ _bind9747_)
                    (_E97509762_ (lambda () '#f))
                    (_E97499784_
                     (lambda ()
                       (if (gx#stx-pair? _e97489758_)
                           (let ((_e97519766_ (gx#syntax-e _e97489758_)))
                             (let ((_hd97529769_ (##car _e97519766_))
                                   (_tl97539771_ (##cdr _e97519766_)))
                               (let ((_hd9774_ _hd97529769_))
                                 (if (gx#stx-pair? _tl97539771_)
                                     (let ((_e97549776_
                                            (gx#syntax-e _tl97539771_)))
                                       (let ((_hd97559779_ (##car _e97549776_))
                                             (_tl97569781_
                                              (##cdr _e97549776_)))
                                         (if (gx#stx-null? _tl97569781_)
                                             (if '#t
                                                 (gx#core-bind-values?
                                                  _hd9774_)
                                                 (_E97509762_))
                                             (_E97509762_))))
                                     (_E97509762_)))))
                           (_E97509762_)))))
               (_E97499784_)))
           _stx9745_)
          '#f)))
  (define gx#core-expand-let-bind-expression
    (lambda (_bind9704_)
      (let* ((_e97059715_ _bind9704_)
             (_E97079719_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e97059715_)))
             (_E97069741_
              (lambda ()
                (if (gx#stx-pair? _e97059715_)
                    (let ((_e97089723_ (gx#syntax-e _e97059715_)))
                      (let ((_hd97099726_ (##car _e97089723_))
                            (_tl97109728_ (##cdr _e97089723_)))
                        (if (gx#stx-pair? _tl97109728_)
                            (let ((_e97119731_ (gx#syntax-e _tl97109728_)))
                              (let ((_hd97129734_ (##car _e97119731_))
                                    (_tl97139736_ (##cdr _e97119731_)))
                                (let ((_expr9739_ _hd97129734_))
                                  (if (gx#stx-null? _tl97139736_)
                                      (if '#t
                                          (gx#core-expand-expression
                                           _expr9739_)
                                          (_E97079719_))
                                      (_E97079719_)))))
                            (_E97079719_))))
                    (_E97079719_)))))
        (_E97069741_))))
  (define gx#core-expand-let-bind-values!
    (lambda (_bind9663_)
      (let* ((_e96649674_ _bind9663_)
             (_E96669678_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e96649674_)))
             (_E96659700_
              (lambda ()
                (if (gx#stx-pair? _e96649674_)
                    (let ((_e96679682_ (gx#syntax-e _e96649674_)))
                      (let ((_hd96689685_ (##car _e96679682_))
                            (_tl96699687_ (##cdr _e96679682_)))
                        (let ((_hd9690_ _hd96689685_))
                          (if (gx#stx-pair? _tl96699687_)
                              (let ((_e96709692_ (gx#syntax-e _tl96699687_)))
                                (let ((_hd96719695_ (##car _e96709692_))
                                      (_tl96729697_ (##cdr _e96709692_)))
                                  (if (gx#stx-null? _tl96729697_)
                                      (if '#t
                                          (gx#core-bind-values!__0 _hd9690_)
                                          (_E96669678_))
                                      (_E96669678_))))
                              (_E96669678_)))))
                    (_E96669678_)))))
        (_E96659700_))))
  (define gx#core-expand-let-bind-quote
    (lambda (_bind9621_ _expr9622_)
      (let* ((_e96239633_ _bind9621_)
             (_E96259637_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e96239633_)))
             (_E96249659_
              (lambda ()
                (if (gx#stx-pair? _e96239633_)
                    (let ((_e96269641_ (gx#syntax-e _e96239633_)))
                      (let ((_hd96279644_ (##car _e96269641_))
                            (_tl96289646_ (##cdr _e96269641_)))
                        (let ((_hd9649_ _hd96279644_))
                          (if (gx#stx-pair? _tl96289646_)
                              (let ((_e96299651_ (gx#syntax-e _tl96289646_)))
                                (let ((_hd96309654_ (##car _e96299651_))
                                      (_tl96319656_ (##cdr _e96299651_)))
                                  (if (gx#stx-null? _tl96319656_)
                                      (if '#t
                                          (cons (gx#core-quote-bind-values
                                                 _hd9649_)
                                                (cons _expr9622_ '()))
                                          (_E96259637_))
                                      (_E96259637_))))
                              (_E96259637_)))))
                    (_E96259637_)))))
        (_E96249659_))))
  (define gx#core-expand-let-syntax%
    (lambda (_stx9575_)
      (let* ((_e95769586_ _stx9575_)
             (_E95789590_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e95769586_)))
             (_E95779617_
              (lambda ()
                (if (gx#stx-pair? _e95769586_)
                    (let ((_e95799594_ (gx#syntax-e _e95769586_)))
                      (let ((_hd95809597_ (##car _e95799594_))
                            (_tl95819599_ (##cdr _e95799594_)))
                        (if (gx#stx-pair? _tl95819599_)
                            (let ((_e95829602_ (gx#syntax-e _tl95819599_)))
                              (let ((_hd95839605_ (##car _e95829602_))
                                    (_tl95849607_ (##cdr _e95829602_)))
                                (let* ((_hd9610_ _hd95839605_)
                                       (_body9612_ _tl95849607_))
                                  (if (gx#core-expand-let-bind-syntax?
                                       _hd9610_)
                                      (let ((_expanders9614_
                                             (gx#stx-map1
                                              gx#core-expand-let-bind-syntax-expression
                                              _hd9610_)))
                                        (call-with-parameters
                                         (lambda ()
                                           (begin
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd9610_
                                              _expanders9614_)
                                             (gx#core-expand-local-block
                                              _stx9575_
                                              _body9612_)))
                                         gx#current-expander-context
                                         (let ((__obj11008
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (begin
                                             (gx#local-context:::init!__0
                                              __obj11008)
                                             __obj11008))))
                                      (_E95789590_)))))
                            (_E95789590_))))
                    (_E95789590_)))))
        (_E95779617_))))
  (define gx#core-expand-letrec-syntax%
    (lambda (_stx9524_)
      (let* ((_e95259535_ _stx9524_)
             (_E95279539_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e95259535_)))
             (_E95269571_
              (lambda ()
                (if (gx#stx-pair? _e95259535_)
                    (let ((_e95289543_ (gx#syntax-e _e95259535_)))
                      (let ((_hd95299546_ (##car _e95289543_))
                            (_tl95309548_ (##cdr _e95289543_)))
                        (if (gx#stx-pair? _tl95309548_)
                            (let ((_e95319551_ (gx#syntax-e _tl95309548_)))
                              (let ((_hd95329554_ (##car _e95319551_))
                                    (_tl95339556_ (##cdr _e95319551_)))
                                (let* ((_hd9559_ _hd95329554_)
                                       (_body9561_ _tl95339556_))
                                  (if (gx#core-expand-let-bind-syntax?
                                       _hd9559_)
                                      (call-with-parameters
                                       (lambda ()
                                         (begin
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd9559_
                                            (make-list
                                             (gx#stx-length _hd9559_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g95639566_ _g95649568_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _g95639566_
                                               _g95649568_
                                               '#t))
                                            _hd9559_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd9559_))
                                           (gx#core-expand-local-block
                                            _stx9524_
                                            _body9561_)))
                                       gx#current-expander-context
                                       (let ((__obj11009
                                              (make-object
                                               gx#local-context::t
                                               '5)))
                                         (begin
                                           (gx#local-context:::init!__0
                                            __obj11009)
                                           __obj11009)))
                                      (_E95279539_)))))
                            (_E95279539_))))
                    (_E95279539_)))))
        (_E95269571_))))
  (define gx#core-expand-let-bind-syntax?
    (lambda (_stx9481_)
      (if (gx#stx-list? _stx9481_)
          (gx#stx-andmap
           (lambda (_bind9483_)
             (let* ((_e94849494_ _bind9483_)
                    (_E94869498_ (lambda () '#f))
                    (_E94859520_
                     (lambda ()
                       (if (gx#stx-pair? _e94849494_)
                           (let ((_e94879502_ (gx#syntax-e _e94849494_)))
                             (let ((_hd94889505_ (##car _e94879502_))
                                   (_tl94899507_ (##cdr _e94879502_)))
                               (let ((_hd9510_ _hd94889505_))
                                 (if (gx#stx-pair? _tl94899507_)
                                     (let ((_e94909512_
                                            (gx#syntax-e _tl94899507_)))
                                       (let ((_hd94919515_ (##car _e94909512_))
                                             (_tl94929517_
                                              (##cdr _e94909512_)))
                                         (if (gx#stx-null? _tl94929517_)
                                             (if '#t
                                                 (gx#identifier? _hd9510_)
                                                 (_E94869498_))
                                             (_E94869498_))))
                                     (_E94869498_)))))
                           (_E94869498_)))))
               (_E94859520_)))
           _stx9481_)
          '#f)))
  (define gx#core-expand-let-bind-syntax-expression
    (lambda (_bind9438_)
      (let* ((_e94399449_ _bind9438_)
             (_E94419453_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e94399449_)))
             (_E94409477_
              (lambda ()
                (if (gx#stx-pair? _e94399449_)
                    (let ((_e94429457_ (gx#syntax-e _e94399449_)))
                      (let ((_hd94439460_ (##car _e94429457_))
                            (_tl94449462_ (##cdr _e94429457_)))
                        (if (gx#stx-pair? _tl94449462_)
                            (let ((_e94459465_ (gx#syntax-e _tl94449462_)))
                              (let ((_hd94469468_ (##car _e94459465_))
                                    (_tl94479470_ (##cdr _e94459465_)))
                                (let ((_expr9473_ _hd94469468_))
                                  (if (gx#stx-null? _tl94479470_)
                                      (if '#t
                                          (let ((_g11018_
                                                 (gx#core-expand-expression+1
                                                  _expr9473_)))
                                            (begin
                                              (let ((_g11019_
                                                     (if (##values? _g11018_)
                                                         (##vector-length
                                                          _g11018_)
                                                         1)))
                                                (if (not (##fx= _g11019_ 2))
                                                    (error "Context expects 2 values"
                                                           _g11019_)))
                                              (let ((_e9475_ (##vector-ref
                                                              _g11018_
                                                              1)))
                                                _e9475_)))
                                          (_E94419453_))
                                      (_E94419453_)))))
                            (_E94419453_))))
                    (_E94419453_)))))
        (_E94409477_))))
  (begin
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_bind9383_ _e9384_ _rebind?9385_)
        (let* ((_e93869396_ _bind9383_)
               (_E93889400_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e93869396_)))
               (_E93879422_
                (lambda ()
                  (if (gx#stx-pair? _e93869396_)
                      (let ((_e93899404_ (gx#syntax-e _e93869396_)))
                        (let ((_hd93909407_ (##car _e93899404_))
                              (_tl93919409_ (##cdr _e93899404_)))
                          (let ((_id9412_ _hd93909407_))
                            (if (gx#stx-pair? _tl93919409_)
                                (let ((_e93929414_ (gx#syntax-e _tl93919409_)))
                                  (let ((_hd93939417_ (##car _e93929414_))
                                        (_tl93949419_ (##cdr _e93929414_)))
                                    (if (gx#stx-null? _tl93949419_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id9412_
                                             _e9384_
                                             _rebind?9385_)
                                            (_E93889400_))
                                        (_E93889400_))))
                                (_E93889400_)))))
                      (_E93889400_)))))
          (_E93879422_))))
    (begin
      (define gx#core-expand-let-bind-syntax!__0
        (lambda (_bind9429_ _e9430_)
          (let ((_rebind?9432_ '#f))
            (gx#core-expand-let-bind-syntax!__%
             _bind9429_
             _e9430_
             _rebind?9432_))))
      (define gx#core-expand-let-bind-syntax!
        (lambda _g11021_
          (let ((_g11020_ (length _g11021_)))
            (cond ((##fx= _g11020_ 2)
                   (apply gx#core-expand-let-bind-syntax!__0 _g11021_))
                  ((##fx= _g11020_ 3)
                   (apply gx#core-expand-let-bind-syntax!__% _g11021_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-let-bind-syntax!
                    _g11021_))))))))
  (define gx#core-expand-expression%
    (lambda (_stx9341_)
      (let* ((_e93429352_ _stx9341_)
             (_E93449356_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e93429352_)))
             (_E93439378_
              (lambda ()
                (if (gx#stx-pair? _e93429352_)
                    (let ((_e93459360_ (gx#syntax-e _e93429352_)))
                      (let ((_hd93469363_ (##car _e93459360_))
                            (_tl93479365_ (##cdr _e93459360_)))
                        (if (gx#stx-pair? _tl93479365_)
                            (let ((_e93489368_ (gx#syntax-e _tl93479365_)))
                              (let ((_hd93499371_ (##car _e93489368_))
                                    (_tl93509373_ (##cdr _e93489368_)))
                                (let ((_expr9376_ _hd93499371_))
                                  (if (gx#stx-null? _tl93509373_)
                                      (if '#t
                                          (gx#core-expand-expression
                                           _expr9376_)
                                          (_E93449356_))
                                      (_E93449356_)))))
                            (_E93449356_))))
                    (_E93449356_)))))
        (_E93439378_))))
  (define gx#core-expand-quote%
    (lambda (_stx9300_)
      (let* ((_e93019311_ _stx9300_)
             (_E93039315_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e93019311_)))
             (_E93029337_
              (lambda ()
                (if (gx#stx-pair? _e93019311_)
                    (let ((_e93049319_ (gx#syntax-e _e93019311_)))
                      (let ((_hd93059322_ (##car _e93049319_))
                            (_tl93069324_ (##cdr _e93049319_)))
                        (if (gx#stx-pair? _tl93069324_)
                            (let ((_e93079327_ (gx#syntax-e _tl93069324_)))
                              (let ((_hd93089330_ (##car _e93079327_))
                                    (_tl93099332_ (##cdr _e93079327_)))
                                (let ((_e9335_ _hd93089330_))
                                  (if (gx#stx-null? _tl93099332_)
                                      (if '#t
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#quote)
                                                 (cons (gx#syntax->datum
                                                        _e9335_)
                                                       '()))
                                           (gx#stx-source _stx9300_))
                                          (_E93039315_))
                                      (_E93039315_)))))
                            (_E93039315_))))
                    (_E93039315_)))))
        (_E93029337_))))
  (define gx#core-expand-quote-syntax%
    (lambda (_stx9259_)
      (let* ((_e92609270_ _stx9259_)
             (_E92629274_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e92609270_)))
             (_E92619296_
              (lambda ()
                (if (gx#stx-pair? _e92609270_)
                    (let ((_e92639278_ (gx#syntax-e _e92609270_)))
                      (let ((_hd92649281_ (##car _e92639278_))
                            (_tl92659283_ (##cdr _e92639278_)))
                        (if (gx#stx-pair? _tl92659283_)
                            (let ((_e92669286_ (gx#syntax-e _tl92659283_)))
                              (let ((_hd92679289_ (##car _e92669286_))
                                    (_tl92689291_ (##cdr _e92669286_)))
                                (let ((_e9294_ _hd92679289_))
                                  (if (gx#stx-null? _tl92689291_)
                                      (if '#t
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#quote-syntax)
                                                 (cons (gx#core-quote-syntax__0
                                                        _e9294_)
                                                       '()))
                                           (gx#stx-source _stx9259_))
                                          (_E92629274_))
                                      (_E92629274_)))))
                            (_E92629274_))))
                    (_E92629274_)))))
        (_E92619296_))))
  (define gx#core-expand-call%
    (lambda (_stx9216_)
      (let* ((_e92179227_ _stx9216_)
             (_E92199231_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e92179227_)))
             (_E92189255_
              (lambda ()
                (if (gx#stx-pair? _e92179227_)
                    (let ((_e92209235_ (gx#syntax-e _e92179227_)))
                      (let ((_hd92219238_ (##car _e92209235_))
                            (_tl92229240_ (##cdr _e92209235_)))
                        (if (gx#stx-pair? _tl92229240_)
                            (let ((_e92239243_ (gx#syntax-e _tl92229240_)))
                              (let ((_hd92249246_ (##car _e92239243_))
                                    (_tl92259248_ (##cdr _e92239243_)))
                                (let* ((_rator9251_ _hd92249246_)
                                       (_args9253_ _tl92259248_))
                                  (if (gx#stx-list? _args9253_)
                                      (gx#core-quote-syntax__1
                                       (gx#core-cons*
                                        '%#call
                                        (gx#core-expand-expression _rator9251_)
                                        (gx#stx-map1
                                         gx#core-expand-expression
                                         _args9253_))
                                       (gx#stx-source _stx9216_))
                                      (_E92199231_)))))
                            (_E92199231_))))
                    (_E92199231_)))))
        (_E92189255_))))
  (define gx#core-expand-if%
    (lambda (_stx9149_)
      (let* ((_e91509166_ _stx9149_)
             (_E91529170_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e91509166_)))
             (_E91519212_
              (lambda ()
                (if (gx#stx-pair? _e91509166_)
                    (let ((_e91539174_ (gx#syntax-e _e91509166_)))
                      (let ((_hd91549177_ (##car _e91539174_))
                            (_tl91559179_ (##cdr _e91539174_)))
                        (if (gx#stx-pair? _tl91559179_)
                            (let ((_e91569182_ (gx#syntax-e _tl91559179_)))
                              (let ((_hd91579185_ (##car _e91569182_))
                                    (_tl91589187_ (##cdr _e91569182_)))
                                (let ((_test9190_ _hd91579185_))
                                  (if (gx#stx-pair? _tl91589187_)
                                      (let ((_e91599192_
                                             (gx#syntax-e _tl91589187_)))
                                        (let ((_hd91609195_
                                               (##car _e91599192_))
                                              (_tl91619197_
                                               (##cdr _e91599192_)))
                                          (let ((_K9200_ _hd91609195_))
                                            (if (gx#stx-pair? _tl91619197_)
                                                (let ((_e91629202_
                                                       (gx#syntax-e
                                                        _tl91619197_)))
                                                  (let ((_hd91639205_
                                                         (##car _e91629202_))
                                                        (_tl91649207_
                                                         (##cdr _e91629202_)))
                                                    (let ((_E9210_ _hd91639205_))
                                                      (if (gx#stx-null?
                                                           _tl91649207_)
                                                          (if '#t
                                                              (gx#core-quote-syntax__1
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '%#if)
                             (cons (gx#core-expand-expression _test9190_)
                                   (cons (gx#core-expand-expression _K9200_)
                                         (cons (gx#core-expand-expression
                                                _E9210_)
                                               '()))))
                       (gx#stx-source _stx9149_))
                      (_E91529170_))
                  (_E91529170_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E91529170_)))))
                                      (_E91529170_)))))
                            (_E91529170_))))
                    (_E91529170_)))))
        (_E91519212_))))
  (define gx#core-expand-ref%
    (lambda (_stx9108_)
      (let* ((_e91099119_ _stx9108_)
             (_E91119123_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e91099119_)))
             (_E91109145_
              (lambda ()
                (if (gx#stx-pair? _e91099119_)
                    (let ((_e91129127_ (gx#syntax-e _e91099119_)))
                      (let ((_hd91139130_ (##car _e91129127_))
                            (_tl91149132_ (##cdr _e91129127_)))
                        (if (gx#stx-pair? _tl91149132_)
                            (let ((_e91159135_ (gx#syntax-e _tl91149132_)))
                              (let ((_hd91169138_ (##car _e91159135_))
                                    (_tl91179140_ (##cdr _e91159135_)))
                                (let ((_id9143_ _hd91169138_))
                                  (if (gx#stx-null? _tl91179140_)
                                      (if (gx#core-runtime-ref? _id9143_)
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#ref)
                                                 (cons (gx#core-quote-runtime-ref
                                                        _id9143_
                                                        _stx9108_)
                                                       '()))
                                           (gx#stx-source _stx9108_))
                                          (_E91119123_))
                                      (_E91119123_)))))
                            (_E91119123_))))
                    (_E91119123_)))))
        (_E91109145_))))
  (define gx#core-expand-setq%
    (lambda (_stx9054_)
      (let* ((_e90559068_ _stx9054_)
             (_E90579072_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e90559068_)))
             (_E90569104_
              (lambda ()
                (if (gx#stx-pair? _e90559068_)
                    (let ((_e90589076_ (gx#syntax-e _e90559068_)))
                      (let ((_hd90599079_ (##car _e90589076_))
                            (_tl90609081_ (##cdr _e90589076_)))
                        (if (gx#stx-pair? _tl90609081_)
                            (let ((_e90619084_ (gx#syntax-e _tl90609081_)))
                              (let ((_hd90629087_ (##car _e90619084_))
                                    (_tl90639089_ (##cdr _e90619084_)))
                                (let ((_id9092_ _hd90629087_))
                                  (if (gx#stx-pair? _tl90639089_)
                                      (let ((_e90649094_
                                             (gx#syntax-e _tl90639089_)))
                                        (let ((_hd90659097_
                                               (##car _e90649094_))
                                              (_tl90669099_
                                               (##cdr _e90649094_)))
                                          (let ((_expr9102_ _hd90659097_))
                                            (if (gx#stx-null? _tl90669099_)
                                                (if (gx#core-runtime-ref?
                                                     _id9092_)
                                                    (gx#core-quote-syntax__1
                                                     (cons (gx#core-quote-syntax__0
                                                            '%#set!)
                                                           (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id9092_
                          _stx9054_)
                         (cons (gx#core-expand-expression _expr9102_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gx#stx-source _stx9054_))
                                                    (_E90579072_))
                                                (_E90579072_)))))
                                      (_E90579072_)))))
                            (_E90579072_))))
                    (_E90579072_)))))
        (_E90569104_))))
  (define gx#macro-expand-extern
    (lambda (_stx8902_)
      (letrec ((_generate8904_
                (lambda (_body8934_)
                  (let _lp8936_ ((_rest8938_ _body8934_)
                                 (_ns8939_ (gx#core-context-namespace__0))
                                 (_r8940_ '()))
                    (let* ((_e89418956_ _rest8938_)
                           (_E89548960_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e89418956_)))
                           (_E89508964_
                            (lambda ()
                              (if (gx#stx-null? _e89418956_)
                                  (if '#t (reverse _r8940_) (_E89548960_))
                                  (_E89548960_))))
                           (_E89439021_
                            (lambda ()
                              (if (gx#stx-pair? _e89418956_)
                                  (let ((_e89518968_
                                         (gx#syntax-e _e89418956_)))
                                    (let ((_hd89528971_ (##car _e89518968_))
                                          (_tl89538973_ (##cdr _e89518968_)))
                                      (let* ((_hd8976_ _hd89528971_)
                                             (_rest8978_ _tl89538973_))
                                        (if '#t
                                            (if (gx#identifier? _hd8976_)
                                                (_lp8936_
                                                 _rest8978_
                                                 _ns8939_
                                                 (cons (cons _hd8976_
                                                             (cons (if _ns8939_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#stx-identifier
                                _hd8976_
                                _ns8939_
                                '"#"
                                _hd8976_)
                               _hd8976_)
                           '()))
               _r8940_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let* ((_e89798989_ _hd8976_)
                                                       (_E89818993_
                                                        (lambda ()
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _e89798989_)))
                                                       (_E89809017_
                                                        (lambda ()
                                                          (if (gx#stx-pair?
                                                               _e89798989_)
                                                              (let ((_e89828997_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _e89798989_)))
                        (let ((_hd89839000_ (##car _e89828997_))
                              (_tl89849002_ (##cdr _e89828997_)))
                          (let ((_id9005_ _hd89839000_))
                            (if (gx#stx-pair? _tl89849002_)
                                (let ((_e89859007_ (gx#syntax-e _tl89849002_)))
                                  (let ((_hd89869010_ (##car _e89859007_))
                                        (_tl89879012_ (##cdr _e89859007_)))
                                    (let ((_eid9015_ _hd89869010_))
                                      (if (gx#stx-null? _tl89879012_)
                                          (if (if (gx#identifier? _id9005_)
                                                  (gx#identifier? _eid9015_)
                                                  '#f)
                                              (_lp8936_
                                               _rest8978_
                                               _ns8939_
                                               (cons (cons _id9005_
                                                           (cons _eid9015_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _r8940_))
                                              (_E89818993_))
                                          (_E89818993_)))))
                                (_E89818993_)))))
                      (_E89818993_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E89809017_)))
                                            (_E89508964_)))))
                                  (_E89508964_))))
                           (_E89429050_
                            (lambda ()
                              (if (gx#stx-pair? _e89418956_)
                                  (let ((_e89449025_
                                         (gx#syntax-e _e89418956_)))
                                    (let ((_hd89459028_ (##car _e89449025_))
                                          (_tl89469030_ (##cdr _e89449025_)))
                                      (if (eq? (gx#stx-e _hd89459028_)
                                               'namespace:)
                                          (if (gx#stx-pair? _tl89469030_)
                                              (let ((_e89479033_
                                                     (gx#syntax-e
                                                      _tl89469030_)))
                                                (let ((_hd89489036_
                                                       (##car _e89479033_))
                                                      (_tl89499038_
                                                       (##cdr _e89479033_)))
                                                  (let* ((_ns9041_
                                                          _hd89489036_)
                                                         (_rest9043_
                                                          _tl89499038_))
                                                    (if '#t
                                                        (let ((_ns9048_
                                                               (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _ns9041_)
                           (symbol->string (gx#stx-e _ns9041_))
                           (if (let ((_$e9045_ (gx#stx-string? _ns9041_)))
                                 (if _$e9045_
                                     _$e9045_
                                     (gx#stx-false? _ns9041_)))
                               (gx#stx-e _ns9041_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _stx8902_
                                _ns9041_)))))
                  (_lp8936_ _rest9043_ _ns9048_ _r8940_))
                (_E89439021_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E89439021_))
                                          (_E89439021_))))
                                  (_E89439021_)))))
                      (_E89429050_))))))
        (let* ((_e89058912_ _stx8902_)
               (_E89078916_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e89058912_)))
               (_E89068930_
                (lambda ()
                  (if (gx#stx-pair? _e89058912_)
                      (let ((_e89088920_ (gx#syntax-e _e89058912_)))
                        (let ((_hd89098923_ (##car _e89088920_))
                              (_tl89108925_ (##cdr _e89088920_)))
                          (let ((_body8928_ _tl89108925_))
                            (if (gx#stx-list? _body8928_)
                                (gx#core-cons
                                 '%#extern
                                 (_generate8904_ _body8928_))
                                (_E89078916_)))))
                      (_E89078916_)))))
          (_E89068930_)))))
  (define gx#macro-expand-define-values
    (lambda (_stx8848_)
      (let* ((_e88498862_ _stx8848_)
             (_E88518866_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e88498862_)))
             (_E88508898_
              (lambda ()
                (if (gx#stx-pair? _e88498862_)
                    (let ((_e88528870_ (gx#syntax-e _e88498862_)))
                      (let ((_hd88538873_ (##car _e88528870_))
                            (_tl88548875_ (##cdr _e88528870_)))
                        (if (gx#stx-pair? _tl88548875_)
                            (let ((_e88558878_ (gx#syntax-e _tl88548875_)))
                              (let ((_hd88568881_ (##car _e88558878_))
                                    (_tl88578883_ (##cdr _e88558878_)))
                                (let ((_hd8886_ _hd88568881_))
                                  (if (gx#stx-pair? _tl88578883_)
                                      (let ((_e88588888_
                                             (gx#syntax-e _tl88578883_)))
                                        (let ((_hd88598891_
                                               (##car _e88588888_))
                                              (_tl88608893_
                                               (##cdr _e88588888_)))
                                          (let ((_expr8896_ _hd88598891_))
                                            (if (gx#stx-null? _tl88608893_)
                                                (if (gx#stx-andmap
                                                     gx#identifier?
                                                     _hd8886_)
                                                    (cons (gx#core-quote-syntax__0
                                                           '%#define-values)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _hd8886_)
                        (cons _expr8896_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E88518866_))
                                                (_E88518866_)))))
                                      (_E88518866_)))))
                            (_E88518866_))))
                    (_E88518866_)))))
        (_E88508898_))))
  (define gx#macro-expand-define-syntax
    (lambda (_stx8794_)
      (let* ((_e87958808_ _stx8794_)
             (_E87978812_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e87958808_)))
             (_E87968844_
              (lambda ()
                (if (gx#stx-pair? _e87958808_)
                    (let ((_e87988816_ (gx#syntax-e _e87958808_)))
                      (let ((_hd87998819_ (##car _e87988816_))
                            (_tl88008821_ (##cdr _e87988816_)))
                        (if (gx#stx-pair? _tl88008821_)
                            (let ((_e88018824_ (gx#syntax-e _tl88008821_)))
                              (let ((_hd88028827_ (##car _e88018824_))
                                    (_tl88038829_ (##cdr _e88018824_)))
                                (let ((_hd8832_ _hd88028827_))
                                  (if (gx#stx-pair? _tl88038829_)
                                      (let ((_e88048834_
                                             (gx#syntax-e _tl88038829_)))
                                        (let ((_hd88058837_
                                               (##car _e88048834_))
                                              (_tl88068839_
                                               (##cdr _e88048834_)))
                                          (let ((_expr8842_ _hd88058837_))
                                            (if (gx#stx-null? _tl88068839_)
                                                (if (gx#identifier? _hd8832_)
                                                    (cons (gx#core-quote-syntax__0
                                                           '%#define-syntax)
                                                          (cons _hd8832_
                                                                (cons _expr8842_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E87978812_))
                                                (_E87978812_)))))
                                      (_E87978812_)))))
                            (_E87978812_))))
                    (_E87978812_)))))
        (_E87968844_))))
  (define gx#macro-expand-define-alias
    (lambda (_stx8740_)
      (let* ((_e87418754_ _stx8740_)
             (_E87438758_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e87418754_)))
             (_E87428790_
              (lambda ()
                (if (gx#stx-pair? _e87418754_)
                    (let ((_e87448762_ (gx#syntax-e _e87418754_)))
                      (let ((_hd87458765_ (##car _e87448762_))
                            (_tl87468767_ (##cdr _e87448762_)))
                        (if (gx#stx-pair? _tl87468767_)
                            (let ((_e87478770_ (gx#syntax-e _tl87468767_)))
                              (let ((_hd87488773_ (##car _e87478770_))
                                    (_tl87498775_ (##cdr _e87478770_)))
                                (let ((_id8778_ _hd87488773_))
                                  (if (gx#stx-pair? _tl87498775_)
                                      (let ((_e87508780_
                                             (gx#syntax-e _tl87498775_)))
                                        (let ((_hd87518783_
                                               (##car _e87508780_))
                                              (_tl87528785_
                                               (##cdr _e87508780_)))
                                          (let ((_alias-id8788_ _hd87518783_))
                                            (if (gx#stx-null? _tl87528785_)
                                                (if (if (gx#identifier?
                                                         _id8778_)
                                                        (gx#identifier?
                                                         _alias-id8788_)
                                                        '#f)
                                                    (cons (gx#core-quote-syntax__0
                                                           '%#define-alias)
                                                          (cons _id8778_
                                                                (cons _alias-id8788_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E87438758_))
                                                (_E87438758_)))))
                                      (_E87438758_)))))
                            (_E87438758_))))
                    (_E87438758_)))))
        (_E87428790_))))
  (define gx#macro-expand-lambda%
    (lambda (_stx8697_)
      (let* ((_e86988708_ _stx8697_)
             (_E87008712_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e86988708_)))
             (_E86998736_
              (lambda ()
                (if (gx#stx-pair? _e86988708_)
                    (let ((_e87018716_ (gx#syntax-e _e86988708_)))
                      (let ((_hd87028719_ (##car _e87018716_))
                            (_tl87038721_ (##cdr _e87018716_)))
                        (if (gx#stx-pair? _tl87038721_)
                            (let ((_e87048724_ (gx#syntax-e _tl87038721_)))
                              (let ((_hd87058727_ (##car _e87048724_))
                                    (_tl87068729_ (##cdr _e87048724_)))
                                (let* ((_hd8732_ _hd87058727_)
                                       (_body8734_ _tl87068729_))
                                  (if (if (gx#stx-andmap
                                           gx#identifier?
                                           _hd8732_)
                                          (if (gx#stx-list? _body8734_)
                                              (not (gx#stx-null? _body8734_))
                                              '#f)
                                          '#f)
                                      (gx#core-cons*
                                       '%#lambda
                                       (gx#stx-map1
                                        gx#user-binding-identifier
                                        _hd8732_)
                                       _body8734_)
                                      (_E87008712_)))))
                            (_E87008712_))))
                    (_E87008712_)))))
        (_E86998736_))))
  (define gx#macro-expand-case-lambda
    (lambda (_stx8633_)
      (letrec ((_generate8635_
                (lambda (_clause8665_)
                  (let* ((_e86668673_ _clause8665_)
                         (_E86688677_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; malformed clause"
                             _stx8633_
                             _clause8665_)))
                         (_E86678693_
                          (lambda ()
                            (if (gx#stx-pair? _e86668673_)
                                (let ((_e86698681_ (gx#syntax-e _e86668673_)))
                                  (let ((_hd86708684_ (##car _e86698681_))
                                        (_tl86718686_ (##cdr _e86698681_)))
                                    (let* ((_hd8689_ _hd86708684_)
                                           (_body8691_ _tl86718686_))
                                      (if (if (gx#stx-andmap
                                               gx#identifier?
                                               _hd8689_)
                                              (if (gx#stx-list? _body8691_)
                                                  (not (gx#stx-null?
                                                        _body8691_))
                                                  '#f)
                                              '#f)
                                          (gx#stx-wrap-source
                                           (cons (gx#stx-map1
                                                  gx#user-binding-identifier
                                                  _hd8689_)
                                                 _body8691_)
                                           (gx#stx-source _clause8665_))
                                          (_E86688677_)))))
                                (_E86688677_)))))
                    (_E86678693_)))))
        (let* ((_e86368643_ _stx8633_)
               (_E86388647_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e86368643_)))
               (_E86378661_
                (lambda ()
                  (if (gx#stx-pair? _e86368643_)
                      (let ((_e86398651_ (gx#syntax-e _e86368643_)))
                        (let ((_hd86408654_ (##car _e86398651_))
                              (_tl86418656_ (##cdr _e86398651_)))
                          (let ((_clauses8659_ _tl86418656_))
                            (if (gx#stx-list? _clauses8659_)
                                (gx#core-cons
                                 '%#case-lambda
                                 (gx#stx-map1 _generate8635_ _clauses8659_))
                                (_E86388647_)))))
                      (_E86388647_)))))
          (_E86378661_)))))
  (begin
    (define gx#macro-expand-let-values__%
      (lambda (_stx8534_ _form8535_)
        (letrec ((_generate8537_
                  (lambda (_bind8580_)
                    (let* ((_e85818591_ _bind8580_)
                           (_E85838595_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx8534_
                               _bind8580_)))
                           (_E85828619_
                            (lambda ()
                              (if (gx#stx-pair? _e85818591_)
                                  (let ((_e85848599_
                                         (gx#syntax-e _e85818591_)))
                                    (let ((_hd85858602_ (##car _e85848599_))
                                          (_tl85868604_ (##cdr _e85848599_)))
                                      (let ((_ids8607_ _hd85858602_))
                                        (if (gx#stx-pair? _tl85868604_)
                                            (let ((_e85878609_
                                                   (gx#syntax-e _tl85868604_)))
                                              (let ((_hd85888612_
                                                     (##car _e85878609_))
                                                    (_tl85898614_
                                                     (##cdr _e85878609_)))
                                                (let ((_expr8617_
                                                       _hd85888612_))
                                                  (if (gx#stx-null?
                                                       _tl85898614_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids8607_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids8607_)
                        (cons _expr8617_ '()))
                  (_E85838595_))
              (_E85838595_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E85838595_)))))
                                  (_E85838595_)))))
                      (_E85828619_)))))
          (let* ((_e85388548_ _stx8534_)
                 (_E85408552_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e85388548_)))
                 (_E85398576_
                  (lambda ()
                    (if (gx#stx-pair? _e85388548_)
                        (let ((_e85418556_ (gx#syntax-e _e85388548_)))
                          (let ((_hd85428559_ (##car _e85418556_))
                                (_tl85438561_ (##cdr _e85418556_)))
                            (if (gx#stx-pair? _tl85438561_)
                                (let ((_e85448564_ (gx#syntax-e _tl85438561_)))
                                  (let ((_hd85458567_ (##car _e85448564_))
                                        (_tl85468569_ (##cdr _e85448564_)))
                                    (let* ((_hd8572_ _hd85458567_)
                                           (_body8574_ _tl85468569_))
                                      (if (if (gx#stx-list? _hd8572_)
                                              (if (gx#stx-list? _body8574_)
                                                  (not (gx#stx-null?
                                                        _body8574_))
                                                  '#f)
                                              '#f)
                                          (gx#core-cons*
                                           _form8535_
                                           (gx#stx-map1
                                            _generate8537_
                                            _hd8572_)
                                           _body8574_)
                                          (_E85408552_)))))
                                (_E85408552_))))
                        (_E85408552_)))))
            (_E85398576_)))))
    (begin
      (define gx#macro-expand-let-values__0
        (lambda (_stx8626_)
          (let ((_form8628_ '%#let-values))
            (gx#macro-expand-let-values__% _stx8626_ _form8628_))))
      (define gx#macro-expand-let-values
        (lambda _g11023_
          (let ((_g11022_ (length _g11023_)))
            (cond ((##fx= _g11022_ 1)
                   (apply gx#macro-expand-let-values__0 _g11023_))
                  ((##fx= _g11022_ 2)
                   (apply gx#macro-expand-let-values__% _g11023_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#macro-expand-let-values
                    _g11023_))))))))
  (define gx#macro-expand-letrec-values
    (lambda (_stx8531_)
      (gx#macro-expand-let-values__% _stx8531_ '%#letrec-values)))
  (define gx#macro-expand-letrec*-values
    (lambda (_stx8529_)
      (gx#macro-expand-let-values__% _stx8529_ '%#letrec*-values)))
  (define gx#macro-expand-if
    (lambda (_stx8420_)
      (let* ((_e84218447_ _stx8420_)
             (_E84338451_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e84218447_)))
             (_E84238493_
              (lambda ()
                (if (gx#stx-pair? _e84218447_)
                    (let ((_e84348455_ (gx#syntax-e _e84218447_)))
                      (let ((_hd84358458_ (##car _e84348455_))
                            (_tl84368460_ (##cdr _e84348455_)))
                        (if (gx#stx-pair? _tl84368460_)
                            (let ((_e84378463_ (gx#syntax-e _tl84368460_)))
                              (let ((_hd84388466_ (##car _e84378463_))
                                    (_tl84398468_ (##cdr _e84378463_)))
                                (let ((_test8471_ _hd84388466_))
                                  (if (gx#stx-pair? _tl84398468_)
                                      (let ((_e84408473_
                                             (gx#syntax-e _tl84398468_)))
                                        (let ((_hd84418476_
                                               (##car _e84408473_))
                                              (_tl84428478_
                                               (##cdr _e84408473_)))
                                          (let ((_K8481_ _hd84418476_))
                                            (if (gx#stx-pair? _tl84428478_)
                                                (let ((_e84438483_
                                                       (gx#syntax-e
                                                        _tl84428478_)))
                                                  (let ((_hd84448486_
                                                         (##car _e84438483_))
                                                        (_tl84458488_
                                                         (##cdr _e84438483_)))
                                                    (let ((_E8491_ _hd84448486_))
                                                      (if (gx#stx-null?
                                                           _tl84458488_)
                                                          (if '#t
                                                              (gx#core-list
                                                               '%#if
                                                               _test8471_
                                                               _K8481_
                                                               _E8491_)
                                                              (_E84338451_))
                                                          (_E84338451_)))))
                                                (_E84338451_)))))
                                      (_E84338451_)))))
                            (_E84338451_))))
                    (_E84338451_))))
             (_E84228525_
              (lambda ()
                (if (gx#stx-pair? _e84218447_)
                    (let ((_e84248497_ (gx#syntax-e _e84218447_)))
                      (let ((_hd84258500_ (##car _e84248497_))
                            (_tl84268502_ (##cdr _e84248497_)))
                        (if (gx#stx-pair? _tl84268502_)
                            (let ((_e84278505_ (gx#syntax-e _tl84268502_)))
                              (let ((_hd84288508_ (##car _e84278505_))
                                    (_tl84298510_ (##cdr _e84278505_)))
                                (let ((_test8513_ _hd84288508_))
                                  (if (gx#stx-pair? _tl84298510_)
                                      (let ((_e84308515_
                                             (gx#syntax-e _tl84298510_)))
                                        (let ((_hd84318518_
                                               (##car _e84308515_))
                                              (_tl84328520_
                                               (##cdr _e84308515_)))
                                          (let ((_K8523_ _hd84318518_))
                                            (if (gx#stx-null? _tl84328520_)
                                                (if '#t
                                                    (gx#core-list
                                                     '%#if
                                                     _test8513_
                                                     _K8523_
                                                     '#!void)
                                                    (_E84238493_))
                                                (_E84238493_)))))
                                      (_E84238493_)))))
                            (_E84238493_))))
                    (_E84238493_)))))
        (_E84228525_))))
  (define gx#free-identifier=?
    (lambda (_xid8408_ _yid8409_)
      (let ((_xe8411_ (gx#resolve-identifier__0 _xid8408_))
            (_ye8412_ (gx#resolve-identifier__0 _yid8409_)))
        (if (if _xe8411_ _ye8412_ '#f)
            (let ((_$e8414_ (eq? _xe8411_ _ye8412_)))
              (if _$e8414_
                  _$e8414_
                  (if (##structure-instance-of? _xe8411_ 'gx#binding::t)
                      (if (##structure-instance-of? _ye8412_ 'gx#binding::t)
                          (eq? (##structure-ref _xe8411_ '1 gx#binding::t '#f)
                               (##structure-ref _ye8412_ '1 gx#binding::t '#f))
                          '#f)
                      '#f)))
            (if (let ((_$e8417_ _xe8411_)) (if _$e8417_ _$e8417_ _ye8412_))
                '#f
                (gx#stx-eq? _xid8408_ _yid8409_))))))
  (define gx#bound-identifier=?
    (lambda (_xid8392_ _yid8393_)
      (letrec ((_context8395_
                (lambda (_e8406_)
                  (if (##structure-direct-instance-of?
                       _e8406_
                       'gx#syntax-quote::t)
                      (##direct-structure-ref
                       _e8406_
                       '3
                       gx#syntax-quote::t
                       '#f)
                      (gx#current-expander-context))))
               (_marks8396_
                (lambda (_e8404_)
                  (if (symbol? _e8404_)
                      '()
                      (if (##structure-direct-instance-of?
                           _e8404_
                           'gx#identifier-wrap::t)
                          (##direct-structure-ref
                           _e8404_
                           '3
                           gx#identifier-wrap::t
                           '#f)
                          (##direct-structure-ref
                           _e8404_
                           '4
                           gx#syntax-quote::t
                           '#f)))))
               (_unwrap8397_
                (lambda (_e8402_)
                  (if (symbol? _e8402_)
                      _e8402_
                      (gx#syntax-local-unwrap _e8402_)))))
        (let ((_x8399_ (_unwrap8397_ _xid8392_))
              (_y8400_ (_unwrap8397_ _yid8393_)))
          (if (gx#stx-eq? _x8399_ _y8400_)
              (if (eq? (_context8395_ _x8399_) (_context8395_ _y8400_))
                  (equal? (_marks8396_ _x8399_) (_marks8396_ _y8400_))
                  '#f)
              '#f)))))
  (define gx#underscore?
    (lambda (_stx8390_)
      (if (gx#identifier? _stx8390_) (gx#core-identifier=? _stx8390_ '_) '#f)))
  (define gx#ellipsis?
    (lambda (_stx8388_)
      (if (gx#identifier? _stx8388_)
          (gx#core-identifier=? _stx8388_ '...)
          '#f)))
  (define gx#user-binding-identifier
    (lambda (_x8386_)
      (if (gx#identifier? _x8386_)
          (if (not (gx#underscore? _x8386_)) _x8386_ '#f)
          '#f)))
  (begin
    (define gx#check-duplicate-identifiers__%
      (lambda (_stx8332_ _where8333_)
        (let _lp8335_ ((_rest8337_ (gx#syntax->list _stx8332_)))
          (let* ((_rest83388346_ _rest8337_)
                 (_else83408354_ (lambda () '#t))
                 (_K83428364_
                  (lambda (_rest8357_ _hd8358_)
                    (if (not (gx#identifier? _hd8358_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where8333_
                         _hd8358_)
                        (if (find (lambda (_g83598361_)
                                    (gx#bound-identifier=?
                                     _g83598361_
                                     _hd8358_))
                                  _rest8357_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where8333_
                             _hd8358_)
                            (_lp8335_ _rest8357_))))))
            (if (##pair? _rest83388346_)
                (let ((_hd83438367_ (##car _rest83388346_))
                      (_tl83448369_ (##cdr _rest83388346_)))
                  (let* ((_hd8372_ _hd83438367_) (_rest8374_ _tl83448369_))
                    (_K83428364_ _rest8374_ _hd8372_)))
                (_else83408354_))))))
    (begin
      (define gx#check-duplicate-identifiers__0
        (lambda (_stx8379_)
          (let ((_where8381_ _stx8379_))
            (gx#check-duplicate-identifiers__% _stx8379_ _where8381_))))
      (define gx#check-duplicate-identifiers
        (lambda _g11025_
          (let ((_g11024_ (length _g11025_)))
            (cond ((##fx= _g11024_ 1)
                   (apply gx#check-duplicate-identifiers__0 _g11025_))
                  ((##fx= _g11024_ 2)
                   (apply gx#check-duplicate-identifiers__% _g11025_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#check-duplicate-identifiers
                    _g11025_))))))))
  (define gx#core-bind-values?
    (lambda (_stx8324_)
      (gx#stx-andmap
       (lambda (_x8326_)
         (let ((_$e8328_ (gx#identifier? _x8326_)))
           (if _$e8328_ _$e8328_ (gx#stx-false? _x8326_))))
       _stx8324_)))
  (begin
    (define gx#core-bind-values!__%
      (lambda (_stx8288_ _rebind?8289_ _phi8290_ _ctx8291_)
        (gx#stx-for-each1
         (lambda (_id8293_)
           (if (gx#identifier? _id8293_)
               (gx#core-bind-runtime!__%
                _id8293_
                _rebind?8289_
                _phi8290_
                _ctx8291_)
               '#!void))
         _stx8288_)))
    (begin
      (define gx#core-bind-values!__0
        (lambda (_stx8298_)
          (let* ((_rebind?8300_ '#f)
                 (_phi8302_ (gx#current-expander-phi))
                 (_ctx8304_ (gx#current-expander-context)))
            (gx#core-bind-values!__%
             _stx8298_
             _rebind?8300_
             _phi8302_
             _ctx8304_))))
      (define gx#core-bind-values!__1
        (lambda (_stx8306_ _rebind?8307_)
          (let* ((_phi8309_ (gx#current-expander-phi))
                 (_ctx8311_ (gx#current-expander-context)))
            (gx#core-bind-values!__%
             _stx8306_
             _rebind?8307_
             _phi8309_
             _ctx8311_))))
      (define gx#core-bind-values!__2
        (lambda (_stx8313_ _rebind?8314_ _phi8315_)
          (let ((_ctx8317_ (gx#current-expander-context)))
            (gx#core-bind-values!__%
             _stx8313_
             _rebind?8314_
             _phi8315_
             _ctx8317_))))
      (define gx#core-bind-values!
        (lambda _g11027_
          (let ((_g11026_ (length _g11027_)))
            (cond ((##fx= _g11026_ 1) (apply gx#core-bind-values!__0 _g11027_))
                  ((##fx= _g11026_ 2) (apply gx#core-bind-values!__1 _g11027_))
                  ((##fx= _g11026_ 3) (apply gx#core-bind-values!__2 _g11027_))
                  ((##fx= _g11026_ 4) (apply gx#core-bind-values!__% _g11027_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-values!
                    _g11027_))))))))
  (define gx#core-quote-bind-values
    (lambda (_stx8283_)
      (gx#stx-map1
       (lambda (_x8285_)
         (if (gx#identifier? _x8285_) (gx#core-quote-syntax__0 _x8285_) '#f))
       _stx8283_)))
  (define gx#core-runtime-ref?
    (lambda (_stx8276_)
      (if (gx#identifier? _stx8276_)
          (let* ((_bind8278_ (gx#resolve-identifier__0 _stx8276_))
                 (_$e8280_ (not _bind8278_)))
            (if _$e8280_
                _$e8280_
                (##structure-instance-of? _bind8278_ 'gx#runtime-binding::t)))
          '#f)))
  (define gx#core-quote-runtime-ref
    (lambda (_id8268_ _form8269_)
      (let ((_bind8271_ (gx#resolve-identifier__0 _id8268_)))
        (if (##structure-instance-of? _bind8271_ 'gx#runtime-binding::t)
            (gx#core-quote-syntax__0 _id8268_)
            (if (not _bind8271_)
                (if (let ((_$e8273_
                           (gx#core-context-rebind?__%
                            (gx#core-context-top__0))))
                      (if _$e8273_
                          _$e8273_
                          (gx#core-extern-symbol? (gx#stx-e _id8268_))))
                    (gx#core-quote-syntax__0 _id8268_)
                    (gx#raise-syntax-error
                     '#f
                     '"Reference to unbound identifier"
                     _form8269_
                     _id8268_))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; not a runtime binding"
                 _form8269_
                 _id8268_))))))
  (begin
    (define gx#core-bind-runtime!__%
      (lambda (_id8227_ _rebind?8228_ _phi8229_ _ctx8230_)
        (let* ((_key8232_ (gx#core-identifier-key _id8227_))
               (_eid8234_
                (gx#make-binding-id__% _key8232_ '#f _phi8229_ _ctx8230_))
               (_bind8236_
                (if (##structure-instance-of? _ctx8230_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid8234_
                     _key8232_
                     _phi8229_
                     _ctx8230_)
                    (if (##structure-instance-of? _ctx8230_ 'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid8234_
                         _key8232_
                         _phi8229_)
                        (if (##structure-instance-of?
                             _ctx8230_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid8234_
                             _key8232_
                             _phi8229_)
                            (##structure
                             gx#runtime-binding::t
                             _eid8234_
                             _key8232_
                             _phi8229_))))))
          (gx#bind-identifier!__%
           _id8227_
           _bind8236_
           _rebind?8228_
           _phi8229_
           _ctx8230_))))
    (begin
      (define gx#core-bind-runtime!__0
        (lambda (_id8242_)
          (let* ((_rebind?8244_ '#f)
                 (_phi8246_ (gx#current-expander-phi))
                 (_ctx8248_ (gx#current-expander-context)))
            (gx#core-bind-runtime!__%
             _id8242_
             _rebind?8244_
             _phi8246_
             _ctx8248_))))
      (define gx#core-bind-runtime!__1
        (lambda (_id8250_ _rebind?8251_)
          (let* ((_phi8253_ (gx#current-expander-phi))
                 (_ctx8255_ (gx#current-expander-context)))
            (gx#core-bind-runtime!__%
             _id8250_
             _rebind?8251_
             _phi8253_
             _ctx8255_))))
      (define gx#core-bind-runtime!__2
        (lambda (_id8257_ _rebind?8258_ _phi8259_)
          (let ((_ctx8261_ (gx#current-expander-context)))
            (gx#core-bind-runtime!__%
             _id8257_
             _rebind?8258_
             _phi8259_
             _ctx8261_))))
      (define gx#core-bind-runtime!
        (lambda _g11029_
          (let ((_g11028_ (length _g11029_)))
            (cond ((##fx= _g11028_ 1)
                   (apply gx#core-bind-runtime!__0 _g11029_))
                  ((##fx= _g11028_ 2)
                   (apply gx#core-bind-runtime!__1 _g11029_))
                  ((##fx= _g11028_ 3)
                   (apply gx#core-bind-runtime!__2 _g11029_))
                  ((##fx= _g11028_ 4)
                   (apply gx#core-bind-runtime!__% _g11029_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-runtime!
                    _g11029_))))))))
  (begin
    (define gx#core-bind-runtime-reference!__%
      (lambda (_id8182_ _eid8183_ _rebind?8184_ _phi8185_ _ctx8186_)
        (let* ((_key8188_ (gx#core-identifier-key _id8182_))
               (_bind8190_
                (if (##structure-instance-of? _ctx8186_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid8183_
                     _key8188_
                     _phi8185_
                     _ctx8186_)
                    (if (##structure-instance-of? _ctx8186_ 'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid8183_
                         _key8188_
                         _phi8185_)
                        (##structure
                         gx#runtime-binding::t
                         _eid8183_
                         _key8188_
                         _phi8185_)))))
          (gx#bind-identifier!__%
           _id8182_
           _bind8190_
           _rebind?8184_
           _phi8185_
           _ctx8186_))))
    (begin
      (define gx#core-bind-runtime-reference!__0
        (lambda (_id8196_ _eid8197_)
          (let* ((_rebind?8199_ '#f)
                 (_phi8201_ (gx#current-expander-phi))
                 (_ctx8203_ (gx#current-expander-context)))
            (gx#core-bind-runtime-reference!__%
             _id8196_
             _eid8197_
             _rebind?8199_
             _phi8201_
             _ctx8203_))))
      (define gx#core-bind-runtime-reference!__1
        (lambda (_id8205_ _eid8206_ _rebind?8207_)
          (let* ((_phi8209_ (gx#current-expander-phi))
                 (_ctx8211_ (gx#current-expander-context)))
            (gx#core-bind-runtime-reference!__%
             _id8205_
             _eid8206_
             _rebind?8207_
             _phi8209_
             _ctx8211_))))
      (define gx#core-bind-runtime-reference!__2
        (lambda (_id8213_ _eid8214_ _rebind?8215_ _phi8216_)
          (let ((_ctx8218_ (gx#current-expander-context)))
            (gx#core-bind-runtime-reference!__%
             _id8213_
             _eid8214_
             _rebind?8215_
             _phi8216_
             _ctx8218_))))
      (define gx#core-bind-runtime-reference!
        (lambda _g11031_
          (let ((_g11030_ (length _g11031_)))
            (cond ((##fx= _g11030_ 2)
                   (apply gx#core-bind-runtime-reference!__0 _g11031_))
                  ((##fx= _g11030_ 3)
                   (apply gx#core-bind-runtime-reference!__1 _g11031_))
                  ((##fx= _g11030_ 4)
                   (apply gx#core-bind-runtime-reference!__2 _g11031_))
                  ((##fx= _g11030_ 5)
                   (apply gx#core-bind-runtime-reference!__% _g11031_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-runtime-reference!
                    _g11031_))))))))
  (begin
    (define gx#core-bind-extern!__%
      (lambda (_id8142_ _eid8143_ _rebind?8144_ _phi8145_ _ctx8146_)
        (gx#bind-identifier!__%
         _id8142_
         (##structure
          gx#extern-binding::t
          _eid8143_
          (gx#core-identifier-key _id8142_)
          _phi8145_)
         _rebind?8144_
         _phi8145_
         _ctx8146_)))
    (begin
      (define gx#core-bind-extern!__0
        (lambda (_id8151_ _eid8152_)
          (let* ((_rebind?8154_ '#f)
                 (_phi8156_ (gx#current-expander-phi))
                 (_ctx8158_ (gx#current-expander-context)))
            (gx#core-bind-extern!__%
             _id8151_
             _eid8152_
             _rebind?8154_
             _phi8156_
             _ctx8158_))))
      (define gx#core-bind-extern!__1
        (lambda (_id8160_ _eid8161_ _rebind?8162_)
          (let* ((_phi8164_ (gx#current-expander-phi))
                 (_ctx8166_ (gx#current-expander-context)))
            (gx#core-bind-extern!__%
             _id8160_
             _eid8161_
             _rebind?8162_
             _phi8164_
             _ctx8166_))))
      (define gx#core-bind-extern!__2
        (lambda (_id8168_ _eid8169_ _rebind?8170_ _phi8171_)
          (let ((_ctx8173_ (gx#current-expander-context)))
            (gx#core-bind-extern!__%
             _id8168_
             _eid8169_
             _rebind?8170_
             _phi8171_
             _ctx8173_))))
      (define gx#core-bind-extern!
        (lambda _g11033_
          (let ((_g11032_ (length _g11033_)))
            (cond ((##fx= _g11032_ 2) (apply gx#core-bind-extern!__0 _g11033_))
                  ((##fx= _g11032_ 3) (apply gx#core-bind-extern!__1 _g11033_))
                  ((##fx= _g11032_ 4) (apply gx#core-bind-extern!__2 _g11033_))
                  ((##fx= _g11032_ 5) (apply gx#core-bind-extern!__% _g11033_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-extern!
                    _g11033_))))))))
  (begin
    (define gx#core-bind-syntax!__%
      (lambda (_id8096_ _e8097_ _rebind?8098_ _phi8099_ _ctx8100_)
        (gx#bind-identifier!__%
         _id8096_
         (let ((_key8105_ (gx#core-identifier-key _id8096_))
               (_e8106_ (if (let ((_$e8102_
                                   (##structure-instance-of?
                                    _e8097_
                                    'gx#expander::t)))
                              (if _$e8102_
                                  _$e8102_
                                  (##structure-instance-of?
                                   _e8097_
                                   'gx#expander-context::t)))
                            _e8097_
                            (##structure
                             gx#user-expander::t
                             _e8097_
                             _ctx8100_
                             _phi8099_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__% _key8105_ '#t _phi8099_ _ctx8100_)
            _key8105_
            _phi8099_
            _e8106_))
         _rebind?8098_
         _phi8099_
         _ctx8100_)))
    (begin
      (define gx#core-bind-syntax!__0
        (lambda (_id8111_ _e8112_)
          (let* ((_rebind?8114_ '#f)
                 (_phi8116_ (gx#current-expander-phi))
                 (_ctx8118_ (gx#current-expander-context)))
            (gx#core-bind-syntax!__%
             _id8111_
             _e8112_
             _rebind?8114_
             _phi8116_
             _ctx8118_))))
      (define gx#core-bind-syntax!__1
        (lambda (_id8120_ _e8121_ _rebind?8122_)
          (let* ((_phi8124_ (gx#current-expander-phi))
                 (_ctx8126_ (gx#current-expander-context)))
            (gx#core-bind-syntax!__%
             _id8120_
             _e8121_
             _rebind?8122_
             _phi8124_
             _ctx8126_))))
      (define gx#core-bind-syntax!__2
        (lambda (_id8128_ _e8129_ _rebind?8130_ _phi8131_)
          (let ((_ctx8133_ (gx#current-expander-context)))
            (gx#core-bind-syntax!__%
             _id8128_
             _e8129_
             _rebind?8130_
             _phi8131_
             _ctx8133_))))
      (define gx#core-bind-syntax!
        (lambda _g11035_
          (let ((_g11034_ (length _g11035_)))
            (cond ((##fx= _g11034_ 2) (apply gx#core-bind-syntax!__0 _g11035_))
                  ((##fx= _g11034_ 3) (apply gx#core-bind-syntax!__1 _g11035_))
                  ((##fx= _g11034_ 4) (apply gx#core-bind-syntax!__2 _g11035_))
                  ((##fx= _g11034_ 5) (apply gx#core-bind-syntax!__% _g11035_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-syntax!
                    _g11035_))))))))
  (begin
    (define gx#core-bind-root-syntax!__%
      (lambda (_id8079_ _e8080_ _rebind?8081_)
        (gx#core-bind-syntax!__%
         _id8079_
         _e8080_
         _rebind?8081_
         '0
         (gx#core-context-root__0))))
    (begin
      (define gx#core-bind-root-syntax!__0
        (lambda (_id8086_ _e8087_)
          (let ((_rebind?8089_ '#f))
            (gx#core-bind-root-syntax!__% _id8086_ _e8087_ _rebind?8089_))))
      (define gx#core-bind-root-syntax!
        (lambda _g11037_
          (let ((_g11036_ (length _g11037_)))
            (cond ((##fx= _g11036_ 2)
                   (apply gx#core-bind-root-syntax!__0 _g11037_))
                  ((##fx= _g11036_ 3)
                   (apply gx#core-bind-root-syntax!__% _g11037_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-root-syntax!
                    _g11037_))))))))
  (begin
    (define gx#core-bind-alias!__%
      (lambda (_id8037_ _alias-id8038_ _rebind?8039_ _phi8040_ _ctx8041_)
        (gx#bind-identifier!__%
         _id8037_
         (let ((_key8043_ (gx#core-identifier-key _id8037_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__% _key8043_ '#t _phi8040_ _ctx8041_)
            _key8043_
            _phi8040_
            _alias-id8038_))
         _rebind?8039_
         _phi8040_
         _ctx8041_)))
    (begin
      (define gx#core-bind-alias!__0
        (lambda (_id8048_ _alias-id8049_)
          (let* ((_rebind?8051_ '#f)
                 (_phi8053_ (gx#current-expander-phi))
                 (_ctx8055_ (gx#current-expander-context)))
            (gx#core-bind-alias!__%
             _id8048_
             _alias-id8049_
             _rebind?8051_
             _phi8053_
             _ctx8055_))))
      (define gx#core-bind-alias!__1
        (lambda (_id8057_ _alias-id8058_ _rebind?8059_)
          (let* ((_phi8061_ (gx#current-expander-phi))
                 (_ctx8063_ (gx#current-expander-context)))
            (gx#core-bind-alias!__%
             _id8057_
             _alias-id8058_
             _rebind?8059_
             _phi8061_
             _ctx8063_))))
      (define gx#core-bind-alias!__2
        (lambda (_id8065_ _alias-id8066_ _rebind?8067_ _phi8068_)
          (let ((_ctx8070_ (gx#current-expander-context)))
            (gx#core-bind-alias!__%
             _id8065_
             _alias-id8066_
             _rebind?8067_
             _phi8068_
             _ctx8070_))))
      (define gx#core-bind-alias!
        (lambda _g11039_
          (let ((_g11038_ (length _g11039_)))
            (cond ((##fx= _g11038_ 2) (apply gx#core-bind-alias!__0 _g11039_))
                  ((##fx= _g11038_ 3) (apply gx#core-bind-alias!__1 _g11039_))
                  ((##fx= _g11038_ 4) (apply gx#core-bind-alias!__2 _g11039_))
                  ((##fx= _g11038_ 5) (apply gx#core-bind-alias!__% _g11039_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-alias!
                    _g11039_))))))))
  (begin
    (define gx#make-binding-id__%
      (lambda (_key7994_ _syntax?7995_ _phi7996_ _ctx7997_)
        (if (uninterned-symbol? _key7994_)
            (gensym 'L)
            (if (pair? _key7994_)
                (gensym (car _key7994_))
                (if (##structure-instance-of? _ctx7997_ 'gx#top-context::t)
                    (let ((_ns7999_ (gx#core-context-namespace__% _ctx7997_)))
                      (if (if (fxzero? _phi7996_) (not _syntax?7995_) '#f)
                          (if _ns7999_
                              (make-symbol _ns7999_ '"#" _key7994_)
                              _key7994_)
                          (if _syntax?7995_
                              (make-symbol
                               (let ((_$e8001_ _ns7999_))
                                 (if _$e8001_ _$e8001_ '""))
                               '"[:"
                               (number->string _phi7996_)
                               '":]#"
                               _key7994_)
                              (make-symbol
                               (let ((_$e8004_ _ns7999_))
                                 (if _$e8004_ _$e8004_ '""))
                               '"["
                               (number->string _phi7996_)
                               '"]#"
                               _key7994_))))
                    (gensym _key7994_))))))
    (begin
      (define gx#make-binding-id__0
        (lambda (_key8010_)
          (let* ((_syntax?8012_ '#f)
                 (_phi8014_ (gx#current-expander-phi))
                 (_ctx8016_ (gx#current-expander-context)))
            (gx#make-binding-id__%
             _key8010_
             _syntax?8012_
             _phi8014_
             _ctx8016_))))
      (define gx#make-binding-id__1
        (lambda (_key8018_ _syntax?8019_)
          (let* ((_phi8021_ (gx#current-expander-phi))
                 (_ctx8023_ (gx#current-expander-context)))
            (gx#make-binding-id__%
             _key8018_
             _syntax?8019_
             _phi8021_
             _ctx8023_))))
      (define gx#make-binding-id__2
        (lambda (_key8025_ _syntax?8026_ _phi8027_)
          (let ((_ctx8029_ (gx#current-expander-context)))
            (gx#make-binding-id__%
             _key8025_
             _syntax?8026_
             _phi8027_
             _ctx8029_))))
      (define gx#make-binding-id
        (lambda _g11041_
          (let ((_g11040_ (length _g11041_)))
            (cond ((##fx= _g11040_ 1) (apply gx#make-binding-id__0 _g11041_))
                  ((##fx= _g11040_ 2) (apply gx#make-binding-id__1 _g11041_))
                  ((##fx= _g11040_ 3) (apply gx#make-binding-id__2 _g11041_))
                  ((##fx= _g11040_ 4) (apply gx#make-binding-id__% _g11041_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#make-binding-id
                    _g11041_)))))))))
