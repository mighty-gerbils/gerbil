(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<sugar>$<sugar:3>[:0:]#defsyntax|
    (lambda (_$stx15783_)
      (let* ((_g1578815827_
              (lambda (_g1578915823_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1578915823_)))
             (_g1578715883_
              (lambda (_g1578915831_)
                (if (gx#stx-pair? _g1578915831_)
                    (let ((_e1581315834_ (gx#syntax-e _g1578915831_)))
                      (let ((_hd1581415838_ (##car _e1581315834_))
                            (_tl1581515841_ (##cdr _e1581315834_)))
                        (if (gx#stx-pair? _tl1581515841_)
                            (let ((_e1581615844_ (gx#syntax-e _tl1581515841_)))
                              (let ((_hd1581715848_ (##car _e1581615844_))
                                    (_tl1581815851_ (##cdr _e1581615844_)))
                                (if (gx#stx-pair? _tl1581815851_)
                                    (let ((_e1581915854_
                                           (gx#syntax-e _tl1581815851_)))
                                      (let ((_hd1582015858_
                                             (##car _e1581915854_))
                                            (_tl1582115861_
                                             (##cdr _e1581915854_)))
                                        (if (gx#stx-null? _tl1582115861_)
                                            ((lambda (_L15864_ _L15866_)
                                               (if (gx#identifier? _L15866_)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'define-syntax)
                                                         (cons _L15866_
                                                               (cons _L15864_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1578815827_
                                                    _g1578915831_)))
                                             _hd1582015858_
                                             _hd1581715848_)
                                            (_g1578815827_ _g1578915831_))))
                                    (_g1578815827_ _g1578915831_))))
                            (_g1578815827_ _g1578915831_))))
                    (_g1578815827_ _g1578915831_))))
             (_g1578615981_
              (lambda (_g1578915887_)
                (if (gx#stx-pair? _g1578915887_)
                    (let ((_e1579315890_ (gx#syntax-e _g1578915887_)))
                      (let ((_hd1579415894_ (##car _e1579315890_))
                            (_tl1579515897_ (##cdr _e1579315890_)))
                        (if (gx#stx-pair? _tl1579515897_)
                            (let ((_e1579615900_ (gx#syntax-e _tl1579515897_)))
                              (let ((_hd1579715904_ (##car _e1579615900_))
                                    (_tl1579815907_ (##cdr _e1579615900_)))
                                (if (gx#stx-pair? _hd1579715904_)
                                    (let ((_e1579915910_
                                           (gx#syntax-e _hd1579715904_)))
                                      (let ((_hd1580015914_
                                             (##car _e1579915910_))
                                            (_tl1580115917_
                                             (##cdr _e1579915910_)))
                                        (if (gx#stx-pair/null? _tl1579815907_)
                                            (if (fx>= (gx#stx-length
                                                       _tl1579815907_)
                                                      '0)
                                                (let ((_g34584_
                                                       (gx#syntax-split-splice
                                                        _tl1579815907_
                                                        '0)))
                                                  (begin
                                                    (let ((_g34585_
                                                           (values-count
                                                            _g34584_)))
                                                      (if (not (fx= _g34585_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g34585_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1580215920_
                                                           (values-ref
                                                            _g34584_
                                                            0))
                                                          (_tl1580415923_
                                                           (values-ref
                                                            _g34584_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl1580415923_)
                                                          (letrec ((_loop1580515926_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1580315930_ _body1580915933_)
                              (if (gx#stx-pair? _hd1580315930_)
                                  (let ((_e1580615936_
                                         (gx#syntax-e _hd1580315930_)))
                                    (let ((_lp-hd1580715940_
                                           (##car _e1580615936_))
                                          (_lp-tl1580815943_
                                           (##cdr _e1580615936_)))
                                      (_loop1580515926_
                                       _lp-tl1580815943_
                                       (cons _lp-hd1580715940_
                                             _body1580915933_))))
                                  (let ((_body1581015946_
                                         (reverse _body1580915933_)))
                                    ((lambda (_L15950_ _L15952_ _L15953_)
                                       (if (gx#identifier? _L15953_)
                                           (cons (gx#datum->syntax
                                                  '#f
                                                  'define-syntax)
                                                 (cons _L15953_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'lambda)
                           (cons _L15952_
                                 (begin
                                   '#!void
                                   (foldr (lambda (_g1597215975_ _g1597315978_)
                                            (cons _g1597215975_ _g1597315978_))
                                          '()
                                          _L15950_))))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g1578715883_ _g1578915887_)))
                                     _body1581015946_
                                     _tl1580115917_
                                     _hd1580015914_))))))
                    (_loop1580515926_ _target1580215920_ '()))
                  (_g1578715883_ _g1578915887_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1578715883_ _g1578915887_))
                                            (_g1578715883_ _g1578915887_))))
                                    (_g1578715883_ _g1578915887_))))
                            (_g1578715883_ _g1578915887_))))
                    (_g1578715883_ _g1578915887_)))))
        (_g1578615981_ _$stx15783_))))
  (define |gerbil/core$<sugar>$<sugar:3>[:0:]#definline|
    (lambda (_stx15986_)
      (let* ((_g1598916026_
              (lambda (_g1599016022_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1599016022_)))
             (_g1598816387_
              (lambda (_g1599016030_)
                (if (gx#stx-pair? _g1599016030_)
                    (let ((_e1599416033_ (gx#syntax-e _g1599016030_)))
                      (let ((_hd1599516037_ (##car _e1599416033_))
                            (_tl1599616040_ (##cdr _e1599416033_)))
                        (if (gx#stx-pair? _tl1599616040_)
                            (let ((_e1599716043_ (gx#syntax-e _tl1599616040_)))
                              (let ((_hd1599816047_ (##car _e1599716043_))
                                    (_tl1599916050_ (##cdr _e1599716043_)))
                                (if (gx#stx-pair? _hd1599816047_)
                                    (let ((_e1600016053_
                                           (gx#syntax-e _hd1599816047_)))
                                      (let ((_hd1600116057_
                                             (##car _e1600016053_))
                                            (_tl1600216060_
                                             (##cdr _e1600016053_)))
                                        (if (gx#stx-pair/null? _tl1600216060_)
                                            (if (fx>= (gx#stx-length
                                                       _tl1600216060_)
                                                      '0)
                                                (let ((_g34586_
                                                       (gx#syntax-split-splice
                                                        _tl1600216060_
                                                        '0)))
                                                  (begin
                                                    (let ((_g34587_
                                                           (values-count
                                                            _g34586_)))
                                                      (if (not (fx= _g34587_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g34587_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1600316063_
                                                           (values-ref
                                                            _g34586_
                                                            0))
                                                          (_tl1600516066_
                                                           (values-ref
                                                            _g34586_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl1600516066_)
                                                          (letrec ((_loop1600616069_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1600416073_ _arg1601016076_)
                              (if (gx#stx-pair? _hd1600416073_)
                                  (let ((_e1600716079_
                                         (gx#syntax-e _hd1600416073_)))
                                    (let ((_lp-hd1600816083_
                                           (##car _e1600716079_))
                                          (_lp-tl1600916086_
                                           (##cdr _e1600716079_)))
                                      (_loop1600616069_
                                       _lp-tl1600916086_
                                       (cons _lp-hd1600816083_
                                             _arg1601016076_))))
                                  (let ((_arg1601116089_
                                         (reverse _arg1601016076_)))
                                    (if (gx#stx-pair/null? _tl1599916050_)
                                        (if (fx>= (gx#stx-length
                                                   _tl1599916050_)
                                                  '0)
                                            (let ((_g34588_
                                                   (gx#syntax-split-splice
                                                    _tl1599916050_
                                                    '0)))
                                              (begin
                                                (let ((_g34589_
                                                       (values-count
                                                        _g34588_)))
                                                  (if (not (fx= _g34589_ 2))
                                                      (error "Context expects 2 values"
                                                             _g34589_)))
                                                (let ((_target1601216093_
                                                       (values-ref _g34588_ 0))
                                                      (_tl1601416096_
                                                       (values-ref
                                                        _g34588_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl1601416096_)
                                                      (letrec ((_loop1601516099_
                                                                (lambda (_hd1601316103_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _body1601916106_)
                          (if (gx#stx-pair? _hd1601316103_)
                              (let ((_e1601616109_
                                     (gx#syntax-e _hd1601316103_)))
                                (let ((_lp-hd1601716113_ (##car _e1601616109_))
                                      (_lp-tl1601816116_
                                       (##cdr _e1601616109_)))
                                  (_loop1601516099_
                                   _lp-tl1601816116_
                                   (cons _lp-hd1601716113_ _body1601916106_))))
                              (let ((_body1602016119_
                                     (reverse _body1601916106_)))
                                ((lambda (_L16123_ _L16125_ _L16126_)
                                   (if (if (gx#identifier? _L16126_)
                                           (gx#identifier-list?
                                            (begin
                                              '#!void
                                              (foldr (lambda (_g1615016153_
                                                              _g1615116156_)
                                                       (cons _g1615016153_
                                                             _g1615116156_))
                                                     '()
                                                     _L16125_)))
                                           '#f)
                                       (let* ((_g1615916167_
                                               (lambda (_g1616016163_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1616016163_)))
                                              (_g1615816383_
                                               (lambda (_g1616016171_)
                                                 ((lambda (_L16174_)
                                                    (let ()
                                                      (let* ((_g1618616203_
                                                              (lambda (_g1618716199_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax"
                         _g1618716199_)))
                     (_g1618516371_
                      (lambda (_g1618716207_)
                        (if (gx#stx-pair/null? _g1618716207_)
                            (if (fx>= (gx#stx-length _g1618716207_) '0)
                                (let ((_g34590_
                                       (gx#syntax-split-splice
                                        _g1618716207_
                                        '0)))
                                  (begin
                                    (let ((_g34591_ (values-count _g34590_)))
                                      (if (not (fx= _g34591_ 2))
                                          (error "Context expects 2 values"
                                                 _g34591_)))
                                    (let ((_target1618916210_
                                           (values-ref _g34590_ 0))
                                          (_tl1619116213_
                                           (values-ref _g34590_ 1)))
                                      (if (gx#stx-null? _tl1619116213_)
                                          (letrec ((_loop1619216216_
                                                    (lambda (_hd1619016220_
                                                             _xarg1619616223_)
                                                      (if (gx#stx-pair?
                                                           _hd1619016220_)
                                                          (let ((_e1619316226_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _hd1619016220_)))
                    (let ((_lp-hd1619416230_ (##car _e1619316226_))
                          (_lp-tl1619516233_ (##cdr _e1619316226_)))
                      (_loop1619216216_
                       _lp-tl1619516233_
                       (cons _lp-hd1619416230_ _xarg1619616223_))))
                  (let ((_xarg1619716236_ (reverse _xarg1619616223_)))
                    ((lambda (_L16240_)
                       (let ()
                         (let* ((_g1625716265_
                                 (lambda (_g1625816261_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1625816261_)))
                                (_g1625616335_
                                 (lambda (_g1625816269_)
                                   ((lambda (_L16272_)
                                      (let ()
                                        (let* ((_g1628516293_
                                                (lambda (_g1628616289_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1628616289_)))
                                               (_g1628416315_
                                                (lambda (_g1628616297_)
                                                  ((lambda (_L16300_)
                                                     (let ()
                                                       (let ()
                                                         (gx#stx-wrap-source
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'begin)
                        (cons _L16300_ (cons _L16272_ '())))
                  (gx#stx-source _stx15986_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g1628616297_))))
                                          (_g1628416315_
                                           (gx#stx-wrap-source
                                            (cons (gx#datum->syntax '#f 'def)
                                                  (cons (cons _L16174_
                                                              (begin
                                                                '#!void
                                                                (foldr (lambda (_g1631816323_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g1631916326_)
                                 (cons _g1631816323_ _g1631916326_))
                               '()
                               _L16125_)))
                (begin
                  '#!void
                  (foldr (lambda (_g1632016329_ _g1632116332_)
                           (cons _g1632016329_ _g1632116332_))
                         '()
                         _L16123_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (gx#stx-source _stx15986_))))))
                                    _g1625816269_))))
                           (_g1625616335_
                            (gx#stx-wrap-source
                             (cons (gx#datum->syntax '#f 'defrules)
                                   (cons _L16126_
                                         (cons '()
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '_)
                         (begin
                           '#!void
                           (foldr (lambda (_g1633816347_ _g1633916350_)
                                    (cons _g1633816347_ _g1633916350_))
                                  '()
                                  _L16240_)))
                   (cons (cons (cons (gx#datum->syntax '#f 'lambda)
                                     (cons (begin
                                             '#!void
                                             (foldr (lambda (_g1634016353_
                                                             _g1634116356_)
                                                      (cons _g1634016353_
                                                            _g1634116356_))
                                                    '()
                                                    _L16125_))
                                           (begin
                                             '#!void
                                             (foldr (lambda (_g1634216359_
                                                             _g1634316362_)
                                                      (cons _g1634216359_
                                                            _g1634316362_))
                                                    '()
                                                    _L16123_))))
                               (begin
                                 '#!void
                                 (foldr (lambda (_g1634416365_ _g1634516368_)
                                          (cons _g1634416365_ _g1634516368_))
                                        '()
                                        _L16240_)))
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
                                           (cons _L16174_ '()))
                                     '())))
                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (gx#stx-source _stx15986_))))))
                     _xarg1619716236_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1619216216_
                                             _target1618916210_
                                             '()))
                                          (_g1618616203_ _g1618716207_)))))
                                (_g1618616203_ _g1618716207_))
                            (_g1618616203_ _g1618716207_)))))
                (_g1618516371_
                 (gx#gentemps
                  (begin
                    '#!void
                    (foldr (lambda (_g1637416377_ _g1637516380_)
                             (cons _g1637416377_ _g1637516380_))
                           '()
                           _L16125_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1616016171_))))
                                         (_g1615816383_
                                          (gx#stx-identifier
                                           _L16126_
                                           _L16126_
                                           '"__impl")))
                                       (_g1598916026_ _g1599016030_)))
                                 _body1602016119_
                                 _arg1601116089_
                                 _hd1600116057_))))))
                (_loop1601516099_ _target1601216093_ '()))
              (_g1598916026_ _g1599016030_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1598916026_ _g1599016030_))
                                        (_g1598916026_ _g1599016030_)))))))
                    (_loop1600616069_ _target1600316063_ '()))
                  (_g1598916026_ _g1599016030_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1598916026_ _g1599016030_))
                                            (_g1598916026_ _g1599016030_))))
                                    (_g1598916026_ _g1599016030_))))
                            (_g1598916026_ _g1599016030_))))
                    (_g1598916026_ _g1599016030_)))))
        (_g1598816387_ _stx15986_)))))
