(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gx[1]#_g2674_| (gx#core-quote-syntax 'error::t))
  (define |gx[1]#_g2675_| (gx#core-quote-syntax 'AST::t))
  (define |gx[1]#_g2678_| (gx#core-quote-syntax 'else))
  (begin
    (define |gx[:0:]#<error>|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-info|
       'runtime-identifier:
       |gx[1]#_g2674_|))
    (define |gx[:0:]#AST|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-info|
       'runtime-identifier:
       |gx[1]#_g2675_|))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx326_)
        (let ((_generate329_
               (lambda (_tgt481_ _kws483_ _clauses484_)
                 (let ((_generate1488_
                        (lambda (_where874_
                                 _hd876_
                                 _fender877_
                                 _body878_
                                 _E879_)
                          (letrec ((_recur881_
                                    (lambda (_hd884_ _tgt886_ _K887_)
                                      (let ((_g890902_
                                             (lambda (_g891898_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g891898_))))
                                        (let ((_g8891169_
                                               (lambda (_g891906_)
                                                 ((lambda ()
                                                    (if (gx#identifier?
                                                         _hd884_)
                                                        (if (gx#underscore?
                                                             _hd884_)
                                                            _K887_
                                                            (if (find (lambda (_g912914_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (gx#bound-identifier=? _g912914_ _hd884_))
                              _kws483_)
                        (let ((_g918933_
                               (lambda (_g919929_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g919929_))))
                          (let ((_g917984_
                                 (lambda (_g919937_)
                                   (if (gx#stx-pair? _g919937_)
                                       (let ((_e922940_
                                              (gx#syntax-e _g919937_)))
                                         (let ((_hd923944_ (##car _e922940_))
                                               (_tl924947_ (##cdr _e922940_)))
                                           (if (gx#stx-pair? _tl924947_)
                                               (let ((_e925950_
                                                      (gx#syntax-e
                                                       _tl924947_)))
                                                 (let ((_hd926954_
                                                        (##car _e925950_))
                                                       (_tl927957_
                                                        (##cdr _e925950_)))
                                                   (if (gx#stx-null?
                                                        _tl927957_)
                                                       ((lambda (_L960_ _L962_)
                                                          (let ()
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'if)
                          (cons (cons (gx#datum->syntax '#f 'and)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'identifier?)
                                                  (cons _L962_ '()))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'core-identifier=?)
                                                        (cons _L962_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _L960_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (cons _K887_ (cons _E879_ '()))))))
                _hd926954_
                _hd923944_)
               (_g918933_ _g919937_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g918933_ _g919937_))))
                                       (_g918933_ _g919937_)))))
                            (_g917984_ (list _tgt886_ _hd884_))))
                        (let ((_g9881003_
                               (lambda (_g989999_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g989999_))))
                          (let ((_g9871047_
                                 (lambda (_g9891007_)
                                   (if (gx#stx-pair? _g9891007_)
                                       (let ((_e9921010_
                                              (gx#syntax-e _g9891007_)))
                                         (let ((_hd9931014_ (##car _e9921010_))
                                               (_tl9941017_
                                                (##cdr _e9921010_)))
                                           (if (gx#stx-pair? _tl9941017_)
                                               (let ((_e9951020_
                                                      (gx#syntax-e
                                                       _tl9941017_)))
                                                 (let ((_hd9961024_
                                                        (##car _e9951020_))
                                                       (_tl9971027_
                                                        (##cdr _e9951020_)))
                                                   (if (gx#stx-null?
                                                        _tl9971027_)
                                                       ((lambda (_L1030_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L1032_)
                  (let ()
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _L1030_ (cons _L1032_ '())) '())
                                (cons _K887_ '())))))
                _hd9961024_
                _hd9931014_)
               (_g9881003_ _g9891007_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g9881003_ _g9891007_))))
                                       (_g9881003_ _g9891007_)))))
                            (_g9871047_ (list _tgt886_ _hd884_))))))
                (if (gx#stx-null? _hd884_)
                    (let ((_g10511059_
                           (lambda (_g10521055_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g10521055_))))
                      (let ((_g10501077_
                             (lambda (_g10521063_)
                               ((lambda (_L1066_)
                                  (let ()
                                    (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'stx-null?)
                                                      (cons _L1066_ '()))
                                                (cons _K887_
                                                      (cons _E879_ '()))))))
                                _g10521063_))))
                        (_g10501077_ _tgt886_)))
                    (if (gx#stx-datum? _hd884_)
                        (let ((_g10811100_
                               (lambda (_g10821096_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g10821096_))))
                          (let ((_g10801158_
                                 (lambda (_g10821104_)
                                   (if (gx#stx-pair? _g10821104_)
                                       (let ((_e10861107_
                                              (gx#syntax-e _g10821104_)))
                                         (let ((_hd10871111_
                                                (##car _e10861107_))
                                               (_tl10881114_
                                                (##cdr _e10861107_)))
                                           (if (gx#stx-pair? _tl10881114_)
                                               (let ((_e10891117_
                                                      (gx#syntax-e
                                                       _tl10881114_)))
                                                 (let ((_hd10901121_
                                                        (##car _e10891117_))
                                                       (_tl10911124_
                                                        (##cdr _e10891117_)))
                                                   (if (gx#stx-pair?
                                                        _tl10911124_)
                                                       (let ((_e10921127_
                                                              (gx#syntax-e
                                                               _tl10911124_)))
                                                         (let ((_hd10931131_
                                                                (##car _e10921127_))
                                                               (_tl10941134_
                                                                (##cdr _e10921127_)))
                                                           (if (gx#stx-null?
                                                                _tl10941134_)
                                                               ((lambda (_L1137_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L1139_
                                 _L1140_)
                          (let ()
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons _L1137_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-e)
                                                          (cons _L1140_ '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _L1139_ '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons _K887_ (cons _E879_ '()))))))
                        _hd10931131_
                        _hd10901121_
                        _hd10871111_)
                       (_g10811100_ _g10821104_))))
               (_g10811100_ _g10821104_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g10811100_ _g10821104_))))
                                       (_g10811100_ _g10821104_)))))
                            (_g10801158_
                             (list _tgt886_
                                   _hd884_
                                   (let ((_e1162_ (gx#stx-e _hd884_)))
                                     (if (let ((_$e1165_ (keyword? _e1162_)))
                                           (if _$e1165_
                                               _$e1165_
                                               (immediate? _e1162_)))
                                         (gx#datum->syntax '#f 'eq?)
                                         (if (number? _e1162_)
                                             (gx#datum->syntax '#f 'eqv?)
                                             (gx#datum->syntax
                                              '#f
                                              'equal?))))))))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _stx326_
                         _where874_
                         _hd884_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ((_g8881392_
                                                 (lambda (_g8911173_)
                                                   (if (gx#stx-pair?
                                                        _g8911173_)
                                                       (let ((_e8941176_
                                                              (gx#syntax-e
                                                               _g8911173_)))
                                                         (let ((_hd8951180_
                                                                (##car _e8941176_))
                                                               (_tl8961183_
                                                                (##cdr _e8941176_)))
                                                           ((lambda (_L1186_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L1188_)
                      (let ((_g11991207_
                             (lambda (_g12001203_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g12001203_))))
                        (let ((_g11981388_
                               (lambda (_g12001211_)
                                 ((lambda (_L1214_)
                                    (let ()
                                      (let ((_g12261234_
                                             (lambda (_g12271230_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g12271230_))))
                                        (let ((_g12251384_
                                               (lambda (_g12271238_)
                                                 ((lambda (_L1241_)
                                                    (let ()
                                                      (let ((_g12541262_
                                                             (lambda (_g12551258_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g12551258_))))
                                                        (let ((_g12531380_
                                                               (lambda (_g12551266_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda (_L1269_)
                            (let ()
                              (let ((_g12821290_
                                     (lambda (_g12831286_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g12831286_))))
                                (let ((_g12811376_
                                       (lambda (_g12831294_)
                                         ((lambda (_L1297_)
                                            (let ()
                                              (let ((_g13101318_
                                                     (lambda (_g13111314_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g13111314_))))
                                                (let ((_g13091372_
                                                       (lambda (_g13111322_)
                                                         ((lambda (_L1325_)
                                                            (let ()
                                                              (let ((_g13381346_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g13391342_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g13391342_))))
                        (let ((_g13371368_
                               (lambda (_g13391350_)
                                 ((lambda (_L1353_)
                                    (let ()
                                      (let ()
                                        (cons (gx#datum->syntax '#f 'if)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-pair?)
                                                          (cons _L1214_ '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'let)
                        (cons (cons (cons _L1241_
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'syntax-e)
                                                      (cons _L1214_ '()))
                                                '()))
                                    '())
                              (cons (cons (gx#datum->syntax '#f 'let)
                                          (cons (cons (cons _L1269_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 '##car)
                                (cons _L1241_ '()))
                          '()))
              (cons (cons _L1297_
                          (cons (cons (gx#datum->syntax '#f '##cdr)
                                      (cons _L1241_ '()))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _L1325_ '())))
                                    '())))
                  (cons _L1353_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _g13391350_))))
                          (_g13371368_ _E879_)))))
                  _g13111322_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g13091372_
                                                   (_recur881_
                                                    _L1188_
                                                    _L1269_
                                                    (_recur881_
                                                     _L1186_
                                                     _L1297_
                                                     _K887_)))))))
                                          _g12831294_))))
                                  (_g12811376_ (gx#genident 'tl))))))
                          _g12551266_))))
                  (_g12531380_ (gx#genident 'hd))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g12271238_))))
                                          (_g12251384_ (gx#genident 'e))))))
                                  _g12001211_))))
                          (_g11981388_ _tgt886_))))
                    _tl8961183_
                    _hd8951180_)))
               (_g8891169_ _g8911173_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g8881392_ _hd884_)))))))
                            (_recur881_
                             _hd876_
                             _tgt481_
                             (cons (gx#datum->syntax '#f 'if)
                                   (cons _fender877_
                                         (cons _body878_
                                               (cons _E879_ '())))))))))
                   (let ((_generate-clause486_
                          (lambda (_hd1396_ _E1398_)
                            (let ((_g14021429_
                                   (lambda (_g14031425_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g14031425_))))
                              (let ((_g14011440_
                                     (lambda (_g14031433_)
                                       ((lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _stx326_
                                           _hd1396_))))))
                                (let ((_g14001498_
                                       (lambda (_g14031444_)
                                         (if (gx#stx-pair? _g14031444_)
                                             (let ((_e14151447_
                                                    (gx#syntax-e _g14031444_)))
                                               (let ((_hd14161451_
                                                      (##car _e14151447_))
                                                     (_tl14171454_
                                                      (##cdr _e14151447_)))
                                                 (if (gx#stx-pair?
                                                      _tl14171454_)
                                                     (let ((_e14181457_
                                                            (gx#syntax-e
                                                             _tl14171454_)))
                                                       (let ((_hd14191461_
                                                              (##car _e14181457_))
                                                             (_tl14201464_
                                                              (##cdr _e14181457_)))
                                                         (if (gx#stx-pair?
                                                              _tl14201464_)
                                                             (let ((_e14211467_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl14201464_)))
                       (let ((_hd14221471_ (##car _e14211467_))
                             (_tl14231474_ (##cdr _e14211467_)))
                         (if (gx#stx-null? _tl14231474_)
                             ((lambda (_L1477_ _L1479_ _L1480_)
                                (_generate1488_
                                 _hd1396_
                                 _L1480_
                                 _L1479_
                                 _L1477_
                                 _E1398_))
                              _hd14221471_
                              _hd14191461_
                              _hd14161451_)
                             (_g14011440_ _g14031444_))))
                     (_g14011440_ _g14031444_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g14011440_
                                                      _g14031444_))))
                                             (_g14011440_ _g14031444_)))))
                                  (let ((_g13991540_
                                         (lambda (_g14031502_)
                                           (if (gx#stx-pair? _g14031502_)
                                               (let ((_e14061505_
                                                      (gx#syntax-e
                                                       _g14031502_)))
                                                 (let ((_hd14071509_
                                                        (##car _e14061505_))
                                                       (_tl14081512_
                                                        (##cdr _e14061505_)))
                                                   (if (gx#stx-pair?
                                                        _tl14081512_)
                                                       (let ((_e14091515_
                                                              (gx#syntax-e
                                                               _tl14081512_)))
                                                         (let ((_hd14101519_
                                                                (##car _e14091515_))
                                                               (_tl14111522_
                                                                (##cdr _e14091515_)))
                                                           (if (gx#stx-null?
                                                                _tl14111522_)
                                                               ((lambda (_L1525_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L1527_)
                          (_generate1488_
                           _hd1396_
                           _L1527_
                           '#t
                           _L1525_
                           _E1398_))
                        _hd14101519_
                        _hd14071509_)
                       (_g14001498_ _g14031502_))))
               (_g14001498_ _g14031502_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g14001498_ _g14031502_)))))
                                    (_g13991540_ _hd1396_))))))))
                     (let ((_generate-clauses489_
                            (lambda (_clauses612_)
                              ((letrec ((_lp615_ (lambda (_rest618_
                                                          _E620_
                                                          _r621_)
                                                   (let ((_g624636_
                                                          (lambda (_g625632_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g625632_))))
                                                     (let ((_g623684_
                                                            (lambda (_g625640_)
                                                              ((lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((_g647655_
                                (lambda (_g648651_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g648651_))))
                           (let ((_g646680_
                                  (lambda (_g648659_)
                                    ((lambda (_L662_)
                                       (let ()
                                         (cons (cons _E620_
                                                     (cons (gx#stx-wrap-source
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'lambda)
                          (cons '()
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'raise-syntax-error)
                                            (cons '#f
                                                  (cons '"Bad syntax"
                                                        (cons _L662_ '()))))
                                      '())))
                    (gx#stx-source _stx326_))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _r621_)))
                                     _g648659_))))
                             (_g646680_ _tgt481_))))))))
               (let ((_g622870_
                      (lambda (_g625688_)
                        (if (gx#stx-pair? _g625688_)
                            (let ((_e628691_ (gx#syntax-e _g625688_)))
                              (let ((_hd629695_ (##car _e628691_))
                                    (_tl630698_ (##cdr _e628691_)))
                                ((lambda (_L701_ _L703_)
                                   (let ((_g715726_
                                          (lambda (_g716722_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g716722_))))
                                     (let ((_g714838_
                                            (lambda (_g716730_)
                                              ((lambda ()
                                                 (let ((_g737745_
                                                        (lambda (_g738741_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g738741_))))
                                                   (let ((_g736834_
                                                          (lambda (_g738749_)
                                                            ((lambda (_L752_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((_g768776_
                                (lambda (_g769772_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g769772_))))
                           (let ((_g767830_
                                  (lambda (_g769780_)
                                    ((lambda (_L783_)
                                       (let ()
                                         (let ((_g796804_
                                                (lambda (_g797800_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g797800_))))
                                           (let ((_g795826_
                                                  (lambda (_g797808_)
                                                    ((lambda (_L811_)
                                                       (let ()
                                                         (let ()
                                                           (_lp615_ _L701_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L752_
                            (cons (cons _E620_ (cons _L811_ '())) _r621_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g797808_))))
                                             (_g795826_
                                              (gx#stx-wrap-source
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons '()
                                                           (cons _L783_ '())))
                                               (gx#stx-source _L703_)))))))
                                     _g769780_))))
                             (_g767830_
                              (_generate-clause486_
                               _L703_
                               (cons _L752_ '())))))))
                     _g738749_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g736834_
                                                      (gx#genident 'E)))))))))
                                       (let ((_g713866_
                                              (lambda (_g716842_)
                                                (if (gx#stx-pair? _g716842_)
                                                    (let ((_e718845_
                                                           (gx#syntax-e
                                                            _g716842_)))
                                                      (let ((_hd719849_
                                                             (##car _e718845_))
                                                            (_tl720852_
                                                             (##cdr _e718845_)))
                                                        (if (gx#identifier?
                                                             _hd719849_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gx[1]#_g2678_|
                         _hd719849_)
                        ((lambda (_L855_)
                           (if (gx#stx-null? _L701_)
                               (if (if (gx#stx-list? _L855_)
                                       (not (gx#stx-null? _L855_))
                                       '#f)
                                   (cons (cons _E620_
                                               (cons (gx#stx-wrap-source
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'lambda)
                                                            (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'begin) _L855_)
                                '())))
              (gx#stx-source _L703_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         _r621_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _stx326_
                                    _L703_))
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; misplaced else"
                                _stx326_
                                _L703_)))
                         _tl720852_)
                        (_g714838_ _g716842_))
                    (_g714838_ _g716842_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g714838_ _g716842_)))))
                                         (_g713866_ _L703_)))))
                                 _tl630698_
                                 _hd629695_)))
                            (_g623684_ _g625688_)))))
                 (_g622870_ _rest618_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _lp615_)
                               _clauses612_
                               (gx#genident 'E)
                               '()))))
                       (let ((_bind491_ (_generate-clauses489_ _clauses484_)))
                         (let ((_g494511_
                                (lambda (_g495507_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g495507_))))
                           (let ((_g493608_
                                  (lambda (_g495515_)
                                    (if (gx#stx-pair/null? _g495515_)
                                        (if (fx>= (gx#stx-length _g495515_) '0)
                                            (let ((_g2676_ (gx#syntax-split-splice
                                                            _g495515_
                                                            '0)))
                                              (begin
                                                (let ((_g2677_ (values-count
                                                                _g2676_)))
                                                  (if (not (fx= _g2677_ 2))
                                                      (error "Context expects 2 values"
                                                             _g2677_)))
                                                (let ((_target497518_
                                                       (values-ref _g2676_ 0))
                                                      (_tl499521_
                                                       (values-ref _g2676_ 1)))
                                                  (if (gx#stx-null? _tl499521_)
                                                      (letrec ((_loop500524_
                                                                (lambda (_hd498528_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _bind-try504531_)
                          (if (gx#stx-pair? _hd498528_)
                              (let ((_e501534_ (gx#syntax-e _hd498528_)))
                                (let ((_lp-hd502538_ (##car _e501534_))
                                      (_lp-tl503541_ (##cdr _e501534_)))
                                  (_loop500524_
                                   _lp-tl503541_
                                   (cons _lp-hd502538_ _bind-try504531_))))
                              (let ((_bind-try505544_
                                     (reverse _bind-try504531_)))
                                ((lambda (_L548_)
                                   (let ()
                                     (let ((_g566574_
                                            (lambda (_g567570_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g567570_))))
                                       (let ((_g565604_
                                              (lambda (_g567578_)
                                                ((lambda (_L581_)
                                                   (let ()
                                                     (let ()
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let*)
                                                             (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#!void
                             (foldr (lambda (_g595598_ _g596601_)
                                      (cons _g595598_ _g596601_))
                                    '()
                                    _L548_))
                           (cons (cons _L581_ '()) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _g567578_))))
                                         (_g565604_ (car (last _bind491_)))))))
                                 _bind-try505544_))))))
                (_loop500524_ _target497518_ '()))
              (_g494511_ _g495515_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g494511_ _g495515_))
                                        (_g494511_ _g495515_)))))
                             (_g493608_ _bind491_))))))))))
          (let ((_g332351_
                 (lambda (_g333347_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g333347_))))
            (let ((_g331477_
                   (lambda (_g333355_)
                     (if (gx#stx-pair? _g333355_)
                         (let ((_e337358_ (gx#syntax-e _g333355_)))
                           (let ((_hd338362_ (##car _e337358_))
                                 (_tl339365_ (##cdr _e337358_)))
                             (if (gx#stx-pair? _tl339365_)
                                 (let ((_e340368_ (gx#syntax-e _tl339365_)))
                                   (let ((_hd341372_ (##car _e340368_))
                                         (_tl342375_ (##cdr _e340368_)))
                                     (if (gx#stx-pair? _tl342375_)
                                         (let ((_e343378_
                                                (gx#syntax-e _tl342375_)))
                                           (let ((_hd344382_ (##car _e343378_))
                                                 (_tl345385_
                                                  (##cdr _e343378_)))
                                             ((lambda (_L388_ _L390_ _L391_)
                                                (if (if (gx#identifier-list?
                                                         _L390_)
                                                        (gx#stx-list? _L388_)
                                                        '#f)
                                                    (let ((_g412420_
                                                           (lambda (_g413416_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g413416_))))
                                                      (let ((_g411473_
                                                             (lambda (_g413424_)
                                                               ((lambda (_L427_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let ((_g439447_
                                   (lambda (_g440443_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g440443_))))
                              (let ((_g438469_
                                     (lambda (_g440451_)
                                       ((lambda (_L454_)
                                          (let ()
                                            (let ()
                                              (cons (gx#datum->syntax '#f 'let)
                                                    (cons (cons (cons _L427_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _L391_ '()))
                        '())
                  (cons _L454_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _g440451_))))
                                (_g438469_
                                 (_generate329_
                                  _L427_
                                  (gx#syntax->list _L390_)
                                  _L388_))))))
                        _g413424_))))
                (_g411473_ (gx#genident 'e))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g332351_ _g333355_)))
                                              _tl345385_
                                              _hd344382_
                                              _hd341372_)))
                                         (_g332351_ _g333355_))))
                                 (_g332351_ _g333355_))))
                         (_g332351_ _g333355_)))))
              (_g331477_ _stx326_))))))))
