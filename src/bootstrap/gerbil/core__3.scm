(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<sugar>$<sugar:1>[1]#_g31557_|
    (gx#make-syntax-quote 'values #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:1>[1]#_g31558_|
    (gx#make-syntax-quote 'values #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:1>[1]#_g31567_|
    (gx#make-syntax-quote '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:1>[1]#_g31568_|
    (gx#make-syntax-quote 'else #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:1>[1]#_g31569_|
    (gx#make-syntax-quote 'else #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#defrules|
      (lambda (_$stx1632_)
        (let* ((_g16361664_
                (lambda (_g16371660_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g16371660_)))
               (_g16351765_
                (lambda (_g16371668_)
                  (if (gx#stx-pair? _g16371668_)
                      (let ((_e16411671_ (gx#syntax-e _g16371668_)))
                        (let ((_hd16421675_ (##car _e16411671_))
                              (_tl16431678_ (##cdr _e16411671_)))
                          (if (gx#stx-pair? _tl16431678_)
                              (let ((_e16441681_ (gx#syntax-e _tl16431678_)))
                                (let ((_hd16451685_ (##car _e16441681_))
                                      (_tl16461688_ (##cdr _e16441681_)))
                                  (if (gx#stx-pair? _tl16461688_)
                                      (let ((_e16471691_
                                             (gx#syntax-e _tl16461688_)))
                                        (let ((_hd16481695_
                                               (##car _e16471691_))
                                              (_tl16491698_
                                               (##cdr _e16471691_)))
                                          (if (gx#stx-pair/null? _tl16491698_)
                                              (if (fx>= (gx#stx-length
                                                         _tl16491698_)
                                                        '0)
                                                  (let ((_g31535_
                                                         (gx#syntax-split-splice
                                                          _tl16491698_
                                                          '0)))
                                                    (begin
                                                      (let ((_g31536_
                                                             (values-count
                                                              _g31535_)))
                                                        (if (not (fx= _g31536_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g31536_)))
              (let ((_target16501701_ (values-ref _g31535_ 0))
                    (_tl16521704_ (values-ref _g31535_ 1)))
                (if (gx#stx-null? _tl16521704_)
                    (letrec ((_loop16531707_
                              (lambda (_hd16511711_ _clauses16571714_)
                                (if (gx#stx-pair? _hd16511711_)
                                    (let ((_e16541717_
                                           (gx#syntax-e _hd16511711_)))
                                      (let ((_lp-hd16551721_
                                             (##car _e16541717_))
                                            (_lp-tl16561724_
                                             (##cdr _e16541717_)))
                                        (_loop16531707_
                                         _lp-tl16561724_
                                         (cons _lp-hd16551721_
                                               _clauses16571714_))))
                                    (let ((_clauses16581727_
                                           (reverse _clauses16571714_)))
                                      ((lambda (_L1731_ _L1733_ _L1734_)
                                         (if (gx#identifier? _L1734_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'define-syntax)
                                                   (cons _L1734_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'syntax-rules)
                             (cons _L1733_
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g17561759_ _g17571762_)
                                              (cons _g17561759_ _g17571762_))
                                            '()
                                            _L1731_))))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g16361664_ _g16371668_)))
                                       _clauses16581727_
                                       _hd16481695_
                                       _hd16451685_))))))
                      (_loop16531707_ _target16501701_ '()))
                    (_g16361664_ _g16371668_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g16361664_ _g16371668_))
                                              (_g16361664_ _g16371668_))))
                                      (_g16361664_ _g16371668_))))
                              (_g16361664_ _g16371668_))))
                      (_g16361664_ _g16371668_)))))
          (_g16351765_ _$stx1632_))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#defsyntax%|
      (lambda (_$stx1770_)
        (let* ((_g17751814_
                (lambda (_g17761810_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g17761810_)))
               (_g17741869_
                (lambda (_g17761818_)
                  (if (gx#stx-pair? _g17761818_)
                      (let ((_e18001821_ (gx#syntax-e _g17761818_)))
                        (let ((_hd18011825_ (##car _e18001821_))
                              (_tl18021828_ (##cdr _e18001821_)))
                          (if (gx#stx-pair? _tl18021828_)
                              (let ((_e18031831_ (gx#syntax-e _tl18021828_)))
                                (let ((_hd18041835_ (##car _e18031831_))
                                      (_tl18051838_ (##cdr _e18031831_)))
                                  (if (gx#stx-pair? _tl18051838_)
                                      (let ((_e18061841_
                                             (gx#syntax-e _tl18051838_)))
                                        (let ((_hd18071845_
                                               (##car _e18061841_))
                                              (_tl18081848_
                                               (##cdr _e18061841_)))
                                          (if (gx#stx-null? _tl18081848_)
                                              ((lambda (_L1851_ _L1853_)
                                                 (if (gx#identifier? _L1853_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'define-syntax)
                                                           (cons _L1853_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L1851_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g17751814_
                                                      _g17761818_)))
                                               _hd18071845_
                                               _hd18041835_)
                                              (_g17751814_ _g17761818_))))
                                      (_g17751814_ _g17761818_))))
                              (_g17751814_ _g17761818_))))
                      (_g17751814_ _g17761818_))))
               (_g17731967_
                (lambda (_g17761873_)
                  (if (gx#stx-pair? _g17761873_)
                      (let ((_e17801876_ (gx#syntax-e _g17761873_)))
                        (let ((_hd17811880_ (##car _e17801876_))
                              (_tl17821883_ (##cdr _e17801876_)))
                          (if (gx#stx-pair? _tl17821883_)
                              (let ((_e17831886_ (gx#syntax-e _tl17821883_)))
                                (let ((_hd17841890_ (##car _e17831886_))
                                      (_tl17851893_ (##cdr _e17831886_)))
                                  (if (gx#stx-pair? _hd17841890_)
                                      (let ((_e17861896_
                                             (gx#syntax-e _hd17841890_)))
                                        (let ((_hd17871900_
                                               (##car _e17861896_))
                                              (_tl17881903_
                                               (##cdr _e17861896_)))
                                          (if (gx#stx-pair/null? _tl17851893_)
                                              (if (fx>= (gx#stx-length
                                                         _tl17851893_)
                                                        '0)
                                                  (let ((_g31537_
                                                         (gx#syntax-split-splice
                                                          _tl17851893_
                                                          '0)))
                                                    (begin
                                                      (let ((_g31538_
                                                             (values-count
                                                              _g31537_)))
                                                        (if (not (fx= _g31538_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g31538_)))
              (let ((_target17891906_ (values-ref _g31537_ 0))
                    (_tl17911909_ (values-ref _g31537_ 1)))
                (if (gx#stx-null? _tl17911909_)
                    (letrec ((_loop17921912_
                              (lambda (_hd17901916_ _body17961919_)
                                (if (gx#stx-pair? _hd17901916_)
                                    (let ((_e17931922_
                                           (gx#syntax-e _hd17901916_)))
                                      (let ((_lp-hd17941926_
                                             (##car _e17931922_))
                                            (_lp-tl17951929_
                                             (##cdr _e17931922_)))
                                        (_loop17921912_
                                         _lp-tl17951929_
                                         (cons _lp-hd17941926_
                                               _body17961919_))))
                                    (let ((_body17971932_
                                           (reverse _body17961919_)))
                                      ((lambda (_L1936_ _L1938_ _L1939_)
                                         (if (gx#identifier? _L1939_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'define-syntax)
                                                   (cons _L1939_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'lambda%)
                             (cons _L1938_
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g19581961_ _g19591964_)
                                              (cons _g19581961_ _g19591964_))
                                            '()
                                            _L1936_))))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g17741869_ _g17761873_)))
                                       _body17971932_
                                       _tl17881903_
                                       _hd17871900_))))))
                      (_loop17921912_ _target17891906_ '()))
                    (_g17741869_ _g17761873_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g17741869_ _g17761873_))
                                              (_g17741869_ _g17761873_))))
                                      (_g17741869_ _g17761873_))))
                              (_g17741869_ _g17761873_))))
                      (_g17741869_ _g17761873_)))))
          (_g17731967_ _$stx1770_))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#defalias|
      (lambda (_$stx1972_)
        (let* ((_g19761994_
                (lambda (_g19771990_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g19771990_)))
               (_g19752049_
                (lambda (_g19771998_)
                  (if (gx#stx-pair? _g19771998_)
                      (let ((_e19802001_ (gx#syntax-e _g19771998_)))
                        (let ((_hd19812005_ (##car _e19802001_))
                              (_tl19822008_ (##cdr _e19802001_)))
                          (if (gx#stx-pair? _tl19822008_)
                              (let ((_e19832011_ (gx#syntax-e _tl19822008_)))
                                (let ((_hd19842015_ (##car _e19832011_))
                                      (_tl19852018_ (##cdr _e19832011_)))
                                  (if (gx#stx-pair? _tl19852018_)
                                      (let ((_e19862021_
                                             (gx#syntax-e _tl19852018_)))
                                        (let ((_hd19872025_
                                               (##car _e19862021_))
                                              (_tl19882028_
                                               (##cdr _e19862021_)))
                                          (if (gx#stx-null? _tl19882028_)
                                              ((lambda (_L2031_ _L2033_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'define-alias)
                                                       (cons _L2033_
                                                             (cons _L2031_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd19872025_
                                               _hd19842015_)
                                              (_g19761994_ _g19771998_))))
                                      (_g19761994_ _g19771998_))))
                              (_g19761994_ _g19771998_))))
                      (_g19761994_ _g19771998_)))))
          (_g19752049_ _$stx1972_))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#define|
      (lambda (_$stx2053_)
        (let* ((_g20582097_
                (lambda (_g20592093_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g20592093_)))
               (_g20572152_
                (lambda (_g20592101_)
                  (if (gx#stx-pair? _g20592101_)
                      (let ((_e20832104_ (gx#syntax-e _g20592101_)))
                        (let ((_hd20842108_ (##car _e20832104_))
                              (_tl20852111_ (##cdr _e20832104_)))
                          (if (gx#stx-pair? _tl20852111_)
                              (let ((_e20862114_ (gx#syntax-e _tl20852111_)))
                                (let ((_hd20872118_ (##car _e20862114_))
                                      (_tl20882121_ (##cdr _e20862114_)))
                                  (if (gx#stx-pair? _tl20882121_)
                                      (let ((_e20892124_
                                             (gx#syntax-e _tl20882121_)))
                                        (let ((_hd20902128_
                                               (##car _e20892124_))
                                              (_tl20912131_
                                               (##cdr _e20892124_)))
                                          (if (gx#stx-null? _tl20912131_)
                                              ((lambda (_L2134_ _L2136_)
                                                 (if (gx#identifier? _L2136_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'define-values)
                                                           (cons (cons _L2136_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '())
                         (cons _L2134_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g20582097_
                                                      _g20592101_)))
                                               _hd20902128_
                                               _hd20872118_)
                                              (_g20582097_ _g20592101_))))
                                      (_g20582097_ _g20592101_))))
                              (_g20582097_ _g20592101_))))
                      (_g20582097_ _g20592101_))))
               (_g20562250_
                (lambda (_g20592156_)
                  (if (gx#stx-pair? _g20592156_)
                      (let ((_e20632159_ (gx#syntax-e _g20592156_)))
                        (let ((_hd20642163_ (##car _e20632159_))
                              (_tl20652166_ (##cdr _e20632159_)))
                          (if (gx#stx-pair? _tl20652166_)
                              (let ((_e20662169_ (gx#syntax-e _tl20652166_)))
                                (let ((_hd20672173_ (##car _e20662169_))
                                      (_tl20682176_ (##cdr _e20662169_)))
                                  (if (gx#stx-pair? _hd20672173_)
                                      (let ((_e20692179_
                                             (gx#syntax-e _hd20672173_)))
                                        (let ((_hd20702183_
                                               (##car _e20692179_))
                                              (_tl20712186_
                                               (##cdr _e20692179_)))
                                          (if (gx#stx-pair/null? _tl20682176_)
                                              (if (fx>= (gx#stx-length
                                                         _tl20682176_)
                                                        '0)
                                                  (let ((_g31539_
                                                         (gx#syntax-split-splice
                                                          _tl20682176_
                                                          '0)))
                                                    (begin
                                                      (let ((_g31540_
                                                             (values-count
                                                              _g31539_)))
                                                        (if (not (fx= _g31540_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g31540_)))
              (let ((_target20722189_ (values-ref _g31539_ 0))
                    (_tl20742192_ (values-ref _g31539_ 1)))
                (if (gx#stx-null? _tl20742192_)
                    (letrec ((_loop20752195_
                              (lambda (_hd20732199_ _body20792202_)
                                (if (gx#stx-pair? _hd20732199_)
                                    (let ((_e20762205_
                                           (gx#syntax-e _hd20732199_)))
                                      (let ((_lp-hd20772209_
                                             (##car _e20762205_))
                                            (_lp-tl20782212_
                                             (##cdr _e20762205_)))
                                        (_loop20752195_
                                         _lp-tl20782212_
                                         (cons _lp-hd20772209_
                                               _body20792202_))))
                                    (let ((_body20802215_
                                           (reverse _body20792202_)))
                                      ((lambda (_L2219_ _L2221_ _L2222_)
                                         (if (gx#identifier? _L2222_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'define-values)
                                                   (cons (cons _L2222_ '())
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'lambda%)
                             (cons _L2221_
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g22412244_ _g22422247_)
                                              (cons _g22412244_ _g22422247_))
                                            '()
                                            _L2219_))))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g20572152_ _g20592156_)))
                                       _body20802215_
                                       _tl20712186_
                                       _hd20702183_))))))
                      (_loop20752195_ _target20722189_ '()))
                    (_g20572152_ _g20592156_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g20572152_ _g20592156_))
                                              (_g20572152_ _g20592156_))))
                                      (_g20572152_ _g20592156_))))
                              (_g20572152_ _g20592156_))))
                      (_g20572152_ _g20592156_)))))
          (_g20562250_ _$stx2053_))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#let*-values|
      (lambda (_$stx2255_)
        (let* ((_g22602305_
                (lambda (_g22612301_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g22612301_)))
               (_g22592406_
                (lambda (_g22612309_)
                  (if (gx#stx-pair? _g22612309_)
                      (let ((_e22822312_ (gx#syntax-e _g22612309_)))
                        (let ((_hd22832316_ (##car _e22822312_))
                              (_tl22842319_ (##cdr _e22822312_)))
                          (if (gx#stx-pair? _tl22842319_)
                              (let ((_e22852322_ (gx#syntax-e _tl22842319_)))
                                (let ((_hd22862326_ (##car _e22852322_))
                                      (_tl22872329_ (##cdr _e22852322_)))
                                  (if (gx#stx-pair? _hd22862326_)
                                      (let ((_e22882332_
                                             (gx#syntax-e _hd22862326_)))
                                        (let ((_hd22892336_
                                               (##car _e22882332_))
                                              (_tl22902339_
                                               (##cdr _e22882332_)))
                                          (if (gx#stx-pair/null? _tl22872329_)
                                              (if (fx>= (gx#stx-length
                                                         _tl22872329_)
                                                        '0)
                                                  (let ((_g31541_
                                                         (gx#syntax-split-splice
                                                          _tl22872329_
                                                          '0)))
                                                    (begin
                                                      (let ((_g31542_
                                                             (values-count
                                                              _g31541_)))
                                                        (if (not (fx= _g31542_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g31542_)))
              (let ((_target22912342_ (values-ref _g31541_ 0))
                    (_tl22932345_ (values-ref _g31541_ 1)))
                (if (gx#stx-null? _tl22932345_)
                    (letrec ((_loop22942348_
                              (lambda (_hd22922352_ _body22982355_)
                                (if (gx#stx-pair? _hd22922352_)
                                    (let ((_e22952358_
                                           (gx#syntax-e _hd22922352_)))
                                      (let ((_lp-hd22962362_
                                             (##car _e22952358_))
                                            (_lp-tl22972365_
                                             (##cdr _e22952358_)))
                                        (_loop22942348_
                                         _lp-tl22972365_
                                         (cons _lp-hd22962362_
                                               _body22982355_))))
                                    (let ((_body22992368_
                                           (reverse _body22982355_)))
                                      ((lambda (_L2372_
                                                _L2374_
                                                _L2375_
                                                _L2376_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                'let-values)
                                               (cons (cons _L2375_ '())
                                                     (cons (cons _L2376_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L2374_
                               (begin
                                 '#!void
                                 (foldr (lambda (_g23972400_ _g23982403_)
                                          (cons _g23972400_ _g23982403_))
                                        '()
                                        _L2372_))))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _body22992368_
                                       _tl22902339_
                                       _hd22892336_
                                       _hd22832316_))))))
                      (_loop22942348_ _target22912342_ '()))
                    (_g22602305_ _g22612309_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g22602305_ _g22612309_))
                                              (_g22602305_ _g22612309_))))
                                      (_g22602305_ _g22612309_))))
                              (_g22602305_ _g22612309_))))
                      (_g22602305_ _g22612309_))))
               (_g22582488_
                (lambda (_g22612410_)
                  (if (gx#stx-pair? _g22612410_)
                      (let ((_e22632413_ (gx#syntax-e _g22612410_)))
                        (let ((_hd22642417_ (##car _e22632413_))
                              (_tl22652420_ (##cdr _e22632413_)))
                          (if (gx#stx-pair? _tl22652420_)
                              (let ((_e22662423_ (gx#syntax-e _tl22652420_)))
                                (let ((_hd22672427_ (##car _e22662423_))
                                      (_tl22682430_ (##cdr _e22662423_)))
                                  (if (gx#stx-null? _hd22672427_)
                                      (if (gx#stx-pair/null? _tl22682430_)
                                          (if (fx>= (gx#stx-length
                                                     _tl22682430_)
                                                    '0)
                                              (let ((_g31543_
                                                     (gx#syntax-split-splice
                                                      _tl22682430_
                                                      '0)))
                                                (begin
                                                  (let ((_g31544_
                                                         (values-count
                                                          _g31543_)))
                                                    (if (not (fx= _g31544_ 2))
                                                        (error "Context expects 2 values"
                                                               _g31544_)))
                                                  (let ((_target22692433_
                                                         (values-ref
                                                          _g31543_
                                                          0))
                                                        (_tl22712436_
                                                         (values-ref
                                                          _g31543_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl22712436_)
                                                        (letrec ((_loop22722439_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd22702443_ _body22762446_)
                            (if (gx#stx-pair? _hd22702443_)
                                (let ((_e22732449_ (gx#syntax-e _hd22702443_)))
                                  (let ((_lp-hd22742453_ (##car _e22732449_))
                                        (_lp-tl22752456_ (##cdr _e22732449_)))
                                    (_loop22722439_
                                     _lp-tl22752456_
                                     (cons _lp-hd22742453_ _body22762446_))))
                                (let ((_body22772459_
                                       (reverse _body22762446_)))
                                  ((lambda (_L2463_)
                                     (cons (gx#datum->syntax '#f 'let-values)
                                           (cons '()
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g24792482_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g24802485_)
                    (cons _g24792482_ _g24802485_))
                  '()
                  _L2463_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _body22772459_))))))
                  (_loop22722439_ _target22692433_ '()))
                (_g22592406_ _g22612410_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g22592406_ _g22612410_))
                                          (_g22592406_ _g22612410_))
                                      (_g22592406_ _g22612410_))))
                              (_g22592406_ _g22612410_))))
                      (_g22592406_ _g22612410_)))))
          (_g22582488_ _$stx2255_))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#let|
      (lambda (_$stx2494_)
        (let* ((_g24992563_
                (lambda (_g25002559_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g25002559_)))
               (_g24982648_
                (lambda (_g25002567_)
                  (if (gx#stx-pair? _g25002567_)
                      (let ((_e25432570_ (gx#syntax-e _g25002567_)))
                        (let ((_hd25442574_ (##car _e25432570_))
                              (_tl25452577_ (##cdr _e25432570_)))
                          (if (gx#stx-pair? _tl25452577_)
                              (let ((_e25462580_ (gx#syntax-e _tl25452577_)))
                                (let ((_hd25472584_ (##car _e25462580_))
                                      (_tl25482587_ (##cdr _e25462580_)))
                                  (if (gx#stx-pair/null? _tl25482587_)
                                      (if (fx>= (gx#stx-length _tl25482587_)
                                                '0)
                                          (let ((_g31545_
                                                 (gx#syntax-split-splice
                                                  _tl25482587_
                                                  '0)))
                                            (begin
                                              (let ((_g31546_
                                                     (values-count _g31545_)))
                                                (if (not (fx= _g31546_ 2))
                                                    (error "Context expects 2 values"
                                                           _g31546_)))
                                              (let ((_target25492590_
                                                     (values-ref _g31545_ 0))
                                                    (_tl25512593_
                                                     (values-ref _g31545_ 1)))
                                                (if (gx#stx-null? _tl25512593_)
                                                    (letrec ((_loop25522596_
                                                              (lambda (_hd25502600_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body25562603_)
                        (if (gx#stx-pair? _hd25502600_)
                            (let ((_e25532606_ (gx#syntax-e _hd25502600_)))
                              (let ((_lp-hd25542610_ (##car _e25532606_))
                                    (_lp-tl25552613_ (##cdr _e25532606_)))
                                (_loop25522596_
                                 _lp-tl25552613_
                                 (cons _lp-hd25542610_ _body25562603_))))
                            (let ((_body25572616_ (reverse _body25562603_)))
                              ((lambda (_L2620_ _L2622_)
                                 (cons (gx#datum->syntax '#f '~let)
                                       (cons (gx#datum->syntax '#f 'let-values)
                                             (cons _L2622_
                                                   (begin
                                                     '#!void
                                                     (foldr (lambda (_g26392642_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g26402645_)
                      (cons _g26392642_ _g26402645_))
                    '()
                    _L2620_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _body25572616_
                               _hd25472584_))))))
              (_loop25522596_ _target25492590_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g24992563_
                                                     _g25002567_)))))
                                          (_g24992563_ _g25002567_))
                                      (_g24992563_ _g25002567_))))
                              (_g24992563_ _g25002567_))))
                      (_g24992563_ _g25002567_))))
               (_g24972824_
                (lambda (_g25002652_)
                  (if (gx#stx-pair? _g25002652_)
                      (let ((_e25062655_ (gx#syntax-e _g25002652_)))
                        (let ((_hd25072659_ (##car _e25062655_))
                              (_tl25082662_ (##cdr _e25062655_)))
                          (if (gx#stx-pair? _tl25082662_)
                              (let ((_e25092665_ (gx#syntax-e _tl25082662_)))
                                (let ((_hd25102669_ (##car _e25092665_))
                                      (_tl25112672_ (##cdr _e25092665_)))
                                  (if (gx#stx-pair? _tl25112672_)
                                      (let ((_e25122675_
                                             (gx#syntax-e _tl25112672_)))
                                        (let ((_hd25132679_
                                               (##car _e25122675_))
                                              (_tl25142682_
                                               (##cdr _e25122675_)))
                                          (if (gx#stx-pair/null? _hd25132679_)
                                              (if (fx>= (gx#stx-length
                                                         _hd25132679_)
                                                        '0)
                                                  (let ((_g31547_
                                                         (gx#syntax-split-splice
                                                          _hd25132679_
                                                          '0)))
                                                    (begin
                                                      (let ((_g31548_
                                                             (values-count
                                                              _g31547_)))
                                                        (if (not (fx= _g31548_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g31548_)))
              (let ((_target25152685_ (values-ref _g31547_ 0))
                    (_tl25172688_ (values-ref _g31547_ 1)))
                (letrec ((_loop25182691_
                          (lambda (_hd25162695_ _arg25222698_ _var25232700_)
                            (if (gx#stx-pair? _hd25162695_)
                                (let ((_e25192703_ (gx#syntax-e _hd25162695_)))
                                  (let ((_lp-hd25202707_ (##car _e25192703_))
                                        (_lp-tl25212710_ (##cdr _e25192703_)))
                                    (if (gx#stx-pair? _lp-hd25202707_)
                                        (let ((_e25262713_
                                               (gx#syntax-e _lp-hd25202707_)))
                                          (let ((_hd25272717_
                                                 (##car _e25262713_))
                                                (_tl25282720_
                                                 (##cdr _e25262713_)))
                                            (if (gx#stx-pair? _tl25282720_)
                                                (let ((_e25292723_
                                                       (gx#syntax-e
                                                        _tl25282720_)))
                                                  (let ((_hd25302727_
                                                         (##car _e25292723_))
                                                        (_tl25312730_
                                                         (##cdr _e25292723_)))
                                                    (if (gx#stx-null?
                                                         _tl25312730_)
                                                        (_loop25182691_
                                                         _lp-tl25212710_
                                                         (cons _hd25302727_
                                                               _arg25222698_)
                                                         (cons _hd25272717_
                                                               _var25232700_))
                                                        (_g24982648_
                                                         _g25002652_))))
                                                (_g24982648_ _g25002652_))))
                                        (_g24982648_ _g25002652_))))
                                (let ((_arg25242733_ (reverse _arg25222698_))
                                      (_var25252736_ (reverse _var25232700_)))
                                  (if (gx#stx-pair/null? _tl25142682_)
                                      (if (fx>= (gx#stx-length _tl25142682_)
                                                '0)
                                          (let ((_g31549_
                                                 (gx#syntax-split-splice
                                                  _tl25142682_
                                                  '0)))
                                            (begin
                                              (let ((_g31550_
                                                     (values-count _g31549_)))
                                                (if (not (fx= _g31550_ 2))
                                                    (error "Context expects 2 values"
                                                           _g31550_)))
                                              (let ((_target25322739_
                                                     (values-ref _g31549_ 0))
                                                    (_tl25342742_
                                                     (values-ref _g31549_ 1)))
                                                (if (gx#stx-null? _tl25342742_)
                                                    (letrec ((_loop25352745_
                                                              (lambda (_hd25332749_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body25392752_)
                        (if (gx#stx-pair? _hd25332749_)
                            (let ((_e25362755_ (gx#syntax-e _hd25332749_)))
                              (let ((_lp-hd25372759_ (##car _e25362755_))
                                    (_lp-tl25382762_ (##cdr _e25362755_)))
                                (_loop25352745_
                                 _lp-tl25382762_
                                 (cons _lp-hd25372759_ _body25392752_))))
                            (let ((_body25402765_ (reverse _body25392752_)))
                              ((lambda (_L2769_
                                        _L2771_
                                        _L2772_
                                        _L2773_
                                        _L2774_)
                                 (if (gx#identifier? _L2774_)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'letrec-values)
                                                 (cons (cons (cons (cons _L2774_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (cons (gx#datum->syntax '#f 'lambda%)
                                       (cons (begin
                                               '#!void
                                               (foldr (lambda (_g27992806_
                                                               _g28002809_)
                                                        (cons _g27992806_
                                                              _g28002809_))
                                                      _L2771_
                                                      _L2773_))
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g28012812_
                                                               _g28022815_)
                                                        (cons _g28012812_
                                                              _g28022815_))
                                                      '()
                                                      _L2769_))))
                                 '()))
                     '())
               (cons _L2774_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (begin
                                             '#!void
                                             (foldr (lambda (_g28032818_
                                                             _g28042821_)
                                                      (cons _g28032818_
                                                            _g28042821_))
                                                    '()
                                                    _L2772_)))
                                     (_g24982648_ _g25002652_)))
                               _body25402765_
                               _tl25172688_
                               _arg25242733_
                               _var25252736_
                               _hd25102669_))))))
              (_loop25352745_ _target25322739_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g24982648_
                                                     _g25002652_)))))
                                          (_g24982648_ _g25002652_))
                                      (_g24982648_ _g25002652_)))))))
                  (_loop25182691_ _target25152685_ '() '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g24982648_ _g25002652_))
                                              (_g24982648_ _g25002652_))))
                                      (_g24982648_ _g25002652_))))
                              (_g24982648_ _g25002652_))))
                      (_g24982648_ _g25002652_)))))
          (_g24972824_ _$stx2494_))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#let*|
      (lambda (_$stx2831_)
        (let* ((_g28352859_
                (lambda (_g28362855_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g28362855_)))
               (_g28342944_
                (lambda (_g28362863_)
                  (if (gx#stx-pair? _g28362863_)
                      (let ((_e28392866_ (gx#syntax-e _g28362863_)))
                        (let ((_hd28402870_ (##car _e28392866_))
                              (_tl28412873_ (##cdr _e28392866_)))
                          (if (gx#stx-pair? _tl28412873_)
                              (let ((_e28422876_ (gx#syntax-e _tl28412873_)))
                                (let ((_hd28432880_ (##car _e28422876_))
                                      (_tl28442883_ (##cdr _e28422876_)))
                                  (if (gx#stx-pair/null? _tl28442883_)
                                      (if (fx>= (gx#stx-length _tl28442883_)
                                                '0)
                                          (let ((_g31551_
                                                 (gx#syntax-split-splice
                                                  _tl28442883_
                                                  '0)))
                                            (begin
                                              (let ((_g31552_
                                                     (values-count _g31551_)))
                                                (if (not (fx= _g31552_ 2))
                                                    (error "Context expects 2 values"
                                                           _g31552_)))
                                              (let ((_target28452886_
                                                     (values-ref _g31551_ 0))
                                                    (_tl28472889_
                                                     (values-ref _g31551_ 1)))
                                                (if (gx#stx-null? _tl28472889_)
                                                    (letrec ((_loop28482892_
                                                              (lambda (_hd28462896_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body28522899_)
                        (if (gx#stx-pair? _hd28462896_)
                            (let ((_e28492902_ (gx#syntax-e _hd28462896_)))
                              (let ((_lp-hd28502906_ (##car _e28492902_))
                                    (_lp-tl28512909_ (##cdr _e28492902_)))
                                (_loop28482892_
                                 _lp-tl28512909_
                                 (cons _lp-hd28502906_ _body28522899_))))
                            (let ((_body28532912_ (reverse _body28522899_)))
                              ((lambda (_L2916_ _L2918_)
                                 (cons (gx#datum->syntax '#f '~let)
                                       (cons (gx#datum->syntax
                                              '#f
                                              'let*-values)
                                             (cons _L2918_
                                                   (begin
                                                     '#!void
                                                     (foldr (lambda (_g29352938_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g29362941_)
                      (cons _g29352938_ _g29362941_))
                    '()
                    _L2916_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _body28532912_
                               _hd28432880_))))))
              (_loop28482892_ _target28452886_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g28352859_
                                                     _g28362863_)))))
                                          (_g28352859_ _g28362863_))
                                      (_g28352859_ _g28362863_))))
                              (_g28352859_ _g28362863_))))
                      (_g28352859_ _g28362863_)))))
          (_g28342944_ _$stx2831_))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#letrec|
      (lambda (_$stx2949_)
        (let* ((_g29532977_
                (lambda (_g29542973_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g29542973_)))
               (_g29523062_
                (lambda (_g29542981_)
                  (if (gx#stx-pair? _g29542981_)
                      (let ((_e29572984_ (gx#syntax-e _g29542981_)))
                        (let ((_hd29582988_ (##car _e29572984_))
                              (_tl29592991_ (##cdr _e29572984_)))
                          (if (gx#stx-pair? _tl29592991_)
                              (let ((_e29602994_ (gx#syntax-e _tl29592991_)))
                                (let ((_hd29612998_ (##car _e29602994_))
                                      (_tl29623001_ (##cdr _e29602994_)))
                                  (if (gx#stx-pair/null? _tl29623001_)
                                      (if (fx>= (gx#stx-length _tl29623001_)
                                                '0)
                                          (let ((_g31553_
                                                 (gx#syntax-split-splice
                                                  _tl29623001_
                                                  '0)))
                                            (begin
                                              (let ((_g31554_
                                                     (values-count _g31553_)))
                                                (if (not (fx= _g31554_ 2))
                                                    (error "Context expects 2 values"
                                                           _g31554_)))
                                              (let ((_target29633004_
                                                     (values-ref _g31553_ 0))
                                                    (_tl29653007_
                                                     (values-ref _g31553_ 1)))
                                                (if (gx#stx-null? _tl29653007_)
                                                    (letrec ((_loop29663010_
                                                              (lambda (_hd29643014_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body29703017_)
                        (if (gx#stx-pair? _hd29643014_)
                            (let ((_e29673020_ (gx#syntax-e _hd29643014_)))
                              (let ((_lp-hd29683024_ (##car _e29673020_))
                                    (_lp-tl29693027_ (##cdr _e29673020_)))
                                (_loop29663010_
                                 _lp-tl29693027_
                                 (cons _lp-hd29683024_ _body29703017_))))
                            (let ((_body29713030_ (reverse _body29703017_)))
                              ((lambda (_L3034_ _L3036_)
                                 (cons (gx#datum->syntax '#f '~let)
                                       (cons (gx#datum->syntax
                                              '#f
                                              'letrec-values)
                                             (cons _L3036_
                                                   (begin
                                                     '#!void
                                                     (foldr (lambda (_g30533056_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g30543059_)
                      (cons _g30533056_ _g30543059_))
                    '()
                    _L3034_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _body29713030_
                               _hd29612998_))))))
              (_loop29663010_ _target29633004_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g29532977_
                                                     _g29542981_)))))
                                          (_g29532977_ _g29542981_))
                                      (_g29532977_ _g29542981_))))
                              (_g29532977_ _g29542981_))))
                      (_g29532977_ _g29542981_)))))
          (_g29523062_ _$stx2949_))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#letrec*|
      (lambda (_$stx3067_)
        (let* ((_g30713095_
                (lambda (_g30723091_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g30723091_)))
               (_g30703180_
                (lambda (_g30723099_)
                  (if (gx#stx-pair? _g30723099_)
                      (let ((_e30753102_ (gx#syntax-e _g30723099_)))
                        (let ((_hd30763106_ (##car _e30753102_))
                              (_tl30773109_ (##cdr _e30753102_)))
                          (if (gx#stx-pair? _tl30773109_)
                              (let ((_e30783112_ (gx#syntax-e _tl30773109_)))
                                (let ((_hd30793116_ (##car _e30783112_))
                                      (_tl30803119_ (##cdr _e30783112_)))
                                  (if (gx#stx-pair/null? _tl30803119_)
                                      (if (fx>= (gx#stx-length _tl30803119_)
                                                '0)
                                          (let ((_g31555_
                                                 (gx#syntax-split-splice
                                                  _tl30803119_
                                                  '0)))
                                            (begin
                                              (let ((_g31556_
                                                     (values-count _g31555_)))
                                                (if (not (fx= _g31556_ 2))
                                                    (error "Context expects 2 values"
                                                           _g31556_)))
                                              (let ((_target30813122_
                                                     (values-ref _g31555_ 0))
                                                    (_tl30833125_
                                                     (values-ref _g31555_ 1)))
                                                (if (gx#stx-null? _tl30833125_)
                                                    (letrec ((_loop30843128_
                                                              (lambda (_hd30823132_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body30883135_)
                        (if (gx#stx-pair? _hd30823132_)
                            (let ((_e30853138_ (gx#syntax-e _hd30823132_)))
                              (let ((_lp-hd30863142_ (##car _e30853138_))
                                    (_lp-tl30873145_ (##cdr _e30853138_)))
                                (_loop30843128_
                                 _lp-tl30873145_
                                 (cons _lp-hd30863142_ _body30883135_))))
                            (let ((_body30893148_ (reverse _body30883135_)))
                              ((lambda (_L3152_ _L3154_)
                                 (cons (gx#datum->syntax '#f '~let)
                                       (cons (gx#datum->syntax
                                              '#f
                                              'letrec*-values)
                                             (cons _L3154_
                                                   (begin
                                                     '#!void
                                                     (foldr (lambda (_g31713174_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g31723177_)
                      (cons _g31713174_ _g31723177_))
                    '()
                    _L3152_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _body30893148_
                               _hd30793116_))))))
              (_loop30843128_ _target30813122_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g30713095_
                                                     _g30723099_)))))
                                          (_g30713095_ _g30723099_))
                                      (_g30713095_ _g30723099_))))
                              (_g30713095_ _g30723099_))))
                      (_g30713095_ _g30723099_)))))
          (_g30703180_ _$stx3067_))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#~let|
      (lambda (_stx3185_)
        (letrec ((_let-head?3188_
                  (lambda (_x3668_)
                    (let* ((_g36723683_
                            (lambda (_g36733679_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g36733679_)))
                           (_g36713694_
                            (lambda (_g36733687_)
                              ((lambda () (gx#identifier? _x3668_)))))
                           (_g36703724_
                            (lambda (_g36733698_)
                              (if (gx#stx-pair? _g36733698_)
                                  (let ((_e36753701_
                                         (gx#syntax-e _g36733698_)))
                                    (let ((_hd36763705_ (##car _e36753701_))
                                          (_tl36773708_ (##cdr _e36753701_)))
                                      (if (gx#identifier? _hd36763705_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<sugar>$<sugar:1>[1]#_g31557_|
                                               _hd36763705_)
                                              ((lambda (_L3711_)
                                                 (gx#stx-andmap
                                                  gx#identifier?
                                                  _L3711_))
                                               _tl36773708_)
                                              (_g36713694_ _g36733698_))
                                          (_g36713694_ _g36733698_))))
                                  (_g36713694_ _g36733698_)))))
                      (_g36703724_ _x3668_))))
                 (_let-head3190_
                  (lambda (_x3608_)
                    (let* ((_g36123623_
                            (lambda (_g36133619_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g36133619_)))
                           (_g36113634_
                            (lambda (_g36133627_)
                              ((lambda () (list _x3608_)))))
                           (_g36103664_
                            (lambda (_g36133638_)
                              (if (gx#stx-pair? _g36133638_)
                                  (let ((_e36153641_
                                         (gx#syntax-e _g36133638_)))
                                    (let ((_hd36163645_ (##car _e36153641_))
                                          (_tl36173648_ (##cdr _e36153641_)))
                                      (if (gx#identifier? _hd36163645_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<sugar>$<sugar:1>[1]#_g31558_|
                                               _hd36163645_)
                                              ((lambda (_L3651_) _L3651_)
                                               _tl36173648_)
                                              (_g36113634_ _g36133638_))
                                          (_g36113634_ _g36133638_))))
                                  (_g36113634_ _g36133638_)))))
                      (_g36103664_ _x3608_)))))
          (let* ((_g31933259_
                  (lambda (_g31943255_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g31943255_)))
                 (_g31923520_
                  (lambda (_g31943263_)
                    (if (gx#stx-pair? _g31943263_)
                        (let ((_e32193266_ (gx#syntax-e _g31943263_)))
                          (let ((_hd32203270_ (##car _e32193266_))
                                (_tl32213273_ (##cdr _e32193266_)))
                            (if (gx#stx-pair? _tl32213273_)
                                (let ((_e32223276_ (gx#syntax-e _tl32213273_)))
                                  (let ((_hd32233280_ (##car _e32223276_))
                                        (_tl32243283_ (##cdr _e32223276_)))
                                    (if (gx#stx-pair? _tl32243283_)
                                        (let ((_e32253286_
                                               (gx#syntax-e _tl32243283_)))
                                          (let ((_hd32263290_
                                                 (##car _e32253286_))
                                                (_tl32273293_
                                                 (##cdr _e32253286_)))
                                            (if (gx#stx-pair/null?
                                                 _hd32263290_)
                                                (if (fx>= (gx#stx-length
                                                           _hd32263290_)
                                                          '0)
                                                    (let ((_g31559_
                                                           (gx#syntax-split-splice
                                                            _hd32263290_
                                                            '0)))
                                                      (begin
                                                        (let ((_g31560_
                                                               (values-count
                                                                _g31559_)))
                                                          (if (not (fx= _g31560_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                2))
                      (error "Context expects 2 values" _g31560_)))
                (let ((_target32283296_ (values-ref _g31559_ 0))
                      (_tl32303299_ (values-ref _g31559_ 1)))
                  (if (gx#stx-null? _tl32303299_)
                      (letrec ((_loop32313302_
                                (lambda (_hd32293306_ _e32353309_ _hd32363311_)
                                  (if (gx#stx-pair? _hd32293306_)
                                      (let ((_e32323314_
                                             (gx#syntax-e _hd32293306_)))
                                        (let ((_lp-hd32333318_
                                               (##car _e32323314_))
                                              (_lp-tl32343321_
                                               (##cdr _e32323314_)))
                                          (if (gx#stx-pair? _lp-hd32333318_)
                                              (let ((_e32393324_
                                                     (gx#syntax-e
                                                      _lp-hd32333318_)))
                                                (let ((_hd32403328_
                                                       (##car _e32393324_))
                                                      (_tl32413331_
                                                       (##cdr _e32393324_)))
                                                  (if (gx#stx-pair?
                                                       _tl32413331_)
                                                      (let ((_e32423334_
                                                             (gx#syntax-e
                                                              _tl32413331_)))
                                                        (let ((_hd32433338_
                                                               (##car _e32423334_))
                                                              (_tl32443341_
                                                               (##cdr _e32423334_)))
                                                          (if (gx#stx-null?
                                                               _tl32443341_)
                                                              (_loop32313302_
                                                               _lp-tl32343321_
                                                               (cons _hd32433338_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _e32353309_)
                       (cons _hd32403328_ _hd32363311_))
                      (_g31933259_ _g31943263_))))
              (_g31933259_ _g31943263_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g31933259_ _g31943263_))))
                                      (let ((_e32373344_ (reverse _e32353309_))
                                            (_hd32383347_
                                             (reverse _hd32363311_)))
                                        (if (gx#stx-pair/null? _tl32273293_)
                                            (if (fx>= (gx#stx-length
                                                       _tl32273293_)
                                                      '0)
                                                (let ((_g31561_
                                                       (gx#syntax-split-splice
                                                        _tl32273293_
                                                        '0)))
                                                  (begin
                                                    (let ((_g31562_
                                                           (values-count
                                                            _g31561_)))
                                                      (if (not (fx= _g31562_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g31562_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target32453350_
                                                           (values-ref
                                                            _g31561_
                                                            0))
                                                          (_tl32473353_
                                                           (values-ref
                                                            _g31561_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl32473353_)
                                                          (letrec ((_loop32483356_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd32463360_ _body32523363_)
                              (if (gx#stx-pair? _hd32463360_)
                                  (let ((_e32493366_
                                         (gx#syntax-e _hd32463360_)))
                                    (let ((_lp-hd32503370_ (##car _e32493366_))
                                          (_lp-tl32513373_
                                           (##cdr _e32493366_)))
                                      (_loop32483356_
                                       _lp-tl32513373_
                                       (cons _lp-hd32503370_ _body32523363_))))
                                  (let ((_body32533376_
                                         (reverse _body32523363_)))
                                    ((lambda (_L3380_ _L3382_ _L3383_ _L3384_)
                                       (if (gx#stx-andmap
                                            _let-head?3188_
                                            (begin
                                              '#!void
                                              (foldr (lambda (_g34103413_
                                                              _g34113416_)
                                                       (cons _g34103413_
                                                             _g34113416_))
                                                     '()
                                                     _L3383_)))
                                           (let* ((_g34193436_
                                                   (lambda (_g34203432_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g34203432_)))
                                                  (_g34183508_
                                                   (lambda (_g34203440_)
                                                     (if (gx#stx-pair/null?
                                                          _g34203440_)
                                                         (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g34203440_)
                           '0)
                     (let ((_g31563_ (gx#syntax-split-splice _g34203440_ '0)))
                       (begin
                         (let ((_g31564_ (values-count _g31563_)))
                           (if (not (fx= _g31564_ 2))
                               (error "Context expects 2 values" _g31564_)))
                         (let ((_target34223443_ (values-ref _g31563_ 0))
                               (_tl34243446_ (values-ref _g31563_ 1)))
                           (if (gx#stx-null? _tl34243446_)
                               (letrec ((_loop34253449_
                                         (lambda (_hd34233453_
                                                  _hd-bind34293456_)
                                           (if (gx#stx-pair? _hd34233453_)
                                               (let ((_e34263459_
                                                      (gx#syntax-e
                                                       _hd34233453_)))
                                                 (let ((_lp-hd34273463_
                                                        (##car _e34263459_))
                                                       (_lp-tl34283466_
                                                        (##cdr _e34263459_)))
                                                   (_loop34253449_
                                                    _lp-tl34283466_
                                                    (cons _lp-hd34273463_
                                                          _hd-bind34293456_))))
                                               (let ((_hd-bind34303469_
                                                      (reverse _hd-bind34293456_)))
                                                 ((lambda (_L3473_)
                                                    (let ()
                                                      (cons _L3384_
                                                            (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-check-splice-targets _L3382_ _L3473_)
                            (foldr (lambda (_g34883494_
                                            _g34893497_
                                            _g34903499_)
                                     (cons (cons _g34893497_
                                                 (cons _g34883494_ '()))
                                           _g34903499_))
                                   '()
                                   _L3382_
                                   _L3473_))
                          (begin
                            '#!void
                            (foldr (lambda (_g34913502_ _g34923505_)
                                     (cons _g34913502_ _g34923505_))
                                   '()
                                   _L3380_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd-bind34303469_))))))
                                 (_loop34253449_ _target34223443_ '()))
                               (_g34193436_ _g34203440_)))))
                     (_g34193436_ _g34203440_))
                 (_g34193436_ _g34203440_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g34183508_
                                              (gx#stx-map
                                               _let-head3190_
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g35113514_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g35123517_)
                  (cons _g35113514_ _g35123517_))
                '()
                _L3383_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g31933259_ _g31943263_)))
                                     _body32533376_
                                     _e32373344_
                                     _hd32383347_
                                     _hd32233280_))))))
                    (_loop32483356_ _target32453350_ '()))
                  (_g31933259_ _g31943263_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g31933259_ _g31943263_))
                                            (_g31933259_ _g31943263_)))))))
                        (_loop32313302_ _target32283296_ '() '()))
                      (_g31933259_ _g31943263_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g31933259_ _g31943263_))
                                                (_g31933259_ _g31943263_))))
                                        (_g31933259_ _g31943263_))))
                                (_g31933259_ _g31943263_))))
                        (_g31933259_ _g31943263_))))
                 (_g31913604_
                  (lambda (_g31943524_)
                    (if (gx#stx-pair? _g31943524_)
                        (let ((_e32003527_ (gx#syntax-e _g31943524_)))
                          (let ((_hd32013531_ (##car _e32003527_))
                                (_tl32023534_ (##cdr _e32003527_)))
                            (if (gx#stx-pair? _tl32023534_)
                                (let ((_e32033537_ (gx#syntax-e _tl32023534_)))
                                  (let ((_hd32043541_ (##car _e32033537_))
                                        (_tl32053544_ (##cdr _e32033537_)))
                                    (if (gx#stx-pair? _tl32053544_)
                                        (let ((_e32063547_
                                               (gx#syntax-e _tl32053544_)))
                                          (let ((_hd32073551_
                                                 (##car _e32063547_))
                                                (_tl32083554_
                                                 (##cdr _e32063547_)))
                                            (if (gx#stx-pair? _hd32073551_)
                                                (let ((_e32093557_
                                                       (gx#syntax-e
                                                        _hd32073551_)))
                                                  (let ((_hd32103561_
                                                         (##car _e32093557_))
                                                        (_tl32113564_
                                                         (##cdr _e32093557_)))
                                                    (if (gx#stx-pair?
                                                         _tl32113564_)
                                                        (let ((_e32123567_
                                                               (gx#syntax-e
                                                                _tl32113564_)))
                                                          (let ((_hd32133571_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e32123567_))
                        (_tl32143574_ (##cdr _e32123567_)))
                    (if (gx#stx-null? _tl32143574_)
                        ((lambda (_L3577_ _L3579_ _L3580_ _L3581_ _L3582_)
                           (if (_let-head?3188_ _L3580_)
                               (cons _L3582_
                                     (cons _L3581_
                                           (cons (cons (cons _L3580_
                                                             (cons _L3579_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _L3577_)))
                               (_g31923520_ _g31943524_)))
                         _tl32083554_
                         _hd32133571_
                         _hd32103561_
                         _hd32043541_
                         _hd32013531_)
                        (_g31923520_ _g31943524_))))
                (_g31923520_ _g31943524_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g31923520_ _g31943524_))))
                                        (_g31923520_ _g31943524_))))
                                (_g31923520_ _g31943524_))))
                        (_g31923520_ _g31943524_)))))
            (_g31913604_ _stx3185_)))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#and|
      (lambda (_$stx3731_)
        (let* ((_g37373763_
                (lambda (_g37383759_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g37383759_)))
               (_g37363808_
                (lambda (_g37383767_)
                  (if (gx#stx-pair? _g37383767_)
                      (let ((_e37523770_ (gx#syntax-e _g37383767_)))
                        (let ((_hd37533774_ (##car _e37523770_))
                              (_tl37543777_ (##cdr _e37523770_)))
                          (if (gx#stx-pair? _tl37543777_)
                              (let ((_e37553780_ (gx#syntax-e _tl37543777_)))
                                (let ((_hd37563784_ (##car _e37553780_))
                                      (_tl37573787_ (##cdr _e37553780_)))
                                  ((lambda (_L3790_ _L3792_ _L3793_)
                                     (cons (gx#datum->syntax '#f 'if)
                                           (cons _L3792_
                                                 (cons (cons _L3793_ _L3790_)
                                                       (cons '#f '())))))
                                   _tl37573787_
                                   _hd37563784_
                                   _hd37533774_)))
                              (_g37373763_ _g37383767_))))
                      (_g37373763_ _g37383767_))))
               (_g37353848_
                (lambda (_g37383812_)
                  (if (gx#stx-pair? _g37383812_)
                      (let ((_e37433815_ (gx#syntax-e _g37383812_)))
                        (let ((_hd37443819_ (##car _e37433815_))
                              (_tl37453822_ (##cdr _e37433815_)))
                          (if (gx#stx-pair? _tl37453822_)
                              (let ((_e37463825_ (gx#syntax-e _tl37453822_)))
                                (let ((_hd37473829_ (##car _e37463825_))
                                      (_tl37483832_ (##cdr _e37463825_)))
                                  (if (gx#stx-null? _tl37483832_)
                                      ((lambda (_L3835_) _L3835_) _hd37473829_)
                                      (_g37363808_ _g37383812_))))
                              (_g37363808_ _g37383812_))))
                      (_g37363808_ _g37383812_))))
               (_g37343869_
                (lambda (_g37383852_)
                  (if (gx#stx-pair? _g37383852_)
                      (let ((_e37393855_ (gx#syntax-e _g37383852_)))
                        (let ((_hd37403859_ (##car _e37393855_))
                              (_tl37413862_ (##cdr _e37393855_)))
                          (if (gx#stx-null? _tl37413862_)
                              ((lambda () '#t))
                              (_g37353848_ _g37383852_))))
                      (_g37353848_ _g37383852_)))))
          (_g37343869_ _$stx3731_))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#or|
      (lambda (_$stx3873_)
        (let* ((_g38793905_
                (lambda (_g38803901_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g38803901_)))
               (_g38783950_
                (lambda (_g38803909_)
                  (if (gx#stx-pair? _g38803909_)
                      (let ((_e38943912_ (gx#syntax-e _g38803909_)))
                        (let ((_hd38953916_ (##car _e38943912_))
                              (_tl38963919_ (##cdr _e38943912_)))
                          (if (gx#stx-pair? _tl38963919_)
                              (let ((_e38973922_ (gx#syntax-e _tl38963919_)))
                                (let ((_hd38983926_ (##car _e38973922_))
                                      (_tl38993929_ (##cdr _e38973922_)))
                                  ((lambda (_L3932_ _L3934_ _L3935_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '$e)
                                                       (cons _L3934_ '()))
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'if)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$e)
                           (cons (gx#datum->syntax '#f '$e)
                                 (cons (cons _L3935_ _L3932_) '()))))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _tl38993929_
                                   _hd38983926_
                                   _hd38953916_)))
                              (_g38793905_ _g38803909_))))
                      (_g38793905_ _g38803909_))))
               (_g38773990_
                (lambda (_g38803954_)
                  (if (gx#stx-pair? _g38803954_)
                      (let ((_e38853957_ (gx#syntax-e _g38803954_)))
                        (let ((_hd38863961_ (##car _e38853957_))
                              (_tl38873964_ (##cdr _e38853957_)))
                          (if (gx#stx-pair? _tl38873964_)
                              (let ((_e38883967_ (gx#syntax-e _tl38873964_)))
                                (let ((_hd38893971_ (##car _e38883967_))
                                      (_tl38903974_ (##cdr _e38883967_)))
                                  (if (gx#stx-null? _tl38903974_)
                                      ((lambda (_L3977_) _L3977_) _hd38893971_)
                                      (_g38783950_ _g38803954_))))
                              (_g38783950_ _g38803954_))))
                      (_g38783950_ _g38803954_))))
               (_g38764011_
                (lambda (_g38803994_)
                  (if (gx#stx-pair? _g38803994_)
                      (let ((_e38813997_ (gx#syntax-e _g38803994_)))
                        (let ((_hd38824001_ (##car _e38813997_))
                              (_tl38834004_ (##cdr _e38813997_)))
                          (if (gx#stx-null? _tl38834004_)
                              ((lambda () '#f))
                              (_g38773990_ _g38803994_))))
                      (_g38773990_ _g38803994_)))))
          (_g38764011_ _$stx3873_))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#cond|
      (lambda (_$stx4015_)
        (let* ((_g40244115_
                (lambda (_g40254111_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g40254111_)))
               (_g40234216_
                (lambda (_g40254119_)
                  (if (gx#stx-pair? _g40254119_)
                      (let ((_e40924122_ (gx#syntax-e _g40254119_)))
                        (let ((_hd40934126_ (##car _e40924122_))
                              (_tl40944129_ (##cdr _e40924122_)))
                          (if (gx#stx-pair? _tl40944129_)
                              (let ((_e40954132_ (gx#syntax-e _tl40944129_)))
                                (let ((_hd40964136_ (##car _e40954132_))
                                      (_tl40974139_ (##cdr _e40954132_)))
                                  (if (gx#stx-pair? _hd40964136_)
                                      (let ((_e40984142_
                                             (gx#syntax-e _hd40964136_)))
                                        (let ((_hd40994146_
                                               (##car _e40984142_))
                                              (_tl41004149_
                                               (##cdr _e40984142_)))
                                          (if (gx#stx-pair/null? _tl41004149_)
                                              (if (fx>= (gx#stx-length
                                                         _tl41004149_)
                                                        '0)
                                                  (let ((_g31565_
                                                         (gx#syntax-split-splice
                                                          _tl41004149_
                                                          '0)))
                                                    (begin
                                                      (let ((_g31566_
                                                             (values-count
                                                              _g31565_)))
                                                        (if (not (fx= _g31566_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g31566_)))
              (let ((_target41014152_ (values-ref _g31565_ 0))
                    (_tl41034155_ (values-ref _g31565_ 1)))
                (if (gx#stx-null? _tl41034155_)
                    (letrec ((_loop41044158_
                              (lambda (_hd41024162_ _body41084165_)
                                (if (gx#stx-pair? _hd41024162_)
                                    (let ((_e41054168_
                                           (gx#syntax-e _hd41024162_)))
                                      (let ((_lp-hd41064172_
                                             (##car _e41054168_))
                                            (_lp-tl41074175_
                                             (##cdr _e41054168_)))
                                        (_loop41044158_
                                         _lp-tl41074175_
                                         (cons _lp-hd41064172_
                                               _body41084165_))))
                                    (let ((_body41094178_
                                           (reverse _body41084165_)))
                                      ((lambda (_L4182_
                                                _L4184_
                                                _L4185_
                                                _L4186_)
                                         (cons (gx#datum->syntax '#f 'if)
                                               (cons _L4185_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'begin)
                         (begin
                           '#!void
                           (foldr (lambda (_g42074210_ _g42084213_)
                                    (cons _g42074210_ _g42084213_))
                                  '()
                                  _L4184_)))
                   (cons (cons _L4186_ _L4182_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _tl40974139_
                                       _body41094178_
                                       _hd40994146_
                                       _hd40934126_))))))
                      (_loop41044158_ _target41014152_ '()))
                    (_g40244115_ _g40254119_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g40244115_ _g40254119_))
                                              (_g40244115_ _g40254119_))))
                                      (_g40244115_ _g40254119_))))
                              (_g40244115_ _g40254119_))))
                      (_g40244115_ _g40254119_))))
               (_g40224272_
                (lambda (_g40254220_)
                  (if (gx#stx-pair? _g40254220_)
                      (let ((_e40794223_ (gx#syntax-e _g40254220_)))
                        (let ((_hd40804227_ (##car _e40794223_))
                              (_tl40814230_ (##cdr _e40794223_)))
                          (if (gx#stx-pair? _tl40814230_)
                              (let ((_e40824233_ (gx#syntax-e _tl40814230_)))
                                (let ((_hd40834237_ (##car _e40824233_))
                                      (_tl40844240_ (##cdr _e40824233_)))
                                  (if (gx#stx-pair? _hd40834237_)
                                      (let ((_e40854243_
                                             (gx#syntax-e _hd40834237_)))
                                        (let ((_hd40864247_
                                               (##car _e40854243_))
                                              (_tl40874250_
                                               (##cdr _e40854243_)))
                                          (if (gx#stx-null? _tl40874250_)
                                              ((lambda (_L4253_
                                                        _L4255_
                                                        _L4256_)
                                                 (cons _L4256_
                                                       (cons (cons _L4255_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f '=>)
                                 (cons (gx#datum->syntax '#f 'values) '())))
                     _L4253_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _tl40844240_
                                               _hd40864247_
                                               _hd40804227_)
                                              (_g40234216_ _g40254220_))))
                                      (_g40234216_ _g40254220_))))
                              (_g40234216_ _g40254220_))))
                      (_g40234216_ _g40254220_))))
               (_g40214354_
                (lambda (_g40254276_)
                  (if (gx#stx-pair? _g40254276_)
                      (let ((_e40614279_ (gx#syntax-e _g40254276_)))
                        (let ((_hd40624283_ (##car _e40614279_))
                              (_tl40634286_ (##cdr _e40614279_)))
                          (if (gx#stx-pair? _tl40634286_)
                              (let ((_e40644289_ (gx#syntax-e _tl40634286_)))
                                (let ((_hd40654293_ (##car _e40644289_))
                                      (_tl40664296_ (##cdr _e40644289_)))
                                  (if (gx#stx-pair? _hd40654293_)
                                      (let ((_e40674299_
                                             (gx#syntax-e _hd40654293_)))
                                        (let ((_hd40684303_
                                               (##car _e40674299_))
                                              (_tl40694306_
                                               (##cdr _e40674299_)))
                                          (if (gx#stx-pair? _tl40694306_)
                                              (let ((_e40704309_
                                                     (gx#syntax-e
                                                      _tl40694306_)))
                                                (let ((_hd40714313_
                                                       (##car _e40704309_))
                                                      (_tl40724316_
                                                       (##cdr _e40704309_)))
                                                  (if (gx#identifier?
                                                       _hd40714313_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core$<sugar>$<sugar:1>[1]#_g31567_|
                                                           _hd40714313_)
                                                          (if (gx#stx-pair?
                                                               _tl40724316_)
                                                              (let ((_e40734319_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl40724316_)))
                        (let ((_hd40744323_ (##car _e40734319_))
                              (_tl40754326_ (##cdr _e40734319_)))
                          (if (gx#stx-null? _tl40754326_)
                              ((lambda (_L4329_ _L4331_ _L4332_ _L4333_)
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (cons (gx#datum->syntax '#f '$e)
                                                   (cons _L4332_ '()))
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'if)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                '$e)
                                                               (cons (cons _L4331_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (gx#datum->syntax '#f '$e) '()))
                             (cons (cons _L4333_ _L4329_) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                               _tl40664296_
                               _hd40744323_
                               _hd40684303_
                               _hd40624283_)
                              (_g40224272_ _g40254276_))))
                      (_g40224272_ _g40254276_))
                  (_g40224272_ _g40254276_))
              (_g40224272_ _g40254276_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g40224272_ _g40254276_))))
                                      (_g40224272_ _g40254276_))))
                              (_g40224272_ _g40254276_))))
                      (_g40224272_ _g40254276_))))
               (_g40204395_
                (lambda (_g40254358_)
                  (if (gx#stx-pair? _g40254358_)
                      (let ((_e40484361_ (gx#syntax-e _g40254358_)))
                        (let ((_hd40494365_ (##car _e40484361_))
                              (_tl40504368_ (##cdr _e40484361_)))
                          (if (gx#stx-pair? _tl40504368_)
                              (let ((_e40514371_ (gx#syntax-e _tl40504368_)))
                                (let ((_hd40524375_ (##car _e40514371_))
                                      (_tl40534378_ (##cdr _e40514371_)))
                                  (if (gx#stx-pair? _hd40524375_)
                                      (let ((_e40544381_
                                             (gx#syntax-e _hd40524375_)))
                                        (let ((_hd40554385_
                                               (##car _e40544381_))
                                              (_tl40564388_
                                               (##cdr _e40544381_)))
                                          (if (gx#identifier? _hd40554385_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<sugar>$<sugar:1>[1]#_g31568_|
                                                   _hd40554385_)
                                                  ((lambda ()
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'syntax-error)
                                                           (cons '"Bad syntax; misplaced else"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g40214354_ _g40254358_))
                                              (_g40214354_ _g40254358_))))
                                      (_g40214354_ _g40254358_))))
                              (_g40214354_ _g40254358_))))
                      (_g40214354_ _g40254358_))))
               (_g40194490_
                (lambda (_g40254399_)
                  (if (gx#stx-pair? _g40254399_)
                      (let ((_e40304402_ (gx#syntax-e _g40254399_)))
                        (let ((_hd40314406_ (##car _e40304402_))
                              (_tl40324409_ (##cdr _e40304402_)))
                          (if (gx#stx-pair? _tl40324409_)
                              (let ((_e40334412_ (gx#syntax-e _tl40324409_)))
                                (let ((_hd40344416_ (##car _e40334412_))
                                      (_tl40354419_ (##cdr _e40334412_)))
                                  (if (gx#stx-pair? _hd40344416_)
                                      (let ((_e40364422_
                                             (gx#syntax-e _hd40344416_)))
                                        (let ((_hd40374426_
                                               (##car _e40364422_))
                                              (_tl40384429_
                                               (##cdr _e40364422_)))
                                          (if (gx#identifier? _hd40374426_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<sugar>$<sugar:1>[1]#_g31569_|
                                                   _hd40374426_)
                                                  (if (gx#stx-pair/null?
                                                       _tl40384429_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl40384429_)
                        '0)
                  (let ((_g31570_ (gx#syntax-split-splice _tl40384429_ '0)))
                    (begin
                      (let ((_g31571_ (values-count _g31570_)))
                        (if (not (fx= _g31571_ 2))
                            (error "Context expects 2 values" _g31571_)))
                      (let ((_target40394432_ (values-ref _g31570_ 0))
                            (_tl40414435_ (values-ref _g31570_ 1)))
                        (if (gx#stx-null? _tl40414435_)
                            (letrec ((_loop40424438_
                                      (lambda (_hd40404442_ _body40464445_)
                                        (if (gx#stx-pair? _hd40404442_)
                                            (let ((_e40434448_
                                                   (gx#syntax-e _hd40404442_)))
                                              (let ((_lp-hd40444452_
                                                     (##car _e40434448_))
                                                    (_lp-tl40454455_
                                                     (##cdr _e40434448_)))
                                                (_loop40424438_
                                                 _lp-tl40454455_
                                                 (cons _lp-hd40444452_
                                                       _body40464445_))))
                                            (let ((_body40474458_
                                                   (reverse _body40464445_)))
                                              (if (gx#stx-null? _tl40354419_)
                                                  ((lambda (_L4462_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            '%#expression)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin)
                               (begin
                                 '#!void
                                 (foldr (lambda (_g44814484_ _g44824487_)
                                          (cons _g44814484_ _g44824487_))
                                        '()
                                        _L4462_)))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _body40474458_)
                                                  (_g40204395_
                                                   _g40254399_)))))))
                              (_loop40424438_ _target40394432_ '()))
                            (_g40204395_ _g40254399_)))))
                  (_g40204395_ _g40254399_))
              (_g40204395_ _g40254399_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g40204395_ _g40254399_))
                                              (_g40204395_ _g40254399_))))
                                      (_g40204395_ _g40254399_))))
                              (_g40204395_ _g40254399_))))
                      (_g40204395_ _g40254399_))))
               (_g40184511_
                (lambda (_g40254494_)
                  (if (gx#stx-pair? _g40254494_)
                      (let ((_e40264497_ (gx#syntax-e _g40254494_)))
                        (let ((_hd40274501_ (##car _e40264497_))
                              (_tl40284504_ (##cdr _e40264497_)))
                          (if (gx#stx-null? _tl40284504_)
                              ((lambda () '#!void))
                              (_g40194490_ _g40254494_))))
                      (_g40194490_ _g40254494_)))))
          (_g40184511_ _$stx4015_))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#when|
      (lambda (_$stx4517_)
        (let* ((_g45214545_
                (lambda (_g45224541_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g45224541_)))
               (_g45204630_
                (lambda (_g45224549_)
                  (if (gx#stx-pair? _g45224549_)
                      (let ((_e45254552_ (gx#syntax-e _g45224549_)))
                        (let ((_hd45264556_ (##car _e45254552_))
                              (_tl45274559_ (##cdr _e45254552_)))
                          (if (gx#stx-pair? _tl45274559_)
                              (let ((_e45284562_ (gx#syntax-e _tl45274559_)))
                                (let ((_hd45294566_ (##car _e45284562_))
                                      (_tl45304569_ (##cdr _e45284562_)))
                                  (if (gx#stx-pair/null? _tl45304569_)
                                      (if (fx>= (gx#stx-length _tl45304569_)
                                                '0)
                                          (let ((_g31572_
                                                 (gx#syntax-split-splice
                                                  _tl45304569_
                                                  '0)))
                                            (begin
                                              (let ((_g31573_
                                                     (values-count _g31572_)))
                                                (if (not (fx= _g31573_ 2))
                                                    (error "Context expects 2 values"
                                                           _g31573_)))
                                              (let ((_target45314572_
                                                     (values-ref _g31572_ 0))
                                                    (_tl45334575_
                                                     (values-ref _g31572_ 1)))
                                                (if (gx#stx-null? _tl45334575_)
                                                    (letrec ((_loop45344578_
                                                              (lambda (_hd45324582_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _expr45384585_)
                        (if (gx#stx-pair? _hd45324582_)
                            (let ((_e45354588_ (gx#syntax-e _hd45324582_)))
                              (let ((_lp-hd45364592_ (##car _e45354588_))
                                    (_lp-tl45374595_ (##cdr _e45354588_)))
                                (_loop45344578_
                                 _lp-tl45374595_
                                 (cons _lp-hd45364592_ _expr45384585_))))
                            (let ((_expr45394598_ (reverse _expr45384585_)))
                              ((lambda (_L4602_ _L4604_)
                                 (cons (gx#datum->syntax '#f 'if)
                                       (cons _L4604_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'begin)
                                                         (begin
                                                           '#!void
                                                           (foldr (lambda (_g46214624_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g46224627_)
                            (cons _g46214624_ _g46224627_))
                          '()
                          _L4602_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons '#!void '())))))
                               _expr45394598_
                               _hd45294566_))))))
              (_loop45344578_ _target45314572_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g45214545_
                                                     _g45224549_)))))
                                          (_g45214545_ _g45224549_))
                                      (_g45214545_ _g45224549_))))
                              (_g45214545_ _g45224549_))))
                      (_g45214545_ _g45224549_)))))
          (_g45204630_ _$stx4517_))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#unless|
      (lambda (_$stx4635_)
        (let* ((_g46394663_
                (lambda (_g46404659_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g46404659_)))
               (_g46384748_
                (lambda (_g46404667_)
                  (if (gx#stx-pair? _g46404667_)
                      (let ((_e46434670_ (gx#syntax-e _g46404667_)))
                        (let ((_hd46444674_ (##car _e46434670_))
                              (_tl46454677_ (##cdr _e46434670_)))
                          (if (gx#stx-pair? _tl46454677_)
                              (let ((_e46464680_ (gx#syntax-e _tl46454677_)))
                                (let ((_hd46474684_ (##car _e46464680_))
                                      (_tl46484687_ (##cdr _e46464680_)))
                                  (if (gx#stx-pair/null? _tl46484687_)
                                      (if (fx>= (gx#stx-length _tl46484687_)
                                                '0)
                                          (let ((_g31574_
                                                 (gx#syntax-split-splice
                                                  _tl46484687_
                                                  '0)))
                                            (begin
                                              (let ((_g31575_
                                                     (values-count _g31574_)))
                                                (if (not (fx= _g31575_ 2))
                                                    (error "Context expects 2 values"
                                                           _g31575_)))
                                              (let ((_target46494690_
                                                     (values-ref _g31574_ 0))
                                                    (_tl46514693_
                                                     (values-ref _g31574_ 1)))
                                                (if (gx#stx-null? _tl46514693_)
                                                    (letrec ((_loop46524696_
                                                              (lambda (_hd46504700_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _expr46564703_)
                        (if (gx#stx-pair? _hd46504700_)
                            (let ((_e46534706_ (gx#syntax-e _hd46504700_)))
                              (let ((_lp-hd46544710_ (##car _e46534706_))
                                    (_lp-tl46554713_ (##cdr _e46534706_)))
                                (_loop46524696_
                                 _lp-tl46554713_
                                 (cons _lp-hd46544710_ _expr46564703_))))
                            (let ((_expr46574716_ (reverse _expr46564703_)))
                              ((lambda (_L4720_ _L4722_)
                                 (cons (gx#datum->syntax '#f 'if)
                                       (cons _L4722_
                                             (cons '#!void
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'begin)
                                                               (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#!void
                         (foldr (lambda (_g47394742_ _g47404745_)
                                  (cons _g47394742_ _g47404745_))
                                '()
                                _L4720_)))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _expr46574716_
                               _hd46474684_))))))
              (_loop46524696_ _target46494690_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g46394663_
                                                     _g46404667_)))))
                                          (_g46394663_ _g46404667_))
                                      (_g46394663_ _g46404667_))))
                              (_g46394663_ _g46404667_))))
                      (_g46394663_ _g46404667_)))))
          (_g46384748_ _$stx4635_))))
    (define |gerbil/core$<sugar>$<sugar:1>[:0:]#syntax-error|
      (lambda (_stx4753_)
        (let* ((_g47564780_
                (lambda (_g47574776_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g47574776_)))
               (_g47554865_
                (lambda (_g47574784_)
                  (if (gx#stx-pair? _g47574784_)
                      (let ((_e47604787_ (gx#syntax-e _g47574784_)))
                        (let ((_hd47614791_ (##car _e47604787_))
                              (_tl47624794_ (##cdr _e47604787_)))
                          (if (gx#stx-pair? _tl47624794_)
                              (let ((_e47634797_ (gx#syntax-e _tl47624794_)))
                                (let ((_hd47644801_ (##car _e47634797_))
                                      (_tl47654804_ (##cdr _e47634797_)))
                                  (if (gx#stx-pair/null? _tl47654804_)
                                      (if (fx>= (gx#stx-length _tl47654804_)
                                                '0)
                                          (let ((_g31576_
                                                 (gx#syntax-split-splice
                                                  _tl47654804_
                                                  '0)))
                                            (begin
                                              (let ((_g31577_
                                                     (values-count _g31576_)))
                                                (if (not (fx= _g31577_ 2))
                                                    (error "Context expects 2 values"
                                                           _g31577_)))
                                              (let ((_target47664807_
                                                     (values-ref _g31576_ 0))
                                                    (_tl47684810_
                                                     (values-ref _g31576_ 1)))
                                                (if (gx#stx-null? _tl47684810_)
                                                    (letrec ((_loop47694813_
                                                              (lambda (_hd47674817_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _detail47734820_)
                        (if (gx#stx-pair? _hd47674817_)
                            (let ((_e47704823_ (gx#syntax-e _hd47674817_)))
                              (let ((_lp-hd47714827_ (##car _e47704823_))
                                    (_lp-tl47724830_ (##cdr _e47704823_)))
                                (_loop47694813_
                                 _lp-tl47724830_
                                 (cons _lp-hd47714827_ _detail47734820_))))
                            (let ((_detail47744833_
                                   (reverse _detail47734820_)))
                              ((lambda (_L4837_ _L4839_)
                                 (if (gx#stx-string? _L4839_)
                                     (apply gx#raise-syntax-error
                                            '#f
                                            (gx#stx-e _L4839_)
                                            _stx4753_
                                            (gx#syntax->list
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g48564859_
                                                               _g48574862_)
                                                        (cons _g48564859_
                                                              _g48574862_))
                                                      '()
                                                      _L4837_))))
                                     (_g47564780_ _g47574784_)))
                               _detail47744833_
                               _hd47644801_))))))
              (_loop47694813_ _target47664807_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g47564780_
                                                     _g47574784_)))))
                                          (_g47564780_ _g47574784_))
                                      (_g47564780_ _g47574784_))))
                              (_g47564780_ _g47574784_))))
                      (_g47564780_ _g47574784_)))))
          (_g47554865_ _stx4753_))))))
