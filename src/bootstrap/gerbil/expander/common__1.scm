(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gx[1]#_g2841_| (gx#core-quote-syntax 'error::t))
  (define |gx[1]#_g2842_| (gx#core-quote-syntax 'AST::t))
  (define |gx[1]#_g2845_| (gx#core-quote-syntax 'else))
  (begin
    (define |gx[:0:]#<error>|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-info|
       'runtime-identifier:
       |gx[1]#_g2841_|))
    (define |gx[:0:]#AST|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-info|
       'runtime-identifier:
       |gx[1]#_g2842_|))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx331_)
        (let ((_generate334_
               (lambda (_tgt486_ _kws488_ _clauses489_)
                 (let ((_generate1493_
                        (lambda (_where879_
                                 _hd881_
                                 _fender882_
                                 _body883_
                                 _E884_)
                          (letrec ((_recur886_
                                    (lambda (_hd889_ _tgt891_ _K892_)
                                      (let ((_g895907_
                                             (lambda (_g896903_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g896903_))))
                                        (let ((_g8941174_
                                               (lambda (_g896911_)
                                                 ((lambda ()
                                                    (if (gx#identifier?
                                                         _hd889_)
                                                        (if (gx#underscore?
                                                             _hd889_)
                                                            _K892_
                                                            (if (find (lambda (_g917919_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (gx#bound-identifier=? _g917919_ _hd889_))
                              _kws488_)
                        (let ((_g923938_
                               (lambda (_g924934_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g924934_))))
                          (let ((_g922989_
                                 (lambda (_g924942_)
                                   (if (gx#stx-pair? _g924942_)
                                       (let ((_e927945_
                                              (gx#syntax-e _g924942_)))
                                         (let ((_hd928949_ (##car _e927945_))
                                               (_tl929952_ (##cdr _e927945_)))
                                           (if (gx#stx-pair? _tl929952_)
                                               (let ((_e930955_
                                                      (gx#syntax-e
                                                       _tl929952_)))
                                                 (let ((_hd931959_
                                                        (##car _e930955_))
                                                       (_tl932962_
                                                        (##cdr _e930955_)))
                                                   (if (gx#stx-null?
                                                        _tl932962_)
                                                       ((lambda (_L965_ _L967_)
                                                          (let ()
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'if)
                          (cons (cons (gx#datum->syntax '#f 'and)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'identifier?)
                                                  (cons _L967_ '()))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'core-identifier=?)
                                                        (cons _L967_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _L965_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (cons _K892_ (cons _E884_ '()))))))
                _hd931959_
                _hd928949_)
               (_g923938_ _g924942_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g923938_ _g924942_))))
                                       (_g923938_ _g924942_)))))
                            (_g922989_ (list _tgt891_ _hd889_))))
                        (let ((_g9931008_
                               (lambda (_g9941004_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g9941004_))))
                          (let ((_g9921052_
                                 (lambda (_g9941012_)
                                   (if (gx#stx-pair? _g9941012_)
                                       (let ((_e9971015_
                                              (gx#syntax-e _g9941012_)))
                                         (let ((_hd9981019_ (##car _e9971015_))
                                               (_tl9991022_
                                                (##cdr _e9971015_)))
                                           (if (gx#stx-pair? _tl9991022_)
                                               (let ((_e10001025_
                                                      (gx#syntax-e
                                                       _tl9991022_)))
                                                 (let ((_hd10011029_
                                                        (##car _e10001025_))
                                                       (_tl10021032_
                                                        (##cdr _e10001025_)))
                                                   (if (gx#stx-null?
                                                        _tl10021032_)
                                                       ((lambda (_L1035_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L1037_)
                  (let ()
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _L1035_ (cons _L1037_ '())) '())
                                (cons _K892_ '())))))
                _hd10011029_
                _hd9981019_)
               (_g9931008_ _g9941012_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g9931008_ _g9941012_))))
                                       (_g9931008_ _g9941012_)))))
                            (_g9921052_ (list _tgt891_ _hd889_))))))
                (if (gx#stx-null? _hd889_)
                    (let ((_g10561064_
                           (lambda (_g10571060_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g10571060_))))
                      (let ((_g10551082_
                             (lambda (_g10571068_)
                               ((lambda (_L1071_)
                                  (let ()
                                    (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'stx-null?)
                                                      (cons _L1071_ '()))
                                                (cons _K892_
                                                      (cons _E884_ '()))))))
                                _g10571068_))))
                        (_g10551082_ _tgt891_)))
                    (if (gx#stx-datum? _hd889_)
                        (let ((_g10861105_
                               (lambda (_g10871101_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g10871101_))))
                          (let ((_g10851163_
                                 (lambda (_g10871109_)
                                   (if (gx#stx-pair? _g10871109_)
                                       (let ((_e10911112_
                                              (gx#syntax-e _g10871109_)))
                                         (let ((_hd10921116_
                                                (##car _e10911112_))
                                               (_tl10931119_
                                                (##cdr _e10911112_)))
                                           (if (gx#stx-pair? _tl10931119_)
                                               (let ((_e10941122_
                                                      (gx#syntax-e
                                                       _tl10931119_)))
                                                 (let ((_hd10951126_
                                                        (##car _e10941122_))
                                                       (_tl10961129_
                                                        (##cdr _e10941122_)))
                                                   (if (gx#stx-pair?
                                                        _tl10961129_)
                                                       (let ((_e10971132_
                                                              (gx#syntax-e
                                                               _tl10961129_)))
                                                         (let ((_hd10981136_
                                                                (##car _e10971132_))
                                                               (_tl10991139_
                                                                (##cdr _e10971132_)))
                                                           (if (gx#stx-null?
                                                                _tl10991139_)
                                                               ((lambda (_L1142_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L1144_
                                 _L1145_)
                          (let ()
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons _L1142_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-e)
                                                          (cons _L1145_ '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _L1144_ '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons _K892_ (cons _E884_ '()))))))
                        _hd10981136_
                        _hd10951126_
                        _hd10921116_)
                       (_g10861105_ _g10871109_))))
               (_g10861105_ _g10871109_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g10861105_ _g10871109_))))
                                       (_g10861105_ _g10871109_)))))
                            (_g10851163_
                             (list _tgt891_
                                   _hd889_
                                   (let ((_e1167_ (gx#stx-e _hd889_)))
                                     (if (let ((_$e1170_ (keyword? _e1167_)))
                                           (if _$e1170_
                                               _$e1170_
                                               (immediate? _e1167_)))
                                         (gx#datum->syntax '#f 'eq?)
                                         (if (number? _e1167_)
                                             (gx#datum->syntax '#f 'eqv?)
                                             (gx#datum->syntax
                                              '#f
                                              'equal?))))))))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _stx331_
                         _where879_
                         _hd889_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ((_g8931397_
                                                 (lambda (_g8961178_)
                                                   (if (gx#stx-pair?
                                                        _g8961178_)
                                                       (let ((_e8991181_
                                                              (gx#syntax-e
                                                               _g8961178_)))
                                                         (let ((_hd9001185_
                                                                (##car _e8991181_))
                                                               (_tl9011188_
                                                                (##cdr _e8991181_)))
                                                           ((lambda (_L1191_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L1193_)
                      (let ((_g12041212_
                             (lambda (_g12051208_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g12051208_))))
                        (let ((_g12031393_
                               (lambda (_g12051216_)
                                 ((lambda (_L1219_)
                                    (let ()
                                      (let ((_g12311239_
                                             (lambda (_g12321235_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g12321235_))))
                                        (let ((_g12301389_
                                               (lambda (_g12321243_)
                                                 ((lambda (_L1246_)
                                                    (let ()
                                                      (let ((_g12591267_
                                                             (lambda (_g12601263_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g12601263_))))
                                                        (let ((_g12581385_
                                                               (lambda (_g12601271_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda (_L1274_)
                            (let ()
                              (let ((_g12871295_
                                     (lambda (_g12881291_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g12881291_))))
                                (let ((_g12861381_
                                       (lambda (_g12881299_)
                                         ((lambda (_L1302_)
                                            (let ()
                                              (let ((_g13151323_
                                                     (lambda (_g13161319_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g13161319_))))
                                                (let ((_g13141377_
                                                       (lambda (_g13161327_)
                                                         ((lambda (_L1330_)
                                                            (let ()
                                                              (let ((_g13431351_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g13441347_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g13441347_))))
                        (let ((_g13421373_
                               (lambda (_g13441355_)
                                 ((lambda (_L1358_)
                                    (let ()
                                      (let ()
                                        (cons (gx#datum->syntax '#f 'if)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-pair?)
                                                          (cons _L1219_ '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'let)
                        (cons (cons (cons _L1246_
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'syntax-e)
                                                      (cons _L1219_ '()))
                                                '()))
                                    '())
                              (cons (cons (gx#datum->syntax '#f 'let)
                                          (cons (cons (cons _L1274_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 '##car)
                                (cons _L1246_ '()))
                          '()))
              (cons (cons _L1302_
                          (cons (cons (gx#datum->syntax '#f '##cdr)
                                      (cons _L1246_ '()))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _L1330_ '())))
                                    '())))
                  (cons _L1358_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _g13441355_))))
                          (_g13421373_ _E884_)))))
                  _g13161327_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g13141377_
                                                   (_recur886_
                                                    _L1193_
                                                    _L1274_
                                                    (_recur886_
                                                     _L1191_
                                                     _L1302_
                                                     _K892_)))))))
                                          _g12881299_))))
                                  (_g12861381_ (gx#genident 'tl))))))
                          _g12601271_))))
                  (_g12581385_ (gx#genident 'hd))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g12321243_))))
                                          (_g12301389_ (gx#genident 'e))))))
                                  _g12051216_))))
                          (_g12031393_ _tgt891_))))
                    _tl9011188_
                    _hd9001185_)))
               (_g8941174_ _g8961178_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g8931397_ _hd889_)))))))
                            (_recur886_
                             _hd881_
                             _tgt486_
                             (cons (gx#datum->syntax '#f 'if)
                                   (cons _fender882_
                                         (cons _body883_
                                               (cons _E884_ '())))))))))
                   (let ((_generate-clause491_
                          (lambda (_hd1401_ _E1403_)
                            (let ((_g14071434_
                                   (lambda (_g14081430_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g14081430_))))
                              (let ((_g14061445_
                                     (lambda (_g14081438_)
                                       ((lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _stx331_
                                           _hd1401_))))))
                                (let ((_g14051503_
                                       (lambda (_g14081449_)
                                         (if (gx#stx-pair? _g14081449_)
                                             (let ((_e14201452_
                                                    (gx#syntax-e _g14081449_)))
                                               (let ((_hd14211456_
                                                      (##car _e14201452_))
                                                     (_tl14221459_
                                                      (##cdr _e14201452_)))
                                                 (if (gx#stx-pair?
                                                      _tl14221459_)
                                                     (let ((_e14231462_
                                                            (gx#syntax-e
                                                             _tl14221459_)))
                                                       (let ((_hd14241466_
                                                              (##car _e14231462_))
                                                             (_tl14251469_
                                                              (##cdr _e14231462_)))
                                                         (if (gx#stx-pair?
                                                              _tl14251469_)
                                                             (let ((_e14261472_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl14251469_)))
                       (let ((_hd14271476_ (##car _e14261472_))
                             (_tl14281479_ (##cdr _e14261472_)))
                         (if (gx#stx-null? _tl14281479_)
                             ((lambda (_L1482_ _L1484_ _L1485_)
                                (_generate1493_
                                 _hd1401_
                                 _L1485_
                                 _L1484_
                                 _L1482_
                                 _E1403_))
                              _hd14271476_
                              _hd14241466_
                              _hd14211456_)
                             (_g14061445_ _g14081449_))))
                     (_g14061445_ _g14081449_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g14061445_
                                                      _g14081449_))))
                                             (_g14061445_ _g14081449_)))))
                                  (let ((_g14041545_
                                         (lambda (_g14081507_)
                                           (if (gx#stx-pair? _g14081507_)
                                               (let ((_e14111510_
                                                      (gx#syntax-e
                                                       _g14081507_)))
                                                 (let ((_hd14121514_
                                                        (##car _e14111510_))
                                                       (_tl14131517_
                                                        (##cdr _e14111510_)))
                                                   (if (gx#stx-pair?
                                                        _tl14131517_)
                                                       (let ((_e14141520_
                                                              (gx#syntax-e
                                                               _tl14131517_)))
                                                         (let ((_hd14151524_
                                                                (##car _e14141520_))
                                                               (_tl14161527_
                                                                (##cdr _e14141520_)))
                                                           (if (gx#stx-null?
                                                                _tl14161527_)
                                                               ((lambda (_L1530_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L1532_)
                          (_generate1493_
                           _hd1401_
                           _L1532_
                           '#t
                           _L1530_
                           _E1403_))
                        _hd14151524_
                        _hd14121514_)
                       (_g14051503_ _g14081507_))))
               (_g14051503_ _g14081507_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g14051503_ _g14081507_)))))
                                    (_g14041545_ _hd1401_))))))))
                     (let ((_generate-clauses494_
                            (lambda (_clauses617_)
                              ((letrec ((_lp620_ (lambda (_rest623_
                                                          _E625_
                                                          _r626_)
                                                   (let ((_g629641_
                                                          (lambda (_g630637_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g630637_))))
                                                     (let ((_g628689_
                                                            (lambda (_g630645_)
                                                              ((lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((_g652660_
                                (lambda (_g653656_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g653656_))))
                           (let ((_g651685_
                                  (lambda (_g653664_)
                                    ((lambda (_L667_)
                                       (let ()
                                         (cons (cons _E625_
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
                                                        (cons _L667_ '()))))
                                      '())))
                    (gx#stx-source _stx331_))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _r626_)))
                                     _g653664_))))
                             (_g651685_ _tgt486_))))))))
               (let ((_g627875_
                      (lambda (_g630693_)
                        (if (gx#stx-pair? _g630693_)
                            (let ((_e633696_ (gx#syntax-e _g630693_)))
                              (let ((_hd634700_ (##car _e633696_))
                                    (_tl635703_ (##cdr _e633696_)))
                                ((lambda (_L706_ _L708_)
                                   (let ((_g720731_
                                          (lambda (_g721727_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g721727_))))
                                     (let ((_g719843_
                                            (lambda (_g721735_)
                                              ((lambda ()
                                                 (let ((_g742750_
                                                        (lambda (_g743746_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g743746_))))
                                                   (let ((_g741839_
                                                          (lambda (_g743754_)
                                                            ((lambda (_L757_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((_g773781_
                                (lambda (_g774777_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g774777_))))
                           (let ((_g772835_
                                  (lambda (_g774785_)
                                    ((lambda (_L788_)
                                       (let ()
                                         (let ((_g801809_
                                                (lambda (_g802805_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g802805_))))
                                           (let ((_g800831_
                                                  (lambda (_g802813_)
                                                    ((lambda (_L816_)
                                                       (let ()
                                                         (let ()
                                                           (_lp620_ _L706_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L757_
                            (cons (cons _E625_ (cons _L816_ '())) _r626_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g802813_))))
                                             (_g800831_
                                              (gx#stx-wrap-source
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons '()
                                                           (cons _L788_ '())))
                                               (gx#stx-source _L708_)))))))
                                     _g774785_))))
                             (_g772835_
                              (_generate-clause491_
                               _L708_
                               (cons _L757_ '())))))))
                     _g743754_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g741839_
                                                      (gx#genident 'E)))))))))
                                       (let ((_g718871_
                                              (lambda (_g721847_)
                                                (if (gx#stx-pair? _g721847_)
                                                    (let ((_e723850_
                                                           (gx#syntax-e
                                                            _g721847_)))
                                                      (let ((_hd724854_
                                                             (##car _e723850_))
                                                            (_tl725857_
                                                             (##cdr _e723850_)))
                                                        (if (gx#identifier?
                                                             _hd724854_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gx[1]#_g2845_|
                         _hd724854_)
                        ((lambda (_L860_)
                           (if (gx#stx-null? _L706_)
                               (if (if (gx#stx-list? _L860_)
                                       (not (gx#stx-null? _L860_))
                                       '#f)
                                   (cons (cons _E625_
                                               (cons (gx#stx-wrap-source
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'lambda)
                                                            (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'begin) _L860_)
                                '())))
              (gx#stx-source _L708_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         _r626_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _stx331_
                                    _L708_))
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; misplaced else"
                                _stx331_
                                _L708_)))
                         _tl725857_)
                        (_g719843_ _g721847_))
                    (_g719843_ _g721847_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g719843_ _g721847_)))))
                                         (_g718871_ _L708_)))))
                                 _tl635703_
                                 _hd634700_)))
                            (_g628689_ _g630693_)))))
                 (_g627875_ _rest623_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _lp620_)
                               _clauses617_
                               (gx#genident 'E)
                               '()))))
                       (let ((_bind496_ (_generate-clauses494_ _clauses489_)))
                         (let ((_g499516_
                                (lambda (_g500512_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g500512_))))
                           (let ((_g498613_
                                  (lambda (_g500520_)
                                    (if (gx#stx-pair/null? _g500520_)
                                        (if (fx>= (gx#stx-length _g500520_) '0)
                                            (let ((_g2843_ (gx#syntax-split-splice
                                                            _g500520_
                                                            '0)))
                                              (begin
                                                (let ((_g2844_ (values-count
                                                                _g2843_)))
                                                  (if (not (fx= _g2844_ 2))
                                                      (error "Context expects 2 values"
                                                             _g2844_)))
                                                (let ((_target502523_
                                                       (values-ref _g2843_ 0))
                                                      (_tl504526_
                                                       (values-ref _g2843_ 1)))
                                                  (if (gx#stx-null? _tl504526_)
                                                      (letrec ((_loop505529_
                                                                (lambda (_hd503533_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _bind-try509536_)
                          (if (gx#stx-pair? _hd503533_)
                              (let ((_e506539_ (gx#syntax-e _hd503533_)))
                                (let ((_lp-hd507543_ (##car _e506539_))
                                      (_lp-tl508546_ (##cdr _e506539_)))
                                  (_loop505529_
                                   _lp-tl508546_
                                   (cons _lp-hd507543_ _bind-try509536_))))
                              (let ((_bind-try510549_
                                     (reverse _bind-try509536_)))
                                ((lambda (_L553_)
                                   (let ()
                                     (let ((_g571579_
                                            (lambda (_g572575_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g572575_))))
                                       (let ((_g570609_
                                              (lambda (_g572583_)
                                                ((lambda (_L586_)
                                                   (let ()
                                                     (let ()
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let*)
                                                             (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#!void
                             (foldr (lambda (_g600603_ _g601606_)
                                      (cons _g600603_ _g601606_))
                                    '()
                                    _L553_))
                           (cons (cons _L586_ '()) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _g572583_))))
                                         (_g570609_ (car (last _bind496_)))))))
                                 _bind-try510549_))))))
                (_loop505529_ _target502523_ '()))
              (_g499516_ _g500520_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g499516_ _g500520_))
                                        (_g499516_ _g500520_)))))
                             (_g498613_ _bind496_))))))))))
          (let ((_g337356_
                 (lambda (_g338352_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g338352_))))
            (let ((_g336482_
                   (lambda (_g338360_)
                     (if (gx#stx-pair? _g338360_)
                         (let ((_e342363_ (gx#syntax-e _g338360_)))
                           (let ((_hd343367_ (##car _e342363_))
                                 (_tl344370_ (##cdr _e342363_)))
                             (if (gx#stx-pair? _tl344370_)
                                 (let ((_e345373_ (gx#syntax-e _tl344370_)))
                                   (let ((_hd346377_ (##car _e345373_))
                                         (_tl347380_ (##cdr _e345373_)))
                                     (if (gx#stx-pair? _tl347380_)
                                         (let ((_e348383_
                                                (gx#syntax-e _tl347380_)))
                                           (let ((_hd349387_ (##car _e348383_))
                                                 (_tl350390_
                                                  (##cdr _e348383_)))
                                             ((lambda (_L393_ _L395_ _L396_)
                                                (if (if (gx#identifier-list?
                                                         _L395_)
                                                        (gx#stx-list? _L393_)
                                                        '#f)
                                                    (let ((_g417425_
                                                           (lambda (_g418421_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g418421_))))
                                                      (let ((_g416478_
                                                             (lambda (_g418429_)
                                                               ((lambda (_L432_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let ((_g444452_
                                   (lambda (_g445448_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g445448_))))
                              (let ((_g443474_
                                     (lambda (_g445456_)
                                       ((lambda (_L459_)
                                          (let ()
                                            (let ()
                                              (cons (gx#datum->syntax '#f 'let)
                                                    (cons (cons (cons _L432_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _L396_ '()))
                        '())
                  (cons _L459_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _g445456_))))
                                (_g443474_
                                 (_generate334_
                                  _L432_
                                  (gx#syntax->list _L395_)
                                  _L393_))))))
                        _g418429_))))
                (_g416478_ (gx#genident 'e))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g337356_ _g338360_)))
                                              _tl350390_
                                              _hd349387_
                                              _hd346377_)))
                                         (_g337356_ _g338360_))))
                                 (_g337356_ _g338360_))))
                         (_g337356_ _g338360_)))))
              (_g336482_ _stx331_))))))))
