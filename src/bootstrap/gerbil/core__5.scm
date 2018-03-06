(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<sugar>$<sugar:3>[:0:]#defsyntax|
    (lambda (_$stx16186_)
      (let* ((_g1619116230_
              (lambda (_g1619216226_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1619216226_)))
             (_g1619016286_
              (lambda (_g1619216234_)
                (if (gx#stx-pair? _g1619216234_)
                    (let ((_e1621616237_ (gx#syntax-e _g1619216234_)))
                      (let ((_hd1621716241_ (##car _e1621616237_))
                            (_tl1621816244_ (##cdr _e1621616237_)))
                        (if (gx#stx-pair? _tl1621816244_)
                            (let ((_e1621916247_ (gx#syntax-e _tl1621816244_)))
                              (let ((_hd1622016251_ (##car _e1621916247_))
                                    (_tl1622116254_ (##cdr _e1621916247_)))
                                (if (gx#stx-pair? _tl1622116254_)
                                    (let ((_e1622216257_
                                           (gx#syntax-e _tl1622116254_)))
                                      (let ((_hd1622316261_
                                             (##car _e1622216257_))
                                            (_tl1622416264_
                                             (##cdr _e1622216257_)))
                                        (if (gx#stx-null? _tl1622416264_)
                                            ((lambda (_L16267_ _L16269_)
                                               (if (gx#identifier? _L16269_)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'define-syntax)
                                                         (cons _L16269_
                                                               (cons _L16267_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1619116230_
                                                    _g1619216234_)))
                                             _hd1622316261_
                                             _hd1622016251_)
                                            (_g1619116230_ _g1619216234_))))
                                    (_g1619116230_ _g1619216234_))))
                            (_g1619116230_ _g1619216234_))))
                    (_g1619116230_ _g1619216234_))))
             (_g1618916384_
              (lambda (_g1619216290_)
                (if (gx#stx-pair? _g1619216290_)
                    (let ((_e1619616293_ (gx#syntax-e _g1619216290_)))
                      (let ((_hd1619716297_ (##car _e1619616293_))
                            (_tl1619816300_ (##cdr _e1619616293_)))
                        (if (gx#stx-pair? _tl1619816300_)
                            (let ((_e1619916303_ (gx#syntax-e _tl1619816300_)))
                              (let ((_hd1620016307_ (##car _e1619916303_))
                                    (_tl1620116310_ (##cdr _e1619916303_)))
                                (if (gx#stx-pair? _hd1620016307_)
                                    (let ((_e1620216313_
                                           (gx#syntax-e _hd1620016307_)))
                                      (let ((_hd1620316317_
                                             (##car _e1620216313_))
                                            (_tl1620416320_
                                             (##cdr _e1620216313_)))
                                        (if (gx#stx-pair/null? _tl1620116310_)
                                            (if (fx>= (gx#stx-length
                                                       _tl1620116310_)
                                                      '0)
                                                (let ((_g34987_
                                                       (gx#syntax-split-splice
                                                        _tl1620116310_
                                                        '0)))
                                                  (begin
                                                    (let ((_g34988_
                                                           (values-count
                                                            _g34987_)))
                                                      (if (not (fx= _g34988_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g34988_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1620516323_
                                                           (values-ref
                                                            _g34987_
                                                            0))
                                                          (_tl1620716326_
                                                           (values-ref
                                                            _g34987_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl1620716326_)
                                                          (letrec ((_loop1620816329_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1620616333_ _body1621216336_)
                              (if (gx#stx-pair? _hd1620616333_)
                                  (let ((_e1620916339_
                                         (gx#syntax-e _hd1620616333_)))
                                    (let ((_lp-hd1621016343_
                                           (##car _e1620916339_))
                                          (_lp-tl1621116346_
                                           (##cdr _e1620916339_)))
                                      (_loop1620816329_
                                       _lp-tl1621116346_
                                       (cons _lp-hd1621016343_
                                             _body1621216336_))))
                                  (let ((_body1621316349_
                                         (reverse _body1621216336_)))
                                    ((lambda (_L16353_ _L16355_ _L16356_)
                                       (if (gx#identifier? _L16356_)
                                           (cons (gx#datum->syntax
                                                  '#f
                                                  'define-syntax)
                                                 (cons _L16356_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'lambda)
                           (cons _L16355_
                                 (begin
                                   '#!void
                                   (foldr (lambda (_g1637516378_ _g1637616381_)
                                            (cons _g1637516378_ _g1637616381_))
                                          '()
                                          _L16353_))))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g1619016286_ _g1619216290_)))
                                     _body1621316349_
                                     _tl1620416320_
                                     _hd1620316317_))))))
                    (_loop1620816329_ _target1620516323_ '()))
                  (_g1619016286_ _g1619216290_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1619016286_ _g1619216290_))
                                            (_g1619016286_ _g1619216290_))))
                                    (_g1619016286_ _g1619216290_))))
                            (_g1619016286_ _g1619216290_))))
                    (_g1619016286_ _g1619216290_)))))
        (_g1618916384_ _$stx16186_))))
  (define |gerbil/core$<sugar>$<sugar:3>[:0:]#definline|
    (lambda (_stx16389_)
      (let* ((_g1639216429_
              (lambda (_g1639316425_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1639316425_)))
             (_g1639116790_
              (lambda (_g1639316433_)
                (if (gx#stx-pair? _g1639316433_)
                    (let ((_e1639716436_ (gx#syntax-e _g1639316433_)))
                      (let ((_hd1639816440_ (##car _e1639716436_))
                            (_tl1639916443_ (##cdr _e1639716436_)))
                        (if (gx#stx-pair? _tl1639916443_)
                            (let ((_e1640016446_ (gx#syntax-e _tl1639916443_)))
                              (let ((_hd1640116450_ (##car _e1640016446_))
                                    (_tl1640216453_ (##cdr _e1640016446_)))
                                (if (gx#stx-pair? _hd1640116450_)
                                    (let ((_e1640316456_
                                           (gx#syntax-e _hd1640116450_)))
                                      (let ((_hd1640416460_
                                             (##car _e1640316456_))
                                            (_tl1640516463_
                                             (##cdr _e1640316456_)))
                                        (if (gx#stx-pair/null? _tl1640516463_)
                                            (if (fx>= (gx#stx-length
                                                       _tl1640516463_)
                                                      '0)
                                                (let ((_g34989_
                                                       (gx#syntax-split-splice
                                                        _tl1640516463_
                                                        '0)))
                                                  (begin
                                                    (let ((_g34990_
                                                           (values-count
                                                            _g34989_)))
                                                      (if (not (fx= _g34990_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g34990_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1640616466_
                                                           (values-ref
                                                            _g34989_
                                                            0))
                                                          (_tl1640816469_
                                                           (values-ref
                                                            _g34989_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl1640816469_)
                                                          (letrec ((_loop1640916472_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1640716476_ _arg1641316479_)
                              (if (gx#stx-pair? _hd1640716476_)
                                  (let ((_e1641016482_
                                         (gx#syntax-e _hd1640716476_)))
                                    (let ((_lp-hd1641116486_
                                           (##car _e1641016482_))
                                          (_lp-tl1641216489_
                                           (##cdr _e1641016482_)))
                                      (_loop1640916472_
                                       _lp-tl1641216489_
                                       (cons _lp-hd1641116486_
                                             _arg1641316479_))))
                                  (let ((_arg1641416492_
                                         (reverse _arg1641316479_)))
                                    (if (gx#stx-pair/null? _tl1640216453_)
                                        (if (fx>= (gx#stx-length
                                                   _tl1640216453_)
                                                  '0)
                                            (let ((_g34991_
                                                   (gx#syntax-split-splice
                                                    _tl1640216453_
                                                    '0)))
                                              (begin
                                                (let ((_g34992_
                                                       (values-count
                                                        _g34991_)))
                                                  (if (not (fx= _g34992_ 2))
                                                      (error "Context expects 2 values"
                                                             _g34992_)))
                                                (let ((_target1641516496_
                                                       (values-ref _g34991_ 0))
                                                      (_tl1641716499_
                                                       (values-ref
                                                        _g34991_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl1641716499_)
                                                      (letrec ((_loop1641816502_
                                                                (lambda (_hd1641616506_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _body1642216509_)
                          (if (gx#stx-pair? _hd1641616506_)
                              (let ((_e1641916512_
                                     (gx#syntax-e _hd1641616506_)))
                                (let ((_lp-hd1642016516_ (##car _e1641916512_))
                                      (_lp-tl1642116519_
                                       (##cdr _e1641916512_)))
                                  (_loop1641816502_
                                   _lp-tl1642116519_
                                   (cons _lp-hd1642016516_ _body1642216509_))))
                              (let ((_body1642316522_
                                     (reverse _body1642216509_)))
                                ((lambda (_L16526_ _L16528_ _L16529_)
                                   (if (if (gx#identifier? _L16529_)
                                           (gx#identifier-list?
                                            (begin
                                              '#!void
                                              (foldr (lambda (_g1655316556_
                                                              _g1655416559_)
                                                       (cons _g1655316556_
                                                             _g1655416559_))
                                                     '()
                                                     _L16528_)))
                                           '#f)
                                       (let* ((_g1656216570_
                                               (lambda (_g1656316566_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1656316566_)))
                                              (_g1656116786_
                                               (lambda (_g1656316574_)
                                                 ((lambda (_L16577_)
                                                    (let ()
                                                      (let* ((_g1658916606_
                                                              (lambda (_g1659016602_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax"
                         _g1659016602_)))
                     (_g1658816774_
                      (lambda (_g1659016610_)
                        (if (gx#stx-pair/null? _g1659016610_)
                            (if (fx>= (gx#stx-length _g1659016610_) '0)
                                (let ((_g34993_
                                       (gx#syntax-split-splice
                                        _g1659016610_
                                        '0)))
                                  (begin
                                    (let ((_g34994_ (values-count _g34993_)))
                                      (if (not (fx= _g34994_ 2))
                                          (error "Context expects 2 values"
                                                 _g34994_)))
                                    (let ((_target1659216613_
                                           (values-ref _g34993_ 0))
                                          (_tl1659416616_
                                           (values-ref _g34993_ 1)))
                                      (if (gx#stx-null? _tl1659416616_)
                                          (letrec ((_loop1659516619_
                                                    (lambda (_hd1659316623_
                                                             _xarg1659916626_)
                                                      (if (gx#stx-pair?
                                                           _hd1659316623_)
                                                          (let ((_e1659616629_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _hd1659316623_)))
                    (let ((_lp-hd1659716633_ (##car _e1659616629_))
                          (_lp-tl1659816636_ (##cdr _e1659616629_)))
                      (_loop1659516619_
                       _lp-tl1659816636_
                       (cons _lp-hd1659716633_ _xarg1659916626_))))
                  (let ((_xarg1660016639_ (reverse _xarg1659916626_)))
                    ((lambda (_L16643_)
                       (let ()
                         (let* ((_g1666016668_
                                 (lambda (_g1666116664_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1666116664_)))
                                (_g1665916738_
                                 (lambda (_g1666116672_)
                                   ((lambda (_L16675_)
                                      (let ()
                                        (let* ((_g1668816696_
                                                (lambda (_g1668916692_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1668916692_)))
                                               (_g1668716718_
                                                (lambda (_g1668916700_)
                                                  ((lambda (_L16703_)
                                                     (let ()
                                                       (let ()
                                                         (gx#stx-wrap-source
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'begin)
                        (cons _L16703_ (cons _L16675_ '())))
                  (gx#stx-source _stx16389_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g1668916700_))))
                                          (_g1668716718_
                                           (gx#stx-wrap-source
                                            (cons (gx#datum->syntax '#f 'def)
                                                  (cons (cons _L16577_
                                                              (begin
                                                                '#!void
                                                                (foldr (lambda (_g1672116726_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g1672216729_)
                                 (cons _g1672116726_ _g1672216729_))
                               '()
                               _L16528_)))
                (begin
                  '#!void
                  (foldr (lambda (_g1672316732_ _g1672416735_)
                           (cons _g1672316732_ _g1672416735_))
                         '()
                         _L16526_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (gx#stx-source _stx16389_))))))
                                    _g1666116672_))))
                           (_g1665916738_
                            (gx#stx-wrap-source
                             (cons (gx#datum->syntax '#f 'defrules)
                                   (cons _L16529_
                                         (cons '()
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '_)
                         (begin
                           '#!void
                           (foldr (lambda (_g1674116750_ _g1674216753_)
                                    (cons _g1674116750_ _g1674216753_))
                                  '()
                                  _L16643_)))
                   (cons (cons (cons (gx#datum->syntax '#f 'lambda)
                                     (cons (begin
                                             '#!void
                                             (foldr (lambda (_g1674316756_
                                                             _g1674416759_)
                                                      (cons _g1674316756_
                                                            _g1674416759_))
                                                    '()
                                                    _L16528_))
                                           (begin
                                             '#!void
                                             (foldr (lambda (_g1674516762_
                                                             _g1674616765_)
                                                      (cons _g1674516762_
                                                            _g1674616765_))
                                                    '()
                                                    _L16526_))))
                               (begin
                                 '#!void
                                 (foldr (lambda (_g1674716768_ _g1674816771_)
                                          (cons _g1674716768_ _g1674816771_))
                                        '()
                                        _L16643_)))
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
                                           (cons _L16577_ '()))
                                     '())))
                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (gx#stx-source _stx16389_))))))
                     _xarg1660016639_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1659516619_
                                             _target1659216613_
                                             '()))
                                          (_g1658916606_ _g1659016610_)))))
                                (_g1658916606_ _g1659016610_))
                            (_g1658916606_ _g1659016610_)))))
                (_g1658816774_
                 (gx#gentemps
                  (begin
                    '#!void
                    (foldr (lambda (_g1677716780_ _g1677816783_)
                             (cons _g1677716780_ _g1677816783_))
                           '()
                           _L16528_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1656316574_))))
                                         (_g1656116786_
                                          (gx#stx-identifier
                                           _L16529_
                                           _L16529_
                                           '"__impl")))
                                       (_g1639216429_ _g1639316433_)))
                                 _body1642316522_
                                 _arg1641416492_
                                 _hd1640416460_))))))
                (_loop1641816502_ _target1641516496_ '()))
              (_g1639216429_ _g1639316433_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1639216429_ _g1639316433_))
                                        (_g1639216429_ _g1639316433_)))))))
                    (_loop1640916472_ _target1640616466_ '()))
                  (_g1639216429_ _g1639316433_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1639216429_ _g1639316433_))
                                            (_g1639216429_ _g1639316433_))))
                                    (_g1639216429_ _g1639316433_))))
                            (_g1639216429_ _g1639316433_))))
                    (_g1639216429_ _g1639316433_)))))
        (_g1639116790_ _stx16389_)))))
