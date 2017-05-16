(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gx[1]#_g2598_| (gx#core-quote-syntax 'error::t))
  (define |gx[1]#_g2599_| (gx#core-quote-syntax 'AST::t))
  (define |gx[1]#_g2602_| (gx#core-quote-syntax 'else))
  (begin
    (define |gx[:0:]#<error>|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-info|
       'runtime-identifier:
       |gx[1]#_g2598_|))
    (define |gx[:0:]#AST|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-info|
       'runtime-identifier:
       |gx[1]#_g2599_|))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx250_)
        (let ((_generate253_
               (lambda (_tgt405_ _kws407_ _clauses408_)
                 (let ((_generate1412_
                        (lambda (_where798_
                                 _hd800_
                                 _fender801_
                                 _body802_
                                 _E803_)
                          (letrec ((_recur805_
                                    (lambda (_hd808_ _tgt810_ _K811_)
                                      (let ((_g814826_
                                             (lambda (_g815822_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g815822_))))
                                        (let ((_g8131093_
                                               (lambda (_g815830_)
                                                 ((lambda ()
                                                    (if (gx#identifier?
                                                         _hd808_)
                                                        (if (gx#underscore?
                                                             _hd808_)
                                                            _K811_
                                                            (if (find (lambda (_g836838_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (gx#bound-identifier=? _g836838_ _hd808_))
                              _kws407_)
                        (let ((_g842857_
                               (lambda (_g843853_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g843853_))))
                          (let ((_g841908_
                                 (lambda (_g843861_)
                                   (if (gx#stx-pair? _g843861_)
                                       (let ((_e846864_
                                              (gx#syntax-e _g843861_)))
                                         (let ((_hd847868_ (##car _e846864_))
                                               (_tl848871_ (##cdr _e846864_)))
                                           (if (gx#stx-pair? _tl848871_)
                                               (let ((_e849874_
                                                      (gx#syntax-e
                                                       _tl848871_)))
                                                 (let ((_hd850878_
                                                        (##car _e849874_))
                                                       (_tl851881_
                                                        (##cdr _e849874_)))
                                                   (if (gx#stx-null?
                                                        _tl851881_)
                                                       ((lambda (_L884_ _L886_)
                                                          (let ()
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'if)
                          (cons (cons (gx#datum->syntax '#f 'and)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'identifier?)
                                                  (cons _L886_ '()))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'core-identifier=?)
                                                        (cons _L886_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _L884_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (cons _K811_ (cons _E803_ '()))))))
                _hd850878_
                _hd847868_)
               (_g842857_ _g843861_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g842857_ _g843861_))))
                                       (_g842857_ _g843861_)))))
                            (_g841908_ (list _tgt810_ _hd808_))))
                        (let ((_g912927_
                               (lambda (_g913923_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g913923_))))
                          (let ((_g911971_
                                 (lambda (_g913931_)
                                   (if (gx#stx-pair? _g913931_)
                                       (let ((_e916934_
                                              (gx#syntax-e _g913931_)))
                                         (let ((_hd917938_ (##car _e916934_))
                                               (_tl918941_ (##cdr _e916934_)))
                                           (if (gx#stx-pair? _tl918941_)
                                               (let ((_e919944_
                                                      (gx#syntax-e
                                                       _tl918941_)))
                                                 (let ((_hd920948_
                                                        (##car _e919944_))
                                                       (_tl921951_
                                                        (##cdr _e919944_)))
                                                   (if (gx#stx-null?
                                                        _tl921951_)
                                                       ((lambda (_L954_ _L956_)
                                                          (let ()
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'let)
                          (cons (cons (cons _L954_ (cons _L956_ '())) '())
                                (cons _K811_ '())))))
                _hd920948_
                _hd917938_)
               (_g912927_ _g913931_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g912927_ _g913931_))))
                                       (_g912927_ _g913931_)))))
                            (_g911971_ (list _tgt810_ _hd808_))))))
                (if (gx#stx-null? _hd808_)
                    (let ((_g975983_
                           (lambda (_g976979_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g976979_))))
                      (let ((_g9741001_
                             (lambda (_g976987_)
                               ((lambda (_L990_)
                                  (let ()
                                    (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'stx-null?)
                                                      (cons _L990_ '()))
                                                (cons _K811_
                                                      (cons _E803_ '()))))))
                                _g976987_))))
                        (_g9741001_ _tgt810_)))
                    (if (gx#stx-datum? _hd808_)
                        (let ((_g10051024_
                               (lambda (_g10061020_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g10061020_))))
                          (let ((_g10041082_
                                 (lambda (_g10061028_)
                                   (if (gx#stx-pair? _g10061028_)
                                       (let ((_e10101031_
                                              (gx#syntax-e _g10061028_)))
                                         (let ((_hd10111035_
                                                (##car _e10101031_))
                                               (_tl10121038_
                                                (##cdr _e10101031_)))
                                           (if (gx#stx-pair? _tl10121038_)
                                               (let ((_e10131041_
                                                      (gx#syntax-e
                                                       _tl10121038_)))
                                                 (let ((_hd10141045_
                                                        (##car _e10131041_))
                                                       (_tl10151048_
                                                        (##cdr _e10131041_)))
                                                   (if (gx#stx-pair?
                                                        _tl10151048_)
                                                       (let ((_e10161051_
                                                              (gx#syntax-e
                                                               _tl10151048_)))
                                                         (let ((_hd10171055_
                                                                (##car _e10161051_))
                                                               (_tl10181058_
                                                                (##cdr _e10161051_)))
                                                           (if (gx#stx-null?
                                                                _tl10181058_)
                                                               ((lambda (_L1061_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L1063_
                                 _L1064_)
                          (let ()
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons _L1061_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-e)
                                                          (cons _L1064_ '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _L1063_ '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons _K811_ (cons _E803_ '()))))))
                        _hd10171055_
                        _hd10141045_
                        _hd10111035_)
                       (_g10051024_ _g10061028_))))
               (_g10051024_ _g10061028_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g10051024_ _g10061028_))))
                                       (_g10051024_ _g10061028_)))))
                            (_g10041082_
                             (list _tgt810_
                                   _hd808_
                                   (let ((_e1086_ (gx#stx-e _hd808_)))
                                     (if (let ((_$e1089_ (keyword? _e1086_)))
                                           (if _$e1089_
                                               _$e1089_
                                               (immediate? _e1086_)))
                                         (gx#datum->syntax '#f 'eq?)
                                         (if (number? _e1086_)
                                             (gx#datum->syntax '#f 'eqv?)
                                             (gx#datum->syntax
                                              '#f
                                              'equal?))))))))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _stx250_
                         _where798_
                         _hd808_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ((_g8121316_
                                                 (lambda (_g8151097_)
                                                   (if (gx#stx-pair?
                                                        _g8151097_)
                                                       (let ((_e8181100_
                                                              (gx#syntax-e
                                                               _g8151097_)))
                                                         (let ((_hd8191104_
                                                                (##car _e8181100_))
                                                               (_tl8201107_
                                                                (##cdr _e8181100_)))
                                                           ((lambda (_L1110_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L1112_)
                      (let ((_g11231131_
                             (lambda (_g11241127_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g11241127_))))
                        (let ((_g11221312_
                               (lambda (_g11241135_)
                                 ((lambda (_L1138_)
                                    (let ()
                                      (let ((_g11501158_
                                             (lambda (_g11511154_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g11511154_))))
                                        (let ((_g11491308_
                                               (lambda (_g11511162_)
                                                 ((lambda (_L1165_)
                                                    (let ()
                                                      (let ((_g11781186_
                                                             (lambda (_g11791182_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g11791182_))))
                                                        (let ((_g11771304_
                                                               (lambda (_g11791190_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda (_L1193_)
                            (let ()
                              (let ((_g12061214_
                                     (lambda (_g12071210_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g12071210_))))
                                (let ((_g12051300_
                                       (lambda (_g12071218_)
                                         ((lambda (_L1221_)
                                            (let ()
                                              (let ((_g12341242_
                                                     (lambda (_g12351238_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g12351238_))))
                                                (let ((_g12331296_
                                                       (lambda (_g12351246_)
                                                         ((lambda (_L1249_)
                                                            (let ()
                                                              (let ((_g12621270_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g12631266_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g12631266_))))
                        (let ((_g12611292_
                               (lambda (_g12631274_)
                                 ((lambda (_L1277_)
                                    (let ()
                                      (let ()
                                        (cons (gx#datum->syntax '#f 'if)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-pair?)
                                                          (cons _L1138_ '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'let)
                        (cons (cons (cons _L1165_
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'syntax-e)
                                                      (cons _L1138_ '()))
                                                '()))
                                    '())
                              (cons (cons (gx#datum->syntax '#f 'let)
                                          (cons (cons (cons _L1193_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 '##car)
                                (cons _L1165_ '()))
                          '()))
              (cons (cons _L1221_
                          (cons (cons (gx#datum->syntax '#f '##cdr)
                                      (cons _L1165_ '()))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _L1249_ '())))
                                    '())))
                  (cons _L1277_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _g12631274_))))
                          (_g12611292_ _E803_)))))
                  _g12351246_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g12331296_
                                                   (_recur805_
                                                    _L1112_
                                                    _L1193_
                                                    (_recur805_
                                                     _L1110_
                                                     _L1221_
                                                     _K811_)))))))
                                          _g12071218_))))
                                  (_g12051300_ (gx#genident 'tl))))))
                          _g11791190_))))
                  (_g11771304_ (gx#genident 'hd))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g11511162_))))
                                          (_g11491308_ (gx#genident 'e))))))
                                  _g11241135_))))
                          (_g11221312_ _tgt810_))))
                    _tl8201107_
                    _hd8191104_)))
               (_g8131093_ _g8151097_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g8121316_ _hd808_)))))))
                            (_recur805_
                             _hd800_
                             _tgt405_
                             (cons (gx#datum->syntax '#f 'if)
                                   (cons _fender801_
                                         (cons _body802_
                                               (cons _E803_ '())))))))))
                   (let ((_generate-clause410_
                          (lambda (_hd1320_ _E1322_)
                            (let ((_g13261353_
                                   (lambda (_g13271349_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g13271349_))))
                              (let ((_g13251364_
                                     (lambda (_g13271357_)
                                       ((lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _stx250_
                                           _hd1320_))))))
                                (let ((_g13241422_
                                       (lambda (_g13271368_)
                                         (if (gx#stx-pair? _g13271368_)
                                             (let ((_e13391371_
                                                    (gx#syntax-e _g13271368_)))
                                               (let ((_hd13401375_
                                                      (##car _e13391371_))
                                                     (_tl13411378_
                                                      (##cdr _e13391371_)))
                                                 (if (gx#stx-pair?
                                                      _tl13411378_)
                                                     (let ((_e13421381_
                                                            (gx#syntax-e
                                                             _tl13411378_)))
                                                       (let ((_hd13431385_
                                                              (##car _e13421381_))
                                                             (_tl13441388_
                                                              (##cdr _e13421381_)))
                                                         (if (gx#stx-pair?
                                                              _tl13441388_)
                                                             (let ((_e13451391_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl13441388_)))
                       (let ((_hd13461395_ (##car _e13451391_))
                             (_tl13471398_ (##cdr _e13451391_)))
                         (if (gx#stx-null? _tl13471398_)
                             ((lambda (_L1401_ _L1403_ _L1404_)
                                (_generate1412_
                                 _hd1320_
                                 _L1404_
                                 _L1403_
                                 _L1401_
                                 _E1322_))
                              _hd13461395_
                              _hd13431385_
                              _hd13401375_)
                             (_g13251364_ _g13271368_))))
                     (_g13251364_ _g13271368_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g13251364_
                                                      _g13271368_))))
                                             (_g13251364_ _g13271368_)))))
                                  (let ((_g13231464_
                                         (lambda (_g13271426_)
                                           (if (gx#stx-pair? _g13271426_)
                                               (let ((_e13301429_
                                                      (gx#syntax-e
                                                       _g13271426_)))
                                                 (let ((_hd13311433_
                                                        (##car _e13301429_))
                                                       (_tl13321436_
                                                        (##cdr _e13301429_)))
                                                   (if (gx#stx-pair?
                                                        _tl13321436_)
                                                       (let ((_e13331439_
                                                              (gx#syntax-e
                                                               _tl13321436_)))
                                                         (let ((_hd13341443_
                                                                (##car _e13331439_))
                                                               (_tl13351446_
                                                                (##cdr _e13331439_)))
                                                           (if (gx#stx-null?
                                                                _tl13351446_)
                                                               ((lambda (_L1449_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L1451_)
                          (_generate1412_
                           _hd1320_
                           _L1451_
                           '#t
                           _L1449_
                           _E1322_))
                        _hd13341443_
                        _hd13311433_)
                       (_g13241422_ _g13271426_))))
               (_g13241422_ _g13271426_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g13241422_ _g13271426_)))))
                                    (_g13231464_ _hd1320_))))))))
                     (let ((_generate-clauses413_
                            (lambda (_clauses536_)
                              ((letrec ((_lp539_ (lambda (_rest542_
                                                          _E544_
                                                          _r545_)
                                                   (let ((_g548560_
                                                          (lambda (_g549556_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g549556_))))
                                                     (let ((_g547608_
                                                            (lambda (_g549564_)
                                                              ((lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((_g571579_
                                (lambda (_g572575_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g572575_))))
                           (let ((_g570604_
                                  (lambda (_g572583_)
                                    ((lambda (_L586_)
                                       (let ()
                                         (cons (cons _E544_
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
                                                        (cons _L586_ '()))))
                                      '())))
                    (gx#stx-source _stx250_))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _r545_)))
                                     _g572583_))))
                             (_g570604_ _tgt405_))))))))
               (let ((_g546794_
                      (lambda (_g549612_)
                        (if (gx#stx-pair? _g549612_)
                            (let ((_e552615_ (gx#syntax-e _g549612_)))
                              (let ((_hd553619_ (##car _e552615_))
                                    (_tl554622_ (##cdr _e552615_)))
                                ((lambda (_L625_ _L627_)
                                   (let ((_g639650_
                                          (lambda (_g640646_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g640646_))))
                                     (let ((_g638762_
                                            (lambda (_g640654_)
                                              ((lambda ()
                                                 (let ((_g661669_
                                                        (lambda (_g662665_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g662665_))))
                                                   (let ((_g660758_
                                                          (lambda (_g662673_)
                                                            ((lambda (_L676_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((_g692700_
                                (lambda (_g693696_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g693696_))))
                           (let ((_g691754_
                                  (lambda (_g693704_)
                                    ((lambda (_L707_)
                                       (let ()
                                         (let ((_g720728_
                                                (lambda (_g721724_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g721724_))))
                                           (let ((_g719750_
                                                  (lambda (_g721732_)
                                                    ((lambda (_L735_)
                                                       (let ()
                                                         (let ()
                                                           (_lp539_ _L625_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L676_
                            (cons (cons _E544_ (cons _L735_ '())) _r545_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g721732_))))
                                             (_g719750_
                                              (gx#stx-wrap-source
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons '()
                                                           (cons _L707_ '())))
                                               (gx#stx-source _L627_)))))))
                                     _g693704_))))
                             (_g691754_
                              (_generate-clause410_
                               _L627_
                               (cons _L676_ '())))))))
                     _g662673_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g660758_
                                                      (gx#genident 'E)))))))))
                                       (let ((_g637790_
                                              (lambda (_g640766_)
                                                (if (gx#stx-pair? _g640766_)
                                                    (let ((_e642769_
                                                           (gx#syntax-e
                                                            _g640766_)))
                                                      (let ((_hd643773_
                                                             (##car _e642769_))
                                                            (_tl644776_
                                                             (##cdr _e642769_)))
                                                        (if (gx#identifier?
                                                             _hd643773_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gx[1]#_g2602_|
                         _hd643773_)
                        ((lambda (_L779_)
                           (if (gx#stx-null? _L625_)
                               (if (if (gx#stx-list? _L779_)
                                       (not (gx#stx-null? _L779_))
                                       '#f)
                                   (cons (cons _E544_
                                               (cons (gx#stx-wrap-source
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'lambda)
                                                            (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'begin) _L779_)
                                '())))
              (gx#stx-source _L627_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         _r545_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _stx250_
                                    _L627_))
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; misplaced else"
                                _stx250_
                                _L627_)))
                         _tl644776_)
                        (_g638762_ _g640766_))
                    (_g638762_ _g640766_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g638762_ _g640766_)))))
                                         (_g637790_ _L627_)))))
                                 _tl554622_
                                 _hd553619_)))
                            (_g547608_ _g549612_)))))
                 (_g546794_ _rest542_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _lp539_)
                               _clauses536_
                               (gx#genident 'E)
                               '()))))
                       (let ((_bind415_ (_generate-clauses413_ _clauses408_)))
                         (let ((_g418435_
                                (lambda (_g419431_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g419431_))))
                           (let ((_g417532_
                                  (lambda (_g419439_)
                                    (if (gx#stx-pair/null? _g419439_)
                                        (if (fx>= (gx#stx-length _g419439_) '0)
                                            (let ((_g2600_ (gx#syntax-split-splice
                                                            _g419439_
                                                            '0)))
                                              (begin
                                                (let ((_g2601_ (values-count
                                                                _g2600_)))
                                                  (if (not (fx= _g2601_ 2))
                                                      (error "Context expects 2 values"
                                                             _g2601_)))
                                                (let ((_target421442_
                                                       (values-ref _g2600_ 0))
                                                      (_tl423445_
                                                       (values-ref _g2600_ 1)))
                                                  (if (gx#stx-null? _tl423445_)
                                                      (letrec ((_loop424448_
                                                                (lambda (_hd422452_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _bind-try428455_)
                          (if (gx#stx-pair? _hd422452_)
                              (let ((_e425458_ (gx#syntax-e _hd422452_)))
                                (let ((_lp-hd426462_ (##car _e425458_))
                                      (_lp-tl427465_ (##cdr _e425458_)))
                                  (_loop424448_
                                   _lp-tl427465_
                                   (cons _lp-hd426462_ _bind-try428455_))))
                              (let ((_bind-try429468_
                                     (reverse _bind-try428455_)))
                                ((lambda (_L472_)
                                   (let ()
                                     (let ((_g490498_
                                            (lambda (_g491494_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g491494_))))
                                       (let ((_g489528_
                                              (lambda (_g491502_)
                                                ((lambda (_L505_)
                                                   (let ()
                                                     (let ()
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let*)
                                                             (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#!void
                             (foldr (lambda (_g519522_ _g520525_)
                                      (cons _g519522_ _g520525_))
                                    '()
                                    _L472_))
                           (cons (cons _L505_ '()) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _g491502_))))
                                         (_g489528_ (car (last _bind415_)))))))
                                 _bind-try429468_))))))
                (_loop424448_ _target421442_ '()))
              (_g418435_ _g419439_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g418435_ _g419439_))
                                        (_g418435_ _g419439_)))))
                             (_g417532_ _bind415_))))))))))
          (let ((_g256275_
                 (lambda (_g257271_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g257271_))))
            (let ((_g255401_
                   (lambda (_g257279_)
                     (if (gx#stx-pair? _g257279_)
                         (let ((_e261282_ (gx#syntax-e _g257279_)))
                           (let ((_hd262286_ (##car _e261282_))
                                 (_tl263289_ (##cdr _e261282_)))
                             (if (gx#stx-pair? _tl263289_)
                                 (let ((_e264292_ (gx#syntax-e _tl263289_)))
                                   (let ((_hd265296_ (##car _e264292_))
                                         (_tl266299_ (##cdr _e264292_)))
                                     (if (gx#stx-pair? _tl266299_)
                                         (let ((_e267302_
                                                (gx#syntax-e _tl266299_)))
                                           (let ((_hd268306_ (##car _e267302_))
                                                 (_tl269309_
                                                  (##cdr _e267302_)))
                                             ((lambda (_L312_ _L314_ _L315_)
                                                (if (if (gx#identifier-list?
                                                         _L314_)
                                                        (gx#stx-list? _L312_)
                                                        '#f)
                                                    (let ((_g336344_
                                                           (lambda (_g337340_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g337340_))))
                                                      (let ((_g335397_
                                                             (lambda (_g337348_)
                                                               ((lambda (_L351_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let ((_g363371_
                                   (lambda (_g364367_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g364367_))))
                              (let ((_g362393_
                                     (lambda (_g364375_)
                                       ((lambda (_L378_)
                                          (let ()
                                            (let ()
                                              (cons (gx#datum->syntax '#f 'let)
                                                    (cons (cons (cons _L351_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _L315_ '()))
                        '())
                  (cons _L378_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _g364375_))))
                                (_g362393_
                                 (_generate253_
                                  _L351_
                                  (gx#syntax->list _L314_)
                                  _L312_))))))
                        _g337348_))))
                (_g335397_ (gx#genident 'e))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g256275_ _g257279_)))
                                              _tl269309_
                                              _hd268306_
                                              _hd265296_)))
                                         (_g256275_ _g257279_))))
                                 (_g256275_ _g257279_))))
                         (_g256275_ _g257279_)))))
              (_g255401_ _stx250_))))))))
