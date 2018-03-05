(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<sugar>$<sugar:3>[:0:]#defsyntax|
    (lambda (_$stx15978_)
      (let* ((_g1598316022_
              (lambda (_g1598416018_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1598416018_)))
             (_g1598216078_
              (lambda (_g1598416026_)
                (if (gx#stx-pair? _g1598416026_)
                    (let ((_e1600816029_ (gx#syntax-e _g1598416026_)))
                      (let ((_hd1600916033_ (##car _e1600816029_))
                            (_tl1601016036_ (##cdr _e1600816029_)))
                        (if (gx#stx-pair? _tl1601016036_)
                            (let ((_e1601116039_ (gx#syntax-e _tl1601016036_)))
                              (let ((_hd1601216043_ (##car _e1601116039_))
                                    (_tl1601316046_ (##cdr _e1601116039_)))
                                (if (gx#stx-pair? _tl1601316046_)
                                    (let ((_e1601416049_
                                           (gx#syntax-e _tl1601316046_)))
                                      (let ((_hd1601516053_
                                             (##car _e1601416049_))
                                            (_tl1601616056_
                                             (##cdr _e1601416049_)))
                                        (if (gx#stx-null? _tl1601616056_)
                                            ((lambda (_L16059_ _L16061_)
                                               (if (gx#identifier? _L16061_)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'define-syntax)
                                                         (cons _L16061_
                                                               (cons _L16059_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1598316022_
                                                    _g1598416026_)))
                                             _hd1601516053_
                                             _hd1601216043_)
                                            (_g1598316022_ _g1598416026_))))
                                    (_g1598316022_ _g1598416026_))))
                            (_g1598316022_ _g1598416026_))))
                    (_g1598316022_ _g1598416026_))))
             (_g1598116176_
              (lambda (_g1598416082_)
                (if (gx#stx-pair? _g1598416082_)
                    (let ((_e1598816085_ (gx#syntax-e _g1598416082_)))
                      (let ((_hd1598916089_ (##car _e1598816085_))
                            (_tl1599016092_ (##cdr _e1598816085_)))
                        (if (gx#stx-pair? _tl1599016092_)
                            (let ((_e1599116095_ (gx#syntax-e _tl1599016092_)))
                              (let ((_hd1599216099_ (##car _e1599116095_))
                                    (_tl1599316102_ (##cdr _e1599116095_)))
                                (if (gx#stx-pair? _hd1599216099_)
                                    (let ((_e1599416105_
                                           (gx#syntax-e _hd1599216099_)))
                                      (let ((_hd1599516109_
                                             (##car _e1599416105_))
                                            (_tl1599616112_
                                             (##cdr _e1599416105_)))
                                        (if (gx#stx-pair/null? _tl1599316102_)
                                            (if (fx>= (gx#stx-length
                                                       _tl1599316102_)
                                                      '0)
                                                (let ((_g34779_
                                                       (gx#syntax-split-splice
                                                        _tl1599316102_
                                                        '0)))
                                                  (begin
                                                    (let ((_g34780_
                                                           (values-count
                                                            _g34779_)))
                                                      (if (not (fx= _g34780_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g34780_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1599716115_
                                                           (values-ref
                                                            _g34779_
                                                            0))
                                                          (_tl1599916118_
                                                           (values-ref
                                                            _g34779_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl1599916118_)
                                                          (letrec ((_loop1600016121_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1599816125_ _body1600416128_)
                              (if (gx#stx-pair? _hd1599816125_)
                                  (let ((_e1600116131_
                                         (gx#syntax-e _hd1599816125_)))
                                    (let ((_lp-hd1600216135_
                                           (##car _e1600116131_))
                                          (_lp-tl1600316138_
                                           (##cdr _e1600116131_)))
                                      (_loop1600016121_
                                       _lp-tl1600316138_
                                       (cons _lp-hd1600216135_
                                             _body1600416128_))))
                                  (let ((_body1600516141_
                                         (reverse _body1600416128_)))
                                    ((lambda (_L16145_ _L16147_ _L16148_)
                                       (if (gx#identifier? _L16148_)
                                           (cons (gx#datum->syntax
                                                  '#f
                                                  'define-syntax)
                                                 (cons _L16148_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'lambda)
                           (cons _L16147_
                                 (begin
                                   '#!void
                                   (foldr (lambda (_g1616716170_ _g1616816173_)
                                            (cons _g1616716170_ _g1616816173_))
                                          '()
                                          _L16145_))))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g1598216078_ _g1598416082_)))
                                     _body1600516141_
                                     _tl1599616112_
                                     _hd1599516109_))))))
                    (_loop1600016121_ _target1599716115_ '()))
                  (_g1598216078_ _g1598416082_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1598216078_ _g1598416082_))
                                            (_g1598216078_ _g1598416082_))))
                                    (_g1598216078_ _g1598416082_))))
                            (_g1598216078_ _g1598416082_))))
                    (_g1598216078_ _g1598416082_)))))
        (_g1598116176_ _$stx15978_))))
  (define |gerbil/core$<sugar>$<sugar:3>[:0:]#definline|
    (lambda (_stx16181_)
      (let* ((_g1618416221_
              (lambda (_g1618516217_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1618516217_)))
             (_g1618316582_
              (lambda (_g1618516225_)
                (if (gx#stx-pair? _g1618516225_)
                    (let ((_e1618916228_ (gx#syntax-e _g1618516225_)))
                      (let ((_hd1619016232_ (##car _e1618916228_))
                            (_tl1619116235_ (##cdr _e1618916228_)))
                        (if (gx#stx-pair? _tl1619116235_)
                            (let ((_e1619216238_ (gx#syntax-e _tl1619116235_)))
                              (let ((_hd1619316242_ (##car _e1619216238_))
                                    (_tl1619416245_ (##cdr _e1619216238_)))
                                (if (gx#stx-pair? _hd1619316242_)
                                    (let ((_e1619516248_
                                           (gx#syntax-e _hd1619316242_)))
                                      (let ((_hd1619616252_
                                             (##car _e1619516248_))
                                            (_tl1619716255_
                                             (##cdr _e1619516248_)))
                                        (if (gx#stx-pair/null? _tl1619716255_)
                                            (if (fx>= (gx#stx-length
                                                       _tl1619716255_)
                                                      '0)
                                                (let ((_g34781_
                                                       (gx#syntax-split-splice
                                                        _tl1619716255_
                                                        '0)))
                                                  (begin
                                                    (let ((_g34782_
                                                           (values-count
                                                            _g34781_)))
                                                      (if (not (fx= _g34782_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g34782_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1619816258_
                                                           (values-ref
                                                            _g34781_
                                                            0))
                                                          (_tl1620016261_
                                                           (values-ref
                                                            _g34781_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl1620016261_)
                                                          (letrec ((_loop1620116264_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1619916268_ _arg1620516271_)
                              (if (gx#stx-pair? _hd1619916268_)
                                  (let ((_e1620216274_
                                         (gx#syntax-e _hd1619916268_)))
                                    (let ((_lp-hd1620316278_
                                           (##car _e1620216274_))
                                          (_lp-tl1620416281_
                                           (##cdr _e1620216274_)))
                                      (_loop1620116264_
                                       _lp-tl1620416281_
                                       (cons _lp-hd1620316278_
                                             _arg1620516271_))))
                                  (let ((_arg1620616284_
                                         (reverse _arg1620516271_)))
                                    (if (gx#stx-pair/null? _tl1619416245_)
                                        (if (fx>= (gx#stx-length
                                                   _tl1619416245_)
                                                  '0)
                                            (let ((_g34783_
                                                   (gx#syntax-split-splice
                                                    _tl1619416245_
                                                    '0)))
                                              (begin
                                                (let ((_g34784_
                                                       (values-count
                                                        _g34783_)))
                                                  (if (not (fx= _g34784_ 2))
                                                      (error "Context expects 2 values"
                                                             _g34784_)))
                                                (let ((_target1620716288_
                                                       (values-ref _g34783_ 0))
                                                      (_tl1620916291_
                                                       (values-ref
                                                        _g34783_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl1620916291_)
                                                      (letrec ((_loop1621016294_
                                                                (lambda (_hd1620816298_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _body1621416301_)
                          (if (gx#stx-pair? _hd1620816298_)
                              (let ((_e1621116304_
                                     (gx#syntax-e _hd1620816298_)))
                                (let ((_lp-hd1621216308_ (##car _e1621116304_))
                                      (_lp-tl1621316311_
                                       (##cdr _e1621116304_)))
                                  (_loop1621016294_
                                   _lp-tl1621316311_
                                   (cons _lp-hd1621216308_ _body1621416301_))))
                              (let ((_body1621516314_
                                     (reverse _body1621416301_)))
                                ((lambda (_L16318_ _L16320_ _L16321_)
                                   (if (if (gx#identifier? _L16321_)
                                           (gx#identifier-list?
                                            (begin
                                              '#!void
                                              (foldr (lambda (_g1634516348_
                                                              _g1634616351_)
                                                       (cons _g1634516348_
                                                             _g1634616351_))
                                                     '()
                                                     _L16320_)))
                                           '#f)
                                       (let* ((_g1635416362_
                                               (lambda (_g1635516358_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1635516358_)))
                                              (_g1635316578_
                                               (lambda (_g1635516366_)
                                                 ((lambda (_L16369_)
                                                    (let ()
                                                      (let* ((_g1638116398_
                                                              (lambda (_g1638216394_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax"
                         _g1638216394_)))
                     (_g1638016566_
                      (lambda (_g1638216402_)
                        (if (gx#stx-pair/null? _g1638216402_)
                            (if (fx>= (gx#stx-length _g1638216402_) '0)
                                (let ((_g34785_
                                       (gx#syntax-split-splice
                                        _g1638216402_
                                        '0)))
                                  (begin
                                    (let ((_g34786_ (values-count _g34785_)))
                                      (if (not (fx= _g34786_ 2))
                                          (error "Context expects 2 values"
                                                 _g34786_)))
                                    (let ((_target1638416405_
                                           (values-ref _g34785_ 0))
                                          (_tl1638616408_
                                           (values-ref _g34785_ 1)))
                                      (if (gx#stx-null? _tl1638616408_)
                                          (letrec ((_loop1638716411_
                                                    (lambda (_hd1638516415_
                                                             _xarg1639116418_)
                                                      (if (gx#stx-pair?
                                                           _hd1638516415_)
                                                          (let ((_e1638816421_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _hd1638516415_)))
                    (let ((_lp-hd1638916425_ (##car _e1638816421_))
                          (_lp-tl1639016428_ (##cdr _e1638816421_)))
                      (_loop1638716411_
                       _lp-tl1639016428_
                       (cons _lp-hd1638916425_ _xarg1639116418_))))
                  (let ((_xarg1639216431_ (reverse _xarg1639116418_)))
                    ((lambda (_L16435_)
                       (let ()
                         (let* ((_g1645216460_
                                 (lambda (_g1645316456_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1645316456_)))
                                (_g1645116530_
                                 (lambda (_g1645316464_)
                                   ((lambda (_L16467_)
                                      (let ()
                                        (let* ((_g1648016488_
                                                (lambda (_g1648116484_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1648116484_)))
                                               (_g1647916510_
                                                (lambda (_g1648116492_)
                                                  ((lambda (_L16495_)
                                                     (let ()
                                                       (let ()
                                                         (gx#stx-wrap-source
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'begin)
                        (cons _L16495_ (cons _L16467_ '())))
                  (gx#stx-source _stx16181_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g1648116492_))))
                                          (_g1647916510_
                                           (gx#stx-wrap-source
                                            (cons (gx#datum->syntax '#f 'def)
                                                  (cons (cons _L16369_
                                                              (begin
                                                                '#!void
                                                                (foldr (lambda (_g1651316518_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g1651416521_)
                                 (cons _g1651316518_ _g1651416521_))
                               '()
                               _L16320_)))
                (begin
                  '#!void
                  (foldr (lambda (_g1651516524_ _g1651616527_)
                           (cons _g1651516524_ _g1651616527_))
                         '()
                         _L16318_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (gx#stx-source _stx16181_))))))
                                    _g1645316464_))))
                           (_g1645116530_
                            (gx#stx-wrap-source
                             (cons (gx#datum->syntax '#f 'defrules)
                                   (cons _L16321_
                                         (cons '()
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '_)
                         (begin
                           '#!void
                           (foldr (lambda (_g1653316542_ _g1653416545_)
                                    (cons _g1653316542_ _g1653416545_))
                                  '()
                                  _L16435_)))
                   (cons (cons (cons (gx#datum->syntax '#f 'lambda)
                                     (cons (begin
                                             '#!void
                                             (foldr (lambda (_g1653516548_
                                                             _g1653616551_)
                                                      (cons _g1653516548_
                                                            _g1653616551_))
                                                    '()
                                                    _L16320_))
                                           (begin
                                             '#!void
                                             (foldr (lambda (_g1653716554_
                                                             _g1653816557_)
                                                      (cons _g1653716554_
                                                            _g1653816557_))
                                                    '()
                                                    _L16318_))))
                               (begin
                                 '#!void
                                 (foldr (lambda (_g1653916560_ _g1654016563_)
                                          (cons _g1653916560_ _g1654016563_))
                                        '()
                                        _L16435_)))
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
                                           (cons _L16369_ '()))
                                     '())))
                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (gx#stx-source _stx16181_))))))
                     _xarg1639216431_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1638716411_
                                             _target1638416405_
                                             '()))
                                          (_g1638116398_ _g1638216402_)))))
                                (_g1638116398_ _g1638216402_))
                            (_g1638116398_ _g1638216402_)))))
                (_g1638016566_
                 (gx#gentemps
                  (begin
                    '#!void
                    (foldr (lambda (_g1656916572_ _g1657016575_)
                             (cons _g1656916572_ _g1657016575_))
                           '()
                           _L16320_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1635516366_))))
                                         (_g1635316578_
                                          (gx#stx-identifier
                                           _L16321_
                                           _L16321_
                                           '"__impl")))
                                       (_g1618416221_ _g1618516225_)))
                                 _body1621516314_
                                 _arg1620616284_
                                 _hd1619616252_))))))
                (_loop1621016294_ _target1620716288_ '()))
              (_g1618416221_ _g1618516225_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1618416221_ _g1618516225_))
                                        (_g1618416221_ _g1618516225_)))))))
                    (_loop1620116264_ _target1619816258_ '()))
                  (_g1618416221_ _g1618516225_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1618416221_ _g1618516225_))
                                            (_g1618416221_ _g1618516225_))))
                                    (_g1618416221_ _g1618516225_))))
                            (_g1618416221_ _g1618516225_))))
                    (_g1618416221_ _g1618516225_)))))
        (_g1618316582_ _stx16181_)))))
