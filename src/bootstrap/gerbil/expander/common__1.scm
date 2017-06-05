(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gx[1]#_g2840_| (gx#core-quote-syntax 'error::t))
  (define |gx[1]#_g2841_| (gx#core-quote-syntax 'AST::t))
  (define |gx[1]#_g2844_| (gx#core-quote-syntax 'else))
  (begin
    (define |gx[:0:]#<error>|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-info|
       'runtime-identifier:
       |gx[1]#_g2840_|))
    (define |gx[:0:]#AST|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-info|
       'runtime-identifier:
       |gx[1]#_g2841_|))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx330_)
        (let ((_generate333_
               (lambda (_tgt485_ _kws487_ _clauses488_)
                 (let ((_generate1492_
                        (lambda (_where878_
                                 _hd880_
                                 _fender881_
                                 _body882_
                                 _E883_)
                          (letrec ((_recur885_
                                    (lambda (_hd888_ _tgt890_ _K891_)
                                      (let ((_g894906_
                                             (lambda (_g895902_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g895902_))))
                                        (let ((_g8931173_
                                               (lambda (_g895910_)
                                                 ((lambda ()
                                                    (if (gx#identifier?
                                                         _hd888_)
                                                        (if (gx#underscore?
                                                             _hd888_)
                                                            _K891_
                                                            (if (find (lambda (_g916918_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (gx#bound-identifier=? _g916918_ _hd888_))
                              _kws487_)
                        (let ((_g922937_
                               (lambda (_g923933_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g923933_))))
                          (let ((_g921988_
                                 (lambda (_g923941_)
                                   (if (gx#stx-pair? _g923941_)
                                       (let ((_e926944_
                                              (gx#syntax-e _g923941_)))
                                         (let ((_hd927948_ (##car _e926944_))
                                               (_tl928951_ (##cdr _e926944_)))
                                           (if (gx#stx-pair? _tl928951_)
                                               (let ((_e929954_
                                                      (gx#syntax-e
                                                       _tl928951_)))
                                                 (let ((_hd930958_
                                                        (##car _e929954_))
                                                       (_tl931961_
                                                        (##cdr _e929954_)))
                                                   (if (gx#stx-null?
                                                        _tl931961_)
                                                       ((lambda (_L964_ _L966_)
                                                          (let ()
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'if)
                          (cons (cons (gx#datum->syntax '#f 'and)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'identifier?)
                                                  (cons _L966_ '()))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'core-identifier=?)
                                                        (cons _L966_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _L964_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (cons _K891_ (cons _E883_ '()))))))
                _hd930958_
                _hd927948_)
               (_g922937_ _g923941_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g922937_ _g923941_))))
                                       (_g922937_ _g923941_)))))
                            (_g921988_ (list _tgt890_ _hd888_))))
                        (let ((_g9921007_
                               (lambda (_g9931003_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g9931003_))))
                          (let ((_g9911051_
                                 (lambda (_g9931011_)
                                   (if (gx#stx-pair? _g9931011_)
                                       (let ((_e9961014_
                                              (gx#syntax-e _g9931011_)))
                                         (let ((_hd9971018_ (##car _e9961014_))
                                               (_tl9981021_
                                                (##cdr _e9961014_)))
                                           (if (gx#stx-pair? _tl9981021_)
                                               (let ((_e9991024_
                                                      (gx#syntax-e
                                                       _tl9981021_)))
                                                 (let ((_hd10001028_
                                                        (##car _e9991024_))
                                                       (_tl10011031_
                                                        (##cdr _e9991024_)))
                                                   (if (gx#stx-null?
                                                        _tl10011031_)
                                                       ((lambda (_L1034_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L1036_)
                  (let ()
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _L1034_ (cons _L1036_ '())) '())
                                (cons _K891_ '())))))
                _hd10001028_
                _hd9971018_)
               (_g9921007_ _g9931011_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g9921007_ _g9931011_))))
                                       (_g9921007_ _g9931011_)))))
                            (_g9911051_ (list _tgt890_ _hd888_))))))
                (if (gx#stx-null? _hd888_)
                    (let ((_g10551063_
                           (lambda (_g10561059_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g10561059_))))
                      (let ((_g10541081_
                             (lambda (_g10561067_)
                               ((lambda (_L1070_)
                                  (let ()
                                    (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'stx-null?)
                                                      (cons _L1070_ '()))
                                                (cons _K891_
                                                      (cons _E883_ '()))))))
                                _g10561067_))))
                        (_g10541081_ _tgt890_)))
                    (if (gx#stx-datum? _hd888_)
                        (let ((_g10851104_
                               (lambda (_g10861100_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g10861100_))))
                          (let ((_g10841162_
                                 (lambda (_g10861108_)
                                   (if (gx#stx-pair? _g10861108_)
                                       (let ((_e10901111_
                                              (gx#syntax-e _g10861108_)))
                                         (let ((_hd10911115_
                                                (##car _e10901111_))
                                               (_tl10921118_
                                                (##cdr _e10901111_)))
                                           (if (gx#stx-pair? _tl10921118_)
                                               (let ((_e10931121_
                                                      (gx#syntax-e
                                                       _tl10921118_)))
                                                 (let ((_hd10941125_
                                                        (##car _e10931121_))
                                                       (_tl10951128_
                                                        (##cdr _e10931121_)))
                                                   (if (gx#stx-pair?
                                                        _tl10951128_)
                                                       (let ((_e10961131_
                                                              (gx#syntax-e
                                                               _tl10951128_)))
                                                         (let ((_hd10971135_
                                                                (##car _e10961131_))
                                                               (_tl10981138_
                                                                (##cdr _e10961131_)))
                                                           (if (gx#stx-null?
                                                                _tl10981138_)
                                                               ((lambda (_L1141_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L1143_
                                 _L1144_)
                          (let ()
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons _L1141_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-e)
                                                          (cons _L1144_ '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _L1143_ '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons _K891_ (cons _E883_ '()))))))
                        _hd10971135_
                        _hd10941125_
                        _hd10911115_)
                       (_g10851104_ _g10861108_))))
               (_g10851104_ _g10861108_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g10851104_ _g10861108_))))
                                       (_g10851104_ _g10861108_)))))
                            (_g10841162_
                             (list _tgt890_
                                   _hd888_
                                   (let ((_e1166_ (gx#stx-e _hd888_)))
                                     (if (let ((_$e1169_ (keyword? _e1166_)))
                                           (if _$e1169_
                                               _$e1169_
                                               (immediate? _e1166_)))
                                         (gx#datum->syntax '#f 'eq?)
                                         (if (number? _e1166_)
                                             (gx#datum->syntax '#f 'eqv?)
                                             (gx#datum->syntax
                                              '#f
                                              'equal?))))))))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _stx330_
                         _where878_
                         _hd888_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ((_g8921396_
                                                 (lambda (_g8951177_)
                                                   (if (gx#stx-pair?
                                                        _g8951177_)
                                                       (let ((_e8981180_
                                                              (gx#syntax-e
                                                               _g8951177_)))
                                                         (let ((_hd8991184_
                                                                (##car _e8981180_))
                                                               (_tl9001187_
                                                                (##cdr _e8981180_)))
                                                           ((lambda (_L1190_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L1192_)
                      (let ((_g12031211_
                             (lambda (_g12041207_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g12041207_))))
                        (let ((_g12021392_
                               (lambda (_g12041215_)
                                 ((lambda (_L1218_)
                                    (let ()
                                      (let ((_g12301238_
                                             (lambda (_g12311234_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g12311234_))))
                                        (let ((_g12291388_
                                               (lambda (_g12311242_)
                                                 ((lambda (_L1245_)
                                                    (let ()
                                                      (let ((_g12581266_
                                                             (lambda (_g12591262_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g12591262_))))
                                                        (let ((_g12571384_
                                                               (lambda (_g12591270_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda (_L1273_)
                            (let ()
                              (let ((_g12861294_
                                     (lambda (_g12871290_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g12871290_))))
                                (let ((_g12851380_
                                       (lambda (_g12871298_)
                                         ((lambda (_L1301_)
                                            (let ()
                                              (let ((_g13141322_
                                                     (lambda (_g13151318_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g13151318_))))
                                                (let ((_g13131376_
                                                       (lambda (_g13151326_)
                                                         ((lambda (_L1329_)
                                                            (let ()
                                                              (let ((_g13421350_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g13431346_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g13431346_))))
                        (let ((_g13411372_
                               (lambda (_g13431354_)
                                 ((lambda (_L1357_)
                                    (let ()
                                      (let ()
                                        (cons (gx#datum->syntax '#f 'if)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-pair?)
                                                          (cons _L1218_ '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'let)
                        (cons (cons (cons _L1245_
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'syntax-e)
                                                      (cons _L1218_ '()))
                                                '()))
                                    '())
                              (cons (cons (gx#datum->syntax '#f 'let)
                                          (cons (cons (cons _L1273_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 '##car)
                                (cons _L1245_ '()))
                          '()))
              (cons (cons _L1301_
                          (cons (cons (gx#datum->syntax '#f '##cdr)
                                      (cons _L1245_ '()))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _L1329_ '())))
                                    '())))
                  (cons _L1357_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _g13431354_))))
                          (_g13411372_ _E883_)))))
                  _g13151326_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g13131376_
                                                   (_recur885_
                                                    _L1192_
                                                    _L1273_
                                                    (_recur885_
                                                     _L1190_
                                                     _L1301_
                                                     _K891_)))))))
                                          _g12871298_))))
                                  (_g12851380_ (gx#genident 'tl))))))
                          _g12591270_))))
                  (_g12571384_ (gx#genident 'hd))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g12311242_))))
                                          (_g12291388_ (gx#genident 'e))))))
                                  _g12041215_))))
                          (_g12021392_ _tgt890_))))
                    _tl9001187_
                    _hd8991184_)))
               (_g8931173_ _g8951177_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g8921396_ _hd888_)))))))
                            (_recur885_
                             _hd880_
                             _tgt485_
                             (cons (gx#datum->syntax '#f 'if)
                                   (cons _fender881_
                                         (cons _body882_
                                               (cons _E883_ '())))))))))
                   (let ((_generate-clause490_
                          (lambda (_hd1400_ _E1402_)
                            (let ((_g14061433_
                                   (lambda (_g14071429_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g14071429_))))
                              (let ((_g14051444_
                                     (lambda (_g14071437_)
                                       ((lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _stx330_
                                           _hd1400_))))))
                                (let ((_g14041502_
                                       (lambda (_g14071448_)
                                         (if (gx#stx-pair? _g14071448_)
                                             (let ((_e14191451_
                                                    (gx#syntax-e _g14071448_)))
                                               (let ((_hd14201455_
                                                      (##car _e14191451_))
                                                     (_tl14211458_
                                                      (##cdr _e14191451_)))
                                                 (if (gx#stx-pair?
                                                      _tl14211458_)
                                                     (let ((_e14221461_
                                                            (gx#syntax-e
                                                             _tl14211458_)))
                                                       (let ((_hd14231465_
                                                              (##car _e14221461_))
                                                             (_tl14241468_
                                                              (##cdr _e14221461_)))
                                                         (if (gx#stx-pair?
                                                              _tl14241468_)
                                                             (let ((_e14251471_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl14241468_)))
                       (let ((_hd14261475_ (##car _e14251471_))
                             (_tl14271478_ (##cdr _e14251471_)))
                         (if (gx#stx-null? _tl14271478_)
                             ((lambda (_L1481_ _L1483_ _L1484_)
                                (_generate1492_
                                 _hd1400_
                                 _L1484_
                                 _L1483_
                                 _L1481_
                                 _E1402_))
                              _hd14261475_
                              _hd14231465_
                              _hd14201455_)
                             (_g14051444_ _g14071448_))))
                     (_g14051444_ _g14071448_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g14051444_
                                                      _g14071448_))))
                                             (_g14051444_ _g14071448_)))))
                                  (let ((_g14031544_
                                         (lambda (_g14071506_)
                                           (if (gx#stx-pair? _g14071506_)
                                               (let ((_e14101509_
                                                      (gx#syntax-e
                                                       _g14071506_)))
                                                 (let ((_hd14111513_
                                                        (##car _e14101509_))
                                                       (_tl14121516_
                                                        (##cdr _e14101509_)))
                                                   (if (gx#stx-pair?
                                                        _tl14121516_)
                                                       (let ((_e14131519_
                                                              (gx#syntax-e
                                                               _tl14121516_)))
                                                         (let ((_hd14141523_
                                                                (##car _e14131519_))
                                                               (_tl14151526_
                                                                (##cdr _e14131519_)))
                                                           (if (gx#stx-null?
                                                                _tl14151526_)
                                                               ((lambda (_L1529_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L1531_)
                          (_generate1492_
                           _hd1400_
                           _L1531_
                           '#t
                           _L1529_
                           _E1402_))
                        _hd14141523_
                        _hd14111513_)
                       (_g14041502_ _g14071506_))))
               (_g14041502_ _g14071506_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g14041502_ _g14071506_)))))
                                    (_g14031544_ _hd1400_))))))))
                     (let ((_generate-clauses493_
                            (lambda (_clauses616_)
                              ((letrec ((_lp619_ (lambda (_rest622_
                                                          _E624_
                                                          _r625_)
                                                   (let ((_g628640_
                                                          (lambda (_g629636_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g629636_))))
                                                     (let ((_g627688_
                                                            (lambda (_g629644_)
                                                              ((lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((_g651659_
                                (lambda (_g652655_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g652655_))))
                           (let ((_g650684_
                                  (lambda (_g652663_)
                                    ((lambda (_L666_)
                                       (let ()
                                         (cons (cons _E624_
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
                                                        (cons _L666_ '()))))
                                      '())))
                    (gx#stx-source _stx330_))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _r625_)))
                                     _g652663_))))
                             (_g650684_ _tgt485_))))))))
               (let ((_g626874_
                      (lambda (_g629692_)
                        (if (gx#stx-pair? _g629692_)
                            (let ((_e632695_ (gx#syntax-e _g629692_)))
                              (let ((_hd633699_ (##car _e632695_))
                                    (_tl634702_ (##cdr _e632695_)))
                                ((lambda (_L705_ _L707_)
                                   (let ((_g719730_
                                          (lambda (_g720726_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g720726_))))
                                     (let ((_g718842_
                                            (lambda (_g720734_)
                                              ((lambda ()
                                                 (let ((_g741749_
                                                        (lambda (_g742745_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g742745_))))
                                                   (let ((_g740838_
                                                          (lambda (_g742753_)
                                                            ((lambda (_L756_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((_g772780_
                                (lambda (_g773776_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g773776_))))
                           (let ((_g771834_
                                  (lambda (_g773784_)
                                    ((lambda (_L787_)
                                       (let ()
                                         (let ((_g800808_
                                                (lambda (_g801804_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g801804_))))
                                           (let ((_g799830_
                                                  (lambda (_g801812_)
                                                    ((lambda (_L815_)
                                                       (let ()
                                                         (let ()
                                                           (_lp619_ _L705_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L756_
                            (cons (cons _E624_ (cons _L815_ '())) _r625_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g801812_))))
                                             (_g799830_
                                              (gx#stx-wrap-source
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons '()
                                                           (cons _L787_ '())))
                                               (gx#stx-source _L707_)))))))
                                     _g773784_))))
                             (_g771834_
                              (_generate-clause490_
                               _L707_
                               (cons _L756_ '())))))))
                     _g742753_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g740838_
                                                      (gx#genident 'E)))))))))
                                       (let ((_g717870_
                                              (lambda (_g720846_)
                                                (if (gx#stx-pair? _g720846_)
                                                    (let ((_e722849_
                                                           (gx#syntax-e
                                                            _g720846_)))
                                                      (let ((_hd723853_
                                                             (##car _e722849_))
                                                            (_tl724856_
                                                             (##cdr _e722849_)))
                                                        (if (gx#identifier?
                                                             _hd723853_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gx[1]#_g2844_|
                         _hd723853_)
                        ((lambda (_L859_)
                           (if (gx#stx-null? _L705_)
                               (if (if (gx#stx-list? _L859_)
                                       (not (gx#stx-null? _L859_))
                                       '#f)
                                   (cons (cons _E624_
                                               (cons (gx#stx-wrap-source
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'lambda)
                                                            (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'begin) _L859_)
                                '())))
              (gx#stx-source _L707_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         _r625_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _stx330_
                                    _L707_))
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; misplaced else"
                                _stx330_
                                _L707_)))
                         _tl724856_)
                        (_g718842_ _g720846_))
                    (_g718842_ _g720846_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g718842_ _g720846_)))))
                                         (_g717870_ _L707_)))))
                                 _tl634702_
                                 _hd633699_)))
                            (_g627688_ _g629692_)))))
                 (_g626874_ _rest622_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _lp619_)
                               _clauses616_
                               (gx#genident 'E)
                               '()))))
                       (let ((_bind495_ (_generate-clauses493_ _clauses488_)))
                         (let ((_g498515_
                                (lambda (_g499511_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g499511_))))
                           (let ((_g497612_
                                  (lambda (_g499519_)
                                    (if (gx#stx-pair/null? _g499519_)
                                        (if (fx>= (gx#stx-length _g499519_) '0)
                                            (let ((_g2842_ (gx#syntax-split-splice
                                                            _g499519_
                                                            '0)))
                                              (begin
                                                (let ((_g2843_ (values-count
                                                                _g2842_)))
                                                  (if (not (fx= _g2843_ 2))
                                                      (error "Context expects 2 values"
                                                             _g2843_)))
                                                (let ((_target501522_
                                                       (values-ref _g2842_ 0))
                                                      (_tl503525_
                                                       (values-ref _g2842_ 1)))
                                                  (if (gx#stx-null? _tl503525_)
                                                      (letrec ((_loop504528_
                                                                (lambda (_hd502532_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _bind-try508535_)
                          (if (gx#stx-pair? _hd502532_)
                              (let ((_e505538_ (gx#syntax-e _hd502532_)))
                                (let ((_lp-hd506542_ (##car _e505538_))
                                      (_lp-tl507545_ (##cdr _e505538_)))
                                  (_loop504528_
                                   _lp-tl507545_
                                   (cons _lp-hd506542_ _bind-try508535_))))
                              (let ((_bind-try509548_
                                     (reverse _bind-try508535_)))
                                ((lambda (_L552_)
                                   (let ()
                                     (let ((_g570578_
                                            (lambda (_g571574_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g571574_))))
                                       (let ((_g569608_
                                              (lambda (_g571582_)
                                                ((lambda (_L585_)
                                                   (let ()
                                                     (let ()
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let*)
                                                             (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#!void
                             (foldr (lambda (_g599602_ _g600605_)
                                      (cons _g599602_ _g600605_))
                                    '()
                                    _L552_))
                           (cons (cons _L585_ '()) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _g571582_))))
                                         (_g569608_ (car (last _bind495_)))))))
                                 _bind-try509548_))))))
                (_loop504528_ _target501522_ '()))
              (_g498515_ _g499519_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g498515_ _g499519_))
                                        (_g498515_ _g499519_)))))
                             (_g497612_ _bind495_))))))))))
          (let ((_g336355_
                 (lambda (_g337351_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g337351_))))
            (let ((_g335481_
                   (lambda (_g337359_)
                     (if (gx#stx-pair? _g337359_)
                         (let ((_e341362_ (gx#syntax-e _g337359_)))
                           (let ((_hd342366_ (##car _e341362_))
                                 (_tl343369_ (##cdr _e341362_)))
                             (if (gx#stx-pair? _tl343369_)
                                 (let ((_e344372_ (gx#syntax-e _tl343369_)))
                                   (let ((_hd345376_ (##car _e344372_))
                                         (_tl346379_ (##cdr _e344372_)))
                                     (if (gx#stx-pair? _tl346379_)
                                         (let ((_e347382_
                                                (gx#syntax-e _tl346379_)))
                                           (let ((_hd348386_ (##car _e347382_))
                                                 (_tl349389_
                                                  (##cdr _e347382_)))
                                             ((lambda (_L392_ _L394_ _L395_)
                                                (if (if (gx#identifier-list?
                                                         _L394_)
                                                        (gx#stx-list? _L392_)
                                                        '#f)
                                                    (let ((_g416424_
                                                           (lambda (_g417420_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g417420_))))
                                                      (let ((_g415477_
                                                             (lambda (_g417428_)
                                                               ((lambda (_L431_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let ((_g443451_
                                   (lambda (_g444447_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g444447_))))
                              (let ((_g442473_
                                     (lambda (_g444455_)
                                       ((lambda (_L458_)
                                          (let ()
                                            (let ()
                                              (cons (gx#datum->syntax '#f 'let)
                                                    (cons (cons (cons _L431_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _L395_ '()))
                        '())
                  (cons _L458_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _g444455_))))
                                (_g442473_
                                 (_generate333_
                                  _L431_
                                  (gx#syntax->list _L394_)
                                  _L392_))))))
                        _g417428_))))
                (_g415477_ (gx#genident 'e))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g336355_ _g337359_)))
                                              _tl349389_
                                              _hd348386_
                                              _hd345376_)))
                                         (_g336355_ _g337359_))))
                                 (_g336355_ _g337359_))))
                         (_g336355_ _g337359_)))))
              (_g335481_ _stx330_))))))))
