(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<sugar>$<sugar:3>[:0:]#defsyntax|
    (lambda (_$stx16423_)
      (let* ((_g1642816467_
              (lambda (_g1642916463_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1642916463_)))
             (_g1642716523_
              (lambda (_g1642916471_)
                (if (gx#stx-pair? _g1642916471_)
                    (let ((_e1645316474_ (gx#syntax-e _g1642916471_)))
                      (let ((_hd1645416478_ (##car _e1645316474_))
                            (_tl1645516481_ (##cdr _e1645316474_)))
                        (if (gx#stx-pair? _tl1645516481_)
                            (let ((_e1645616484_ (gx#syntax-e _tl1645516481_)))
                              (let ((_hd1645716488_ (##car _e1645616484_))
                                    (_tl1645816491_ (##cdr _e1645616484_)))
                                (if (gx#stx-pair? _tl1645816491_)
                                    (let ((_e1645916494_
                                           (gx#syntax-e _tl1645816491_)))
                                      (let ((_hd1646016498_
                                             (##car _e1645916494_))
                                            (_tl1646116501_
                                             (##cdr _e1645916494_)))
                                        (if (gx#stx-null? _tl1646116501_)
                                            ((lambda (_L16504_ _L16506_)
                                               (if (gx#identifier? _L16506_)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'define-syntax)
                                                         (cons _L16506_
                                                               (cons _L16504_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1642816467_
                                                    _g1642916471_)))
                                             _hd1646016498_
                                             _hd1645716488_)
                                            (_g1642816467_ _g1642916471_))))
                                    (_g1642816467_ _g1642916471_))))
                            (_g1642816467_ _g1642916471_))))
                    (_g1642816467_ _g1642916471_))))
             (_g1642616621_
              (lambda (_g1642916527_)
                (if (gx#stx-pair? _g1642916527_)
                    (let ((_e1643316530_ (gx#syntax-e _g1642916527_)))
                      (let ((_hd1643416534_ (##car _e1643316530_))
                            (_tl1643516537_ (##cdr _e1643316530_)))
                        (if (gx#stx-pair? _tl1643516537_)
                            (let ((_e1643616540_ (gx#syntax-e _tl1643516537_)))
                              (let ((_hd1643716544_ (##car _e1643616540_))
                                    (_tl1643816547_ (##cdr _e1643616540_)))
                                (if (gx#stx-pair? _hd1643716544_)
                                    (let ((_e1643916550_
                                           (gx#syntax-e _hd1643716544_)))
                                      (let ((_hd1644016554_
                                             (##car _e1643916550_))
                                            (_tl1644116557_
                                             (##cdr _e1643916550_)))
                                        (if (gx#stx-pair/null? _tl1643816547_)
                                            (if (fx>= (gx#stx-length
                                                       _tl1643816547_)
                                                      '0)
                                                (let ((_g35228_
                                                       (gx#syntax-split-splice
                                                        _tl1643816547_
                                                        '0)))
                                                  (begin
                                                    (let ((_g35229_
                                                           (values-count
                                                            _g35228_)))
                                                      (if (not (fx= _g35229_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g35229_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1644216560_
                                                           (values-ref
                                                            _g35228_
                                                            0))
                                                          (_tl1644416563_
                                                           (values-ref
                                                            _g35228_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl1644416563_)
                                                          (letrec ((_loop1644516566_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1644316570_ _body1644916573_)
                              (if (gx#stx-pair? _hd1644316570_)
                                  (let ((_e1644616576_
                                         (gx#syntax-e _hd1644316570_)))
                                    (let ((_lp-hd1644716580_
                                           (##car _e1644616576_))
                                          (_lp-tl1644816583_
                                           (##cdr _e1644616576_)))
                                      (_loop1644516566_
                                       _lp-tl1644816583_
                                       (cons _lp-hd1644716580_
                                             _body1644916573_))))
                                  (let ((_body1645016586_
                                         (reverse _body1644916573_)))
                                    ((lambda (_L16590_ _L16592_ _L16593_)
                                       (if (gx#identifier? _L16593_)
                                           (cons (gx#datum->syntax
                                                  '#f
                                                  'define-syntax)
                                                 (cons _L16593_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'lambda)
                           (cons _L16592_
                                 (begin
                                   '#!void
                                   (foldr (lambda (_g1661216615_ _g1661316618_)
                                            (cons _g1661216615_ _g1661316618_))
                                          '()
                                          _L16590_))))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g1642716523_ _g1642916527_)))
                                     _body1645016586_
                                     _tl1644116557_
                                     _hd1644016554_))))))
                    (_loop1644516566_ _target1644216560_ '()))
                  (_g1642716523_ _g1642916527_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1642716523_ _g1642916527_))
                                            (_g1642716523_ _g1642916527_))))
                                    (_g1642716523_ _g1642916527_))))
                            (_g1642716523_ _g1642916527_))))
                    (_g1642716523_ _g1642916527_)))))
        (_g1642616621_ _$stx16423_))))
  (define |gerbil/core$<sugar>$<sugar:3>[:0:]#definline|
    (lambda (_stx16626_)
      (let* ((_g1662916666_
              (lambda (_g1663016662_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1663016662_)))
             (_g1662817027_
              (lambda (_g1663016670_)
                (if (gx#stx-pair? _g1663016670_)
                    (let ((_e1663416673_ (gx#syntax-e _g1663016670_)))
                      (let ((_hd1663516677_ (##car _e1663416673_))
                            (_tl1663616680_ (##cdr _e1663416673_)))
                        (if (gx#stx-pair? _tl1663616680_)
                            (let ((_e1663716683_ (gx#syntax-e _tl1663616680_)))
                              (let ((_hd1663816687_ (##car _e1663716683_))
                                    (_tl1663916690_ (##cdr _e1663716683_)))
                                (if (gx#stx-pair? _hd1663816687_)
                                    (let ((_e1664016693_
                                           (gx#syntax-e _hd1663816687_)))
                                      (let ((_hd1664116697_
                                             (##car _e1664016693_))
                                            (_tl1664216700_
                                             (##cdr _e1664016693_)))
                                        (if (gx#stx-pair/null? _tl1664216700_)
                                            (if (fx>= (gx#stx-length
                                                       _tl1664216700_)
                                                      '0)
                                                (let ((_g35230_
                                                       (gx#syntax-split-splice
                                                        _tl1664216700_
                                                        '0)))
                                                  (begin
                                                    (let ((_g35231_
                                                           (values-count
                                                            _g35230_)))
                                                      (if (not (fx= _g35231_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g35231_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1664316703_
                                                           (values-ref
                                                            _g35230_
                                                            0))
                                                          (_tl1664516706_
                                                           (values-ref
                                                            _g35230_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl1664516706_)
                                                          (letrec ((_loop1664616709_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1664416713_ _arg1665016716_)
                              (if (gx#stx-pair? _hd1664416713_)
                                  (let ((_e1664716719_
                                         (gx#syntax-e _hd1664416713_)))
                                    (let ((_lp-hd1664816723_
                                           (##car _e1664716719_))
                                          (_lp-tl1664916726_
                                           (##cdr _e1664716719_)))
                                      (_loop1664616709_
                                       _lp-tl1664916726_
                                       (cons _lp-hd1664816723_
                                             _arg1665016716_))))
                                  (let ((_arg1665116729_
                                         (reverse _arg1665016716_)))
                                    (if (gx#stx-pair/null? _tl1663916690_)
                                        (if (fx>= (gx#stx-length
                                                   _tl1663916690_)
                                                  '0)
                                            (let ((_g35232_
                                                   (gx#syntax-split-splice
                                                    _tl1663916690_
                                                    '0)))
                                              (begin
                                                (let ((_g35233_
                                                       (values-count
                                                        _g35232_)))
                                                  (if (not (fx= _g35233_ 2))
                                                      (error "Context expects 2 values"
                                                             _g35233_)))
                                                (let ((_target1665216733_
                                                       (values-ref _g35232_ 0))
                                                      (_tl1665416736_
                                                       (values-ref
                                                        _g35232_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl1665416736_)
                                                      (letrec ((_loop1665516739_
                                                                (lambda (_hd1665316743_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _body1665916746_)
                          (if (gx#stx-pair? _hd1665316743_)
                              (let ((_e1665616749_
                                     (gx#syntax-e _hd1665316743_)))
                                (let ((_lp-hd1665716753_ (##car _e1665616749_))
                                      (_lp-tl1665816756_
                                       (##cdr _e1665616749_)))
                                  (_loop1665516739_
                                   _lp-tl1665816756_
                                   (cons _lp-hd1665716753_ _body1665916746_))))
                              (let ((_body1666016759_
                                     (reverse _body1665916746_)))
                                ((lambda (_L16763_ _L16765_ _L16766_)
                                   (if (if (gx#identifier? _L16766_)
                                           (gx#identifier-list?
                                            (begin
                                              '#!void
                                              (foldr (lambda (_g1679016793_
                                                              _g1679116796_)
                                                       (cons _g1679016793_
                                                             _g1679116796_))
                                                     '()
                                                     _L16765_)))
                                           '#f)
                                       (let* ((_g1679916807_
                                               (lambda (_g1680016803_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1680016803_)))
                                              (_g1679817023_
                                               (lambda (_g1680016811_)
                                                 ((lambda (_L16814_)
                                                    (let ()
                                                      (let* ((_g1682616843_
                                                              (lambda (_g1682716839_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax"
                         _g1682716839_)))
                     (_g1682517011_
                      (lambda (_g1682716847_)
                        (if (gx#stx-pair/null? _g1682716847_)
                            (if (fx>= (gx#stx-length _g1682716847_) '0)
                                (let ((_g35234_
                                       (gx#syntax-split-splice
                                        _g1682716847_
                                        '0)))
                                  (begin
                                    (let ((_g35235_ (values-count _g35234_)))
                                      (if (not (fx= _g35235_ 2))
                                          (error "Context expects 2 values"
                                                 _g35235_)))
                                    (let ((_target1682916850_
                                           (values-ref _g35234_ 0))
                                          (_tl1683116853_
                                           (values-ref _g35234_ 1)))
                                      (if (gx#stx-null? _tl1683116853_)
                                          (letrec ((_loop1683216856_
                                                    (lambda (_hd1683016860_
                                                             _xarg1683616863_)
                                                      (if (gx#stx-pair?
                                                           _hd1683016860_)
                                                          (let ((_e1683316866_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _hd1683016860_)))
                    (let ((_lp-hd1683416870_ (##car _e1683316866_))
                          (_lp-tl1683516873_ (##cdr _e1683316866_)))
                      (_loop1683216856_
                       _lp-tl1683516873_
                       (cons _lp-hd1683416870_ _xarg1683616863_))))
                  (let ((_xarg1683716876_ (reverse _xarg1683616863_)))
                    ((lambda (_L16880_)
                       (let ()
                         (let* ((_g1689716905_
                                 (lambda (_g1689816901_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1689816901_)))
                                (_g1689616975_
                                 (lambda (_g1689816909_)
                                   ((lambda (_L16912_)
                                      (let ()
                                        (let* ((_g1692516933_
                                                (lambda (_g1692616929_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1692616929_)))
                                               (_g1692416955_
                                                (lambda (_g1692616937_)
                                                  ((lambda (_L16940_)
                                                     (let ()
                                                       (let ()
                                                         (gx#stx-wrap-source
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'begin)
                        (cons _L16940_ (cons _L16912_ '())))
                  (gx#stx-source _stx16626_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g1692616937_))))
                                          (_g1692416955_
                                           (gx#stx-wrap-source
                                            (cons (gx#datum->syntax '#f 'def)
                                                  (cons (cons _L16814_
                                                              (begin
                                                                '#!void
                                                                (foldr (lambda (_g1695816963_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g1695916966_)
                                 (cons _g1695816963_ _g1695916966_))
                               '()
                               _L16765_)))
                (begin
                  '#!void
                  (foldr (lambda (_g1696016969_ _g1696116972_)
                           (cons _g1696016969_ _g1696116972_))
                         '()
                         _L16763_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (gx#stx-source _stx16626_))))))
                                    _g1689816909_))))
                           (_g1689616975_
                            (gx#stx-wrap-source
                             (cons (gx#datum->syntax '#f 'defrules)
                                   (cons _L16766_
                                         (cons '()
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '_)
                         (begin
                           '#!void
                           (foldr (lambda (_g1697816987_ _g1697916990_)
                                    (cons _g1697816987_ _g1697916990_))
                                  '()
                                  _L16880_)))
                   (cons (cons (cons (gx#datum->syntax '#f 'lambda)
                                     (cons (begin
                                             '#!void
                                             (foldr (lambda (_g1698016993_
                                                             _g1698116996_)
                                                      (cons _g1698016993_
                                                            _g1698116996_))
                                                    '()
                                                    _L16765_))
                                           (begin
                                             '#!void
                                             (foldr (lambda (_g1698216999_
                                                             _g1698317002_)
                                                      (cons _g1698216999_
                                                            _g1698317002_))
                                                    '()
                                                    _L16763_))))
                               (begin
                                 '#!void
                                 (foldr (lambda (_g1698417005_ _g1698517008_)
                                          (cons _g1698417005_ _g1698517008_))
                                        '()
                                        _L16880_)))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'ref)
                         (cons (cons (gx#datum->syntax '#f 'identifier?)
                                     (cons (cons (gx#datum->syntax '#f 'syntax)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'ref)
                                                       '()))
                                           '()))
                               (cons (cons (gx#datum->syntax '#f 'syntax)
                                           (cons _L16814_ '()))
                                     '())))
                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (gx#stx-source _stx16626_))))))
                     _xarg1683716876_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1683216856_
                                             _target1682916850_
                                             '()))
                                          (_g1682616843_ _g1682716847_)))))
                                (_g1682616843_ _g1682716847_))
                            (_g1682616843_ _g1682716847_)))))
                (_g1682517011_
                 (gx#gentemps
                  (begin
                    '#!void
                    (foldr (lambda (_g1701417017_ _g1701517020_)
                             (cons _g1701417017_ _g1701517020_))
                           '()
                           _L16765_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1680016811_))))
                                         (_g1679817023_
                                          (gx#stx-identifier
                                           _L16766_
                                           _L16766_
                                           '"__impl")))
                                       (_g1662916666_ _g1663016670_)))
                                 _body1666016759_
                                 _arg1665116729_
                                 _hd1664116697_))))))
                (_loop1665516739_ _target1665216733_ '()))
              (_g1662916666_ _g1663016670_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1662916666_ _g1663016670_))
                                        (_g1662916666_ _g1663016670_)))))))
                    (_loop1664616709_ _target1664316703_ '()))
                  (_g1662916666_ _g1663016670_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1662916666_ _g1663016670_))
                                            (_g1662916666_ _g1663016670_))))
                                    (_g1662916666_ _g1663016670_))))
                            (_g1662916666_ _g1663016670_))))
                    (_g1662916666_ _g1663016670_)))))
        (_g1662817027_ _stx16626_)))))
