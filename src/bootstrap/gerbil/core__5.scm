(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<sugar>$<sugar:3>[1]#_g35545_|
    (gx#make-syntax-quote 'quote #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core$<sugar>$<sugar:3>[:0:]#defsyntax|
      (lambda (_$stx16424_)
        (let* ((_g1642916468_
                (lambda (_g1643016464_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1643016464_)))
               (_g1642816524_
                (lambda (_g1643016472_)
                  (if (gx#stx-pair? _g1643016472_)
                      (let ((_e1645416475_ (gx#syntax-e _g1643016472_)))
                        (let ((_hd1645516479_ (##car _e1645416475_))
                              (_tl1645616482_ (##cdr _e1645416475_)))
                          (if (gx#stx-pair? _tl1645616482_)
                              (let ((_e1645716485_
                                     (gx#syntax-e _tl1645616482_)))
                                (let ((_hd1645816489_ (##car _e1645716485_))
                                      (_tl1645916492_ (##cdr _e1645716485_)))
                                  (if (gx#stx-pair? _tl1645916492_)
                                      (let ((_e1646016495_
                                             (gx#syntax-e _tl1645916492_)))
                                        (let ((_hd1646116499_
                                               (##car _e1646016495_))
                                              (_tl1646216502_
                                               (##cdr _e1646016495_)))
                                          (if (gx#stx-null? _tl1646216502_)
                                              ((lambda (_L16505_ _L16507_)
                                                 (if (gx#identifier? _L16507_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'define-syntax)
                                                           (cons _L16507_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L16505_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1642916468_
                                                      _g1643016472_)))
                                               _hd1646116499_
                                               _hd1645816489_)
                                              (_g1642916468_ _g1643016472_))))
                                      (_g1642916468_ _g1643016472_))))
                              (_g1642916468_ _g1643016472_))))
                      (_g1642916468_ _g1643016472_))))
               (_g1642716622_
                (lambda (_g1643016528_)
                  (if (gx#stx-pair? _g1643016528_)
                      (let ((_e1643416531_ (gx#syntax-e _g1643016528_)))
                        (let ((_hd1643516535_ (##car _e1643416531_))
                              (_tl1643616538_ (##cdr _e1643416531_)))
                          (if (gx#stx-pair? _tl1643616538_)
                              (let ((_e1643716541_
                                     (gx#syntax-e _tl1643616538_)))
                                (let ((_hd1643816545_ (##car _e1643716541_))
                                      (_tl1643916548_ (##cdr _e1643716541_)))
                                  (if (gx#stx-pair? _hd1643816545_)
                                      (let ((_e1644016551_
                                             (gx#syntax-e _hd1643816545_)))
                                        (let ((_hd1644116555_
                                               (##car _e1644016551_))
                                              (_tl1644216558_
                                               (##cdr _e1644016551_)))
                                          (if (gx#stx-pair/null?
                                               _tl1643916548_)
                                              (if (fx>= (gx#stx-length
                                                         _tl1643916548_)
                                                        '0)
                                                  (let ((_g35537_
                                                         (gx#syntax-split-splice
                                                          _tl1643916548_
                                                          '0)))
                                                    (begin
                                                      (let ((_g35538_
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g35537_)
                         (##vector-length _g35537_)
                         1)))
                (if (not (##fx= _g35538_ 2))
                    (error "Context expects 2 values" _g35538_)))
              (let ((_target1644316561_ (##vector-ref _g35537_ 0))
                    (_tl1644516564_ (##vector-ref _g35537_ 1)))
                (if (gx#stx-null? _tl1644516564_)
                    (letrec ((_loop1644616567_
                              (lambda (_hd1644416571_ _body1645016574_)
                                (if (gx#stx-pair? _hd1644416571_)
                                    (let ((_e1644716577_
                                           (gx#syntax-e _hd1644416571_)))
                                      (let ((_lp-hd1644816581_
                                             (##car _e1644716577_))
                                            (_lp-tl1644916584_
                                             (##cdr _e1644716577_)))
                                        (_loop1644616567_
                                         _lp-tl1644916584_
                                         (cons _lp-hd1644816581_
                                               _body1645016574_))))
                                    (let ((_body1645116587_
                                           (reverse _body1645016574_)))
                                      ((lambda (_L16591_ _L16593_ _L16594_)
                                         (if (gx#identifier? _L16594_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'define-syntax)
                                                   (cons _L16594_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'lambda)
                             (cons _L16593_
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g1661316616_
                                                     _g1661416619_)
                                              (cons _g1661316616_
                                                    _g1661416619_))
                                            '()
                                            _L16591_))))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1642816524_ _g1643016528_)))
                                       _body1645116587_
                                       _tl1644216558_
                                       _hd1644116555_))))))
                      (_loop1644616567_ _target1644316561_ '()))
                    (_g1642816524_ _g1643016528_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1642816524_
                                                   _g1643016528_))
                                              (_g1642816524_ _g1643016528_))))
                                      (_g1642816524_ _g1643016528_))))
                              (_g1642816524_ _g1643016528_))))
                      (_g1642816524_ _g1643016528_)))))
          (_g1642716622_ _$stx16424_))))
    (define |gerbil/core$<sugar>$<sugar:3>[:0:]#definline|
      (lambda (_stx16627_)
        (let* ((_g1663016667_
                (lambda (_g1663116663_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1663116663_)))
               (_g1662917028_
                (lambda (_g1663116671_)
                  (if (gx#stx-pair? _g1663116671_)
                      (let ((_e1663516674_ (gx#syntax-e _g1663116671_)))
                        (let ((_hd1663616678_ (##car _e1663516674_))
                              (_tl1663716681_ (##cdr _e1663516674_)))
                          (if (gx#stx-pair? _tl1663716681_)
                              (let ((_e1663816684_
                                     (gx#syntax-e _tl1663716681_)))
                                (let ((_hd1663916688_ (##car _e1663816684_))
                                      (_tl1664016691_ (##cdr _e1663816684_)))
                                  (if (gx#stx-pair? _hd1663916688_)
                                      (let ((_e1664116694_
                                             (gx#syntax-e _hd1663916688_)))
                                        (let ((_hd1664216698_
                                               (##car _e1664116694_))
                                              (_tl1664316701_
                                               (##cdr _e1664116694_)))
                                          (if (gx#stx-pair/null?
                                               _tl1664316701_)
                                              (if (fx>= (gx#stx-length
                                                         _tl1664316701_)
                                                        '0)
                                                  (let ((_g35539_
                                                         (gx#syntax-split-splice
                                                          _tl1664316701_
                                                          '0)))
                                                    (begin
                                                      (let ((_g35540_
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g35539_)
                         (##vector-length _g35539_)
                         1)))
                (if (not (##fx= _g35540_ 2))
                    (error "Context expects 2 values" _g35540_)))
              (let ((_target1664416704_ (##vector-ref _g35539_ 0))
                    (_tl1664616707_ (##vector-ref _g35539_ 1)))
                (if (gx#stx-null? _tl1664616707_)
                    (letrec ((_loop1664716710_
                              (lambda (_hd1664516714_ _arg1665116717_)
                                (if (gx#stx-pair? _hd1664516714_)
                                    (let ((_e1664816720_
                                           (gx#syntax-e _hd1664516714_)))
                                      (let ((_lp-hd1664916724_
                                             (##car _e1664816720_))
                                            (_lp-tl1665016727_
                                             (##cdr _e1664816720_)))
                                        (_loop1664716710_
                                         _lp-tl1665016727_
                                         (cons _lp-hd1664916724_
                                               _arg1665116717_))))
                                    (let ((_arg1665216730_
                                           (reverse _arg1665116717_)))
                                      (if (gx#stx-pair/null? _tl1664016691_)
                                          (if (fx>= (gx#stx-length
                                                     _tl1664016691_)
                                                    '0)
                                              (let ((_g35541_
                                                     (gx#syntax-split-splice
                                                      _tl1664016691_
                                                      '0)))
                                                (begin
                                                  (let ((_g35542_
                                                         (if (##values?
                                                              _g35541_)
                                                             (##vector-length
                                                              _g35541_)
                                                             1)))
                                                    (if (not (##fx= _g35542_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                (error "Context expects 2 values" _g35542_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target1665316734_
                                                         (##vector-ref
                                                          _g35541_
                                                          0))
                                                        (_tl1665516737_
                                                         (##vector-ref
                                                          _g35541_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl1665516737_)
                                                        (letrec ((_loop1665616740_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd1665416744_ _body1666016747_)
                            (if (gx#stx-pair? _hd1665416744_)
                                (let ((_e1665716750_
                                       (gx#syntax-e _hd1665416744_)))
                                  (let ((_lp-hd1665816754_
                                         (##car _e1665716750_))
                                        (_lp-tl1665916757_
                                         (##cdr _e1665716750_)))
                                    (_loop1665616740_
                                     _lp-tl1665916757_
                                     (cons _lp-hd1665816754_
                                           _body1666016747_))))
                                (let ((_body1666116760_
                                       (reverse _body1666016747_)))
                                  ((lambda (_L16764_ _L16766_ _L16767_)
                                     (if (if (gx#identifier? _L16767_)
                                             (gx#identifier-list?
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g1679116794_
                                                                _g1679216797_)
                                                         (cons _g1679116794_
                                                               _g1679216797_))
                                                       '()
                                                       _L16766_)))
                                             '#f)
                                         (let* ((_g1680016808_
                                                 (lambda (_g1680116804_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1680116804_)))
                                                (_g1679917024_
                                                 (lambda (_g1680116812_)
                                                   ((lambda (_L16815_)
                                                      (let ()
                                                        (let* ((_g1682716844_
                                                                (lambda (_g1682816840_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1682816840_)))
                       (_g1682617012_
                        (lambda (_g1682816848_)
                          (if (gx#stx-pair/null? _g1682816848_)
                              (if (fx>= (gx#stx-length _g1682816848_) '0)
                                  (let ((_g35543_
                                         (gx#syntax-split-splice
                                          _g1682816848_
                                          '0)))
                                    (begin
                                      (let ((_g35544_
                                             (if (##values? _g35543_)
                                                 (##vector-length _g35543_)
                                                 1)))
                                        (if (not (##fx= _g35544_ 2))
                                            (error "Context expects 2 values"
                                                   _g35544_)))
                                      (let ((_target1683016851_
                                             (##vector-ref _g35543_ 0))
                                            (_tl1683216854_
                                             (##vector-ref _g35543_ 1)))
                                        (if (gx#stx-null? _tl1683216854_)
                                            (letrec ((_loop1683316857_
                                                      (lambda (_hd1683116861_
                                                               _xarg1683716864_)
                                                        (if (gx#stx-pair?
                                                             _hd1683116861_)
                                                            (let ((_e1683416867_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd1683116861_)))
                      (let ((_lp-hd1683516871_ (##car _e1683416867_))
                            (_lp-tl1683616874_ (##cdr _e1683416867_)))
                        (_loop1683316857_
                         _lp-tl1683616874_
                         (cons _lp-hd1683516871_ _xarg1683716864_))))
                    (let ((_xarg1683816877_ (reverse _xarg1683716864_)))
                      ((lambda (_L16881_)
                         (let ()
                           (let* ((_g1689816906_
                                   (lambda (_g1689916902_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1689916902_)))
                                  (_g1689716976_
                                   (lambda (_g1689916910_)
                                     ((lambda (_L16913_)
                                        (let ()
                                          (let* ((_g1692616934_
                                                  (lambda (_g1692716930_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1692716930_)))
                                                 (_g1692516956_
                                                  (lambda (_g1692716938_)
                                                    ((lambda (_L16941_)
                                                       (let ()
                                                         (let ()
                                                           (gx#stx-wrap-source
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'begin)
                          (cons _L16941_ (cons _L16913_ '())))
                    (gx#stx-source _stx16627_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1692716938_))))
                                            (_g1692516956_
                                             (gx#stx-wrap-source
                                              (cons (gx#datum->syntax '#f 'def)
                                                    (cons (cons _L16815_
                                                                (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr (lambda (_g1695916964_ _g1696016967_)
                                   (cons _g1695916964_ _g1696016967_))
                                 '()
                                 _L16766_)))
                  (begin
                    '#!void
                    (foldr (lambda (_g1696116970_ _g1696216973_)
                             (cons _g1696116970_ _g1696216973_))
                           '()
                           _L16764_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx16627_))))))
                                      _g1689916910_))))
                             (_g1689716976_
                              (gx#stx-wrap-source
                               (cons (gx#datum->syntax '#f 'defrules)
                                     (cons _L16767_
                                           (cons '()
                                                 (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '_)
                           (begin
                             '#!void
                             (foldr (lambda (_g1697916988_ _g1698016991_)
                                      (cons _g1697916988_ _g1698016991_))
                                    '()
                                    _L16881_)))
                     (cons (cons (cons (gx#datum->syntax '#f 'lambda)
                                       (cons (begin
                                               '#!void
                                               (foldr (lambda (_g1698116994_
                                                               _g1698216997_)
                                                        (cons _g1698116994_
                                                              _g1698216997_))
                                                      '()
                                                      _L16766_))
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g1698317000_
                                                               _g1698417003_)
                                                        (cons _g1698317000_
                                                              _g1698417003_))
                                                      '()
                                                      _L16764_))))
                                 (begin
                                   '#!void
                                   (foldr (lambda (_g1698517006_ _g1698617009_)
                                            (cons _g1698517006_ _g1698617009_))
                                          '()
                                          _L16881_)))
                           '()))
               (cons (cons (gx#datum->syntax '#f 'ref)
                           (cons (cons (gx#datum->syntax '#f 'identifier?)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'syntax)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'ref)
                                                         '()))
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'syntax)
                                             (cons _L16815_ '()))
                                       '())))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (gx#stx-source _stx16627_))))))
                       _xarg1683816877_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop1683316857_
                                               _target1683016851_
                                               '()))
                                            (_g1682716844_ _g1682816848_)))))
                                  (_g1682716844_ _g1682816848_))
                              (_g1682716844_ _g1682816848_)))))
                  (_g1682617012_
                   (gx#gentemps
                    (begin
                      '#!void
                      (foldr (lambda (_g1701517018_ _g1701617021_)
                               (cons _g1701517018_ _g1701617021_))
                             '()
                             _L16766_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1680116812_))))
                                           (_g1679917024_
                                            (gx#stx-identifier
                                             _L16767_
                                             _L16767_
                                             '"__impl")))
                                         (_g1663016667_ _g1663116671_)))
                                   _body1666116760_
                                   _arg1665216730_
                                   _hd1664216698_))))))
                  (_loop1665616740_ _target1665316734_ '()))
                (_g1663016667_ _g1663116671_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1663016667_ _g1663116671_))
                                          (_g1663016667_ _g1663116671_)))))))
                      (_loop1664716710_ _target1664416704_ '()))
                    (_g1663016667_ _g1663116671_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1663016667_
                                                   _g1663116671_))
                                              (_g1663016667_ _g1663116671_))))
                                      (_g1663016667_ _g1663116671_))))
                              (_g1663016667_ _g1663116671_))))
                      (_g1663016667_ _g1663116671_)))))
          (_g1662917028_ _stx16627_))))
    (define |gerbil/core$<sugar>$<sugar:3>[:0:]#defconst|
      (lambda (_$stx17035_)
        (let* ((_g1704017076_
                (lambda (_g1704117072_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1704117072_)))
               (_g1703917133_
                (lambda (_g1704117080_)
                  (if (gx#stx-pair? _g1704117080_)
                      (let ((_e1706217083_ (gx#syntax-e _g1704117080_)))
                        (let ((_hd1706317087_ (##car _e1706217083_))
                              (_tl1706417090_ (##cdr _e1706217083_)))
                          (if (gx#stx-pair? _tl1706417090_)
                              (let ((_e1706517093_
                                     (gx#syntax-e _tl1706417090_)))
                                (let ((_hd1706617097_ (##car _e1706517093_))
                                      (_tl1706717100_ (##cdr _e1706517093_)))
                                  (if (gx#stx-pair? _tl1706717100_)
                                      (let ((_e1706817103_
                                             (gx#syntax-e _tl1706717100_)))
                                        (let ((_hd1706917107_
                                               (##car _e1706817103_))
                                              (_tl1707017110_
                                               (##cdr _e1706817103_)))
                                          (if (gx#stx-null? _tl1707017110_)
                                              ((lambda (_L17113_
                                                        _L17115_
                                                        _L17116_)
                                                 (if (if (gx#identifier?
                                                          _L17115_)
                                                         (gx#stx-datum?
                                                          _L17113_)
                                                         '#f)
                                                     (cons _L17116_
                                                           (cons _L17115_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _L17113_ '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1704017076_
                                                      _g1704117080_)))
                                               _hd1706917107_
                                               _hd1706617097_
                                               _hd1706317087_)
                                              (_g1704017076_ _g1704117080_))))
                                      (_g1704017076_ _g1704117080_))))
                              (_g1704017076_ _g1704117080_))))
                      (_g1704017076_ _g1704117080_))))
               (_g1703817211_
                (lambda (_g1704117137_)
                  (if (gx#stx-pair? _g1704117137_)
                      (let ((_e1704417140_ (gx#syntax-e _g1704117137_)))
                        (let ((_hd1704517144_ (##car _e1704417140_))
                              (_tl1704617147_ (##cdr _e1704417140_)))
                          (if (gx#stx-pair? _tl1704617147_)
                              (let ((_e1704717150_
                                     (gx#syntax-e _tl1704617147_)))
                                (let ((_hd1704817154_ (##car _e1704717150_))
                                      (_tl1704917157_ (##cdr _e1704717150_)))
                                  (if (gx#stx-pair? _tl1704917157_)
                                      (let ((_e1705017160_
                                             (gx#syntax-e _tl1704917157_)))
                                        (let ((_hd1705117164_
                                               (##car _e1705017160_))
                                              (_tl1705217167_
                                               (##cdr _e1705017160_)))
                                          (if (gx#stx-pair? _hd1705117164_)
                                              (let ((_e1705317170_
                                                     (gx#syntax-e
                                                      _hd1705117164_)))
                                                (let ((_hd1705417174_
                                                       (##car _e1705317170_))
                                                      (_tl1705517177_
                                                       (##cdr _e1705317170_)))
                                                  (if (gx#identifier?
                                                       _hd1705417174_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core$<sugar>$<sugar:3>[1]#_g35545_|
                                                           _hd1705417174_)
                                                          (if (gx#stx-pair?
                                                               _tl1705517177_)
                                                              (let ((_e1705617180_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl1705517177_)))
                        (let ((_hd1705717184_ (##car _e1705617180_))
                              (_tl1705817187_ (##cdr _e1705617180_)))
                          (if (gx#stx-null? _tl1705817187_)
                              (if (gx#stx-null? _tl1705217167_)
                                  ((lambda (_L17190_ _L17192_)
                                     (if (gx#identifier? _L17192_)
                                         (cons (gx#datum->syntax '#f 'defrules)
                                               (cons _L17192_
                                                     (cons '()
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'x)
                               (cons (cons (gx#datum->syntax '#f 'identifier?)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'syntax)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'x)
                                                             '()))
                                                 '()))
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _L17190_ '()))
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_g1703917133_ _g1704117137_)))
                                   _hd1705717184_
                                   _hd1704817154_)
                                  (_g1703917133_ _g1704117137_))
                              (_g1703917133_ _g1704117137_))))
                      (_g1703917133_ _g1704117137_))
                  (_g1703917133_ _g1704117137_))
              (_g1703917133_ _g1704117137_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1703917133_ _g1704117137_))))
                                      (_g1703917133_ _g1704117137_))))
                              (_g1703917133_ _g1704117137_))))
                      (_g1703917133_ _g1704117137_)))))
          (_g1703817211_ _$stx17035_))))))
