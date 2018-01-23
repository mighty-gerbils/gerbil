(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#core-expand-begin%
    (lambda (_stx10671_)
      (letrec ((_expand-special10673_
                (lambda (_hd10675_ _K10676_ _rest10677_ _r10678_)
                  (_K10676_
                   _rest10677_
                   (cons (gx#core-expand-top _hd10675_) _r10678_)))))
        (gx#core-expand-block__0 _stx10671_ _expand-special10673_))))
  (define gx#core-expand-begin-syntax%
    (lambda (_stx10424_)
      (letrec ((_expand-special10426_
                (lambda (_hd10546_ _K10547_ _rest10548_ _r10549_)
                  (let* ((_K10553_
                          (lambda (_e10551_)
                            (_K10547_ _rest10548_ (cons _e10551_ _r10549_))))
                         (_e1055410583_ _hd10546_)
                         (_E1057810587_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e1055410583_)))
                         (_E1057410599_
                          (lambda ()
                            (if (gx#stx-pair? _e1055410583_)
                                (let ((_e1057910591_
                                       (gx#syntax-e _e1055410583_)))
                                  (let ((_hd1058010594_ (##car _e1057910591_))
                                        (_tl1058110596_ (##cdr _e1057910591_)))
                                    (if (if (gx#identifier? _hd1058010594_)
                                            (gx#core-identifier=?
                                             _hd1058010594_
                                             '%#define-runtime)
                                            '#f)
                                        (if '#t
                                            (_K10553_
                                             (gx#core-expand-define-runtime%
                                              _hd10546_))
                                            (_E1057810587_))
                                        (_E1057810587_))))
                                (_E1057810587_))))
                         (_E1057010611_
                          (lambda ()
                            (if (gx#stx-pair? _e1055410583_)
                                (let ((_e1057510603_
                                       (gx#syntax-e _e1055410583_)))
                                  (let ((_hd1057610606_ (##car _e1057510603_))
                                        (_tl1057710608_ (##cdr _e1057510603_)))
                                    (if (if (gx#identifier? _hd1057610606_)
                                            (gx#core-identifier=?
                                             _hd1057610606_
                                             '%#define-alias)
                                            '#f)
                                        (if '#t
                                            (_K10553_
                                             (gx#core-expand-define-alias%
                                              _hd10546_))
                                            (_E1057410599_))
                                        (_E1057410599_))))
                                (_E1057410599_))))
                         (_E1056010623_
                          (lambda ()
                            (if (gx#stx-pair? _e1055410583_)
                                (let ((_e1057110615_
                                       (gx#syntax-e _e1055410583_)))
                                  (let ((_hd1057210618_ (##car _e1057110615_))
                                        (_tl1057310620_ (##cdr _e1057110615_)))
                                    (if (if (gx#identifier? _hd1057210618_)
                                            (gx#core-identifier=?
                                             _hd1057210618_
                                             '%#define-syntax)
                                            '#f)
                                        (if '#t
                                            (_K10553_
                                             (gx#core-expand-define-syntax%
                                              _hd10546_))
                                            (_E1057010611_))
                                        (_E1057010611_))))
                                (_E1057010611_))))
                         (_E1055610655_
                          (lambda ()
                            (if (gx#stx-pair? _e1055410583_)
                                (let ((_e1056110627_
                                       (gx#syntax-e _e1055410583_)))
                                  (let ((_hd1056210630_ (##car _e1056110627_))
                                        (_tl1056310632_ (##cdr _e1056110627_)))
                                    (if (if (gx#identifier? _hd1056210630_)
                                            (gx#core-identifier=?
                                             _hd1056210630_
                                             '%#define-values)
                                            '#f)
                                        (if (gx#stx-pair? _tl1056310632_)
                                            (let ((_e1056410635_
                                                   (gx#syntax-e
                                                    _tl1056310632_)))
                                              (let ((_hd1056510638_
                                                     (##car _e1056410635_))
                                                    (_tl1056610640_
                                                     (##cdr _e1056410635_)))
                                                (let ((_hd-bind10643_
                                                       _hd1056510638_))
                                                  (if (gx#stx-pair?
                                                       _tl1056610640_)
                                                      (let ((_e1056710645_
                                                             (gx#syntax-e
                                                              _tl1056610640_)))
                                                        (let ((_hd1056810648_
                                                               (##car _e1056710645_))
                                                              (_tl1056910650_
                                                               (##cdr _e1056710645_)))
                                                          (let ((_expr10653_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1056810648_))
                    (if (gx#stx-null? _tl1056910650_)
                        (if (gx#core-bind-values? _hd-bind10643_)
                            (begin
                              (gx#core-bind-values!__0 _hd-bind10643_)
                              (_K10553_ _hd10546_))
                            (_E1056010623_))
                        (_E1056010623_)))))
              (_E1056010623_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1056010623_))
                                        (_E1056010623_))))
                                (_E1056010623_))))
                         (_E1055510667_
                          (lambda ()
                            (if (gx#stx-pair? _e1055410583_)
                                (let ((_e1055710659_
                                       (gx#syntax-e _e1055410583_)))
                                  (let ((_hd1055810662_ (##car _e1055710659_))
                                        (_tl1055910664_ (##cdr _e1055710659_)))
                                    (if (if (gx#identifier? _hd1055810662_)
                                            (gx#core-identifier=?
                                             _hd1055810662_
                                             '%#begin-syntax)
                                            '#f)
                                        (if '#t
                                            (_K10553_
                                             (gx#core-expand-begin-syntax%
                                              _hd10546_))
                                            (_E1055610655_))
                                        (_E1055610655_))))
                                (_E1055610655_)))))
                    (_E1055510667_))))
               (_eval-body10427_
                (lambda (_rbody10435_)
                  (let _lp10437_ ((_rest10439_ _rbody10435_)
                                  (_body10440_ '())
                                  (_ebody10441_ '()))
                    (let* ((_rest1044210450_ _rest10439_)
                           (_E1044510454_
                            (lambda ()
                              (error '"No clause matching" _rest1044210450_)))
                           (_else1044410458_
                            (lambda ()
                              (values _body10440_
                                      (gx#eval-syntax*
                                       (gx#core-quote-syntax__1
                                        (gx#core-cons '%#begin _ebody10441_)
                                        (gx#stx-source _stx10424_))))))
                           (_K1044610534_
                            (lambda (_rest10461_ _hd10462_)
                              (let* ((_e1046310480_ _hd10462_)
                                     (_E1047510484_
                                      (lambda ()
                                        (_lp10437_
                                         _rest10461_
                                         (cons _hd10462_ _body10440_)
                                         (cons _hd10462_ _ebody10441_))))
                                     (_E1046510496_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1046310480_)
                                            (let ((_e1047610488_
                                                   (gx#syntax-e
                                                    _e1046310480_)))
                                              (let ((_hd1047710491_
                                                     (##car _e1047610488_))
                                                    (_tl1047810493_
                                                     (##cdr _e1047610488_)))
                                                (if (if (gx#identifier?
                                                         _hd1047710491_)
                                                        (gx#core-identifier=?
                                                         _hd1047710491_
                                                         '%#begin-syntax)
                                                        '#f)
                                                    (if '#t
                                                        (_lp10437_
                                                         _rest10461_
                                                         (cons _hd10462_
                                                               _body10440_)
                                                         _ebody10441_)
                                                        (_E1047510484_))
                                                    (_E1047510484_))))
                                            (_E1047510484_))))
                                     (_E1046410530_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1046310480_)
                                            (let ((_e1046610500_
                                                   (gx#syntax-e
                                                    _e1046310480_)))
                                              (let ((_hd1046710503_
                                                     (##car _e1046610500_))
                                                    (_tl1046810505_
                                                     (##cdr _e1046610500_)))
                                                (if (if (gx#identifier?
                                                         _hd1046710503_)
                                                        (gx#core-identifier=?
                                                         _hd1046710503_
                                                         '%#define-values)
                                                        '#f)
                                                    (if (gx#stx-pair?
                                                         _tl1046810505_)
                                                        (let ((_e1046910508_
                                                               (gx#syntax-e
                                                                _tl1046810505_)))
                                                          (let ((_hd1047010511_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1046910508_))
                        (_tl1047110513_ (##cdr _e1046910508_)))
                    (let ((_hd-bind10516_ _hd1047010511_))
                      (if (gx#stx-pair? _tl1047110513_)
                          (let ((_e1047210518_ (gx#syntax-e _tl1047110513_)))
                            (let ((_hd1047310521_ (##car _e1047210518_))
                                  (_tl1047410523_ (##cdr _e1047210518_)))
                              (let ((_expr10526_ _hd1047310521_))
                                (if (gx#stx-null? _tl1047410523_)
                                    (if '#t
                                        (let ((_ehd10528_
                                               (gx#core-quote-syntax__1
                                                (cons (gx#core-quote-syntax__0
                                                       '%#define-values)
                                                      (cons (gx#core-quote-bind-values
                                                             _hd-bind10516_)
                                                            (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr10526_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#stx-source _hd10462_))))
                                          (_lp10437_
                                           _rest10461_
                                           (cons _ehd10528_ _body10440_)
                                           (cons _ehd10528_ _ebody10441_)))
                                        (_E1046510496_))
                                    (_E1046510496_)))))
                          (_E1046510496_)))))
                (_E1046510496_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1046510496_))))
                                            (_E1046510496_)))))
                                (_E1046410530_)))))
                      (if (##pair? _rest1044210450_)
                          (let ((_hd1044710537_ (##car _rest1044210450_))
                                (_tl1044810539_ (##cdr _rest1044210450_)))
                            (let* ((_hd10542_ _hd1044710537_)
                                   (_rest10544_ _tl1044810539_))
                              (_K1044610534_ _rest10544_ _hd10542_)))
                          (_else1044410458_)))))))
        (call-with-parameters
         (lambda ()
           (let* ((_rbody10430_
                   (gx#core-expand-block__1
                    _stx10424_
                    _expand-special10426_
                    '#f))
                  (_g10685_ (_eval-body10427_ _rbody10430_)))
             (begin
               (let ((_g10686_ (values-count _g10685_)))
                 (if (not (fx= _g10686_ 2))
                     (error "Context expects 2 values" _g10686_)))
               (let ((_expanded-body10432_ (values-ref _g10685_ 0))
                     (_value10433_ (values-ref _g10685_ 1)))
                 (gx#core-quote-syntax__1
                  (if (##structure-instance-of?
                       (gx#current-expander-context)
                       'gx#module-context::t)
                      (gx#core-cons '%#begin-syntax _expanded-body10432_)
                      (cons (gx#core-quote-syntax__0 '%#quote)
                            (cons _value10433_ '())))
                  (gx#stx-source _stx10424_))))))
         gx#current-expander-phi
         (fx+ (gx#current-expander-phi) '1)))))
  (define gx#core-expand-begin-foreign%
    (lambda (_stx10394_)
      (let* ((_e1039510402_ _stx10394_)
             (_E1039710406_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1039510402_)))
             (_E1039610420_
              (lambda ()
                (if (gx#stx-pair? _e1039510402_)
                    (let ((_e1039810410_ (gx#syntax-e _e1039510402_)))
                      (let ((_hd1039910413_ (##car _e1039810410_))
                            (_tl1040010415_ (##cdr _e1039810410_)))
                        (let ((_body10418_ _tl1040010415_))
                          (if (gx#stx-list? _body10418_)
                              (gx#core-quote-syntax__1
                               (gx#core-cons '%#begin-foreign _body10418_)
                               (gx#stx-source _stx10394_))
                              (_E1039710406_)))))
                    (_E1039710406_)))))
        (_E1039610420_))))
  (define gx#core-expand-begin-module%
    (lambda (_stx10392_)
      (gx#raise-syntax-error '#f '"Illegal expansion" _stx10392_)))
  (define gx#core-expand-begin-annotation%
    (lambda (_stx10380_)
      (let* ((_e1038110384_ _stx10380_)
             (_E1038210388_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1038110384_))))
        (_E1038210388_))))
  (define gx#core-expand-local-block
    (lambda (_stx10104_ _body10105_)
      (letrec ((_expand-special10107_
                (lambda (_hd10375_ _K10376_ _rest10377_ _r10378_)
                  (_K10376_
                   '()
                   (cons (_expand-internal10108_ _hd10375_ _rest10377_)
                         _r10378_))))
               (_expand-internal10108_
                (lambda (_hd10371_ _rest10372_)
                  (call-with-parameters
                   (lambda ()
                     (_wrap-internal10110_
                      (gx#core-expand-block__1
                       (gx#stx-wrap-source
                        (cons* '%#begin _hd10371_ _rest10372_)
                        (gx#stx-source _stx10104_))
                       _expand-internal-special10109_
                       '#f)))
                   gx#current-expander-context
                   (let ((__obj10679 (make-object gx#local-context::t '5)))
                     (begin
                       (gx#local-context:::init!__0 __obj10679)
                       __obj10679)))))
               (_expand-internal-special10109_
                (lambda (_hd10266_ _K10267_ _rest10268_ _r10269_)
                  (let* ((_e1027010295_ _hd10266_)
                         (_E1029010299_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e1027010295_)))
                         (_E1028610311_
                          (lambda ()
                            (if (gx#stx-pair? _e1027010295_)
                                (let ((_e1029110303_
                                       (gx#syntax-e _e1027010295_)))
                                  (let ((_hd1029210306_ (##car _e1029110303_))
                                        (_tl1029310308_ (##cdr _e1029110303_)))
                                    (if (if (gx#identifier? _hd1029210306_)
                                            (gx#core-identifier=?
                                             _hd1029210306_
                                             '%#declare)
                                            '#f)
                                        (if '#t
                                            (_K10267_
                                             _rest10268_
                                             (cons (gx#core-expand-declare%
                                                    _hd10266_)
                                                   _r10269_))
                                            (_E1029010299_))
                                        (_E1029010299_))))
                                (_E1029010299_))))
                         (_E1028210323_
                          (lambda ()
                            (if (gx#stx-pair? _e1027010295_)
                                (let ((_e1028710315_
                                       (gx#syntax-e _e1027010295_)))
                                  (let ((_hd1028810318_ (##car _e1028710315_))
                                        (_tl1028910320_ (##cdr _e1028710315_)))
                                    (if (if (gx#identifier? _hd1028810318_)
                                            (gx#core-identifier=?
                                             _hd1028810318_
                                             '%#define-alias)
                                            '#f)
                                        (if '#t
                                            (begin
                                              (gx#core-expand-define-alias%
                                               _hd10266_)
                                              (_K10267_ _rest10268_ _r10269_))
                                            (_E1028610311_))
                                        (_E1028610311_))))
                                (_E1028610311_))))
                         (_E1027210335_
                          (lambda ()
                            (if (gx#stx-pair? _e1027010295_)
                                (let ((_e1028310327_
                                       (gx#syntax-e _e1027010295_)))
                                  (let ((_hd1028410330_ (##car _e1028310327_))
                                        (_tl1028510332_ (##cdr _e1028310327_)))
                                    (if (if (gx#identifier? _hd1028410330_)
                                            (gx#core-identifier=?
                                             _hd1028410330_
                                             '%#define-syntax)
                                            '#f)
                                        (if '#t
                                            (begin
                                              (gx#core-expand-define-syntax%
                                               _hd10266_)
                                              (_K10267_ _rest10268_ _r10269_))
                                            (_E1028210323_))
                                        (_E1028210323_))))
                                (_E1028210323_))))
                         (_E1027110367_
                          (lambda ()
                            (if (gx#stx-pair? _e1027010295_)
                                (let ((_e1027310339_
                                       (gx#syntax-e _e1027010295_)))
                                  (let ((_hd1027410342_ (##car _e1027310339_))
                                        (_tl1027510344_ (##cdr _e1027310339_)))
                                    (if (if (gx#identifier? _hd1027410342_)
                                            (gx#core-identifier=?
                                             _hd1027410342_
                                             '%#define-values)
                                            '#f)
                                        (if (gx#stx-pair? _tl1027510344_)
                                            (let ((_e1027610347_
                                                   (gx#syntax-e
                                                    _tl1027510344_)))
                                              (let ((_hd1027710350_
                                                     (##car _e1027610347_))
                                                    (_tl1027810352_
                                                     (##cdr _e1027610347_)))
                                                (let ((_hd-bind10355_
                                                       _hd1027710350_))
                                                  (if (gx#stx-pair?
                                                       _tl1027810352_)
                                                      (let ((_e1027910357_
                                                             (gx#syntax-e
                                                              _tl1027810352_)))
                                                        (let ((_hd1028010360_
                                                               (##car _e1027910357_))
                                                              (_tl1028110362_
                                                               (##cdr _e1027910357_)))
                                                          (let ((_expr10365_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1028010360_))
                    (if (gx#stx-null? _tl1028110362_)
                        (if (gx#core-bind-values? _hd-bind10355_)
                            (begin
                              (gx#core-bind-values!__0 _hd-bind10355_)
                              (_K10267_ _rest10268_ (cons _hd10266_ _r10269_)))
                            (_E1027210335_))
                        (_E1027210335_)))))
              (_E1027210335_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1027210335_))
                                        (_E1027210335_))))
                                (_E1027210335_)))))
                    (_E1027110367_))))
               (_wrap-internal10110_
                (lambda (_rbody10112_)
                  (let _lp10114_ ((_rest10116_ _rbody10112_)
                                  (_decls10117_ '())
                                  (_bind10118_ '())
                                  (_body10119_ '()))
                    (let* ((_e1012010127_ _rest10116_)
                           (_E1012210176_
                            (lambda ()
                              (let* ((_body10171_
                                      (let* ((_body1013010140_ _body10119_)
                                             (_E1013410144_
                                              (lambda ()
                                                (error '"No clause matching"
                                                       _body1013010140_)))
                                             (_else1013310148_
                                              (lambda ()
                                                (gx#core-quote-syntax__1
                                                 (gx#core-cons
                                                  '%#begin
                                                  _body10119_)
                                                 (gx#stx-source _stx10104_))))
                                             (_try-match1013210164_
                                              (lambda ()
                                                (let ((_K1013510154_
                                                       (lambda (_expr10152_)
                                                         _expr10152_)))
                                                  (if (##pair? _body1013010140_)
                                                      (let ((_hd1013610157_
                                                             (##car _body1013010140_))
                                                            (_tl1013710159_
                                                             (##cdr _body1013010140_)))
                                                        (let ((_expr10162_
                                                               _hd1013610157_))
                                                          (if (##null? _tl1013710159_)
                                                              (_K1013510154_
                                                               _expr10162_)
                                                              (_else1013310148_))))
                                                      (_else1013310148_)))))
                                             (_K1013810168_
                                              (lambda ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _stx10104_))))
                                        (if (##null? _body1013010140_)
                                            (_K1013810168_)
                                            (_try-match1013210164_))))
                                     (_body10173_
                                      (if (null? _bind10118_)
                                          _body10171_
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#letrec*-values)
                                                 (cons _bind10118_
                                                       (cons _body10171_ '())))
                                           (gx#stx-source _stx10104_)))))
                                (if (null? _decls10117_)
                                    _body10173_
                                    (gx#core-quote-syntax__1
                                     (cons (gx#core-quote-syntax__0
                                            '%#begin-annotation)
                                           (cons _decls10117_
                                                 (cons _body10173_ '())))
                                     (gx#stx-source _stx10104_))))))
                           (_E1012110262_
                            (lambda ()
                              (if (gx#stx-pair? _e1012010127_)
                                  (let ((_e1012310180_
                                         (gx#syntax-e _e1012010127_)))
                                    (let ((_hd1012410183_
                                           (##car _e1012310180_))
                                          (_tl1012510185_
                                           (##cdr _e1012310180_)))
                                      (let* ((_hd10188_ _hd1012410183_)
                                             (_rest10190_ _tl1012510185_))
                                        (if '#t
                                            (let* ((_e1019110208_ _hd10188_)
                                                   (_E1020310212_
                                                    (lambda ()
                                                      (if (null? _bind10118_)
                                                          (_lp10114_
                                                           _rest10190_
                                                           _decls10117_
                                                           _bind10118_
                                                           (cons _hd10188_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body10119_))
                  (_lp10114_
                   _rest10190_
                   _decls10117_
                   (cons (cons '#f (cons _hd10188_ '())) _bind10118_)
                   _body10119_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1019310226_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e1019110208_)
                                                          (let ((_e1020410216_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e1019110208_)))
                    (let ((_hd1020510219_ (##car _e1020410216_))
                          (_tl1020610221_ (##cdr _e1020410216_)))
                      (if (if (gx#identifier? _hd1020510219_)
                              (gx#core-identifier=? _hd1020510219_ '%#declare)
                              '#f)
                          (let ((_xdecls10224_ _tl1020610221_))
                            (if '#t
                                (_lp10114_
                                 _rest10190_
                                 (gx#stx-foldr cons _decls10117_ _xdecls10224_)
                                 _bind10118_
                                 _body10119_)
                                (_E1020310212_)))
                          (_E1020310212_))))
                  (_E1020310212_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E1019210258_
                                                    (lambda ()
                                                      (if (gx#stx-pair?
                                                           _e1019110208_)
                                                          (let ((_e1019410230_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _e1019110208_)))
                    (let ((_hd1019510233_ (##car _e1019410230_))
                          (_tl1019610235_ (##cdr _e1019410230_)))
                      (if (if (gx#identifier? _hd1019510233_)
                              (gx#core-identifier=?
                               _hd1019510233_
                               '%#define-values)
                              '#f)
                          (if (gx#stx-pair? _tl1019610235_)
                              (let ((_e1019710238_
                                     (gx#syntax-e _tl1019610235_)))
                                (let ((_hd1019810241_ (##car _e1019710238_))
                                      (_tl1019910243_ (##cdr _e1019710238_)))
                                  (let ((_hd-bind10246_ _hd1019810241_))
                                    (if (gx#stx-pair? _tl1019910243_)
                                        (let ((_e1020010248_
                                               (gx#syntax-e _tl1019910243_)))
                                          (let ((_hd1020110251_
                                                 (##car _e1020010248_))
                                                (_tl1020210253_
                                                 (##cdr _e1020010248_)))
                                            (let ((_expr10256_ _hd1020110251_))
                                              (if (gx#stx-null? _tl1020210253_)
                                                  (if '#t
                                                      (_lp10114_
                                                       _rest10190_
                                                       _decls10117_
                                                       (cons (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd-bind10246_)
                           (cons (gx#core-expand-expression _expr10256_) '()))
                     _bind10118_)
               _body10119_)
              (_E1019310226_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1019310226_)))))
                                        (_E1019310226_)))))
                              (_E1019310226_))
                          (_E1019310226_))))
                  (_E1019310226_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1019210258_))
                                            (_E1012210176_)))))
                                  (_E1012210176_)))))
                      (_E1012110262_))))))
        (gx#core-expand-block*
         (gx#stx-wrap-source
          (cons '%#begin _body10105_)
          (gx#stx-source _stx10104_))
         _expand-special10107_))))
  (define gx#core-expand-declare%
    (lambda (_stx10042_)
      (let* ((_e1004310050_ _stx10042_)
             (_E1004510054_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e1004310050_)))
             (_E1004410100_
              (lambda ()
                (if (gx#stx-pair? _e1004310050_)
                    (let ((_e1004610058_ (gx#syntax-e _e1004310050_)))
                      (let ((_hd1004710061_ (##car _e1004610058_))
                            (_tl1004810063_ (##cdr _e1004610058_)))
                        (let ((_body10066_ _tl1004810063_))
                          (if (gx#stx-list? _body10066_)
                              (gx#core-quote-syntax__1
                               (gx#core-cons
                                '%#declare
                                (gx#stx-map1
                                 (lambda (_decl10068_)
                                   (let* ((_e1006910076_ _decl10068_)
                                          (_E1007110080_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _e1006910076_)))
                                          (_E1007010096_
                                           (lambda ()
                                             (if (gx#stx-pair? _e1006910076_)
                                                 (let ((_e1007210084_
                                                        (gx#syntax-e
                                                         _e1006910076_)))
                                                   (let ((_hd1007310087_
                                                          (##car _e1007210084_))
                                                         (_tl1007410089_
                                                          (##cdr _e1007210084_)))
                                                     (let* ((_head10092_
                                                             _hd1007310087_)
                                                            (_args10094_
                                                             _tl1007410089_))
                                                       (if (gx#stx-list?
                                                            _args10094_)
                                                           (gx#stx-map1
                                                            gx#core-quote-syntax
                                                            _decl10068_)
                                                           (_E1007110080_)))))
                                                 (_E1007110080_)))))
                                     (_E1007010096_)))
                                 _body10066_))
                               (gx#stx-source _stx10042_))
                              (_E1004510054_)))))
                    (_E1004510054_)))))
        (_E1004410100_))))
  (define gx#core-expand-extern%
    (lambda (_stx9926_)
      (let* ((_e99279934_ _stx9926_)
             (_E99299938_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e99279934_)))
             (_E992810038_
              (lambda ()
                (if (gx#stx-pair? _e99279934_)
                    (let ((_e99309942_ (gx#syntax-e _e99279934_)))
                      (let ((_hd99319945_ (##car _e99309942_))
                            (_tl99329947_ (##cdr _e99309942_)))
                        (let ((_body9950_ _tl99329947_))
                          (if (gx#stx-list? _body9950_)
                              (begin
                                (gx#stx-for-each1
                                 (lambda (_bind9952_)
                                   (let* ((_e99539963_ _bind9952_)
                                          (_E99559967_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _e99539963_)))
                                          (_E99549991_
                                           (lambda ()
                                             (if (gx#stx-pair? _e99539963_)
                                                 (let ((_e99569971_
                                                        (gx#syntax-e
                                                         _e99539963_)))
                                                   (let ((_hd99579974_
                                                          (##car _e99569971_))
                                                         (_tl99589976_
                                                          (##cdr _e99569971_)))
                                                     (let ((_id9979_
                                                            _hd99579974_))
                                                       (if (gx#stx-pair?
                                                            _tl99589976_)
                                                           (let ((_e99599981_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl99589976_)))
                     (let ((_hd99609984_ (##car _e99599981_))
                           (_tl99619986_ (##cdr _e99599981_)))
                       (let ((_eid9989_ _hd99609984_))
                         (if (gx#stx-null? _tl99619986_)
                             (if (if (gx#identifier? _id9979_)
                                     (gx#identifier? _eid9989_)
                                     '#f)
                                 (gx#core-bind-extern!__0
                                  _id9979_
                                  (gx#stx-e _eid9989_))
                                 (_E99559967_))
                             (_E99559967_)))))
                   (_E99559967_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E99559967_)))))
                                     (_E99549991_)))
                                 _body9950_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#extern
                                  (gx#stx-map1
                                   (lambda (_bind9995_)
                                     (let* ((_e999610006_ _bind9995_)
                                            (_E999810010_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _e999610006_)))
                                            (_E999710034_
                                             (lambda ()
                                               (if (gx#stx-pair? _e999610006_)
                                                   (let ((_e999910014_
                                                          (gx#syntax-e
                                                           _e999610006_)))
                                                     (let ((_hd1000010017_
                                                            (##car _e999910014_))
                                                           (_tl1000110019_
                                                            (##cdr _e999910014_)))
                                                       (let ((_id10022_
                                                              _hd1000010017_))
                                                         (if (gx#stx-pair?
                                                              _tl1000110019_)
                                                             (let ((_e1000210024_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl1000110019_)))
                       (let ((_hd1000310027_ (##car _e1000210024_))
                             (_tl1000410029_ (##cdr _e1000210024_)))
                         (let ((_eid10032_ _hd1000310027_))
                           (if (gx#stx-null? _tl1000410029_)
                               (if '#t
                                   (cons (gx#core-quote-syntax__0 _id10022_)
                                         (cons (gx#stx-e _eid10032_) '()))
                                   (_E999810010_))
                               (_E999810010_)))))
                     (_E999810010_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E999810010_)))))
                                       (_E999710034_)))
                                   _body9950_))
                                 (gx#stx-source _stx9926_)))
                              (_E99299938_)))))
                    (_E99299938_)))))
        (_E992810038_))))
  (define gx#core-expand-define-values%
    (lambda (_stx9872_)
      (let* ((_e98739886_ _stx9872_)
             (_E98759890_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e98739886_)))
             (_E98749922_
              (lambda ()
                (if (gx#stx-pair? _e98739886_)
                    (let ((_e98769894_ (gx#syntax-e _e98739886_)))
                      (let ((_hd98779897_ (##car _e98769894_))
                            (_tl98789899_ (##cdr _e98769894_)))
                        (if (gx#stx-pair? _tl98789899_)
                            (let ((_e98799902_ (gx#syntax-e _tl98789899_)))
                              (let ((_hd98809905_ (##car _e98799902_))
                                    (_tl98819907_ (##cdr _e98799902_)))
                                (let ((_hd9910_ _hd98809905_))
                                  (if (gx#stx-pair? _tl98819907_)
                                      (let ((_e98829912_
                                             (gx#syntax-e _tl98819907_)))
                                        (let ((_hd98839915_
                                               (##car _e98829912_))
                                              (_tl98849917_
                                               (##cdr _e98829912_)))
                                          (let ((_expr9920_ _hd98839915_))
                                            (if (gx#stx-null? _tl98849917_)
                                                (if (gx#core-bind-values?
                                                     _hd9910_)
                                                    (begin
                                                      (gx#core-bind-values!__0
                                                       _hd9910_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-values)
                                                             (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd9910_)
                           (cons (gx#core-expand-expression _expr9920_) '())))
               (gx#stx-source _stx9872_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E98759890_))
                                                (_E98759890_)))))
                                      (_E98759890_)))))
                            (_E98759890_))))
                    (_E98759890_)))))
        (_E98749922_))))
  (define gx#core-expand-define-runtime%
    (lambda (_stx9818_)
      (let* ((_e98199832_ _stx9818_)
             (_E98219836_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e98199832_)))
             (_E98209868_
              (lambda ()
                (if (gx#stx-pair? _e98199832_)
                    (let ((_e98229840_ (gx#syntax-e _e98199832_)))
                      (let ((_hd98239843_ (##car _e98229840_))
                            (_tl98249845_ (##cdr _e98229840_)))
                        (if (gx#stx-pair? _tl98249845_)
                            (let ((_e98259848_ (gx#syntax-e _tl98249845_)))
                              (let ((_hd98269851_ (##car _e98259848_))
                                    (_tl98279853_ (##cdr _e98259848_)))
                                (let ((_id9856_ _hd98269851_))
                                  (if (gx#stx-pair? _tl98279853_)
                                      (let ((_e98289858_
                                             (gx#syntax-e _tl98279853_)))
                                        (let ((_hd98299861_
                                               (##car _e98289858_))
                                              (_tl98309863_
                                               (##cdr _e98289858_)))
                                          (let ((_binding-id9866_
                                                 _hd98299861_))
                                            (if (gx#stx-null? _tl98309863_)
                                                (if (if (gx#identifier?
                                                         _id9856_)
                                                        (gx#identifier?
                                                         _binding-id9866_)
                                                        '#f)
                                                    (begin
                                                      (gx#core-bind-runtime-reference!__0
                                                       _id9856_
                                                       (gx#stx-e
                                                        _binding-id9866_))
                                                      (gx#core-quote-syntax__0
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-runtime)
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _id9856_)
                           (cons (gx#core-quote-syntax__0 _binding-id9866_)
                                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E98219836_))
                                                (_E98219836_)))))
                                      (_E98219836_)))))
                            (_E98219836_))))
                    (_E98219836_)))))
        (_E98209868_))))
  (define gx#core-expand-define-syntax%
    (lambda (_stx9761_)
      (let* ((_e97629775_ _stx9761_)
             (_E97649779_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e97629775_)))
             (_E97639814_
              (lambda ()
                (if (gx#stx-pair? _e97629775_)
                    (let ((_e97659783_ (gx#syntax-e _e97629775_)))
                      (let ((_hd97669786_ (##car _e97659783_))
                            (_tl97679788_ (##cdr _e97659783_)))
                        (if (gx#stx-pair? _tl97679788_)
                            (let ((_e97689791_ (gx#syntax-e _tl97679788_)))
                              (let ((_hd97699794_ (##car _e97689791_))
                                    (_tl97709796_ (##cdr _e97689791_)))
                                (let ((_id9799_ _hd97699794_))
                                  (if (gx#stx-pair? _tl97709796_)
                                      (let ((_e97719801_
                                             (gx#syntax-e _tl97709796_)))
                                        (let ((_hd97729804_
                                               (##car _e97719801_))
                                              (_tl97739806_
                                               (##cdr _e97719801_)))
                                          (let ((_expr9809_ _hd97729804_))
                                            (if (gx#stx-null? _tl97739806_)
                                                (if (gx#identifier? _id9799_)
                                                    (let ((_g10687_
                                                           (gx#core-expand-expression+1
                                                            _expr9809_)))
                                                      (begin
                                                        (let ((_g10688_
                                                               (values-count
                                                                _g10687_)))
                                                          (if (not (fx= _g10688_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                2))
                      (error "Context expects 2 values" _g10688_)))
                (let ((_e-stx9811_ (values-ref _g10687_ 0))
                      (_e9812_ (values-ref _g10687_ 1)))
                  (begin
                    (gx#core-bind-syntax!__0 _id9799_ _e9812_)
                    (gx#core-quote-syntax__1
                     (cons (gx#core-quote-syntax__0 '%#define-syntax)
                           (cons (gx#core-quote-syntax__0 _id9799_)
                                 (cons _e-stx9811_ '())))
                     (gx#stx-source _stx9761_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E97649779_))
                                                (_E97649779_)))))
                                      (_E97649779_)))))
                            (_E97649779_))))
                    (_E97649779_)))))
        (_E97639814_))))
  (define gx#core-expand-define-alias%
    (lambda (_stx9705_)
      (let* ((_e97069719_ _stx9705_)
             (_E97089723_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e97069719_)))
             (_E97079757_
              (lambda ()
                (if (gx#stx-pair? _e97069719_)
                    (let ((_e97099727_ (gx#syntax-e _e97069719_)))
                      (let ((_hd97109730_ (##car _e97099727_))
                            (_tl97119732_ (##cdr _e97099727_)))
                        (if (gx#stx-pair? _tl97119732_)
                            (let ((_e97129735_ (gx#syntax-e _tl97119732_)))
                              (let ((_hd97139738_ (##car _e97129735_))
                                    (_tl97149740_ (##cdr _e97129735_)))
                                (let ((_id9743_ _hd97139738_))
                                  (if (gx#stx-pair? _tl97149740_)
                                      (let ((_e97159745_
                                             (gx#syntax-e _tl97149740_)))
                                        (let ((_hd97169748_
                                               (##car _e97159745_))
                                              (_tl97179750_
                                               (##cdr _e97159745_)))
                                          (let ((_alias-id9753_ _hd97169748_))
                                            (if (gx#stx-null? _tl97179750_)
                                                (if (if (gx#identifier?
                                                         _id9743_)
                                                        (gx#identifier?
                                                         _alias-id9753_)
                                                        '#f)
                                                    (let ((_alias-id9755_
                                                           (gx#core-quote-syntax__0
                                                            _alias-id9753_)))
                                                      (begin
                                                        (gx#core-bind-alias!__0
                                                         _id9743_
                                                         _alias-id9755_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _id9743_)
                             (cons _alias-id9755_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E97089723_))
                                                (_E97089723_)))))
                                      (_E97089723_)))))
                            (_E97089723_))))
                    (_E97089723_)))))
        (_E97079757_))))
  (begin
    (define gx#core-expand-lambda%__opt-lambda9646
      (lambda (_stx9648_ _wrap?9649_)
        (let* ((_e96509660_ _stx9648_)
               (_E96529664_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e96509660_)))
               (_E96519691_
                (lambda ()
                  (if (gx#stx-pair? _e96509660_)
                      (let ((_e96539668_ (gx#syntax-e _e96509660_)))
                        (let ((_hd96549671_ (##car _e96539668_))
                              (_tl96559673_ (##cdr _e96539668_)))
                          (if (gx#stx-pair? _tl96559673_)
                              (let ((_e96569676_ (gx#syntax-e _tl96559673_)))
                                (let ((_hd96579679_ (##car _e96569676_))
                                      (_tl96589681_ (##cdr _e96569676_)))
                                  (let* ((_hd9684_ _hd96579679_)
                                         (_body9686_ _tl96589681_))
                                    (if (gx#core-bind-values? _hd9684_)
                                        (call-with-parameters
                                         (lambda ()
                                           (begin
                                             (gx#core-bind-values!__0 _hd9684_)
                                             (let ((_body9689_
                                                    (cons (gx#core-quote-bind-values
                                                           _hd9684_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx9648_
                         _body9686_)
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if _wrap?9649_
                                                   (gx#core-quote-syntax__1
                                                    (gx#core-cons
                                                     '%#lambda
                                                     _body9689_)
                                                    (gx#stx-source _stx9648_))
                                                   _body9689_))))
                                         gx#current-expander-context
                                         (let ((__obj10680
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (begin
                                             (gx#local-context:::init!__0
                                              __obj10680)
                                             __obj10680)))
                                        (_E96529664_)))))
                              (_E96529664_))))
                      (_E96529664_)))))
          (_E96519691_))))
    (begin
      (define gx#core-expand-lambda%__0
        (lambda (_stx9698_)
          (let ((_wrap?9700_ '#t))
            (gx#core-expand-lambda%__opt-lambda9646 _stx9698_ _wrap?9700_))))
      (define gx#core-expand-lambda%
        (lambda _g10690_
          (let ((_g10689_ (length _g10690_)))
            (cond ((fx= _g10689_ 1) (apply gx#core-expand-lambda%__0 _g10690_))
                  ((fx= _g10689_ 2)
                   (apply gx#core-expand-lambda%__opt-lambda9646 _g10690_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-lambda%
                    _g10690_))))))))
  (define gx#core-expand-case-lambda%
    (lambda (_stx9612_)
      (let* ((_e96139620_ _stx9612_)
             (_E96159624_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e96139620_)))
             (_E96149643_
              (lambda ()
                (if (gx#stx-pair? _e96139620_)
                    (let ((_e96169628_ (gx#syntax-e _e96139620_)))
                      (let ((_hd96179631_ (##car _e96169628_))
                            (_tl96189633_ (##cdr _e96169628_)))
                        (let ((_clauses9636_ _tl96189633_))
                          (if (gx#stx-list? _clauses9636_)
                              (gx#core-quote-syntax__1
                               (gx#core-cons
                                '%#case-lambda
                                (gx#stx-map1
                                 (lambda (_clause9638_)
                                   (gx#core-expand-lambda%__opt-lambda9646
                                    (gx#stx-wrap-source
                                     (cons '%#case-lambda-clause _clause9638_)
                                     (let ((_$e9640_
                                            (gx#stx-source _clause9638_)))
                                       (if _$e9640_
                                           _$e9640_
                                           (gx#stx-source _stx9612_))))
                                    '#f))
                                 _clauses9636_))
                               (gx#stx-source _stx9612_))
                              (_E96159624_)))))
                    (_E96159624_)))))
        (_E96149643_))))
  (define gx#core-expand-let-values%
    (lambda (_stx9566_)
      (let* ((_e95679577_ _stx9566_)
             (_E95699581_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e95679577_)))
             (_E95689608_
              (lambda ()
                (if (gx#stx-pair? _e95679577_)
                    (let ((_e95709585_ (gx#syntax-e _e95679577_)))
                      (let ((_hd95719588_ (##car _e95709585_))
                            (_tl95729590_ (##cdr _e95709585_)))
                        (if (gx#stx-pair? _tl95729590_)
                            (let ((_e95739593_ (gx#syntax-e _tl95729590_)))
                              (let ((_hd95749596_ (##car _e95739593_))
                                    (_tl95759598_ (##cdr _e95739593_)))
                                (let* ((_hd9601_ _hd95749596_)
                                       (_body9603_ _tl95759598_))
                                  (if (gx#core-expand-let-bind? _hd9601_)
                                      (let ((_expressions9605_
                                             (gx#stx-map1
                                              gx#core-expand-let-bind-expression
                                              _hd9601_)))
                                        (call-with-parameters
                                         (lambda ()
                                           (begin
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd9601_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd9601_
                                                           _expressions9605_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx9566_
                         _body9603_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx9566_))))
                                         gx#current-expander-context
                                         (let ((__obj10681
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (begin
                                             (gx#local-context:::init!__0
                                              __obj10681)
                                             __obj10681))))
                                      (_E95699581_)))))
                            (_E95699581_))))
                    (_E95699581_)))))
        (_E95689608_))))
  (begin
    (define gx#core-expand-letrec-values%__opt-lambda9509
      (lambda (_stx9511_ _form9512_)
        (let* ((_e95139523_ _stx9511_)
               (_E95159527_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e95139523_)))
               (_E95149552_
                (lambda ()
                  (if (gx#stx-pair? _e95139523_)
                      (let ((_e95169531_ (gx#syntax-e _e95139523_)))
                        (let ((_hd95179534_ (##car _e95169531_))
                              (_tl95189536_ (##cdr _e95169531_)))
                          (if (gx#stx-pair? _tl95189536_)
                              (let ((_e95199539_ (gx#syntax-e _tl95189536_)))
                                (let ((_hd95209542_ (##car _e95199539_))
                                      (_tl95219544_ (##cdr _e95199539_)))
                                  (let* ((_hd9547_ _hd95209542_)
                                         (_body9549_ _tl95219544_))
                                    (if (gx#core-expand-let-bind? _hd9547_)
                                        (call-with-parameters
                                         (lambda ()
                                           (begin
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _hd9547_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     _form9512_)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _hd9547_
                                                           (gx#stx-map1
                                                            gx#core-expand-let-bind-expression
                                                            _hd9547_))
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _stx9511_
                         _body9549_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx9511_))))
                                         gx#current-expander-context
                                         (let ((__obj10682
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (begin
                                             (gx#local-context:::init!__0
                                              __obj10682)
                                             __obj10682)))
                                        (_E95159527_)))))
                              (_E95159527_))))
                      (_E95159527_)))))
          (_E95149552_))))
    (begin
      (define gx#core-expand-letrec-values%__0
        (lambda (_stx9559_)
          (let ((_form9561_ '%#letrec-values))
            (gx#core-expand-letrec-values%__opt-lambda9509
             _stx9559_
             _form9561_))))
      (define gx#core-expand-letrec-values%
        (lambda _g10692_
          (let ((_g10691_ (length _g10692_)))
            (cond ((fx= _g10691_ 1)
                   (apply gx#core-expand-letrec-values%__0 _g10692_))
                  ((fx= _g10691_ 2)
                   (apply gx#core-expand-letrec-values%__opt-lambda9509
                          _g10692_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-letrec-values%
                    _g10692_))))))))
  (define gx#core-expand-letrec*-values%
    (lambda (_stx9508_)
      (gx#core-expand-letrec-values%__opt-lambda9509
       _stx9508_
       '%#letrec*-values)))
  (define gx#core-expand-let-bind?
    (lambda (_stx9465_)
      (if (gx#stx-list? _stx9465_)
          (gx#stx-andmap
           (lambda (_bind9467_)
             (let* ((_e94689478_ _bind9467_)
                    (_E94709482_ (lambda () '#f))
                    (_E94699504_
                     (lambda ()
                       (if (gx#stx-pair? _e94689478_)
                           (let ((_e94719486_ (gx#syntax-e _e94689478_)))
                             (let ((_hd94729489_ (##car _e94719486_))
                                   (_tl94739491_ (##cdr _e94719486_)))
                               (let ((_hd9494_ _hd94729489_))
                                 (if (gx#stx-pair? _tl94739491_)
                                     (let ((_e94749496_
                                            (gx#syntax-e _tl94739491_)))
                                       (let ((_hd94759499_ (##car _e94749496_))
                                             (_tl94769501_
                                              (##cdr _e94749496_)))
                                         (if (gx#stx-null? _tl94769501_)
                                             (if '#t
                                                 (gx#core-bind-values?
                                                  _hd9494_)
                                                 (_E94709482_))
                                             (_E94709482_))))
                                     (_E94709482_)))))
                           (_E94709482_)))))
               (_E94699504_)))
           _stx9465_)
          '#f)))
  (define gx#core-expand-let-bind-expression
    (lambda (_bind9424_)
      (let* ((_e94259435_ _bind9424_)
             (_E94279439_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e94259435_)))
             (_E94269461_
              (lambda ()
                (if (gx#stx-pair? _e94259435_)
                    (let ((_e94289443_ (gx#syntax-e _e94259435_)))
                      (let ((_hd94299446_ (##car _e94289443_))
                            (_tl94309448_ (##cdr _e94289443_)))
                        (if (gx#stx-pair? _tl94309448_)
                            (let ((_e94319451_ (gx#syntax-e _tl94309448_)))
                              (let ((_hd94329454_ (##car _e94319451_))
                                    (_tl94339456_ (##cdr _e94319451_)))
                                (let ((_expr9459_ _hd94329454_))
                                  (if (gx#stx-null? _tl94339456_)
                                      (if '#t
                                          (gx#core-expand-expression
                                           _expr9459_)
                                          (_E94279439_))
                                      (_E94279439_)))))
                            (_E94279439_))))
                    (_E94279439_)))))
        (_E94269461_))))
  (define gx#core-expand-let-bind-values!
    (lambda (_bind9383_)
      (let* ((_e93849394_ _bind9383_)
             (_E93869398_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e93849394_)))
             (_E93859420_
              (lambda ()
                (if (gx#stx-pair? _e93849394_)
                    (let ((_e93879402_ (gx#syntax-e _e93849394_)))
                      (let ((_hd93889405_ (##car _e93879402_))
                            (_tl93899407_ (##cdr _e93879402_)))
                        (let ((_hd9410_ _hd93889405_))
                          (if (gx#stx-pair? _tl93899407_)
                              (let ((_e93909412_ (gx#syntax-e _tl93899407_)))
                                (let ((_hd93919415_ (##car _e93909412_))
                                      (_tl93929417_ (##cdr _e93909412_)))
                                  (if (gx#stx-null? _tl93929417_)
                                      (if '#t
                                          (gx#core-bind-values!__0 _hd9410_)
                                          (_E93869398_))
                                      (_E93869398_))))
                              (_E93869398_)))))
                    (_E93869398_)))))
        (_E93859420_))))
  (define gx#core-expand-let-bind-quote
    (lambda (_bind9341_ _expr9342_)
      (let* ((_e93439353_ _bind9341_)
             (_E93459357_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e93439353_)))
             (_E93449379_
              (lambda ()
                (if (gx#stx-pair? _e93439353_)
                    (let ((_e93469361_ (gx#syntax-e _e93439353_)))
                      (let ((_hd93479364_ (##car _e93469361_))
                            (_tl93489366_ (##cdr _e93469361_)))
                        (let ((_hd9369_ _hd93479364_))
                          (if (gx#stx-pair? _tl93489366_)
                              (let ((_e93499371_ (gx#syntax-e _tl93489366_)))
                                (let ((_hd93509374_ (##car _e93499371_))
                                      (_tl93519376_ (##cdr _e93499371_)))
                                  (if (gx#stx-null? _tl93519376_)
                                      (if '#t
                                          (cons (gx#core-quote-bind-values
                                                 _hd9369_)
                                                (cons _expr9342_ '()))
                                          (_E93459357_))
                                      (_E93459357_))))
                              (_E93459357_)))))
                    (_E93459357_)))))
        (_E93449379_))))
  (define gx#core-expand-let-syntax%
    (lambda (_stx9295_)
      (let* ((_e92969306_ _stx9295_)
             (_E92989310_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e92969306_)))
             (_E92979337_
              (lambda ()
                (if (gx#stx-pair? _e92969306_)
                    (let ((_e92999314_ (gx#syntax-e _e92969306_)))
                      (let ((_hd93009317_ (##car _e92999314_))
                            (_tl93019319_ (##cdr _e92999314_)))
                        (if (gx#stx-pair? _tl93019319_)
                            (let ((_e93029322_ (gx#syntax-e _tl93019319_)))
                              (let ((_hd93039325_ (##car _e93029322_))
                                    (_tl93049327_ (##cdr _e93029322_)))
                                (let* ((_hd9330_ _hd93039325_)
                                       (_body9332_ _tl93049327_))
                                  (if (gx#core-expand-let-bind-syntax?
                                       _hd9330_)
                                      (let ((_expanders9334_
                                             (gx#stx-map1
                                              gx#core-expand-let-bind-syntax-expression
                                              _hd9330_)))
                                        (call-with-parameters
                                         (lambda ()
                                           (begin
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _hd9330_
                                              _expanders9334_)
                                             (gx#core-expand-local-block
                                              _stx9295_
                                              _body9332_)))
                                         gx#current-expander-context
                                         (let ((__obj10683
                                                (make-object
                                                 gx#local-context::t
                                                 '5)))
                                           (begin
                                             (gx#local-context:::init!__0
                                              __obj10683)
                                             __obj10683))))
                                      (_E92989310_)))))
                            (_E92989310_))))
                    (_E92989310_)))))
        (_E92979337_))))
  (define gx#core-expand-letrec-syntax%
    (lambda (_stx9244_)
      (let* ((_e92459255_ _stx9244_)
             (_E92479259_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e92459255_)))
             (_E92469291_
              (lambda ()
                (if (gx#stx-pair? _e92459255_)
                    (let ((_e92489263_ (gx#syntax-e _e92459255_)))
                      (let ((_hd92499266_ (##car _e92489263_))
                            (_tl92509268_ (##cdr _e92489263_)))
                        (if (gx#stx-pair? _tl92509268_)
                            (let ((_e92519271_ (gx#syntax-e _tl92509268_)))
                              (let ((_hd92529274_ (##car _e92519271_))
                                    (_tl92539276_ (##cdr _e92519271_)))
                                (let* ((_hd9279_ _hd92529274_)
                                       (_body9281_ _tl92539276_))
                                  (if (gx#core-expand-let-bind-syntax?
                                       _hd9279_)
                                      (call-with-parameters
                                       (lambda ()
                                         (begin
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _hd9279_
                                            (make-list
                                             (gx#stx-length _hd9279_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_g92839286_ _g92849288_)
                                              (gx#core-expand-let-bind-syntax!__opt-lambda9101
                                               _g92839286_
                                               _g92849288_
                                               '#t))
                                            _hd9279_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _hd9279_))
                                           (gx#core-expand-local-block
                                            _stx9244_
                                            _body9281_)))
                                       gx#current-expander-context
                                       (let ((__obj10684
                                              (make-object
                                               gx#local-context::t
                                               '5)))
                                         (begin
                                           (gx#local-context:::init!__0
                                            __obj10684)
                                           __obj10684)))
                                      (_E92479259_)))))
                            (_E92479259_))))
                    (_E92479259_)))))
        (_E92469291_))))
  (define gx#core-expand-let-bind-syntax?
    (lambda (_stx9201_)
      (if (gx#stx-list? _stx9201_)
          (gx#stx-andmap
           (lambda (_bind9203_)
             (let* ((_e92049214_ _bind9203_)
                    (_E92069218_ (lambda () '#f))
                    (_E92059240_
                     (lambda ()
                       (if (gx#stx-pair? _e92049214_)
                           (let ((_e92079222_ (gx#syntax-e _e92049214_)))
                             (let ((_hd92089225_ (##car _e92079222_))
                                   (_tl92099227_ (##cdr _e92079222_)))
                               (let ((_hd9230_ _hd92089225_))
                                 (if (gx#stx-pair? _tl92099227_)
                                     (let ((_e92109232_
                                            (gx#syntax-e _tl92099227_)))
                                       (let ((_hd92119235_ (##car _e92109232_))
                                             (_tl92129237_
                                              (##cdr _e92109232_)))
                                         (if (gx#stx-null? _tl92129237_)
                                             (if '#t
                                                 (gx#identifier? _hd9230_)
                                                 (_E92069218_))
                                             (_E92069218_))))
                                     (_E92069218_)))))
                           (_E92069218_)))))
               (_E92059240_)))
           _stx9201_)
          '#f)))
  (define gx#core-expand-let-bind-syntax-expression
    (lambda (_bind9158_)
      (let* ((_e91599169_ _bind9158_)
             (_E91619173_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e91599169_)))
             (_E91609197_
              (lambda ()
                (if (gx#stx-pair? _e91599169_)
                    (let ((_e91629177_ (gx#syntax-e _e91599169_)))
                      (let ((_hd91639180_ (##car _e91629177_))
                            (_tl91649182_ (##cdr _e91629177_)))
                        (if (gx#stx-pair? _tl91649182_)
                            (let ((_e91659185_ (gx#syntax-e _tl91649182_)))
                              (let ((_hd91669188_ (##car _e91659185_))
                                    (_tl91679190_ (##cdr _e91659185_)))
                                (let ((_expr9193_ _hd91669188_))
                                  (if (gx#stx-null? _tl91679190_)
                                      (if '#t
                                          (let ((_g10693_
                                                 (gx#core-expand-expression+1
                                                  _expr9193_)))
                                            (begin
                                              (let ((_g10694_
                                                     (values-count _g10693_)))
                                                (if (not (fx= _g10694_ 2))
                                                    (error "Context expects 2 values"
                                                           _g10694_)))
                                              (let ((_e9195_ (values-ref
                                                              _g10693_
                                                              1)))
                                                _e9195_)))
                                          (_E91619173_))
                                      (_E91619173_)))))
                            (_E91619173_))))
                    (_E91619173_)))))
        (_E91609197_))))
  (begin
    (define gx#core-expand-let-bind-syntax!__opt-lambda9101
      (lambda (_bind9103_ _e9104_ _rebind?9105_)
        (let* ((_e91069116_ _bind9103_)
               (_E91089120_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e91069116_)))
               (_E91079142_
                (lambda ()
                  (if (gx#stx-pair? _e91069116_)
                      (let ((_e91099124_ (gx#syntax-e _e91069116_)))
                        (let ((_hd91109127_ (##car _e91099124_))
                              (_tl91119129_ (##cdr _e91099124_)))
                          (let ((_id9132_ _hd91109127_))
                            (if (gx#stx-pair? _tl91119129_)
                                (let ((_e91129134_ (gx#syntax-e _tl91119129_)))
                                  (let ((_hd91139137_ (##car _e91129134_))
                                        (_tl91149139_ (##cdr _e91129134_)))
                                    (if (gx#stx-null? _tl91149139_)
                                        (if '#t
                                            (gx#core-bind-syntax!__1
                                             _id9132_
                                             _e9104_
                                             _rebind?9105_)
                                            (_E91089120_))
                                        (_E91089120_))))
                                (_E91089120_)))))
                      (_E91089120_)))))
          (_E91079142_))))
    (begin
      (define gx#core-expand-let-bind-syntax!__0
        (lambda (_bind9149_ _e9150_)
          (let ((_rebind?9152_ '#f))
            (gx#core-expand-let-bind-syntax!__opt-lambda9101
             _bind9149_
             _e9150_
             _rebind?9152_))))
      (define gx#core-expand-let-bind-syntax!
        (lambda _g10696_
          (let ((_g10695_ (length _g10696_)))
            (cond ((fx= _g10695_ 2)
                   (apply gx#core-expand-let-bind-syntax!__0 _g10696_))
                  ((fx= _g10695_ 3)
                   (apply gx#core-expand-let-bind-syntax!__opt-lambda9101
                          _g10696_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-expand-let-bind-syntax!
                    _g10696_))))))))
  (define gx#core-expand-expression%
    (lambda (_stx9061_)
      (let* ((_e90629072_ _stx9061_)
             (_E90649076_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e90629072_)))
             (_E90639098_
              (lambda ()
                (if (gx#stx-pair? _e90629072_)
                    (let ((_e90659080_ (gx#syntax-e _e90629072_)))
                      (let ((_hd90669083_ (##car _e90659080_))
                            (_tl90679085_ (##cdr _e90659080_)))
                        (if (gx#stx-pair? _tl90679085_)
                            (let ((_e90689088_ (gx#syntax-e _tl90679085_)))
                              (let ((_hd90699091_ (##car _e90689088_))
                                    (_tl90709093_ (##cdr _e90689088_)))
                                (let ((_expr9096_ _hd90699091_))
                                  (if (gx#stx-null? _tl90709093_)
                                      (if '#t
                                          (gx#core-expand-expression
                                           _expr9096_)
                                          (_E90649076_))
                                      (_E90649076_)))))
                            (_E90649076_))))
                    (_E90649076_)))))
        (_E90639098_))))
  (define gx#core-expand-quote%
    (lambda (_stx9020_)
      (let* ((_e90219031_ _stx9020_)
             (_E90239035_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e90219031_)))
             (_E90229057_
              (lambda ()
                (if (gx#stx-pair? _e90219031_)
                    (let ((_e90249039_ (gx#syntax-e _e90219031_)))
                      (let ((_hd90259042_ (##car _e90249039_))
                            (_tl90269044_ (##cdr _e90249039_)))
                        (if (gx#stx-pair? _tl90269044_)
                            (let ((_e90279047_ (gx#syntax-e _tl90269044_)))
                              (let ((_hd90289050_ (##car _e90279047_))
                                    (_tl90299052_ (##cdr _e90279047_)))
                                (let ((_e9055_ _hd90289050_))
                                  (if (gx#stx-null? _tl90299052_)
                                      (if '#t
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#quote)
                                                 (cons (gx#syntax->datum
                                                        _e9055_)
                                                       '()))
                                           (gx#stx-source _stx9020_))
                                          (_E90239035_))
                                      (_E90239035_)))))
                            (_E90239035_))))
                    (_E90239035_)))))
        (_E90229057_))))
  (define gx#core-expand-quote-syntax%
    (lambda (_stx8979_)
      (let* ((_e89808990_ _stx8979_)
             (_E89828994_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e89808990_)))
             (_E89819016_
              (lambda ()
                (if (gx#stx-pair? _e89808990_)
                    (let ((_e89838998_ (gx#syntax-e _e89808990_)))
                      (let ((_hd89849001_ (##car _e89838998_))
                            (_tl89859003_ (##cdr _e89838998_)))
                        (if (gx#stx-pair? _tl89859003_)
                            (let ((_e89869006_ (gx#syntax-e _tl89859003_)))
                              (let ((_hd89879009_ (##car _e89869006_))
                                    (_tl89889011_ (##cdr _e89869006_)))
                                (let ((_e9014_ _hd89879009_))
                                  (if (gx#stx-null? _tl89889011_)
                                      (if '#t
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#quote-syntax)
                                                 (cons (gx#core-quote-syntax__0
                                                        _e9014_)
                                                       '()))
                                           (gx#stx-source _stx8979_))
                                          (_E89828994_))
                                      (_E89828994_)))))
                            (_E89828994_))))
                    (_E89828994_)))))
        (_E89819016_))))
  (define gx#core-expand-call%
    (lambda (_stx8936_)
      (let* ((_e89378947_ _stx8936_)
             (_E89398951_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e89378947_)))
             (_E89388975_
              (lambda ()
                (if (gx#stx-pair? _e89378947_)
                    (let ((_e89408955_ (gx#syntax-e _e89378947_)))
                      (let ((_hd89418958_ (##car _e89408955_))
                            (_tl89428960_ (##cdr _e89408955_)))
                        (if (gx#stx-pair? _tl89428960_)
                            (let ((_e89438963_ (gx#syntax-e _tl89428960_)))
                              (let ((_hd89448966_ (##car _e89438963_))
                                    (_tl89458968_ (##cdr _e89438963_)))
                                (let* ((_rator8971_ _hd89448966_)
                                       (_args8973_ _tl89458968_))
                                  (if (gx#stx-list? _args8973_)
                                      (gx#core-quote-syntax__1
                                       (gx#core-cons*
                                        '%#call
                                        (gx#core-expand-expression _rator8971_)
                                        (gx#stx-map1
                                         gx#core-expand-expression
                                         _args8973_))
                                       (gx#stx-source _stx8936_))
                                      (_E89398951_)))))
                            (_E89398951_))))
                    (_E89398951_)))))
        (_E89388975_))))
  (define gx#core-expand-if%
    (lambda (_stx8869_)
      (let* ((_e88708886_ _stx8869_)
             (_E88728890_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e88708886_)))
             (_E88718932_
              (lambda ()
                (if (gx#stx-pair? _e88708886_)
                    (let ((_e88738894_ (gx#syntax-e _e88708886_)))
                      (let ((_hd88748897_ (##car _e88738894_))
                            (_tl88758899_ (##cdr _e88738894_)))
                        (if (gx#stx-pair? _tl88758899_)
                            (let ((_e88768902_ (gx#syntax-e _tl88758899_)))
                              (let ((_hd88778905_ (##car _e88768902_))
                                    (_tl88788907_ (##cdr _e88768902_)))
                                (let ((_test8910_ _hd88778905_))
                                  (if (gx#stx-pair? _tl88788907_)
                                      (let ((_e88798912_
                                             (gx#syntax-e _tl88788907_)))
                                        (let ((_hd88808915_
                                               (##car _e88798912_))
                                              (_tl88818917_
                                               (##cdr _e88798912_)))
                                          (let ((_K8920_ _hd88808915_))
                                            (if (gx#stx-pair? _tl88818917_)
                                                (let ((_e88828922_
                                                       (gx#syntax-e
                                                        _tl88818917_)))
                                                  (let ((_hd88838925_
                                                         (##car _e88828922_))
                                                        (_tl88848927_
                                                         (##cdr _e88828922_)))
                                                    (let ((_E8930_ _hd88838925_))
                                                      (if (gx#stx-null?
                                                           _tl88848927_)
                                                          (if '#t
                                                              (gx#core-quote-syntax__1
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '%#if)
                             (cons (gx#core-expand-expression _test8910_)
                                   (cons (gx#core-expand-expression _K8920_)
                                         (cons (gx#core-expand-expression
                                                _E8930_)
                                               '()))))
                       (gx#stx-source _stx8869_))
                      (_E88728890_))
                  (_E88728890_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E88728890_)))))
                                      (_E88728890_)))))
                            (_E88728890_))))
                    (_E88728890_)))))
        (_E88718932_))))
  (define gx#core-expand-ref%
    (lambda (_stx8828_)
      (let* ((_e88298839_ _stx8828_)
             (_E88318843_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e88298839_)))
             (_E88308865_
              (lambda ()
                (if (gx#stx-pair? _e88298839_)
                    (let ((_e88328847_ (gx#syntax-e _e88298839_)))
                      (let ((_hd88338850_ (##car _e88328847_))
                            (_tl88348852_ (##cdr _e88328847_)))
                        (if (gx#stx-pair? _tl88348852_)
                            (let ((_e88358855_ (gx#syntax-e _tl88348852_)))
                              (let ((_hd88368858_ (##car _e88358855_))
                                    (_tl88378860_ (##cdr _e88358855_)))
                                (let ((_id8863_ _hd88368858_))
                                  (if (gx#stx-null? _tl88378860_)
                                      (if (gx#core-runtime-ref? _id8863_)
                                          (gx#core-quote-syntax__1
                                           (cons (gx#core-quote-syntax__0
                                                  '%#ref)
                                                 (cons (gx#core-quote-runtime-ref
                                                        _id8863_
                                                        _stx8828_)
                                                       '()))
                                           (gx#stx-source _stx8828_))
                                          (_E88318843_))
                                      (_E88318843_)))))
                            (_E88318843_))))
                    (_E88318843_)))))
        (_E88308865_))))
  (define gx#core-expand-setq%
    (lambda (_stx8774_)
      (let* ((_e87758788_ _stx8774_)
             (_E87778792_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e87758788_)))
             (_E87768824_
              (lambda ()
                (if (gx#stx-pair? _e87758788_)
                    (let ((_e87788796_ (gx#syntax-e _e87758788_)))
                      (let ((_hd87798799_ (##car _e87788796_))
                            (_tl87808801_ (##cdr _e87788796_)))
                        (if (gx#stx-pair? _tl87808801_)
                            (let ((_e87818804_ (gx#syntax-e _tl87808801_)))
                              (let ((_hd87828807_ (##car _e87818804_))
                                    (_tl87838809_ (##cdr _e87818804_)))
                                (let ((_id8812_ _hd87828807_))
                                  (if (gx#stx-pair? _tl87838809_)
                                      (let ((_e87848814_
                                             (gx#syntax-e _tl87838809_)))
                                        (let ((_hd87858817_
                                               (##car _e87848814_))
                                              (_tl87868819_
                                               (##cdr _e87848814_)))
                                          (let ((_expr8822_ _hd87858817_))
                                            (if (gx#stx-null? _tl87868819_)
                                                (if (gx#core-runtime-ref?
                                                     _id8812_)
                                                    (gx#core-quote-syntax__1
                                                     (cons (gx#core-quote-syntax__0
                                                            '%#set!)
                                                           (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id8812_
                          _stx8774_)
                         (cons (gx#core-expand-expression _expr8822_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gx#stx-source _stx8774_))
                                                    (_E87778792_))
                                                (_E87778792_)))))
                                      (_E87778792_)))))
                            (_E87778792_))))
                    (_E87778792_)))))
        (_E87768824_))))
  (define gx#macro-expand-extern
    (lambda (_stx8622_)
      (letrec ((_generate8624_
                (lambda (_body8654_)
                  (let _lp8656_ ((_rest8658_ _body8654_)
                                 (_ns8659_ (gx#core-context-namespace__0))
                                 (_r8660_ '()))
                    (let* ((_e86618676_ _rest8658_)
                           (_E86748680_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e86618676_)))
                           (_E86708684_
                            (lambda ()
                              (if (gx#stx-null? _e86618676_)
                                  (if '#t (reverse _r8660_) (_E86748680_))
                                  (_E86748680_))))
                           (_E86638741_
                            (lambda ()
                              (if (gx#stx-pair? _e86618676_)
                                  (let ((_e86718688_
                                         (gx#syntax-e _e86618676_)))
                                    (let ((_hd86728691_ (##car _e86718688_))
                                          (_tl86738693_ (##cdr _e86718688_)))
                                      (let* ((_hd8696_ _hd86728691_)
                                             (_rest8698_ _tl86738693_))
                                        (if '#t
                                            (if (gx#identifier? _hd8696_)
                                                (_lp8656_
                                                 _rest8698_
                                                 _ns8659_
                                                 (cons (cons _hd8696_
                                                             (cons (if _ns8659_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#stx-identifier
                                _hd8696_
                                _ns8659_
                                '"#"
                                _hd8696_)
                               _hd8696_)
                           '()))
               _r8660_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let* ((_e86998709_ _hd8696_)
                                                       (_E87018713_
                                                        (lambda ()
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _e86998709_)))
                                                       (_E87008737_
                                                        (lambda ()
                                                          (if (gx#stx-pair?
                                                               _e86998709_)
                                                              (let ((_e87028717_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _e86998709_)))
                        (let ((_hd87038720_ (##car _e87028717_))
                              (_tl87048722_ (##cdr _e87028717_)))
                          (let ((_id8725_ _hd87038720_))
                            (if (gx#stx-pair? _tl87048722_)
                                (let ((_e87058727_ (gx#syntax-e _tl87048722_)))
                                  (let ((_hd87068730_ (##car _e87058727_))
                                        (_tl87078732_ (##cdr _e87058727_)))
                                    (let ((_eid8735_ _hd87068730_))
                                      (if (gx#stx-null? _tl87078732_)
                                          (if (if (gx#identifier? _id8725_)
                                                  (gx#identifier? _eid8735_)
                                                  '#f)
                                              (_lp8656_
                                               _rest8698_
                                               _ns8659_
                                               (cons (cons _id8725_
                                                           (cons _eid8735_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _r8660_))
                                              (_E87018713_))
                                          (_E87018713_)))))
                                (_E87018713_)))))
                      (_E87018713_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E87008737_)))
                                            (_E86708684_)))))
                                  (_E86708684_))))
                           (_E86628770_
                            (lambda ()
                              (if (gx#stx-pair? _e86618676_)
                                  (let ((_e86648745_
                                         (gx#syntax-e _e86618676_)))
                                    (let ((_hd86658748_ (##car _e86648745_))
                                          (_tl86668750_ (##cdr _e86648745_)))
                                      (if (eq? (gx#stx-e _hd86658748_)
                                               'namespace:)
                                          (if (gx#stx-pair? _tl86668750_)
                                              (let ((_e86678753_
                                                     (gx#syntax-e
                                                      _tl86668750_)))
                                                (let ((_hd86688756_
                                                       (##car _e86678753_))
                                                      (_tl86698758_
                                                       (##cdr _e86678753_)))
                                                  (let* ((_ns8761_
                                                          _hd86688756_)
                                                         (_rest8763_
                                                          _tl86698758_))
                                                    (if '#t
                                                        (let ((_ns8768_
                                                               (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _ns8761_)
                           (symbol->string (gx#stx-e _ns8761_))
                           (if (let ((_$e8765_ (gx#stx-string? _ns8761_)))
                                 (if _$e8765_
                                     _$e8765_
                                     (gx#stx-false? _ns8761_)))
                               (gx#stx-e _ns8761_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _stx8622_
                                _ns8761_)))))
                  (_lp8656_ _rest8763_ _ns8768_ _r8660_))
                (_E86638741_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E86638741_))
                                          (_E86638741_))))
                                  (_E86638741_)))))
                      (_E86628770_))))))
        (let* ((_e86258632_ _stx8622_)
               (_E86278636_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e86258632_)))
               (_E86268650_
                (lambda ()
                  (if (gx#stx-pair? _e86258632_)
                      (let ((_e86288640_ (gx#syntax-e _e86258632_)))
                        (let ((_hd86298643_ (##car _e86288640_))
                              (_tl86308645_ (##cdr _e86288640_)))
                          (let ((_body8648_ _tl86308645_))
                            (if (gx#stx-list? _body8648_)
                                (gx#core-cons
                                 '%#extern
                                 (_generate8624_ _body8648_))
                                (_E86278636_)))))
                      (_E86278636_)))))
          (_E86268650_)))))
  (define gx#macro-expand-define-values
    (lambda (_stx8568_)
      (let* ((_e85698582_ _stx8568_)
             (_E85718586_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e85698582_)))
             (_E85708618_
              (lambda ()
                (if (gx#stx-pair? _e85698582_)
                    (let ((_e85728590_ (gx#syntax-e _e85698582_)))
                      (let ((_hd85738593_ (##car _e85728590_))
                            (_tl85748595_ (##cdr _e85728590_)))
                        (if (gx#stx-pair? _tl85748595_)
                            (let ((_e85758598_ (gx#syntax-e _tl85748595_)))
                              (let ((_hd85768601_ (##car _e85758598_))
                                    (_tl85778603_ (##cdr _e85758598_)))
                                (let ((_hd8606_ _hd85768601_))
                                  (if (gx#stx-pair? _tl85778603_)
                                      (let ((_e85788608_
                                             (gx#syntax-e _tl85778603_)))
                                        (let ((_hd85798611_
                                               (##car _e85788608_))
                                              (_tl85808613_
                                               (##cdr _e85788608_)))
                                          (let ((_expr8616_ _hd85798611_))
                                            (if (gx#stx-null? _tl85808613_)
                                                (if (gx#stx-andmap
                                                     gx#identifier?
                                                     _hd8606_)
                                                    (cons (gx#core-quote-syntax__0
                                                           '%#define-values)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _hd8606_)
                        (cons _expr8616_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E85718586_))
                                                (_E85718586_)))))
                                      (_E85718586_)))))
                            (_E85718586_))))
                    (_E85718586_)))))
        (_E85708618_))))
  (define gx#macro-expand-define-syntax
    (lambda (_stx8514_)
      (let* ((_e85158528_ _stx8514_)
             (_E85178532_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e85158528_)))
             (_E85168564_
              (lambda ()
                (if (gx#stx-pair? _e85158528_)
                    (let ((_e85188536_ (gx#syntax-e _e85158528_)))
                      (let ((_hd85198539_ (##car _e85188536_))
                            (_tl85208541_ (##cdr _e85188536_)))
                        (if (gx#stx-pair? _tl85208541_)
                            (let ((_e85218544_ (gx#syntax-e _tl85208541_)))
                              (let ((_hd85228547_ (##car _e85218544_))
                                    (_tl85238549_ (##cdr _e85218544_)))
                                (let ((_hd8552_ _hd85228547_))
                                  (if (gx#stx-pair? _tl85238549_)
                                      (let ((_e85248554_
                                             (gx#syntax-e _tl85238549_)))
                                        (let ((_hd85258557_
                                               (##car _e85248554_))
                                              (_tl85268559_
                                               (##cdr _e85248554_)))
                                          (let ((_expr8562_ _hd85258557_))
                                            (if (gx#stx-null? _tl85268559_)
                                                (if (gx#identifier? _hd8552_)
                                                    (cons (gx#core-quote-syntax__0
                                                           '%#define-syntax)
                                                          (cons _hd8552_
                                                                (cons _expr8562_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E85178532_))
                                                (_E85178532_)))))
                                      (_E85178532_)))))
                            (_E85178532_))))
                    (_E85178532_)))))
        (_E85168564_))))
  (define gx#macro-expand-define-alias
    (lambda (_stx8460_)
      (let* ((_e84618474_ _stx8460_)
             (_E84638478_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e84618474_)))
             (_E84628510_
              (lambda ()
                (if (gx#stx-pair? _e84618474_)
                    (let ((_e84648482_ (gx#syntax-e _e84618474_)))
                      (let ((_hd84658485_ (##car _e84648482_))
                            (_tl84668487_ (##cdr _e84648482_)))
                        (if (gx#stx-pair? _tl84668487_)
                            (let ((_e84678490_ (gx#syntax-e _tl84668487_)))
                              (let ((_hd84688493_ (##car _e84678490_))
                                    (_tl84698495_ (##cdr _e84678490_)))
                                (let ((_id8498_ _hd84688493_))
                                  (if (gx#stx-pair? _tl84698495_)
                                      (let ((_e84708500_
                                             (gx#syntax-e _tl84698495_)))
                                        (let ((_hd84718503_
                                               (##car _e84708500_))
                                              (_tl84728505_
                                               (##cdr _e84708500_)))
                                          (let ((_alias-id8508_ _hd84718503_))
                                            (if (gx#stx-null? _tl84728505_)
                                                (if (if (gx#identifier?
                                                         _id8498_)
                                                        (gx#identifier?
                                                         _alias-id8508_)
                                                        '#f)
                                                    (cons (gx#core-quote-syntax__0
                                                           '%#define-alias)
                                                          (cons _id8498_
                                                                (cons _alias-id8508_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E84638478_))
                                                (_E84638478_)))))
                                      (_E84638478_)))))
                            (_E84638478_))))
                    (_E84638478_)))))
        (_E84628510_))))
  (define gx#macro-expand-lambda%
    (lambda (_stx8417_)
      (let* ((_e84188428_ _stx8417_)
             (_E84208432_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e84188428_)))
             (_E84198456_
              (lambda ()
                (if (gx#stx-pair? _e84188428_)
                    (let ((_e84218436_ (gx#syntax-e _e84188428_)))
                      (let ((_hd84228439_ (##car _e84218436_))
                            (_tl84238441_ (##cdr _e84218436_)))
                        (if (gx#stx-pair? _tl84238441_)
                            (let ((_e84248444_ (gx#syntax-e _tl84238441_)))
                              (let ((_hd84258447_ (##car _e84248444_))
                                    (_tl84268449_ (##cdr _e84248444_)))
                                (let* ((_hd8452_ _hd84258447_)
                                       (_body8454_ _tl84268449_))
                                  (if (if (gx#stx-andmap
                                           gx#identifier?
                                           _hd8452_)
                                          (if (gx#stx-list? _body8454_)
                                              (not (gx#stx-null? _body8454_))
                                              '#f)
                                          '#f)
                                      (gx#core-cons*
                                       '%#lambda
                                       (gx#stx-map1
                                        gx#user-binding-identifier
                                        _hd8452_)
                                       _body8454_)
                                      (_E84208432_)))))
                            (_E84208432_))))
                    (_E84208432_)))))
        (_E84198456_))))
  (define gx#macro-expand-case-lambda
    (lambda (_stx8353_)
      (letrec ((_generate8355_
                (lambda (_clause8385_)
                  (let* ((_e83868393_ _clause8385_)
                         (_E83888397_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; malformed clause"
                             _stx8353_
                             _clause8385_)))
                         (_E83878413_
                          (lambda ()
                            (if (gx#stx-pair? _e83868393_)
                                (let ((_e83898401_ (gx#syntax-e _e83868393_)))
                                  (let ((_hd83908404_ (##car _e83898401_))
                                        (_tl83918406_ (##cdr _e83898401_)))
                                    (let* ((_hd8409_ _hd83908404_)
                                           (_body8411_ _tl83918406_))
                                      (if (if (gx#stx-andmap
                                               gx#identifier?
                                               _hd8409_)
                                              (if (gx#stx-list? _body8411_)
                                                  (not (gx#stx-null?
                                                        _body8411_))
                                                  '#f)
                                              '#f)
                                          (gx#stx-wrap-source
                                           (cons (gx#stx-map1
                                                  gx#user-binding-identifier
                                                  _hd8409_)
                                                 _body8411_)
                                           (gx#stx-source _clause8385_))
                                          (_E83888397_)))))
                                (_E83888397_)))))
                    (_E83878413_)))))
        (let* ((_e83568363_ _stx8353_)
               (_E83588367_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e83568363_)))
               (_E83578381_
                (lambda ()
                  (if (gx#stx-pair? _e83568363_)
                      (let ((_e83598371_ (gx#syntax-e _e83568363_)))
                        (let ((_hd83608374_ (##car _e83598371_))
                              (_tl83618376_ (##cdr _e83598371_)))
                          (let ((_clauses8379_ _tl83618376_))
                            (if (gx#stx-list? _clauses8379_)
                                (gx#core-cons
                                 '%#case-lambda
                                 (gx#stx-map1 _generate8355_ _clauses8379_))
                                (_E83588367_)))))
                      (_E83588367_)))))
          (_E83578381_)))))
  (begin
    (define gx#macro-expand-let-values__opt-lambda8252
      (lambda (_stx8254_ _form8255_)
        (letrec ((_generate8257_
                  (lambda (_bind8300_)
                    (let* ((_e83018311_ _bind8300_)
                           (_E83038315_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _stx8254_
                               _bind8300_)))
                           (_E83028339_
                            (lambda ()
                              (if (gx#stx-pair? _e83018311_)
                                  (let ((_e83048319_
                                         (gx#syntax-e _e83018311_)))
                                    (let ((_hd83058322_ (##car _e83048319_))
                                          (_tl83068324_ (##cdr _e83048319_)))
                                      (let ((_ids8327_ _hd83058322_))
                                        (if (gx#stx-pair? _tl83068324_)
                                            (let ((_e83078329_
                                                   (gx#syntax-e _tl83068324_)))
                                              (let ((_hd83088332_
                                                     (##car _e83078329_))
                                                    (_tl83098334_
                                                     (##cdr _e83078329_)))
                                                (let ((_expr8337_
                                                       _hd83088332_))
                                                  (if (gx#stx-null?
                                                       _tl83098334_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids8327_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids8327_)
                        (cons _expr8337_ '()))
                  (_E83038315_))
              (_E83038315_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E83038315_)))))
                                  (_E83038315_)))))
                      (_E83028339_)))))
          (let* ((_e82588268_ _stx8254_)
                 (_E82608272_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e82588268_)))
                 (_E82598296_
                  (lambda ()
                    (if (gx#stx-pair? _e82588268_)
                        (let ((_e82618276_ (gx#syntax-e _e82588268_)))
                          (let ((_hd82628279_ (##car _e82618276_))
                                (_tl82638281_ (##cdr _e82618276_)))
                            (if (gx#stx-pair? _tl82638281_)
                                (let ((_e82648284_ (gx#syntax-e _tl82638281_)))
                                  (let ((_hd82658287_ (##car _e82648284_))
                                        (_tl82668289_ (##cdr _e82648284_)))
                                    (let* ((_hd8292_ _hd82658287_)
                                           (_body8294_ _tl82668289_))
                                      (if (if (gx#stx-list? _hd8292_)
                                              (if (gx#stx-list? _body8294_)
                                                  (not (gx#stx-null?
                                                        _body8294_))
                                                  '#f)
                                              '#f)
                                          (gx#core-cons*
                                           _form8255_
                                           (gx#stx-map1
                                            _generate8257_
                                            _hd8292_)
                                           _body8294_)
                                          (_E82608272_)))))
                                (_E82608272_))))
                        (_E82608272_)))))
            (_E82598296_)))))
    (begin
      (define gx#macro-expand-let-values__0
        (lambda (_stx8346_)
          (let ((_form8348_ '%#let-values))
            (gx#macro-expand-let-values__opt-lambda8252
             _stx8346_
             _form8348_))))
      (define gx#macro-expand-let-values
        (lambda _g10698_
          (let ((_g10697_ (length _g10698_)))
            (cond ((fx= _g10697_ 1)
                   (apply gx#macro-expand-let-values__0 _g10698_))
                  ((fx= _g10697_ 2)
                   (apply gx#macro-expand-let-values__opt-lambda8252 _g10698_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#macro-expand-let-values
                    _g10698_))))))))
  (define gx#macro-expand-letrec-values
    (lambda (_stx8251_)
      (gx#macro-expand-let-values__opt-lambda8252 _stx8251_ '%#letrec-values)))
  (define gx#macro-expand-letrec*-values
    (lambda (_stx8249_)
      (gx#macro-expand-let-values__opt-lambda8252
       _stx8249_
       '%#letrec*-values)))
  (define gx#macro-expand-if
    (lambda (_stx8140_)
      (let* ((_e81418167_ _stx8140_)
             (_E81538171_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" _e81418167_)))
             (_E81438213_
              (lambda ()
                (if (gx#stx-pair? _e81418167_)
                    (let ((_e81548175_ (gx#syntax-e _e81418167_)))
                      (let ((_hd81558178_ (##car _e81548175_))
                            (_tl81568180_ (##cdr _e81548175_)))
                        (if (gx#stx-pair? _tl81568180_)
                            (let ((_e81578183_ (gx#syntax-e _tl81568180_)))
                              (let ((_hd81588186_ (##car _e81578183_))
                                    (_tl81598188_ (##cdr _e81578183_)))
                                (let ((_test8191_ _hd81588186_))
                                  (if (gx#stx-pair? _tl81598188_)
                                      (let ((_e81608193_
                                             (gx#syntax-e _tl81598188_)))
                                        (let ((_hd81618196_
                                               (##car _e81608193_))
                                              (_tl81628198_
                                               (##cdr _e81608193_)))
                                          (let ((_K8201_ _hd81618196_))
                                            (if (gx#stx-pair? _tl81628198_)
                                                (let ((_e81638203_
                                                       (gx#syntax-e
                                                        _tl81628198_)))
                                                  (let ((_hd81648206_
                                                         (##car _e81638203_))
                                                        (_tl81658208_
                                                         (##cdr _e81638203_)))
                                                    (let ((_E8211_ _hd81648206_))
                                                      (if (gx#stx-null?
                                                           _tl81658208_)
                                                          (if '#t
                                                              (gx#core-list
                                                               '%#if
                                                               _test8191_
                                                               _K8201_
                                                               _E8211_)
                                                              (_E81538171_))
                                                          (_E81538171_)))))
                                                (_E81538171_)))))
                                      (_E81538171_)))))
                            (_E81538171_))))
                    (_E81538171_))))
             (_E81428245_
              (lambda ()
                (if (gx#stx-pair? _e81418167_)
                    (let ((_e81448217_ (gx#syntax-e _e81418167_)))
                      (let ((_hd81458220_ (##car _e81448217_))
                            (_tl81468222_ (##cdr _e81448217_)))
                        (if (gx#stx-pair? _tl81468222_)
                            (let ((_e81478225_ (gx#syntax-e _tl81468222_)))
                              (let ((_hd81488228_ (##car _e81478225_))
                                    (_tl81498230_ (##cdr _e81478225_)))
                                (let ((_test8233_ _hd81488228_))
                                  (if (gx#stx-pair? _tl81498230_)
                                      (let ((_e81508235_
                                             (gx#syntax-e _tl81498230_)))
                                        (let ((_hd81518238_
                                               (##car _e81508235_))
                                              (_tl81528240_
                                               (##cdr _e81508235_)))
                                          (let ((_K8243_ _hd81518238_))
                                            (if (gx#stx-null? _tl81528240_)
                                                (if '#t
                                                    (gx#core-list
                                                     '%#if
                                                     _test8233_
                                                     _K8243_
                                                     '#!void)
                                                    (_E81438213_))
                                                (_E81438213_)))))
                                      (_E81438213_)))))
                            (_E81438213_))))
                    (_E81438213_)))))
        (_E81428245_))))
  (define gx#free-identifier=?
    (lambda (_xid8128_ _yid8129_)
      (let ((_xe8131_ (gx#resolve-identifier__0 _xid8128_))
            (_ye8132_ (gx#resolve-identifier__0 _yid8129_)))
        (if (if _xe8131_ _ye8132_ '#f)
            (let ((_$e8134_ (eq? _xe8131_ _ye8132_)))
              (if _$e8134_
                  _$e8134_
                  (if (##structure-instance-of? _xe8131_ 'gx#binding::t)
                      (if (##structure-instance-of? _ye8132_ 'gx#binding::t)
                          (eq? (##structure-ref _xe8131_ '1 gx#binding::t '#f)
                               (##structure-ref _ye8132_ '1 gx#binding::t '#f))
                          '#f)
                      '#f)))
            (if (let ((_$e8137_ _xe8131_)) (if _$e8137_ _$e8137_ _ye8132_))
                '#f
                (gx#stx-eq? _xid8128_ _yid8129_))))))
  (define gx#bound-identifier=?
    (lambda (_xid8112_ _yid8113_)
      (letrec ((_context8115_
                (lambda (_e8126_)
                  (if (##structure-direct-instance-of?
                       _e8126_
                       'gx#syntax-quote::t)
                      (##direct-structure-ref
                       _e8126_
                       '3
                       gx#syntax-quote::t
                       '#f)
                      (gx#current-expander-context))))
               (_marks8116_
                (lambda (_e8124_)
                  (if (symbol? _e8124_)
                      '()
                      (if (##structure-direct-instance-of?
                           _e8124_
                           'gx#identifier-wrap::t)
                          (##direct-structure-ref
                           _e8124_
                           '3
                           gx#identifier-wrap::t
                           '#f)
                          (##direct-structure-ref
                           _e8124_
                           '4
                           gx#syntax-quote::t
                           '#f)))))
               (_unwrap8117_
                (lambda (_e8122_)
                  (if (symbol? _e8122_)
                      _e8122_
                      (gx#syntax-local-unwrap _e8122_)))))
        (let ((_x8119_ (_unwrap8117_ _xid8112_))
              (_y8120_ (_unwrap8117_ _yid8113_)))
          (if (gx#stx-eq? _x8119_ _y8120_)
              (if (eq? (_context8115_ _x8119_) (_context8115_ _y8120_))
                  (andmap eq? (_marks8116_ _x8119_) (_marks8116_ _y8120_))
                  '#f)
              '#f)))))
  (define gx#underscore?
    (lambda (_stx8110_)
      (if (gx#identifier? _stx8110_) (gx#core-identifier=? _stx8110_ '_) '#f)))
  (define gx#ellipsis?
    (lambda (_stx8108_)
      (if (gx#identifier? _stx8108_)
          (gx#core-identifier=? _stx8108_ '...)
          '#f)))
  (define gx#user-binding-identifier
    (lambda (_x8106_)
      (if (gx#identifier? _x8106_)
          (if (not (gx#underscore? _x8106_)) _x8106_ '#f)
          '#f)))
  (begin
    (define gx#check-duplicate-identifiers__opt-lambda8050
      (lambda (_stx8052_ _where8053_)
        (let _lp8055_ ((_rest8057_ (gx#syntax->list _stx8052_)))
          (let* ((_rest80588066_ _rest8057_)
                 (_E80618070_
                  (lambda () (error '"No clause matching" _rest80588066_)))
                 (_else80608074_ (lambda () '#t))
                 (_K80628084_
                  (lambda (_rest8077_ _hd8078_)
                    (if (not (gx#identifier? _hd8078_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _where8053_
                         _hd8078_)
                        (if (find (lambda (_g80798081_)
                                    (gx#bound-identifier=?
                                     _g80798081_
                                     _hd8078_))
                                  _rest8077_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _where8053_
                             _hd8078_)
                            (_lp8055_ _rest8077_))))))
            (if (##pair? _rest80588066_)
                (let ((_hd80638087_ (##car _rest80588066_))
                      (_tl80648089_ (##cdr _rest80588066_)))
                  (let* ((_hd8092_ _hd80638087_) (_rest8094_ _tl80648089_))
                    (_K80628084_ _rest8094_ _hd8092_)))
                (_else80608074_))))))
    (begin
      (define gx#check-duplicate-identifiers__0
        (lambda (_stx8099_)
          (let ((_where8101_ _stx8099_))
            (gx#check-duplicate-identifiers__opt-lambda8050
             _stx8099_
             _where8101_))))
      (define gx#check-duplicate-identifiers
        (lambda _g10700_
          (let ((_g10699_ (length _g10700_)))
            (cond ((fx= _g10699_ 1)
                   (apply gx#check-duplicate-identifiers__0 _g10700_))
                  ((fx= _g10699_ 2)
                   (apply gx#check-duplicate-identifiers__opt-lambda8050
                          _g10700_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#check-duplicate-identifiers
                    _g10700_))))))))
  (define gx#core-bind-values?
    (lambda (_stx8044_)
      (gx#stx-andmap
       (lambda (_x8046_)
         (let ((_$e8048_ (gx#identifier? _x8046_)))
           (if _$e8048_ _$e8048_ (gx#stx-false? _x8046_))))
       _stx8044_)))
  (begin
    (define gx#core-bind-values!__opt-lambda8006
      (lambda (_stx8008_ _rebind?8009_ _phi8010_ _ctx8011_)
        (gx#stx-for-each1
         (lambda (_id8013_)
           (if (gx#identifier? _id8013_)
               (gx#core-bind-runtime!__opt-lambda7945
                _id8013_
                _rebind?8009_
                _phi8010_
                _ctx8011_)
               '#!void))
         _stx8008_)))
    (begin
      (define gx#core-bind-values!__0
        (lambda (_stx8018_)
          (let* ((_rebind?8020_ '#f)
                 (_phi8022_ (gx#current-expander-phi))
                 (_ctx8024_ (gx#current-expander-context)))
            (gx#core-bind-values!__opt-lambda8006
             _stx8018_
             _rebind?8020_
             _phi8022_
             _ctx8024_))))
      (define gx#core-bind-values!__1
        (lambda (_stx8026_ _rebind?8027_)
          (let* ((_phi8029_ (gx#current-expander-phi))
                 (_ctx8031_ (gx#current-expander-context)))
            (gx#core-bind-values!__opt-lambda8006
             _stx8026_
             _rebind?8027_
             _phi8029_
             _ctx8031_))))
      (define gx#core-bind-values!__2
        (lambda (_stx8033_ _rebind?8034_ _phi8035_)
          (let ((_ctx8037_ (gx#current-expander-context)))
            (gx#core-bind-values!__opt-lambda8006
             _stx8033_
             _rebind?8034_
             _phi8035_
             _ctx8037_))))
      (define gx#core-bind-values!
        (lambda _g10702_
          (let ((_g10701_ (length _g10702_)))
            (cond ((fx= _g10701_ 1) (apply gx#core-bind-values!__0 _g10702_))
                  ((fx= _g10701_ 2) (apply gx#core-bind-values!__1 _g10702_))
                  ((fx= _g10701_ 3) (apply gx#core-bind-values!__2 _g10702_))
                  ((fx= _g10701_ 4)
                   (apply gx#core-bind-values!__opt-lambda8006 _g10702_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-values!
                    _g10702_))))))))
  (define gx#core-quote-bind-values
    (lambda (_stx8003_)
      (gx#stx-map1
       (lambda (_x8005_)
         (if (gx#identifier? _x8005_) (gx#core-quote-syntax__0 _x8005_) '#f))
       _stx8003_)))
  (define gx#core-runtime-ref?
    (lambda (_stx7996_)
      (if (gx#identifier? _stx7996_)
          (let* ((_bind7998_ (gx#resolve-identifier__0 _stx7996_))
                 (_$e8000_ (not _bind7998_)))
            (if _$e8000_
                _$e8000_
                (##structure-instance-of? _bind7998_ 'gx#runtime-binding::t)))
          '#f)))
  (define gx#core-quote-runtime-ref
    (lambda (_id7988_ _form7989_)
      (let ((_bind7991_ (gx#resolve-identifier__0 _id7988_)))
        (if (##structure-instance-of? _bind7991_ 'gx#runtime-binding::t)
            (gx#core-quote-syntax__0 _id7988_)
            (if (not _bind7991_)
                (if (let ((_$e7993_
                           (gx#core-context-rebind?__opt-lambda4761
                            (gx#core-context-top__0))))
                      (if _$e7993_
                          _$e7993_
                          (gx#core-extern-symbol? (gx#stx-e _id7988_))))
                    (gx#core-quote-syntax__0 _id7988_)
                    (gx#raise-syntax-error
                     '#f
                     '"Reference to unbound identifier"
                     _form7989_
                     _id7988_))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; not a runtime binding"
                 _form7989_
                 _id7988_))))))
  (begin
    (define gx#core-bind-runtime!__opt-lambda7945
      (lambda (_id7947_ _rebind?7948_ _phi7949_ _ctx7950_)
        (let* ((_key7952_ (gx#core-identifier-key _id7947_))
               (_eid7954_
                (gx#make-binding-id__opt-lambda7712
                 _key7952_
                 '#f
                 _phi7949_
                 _ctx7950_))
               (_bind7956_
                (if (##structure-instance-of? _ctx7950_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid7954_
                     _key7952_
                     _phi7949_
                     _ctx7950_)
                    (if (##structure-instance-of? _ctx7950_ 'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid7954_
                         _key7952_
                         _phi7949_)
                        (if (##structure-instance-of?
                             _ctx7950_
                             'gx#local-context::t)
                            (##structure
                             gx#local-binding::t
                             _eid7954_
                             _key7952_
                             _phi7949_)
                            (##structure
                             gx#runtime-binding::t
                             _eid7954_
                             _key7952_
                             _phi7949_))))))
          (gx#bind-identifier!__opt-lambda5208
           _id7947_
           _bind7956_
           _rebind?7948_
           _phi7949_
           _ctx7950_))))
    (begin
      (define gx#core-bind-runtime!__0
        (lambda (_id7962_)
          (let* ((_rebind?7964_ '#f)
                 (_phi7966_ (gx#current-expander-phi))
                 (_ctx7968_ (gx#current-expander-context)))
            (gx#core-bind-runtime!__opt-lambda7945
             _id7962_
             _rebind?7964_
             _phi7966_
             _ctx7968_))))
      (define gx#core-bind-runtime!__1
        (lambda (_id7970_ _rebind?7971_)
          (let* ((_phi7973_ (gx#current-expander-phi))
                 (_ctx7975_ (gx#current-expander-context)))
            (gx#core-bind-runtime!__opt-lambda7945
             _id7970_
             _rebind?7971_
             _phi7973_
             _ctx7975_))))
      (define gx#core-bind-runtime!__2
        (lambda (_id7977_ _rebind?7978_ _phi7979_)
          (let ((_ctx7981_ (gx#current-expander-context)))
            (gx#core-bind-runtime!__opt-lambda7945
             _id7977_
             _rebind?7978_
             _phi7979_
             _ctx7981_))))
      (define gx#core-bind-runtime!
        (lambda _g10704_
          (let ((_g10703_ (length _g10704_)))
            (cond ((fx= _g10703_ 1) (apply gx#core-bind-runtime!__0 _g10704_))
                  ((fx= _g10703_ 2) (apply gx#core-bind-runtime!__1 _g10704_))
                  ((fx= _g10703_ 3) (apply gx#core-bind-runtime!__2 _g10704_))
                  ((fx= _g10703_ 4)
                   (apply gx#core-bind-runtime!__opt-lambda7945 _g10704_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-runtime!
                    _g10704_))))))))
  (begin
    (define gx#core-bind-runtime-reference!__opt-lambda7900
      (lambda (_id7902_ _eid7903_ _rebind?7904_ _phi7905_ _ctx7906_)
        (let* ((_key7908_ (gx#core-identifier-key _id7902_))
               (_bind7910_
                (if (##structure-instance-of? _ctx7906_ 'gx#module-context::t)
                    (##structure
                     gx#module-binding::t
                     _eid7903_
                     _key7908_
                     _phi7905_
                     _ctx7906_)
                    (if (##structure-instance-of? _ctx7906_ 'gx#top-context::t)
                        (##structure
                         gx#top-binding::t
                         _eid7903_
                         _key7908_
                         _phi7905_)
                        (##structure
                         gx#runtime-binding::t
                         _eid7903_
                         _key7908_
                         _phi7905_)))))
          (gx#bind-identifier!__opt-lambda5208
           _id7902_
           _bind7910_
           _rebind?7904_
           _phi7905_
           _ctx7906_))))
    (begin
      (define gx#core-bind-runtime-reference!__0
        (lambda (_id7916_ _eid7917_)
          (let* ((_rebind?7919_ '#f)
                 (_phi7921_ (gx#current-expander-phi))
                 (_ctx7923_ (gx#current-expander-context)))
            (gx#core-bind-runtime-reference!__opt-lambda7900
             _id7916_
             _eid7917_
             _rebind?7919_
             _phi7921_
             _ctx7923_))))
      (define gx#core-bind-runtime-reference!__1
        (lambda (_id7925_ _eid7926_ _rebind?7927_)
          (let* ((_phi7929_ (gx#current-expander-phi))
                 (_ctx7931_ (gx#current-expander-context)))
            (gx#core-bind-runtime-reference!__opt-lambda7900
             _id7925_
             _eid7926_
             _rebind?7927_
             _phi7929_
             _ctx7931_))))
      (define gx#core-bind-runtime-reference!__2
        (lambda (_id7933_ _eid7934_ _rebind?7935_ _phi7936_)
          (let ((_ctx7938_ (gx#current-expander-context)))
            (gx#core-bind-runtime-reference!__opt-lambda7900
             _id7933_
             _eid7934_
             _rebind?7935_
             _phi7936_
             _ctx7938_))))
      (define gx#core-bind-runtime-reference!
        (lambda _g10706_
          (let ((_g10705_ (length _g10706_)))
            (cond ((fx= _g10705_ 2)
                   (apply gx#core-bind-runtime-reference!__0 _g10706_))
                  ((fx= _g10705_ 3)
                   (apply gx#core-bind-runtime-reference!__1 _g10706_))
                  ((fx= _g10705_ 4)
                   (apply gx#core-bind-runtime-reference!__2 _g10706_))
                  ((fx= _g10705_ 5)
                   (apply gx#core-bind-runtime-reference!__opt-lambda7900
                          _g10706_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-runtime-reference!
                    _g10706_))))))))
  (begin
    (define gx#core-bind-extern!__opt-lambda7860
      (lambda (_id7862_ _eid7863_ _rebind?7864_ _phi7865_ _ctx7866_)
        (gx#bind-identifier!__opt-lambda5208
         _id7862_
         (##structure
          gx#extern-binding::t
          _eid7863_
          (gx#core-identifier-key _id7862_)
          _phi7865_)
         _rebind?7864_
         _phi7865_
         _ctx7866_)))
    (begin
      (define gx#core-bind-extern!__0
        (lambda (_id7871_ _eid7872_)
          (let* ((_rebind?7874_ '#f)
                 (_phi7876_ (gx#current-expander-phi))
                 (_ctx7878_ (gx#current-expander-context)))
            (gx#core-bind-extern!__opt-lambda7860
             _id7871_
             _eid7872_
             _rebind?7874_
             _phi7876_
             _ctx7878_))))
      (define gx#core-bind-extern!__1
        (lambda (_id7880_ _eid7881_ _rebind?7882_)
          (let* ((_phi7884_ (gx#current-expander-phi))
                 (_ctx7886_ (gx#current-expander-context)))
            (gx#core-bind-extern!__opt-lambda7860
             _id7880_
             _eid7881_
             _rebind?7882_
             _phi7884_
             _ctx7886_))))
      (define gx#core-bind-extern!__2
        (lambda (_id7888_ _eid7889_ _rebind?7890_ _phi7891_)
          (let ((_ctx7893_ (gx#current-expander-context)))
            (gx#core-bind-extern!__opt-lambda7860
             _id7888_
             _eid7889_
             _rebind?7890_
             _phi7891_
             _ctx7893_))))
      (define gx#core-bind-extern!
        (lambda _g10708_
          (let ((_g10707_ (length _g10708_)))
            (cond ((fx= _g10707_ 2) (apply gx#core-bind-extern!__0 _g10708_))
                  ((fx= _g10707_ 3) (apply gx#core-bind-extern!__1 _g10708_))
                  ((fx= _g10707_ 4) (apply gx#core-bind-extern!__2 _g10708_))
                  ((fx= _g10707_ 5)
                   (apply gx#core-bind-extern!__opt-lambda7860 _g10708_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-extern!
                    _g10708_))))))))
  (begin
    (define gx#core-bind-syntax!__opt-lambda7814
      (lambda (_id7816_ _e7817_ _rebind?7818_ _phi7819_ _ctx7820_)
        (gx#bind-identifier!__opt-lambda5208
         _id7816_
         (let ((_key7825_ (gx#core-identifier-key _id7816_))
               (_e7826_ (if (let ((_$e7822_
                                   (##structure-instance-of?
                                    _e7817_
                                    'gx#expander::t)))
                              (if _$e7822_
                                  _$e7822_
                                  (##structure-instance-of?
                                   _e7817_
                                   'gx#expander-context::t)))
                            _e7817_
                            (##structure
                             gx#user-expander::t
                             _e7817_
                             _ctx7820_
                             _phi7819_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__opt-lambda7712
             _key7825_
             '#t
             _phi7819_
             _ctx7820_)
            _key7825_
            _phi7819_
            _e7826_))
         _rebind?7818_
         _phi7819_
         _ctx7820_)))
    (begin
      (define gx#core-bind-syntax!__0
        (lambda (_id7831_ _e7832_)
          (let* ((_rebind?7834_ '#f)
                 (_phi7836_ (gx#current-expander-phi))
                 (_ctx7838_ (gx#current-expander-context)))
            (gx#core-bind-syntax!__opt-lambda7814
             _id7831_
             _e7832_
             _rebind?7834_
             _phi7836_
             _ctx7838_))))
      (define gx#core-bind-syntax!__1
        (lambda (_id7840_ _e7841_ _rebind?7842_)
          (let* ((_phi7844_ (gx#current-expander-phi))
                 (_ctx7846_ (gx#current-expander-context)))
            (gx#core-bind-syntax!__opt-lambda7814
             _id7840_
             _e7841_
             _rebind?7842_
             _phi7844_
             _ctx7846_))))
      (define gx#core-bind-syntax!__2
        (lambda (_id7848_ _e7849_ _rebind?7850_ _phi7851_)
          (let ((_ctx7853_ (gx#current-expander-context)))
            (gx#core-bind-syntax!__opt-lambda7814
             _id7848_
             _e7849_
             _rebind?7850_
             _phi7851_
             _ctx7853_))))
      (define gx#core-bind-syntax!
        (lambda _g10710_
          (let ((_g10709_ (length _g10710_)))
            (cond ((fx= _g10709_ 2) (apply gx#core-bind-syntax!__0 _g10710_))
                  ((fx= _g10709_ 3) (apply gx#core-bind-syntax!__1 _g10710_))
                  ((fx= _g10709_ 4) (apply gx#core-bind-syntax!__2 _g10710_))
                  ((fx= _g10709_ 5)
                   (apply gx#core-bind-syntax!__opt-lambda7814 _g10710_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-syntax!
                    _g10710_))))))))
  (begin
    (define gx#core-bind-root-syntax!__opt-lambda7797
      (lambda (_id7799_ _e7800_ _rebind?7801_)
        (gx#core-bind-syntax!__opt-lambda7814
         _id7799_
         _e7800_
         _rebind?7801_
         '0
         (gx#core-context-root__0))))
    (begin
      (define gx#core-bind-root-syntax!__0
        (lambda (_id7806_ _e7807_)
          (let ((_rebind?7809_ '#f))
            (gx#core-bind-root-syntax!__opt-lambda7797
             _id7806_
             _e7807_
             _rebind?7809_))))
      (define gx#core-bind-root-syntax!
        (lambda _g10712_
          (let ((_g10711_ (length _g10712_)))
            (cond ((fx= _g10711_ 2)
                   (apply gx#core-bind-root-syntax!__0 _g10712_))
                  ((fx= _g10711_ 3)
                   (apply gx#core-bind-root-syntax!__opt-lambda7797 _g10712_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-root-syntax!
                    _g10712_))))))))
  (begin
    (define gx#core-bind-alias!__opt-lambda7755
      (lambda (_id7757_ _alias-id7758_ _rebind?7759_ _phi7760_ _ctx7761_)
        (gx#bind-identifier!__opt-lambda5208
         _id7757_
         (let ((_key7763_ (gx#core-identifier-key _id7757_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__opt-lambda7712
             _key7763_
             '#t
             _phi7760_
             _ctx7761_)
            _key7763_
            _phi7760_
            _alias-id7758_))
         _rebind?7759_
         _phi7760_
         _ctx7761_)))
    (begin
      (define gx#core-bind-alias!__0
        (lambda (_id7768_ _alias-id7769_)
          (let* ((_rebind?7771_ '#f)
                 (_phi7773_ (gx#current-expander-phi))
                 (_ctx7775_ (gx#current-expander-context)))
            (gx#core-bind-alias!__opt-lambda7755
             _id7768_
             _alias-id7769_
             _rebind?7771_
             _phi7773_
             _ctx7775_))))
      (define gx#core-bind-alias!__1
        (lambda (_id7777_ _alias-id7778_ _rebind?7779_)
          (let* ((_phi7781_ (gx#current-expander-phi))
                 (_ctx7783_ (gx#current-expander-context)))
            (gx#core-bind-alias!__opt-lambda7755
             _id7777_
             _alias-id7778_
             _rebind?7779_
             _phi7781_
             _ctx7783_))))
      (define gx#core-bind-alias!__2
        (lambda (_id7785_ _alias-id7786_ _rebind?7787_ _phi7788_)
          (let ((_ctx7790_ (gx#current-expander-context)))
            (gx#core-bind-alias!__opt-lambda7755
             _id7785_
             _alias-id7786_
             _rebind?7787_
             _phi7788_
             _ctx7790_))))
      (define gx#core-bind-alias!
        (lambda _g10714_
          (let ((_g10713_ (length _g10714_)))
            (cond ((fx= _g10713_ 2) (apply gx#core-bind-alias!__0 _g10714_))
                  ((fx= _g10713_ 3) (apply gx#core-bind-alias!__1 _g10714_))
                  ((fx= _g10713_ 4) (apply gx#core-bind-alias!__2 _g10714_))
                  ((fx= _g10713_ 5)
                   (apply gx#core-bind-alias!__opt-lambda7755 _g10714_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#core-bind-alias!
                    _g10714_))))))))
  (begin
    (define gx#make-binding-id__opt-lambda7712
      (lambda (_key7714_ _syntax?7715_ _phi7716_ _ctx7717_)
        (if (uninterned-symbol? _key7714_)
            (gensym 'L)
            (if (pair? _key7714_)
                (gensym (car _key7714_))
                (if (##structure-instance-of? _ctx7717_ 'gx#top-context::t)
                    (let ((_ns7719_
                           (gx#core-context-namespace__opt-lambda4744
                            _ctx7717_)))
                      (if (if (fxzero? _phi7716_) (not _syntax?7715_) '#f)
                          (if _ns7719_
                              (make-symbol _ns7719_ '"#" _key7714_)
                              _key7714_)
                          (if _syntax?7715_
                              (make-symbol
                               (let ((_$e7721_ _ns7719_))
                                 (if _$e7721_ _$e7721_ '""))
                               '"[:"
                               (number->string _phi7716_)
                               '":]#"
                               _key7714_)
                              (make-symbol
                               (let ((_$e7724_ _ns7719_))
                                 (if _$e7724_ _$e7724_ '""))
                               '"["
                               (number->string _phi7716_)
                               '"]#"
                               _key7714_))))
                    (gensym _key7714_))))))
    (begin
      (define gx#make-binding-id__0
        (lambda (_key7730_)
          (let* ((_syntax?7732_ '#f)
                 (_phi7734_ (gx#current-expander-phi))
                 (_ctx7736_ (gx#current-expander-context)))
            (gx#make-binding-id__opt-lambda7712
             _key7730_
             _syntax?7732_
             _phi7734_
             _ctx7736_))))
      (define gx#make-binding-id__1
        (lambda (_key7738_ _syntax?7739_)
          (let* ((_phi7741_ (gx#current-expander-phi))
                 (_ctx7743_ (gx#current-expander-context)))
            (gx#make-binding-id__opt-lambda7712
             _key7738_
             _syntax?7739_
             _phi7741_
             _ctx7743_))))
      (define gx#make-binding-id__2
        (lambda (_key7745_ _syntax?7746_ _phi7747_)
          (let ((_ctx7749_ (gx#current-expander-context)))
            (gx#make-binding-id__opt-lambda7712
             _key7745_
             _syntax?7746_
             _phi7747_
             _ctx7749_))))
      (define gx#make-binding-id
        (lambda _g10716_
          (let ((_g10715_ (length _g10716_)))
            (cond ((fx= _g10715_ 1) (apply gx#make-binding-id__0 _g10716_))
                  ((fx= _g10715_ 2) (apply gx#make-binding-id__1 _g10716_))
                  ((fx= _g10715_ 3) (apply gx#make-binding-id__2 _g10716_))
                  ((fx= _g10715_ 4)
                   (apply gx#make-binding-id__opt-lambda7712 _g10716_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#make-binding-id
                    _g10716_)))))))))
