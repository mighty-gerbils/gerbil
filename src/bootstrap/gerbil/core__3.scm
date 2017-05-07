(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<sugar>::<sugar:1>[1]#_g28283_|
    (gx#core-quote-syntax 'values))
  (define |gerbil/core::<sugar>::<sugar:1>[1]#_g28284_|
    (gx#core-quote-syntax 'values))
  (define |gerbil/core::<sugar>::<sugar:1>[1]#_g28287_|
    (gx#core-quote-syntax '=>))
  (define |gerbil/core::<sugar>::<sugar:1>[1]#_g28288_|
    (gx#core-quote-syntax 'else))
  (define |gerbil/core::<sugar>::<sugar:1>[1]#_g28289_|
    (gx#core-quote-syntax 'else))
  (begin
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#defrules|
      (lambda (_$stx1388_)
        (let ((_g13921420_
               (lambda (_g13931416_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g13931416_))))
          (let ((_g13911521_
                 (lambda (_g13931424_)
                   (if (gx#stx-pair? _g13931424_)
                       (let ((_e13971427_ (gx#syntax-e _g13931424_)))
                         (let ((_hd13981431_ (##car _e13971427_))
                               (_tl13991434_ (##cdr _e13971427_)))
                           (if (gx#stx-pair? _tl13991434_)
                               (let ((_e14001437_ (gx#syntax-e _tl13991434_)))
                                 (let ((_hd14011441_ (##car _e14001437_))
                                       (_tl14021444_ (##cdr _e14001437_)))
                                   (if (gx#stx-pair? _tl14021444_)
                                       (let ((_e14031447_
                                              (gx#syntax-e _tl14021444_)))
                                         (let ((_hd14041451_
                                                (##car _e14031447_))
                                               (_tl14051454_
                                                (##cdr _e14031447_)))
                                           (if (gx#stx-pair/null? _tl14051454_)
                                               (if (fx>= (gx#stx-length
                                                          _tl14051454_)
                                                         '0)
                                                   (let ((_g28255_
                                                          (gx#syntax-split-splice
                                                           _tl14051454_
                                                           '0)))
                                                     (begin
                                                       (let ((_g28256_
                                                              (values-count
                                                               _g28255_)))
                                                         (if (not (fx= _g28256_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g28256_)))
               (let ((_target14061457_ (values-ref _g28255_ 0))
                     (_tl14081460_ (values-ref _g28255_ 1)))
                 (if (gx#stx-null? _tl14081460_)
                     (letrec ((_loop14091463_
                               (lambda (_hd14071467_ _clauses14131470_)
                                 (if (gx#stx-pair? _hd14071467_)
                                     (let ((_e14101473_
                                            (gx#syntax-e _hd14071467_)))
                                       (let ((_lp-hd14111477_
                                              (##car _e14101473_))
                                             (_lp-tl14121480_
                                              (##cdr _e14101473_)))
                                         (_loop14091463_
                                          _lp-tl14121480_
                                          (cons _lp-hd14111477_
                                                _clauses14131470_))))
                                     (let ((_clauses14141483_
                                            (reverse _clauses14131470_)))
                                       ((lambda (_L1487_ _L1489_ _L1490_)
                                          (if (gx#identifier? _L1490_)
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'define-syntax)
                                                    (cons _L1490_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'syntax-rules)
                              (cons _L1489_
                                    (begin
                                      '#!void
                                      (foldr (lambda (_g15121515_ _g15131518_)
                                               (cons _g15121515_ _g15131518_))
                                             '()
                                             _L1487_))))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g13921420_ _g13931424_)))
                                        _clauses14141483_
                                        _hd14041451_
                                        _hd14011441_))))))
                       (_loop14091463_ _target14061457_ '()))
                     (_g13921420_ _g13931424_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g13921420_ _g13931424_))
                                               (_g13921420_ _g13931424_))))
                                       (_g13921420_ _g13931424_))))
                               (_g13921420_ _g13931424_))))
                       (_g13921420_ _g13931424_)))))
            (_g13911521_ _$stx1388_)))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#defsyntax%|
      (lambda (_$stx1526_)
        (let ((_g15311570_
               (lambda (_g15321566_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g15321566_))))
          (let ((_g15301625_
                 (lambda (_g15321574_)
                   (if (gx#stx-pair? _g15321574_)
                       (let ((_e15561577_ (gx#syntax-e _g15321574_)))
                         (let ((_hd15571581_ (##car _e15561577_))
                               (_tl15581584_ (##cdr _e15561577_)))
                           (if (gx#stx-pair? _tl15581584_)
                               (let ((_e15591587_ (gx#syntax-e _tl15581584_)))
                                 (let ((_hd15601591_ (##car _e15591587_))
                                       (_tl15611594_ (##cdr _e15591587_)))
                                   (if (gx#stx-pair? _tl15611594_)
                                       (let ((_e15621597_
                                              (gx#syntax-e _tl15611594_)))
                                         (let ((_hd15631601_
                                                (##car _e15621597_))
                                               (_tl15641604_
                                                (##cdr _e15621597_)))
                                           (if (gx#stx-null? _tl15641604_)
                                               ((lambda (_L1607_ _L1609_)
                                                  (if (gx#identifier? _L1609_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'define-syntax)
                                                            (cons _L1609_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L1607_ '())))
              (_g15311570_ _g15321574_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd15631601_
                                                _hd15601591_)
                                               (_g15311570_ _g15321574_))))
                                       (_g15311570_ _g15321574_))))
                               (_g15311570_ _g15321574_))))
                       (_g15311570_ _g15321574_)))))
            (let ((_g15291723_
                   (lambda (_g15321629_)
                     (if (gx#stx-pair? _g15321629_)
                         (let ((_e15361632_ (gx#syntax-e _g15321629_)))
                           (let ((_hd15371636_ (##car _e15361632_))
                                 (_tl15381639_ (##cdr _e15361632_)))
                             (if (gx#stx-pair? _tl15381639_)
                                 (let ((_e15391642_
                                        (gx#syntax-e _tl15381639_)))
                                   (let ((_hd15401646_ (##car _e15391642_))
                                         (_tl15411649_ (##cdr _e15391642_)))
                                     (if (gx#stx-pair? _hd15401646_)
                                         (let ((_e15421652_
                                                (gx#syntax-e _hd15401646_)))
                                           (let ((_hd15431656_
                                                  (##car _e15421652_))
                                                 (_tl15441659_
                                                  (##cdr _e15421652_)))
                                             (if (gx#stx-pair/null?
                                                  _tl15411649_)
                                                 (if (fx>= (gx#stx-length
                                                            _tl15411649_)
                                                           '0)
                                                     (let ((_g28257_
                                                            (gx#syntax-split-splice
                                                             _tl15411649_
                                                             '0)))
                                                       (begin
                                                         (let ((_g28258_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g28257_)))
                   (if (not (fx= _g28258_ 2))
                       (error "Context expects 2 values" _g28258_)))
                 (let ((_target15451662_ (values-ref _g28257_ 0))
                       (_tl15471665_ (values-ref _g28257_ 1)))
                   (if (gx#stx-null? _tl15471665_)
                       (letrec ((_loop15481668_
                                 (lambda (_hd15461672_ _body15521675_)
                                   (if (gx#stx-pair? _hd15461672_)
                                       (let ((_e15491678_
                                              (gx#syntax-e _hd15461672_)))
                                         (let ((_lp-hd15501682_
                                                (##car _e15491678_))
                                               (_lp-tl15511685_
                                                (##cdr _e15491678_)))
                                           (_loop15481668_
                                            _lp-tl15511685_
                                            (cons _lp-hd15501682_
                                                  _body15521675_))))
                                       (let ((_body15531688_
                                              (reverse _body15521675_)))
                                         ((lambda (_L1692_ _L1694_ _L1695_)
                                            (if (gx#identifier? _L1695_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'define-syntax)
                                                      (cons _L1695_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'lambda%)
                                (cons _L1694_
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g17141717_
                                                        _g17151720_)
                                                 (cons _g17141717_
                                                       _g17151720_))
                                               '()
                                               _L1692_))))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g15301625_ _g15321629_)))
                                          _body15531688_
                                          _tl15441659_
                                          _hd15431656_))))))
                         (_loop15481668_ _target15451662_ '()))
                       (_g15301625_ _g15321629_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g15301625_ _g15321629_))
                                                 (_g15301625_ _g15321629_))))
                                         (_g15301625_ _g15321629_))))
                                 (_g15301625_ _g15321629_))))
                         (_g15301625_ _g15321629_)))))
              (_g15291723_ _$stx1526_))))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#defalias|
      (lambda (_$stx1728_)
        (let ((_g17321750_
               (lambda (_g17331746_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g17331746_))))
          (let ((_g17311805_
                 (lambda (_g17331754_)
                   (if (gx#stx-pair? _g17331754_)
                       (let ((_e17361757_ (gx#syntax-e _g17331754_)))
                         (let ((_hd17371761_ (##car _e17361757_))
                               (_tl17381764_ (##cdr _e17361757_)))
                           (if (gx#stx-pair? _tl17381764_)
                               (let ((_e17391767_ (gx#syntax-e _tl17381764_)))
                                 (let ((_hd17401771_ (##car _e17391767_))
                                       (_tl17411774_ (##cdr _e17391767_)))
                                   (if (gx#stx-pair? _tl17411774_)
                                       (let ((_e17421777_
                                              (gx#syntax-e _tl17411774_)))
                                         (let ((_hd17431781_
                                                (##car _e17421777_))
                                               (_tl17441784_
                                                (##cdr _e17421777_)))
                                           (if (gx#stx-null? _tl17441784_)
                                               ((lambda (_L1787_ _L1789_)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'define-alias)
                                                        (cons _L1789_
                                                              (cons _L1787_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd17431781_
                                                _hd17401771_)
                                               (_g17321750_ _g17331754_))))
                                       (_g17321750_ _g17331754_))))
                               (_g17321750_ _g17331754_))))
                       (_g17321750_ _g17331754_)))))
            (_g17311805_ _$stx1728_)))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#define|
      (lambda (_$stx1809_)
        (let ((_g18141853_
               (lambda (_g18151849_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g18151849_))))
          (let ((_g18131908_
                 (lambda (_g18151857_)
                   (if (gx#stx-pair? _g18151857_)
                       (let ((_e18391860_ (gx#syntax-e _g18151857_)))
                         (let ((_hd18401864_ (##car _e18391860_))
                               (_tl18411867_ (##cdr _e18391860_)))
                           (if (gx#stx-pair? _tl18411867_)
                               (let ((_e18421870_ (gx#syntax-e _tl18411867_)))
                                 (let ((_hd18431874_ (##car _e18421870_))
                                       (_tl18441877_ (##cdr _e18421870_)))
                                   (if (gx#stx-pair? _tl18441877_)
                                       (let ((_e18451880_
                                              (gx#syntax-e _tl18441877_)))
                                         (let ((_hd18461884_
                                                (##car _e18451880_))
                                               (_tl18471887_
                                                (##cdr _e18451880_)))
                                           (if (gx#stx-null? _tl18471887_)
                                               ((lambda (_L1890_ _L1892_)
                                                  (if (gx#identifier? _L1892_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'define-values)
                                                            (cons (cons _L1892_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons _L1890_ '())))
              (_g18141853_ _g18151857_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd18461884_
                                                _hd18431874_)
                                               (_g18141853_ _g18151857_))))
                                       (_g18141853_ _g18151857_))))
                               (_g18141853_ _g18151857_))))
                       (_g18141853_ _g18151857_)))))
            (let ((_g18122006_
                   (lambda (_g18151912_)
                     (if (gx#stx-pair? _g18151912_)
                         (let ((_e18191915_ (gx#syntax-e _g18151912_)))
                           (let ((_hd18201919_ (##car _e18191915_))
                                 (_tl18211922_ (##cdr _e18191915_)))
                             (if (gx#stx-pair? _tl18211922_)
                                 (let ((_e18221925_
                                        (gx#syntax-e _tl18211922_)))
                                   (let ((_hd18231929_ (##car _e18221925_))
                                         (_tl18241932_ (##cdr _e18221925_)))
                                     (if (gx#stx-pair? _hd18231929_)
                                         (let ((_e18251935_
                                                (gx#syntax-e _hd18231929_)))
                                           (let ((_hd18261939_
                                                  (##car _e18251935_))
                                                 (_tl18271942_
                                                  (##cdr _e18251935_)))
                                             (if (gx#stx-pair/null?
                                                  _tl18241932_)
                                                 (if (fx>= (gx#stx-length
                                                            _tl18241932_)
                                                           '0)
                                                     (let ((_g28259_
                                                            (gx#syntax-split-splice
                                                             _tl18241932_
                                                             '0)))
                                                       (begin
                                                         (let ((_g28260_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g28259_)))
                   (if (not (fx= _g28260_ 2))
                       (error "Context expects 2 values" _g28260_)))
                 (let ((_target18281945_ (values-ref _g28259_ 0))
                       (_tl18301948_ (values-ref _g28259_ 1)))
                   (if (gx#stx-null? _tl18301948_)
                       (letrec ((_loop18311951_
                                 (lambda (_hd18291955_ _body18351958_)
                                   (if (gx#stx-pair? _hd18291955_)
                                       (let ((_e18321961_
                                              (gx#syntax-e _hd18291955_)))
                                         (let ((_lp-hd18331965_
                                                (##car _e18321961_))
                                               (_lp-tl18341968_
                                                (##cdr _e18321961_)))
                                           (_loop18311951_
                                            _lp-tl18341968_
                                            (cons _lp-hd18331965_
                                                  _body18351958_))))
                                       (let ((_body18361971_
                                              (reverse _body18351958_)))
                                         ((lambda (_L1975_ _L1977_ _L1978_)
                                            (if (gx#identifier? _L1978_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'define-values)
                                                      (cons (cons _L1978_ '())
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'lambda%)
                                (cons _L1977_
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g19972000_
                                                        _g19982003_)
                                                 (cons _g19972000_
                                                       _g19982003_))
                                               '()
                                               _L1975_))))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g18131908_ _g18151912_)))
                                          _body18361971_
                                          _tl18271942_
                                          _hd18261939_))))))
                         (_loop18311951_ _target18281945_ '()))
                       (_g18131908_ _g18151912_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g18131908_ _g18151912_))
                                                 (_g18131908_ _g18151912_))))
                                         (_g18131908_ _g18151912_))))
                                 (_g18131908_ _g18151912_))))
                         (_g18131908_ _g18151912_)))))
              (_g18122006_ _$stx1809_))))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#let*-values|
      (lambda (_$stx2011_)
        (let ((_g20162061_
               (lambda (_g20172057_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g20172057_))))
          (let ((_g20152162_
                 (lambda (_g20172065_)
                   (if (gx#stx-pair? _g20172065_)
                       (let ((_e20382068_ (gx#syntax-e _g20172065_)))
                         (let ((_hd20392072_ (##car _e20382068_))
                               (_tl20402075_ (##cdr _e20382068_)))
                           (if (gx#stx-pair? _tl20402075_)
                               (let ((_e20412078_ (gx#syntax-e _tl20402075_)))
                                 (let ((_hd20422082_ (##car _e20412078_))
                                       (_tl20432085_ (##cdr _e20412078_)))
                                   (if (gx#stx-pair? _hd20422082_)
                                       (let ((_e20442088_
                                              (gx#syntax-e _hd20422082_)))
                                         (let ((_hd20452092_
                                                (##car _e20442088_))
                                               (_tl20462095_
                                                (##cdr _e20442088_)))
                                           (if (gx#stx-pair/null? _tl20432085_)
                                               (if (fx>= (gx#stx-length
                                                          _tl20432085_)
                                                         '0)
                                                   (let ((_g28261_
                                                          (gx#syntax-split-splice
                                                           _tl20432085_
                                                           '0)))
                                                     (begin
                                                       (let ((_g28262_
                                                              (values-count
                                                               _g28261_)))
                                                         (if (not (fx= _g28262_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g28262_)))
               (let ((_target20472098_ (values-ref _g28261_ 0))
                     (_tl20492101_ (values-ref _g28261_ 1)))
                 (if (gx#stx-null? _tl20492101_)
                     (letrec ((_loop20502104_
                               (lambda (_hd20482108_ _body20542111_)
                                 (if (gx#stx-pair? _hd20482108_)
                                     (let ((_e20512114_
                                            (gx#syntax-e _hd20482108_)))
                                       (let ((_lp-hd20522118_
                                              (##car _e20512114_))
                                             (_lp-tl20532121_
                                              (##cdr _e20512114_)))
                                         (_loop20502104_
                                          _lp-tl20532121_
                                          (cons _lp-hd20522118_
                                                _body20542111_))))
                                     (let ((_body20552124_
                                            (reverse _body20542111_)))
                                       ((lambda (_L2128_
                                                 _L2130_
                                                 _L2131_
                                                 _L2132_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'let-values)
                                                (cons (cons _L2131_ '())
                                                      (cons (cons _L2132_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L2130_
                                (begin
                                  '#!void
                                  (foldr (lambda (_g21532156_ _g21542159_)
                                           (cons _g21532156_ _g21542159_))
                                         '()
                                         _L2128_))))
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _body20552124_
                                        _tl20462095_
                                        _hd20452092_
                                        _hd20392072_))))))
                       (_loop20502104_ _target20472098_ '()))
                     (_g20162061_ _g20172065_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g20162061_ _g20172065_))
                                               (_g20162061_ _g20172065_))))
                                       (_g20162061_ _g20172065_))))
                               (_g20162061_ _g20172065_))))
                       (_g20162061_ _g20172065_)))))
            (let ((_g20142244_
                   (lambda (_g20172166_)
                     (if (gx#stx-pair? _g20172166_)
                         (let ((_e20192169_ (gx#syntax-e _g20172166_)))
                           (let ((_hd20202173_ (##car _e20192169_))
                                 (_tl20212176_ (##cdr _e20192169_)))
                             (if (gx#stx-pair? _tl20212176_)
                                 (let ((_e20222179_
                                        (gx#syntax-e _tl20212176_)))
                                   (let ((_hd20232183_ (##car _e20222179_))
                                         (_tl20242186_ (##cdr _e20222179_)))
                                     (if (gx#stx-null? _hd20232183_)
                                         (if (gx#stx-pair/null? _tl20242186_)
                                             (if (fx>= (gx#stx-length
                                                        _tl20242186_)
                                                       '0)
                                                 (let ((_g28263_
                                                        (gx#syntax-split-splice
                                                         _tl20242186_
                                                         '0)))
                                                   (begin
                                                     (let ((_g28264_
                                                            (values-count
                                                             _g28263_)))
                                                       (if (not (fx= _g28264_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g28264_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target20252189_
                                                            (values-ref
                                                             _g28263_
                                                             0))
                                                           (_tl20272192_
                                                            (values-ref
                                                             _g28263_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl20272192_)
                                                           (letrec ((_loop20282195_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd20262199_ _body20322202_)
                               (if (gx#stx-pair? _hd20262199_)
                                   (let ((_e20292205_
                                          (gx#syntax-e _hd20262199_)))
                                     (let ((_lp-hd20302209_
                                            (##car _e20292205_))
                                           (_lp-tl20312212_
                                            (##cdr _e20292205_)))
                                       (_loop20282195_
                                        _lp-tl20312212_
                                        (cons _lp-hd20302209_
                                              _body20322202_))))
                                   (let ((_body20332215_
                                          (reverse _body20322202_)))
                                     ((lambda (_L2219_)
                                        (cons (gx#datum->syntax
                                               '#f
                                               'let-values)
                                              (cons '()
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g22352238_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g22362241_)
                       (cons _g22352238_ _g22362241_))
                     '()
                     _L2219_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _body20332215_))))))
                     (_loop20282195_ _target20252189_ '()))
                   (_g20152162_ _g20172166_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g20152162_ _g20172166_))
                                             (_g20152162_ _g20172166_))
                                         (_g20152162_ _g20172166_))))
                                 (_g20152162_ _g20172166_))))
                         (_g20152162_ _g20172166_)))))
              (_g20142244_ _$stx2011_))))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#let|
      (lambda (_$stx2250_)
        (let ((_g22552319_
               (lambda (_g22562315_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g22562315_))))
          (let ((_g22542404_
                 (lambda (_g22562323_)
                   (if (gx#stx-pair? _g22562323_)
                       (let ((_e22992326_ (gx#syntax-e _g22562323_)))
                         (let ((_hd23002330_ (##car _e22992326_))
                               (_tl23012333_ (##cdr _e22992326_)))
                           (if (gx#stx-pair? _tl23012333_)
                               (let ((_e23022336_ (gx#syntax-e _tl23012333_)))
                                 (let ((_hd23032340_ (##car _e23022336_))
                                       (_tl23042343_ (##cdr _e23022336_)))
                                   (if (gx#stx-pair/null? _tl23042343_)
                                       (if (fx>= (gx#stx-length _tl23042343_)
                                                 '0)
                                           (let ((_g28265_
                                                  (gx#syntax-split-splice
                                                   _tl23042343_
                                                   '0)))
                                             (begin
                                               (let ((_g28266_
                                                      (values-count _g28265_)))
                                                 (if (not (fx= _g28266_ 2))
                                                     (error "Context expects 2 values"
                                                            _g28266_)))
                                               (let ((_target23052346_
                                                      (values-ref _g28265_ 0))
                                                     (_tl23072349_
                                                      (values-ref _g28265_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl23072349_)
                                                     (letrec ((_loop23082352_
                                                               (lambda (_hd23062356_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _body23122359_)
                         (if (gx#stx-pair? _hd23062356_)
                             (let ((_e23092362_ (gx#syntax-e _hd23062356_)))
                               (let ((_lp-hd23102366_ (##car _e23092362_))
                                     (_lp-tl23112369_ (##cdr _e23092362_)))
                                 (_loop23082352_
                                  _lp-tl23112369_
                                  (cons _lp-hd23102366_ _body23122359_))))
                             (let ((_body23132372_ (reverse _body23122359_)))
                               ((lambda (_L2376_ _L2378_)
                                  (cons (gx#datum->syntax '#f '~let)
                                        (cons (gx#datum->syntax
                                               '#f
                                               'let-values)
                                              (cons _L2378_
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g23952398_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g23962401_)
                       (cons _g23952398_ _g23962401_))
                     '()
                     _L2376_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _body23132372_
                                _hd23032340_))))))
               (_loop23082352_ _target23052346_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g22552319_
                                                      _g22562323_)))))
                                           (_g22552319_ _g22562323_))
                                       (_g22552319_ _g22562323_))))
                               (_g22552319_ _g22562323_))))
                       (_g22552319_ _g22562323_)))))
            (let ((_g22532580_
                   (lambda (_g22562408_)
                     (if (gx#stx-pair? _g22562408_)
                         (let ((_e22622411_ (gx#syntax-e _g22562408_)))
                           (let ((_hd22632415_ (##car _e22622411_))
                                 (_tl22642418_ (##cdr _e22622411_)))
                             (if (gx#stx-pair? _tl22642418_)
                                 (let ((_e22652421_
                                        (gx#syntax-e _tl22642418_)))
                                   (let ((_hd22662425_ (##car _e22652421_))
                                         (_tl22672428_ (##cdr _e22652421_)))
                                     (if (gx#stx-pair? _tl22672428_)
                                         (let ((_e22682431_
                                                (gx#syntax-e _tl22672428_)))
                                           (let ((_hd22692435_
                                                  (##car _e22682431_))
                                                 (_tl22702438_
                                                  (##cdr _e22682431_)))
                                             (if (gx#stx-pair/null?
                                                  _hd22692435_)
                                                 (if (fx>= (gx#stx-length
                                                            _hd22692435_)
                                                           '0)
                                                     (let ((_g28267_
                                                            (gx#syntax-split-splice
                                                             _hd22692435_
                                                             '0)))
                                                       (begin
                                                         (let ((_g28268_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g28267_)))
                   (if (not (fx= _g28268_ 2))
                       (error "Context expects 2 values" _g28268_)))
                 (let ((_target22712441_ (values-ref _g28267_ 0))
                       (_tl22732444_ (values-ref _g28267_ 1)))
                   (letrec ((_loop22742447_
                             (lambda (_hd22722451_ _arg22782454_ _var22792456_)
                               (if (gx#stx-pair? _hd22722451_)
                                   (let ((_e22752459_
                                          (gx#syntax-e _hd22722451_)))
                                     (let ((_lp-hd22762463_
                                            (##car _e22752459_))
                                           (_lp-tl22772466_
                                            (##cdr _e22752459_)))
                                       (if (gx#stx-pair? _lp-hd22762463_)
                                           (let ((_e22822469_
                                                  (gx#syntax-e
                                                   _lp-hd22762463_)))
                                             (let ((_hd22832473_
                                                    (##car _e22822469_))
                                                   (_tl22842476_
                                                    (##cdr _e22822469_)))
                                               (if (gx#stx-pair? _tl22842476_)
                                                   (let ((_e22852479_
                                                          (gx#syntax-e
                                                           _tl22842476_)))
                                                     (let ((_hd22862483_
                                                            (##car _e22852479_))
                                                           (_tl22872486_
                                                            (##cdr _e22852479_)))
                                                       (if (gx#stx-null?
                                                            _tl22872486_)
                                                           (_loop22742447_
                                                            _lp-tl22772466_
                                                            (cons _hd22862483_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _arg22782454_)
                    (cons _hd22832473_ _var22792456_))
                   (_g22542404_ _g22562408_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g22542404_ _g22562408_))))
                                           (_g22542404_ _g22562408_))))
                                   (let ((_arg22802489_
                                          (reverse _arg22782454_))
                                         (_var22812492_
                                          (reverse _var22792456_)))
                                     (if (gx#stx-pair/null? _tl22702438_)
                                         (if (fx>= (gx#stx-length _tl22702438_)
                                                   '0)
                                             (let ((_g28269_
                                                    (gx#syntax-split-splice
                                                     _tl22702438_
                                                     '0)))
                                               (begin
                                                 (let ((_g28270_
                                                        (values-count
                                                         _g28269_)))
                                                   (if (not (fx= _g28270_ 2))
                                                       (error "Context expects 2 values"
                                                              _g28270_)))
                                                 (let ((_target22882495_
                                                        (values-ref
                                                         _g28269_
                                                         0))
                                                       (_tl22902498_
                                                        (values-ref
                                                         _g28269_
                                                         1)))
                                                   (if (gx#stx-null?
                                                        _tl22902498_)
                                                       (letrec ((_loop22912501_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd22892505_ _body22952508_)
                           (if (gx#stx-pair? _hd22892505_)
                               (let ((_e22922511_ (gx#syntax-e _hd22892505_)))
                                 (let ((_lp-hd22932515_ (##car _e22922511_))
                                       (_lp-tl22942518_ (##cdr _e22922511_)))
                                   (_loop22912501_
                                    _lp-tl22942518_
                                    (cons _lp-hd22932515_ _body22952508_))))
                               (let ((_body22962521_ (reverse _body22952508_)))
                                 ((lambda (_L2525_
                                           _L2527_
                                           _L2528_
                                           _L2529_
                                           _L2530_)
                                    (if (gx#identifier? _L2530_)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'letrec-values)
                                                    (cons (cons (cons (cons _L2530_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons (cons (gx#datum->syntax '#f 'lambda%)
                                          (cons (begin
                                                  '#!void
                                                  (foldr (lambda (_g25552562_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g25562565_)
                   (cons _g25552562_ _g25562565_))
                 _L2527_
                 _L2529_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (begin
                                                  '#!void
                                                  (foldr (lambda (_g25572568_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g25582571_)
                   (cons _g25572568_ _g25582571_))
                 '()
                 _L2525_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))
                        '())
                  (cons _L2530_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g25592574_
                                                                _g25602577_)
                                                         (cons _g25592574_
                                                               _g25602577_))
                                                       '()
                                                       _L2528_)))
                                        (_g22542404_ _g22562408_)))
                                  _body22962521_
                                  _tl22732444_
                                  _arg22802489_
                                  _var22812492_
                                  _hd22662425_))))))
                 (_loop22912501_ _target22882495_ '()))
               (_g22542404_ _g22562408_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g22542404_ _g22562408_))
                                         (_g22542404_ _g22562408_)))))))
                     (_loop22742447_ _target22712441_ '() '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g22542404_ _g22562408_))
                                                 (_g22542404_ _g22562408_))))
                                         (_g22542404_ _g22562408_))))
                                 (_g22542404_ _g22562408_))))
                         (_g22542404_ _g22562408_)))))
              (_g22532580_ _$stx2250_))))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#let*|
      (lambda (_$stx2587_)
        (let ((_g25912615_
               (lambda (_g25922611_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g25922611_))))
          (let ((_g25902700_
                 (lambda (_g25922619_)
                   (if (gx#stx-pair? _g25922619_)
                       (let ((_e25952622_ (gx#syntax-e _g25922619_)))
                         (let ((_hd25962626_ (##car _e25952622_))
                               (_tl25972629_ (##cdr _e25952622_)))
                           (if (gx#stx-pair? _tl25972629_)
                               (let ((_e25982632_ (gx#syntax-e _tl25972629_)))
                                 (let ((_hd25992636_ (##car _e25982632_))
                                       (_tl26002639_ (##cdr _e25982632_)))
                                   (if (gx#stx-pair/null? _tl26002639_)
                                       (if (fx>= (gx#stx-length _tl26002639_)
                                                 '0)
                                           (let ((_g28271_
                                                  (gx#syntax-split-splice
                                                   _tl26002639_
                                                   '0)))
                                             (begin
                                               (let ((_g28272_
                                                      (values-count _g28271_)))
                                                 (if (not (fx= _g28272_ 2))
                                                     (error "Context expects 2 values"
                                                            _g28272_)))
                                               (let ((_target26012642_
                                                      (values-ref _g28271_ 0))
                                                     (_tl26032645_
                                                      (values-ref _g28271_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl26032645_)
                                                     (letrec ((_loop26042648_
                                                               (lambda (_hd26022652_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _body26082655_)
                         (if (gx#stx-pair? _hd26022652_)
                             (let ((_e26052658_ (gx#syntax-e _hd26022652_)))
                               (let ((_lp-hd26062662_ (##car _e26052658_))
                                     (_lp-tl26072665_ (##cdr _e26052658_)))
                                 (_loop26042648_
                                  _lp-tl26072665_
                                  (cons _lp-hd26062662_ _body26082655_))))
                             (let ((_body26092668_ (reverse _body26082655_)))
                               ((lambda (_L2672_ _L2674_)
                                  (cons (gx#datum->syntax '#f '~let)
                                        (cons (gx#datum->syntax
                                               '#f
                                               'let*-values)
                                              (cons _L2674_
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g26912694_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g26922697_)
                       (cons _g26912694_ _g26922697_))
                     '()
                     _L2672_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _body26092668_
                                _hd25992636_))))))
               (_loop26042648_ _target26012642_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g25912615_
                                                      _g25922619_)))))
                                           (_g25912615_ _g25922619_))
                                       (_g25912615_ _g25922619_))))
                               (_g25912615_ _g25922619_))))
                       (_g25912615_ _g25922619_)))))
            (_g25902700_ _$stx2587_)))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#letrec|
      (lambda (_$stx2705_)
        (let ((_g27092733_
               (lambda (_g27102729_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g27102729_))))
          (let ((_g27082818_
                 (lambda (_g27102737_)
                   (if (gx#stx-pair? _g27102737_)
                       (let ((_e27132740_ (gx#syntax-e _g27102737_)))
                         (let ((_hd27142744_ (##car _e27132740_))
                               (_tl27152747_ (##cdr _e27132740_)))
                           (if (gx#stx-pair? _tl27152747_)
                               (let ((_e27162750_ (gx#syntax-e _tl27152747_)))
                                 (let ((_hd27172754_ (##car _e27162750_))
                                       (_tl27182757_ (##cdr _e27162750_)))
                                   (if (gx#stx-pair/null? _tl27182757_)
                                       (if (fx>= (gx#stx-length _tl27182757_)
                                                 '0)
                                           (let ((_g28273_
                                                  (gx#syntax-split-splice
                                                   _tl27182757_
                                                   '0)))
                                             (begin
                                               (let ((_g28274_
                                                      (values-count _g28273_)))
                                                 (if (not (fx= _g28274_ 2))
                                                     (error "Context expects 2 values"
                                                            _g28274_)))
                                               (let ((_target27192760_
                                                      (values-ref _g28273_ 0))
                                                     (_tl27212763_
                                                      (values-ref _g28273_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl27212763_)
                                                     (letrec ((_loop27222766_
                                                               (lambda (_hd27202770_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _body27262773_)
                         (if (gx#stx-pair? _hd27202770_)
                             (let ((_e27232776_ (gx#syntax-e _hd27202770_)))
                               (let ((_lp-hd27242780_ (##car _e27232776_))
                                     (_lp-tl27252783_ (##cdr _e27232776_)))
                                 (_loop27222766_
                                  _lp-tl27252783_
                                  (cons _lp-hd27242780_ _body27262773_))))
                             (let ((_body27272786_ (reverse _body27262773_)))
                               ((lambda (_L2790_ _L2792_)
                                  (cons (gx#datum->syntax '#f '~let)
                                        (cons (gx#datum->syntax
                                               '#f
                                               'letrec-values)
                                              (cons _L2792_
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g28092812_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g28102815_)
                       (cons _g28092812_ _g28102815_))
                     '()
                     _L2790_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _body27272786_
                                _hd27172754_))))))
               (_loop27222766_ _target27192760_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g27092733_
                                                      _g27102737_)))))
                                           (_g27092733_ _g27102737_))
                                       (_g27092733_ _g27102737_))))
                               (_g27092733_ _g27102737_))))
                       (_g27092733_ _g27102737_)))))
            (_g27082818_ _$stx2705_)))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#letrec*|
      (lambda (_$stx2823_)
        (let ((_g28272851_
               (lambda (_g28282847_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g28282847_))))
          (let ((_g28262936_
                 (lambda (_g28282855_)
                   (if (gx#stx-pair? _g28282855_)
                       (let ((_e28312858_ (gx#syntax-e _g28282855_)))
                         (let ((_hd28322862_ (##car _e28312858_))
                               (_tl28332865_ (##cdr _e28312858_)))
                           (if (gx#stx-pair? _tl28332865_)
                               (let ((_e28342868_ (gx#syntax-e _tl28332865_)))
                                 (let ((_hd28352872_ (##car _e28342868_))
                                       (_tl28362875_ (##cdr _e28342868_)))
                                   (if (gx#stx-pair/null? _tl28362875_)
                                       (if (fx>= (gx#stx-length _tl28362875_)
                                                 '0)
                                           (let ((_g28275_
                                                  (gx#syntax-split-splice
                                                   _tl28362875_
                                                   '0)))
                                             (begin
                                               (let ((_g28276_
                                                      (values-count _g28275_)))
                                                 (if (not (fx= _g28276_ 2))
                                                     (error "Context expects 2 values"
                                                            _g28276_)))
                                               (let ((_target28372878_
                                                      (values-ref _g28275_ 0))
                                                     (_tl28392881_
                                                      (values-ref _g28275_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl28392881_)
                                                     (letrec ((_loop28402884_
                                                               (lambda (_hd28382888_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _body28442891_)
                         (if (gx#stx-pair? _hd28382888_)
                             (let ((_e28412894_ (gx#syntax-e _hd28382888_)))
                               (let ((_lp-hd28422898_ (##car _e28412894_))
                                     (_lp-tl28432901_ (##cdr _e28412894_)))
                                 (_loop28402884_
                                  _lp-tl28432901_
                                  (cons _lp-hd28422898_ _body28442891_))))
                             (let ((_body28452904_ (reverse _body28442891_)))
                               ((lambda (_L2908_ _L2910_)
                                  (cons (gx#datum->syntax '#f '~let)
                                        (cons (gx#datum->syntax
                                               '#f
                                               'letrec*-values)
                                              (cons _L2910_
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g29272930_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g29282933_)
                       (cons _g29272930_ _g29282933_))
                     '()
                     _L2908_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _body28452904_
                                _hd28352872_))))))
               (_loop28402884_ _target28372878_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g28272851_
                                                      _g28282855_)))))
                                           (_g28272851_ _g28282855_))
                                       (_g28272851_ _g28282855_))))
                               (_g28272851_ _g28282855_))))
                       (_g28272851_ _g28282855_)))))
            (_g28262936_ _$stx2823_)))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#~let|
      (lambda (_stx2941_)
        (let ((_let-head?2944_
               (lambda (_x3424_)
                 (let ((_g34283439_
                        (lambda (_g34293435_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g34293435_))))
                   (let ((_g34273450_
                          (lambda (_g34293443_)
                            ((lambda () (gx#identifier? _x3424_))))))
                     (let ((_g34263480_
                            (lambda (_g34293454_)
                              (if (gx#stx-pair? _g34293454_)
                                  (let ((_e34313457_
                                         (gx#syntax-e _g34293454_)))
                                    (let ((_hd34323461_ (##car _e34313457_))
                                          (_tl34333464_ (##cdr _e34313457_)))
                                      (if (gx#identifier? _hd34323461_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core::<sugar>::<sugar:1>[1]#_g28284_|
                                               _hd34323461_)
                                              ((lambda (_L3467_)
                                                 (gx#stx-andmap
                                                  gx#identifier?
                                                  _L3467_))
                                               _tl34333464_)
                                              (_g34273450_ _g34293454_))
                                          (_g34273450_ _g34293454_))))
                                  (_g34273450_ _g34293454_)))))
                       (_g34263480_ _x3424_)))))))
          (let ((_let-head2946_
                 (lambda (_x3364_)
                   (let ((_g33683379_
                          (lambda (_g33693375_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g33693375_))))
                     (let ((_g33673390_
                            (lambda (_g33693383_)
                              ((lambda () (list _x3364_))))))
                       (let ((_g33663420_
                              (lambda (_g33693394_)
                                (if (gx#stx-pair? _g33693394_)
                                    (let ((_e33713397_
                                           (gx#syntax-e _g33693394_)))
                                      (let ((_hd33723401_ (##car _e33713397_))
                                            (_tl33733404_ (##cdr _e33713397_)))
                                        (if (gx#identifier? _hd33723401_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core::<sugar>::<sugar:1>[1]#_g28283_|
                                                 _hd33723401_)
                                                ((lambda (_L3407_) _L3407_)
                                                 _tl33733404_)
                                                (_g33673390_ _g33693394_))
                                            (_g33673390_ _g33693394_))))
                                    (_g33673390_ _g33693394_)))))
                         (_g33663420_ _x3364_)))))))
            (let ((_g29493015_
                   (lambda (_g29503011_)
                     (gx#raise-syntax-error '#f '"Bad syntax" _g29503011_))))
              (let ((_g29483276_
                     (lambda (_g29503019_)
                       (if (gx#stx-pair? _g29503019_)
                           (let ((_e29753022_ (gx#syntax-e _g29503019_)))
                             (let ((_hd29763026_ (##car _e29753022_))
                                   (_tl29773029_ (##cdr _e29753022_)))
                               (if (gx#stx-pair? _tl29773029_)
                                   (let ((_e29783032_
                                          (gx#syntax-e _tl29773029_)))
                                     (let ((_hd29793036_ (##car _e29783032_))
                                           (_tl29803039_ (##cdr _e29783032_)))
                                       (if (gx#stx-pair? _tl29803039_)
                                           (let ((_e29813042_
                                                  (gx#syntax-e _tl29803039_)))
                                             (let ((_hd29823046_
                                                    (##car _e29813042_))
                                                   (_tl29833049_
                                                    (##cdr _e29813042_)))
                                               (if (gx#stx-pair/null?
                                                    _hd29823046_)
                                                   (if (fx>= (gx#stx-length
                                                              _hd29823046_)
                                                             '0)
                                                       (let ((_g28277_
                                                              (gx#syntax-split-splice
                                                               _hd29823046_
                                                               '0)))
                                                         (begin
                                                           (let ((_g28278_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g28277_)))
                     (if (not (fx= _g28278_ 2))
                         (error "Context expects 2 values" _g28278_)))
                   (let ((_target29843052_ (values-ref _g28277_ 0))
                         (_tl29863055_ (values-ref _g28277_ 1)))
                     (if (gx#stx-null? _tl29863055_)
                         (letrec ((_loop29873058_
                                   (lambda (_hd29853062_
                                            _e29913065_
                                            _hd29923067_)
                                     (if (gx#stx-pair? _hd29853062_)
                                         (let ((_e29883070_
                                                (gx#syntax-e _hd29853062_)))
                                           (let ((_lp-hd29893074_
                                                  (##car _e29883070_))
                                                 (_lp-tl29903077_
                                                  (##cdr _e29883070_)))
                                             (if (gx#stx-pair? _lp-hd29893074_)
                                                 (let ((_e29953080_
                                                        (gx#syntax-e
                                                         _lp-hd29893074_)))
                                                   (let ((_hd29963084_
                                                          (##car _e29953080_))
                                                         (_tl29973087_
                                                          (##cdr _e29953080_)))
                                                     (if (gx#stx-pair?
                                                          _tl29973087_)
                                                         (let ((_e29983090_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl29973087_)))
                   (let ((_hd29993094_ (##car _e29983090_))
                         (_tl30003097_ (##cdr _e29983090_)))
                     (if (gx#stx-null? _tl30003097_)
                         (_loop29873058_
                          _lp-tl29903077_
                          (cons _hd29993094_ _e29913065_)
                          (cons _hd29963084_ _hd29923067_))
                         (_g29493015_ _g29503019_))))
                 (_g29493015_ _g29503019_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g29493015_ _g29503019_))))
                                         (let ((_e29933100_
                                                (reverse _e29913065_))
                                               (_hd29943103_
                                                (reverse _hd29923067_)))
                                           (if (gx#stx-pair/null? _tl29833049_)
                                               (if (fx>= (gx#stx-length
                                                          _tl29833049_)
                                                         '0)
                                                   (let ((_g28279_
                                                          (gx#syntax-split-splice
                                                           _tl29833049_
                                                           '0)))
                                                     (begin
                                                       (let ((_g28280_
                                                              (values-count
                                                               _g28279_)))
                                                         (if (not (fx= _g28280_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g28280_)))
               (let ((_target30013106_ (values-ref _g28279_ 0))
                     (_tl30033109_ (values-ref _g28279_ 1)))
                 (if (gx#stx-null? _tl30033109_)
                     (letrec ((_loop30043112_
                               (lambda (_hd30023116_ _body30083119_)
                                 (if (gx#stx-pair? _hd30023116_)
                                     (let ((_e30053122_
                                            (gx#syntax-e _hd30023116_)))
                                       (let ((_lp-hd30063126_
                                              (##car _e30053122_))
                                             (_lp-tl30073129_
                                              (##cdr _e30053122_)))
                                         (_loop30043112_
                                          _lp-tl30073129_
                                          (cons _lp-hd30063126_
                                                _body30083119_))))
                                     (let ((_body30093132_
                                            (reverse _body30083119_)))
                                       ((lambda (_L3136_
                                                 _L3138_
                                                 _L3139_
                                                 _L3140_)
                                          (if (gx#stx-andmap
                                               _let-head?2944_
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g31663169_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g31673172_)
                  (cons _g31663169_ _g31673172_))
                '()
                _L3139_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g31753192_
                                                     (lambda (_g31763188_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g31763188_))))
                                                (let ((_g31743264_
                                                       (lambda (_g31763196_)
                                                         (if (gx#stx-pair/null?
                                                              _g31763196_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g31763196_)
                               '0)
                         (let ((_g28281_
                                (gx#syntax-split-splice _g31763196_ '0)))
                           (begin
                             (let ((_g28282_ (values-count _g28281_)))
                               (if (not (fx= _g28282_ 2))
                                   (error "Context expects 2 values"
                                          _g28282_)))
                             (let ((_target31783199_ (values-ref _g28281_ 0))
                                   (_tl31803202_ (values-ref _g28281_ 1)))
                               (if (gx#stx-null? _tl31803202_)
                                   (letrec ((_loop31813205_
                                             (lambda (_hd31793209_
                                                      _hd-bind31853212_)
                                               (if (gx#stx-pair? _hd31793209_)
                                                   (let ((_e31823215_
                                                          (gx#syntax-e
                                                           _hd31793209_)))
                                                     (let ((_lp-hd31833219_
                                                            (##car _e31823215_))
                                                           (_lp-tl31843222_
                                                            (##cdr _e31823215_)))
                                                       (_loop31813205_
                                                        _lp-tl31843222_
                                                        (cons _lp-hd31833219_
                                                              _hd-bind31853212_))))
                                                   (let ((_hd-bind31863225_
                                                          (reverse _hd-bind31853212_)))
                                                     ((lambda (_L3229_)
                                                        (let ()
                                                          (cons _L3140_
                                                                (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (gx#syntax-check-splice-targets
                                 _L3138_
                                 _L3229_)
                                (foldr (lambda (_g32443250_
                                                _g32453253_
                                                _g32463255_)
                                         (cons (cons _g32453253_
                                                     (cons _g32443250_ '()))
                                               _g32463255_))
                                       '()
                                       _L3138_
                                       _L3229_))
                              (begin
                                '#!void
                                (foldr (lambda (_g32473258_ _g32483261_)
                                         (cons _g32473258_ _g32483261_))
                                       '()
                                       _L3136_))))))
              _hd-bind31863225_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop31813205_ _target31783199_ '()))
                                   (_g31753192_ _g31763196_)))))
                         (_g31753192_ _g31763196_))
                     (_g31753192_ _g31763196_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g31743264_
                                                   (gx#stx-map
                                                    _let-head2946_
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g32673270_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g32683273_)
                       (cons _g32673270_ _g32683273_))
                     '()
                     _L3139_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g29493015_ _g29503019_)))
                                        _body30093132_
                                        _e29933100_
                                        _hd29943103_
                                        _hd29793036_))))))
                       (_loop30043112_ _target30013106_ '()))
                     (_g29493015_ _g29503019_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g29493015_ _g29503019_))
                                               (_g29493015_ _g29503019_)))))))
                           (_loop29873058_ _target29843052_ '() '()))
                         (_g29493015_ _g29503019_)))))
               (_g29493015_ _g29503019_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g29493015_ _g29503019_))))
                                           (_g29493015_ _g29503019_))))
                                   (_g29493015_ _g29503019_))))
                           (_g29493015_ _g29503019_)))))
                (let ((_g29473360_
                       (lambda (_g29503280_)
                         (if (gx#stx-pair? _g29503280_)
                             (let ((_e29563283_ (gx#syntax-e _g29503280_)))
                               (let ((_hd29573287_ (##car _e29563283_))
                                     (_tl29583290_ (##cdr _e29563283_)))
                                 (if (gx#stx-pair? _tl29583290_)
                                     (let ((_e29593293_
                                            (gx#syntax-e _tl29583290_)))
                                       (let ((_hd29603297_ (##car _e29593293_))
                                             (_tl29613300_
                                              (##cdr _e29593293_)))
                                         (if (gx#stx-pair? _tl29613300_)
                                             (let ((_e29623303_
                                                    (gx#syntax-e
                                                     _tl29613300_)))
                                               (let ((_hd29633307_
                                                      (##car _e29623303_))
                                                     (_tl29643310_
                                                      (##cdr _e29623303_)))
                                                 (if (gx#stx-pair?
                                                      _hd29633307_)
                                                     (let ((_e29653313_
                                                            (gx#syntax-e
                                                             _hd29633307_)))
                                                       (let ((_hd29663317_
                                                              (##car _e29653313_))
                                                             (_tl29673320_
                                                              (##cdr _e29653313_)))
                                                         (if (gx#stx-pair?
                                                              _tl29673320_)
                                                             (let ((_e29683323_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl29673320_)))
                       (let ((_hd29693327_ (##car _e29683323_))
                             (_tl29703330_ (##cdr _e29683323_)))
                         (if (gx#stx-null? _tl29703330_)
                             ((lambda (_L3333_ _L3335_ _L3336_ _L3337_ _L3338_)
                                (if (_let-head?2944_ _L3336_)
                                    (cons _L3338_
                                          (cons _L3337_
                                                (cons (cons (cons _L3336_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L3335_ '()))
                    '())
              _L3333_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_g29483276_ _g29503280_)))
                              _tl29643310_
                              _hd29693327_
                              _hd29663317_
                              _hd29603297_
                              _hd29573287_)
                             (_g29483276_ _g29503280_))))
                     (_g29483276_ _g29503280_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g29483276_
                                                      _g29503280_))))
                                             (_g29483276_ _g29503280_))))
                                     (_g29483276_ _g29503280_))))
                             (_g29483276_ _g29503280_)))))
                  (_g29473360_ _stx2941_))))))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#and|
      (lambda (_$stx3487_)
        (let ((_g34933519_
               (lambda (_g34943515_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g34943515_))))
          (let ((_g34923564_
                 (lambda (_g34943523_)
                   (if (gx#stx-pair? _g34943523_)
                       (let ((_e35083526_ (gx#syntax-e _g34943523_)))
                         (let ((_hd35093530_ (##car _e35083526_))
                               (_tl35103533_ (##cdr _e35083526_)))
                           (if (gx#stx-pair? _tl35103533_)
                               (let ((_e35113536_ (gx#syntax-e _tl35103533_)))
                                 (let ((_hd35123540_ (##car _e35113536_))
                                       (_tl35133543_ (##cdr _e35113536_)))
                                   ((lambda (_L3546_ _L3548_ _L3549_)
                                      (cons (gx#datum->syntax '#f 'if)
                                            (cons _L3548_
                                                  (cons (cons _L3549_ _L3546_)
                                                        (cons '#f '())))))
                                    _tl35133543_
                                    _hd35123540_
                                    _hd35093530_)))
                               (_g34933519_ _g34943523_))))
                       (_g34933519_ _g34943523_)))))
            (let ((_g34913604_
                   (lambda (_g34943568_)
                     (if (gx#stx-pair? _g34943568_)
                         (let ((_e34993571_ (gx#syntax-e _g34943568_)))
                           (let ((_hd35003575_ (##car _e34993571_))
                                 (_tl35013578_ (##cdr _e34993571_)))
                             (if (gx#stx-pair? _tl35013578_)
                                 (let ((_e35023581_
                                        (gx#syntax-e _tl35013578_)))
                                   (let ((_hd35033585_ (##car _e35023581_))
                                         (_tl35043588_ (##cdr _e35023581_)))
                                     (if (gx#stx-null? _tl35043588_)
                                         ((lambda (_L3591_) _L3591_)
                                          _hd35033585_)
                                         (_g34923564_ _g34943568_))))
                                 (_g34923564_ _g34943568_))))
                         (_g34923564_ _g34943568_)))))
              (let ((_g34903625_
                     (lambda (_g34943608_)
                       (if (gx#stx-pair? _g34943608_)
                           (let ((_e34953611_ (gx#syntax-e _g34943608_)))
                             (let ((_hd34963615_ (##car _e34953611_))
                                   (_tl34973618_ (##cdr _e34953611_)))
                               (if (gx#stx-null? _tl34973618_)
                                   ((lambda () '#t))
                                   (_g34913604_ _g34943608_))))
                           (_g34913604_ _g34943608_)))))
                (_g34903625_ _$stx3487_)))))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#or|
      (lambda (_$stx3629_)
        (let ((_g36353661_
               (lambda (_g36363657_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g36363657_))))
          (let ((_g36343706_
                 (lambda (_g36363665_)
                   (if (gx#stx-pair? _g36363665_)
                       (let ((_e36503668_ (gx#syntax-e _g36363665_)))
                         (let ((_hd36513672_ (##car _e36503668_))
                               (_tl36523675_ (##cdr _e36503668_)))
                           (if (gx#stx-pair? _tl36523675_)
                               (let ((_e36533678_ (gx#syntax-e _tl36523675_)))
                                 (let ((_hd36543682_ (##car _e36533678_))
                                       (_tl36553685_ (##cdr _e36533678_)))
                                   ((lambda (_L3688_ _L3690_ _L3691_)
                                      (cons (gx#datum->syntax '#f 'let)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         '$e)
                                                        (cons _L3690_ '()))
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'if)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '$e)
                            (cons (gx#datum->syntax '#f '$e)
                                  (cons (cons _L3691_ _L3688_) '()))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _tl36553685_
                                    _hd36543682_
                                    _hd36513672_)))
                               (_g36353661_ _g36363665_))))
                       (_g36353661_ _g36363665_)))))
            (let ((_g36333746_
                   (lambda (_g36363710_)
                     (if (gx#stx-pair? _g36363710_)
                         (let ((_e36413713_ (gx#syntax-e _g36363710_)))
                           (let ((_hd36423717_ (##car _e36413713_))
                                 (_tl36433720_ (##cdr _e36413713_)))
                             (if (gx#stx-pair? _tl36433720_)
                                 (let ((_e36443723_
                                        (gx#syntax-e _tl36433720_)))
                                   (let ((_hd36453727_ (##car _e36443723_))
                                         (_tl36463730_ (##cdr _e36443723_)))
                                     (if (gx#stx-null? _tl36463730_)
                                         ((lambda (_L3733_) _L3733_)
                                          _hd36453727_)
                                         (_g36343706_ _g36363710_))))
                                 (_g36343706_ _g36363710_))))
                         (_g36343706_ _g36363710_)))))
              (let ((_g36323767_
                     (lambda (_g36363750_)
                       (if (gx#stx-pair? _g36363750_)
                           (let ((_e36373753_ (gx#syntax-e _g36363750_)))
                             (let ((_hd36383757_ (##car _e36373753_))
                                   (_tl36393760_ (##cdr _e36373753_)))
                               (if (gx#stx-null? _tl36393760_)
                                   ((lambda () '#f))
                                   (_g36333746_ _g36363750_))))
                           (_g36333746_ _g36363750_)))))
                (_g36323767_ _$stx3629_)))))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#cond|
      (lambda (_$stx3771_)
        (let ((_g37803871_
               (lambda (_g37813867_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g37813867_))))
          (let ((_g37793972_
                 (lambda (_g37813875_)
                   (if (gx#stx-pair? _g37813875_)
                       (let ((_e38483878_ (gx#syntax-e _g37813875_)))
                         (let ((_hd38493882_ (##car _e38483878_))
                               (_tl38503885_ (##cdr _e38483878_)))
                           (if (gx#stx-pair? _tl38503885_)
                               (let ((_e38513888_ (gx#syntax-e _tl38503885_)))
                                 (let ((_hd38523892_ (##car _e38513888_))
                                       (_tl38533895_ (##cdr _e38513888_)))
                                   (if (gx#stx-pair? _hd38523892_)
                                       (let ((_e38543898_
                                              (gx#syntax-e _hd38523892_)))
                                         (let ((_hd38553902_
                                                (##car _e38543898_))
                                               (_tl38563905_
                                                (##cdr _e38543898_)))
                                           (if (gx#stx-pair/null? _tl38563905_)
                                               (if (fx>= (gx#stx-length
                                                          _tl38563905_)
                                                         '0)
                                                   (let ((_g28285_
                                                          (gx#syntax-split-splice
                                                           _tl38563905_
                                                           '0)))
                                                     (begin
                                                       (let ((_g28286_
                                                              (values-count
                                                               _g28285_)))
                                                         (if (not (fx= _g28286_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g28286_)))
               (let ((_target38573908_ (values-ref _g28285_ 0))
                     (_tl38593911_ (values-ref _g28285_ 1)))
                 (if (gx#stx-null? _tl38593911_)
                     (letrec ((_loop38603914_
                               (lambda (_hd38583918_ _body38643921_)
                                 (if (gx#stx-pair? _hd38583918_)
                                     (let ((_e38613924_
                                            (gx#syntax-e _hd38583918_)))
                                       (let ((_lp-hd38623928_
                                              (##car _e38613924_))
                                             (_lp-tl38633931_
                                              (##cdr _e38613924_)))
                                         (_loop38603914_
                                          _lp-tl38633931_
                                          (cons _lp-hd38623928_
                                                _body38643921_))))
                                     (let ((_body38653934_
                                            (reverse _body38643921_)))
                                       ((lambda (_L3938_
                                                 _L3940_
                                                 _L3941_
                                                 _L3942_)
                                          (cons (gx#datum->syntax '#f 'if)
                                                (cons _L3941_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'begin)
                          (begin
                            '#!void
                            (foldr (lambda (_g39633966_ _g39643969_)
                                     (cons _g39633966_ _g39643969_))
                                   '()
                                   _L3940_)))
                    (cons (cons _L3942_ _L3938_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _tl38533895_
                                        _body38653934_
                                        _hd38553902_
                                        _hd38493882_))))))
                       (_loop38603914_ _target38573908_ '()))
                     (_g37803871_ _g37813875_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g37803871_ _g37813875_))
                                               (_g37803871_ _g37813875_))))
                                       (_g37803871_ _g37813875_))))
                               (_g37803871_ _g37813875_))))
                       (_g37803871_ _g37813875_)))))
            (let ((_g37784028_
                   (lambda (_g37813976_)
                     (if (gx#stx-pair? _g37813976_)
                         (let ((_e38353979_ (gx#syntax-e _g37813976_)))
                           (let ((_hd38363983_ (##car _e38353979_))
                                 (_tl38373986_ (##cdr _e38353979_)))
                             (if (gx#stx-pair? _tl38373986_)
                                 (let ((_e38383989_
                                        (gx#syntax-e _tl38373986_)))
                                   (let ((_hd38393993_ (##car _e38383989_))
                                         (_tl38403996_ (##cdr _e38383989_)))
                                     (if (gx#stx-pair? _hd38393993_)
                                         (let ((_e38413999_
                                                (gx#syntax-e _hd38393993_)))
                                           (let ((_hd38424003_
                                                  (##car _e38413999_))
                                                 (_tl38434006_
                                                  (##cdr _e38413999_)))
                                             (if (gx#stx-null? _tl38434006_)
                                                 ((lambda (_L4009_
                                                           _L4011_
                                                           _L4012_)
                                                    (cons _L4012_
                                                          (cons (cons _L4011_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#datum->syntax '#f '=>)
                                    (cons (gx#datum->syntax '#f 'values) '())))
                        _L4009_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _tl38403996_
                                                  _hd38424003_
                                                  _hd38363983_)
                                                 (_g37793972_ _g37813976_))))
                                         (_g37793972_ _g37813976_))))
                                 (_g37793972_ _g37813976_))))
                         (_g37793972_ _g37813976_)))))
              (let ((_g37774110_
                     (lambda (_g37814032_)
                       (if (gx#stx-pair? _g37814032_)
                           (let ((_e38174035_ (gx#syntax-e _g37814032_)))
                             (let ((_hd38184039_ (##car _e38174035_))
                                   (_tl38194042_ (##cdr _e38174035_)))
                               (if (gx#stx-pair? _tl38194042_)
                                   (let ((_e38204045_
                                          (gx#syntax-e _tl38194042_)))
                                     (let ((_hd38214049_ (##car _e38204045_))
                                           (_tl38224052_ (##cdr _e38204045_)))
                                       (if (gx#stx-pair? _hd38214049_)
                                           (let ((_e38234055_
                                                  (gx#syntax-e _hd38214049_)))
                                             (let ((_hd38244059_
                                                    (##car _e38234055_))
                                                   (_tl38254062_
                                                    (##cdr _e38234055_)))
                                               (if (gx#stx-pair? _tl38254062_)
                                                   (let ((_e38264065_
                                                          (gx#syntax-e
                                                           _tl38254062_)))
                                                     (let ((_hd38274069_
                                                            (##car _e38264065_))
                                                           (_tl38284072_
                                                            (##cdr _e38264065_)))
                                                       (if (gx#identifier?
                                                            _hd38274069_)
                                                           (if (gx#free-identifier=?
                                                                |gerbil/core::<sugar>::<sugar:1>[1]#_g28287_|
                                                                _hd38274069_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl38284072_)
                           (let ((_e38294075_ (gx#syntax-e _tl38284072_)))
                             (let ((_hd38304079_ (##car _e38294075_))
                                   (_tl38314082_ (##cdr _e38294075_)))
                               (if (gx#stx-null? _tl38314082_)
                                   ((lambda (_L4085_ _L4087_ _L4088_ _L4089_)
                                      (cons (gx#datum->syntax '#f 'let)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         '$e)
                                                        (cons _L4088_ '()))
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'if)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '$e)
                            (cons (cons _L4087_
                                        (cons (gx#datum->syntax '#f '$e) '()))
                                  (cons (cons _L4089_ _L4085_) '()))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _tl38224052_
                                    _hd38304079_
                                    _hd38244059_
                                    _hd38184039_)
                                   (_g37784028_ _g37814032_))))
                           (_g37784028_ _g37814032_))
                       (_g37784028_ _g37814032_))
                   (_g37784028_ _g37814032_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g37784028_ _g37814032_))))
                                           (_g37784028_ _g37814032_))))
                                   (_g37784028_ _g37814032_))))
                           (_g37784028_ _g37814032_)))))
                (let ((_g37764151_
                       (lambda (_g37814114_)
                         (if (gx#stx-pair? _g37814114_)
                             (let ((_e38044117_ (gx#syntax-e _g37814114_)))
                               (let ((_hd38054121_ (##car _e38044117_))
                                     (_tl38064124_ (##cdr _e38044117_)))
                                 (if (gx#stx-pair? _tl38064124_)
                                     (let ((_e38074127_
                                            (gx#syntax-e _tl38064124_)))
                                       (let ((_hd38084131_ (##car _e38074127_))
                                             (_tl38094134_
                                              (##cdr _e38074127_)))
                                         (if (gx#stx-pair? _hd38084131_)
                                             (let ((_e38104137_
                                                    (gx#syntax-e
                                                     _hd38084131_)))
                                               (let ((_hd38114141_
                                                      (##car _e38104137_))
                                                     (_tl38124144_
                                                      (##cdr _e38104137_)))
                                                 (if (gx#identifier?
                                                      _hd38114141_)
                                                     (if (gx#free-identifier=?
                                                          |gerbil/core::<sugar>::<sugar:1>[1]#_g28288_|
                                                          _hd38114141_)
                                                         ((lambda ()
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'syntax-error)
                          (cons '"Bad syntax; misplaced else" '()))))
                 (_g37774110_ _g37814114_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g37774110_
                                                      _g37814114_))))
                                             (_g37774110_ _g37814114_))))
                                     (_g37774110_ _g37814114_))))
                             (_g37774110_ _g37814114_)))))
                  (let ((_g37754246_
                         (lambda (_g37814155_)
                           (if (gx#stx-pair? _g37814155_)
                               (let ((_e37864158_ (gx#syntax-e _g37814155_)))
                                 (let ((_hd37874162_ (##car _e37864158_))
                                       (_tl37884165_ (##cdr _e37864158_)))
                                   (if (gx#stx-pair? _tl37884165_)
                                       (let ((_e37894168_
                                              (gx#syntax-e _tl37884165_)))
                                         (let ((_hd37904172_
                                                (##car _e37894168_))
                                               (_tl37914175_
                                                (##cdr _e37894168_)))
                                           (if (gx#stx-pair? _hd37904172_)
                                               (let ((_e37924178_
                                                      (gx#syntax-e
                                                       _hd37904172_)))
                                                 (let ((_hd37934182_
                                                        (##car _e37924178_))
                                                       (_tl37944185_
                                                        (##cdr _e37924178_)))
                                                   (if (gx#identifier?
                                                        _hd37934182_)
                                                       (if (gx#free-identifier=?
                                                            |gerbil/core::<sugar>::<sugar:1>[1]#_g28289_|
                                                            _hd37934182_)
                                                           (if (gx#stx-pair/null?
                                                                _tl37944185_)
                                                               (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _tl37944185_)
                                 '0)
                           (let ((_g28290_
                                  (gx#syntax-split-splice _tl37944185_ '0)))
                             (begin
                               (let ((_g28291_ (values-count _g28290_)))
                                 (if (not (fx= _g28291_ 2))
                                     (error "Context expects 2 values"
                                            _g28291_)))
                               (let ((_target37954188_ (values-ref _g28290_ 0))
                                     (_tl37974191_ (values-ref _g28290_ 1)))
                                 (if (gx#stx-null? _tl37974191_)
                                     (letrec ((_loop37984194_
                                               (lambda (_hd37964198_
                                                        _body38024201_)
                                                 (if (gx#stx-pair?
                                                      _hd37964198_)
                                                     (let ((_e37994204_
                                                            (gx#syntax-e
                                                             _hd37964198_)))
                                                       (let ((_lp-hd38004208_
                                                              (##car _e37994204_))
                                                             (_lp-tl38014211_
                                                              (##cdr _e37994204_)))
                                                         (_loop37984194_
                                                          _lp-tl38014211_
                                                          (cons _lp-hd38004208_
                                                                _body38024201_))))
                                                     (let ((_body38034214_
                                                            (reverse _body38024201_)))
                                                       (if (gx#stx-null?
                                                            _tl37914175_)
                                                           ((lambda (_L4218_)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '%#expression)
                            (cons (cons (gx#datum->syntax '#f 'begin)
                                        (begin
                                          '#!void
                                          (foldr (lambda (_g42374240_
                                                          _g42384243_)
                                                   (cons _g42374240_
                                                         _g42384243_))
                                                 '()
                                                 _L4218_)))
                                  '())))
                    _body38034214_)
                   (_g37764151_ _g37814155_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_loop37984194_ _target37954188_ '()))
                                     (_g37764151_ _g37814155_)))))
                           (_g37764151_ _g37814155_))
                       (_g37764151_ _g37814155_))
                   (_g37764151_ _g37814155_))
               (_g37764151_ _g37814155_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g37764151_ _g37814155_))))
                                       (_g37764151_ _g37814155_))))
                               (_g37764151_ _g37814155_)))))
                    (let ((_g37744267_
                           (lambda (_g37814250_)
                             (if (gx#stx-pair? _g37814250_)
                                 (let ((_e37824253_ (gx#syntax-e _g37814250_)))
                                   (let ((_hd37834257_ (##car _e37824253_))
                                         (_tl37844260_ (##cdr _e37824253_)))
                                     (if (gx#stx-null? _tl37844260_)
                                         ((lambda () '#!void))
                                         (_g37754246_ _g37814250_))))
                                 (_g37754246_ _g37814250_)))))
                      (_g37744267_ _$stx3771_))))))))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#when|
      (lambda (_$stx4273_)
        (let ((_g42774301_
               (lambda (_g42784297_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g42784297_))))
          (let ((_g42764386_
                 (lambda (_g42784305_)
                   (if (gx#stx-pair? _g42784305_)
                       (let ((_e42814308_ (gx#syntax-e _g42784305_)))
                         (let ((_hd42824312_ (##car _e42814308_))
                               (_tl42834315_ (##cdr _e42814308_)))
                           (if (gx#stx-pair? _tl42834315_)
                               (let ((_e42844318_ (gx#syntax-e _tl42834315_)))
                                 (let ((_hd42854322_ (##car _e42844318_))
                                       (_tl42864325_ (##cdr _e42844318_)))
                                   (if (gx#stx-pair/null? _tl42864325_)
                                       (if (fx>= (gx#stx-length _tl42864325_)
                                                 '0)
                                           (let ((_g28292_
                                                  (gx#syntax-split-splice
                                                   _tl42864325_
                                                   '0)))
                                             (begin
                                               (let ((_g28293_
                                                      (values-count _g28292_)))
                                                 (if (not (fx= _g28293_ 2))
                                                     (error "Context expects 2 values"
                                                            _g28293_)))
                                               (let ((_target42874328_
                                                      (values-ref _g28292_ 0))
                                                     (_tl42894331_
                                                      (values-ref _g28292_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl42894331_)
                                                     (letrec ((_loop42904334_
                                                               (lambda (_hd42884338_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr42944341_)
                         (if (gx#stx-pair? _hd42884338_)
                             (let ((_e42914344_ (gx#syntax-e _hd42884338_)))
                               (let ((_lp-hd42924348_ (##car _e42914344_))
                                     (_lp-tl42934351_ (##cdr _e42914344_)))
                                 (_loop42904334_
                                  _lp-tl42934351_
                                  (cons _lp-hd42924348_ _expr42944341_))))
                             (let ((_expr42954354_ (reverse _expr42944341_)))
                               ((lambda (_L4358_ _L4360_)
                                  (cons (gx#datum->syntax '#f 'if)
                                        (cons _L4360_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'begin)
                                                          (begin
                                                            '#!void
                                                            (foldr (lambda (_g43774380_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g43784383_)
                             (cons _g43774380_ _g43784383_))
                           '()
                           _L4358_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons '#!void '())))))
                                _expr42954354_
                                _hd42854322_))))))
               (_loop42904334_ _target42874328_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g42774301_
                                                      _g42784305_)))))
                                           (_g42774301_ _g42784305_))
                                       (_g42774301_ _g42784305_))))
                               (_g42774301_ _g42784305_))))
                       (_g42774301_ _g42784305_)))))
            (_g42764386_ _$stx4273_)))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#unless|
      (lambda (_$stx4391_)
        (let ((_g43954419_
               (lambda (_g43964415_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g43964415_))))
          (let ((_g43944504_
                 (lambda (_g43964423_)
                   (if (gx#stx-pair? _g43964423_)
                       (let ((_e43994426_ (gx#syntax-e _g43964423_)))
                         (let ((_hd44004430_ (##car _e43994426_))
                               (_tl44014433_ (##cdr _e43994426_)))
                           (if (gx#stx-pair? _tl44014433_)
                               (let ((_e44024436_ (gx#syntax-e _tl44014433_)))
                                 (let ((_hd44034440_ (##car _e44024436_))
                                       (_tl44044443_ (##cdr _e44024436_)))
                                   (if (gx#stx-pair/null? _tl44044443_)
                                       (if (fx>= (gx#stx-length _tl44044443_)
                                                 '0)
                                           (let ((_g28294_
                                                  (gx#syntax-split-splice
                                                   _tl44044443_
                                                   '0)))
                                             (begin
                                               (let ((_g28295_
                                                      (values-count _g28294_)))
                                                 (if (not (fx= _g28295_ 2))
                                                     (error "Context expects 2 values"
                                                            _g28295_)))
                                               (let ((_target44054446_
                                                      (values-ref _g28294_ 0))
                                                     (_tl44074449_
                                                      (values-ref _g28294_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl44074449_)
                                                     (letrec ((_loop44084452_
                                                               (lambda (_hd44064456_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr44124459_)
                         (if (gx#stx-pair? _hd44064456_)
                             (let ((_e44094462_ (gx#syntax-e _hd44064456_)))
                               (let ((_lp-hd44104466_ (##car _e44094462_))
                                     (_lp-tl44114469_ (##cdr _e44094462_)))
                                 (_loop44084452_
                                  _lp-tl44114469_
                                  (cons _lp-hd44104466_ _expr44124459_))))
                             (let ((_expr44134472_ (reverse _expr44124459_)))
                               ((lambda (_L4476_ _L4478_)
                                  (cons (gx#datum->syntax '#f 'if)
                                        (cons _L4478_
                                              (cons '#!void
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'begin)
                        (begin
                          '#!void
                          (foldr (lambda (_g44954498_ _g44964501_)
                                   (cons _g44954498_ _g44964501_))
                                 '()
                                 _L4476_)))
                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _expr44134472_
                                _hd44034440_))))))
               (_loop44084452_ _target44054446_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g43954419_
                                                      _g43964423_)))))
                                           (_g43954419_ _g43964423_))
                                       (_g43954419_ _g43964423_))))
                               (_g43954419_ _g43964423_))))
                       (_g43954419_ _g43964423_)))))
            (_g43944504_ _$stx4391_)))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#syntax-error|
      (lambda (_stx4509_)
        (let ((_g45124536_
               (lambda (_g45134532_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g45134532_))))
          (let ((_g45114621_
                 (lambda (_g45134540_)
                   (if (gx#stx-pair? _g45134540_)
                       (let ((_e45164543_ (gx#syntax-e _g45134540_)))
                         (let ((_hd45174547_ (##car _e45164543_))
                               (_tl45184550_ (##cdr _e45164543_)))
                           (if (gx#stx-pair? _tl45184550_)
                               (let ((_e45194553_ (gx#syntax-e _tl45184550_)))
                                 (let ((_hd45204557_ (##car _e45194553_))
                                       (_tl45214560_ (##cdr _e45194553_)))
                                   (if (gx#stx-pair/null? _tl45214560_)
                                       (if (fx>= (gx#stx-length _tl45214560_)
                                                 '0)
                                           (let ((_g28296_
                                                  (gx#syntax-split-splice
                                                   _tl45214560_
                                                   '0)))
                                             (begin
                                               (let ((_g28297_
                                                      (values-count _g28296_)))
                                                 (if (not (fx= _g28297_ 2))
                                                     (error "Context expects 2 values"
                                                            _g28297_)))
                                               (let ((_target45224563_
                                                      (values-ref _g28296_ 0))
                                                     (_tl45244566_
                                                      (values-ref _g28296_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl45244566_)
                                                     (letrec ((_loop45254569_
                                                               (lambda (_hd45234573_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _detail45294576_)
                         (if (gx#stx-pair? _hd45234573_)
                             (let ((_e45264579_ (gx#syntax-e _hd45234573_)))
                               (let ((_lp-hd45274583_ (##car _e45264579_))
                                     (_lp-tl45284586_ (##cdr _e45264579_)))
                                 (_loop45254569_
                                  _lp-tl45284586_
                                  (cons _lp-hd45274583_ _detail45294576_))))
                             (let ((_detail45304589_
                                    (reverse _detail45294576_)))
                               ((lambda (_L4593_ _L4595_)
                                  (if (gx#stx-string? _L4595_)
                                      (apply gx#raise-syntax-error
                                             '#f
                                             (gx#stx-e _L4595_)
                                             _stx4509_
                                             (gx#syntax->list
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g46124615_
                                                                _g46134618_)
                                                         (cons _g46124615_
                                                               _g46134618_))
                                                       '()
                                                       _L4593_))))
                                      (_g45124536_ _g45134540_)))
                                _detail45304589_
                                _hd45204557_))))))
               (_loop45254569_ _target45224563_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g45124536_
                                                      _g45134540_)))))
                                           (_g45124536_ _g45134540_))
                                       (_g45124536_ _g45134540_))))
                               (_g45124536_ _g45134540_))))
                       (_g45124536_ _g45134540_)))))
            (_g45114621_ _stx4509_)))))))
