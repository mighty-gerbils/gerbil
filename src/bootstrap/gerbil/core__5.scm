(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<sugar>$<sugar:3>[:0:]#defsyntax|
    (lambda (_$stx15973_)
      (let* ((_g1597816017_
              (lambda (_g1597916013_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1597916013_)))
             (_g1597716073_
              (lambda (_g1597916021_)
                (if (gx#stx-pair? _g1597916021_)
                    (let ((_e1600316024_ (gx#syntax-e _g1597916021_)))
                      (let ((_hd1600416028_ (##car _e1600316024_))
                            (_tl1600516031_ (##cdr _e1600316024_)))
                        (if (gx#stx-pair? _tl1600516031_)
                            (let ((_e1600616034_ (gx#syntax-e _tl1600516031_)))
                              (let ((_hd1600716038_ (##car _e1600616034_))
                                    (_tl1600816041_ (##cdr _e1600616034_)))
                                (if (gx#stx-pair? _tl1600816041_)
                                    (let ((_e1600916044_
                                           (gx#syntax-e _tl1600816041_)))
                                      (let ((_hd1601016048_
                                             (##car _e1600916044_))
                                            (_tl1601116051_
                                             (##cdr _e1600916044_)))
                                        (if (gx#stx-null? _tl1601116051_)
                                            ((lambda (_L16054_ _L16056_)
                                               (if (gx#identifier? _L16056_)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'define-syntax)
                                                         (cons _L16056_
                                                               (cons _L16054_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1597816017_
                                                    _g1597916021_)))
                                             _hd1601016048_
                                             _hd1600716038_)
                                            (_g1597816017_ _g1597916021_))))
                                    (_g1597816017_ _g1597916021_))))
                            (_g1597816017_ _g1597916021_))))
                    (_g1597816017_ _g1597916021_))))
             (_g1597616171_
              (lambda (_g1597916077_)
                (if (gx#stx-pair? _g1597916077_)
                    (let ((_e1598316080_ (gx#syntax-e _g1597916077_)))
                      (let ((_hd1598416084_ (##car _e1598316080_))
                            (_tl1598516087_ (##cdr _e1598316080_)))
                        (if (gx#stx-pair? _tl1598516087_)
                            (let ((_e1598616090_ (gx#syntax-e _tl1598516087_)))
                              (let ((_hd1598716094_ (##car _e1598616090_))
                                    (_tl1598816097_ (##cdr _e1598616090_)))
                                (if (gx#stx-pair? _hd1598716094_)
                                    (let ((_e1598916100_
                                           (gx#syntax-e _hd1598716094_)))
                                      (let ((_hd1599016104_
                                             (##car _e1598916100_))
                                            (_tl1599116107_
                                             (##cdr _e1598916100_)))
                                        (if (gx#stx-pair/null? _tl1598816097_)
                                            (if (fx>= (gx#stx-length
                                                       _tl1598816097_)
                                                      '0)
                                                (let ((_g34774_
                                                       (gx#syntax-split-splice
                                                        _tl1598816097_
                                                        '0)))
                                                  (begin
                                                    (let ((_g34775_
                                                           (values-count
                                                            _g34774_)))
                                                      (if (not (fx= _g34775_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g34775_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1599216110_
                                                           (values-ref
                                                            _g34774_
                                                            0))
                                                          (_tl1599416113_
                                                           (values-ref
                                                            _g34774_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl1599416113_)
                                                          (letrec ((_loop1599516116_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1599316120_ _body1599916123_)
                              (if (gx#stx-pair? _hd1599316120_)
                                  (let ((_e1599616126_
                                         (gx#syntax-e _hd1599316120_)))
                                    (let ((_lp-hd1599716130_
                                           (##car _e1599616126_))
                                          (_lp-tl1599816133_
                                           (##cdr _e1599616126_)))
                                      (_loop1599516116_
                                       _lp-tl1599816133_
                                       (cons _lp-hd1599716130_
                                             _body1599916123_))))
                                  (let ((_body1600016136_
                                         (reverse _body1599916123_)))
                                    ((lambda (_L16140_ _L16142_ _L16143_)
                                       (if (gx#identifier? _L16143_)
                                           (cons (gx#datum->syntax
                                                  '#f
                                                  'define-syntax)
                                                 (cons _L16143_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'lambda)
                           (cons _L16142_
                                 (begin
                                   '#!void
                                   (foldr (lambda (_g1616216165_ _g1616316168_)
                                            (cons _g1616216165_ _g1616316168_))
                                          '()
                                          _L16140_))))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g1597716073_ _g1597916077_)))
                                     _body1600016136_
                                     _tl1599116107_
                                     _hd1599016104_))))))
                    (_loop1599516116_ _target1599216110_ '()))
                  (_g1597716073_ _g1597916077_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1597716073_ _g1597916077_))
                                            (_g1597716073_ _g1597916077_))))
                                    (_g1597716073_ _g1597916077_))))
                            (_g1597716073_ _g1597916077_))))
                    (_g1597716073_ _g1597916077_)))))
        (_g1597616171_ _$stx15973_))))
  (define |gerbil/core$<sugar>$<sugar:3>[:0:]#definline|
    (lambda (_stx16176_)
      (let* ((_g1617916216_
              (lambda (_g1618016212_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1618016212_)))
             (_g1617816577_
              (lambda (_g1618016220_)
                (if (gx#stx-pair? _g1618016220_)
                    (let ((_e1618416223_ (gx#syntax-e _g1618016220_)))
                      (let ((_hd1618516227_ (##car _e1618416223_))
                            (_tl1618616230_ (##cdr _e1618416223_)))
                        (if (gx#stx-pair? _tl1618616230_)
                            (let ((_e1618716233_ (gx#syntax-e _tl1618616230_)))
                              (let ((_hd1618816237_ (##car _e1618716233_))
                                    (_tl1618916240_ (##cdr _e1618716233_)))
                                (if (gx#stx-pair? _hd1618816237_)
                                    (let ((_e1619016243_
                                           (gx#syntax-e _hd1618816237_)))
                                      (let ((_hd1619116247_
                                             (##car _e1619016243_))
                                            (_tl1619216250_
                                             (##cdr _e1619016243_)))
                                        (if (gx#stx-pair/null? _tl1619216250_)
                                            (if (fx>= (gx#stx-length
                                                       _tl1619216250_)
                                                      '0)
                                                (let ((_g34776_
                                                       (gx#syntax-split-splice
                                                        _tl1619216250_
                                                        '0)))
                                                  (begin
                                                    (let ((_g34777_
                                                           (values-count
                                                            _g34776_)))
                                                      (if (not (fx= _g34777_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g34777_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1619316253_
                                                           (values-ref
                                                            _g34776_
                                                            0))
                                                          (_tl1619516256_
                                                           (values-ref
                                                            _g34776_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl1619516256_)
                                                          (letrec ((_loop1619616259_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1619416263_ _arg1620016266_)
                              (if (gx#stx-pair? _hd1619416263_)
                                  (let ((_e1619716269_
                                         (gx#syntax-e _hd1619416263_)))
                                    (let ((_lp-hd1619816273_
                                           (##car _e1619716269_))
                                          (_lp-tl1619916276_
                                           (##cdr _e1619716269_)))
                                      (_loop1619616259_
                                       _lp-tl1619916276_
                                       (cons _lp-hd1619816273_
                                             _arg1620016266_))))
                                  (let ((_arg1620116279_
                                         (reverse _arg1620016266_)))
                                    (if (gx#stx-pair/null? _tl1618916240_)
                                        (if (fx>= (gx#stx-length
                                                   _tl1618916240_)
                                                  '0)
                                            (let ((_g34778_
                                                   (gx#syntax-split-splice
                                                    _tl1618916240_
                                                    '0)))
                                              (begin
                                                (let ((_g34779_
                                                       (values-count
                                                        _g34778_)))
                                                  (if (not (fx= _g34779_ 2))
                                                      (error "Context expects 2 values"
                                                             _g34779_)))
                                                (let ((_target1620216283_
                                                       (values-ref _g34778_ 0))
                                                      (_tl1620416286_
                                                       (values-ref
                                                        _g34778_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl1620416286_)
                                                      (letrec ((_loop1620516289_
                                                                (lambda (_hd1620316293_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _body1620916296_)
                          (if (gx#stx-pair? _hd1620316293_)
                              (let ((_e1620616299_
                                     (gx#syntax-e _hd1620316293_)))
                                (let ((_lp-hd1620716303_ (##car _e1620616299_))
                                      (_lp-tl1620816306_
                                       (##cdr _e1620616299_)))
                                  (_loop1620516289_
                                   _lp-tl1620816306_
                                   (cons _lp-hd1620716303_ _body1620916296_))))
                              (let ((_body1621016309_
                                     (reverse _body1620916296_)))
                                ((lambda (_L16313_ _L16315_ _L16316_)
                                   (if (if (gx#identifier? _L16316_)
                                           (gx#identifier-list?
                                            (begin
                                              '#!void
                                              (foldr (lambda (_g1634016343_
                                                              _g1634116346_)
                                                       (cons _g1634016343_
                                                             _g1634116346_))
                                                     '()
                                                     _L16315_)))
                                           '#f)
                                       (let* ((_g1634916357_
                                               (lambda (_g1635016353_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1635016353_)))
                                              (_g1634816573_
                                               (lambda (_g1635016361_)
                                                 ((lambda (_L16364_)
                                                    (let ()
                                                      (let* ((_g1637616393_
                                                              (lambda (_g1637716389_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax"
                         _g1637716389_)))
                     (_g1637516561_
                      (lambda (_g1637716397_)
                        (if (gx#stx-pair/null? _g1637716397_)
                            (if (fx>= (gx#stx-length _g1637716397_) '0)
                                (let ((_g34780_
                                       (gx#syntax-split-splice
                                        _g1637716397_
                                        '0)))
                                  (begin
                                    (let ((_g34781_ (values-count _g34780_)))
                                      (if (not (fx= _g34781_ 2))
                                          (error "Context expects 2 values"
                                                 _g34781_)))
                                    (let ((_target1637916400_
                                           (values-ref _g34780_ 0))
                                          (_tl1638116403_
                                           (values-ref _g34780_ 1)))
                                      (if (gx#stx-null? _tl1638116403_)
                                          (letrec ((_loop1638216406_
                                                    (lambda (_hd1638016410_
                                                             _xarg1638616413_)
                                                      (if (gx#stx-pair?
                                                           _hd1638016410_)
                                                          (let ((_e1638316416_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _hd1638016410_)))
                    (let ((_lp-hd1638416420_ (##car _e1638316416_))
                          (_lp-tl1638516423_ (##cdr _e1638316416_)))
                      (_loop1638216406_
                       _lp-tl1638516423_
                       (cons _lp-hd1638416420_ _xarg1638616413_))))
                  (let ((_xarg1638716426_ (reverse _xarg1638616413_)))
                    ((lambda (_L16430_)
                       (let ()
                         (let* ((_g1644716455_
                                 (lambda (_g1644816451_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1644816451_)))
                                (_g1644616525_
                                 (lambda (_g1644816459_)
                                   ((lambda (_L16462_)
                                      (let ()
                                        (let* ((_g1647516483_
                                                (lambda (_g1647616479_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1647616479_)))
                                               (_g1647416505_
                                                (lambda (_g1647616487_)
                                                  ((lambda (_L16490_)
                                                     (let ()
                                                       (let ()
                                                         (gx#stx-wrap-source
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'begin)
                        (cons _L16490_ (cons _L16462_ '())))
                  (gx#stx-source _stx16176_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g1647616487_))))
                                          (_g1647416505_
                                           (gx#stx-wrap-source
                                            (cons (gx#datum->syntax '#f 'def)
                                                  (cons (cons _L16364_
                                                              (begin
                                                                '#!void
                                                                (foldr (lambda (_g1650816513_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g1650916516_)
                                 (cons _g1650816513_ _g1650916516_))
                               '()
                               _L16315_)))
                (begin
                  '#!void
                  (foldr (lambda (_g1651016519_ _g1651116522_)
                           (cons _g1651016519_ _g1651116522_))
                         '()
                         _L16313_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (gx#stx-source _stx16176_))))))
                                    _g1644816459_))))
                           (_g1644616525_
                            (gx#stx-wrap-source
                             (cons (gx#datum->syntax '#f 'defrules)
                                   (cons _L16316_
                                         (cons '()
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '_)
                         (begin
                           '#!void
                           (foldr (lambda (_g1652816537_ _g1652916540_)
                                    (cons _g1652816537_ _g1652916540_))
                                  '()
                                  _L16430_)))
                   (cons (cons (cons (gx#datum->syntax '#f 'lambda)
                                     (cons (begin
                                             '#!void
                                             (foldr (lambda (_g1653016543_
                                                             _g1653116546_)
                                                      (cons _g1653016543_
                                                            _g1653116546_))
                                                    '()
                                                    _L16315_))
                                           (begin
                                             '#!void
                                             (foldr (lambda (_g1653216549_
                                                             _g1653316552_)
                                                      (cons _g1653216549_
                                                            _g1653316552_))
                                                    '()
                                                    _L16313_))))
                               (begin
                                 '#!void
                                 (foldr (lambda (_g1653416555_ _g1653516558_)
                                          (cons _g1653416555_ _g1653516558_))
                                        '()
                                        _L16430_)))
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
                                           (cons _L16364_ '()))
                                     '())))
                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (gx#stx-source _stx16176_))))))
                     _xarg1638716426_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1638216406_
                                             _target1637916400_
                                             '()))
                                          (_g1637616393_ _g1637716397_)))))
                                (_g1637616393_ _g1637716397_))
                            (_g1637616393_ _g1637716397_)))))
                (_g1637516561_
                 (gx#gentemps
                  (begin
                    '#!void
                    (foldr (lambda (_g1656416567_ _g1656516570_)
                             (cons _g1656416567_ _g1656516570_))
                           '()
                           _L16315_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1635016361_))))
                                         (_g1634816573_
                                          (gx#stx-identifier
                                           _L16316_
                                           _L16316_
                                           '"__impl")))
                                       (_g1617916216_ _g1618016220_)))
                                 _body1621016309_
                                 _arg1620116279_
                                 _hd1619116247_))))))
                (_loop1620516289_ _target1620216283_ '()))
              (_g1617916216_ _g1618016220_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1617916216_ _g1618016220_))
                                        (_g1617916216_ _g1618016220_)))))))
                    (_loop1619616259_ _target1619316253_ '()))
                  (_g1617916216_ _g1618016220_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1617916216_ _g1618016220_))
                                            (_g1617916216_ _g1618016220_))))
                                    (_g1617916216_ _g1618016220_))))
                            (_g1617916216_ _g1618016220_))))
                    (_g1617916216_ _g1618016220_)))))
        (_g1617816577_ _stx16176_)))))
