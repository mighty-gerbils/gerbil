(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<sugar>::<sugar:1>[1]#_g30602_|
    (gx#core-quote-syntax 'values))
  (define |gerbil/core::<sugar>::<sugar:1>[1]#_g30603_|
    (gx#core-quote-syntax 'values))
  (define |gerbil/core::<sugar>::<sugar:1>[1]#_g30612_|
    (gx#core-quote-syntax '=>))
  (define |gerbil/core::<sugar>::<sugar:1>[1]#_g30613_|
    (gx#core-quote-syntax 'else))
  (define |gerbil/core::<sugar>::<sugar:1>[1]#_g30614_|
    (gx#core-quote-syntax 'else))
  (begin
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#defrules|
      (lambda (_$stx1629_)
        (let* ((_g16331661_
                (lambda (_g16341657_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g16341657_)))
               (_g16321762_
                (lambda (_g16341665_)
                  (if (gx#stx-pair? _g16341665_)
                      (let ((_e16381668_ (gx#syntax-e _g16341665_)))
                        (let ((_hd16391672_ (##car _e16381668_))
                              (_tl16401675_ (##cdr _e16381668_)))
                          (if (gx#stx-pair? _tl16401675_)
                              (let ((_e16411678_ (gx#syntax-e _tl16401675_)))
                                (let ((_hd16421682_ (##car _e16411678_))
                                      (_tl16431685_ (##cdr _e16411678_)))
                                  (if (gx#stx-pair? _tl16431685_)
                                      (let ((_e16441688_
                                             (gx#syntax-e _tl16431685_)))
                                        (let ((_hd16451692_
                                               (##car _e16441688_))
                                              (_tl16461695_
                                               (##cdr _e16441688_)))
                                          (if (gx#stx-pair/null? _tl16461695_)
                                              (if (fx>= (gx#stx-length
                                                         _tl16461695_)
                                                        '0)
                                                  (let ((_g30580_
                                                         (gx#syntax-split-splice
                                                          _tl16461695_
                                                          '0)))
                                                    (begin
                                                      (let ((_g30581_
                                                             (values-count
                                                              _g30580_)))
                                                        (if (not (fx= _g30581_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g30581_)))
              (let ((_target16471698_ (values-ref _g30580_ 0))
                    (_tl16491701_ (values-ref _g30580_ 1)))
                (if (gx#stx-null? _tl16491701_)
                    (letrec ((_loop16501704_
                              (lambda (_hd16481708_ _clauses16541711_)
                                (if (gx#stx-pair? _hd16481708_)
                                    (let ((_e16511714_
                                           (gx#syntax-e _hd16481708_)))
                                      (let ((_lp-hd16521718_
                                             (##car _e16511714_))
                                            (_lp-tl16531721_
                                             (##cdr _e16511714_)))
                                        (_loop16501704_
                                         _lp-tl16531721_
                                         (cons _lp-hd16521718_
                                               _clauses16541711_))))
                                    (let ((_clauses16551724_
                                           (reverse _clauses16541711_)))
                                      ((lambda (_L1728_ _L1730_ _L1731_)
                                         (if (gx#identifier? _L1731_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'define-syntax)
                                                   (cons _L1731_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'syntax-rules)
                             (cons _L1730_
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g17531756_ _g17541759_)
                                              (cons _g17531756_ _g17541759_))
                                            '()
                                            _L1728_))))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g16331661_ _g16341665_)))
                                       _clauses16551724_
                                       _hd16451692_
                                       _hd16421682_))))))
                      (_loop16501704_ _target16471698_ '()))
                    (_g16331661_ _g16341665_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g16331661_ _g16341665_))
                                              (_g16331661_ _g16341665_))))
                                      (_g16331661_ _g16341665_))))
                              (_g16331661_ _g16341665_))))
                      (_g16331661_ _g16341665_)))))
          (_g16321762_ _$stx1629_))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#defsyntax%|
      (lambda (_$stx1767_)
        (let* ((_g17721811_
                (lambda (_g17731807_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g17731807_)))
               (_g17711866_
                (lambda (_g17731815_)
                  (if (gx#stx-pair? _g17731815_)
                      (let ((_e17971818_ (gx#syntax-e _g17731815_)))
                        (let ((_hd17981822_ (##car _e17971818_))
                              (_tl17991825_ (##cdr _e17971818_)))
                          (if (gx#stx-pair? _tl17991825_)
                              (let ((_e18001828_ (gx#syntax-e _tl17991825_)))
                                (let ((_hd18011832_ (##car _e18001828_))
                                      (_tl18021835_ (##cdr _e18001828_)))
                                  (if (gx#stx-pair? _tl18021835_)
                                      (let ((_e18031838_
                                             (gx#syntax-e _tl18021835_)))
                                        (let ((_hd18041842_
                                               (##car _e18031838_))
                                              (_tl18051845_
                                               (##cdr _e18031838_)))
                                          (if (gx#stx-null? _tl18051845_)
                                              ((lambda (_L1848_ _L1850_)
                                                 (if (gx#identifier? _L1850_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'define-syntax)
                                                           (cons _L1850_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L1848_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g17721811_
                                                      _g17731815_)))
                                               _hd18041842_
                                               _hd18011832_)
                                              (_g17721811_ _g17731815_))))
                                      (_g17721811_ _g17731815_))))
                              (_g17721811_ _g17731815_))))
                      (_g17721811_ _g17731815_))))
               (_g17701964_
                (lambda (_g17731870_)
                  (if (gx#stx-pair? _g17731870_)
                      (let ((_e17771873_ (gx#syntax-e _g17731870_)))
                        (let ((_hd17781877_ (##car _e17771873_))
                              (_tl17791880_ (##cdr _e17771873_)))
                          (if (gx#stx-pair? _tl17791880_)
                              (let ((_e17801883_ (gx#syntax-e _tl17791880_)))
                                (let ((_hd17811887_ (##car _e17801883_))
                                      (_tl17821890_ (##cdr _e17801883_)))
                                  (if (gx#stx-pair? _hd17811887_)
                                      (let ((_e17831893_
                                             (gx#syntax-e _hd17811887_)))
                                        (let ((_hd17841897_
                                               (##car _e17831893_))
                                              (_tl17851900_
                                               (##cdr _e17831893_)))
                                          (if (gx#stx-pair/null? _tl17821890_)
                                              (if (fx>= (gx#stx-length
                                                         _tl17821890_)
                                                        '0)
                                                  (let ((_g30582_
                                                         (gx#syntax-split-splice
                                                          _tl17821890_
                                                          '0)))
                                                    (begin
                                                      (let ((_g30583_
                                                             (values-count
                                                              _g30582_)))
                                                        (if (not (fx= _g30583_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g30583_)))
              (let ((_target17861903_ (values-ref _g30582_ 0))
                    (_tl17881906_ (values-ref _g30582_ 1)))
                (if (gx#stx-null? _tl17881906_)
                    (letrec ((_loop17891909_
                              (lambda (_hd17871913_ _body17931916_)
                                (if (gx#stx-pair? _hd17871913_)
                                    (let ((_e17901919_
                                           (gx#syntax-e _hd17871913_)))
                                      (let ((_lp-hd17911923_
                                             (##car _e17901919_))
                                            (_lp-tl17921926_
                                             (##cdr _e17901919_)))
                                        (_loop17891909_
                                         _lp-tl17921926_
                                         (cons _lp-hd17911923_
                                               _body17931916_))))
                                    (let ((_body17941929_
                                           (reverse _body17931916_)))
                                      ((lambda (_L1933_ _L1935_ _L1936_)
                                         (if (gx#identifier? _L1936_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'define-syntax)
                                                   (cons _L1936_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'lambda%)
                             (cons _L1935_
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g19551958_ _g19561961_)
                                              (cons _g19551958_ _g19561961_))
                                            '()
                                            _L1933_))))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g17711866_ _g17731870_)))
                                       _body17941929_
                                       _tl17851900_
                                       _hd17841897_))))))
                      (_loop17891909_ _target17861903_ '()))
                    (_g17711866_ _g17731870_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g17711866_ _g17731870_))
                                              (_g17711866_ _g17731870_))))
                                      (_g17711866_ _g17731870_))))
                              (_g17711866_ _g17731870_))))
                      (_g17711866_ _g17731870_)))))
          (_g17701964_ _$stx1767_))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#defalias|
      (lambda (_$stx1969_)
        (let* ((_g19731991_
                (lambda (_g19741987_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g19741987_)))
               (_g19722046_
                (lambda (_g19741995_)
                  (if (gx#stx-pair? _g19741995_)
                      (let ((_e19771998_ (gx#syntax-e _g19741995_)))
                        (let ((_hd19782002_ (##car _e19771998_))
                              (_tl19792005_ (##cdr _e19771998_)))
                          (if (gx#stx-pair? _tl19792005_)
                              (let ((_e19802008_ (gx#syntax-e _tl19792005_)))
                                (let ((_hd19812012_ (##car _e19802008_))
                                      (_tl19822015_ (##cdr _e19802008_)))
                                  (if (gx#stx-pair? _tl19822015_)
                                      (let ((_e19832018_
                                             (gx#syntax-e _tl19822015_)))
                                        (let ((_hd19842022_
                                               (##car _e19832018_))
                                              (_tl19852025_
                                               (##cdr _e19832018_)))
                                          (if (gx#stx-null? _tl19852025_)
                                              ((lambda (_L2028_ _L2030_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'define-alias)
                                                       (cons _L2030_
                                                             (cons _L2028_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd19842022_
                                               _hd19812012_)
                                              (_g19731991_ _g19741995_))))
                                      (_g19731991_ _g19741995_))))
                              (_g19731991_ _g19741995_))))
                      (_g19731991_ _g19741995_)))))
          (_g19722046_ _$stx1969_))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#define|
      (lambda (_$stx2050_)
        (let* ((_g20552094_
                (lambda (_g20562090_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g20562090_)))
               (_g20542149_
                (lambda (_g20562098_)
                  (if (gx#stx-pair? _g20562098_)
                      (let ((_e20802101_ (gx#syntax-e _g20562098_)))
                        (let ((_hd20812105_ (##car _e20802101_))
                              (_tl20822108_ (##cdr _e20802101_)))
                          (if (gx#stx-pair? _tl20822108_)
                              (let ((_e20832111_ (gx#syntax-e _tl20822108_)))
                                (let ((_hd20842115_ (##car _e20832111_))
                                      (_tl20852118_ (##cdr _e20832111_)))
                                  (if (gx#stx-pair? _tl20852118_)
                                      (let ((_e20862121_
                                             (gx#syntax-e _tl20852118_)))
                                        (let ((_hd20872125_
                                               (##car _e20862121_))
                                              (_tl20882128_
                                               (##cdr _e20862121_)))
                                          (if (gx#stx-null? _tl20882128_)
                                              ((lambda (_L2131_ _L2133_)
                                                 (if (gx#identifier? _L2133_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'define-values)
                                                           (cons (cons _L2133_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '())
                         (cons _L2131_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g20552094_
                                                      _g20562098_)))
                                               _hd20872125_
                                               _hd20842115_)
                                              (_g20552094_ _g20562098_))))
                                      (_g20552094_ _g20562098_))))
                              (_g20552094_ _g20562098_))))
                      (_g20552094_ _g20562098_))))
               (_g20532247_
                (lambda (_g20562153_)
                  (if (gx#stx-pair? _g20562153_)
                      (let ((_e20602156_ (gx#syntax-e _g20562153_)))
                        (let ((_hd20612160_ (##car _e20602156_))
                              (_tl20622163_ (##cdr _e20602156_)))
                          (if (gx#stx-pair? _tl20622163_)
                              (let ((_e20632166_ (gx#syntax-e _tl20622163_)))
                                (let ((_hd20642170_ (##car _e20632166_))
                                      (_tl20652173_ (##cdr _e20632166_)))
                                  (if (gx#stx-pair? _hd20642170_)
                                      (let ((_e20662176_
                                             (gx#syntax-e _hd20642170_)))
                                        (let ((_hd20672180_
                                               (##car _e20662176_))
                                              (_tl20682183_
                                               (##cdr _e20662176_)))
                                          (if (gx#stx-pair/null? _tl20652173_)
                                              (if (fx>= (gx#stx-length
                                                         _tl20652173_)
                                                        '0)
                                                  (let ((_g30584_
                                                         (gx#syntax-split-splice
                                                          _tl20652173_
                                                          '0)))
                                                    (begin
                                                      (let ((_g30585_
                                                             (values-count
                                                              _g30584_)))
                                                        (if (not (fx= _g30585_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g30585_)))
              (let ((_target20692186_ (values-ref _g30584_ 0))
                    (_tl20712189_ (values-ref _g30584_ 1)))
                (if (gx#stx-null? _tl20712189_)
                    (letrec ((_loop20722192_
                              (lambda (_hd20702196_ _body20762199_)
                                (if (gx#stx-pair? _hd20702196_)
                                    (let ((_e20732202_
                                           (gx#syntax-e _hd20702196_)))
                                      (let ((_lp-hd20742206_
                                             (##car _e20732202_))
                                            (_lp-tl20752209_
                                             (##cdr _e20732202_)))
                                        (_loop20722192_
                                         _lp-tl20752209_
                                         (cons _lp-hd20742206_
                                               _body20762199_))))
                                    (let ((_body20772212_
                                           (reverse _body20762199_)))
                                      ((lambda (_L2216_ _L2218_ _L2219_)
                                         (if (gx#identifier? _L2219_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'define-values)
                                                   (cons (cons _L2219_ '())
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'lambda%)
                             (cons _L2218_
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g22382241_ _g22392244_)
                                              (cons _g22382241_ _g22392244_))
                                            '()
                                            _L2216_))))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g20542149_ _g20562153_)))
                                       _body20772212_
                                       _tl20682183_
                                       _hd20672180_))))))
                      (_loop20722192_ _target20692186_ '()))
                    (_g20542149_ _g20562153_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g20542149_ _g20562153_))
                                              (_g20542149_ _g20562153_))))
                                      (_g20542149_ _g20562153_))))
                              (_g20542149_ _g20562153_))))
                      (_g20542149_ _g20562153_)))))
          (_g20532247_ _$stx2050_))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#let*-values|
      (lambda (_$stx2252_)
        (let* ((_g22572302_
                (lambda (_g22582298_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g22582298_)))
               (_g22562403_
                (lambda (_g22582306_)
                  (if (gx#stx-pair? _g22582306_)
                      (let ((_e22792309_ (gx#syntax-e _g22582306_)))
                        (let ((_hd22802313_ (##car _e22792309_))
                              (_tl22812316_ (##cdr _e22792309_)))
                          (if (gx#stx-pair? _tl22812316_)
                              (let ((_e22822319_ (gx#syntax-e _tl22812316_)))
                                (let ((_hd22832323_ (##car _e22822319_))
                                      (_tl22842326_ (##cdr _e22822319_)))
                                  (if (gx#stx-pair? _hd22832323_)
                                      (let ((_e22852329_
                                             (gx#syntax-e _hd22832323_)))
                                        (let ((_hd22862333_
                                               (##car _e22852329_))
                                              (_tl22872336_
                                               (##cdr _e22852329_)))
                                          (if (gx#stx-pair/null? _tl22842326_)
                                              (if (fx>= (gx#stx-length
                                                         _tl22842326_)
                                                        '0)
                                                  (let ((_g30586_
                                                         (gx#syntax-split-splice
                                                          _tl22842326_
                                                          '0)))
                                                    (begin
                                                      (let ((_g30587_
                                                             (values-count
                                                              _g30586_)))
                                                        (if (not (fx= _g30587_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g30587_)))
              (let ((_target22882339_ (values-ref _g30586_ 0))
                    (_tl22902342_ (values-ref _g30586_ 1)))
                (if (gx#stx-null? _tl22902342_)
                    (letrec ((_loop22912345_
                              (lambda (_hd22892349_ _body22952352_)
                                (if (gx#stx-pair? _hd22892349_)
                                    (let ((_e22922355_
                                           (gx#syntax-e _hd22892349_)))
                                      (let ((_lp-hd22932359_
                                             (##car _e22922355_))
                                            (_lp-tl22942362_
                                             (##cdr _e22922355_)))
                                        (_loop22912345_
                                         _lp-tl22942362_
                                         (cons _lp-hd22932359_
                                               _body22952352_))))
                                    (let ((_body22962365_
                                           (reverse _body22952352_)))
                                      ((lambda (_L2369_
                                                _L2371_
                                                _L2372_
                                                _L2373_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                'let-values)
                                               (cons (cons _L2372_ '())
                                                     (cons (cons _L2373_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L2371_
                               (begin
                                 '#!void
                                 (foldr (lambda (_g23942397_ _g23952400_)
                                          (cons _g23942397_ _g23952400_))
                                        '()
                                        _L2369_))))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _body22962365_
                                       _tl22872336_
                                       _hd22862333_
                                       _hd22802313_))))))
                      (_loop22912345_ _target22882339_ '()))
                    (_g22572302_ _g22582306_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g22572302_ _g22582306_))
                                              (_g22572302_ _g22582306_))))
                                      (_g22572302_ _g22582306_))))
                              (_g22572302_ _g22582306_))))
                      (_g22572302_ _g22582306_))))
               (_g22552485_
                (lambda (_g22582407_)
                  (if (gx#stx-pair? _g22582407_)
                      (let ((_e22602410_ (gx#syntax-e _g22582407_)))
                        (let ((_hd22612414_ (##car _e22602410_))
                              (_tl22622417_ (##cdr _e22602410_)))
                          (if (gx#stx-pair? _tl22622417_)
                              (let ((_e22632420_ (gx#syntax-e _tl22622417_)))
                                (let ((_hd22642424_ (##car _e22632420_))
                                      (_tl22652427_ (##cdr _e22632420_)))
                                  (if (gx#stx-null? _hd22642424_)
                                      (if (gx#stx-pair/null? _tl22652427_)
                                          (if (fx>= (gx#stx-length
                                                     _tl22652427_)
                                                    '0)
                                              (let ((_g30588_
                                                     (gx#syntax-split-splice
                                                      _tl22652427_
                                                      '0)))
                                                (begin
                                                  (let ((_g30589_
                                                         (values-count
                                                          _g30588_)))
                                                    (if (not (fx= _g30589_ 2))
                                                        (error "Context expects 2 values"
                                                               _g30589_)))
                                                  (let ((_target22662430_
                                                         (values-ref
                                                          _g30588_
                                                          0))
                                                        (_tl22682433_
                                                         (values-ref
                                                          _g30588_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl22682433_)
                                                        (letrec ((_loop22692436_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd22672440_ _body22732443_)
                            (if (gx#stx-pair? _hd22672440_)
                                (let ((_e22702446_ (gx#syntax-e _hd22672440_)))
                                  (let ((_lp-hd22712450_ (##car _e22702446_))
                                        (_lp-tl22722453_ (##cdr _e22702446_)))
                                    (_loop22692436_
                                     _lp-tl22722453_
                                     (cons _lp-hd22712450_ _body22732443_))))
                                (let ((_body22742456_
                                       (reverse _body22732443_)))
                                  ((lambda (_L2460_)
                                     (cons (gx#datum->syntax '#f 'let-values)
                                           (cons '()
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g24762479_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g24772482_)
                    (cons _g24762479_ _g24772482_))
                  '()
                  _L2460_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _body22742456_))))))
                  (_loop22692436_ _target22662430_ '()))
                (_g22562403_ _g22582407_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g22562403_ _g22582407_))
                                          (_g22562403_ _g22582407_))
                                      (_g22562403_ _g22582407_))))
                              (_g22562403_ _g22582407_))))
                      (_g22562403_ _g22582407_)))))
          (_g22552485_ _$stx2252_))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#let|
      (lambda (_$stx2491_)
        (let* ((_g24962560_
                (lambda (_g24972556_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g24972556_)))
               (_g24952645_
                (lambda (_g24972564_)
                  (if (gx#stx-pair? _g24972564_)
                      (let ((_e25402567_ (gx#syntax-e _g24972564_)))
                        (let ((_hd25412571_ (##car _e25402567_))
                              (_tl25422574_ (##cdr _e25402567_)))
                          (if (gx#stx-pair? _tl25422574_)
                              (let ((_e25432577_ (gx#syntax-e _tl25422574_)))
                                (let ((_hd25442581_ (##car _e25432577_))
                                      (_tl25452584_ (##cdr _e25432577_)))
                                  (if (gx#stx-pair/null? _tl25452584_)
                                      (if (fx>= (gx#stx-length _tl25452584_)
                                                '0)
                                          (let ((_g30590_
                                                 (gx#syntax-split-splice
                                                  _tl25452584_
                                                  '0)))
                                            (begin
                                              (let ((_g30591_
                                                     (values-count _g30590_)))
                                                (if (not (fx= _g30591_ 2))
                                                    (error "Context expects 2 values"
                                                           _g30591_)))
                                              (let ((_target25462587_
                                                     (values-ref _g30590_ 0))
                                                    (_tl25482590_
                                                     (values-ref _g30590_ 1)))
                                                (if (gx#stx-null? _tl25482590_)
                                                    (letrec ((_loop25492593_
                                                              (lambda (_hd25472597_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body25532600_)
                        (if (gx#stx-pair? _hd25472597_)
                            (let ((_e25502603_ (gx#syntax-e _hd25472597_)))
                              (let ((_lp-hd25512607_ (##car _e25502603_))
                                    (_lp-tl25522610_ (##cdr _e25502603_)))
                                (_loop25492593_
                                 _lp-tl25522610_
                                 (cons _lp-hd25512607_ _body25532600_))))
                            (let ((_body25542613_ (reverse _body25532600_)))
                              ((lambda (_L2617_ _L2619_)
                                 (cons (gx#datum->syntax '#f '~let)
                                       (cons (gx#datum->syntax '#f 'let-values)
                                             (cons _L2619_
                                                   (begin
                                                     '#!void
                                                     (foldr (lambda (_g26362639_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g26372642_)
                      (cons _g26362639_ _g26372642_))
                    '()
                    _L2617_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _body25542613_
                               _hd25442581_))))))
              (_loop25492593_ _target25462587_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g24962560_
                                                     _g24972564_)))))
                                          (_g24962560_ _g24972564_))
                                      (_g24962560_ _g24972564_))))
                              (_g24962560_ _g24972564_))))
                      (_g24962560_ _g24972564_))))
               (_g24942821_
                (lambda (_g24972649_)
                  (if (gx#stx-pair? _g24972649_)
                      (let ((_e25032652_ (gx#syntax-e _g24972649_)))
                        (let ((_hd25042656_ (##car _e25032652_))
                              (_tl25052659_ (##cdr _e25032652_)))
                          (if (gx#stx-pair? _tl25052659_)
                              (let ((_e25062662_ (gx#syntax-e _tl25052659_)))
                                (let ((_hd25072666_ (##car _e25062662_))
                                      (_tl25082669_ (##cdr _e25062662_)))
                                  (if (gx#stx-pair? _tl25082669_)
                                      (let ((_e25092672_
                                             (gx#syntax-e _tl25082669_)))
                                        (let ((_hd25102676_
                                               (##car _e25092672_))
                                              (_tl25112679_
                                               (##cdr _e25092672_)))
                                          (if (gx#stx-pair/null? _hd25102676_)
                                              (if (fx>= (gx#stx-length
                                                         _hd25102676_)
                                                        '0)
                                                  (let ((_g30592_
                                                         (gx#syntax-split-splice
                                                          _hd25102676_
                                                          '0)))
                                                    (begin
                                                      (let ((_g30593_
                                                             (values-count
                                                              _g30592_)))
                                                        (if (not (fx= _g30593_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g30593_)))
              (let ((_target25122682_ (values-ref _g30592_ 0))
                    (_tl25142685_ (values-ref _g30592_ 1)))
                (letrec ((_loop25152688_
                          (lambda (_hd25132692_ _arg25192695_ _var25202697_)
                            (if (gx#stx-pair? _hd25132692_)
                                (let ((_e25162700_ (gx#syntax-e _hd25132692_)))
                                  (let ((_lp-hd25172704_ (##car _e25162700_))
                                        (_lp-tl25182707_ (##cdr _e25162700_)))
                                    (if (gx#stx-pair? _lp-hd25172704_)
                                        (let ((_e25232710_
                                               (gx#syntax-e _lp-hd25172704_)))
                                          (let ((_hd25242714_
                                                 (##car _e25232710_))
                                                (_tl25252717_
                                                 (##cdr _e25232710_)))
                                            (if (gx#stx-pair? _tl25252717_)
                                                (let ((_e25262720_
                                                       (gx#syntax-e
                                                        _tl25252717_)))
                                                  (let ((_hd25272724_
                                                         (##car _e25262720_))
                                                        (_tl25282727_
                                                         (##cdr _e25262720_)))
                                                    (if (gx#stx-null?
                                                         _tl25282727_)
                                                        (_loop25152688_
                                                         _lp-tl25182707_
                                                         (cons _hd25272724_
                                                               _arg25192695_)
                                                         (cons _hd25242714_
                                                               _var25202697_))
                                                        (_g24952645_
                                                         _g24972649_))))
                                                (_g24952645_ _g24972649_))))
                                        (_g24952645_ _g24972649_))))
                                (let ((_arg25212730_ (reverse _arg25192695_))
                                      (_var25222733_ (reverse _var25202697_)))
                                  (if (gx#stx-pair/null? _tl25112679_)
                                      (if (fx>= (gx#stx-length _tl25112679_)
                                                '0)
                                          (let ((_g30594_
                                                 (gx#syntax-split-splice
                                                  _tl25112679_
                                                  '0)))
                                            (begin
                                              (let ((_g30595_
                                                     (values-count _g30594_)))
                                                (if (not (fx= _g30595_ 2))
                                                    (error "Context expects 2 values"
                                                           _g30595_)))
                                              (let ((_target25292736_
                                                     (values-ref _g30594_ 0))
                                                    (_tl25312739_
                                                     (values-ref _g30594_ 1)))
                                                (if (gx#stx-null? _tl25312739_)
                                                    (letrec ((_loop25322742_
                                                              (lambda (_hd25302746_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body25362749_)
                        (if (gx#stx-pair? _hd25302746_)
                            (let ((_e25332752_ (gx#syntax-e _hd25302746_)))
                              (let ((_lp-hd25342756_ (##car _e25332752_))
                                    (_lp-tl25352759_ (##cdr _e25332752_)))
                                (_loop25322742_
                                 _lp-tl25352759_
                                 (cons _lp-hd25342756_ _body25362749_))))
                            (let ((_body25372762_ (reverse _body25362749_)))
                              ((lambda (_L2766_
                                        _L2768_
                                        _L2769_
                                        _L2770_
                                        _L2771_)
                                 (if (gx#identifier? _L2771_)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'letrec-values)
                                                 (cons (cons (cons (cons _L2771_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (cons (gx#datum->syntax '#f 'lambda%)
                                       (cons (begin
                                               '#!void
                                               (foldr (lambda (_g27962803_
                                                               _g27972806_)
                                                        (cons _g27962803_
                                                              _g27972806_))
                                                      _L2768_
                                                      _L2770_))
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g27982809_
                                                               _g27992812_)
                                                        (cons _g27982809_
                                                              _g27992812_))
                                                      '()
                                                      _L2766_))))
                                 '()))
                     '())
               (cons _L2771_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (begin
                                             '#!void
                                             (foldr (lambda (_g28002815_
                                                             _g28012818_)
                                                      (cons _g28002815_
                                                            _g28012818_))
                                                    '()
                                                    _L2769_)))
                                     (_g24952645_ _g24972649_)))
                               _body25372762_
                               _tl25142685_
                               _arg25212730_
                               _var25222733_
                               _hd25072666_))))))
              (_loop25322742_ _target25292736_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g24952645_
                                                     _g24972649_)))))
                                          (_g24952645_ _g24972649_))
                                      (_g24952645_ _g24972649_)))))))
                  (_loop25152688_ _target25122682_ '() '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g24952645_ _g24972649_))
                                              (_g24952645_ _g24972649_))))
                                      (_g24952645_ _g24972649_))))
                              (_g24952645_ _g24972649_))))
                      (_g24952645_ _g24972649_)))))
          (_g24942821_ _$stx2491_))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#let*|
      (lambda (_$stx2828_)
        (let* ((_g28322856_
                (lambda (_g28332852_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g28332852_)))
               (_g28312941_
                (lambda (_g28332860_)
                  (if (gx#stx-pair? _g28332860_)
                      (let ((_e28362863_ (gx#syntax-e _g28332860_)))
                        (let ((_hd28372867_ (##car _e28362863_))
                              (_tl28382870_ (##cdr _e28362863_)))
                          (if (gx#stx-pair? _tl28382870_)
                              (let ((_e28392873_ (gx#syntax-e _tl28382870_)))
                                (let ((_hd28402877_ (##car _e28392873_))
                                      (_tl28412880_ (##cdr _e28392873_)))
                                  (if (gx#stx-pair/null? _tl28412880_)
                                      (if (fx>= (gx#stx-length _tl28412880_)
                                                '0)
                                          (let ((_g30596_
                                                 (gx#syntax-split-splice
                                                  _tl28412880_
                                                  '0)))
                                            (begin
                                              (let ((_g30597_
                                                     (values-count _g30596_)))
                                                (if (not (fx= _g30597_ 2))
                                                    (error "Context expects 2 values"
                                                           _g30597_)))
                                              (let ((_target28422883_
                                                     (values-ref _g30596_ 0))
                                                    (_tl28442886_
                                                     (values-ref _g30596_ 1)))
                                                (if (gx#stx-null? _tl28442886_)
                                                    (letrec ((_loop28452889_
                                                              (lambda (_hd28432893_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body28492896_)
                        (if (gx#stx-pair? _hd28432893_)
                            (let ((_e28462899_ (gx#syntax-e _hd28432893_)))
                              (let ((_lp-hd28472903_ (##car _e28462899_))
                                    (_lp-tl28482906_ (##cdr _e28462899_)))
                                (_loop28452889_
                                 _lp-tl28482906_
                                 (cons _lp-hd28472903_ _body28492896_))))
                            (let ((_body28502909_ (reverse _body28492896_)))
                              ((lambda (_L2913_ _L2915_)
                                 (cons (gx#datum->syntax '#f '~let)
                                       (cons (gx#datum->syntax
                                              '#f
                                              'let*-values)
                                             (cons _L2915_
                                                   (begin
                                                     '#!void
                                                     (foldr (lambda (_g29322935_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g29332938_)
                      (cons _g29322935_ _g29332938_))
                    '()
                    _L2913_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _body28502909_
                               _hd28402877_))))))
              (_loop28452889_ _target28422883_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g28322856_
                                                     _g28332860_)))))
                                          (_g28322856_ _g28332860_))
                                      (_g28322856_ _g28332860_))))
                              (_g28322856_ _g28332860_))))
                      (_g28322856_ _g28332860_)))))
          (_g28312941_ _$stx2828_))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#letrec|
      (lambda (_$stx2946_)
        (let* ((_g29502974_
                (lambda (_g29512970_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g29512970_)))
               (_g29493059_
                (lambda (_g29512978_)
                  (if (gx#stx-pair? _g29512978_)
                      (let ((_e29542981_ (gx#syntax-e _g29512978_)))
                        (let ((_hd29552985_ (##car _e29542981_))
                              (_tl29562988_ (##cdr _e29542981_)))
                          (if (gx#stx-pair? _tl29562988_)
                              (let ((_e29572991_ (gx#syntax-e _tl29562988_)))
                                (let ((_hd29582995_ (##car _e29572991_))
                                      (_tl29592998_ (##cdr _e29572991_)))
                                  (if (gx#stx-pair/null? _tl29592998_)
                                      (if (fx>= (gx#stx-length _tl29592998_)
                                                '0)
                                          (let ((_g30598_
                                                 (gx#syntax-split-splice
                                                  _tl29592998_
                                                  '0)))
                                            (begin
                                              (let ((_g30599_
                                                     (values-count _g30598_)))
                                                (if (not (fx= _g30599_ 2))
                                                    (error "Context expects 2 values"
                                                           _g30599_)))
                                              (let ((_target29603001_
                                                     (values-ref _g30598_ 0))
                                                    (_tl29623004_
                                                     (values-ref _g30598_ 1)))
                                                (if (gx#stx-null? _tl29623004_)
                                                    (letrec ((_loop29633007_
                                                              (lambda (_hd29613011_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body29673014_)
                        (if (gx#stx-pair? _hd29613011_)
                            (let ((_e29643017_ (gx#syntax-e _hd29613011_)))
                              (let ((_lp-hd29653021_ (##car _e29643017_))
                                    (_lp-tl29663024_ (##cdr _e29643017_)))
                                (_loop29633007_
                                 _lp-tl29663024_
                                 (cons _lp-hd29653021_ _body29673014_))))
                            (let ((_body29683027_ (reverse _body29673014_)))
                              ((lambda (_L3031_ _L3033_)
                                 (cons (gx#datum->syntax '#f '~let)
                                       (cons (gx#datum->syntax
                                              '#f
                                              'letrec-values)
                                             (cons _L3033_
                                                   (begin
                                                     '#!void
                                                     (foldr (lambda (_g30503053_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g30513056_)
                      (cons _g30503053_ _g30513056_))
                    '()
                    _L3031_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _body29683027_
                               _hd29582995_))))))
              (_loop29633007_ _target29603001_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g29502974_
                                                     _g29512978_)))))
                                          (_g29502974_ _g29512978_))
                                      (_g29502974_ _g29512978_))))
                              (_g29502974_ _g29512978_))))
                      (_g29502974_ _g29512978_)))))
          (_g29493059_ _$stx2946_))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#letrec*|
      (lambda (_$stx3064_)
        (let* ((_g30683092_
                (lambda (_g30693088_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g30693088_)))
               (_g30673177_
                (lambda (_g30693096_)
                  (if (gx#stx-pair? _g30693096_)
                      (let ((_e30723099_ (gx#syntax-e _g30693096_)))
                        (let ((_hd30733103_ (##car _e30723099_))
                              (_tl30743106_ (##cdr _e30723099_)))
                          (if (gx#stx-pair? _tl30743106_)
                              (let ((_e30753109_ (gx#syntax-e _tl30743106_)))
                                (let ((_hd30763113_ (##car _e30753109_))
                                      (_tl30773116_ (##cdr _e30753109_)))
                                  (if (gx#stx-pair/null? _tl30773116_)
                                      (if (fx>= (gx#stx-length _tl30773116_)
                                                '0)
                                          (let ((_g30600_
                                                 (gx#syntax-split-splice
                                                  _tl30773116_
                                                  '0)))
                                            (begin
                                              (let ((_g30601_
                                                     (values-count _g30600_)))
                                                (if (not (fx= _g30601_ 2))
                                                    (error "Context expects 2 values"
                                                           _g30601_)))
                                              (let ((_target30783119_
                                                     (values-ref _g30600_ 0))
                                                    (_tl30803122_
                                                     (values-ref _g30600_ 1)))
                                                (if (gx#stx-null? _tl30803122_)
                                                    (letrec ((_loop30813125_
                                                              (lambda (_hd30793129_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body30853132_)
                        (if (gx#stx-pair? _hd30793129_)
                            (let ((_e30823135_ (gx#syntax-e _hd30793129_)))
                              (let ((_lp-hd30833139_ (##car _e30823135_))
                                    (_lp-tl30843142_ (##cdr _e30823135_)))
                                (_loop30813125_
                                 _lp-tl30843142_
                                 (cons _lp-hd30833139_ _body30853132_))))
                            (let ((_body30863145_ (reverse _body30853132_)))
                              ((lambda (_L3149_ _L3151_)
                                 (cons (gx#datum->syntax '#f '~let)
                                       (cons (gx#datum->syntax
                                              '#f
                                              'letrec*-values)
                                             (cons _L3151_
                                                   (begin
                                                     '#!void
                                                     (foldr (lambda (_g31683171_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g31693174_)
                      (cons _g31683171_ _g31693174_))
                    '()
                    _L3149_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _body30863145_
                               _hd30763113_))))))
              (_loop30813125_ _target30783119_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g30683092_
                                                     _g30693096_)))))
                                          (_g30683092_ _g30693096_))
                                      (_g30683092_ _g30693096_))))
                              (_g30683092_ _g30693096_))))
                      (_g30683092_ _g30693096_)))))
          (_g30673177_ _$stx3064_))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#~let|
      (lambda (_stx3182_)
        (letrec ((_let-head?3185_
                  (lambda (_x3665_)
                    (let* ((_g36693680_
                            (lambda (_g36703676_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g36703676_)))
                           (_g36683691_
                            (lambda (_g36703684_)
                              ((lambda () (gx#identifier? _x3665_)))))
                           (_g36673721_
                            (lambda (_g36703695_)
                              (if (gx#stx-pair? _g36703695_)
                                  (let ((_e36723698_
                                         (gx#syntax-e _g36703695_)))
                                    (let ((_hd36733702_ (##car _e36723698_))
                                          (_tl36743705_ (##cdr _e36723698_)))
                                      (if (gx#identifier? _hd36733702_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core::<sugar>::<sugar:1>[1]#_g30602_|
                                               _hd36733702_)
                                              ((lambda (_L3708_)
                                                 (gx#stx-andmap
                                                  gx#identifier?
                                                  _L3708_))
                                               _tl36743705_)
                                              (_g36683691_ _g36703695_))
                                          (_g36683691_ _g36703695_))))
                                  (_g36683691_ _g36703695_)))))
                      (_g36673721_ _x3665_))))
                 (_let-head3187_
                  (lambda (_x3605_)
                    (let* ((_g36093620_
                            (lambda (_g36103616_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g36103616_)))
                           (_g36083631_
                            (lambda (_g36103624_)
                              ((lambda () (list _x3605_)))))
                           (_g36073661_
                            (lambda (_g36103635_)
                              (if (gx#stx-pair? _g36103635_)
                                  (let ((_e36123638_
                                         (gx#syntax-e _g36103635_)))
                                    (let ((_hd36133642_ (##car _e36123638_))
                                          (_tl36143645_ (##cdr _e36123638_)))
                                      (if (gx#identifier? _hd36133642_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core::<sugar>::<sugar:1>[1]#_g30603_|
                                               _hd36133642_)
                                              ((lambda (_L3648_) _L3648_)
                                               _tl36143645_)
                                              (_g36083631_ _g36103635_))
                                          (_g36083631_ _g36103635_))))
                                  (_g36083631_ _g36103635_)))))
                      (_g36073661_ _x3605_)))))
          (let* ((_g31903256_
                  (lambda (_g31913252_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g31913252_)))
                 (_g31893517_
                  (lambda (_g31913260_)
                    (if (gx#stx-pair? _g31913260_)
                        (let ((_e32163263_ (gx#syntax-e _g31913260_)))
                          (let ((_hd32173267_ (##car _e32163263_))
                                (_tl32183270_ (##cdr _e32163263_)))
                            (if (gx#stx-pair? _tl32183270_)
                                (let ((_e32193273_ (gx#syntax-e _tl32183270_)))
                                  (let ((_hd32203277_ (##car _e32193273_))
                                        (_tl32213280_ (##cdr _e32193273_)))
                                    (if (gx#stx-pair? _tl32213280_)
                                        (let ((_e32223283_
                                               (gx#syntax-e _tl32213280_)))
                                          (let ((_hd32233287_
                                                 (##car _e32223283_))
                                                (_tl32243290_
                                                 (##cdr _e32223283_)))
                                            (if (gx#stx-pair/null?
                                                 _hd32233287_)
                                                (if (fx>= (gx#stx-length
                                                           _hd32233287_)
                                                          '0)
                                                    (let ((_g30604_
                                                           (gx#syntax-split-splice
                                                            _hd32233287_
                                                            '0)))
                                                      (begin
                                                        (let ((_g30605_
                                                               (values-count
                                                                _g30604_)))
                                                          (if (not (fx= _g30605_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                2))
                      (error "Context expects 2 values" _g30605_)))
                (let ((_target32253293_ (values-ref _g30604_ 0))
                      (_tl32273296_ (values-ref _g30604_ 1)))
                  (if (gx#stx-null? _tl32273296_)
                      (letrec ((_loop32283299_
                                (lambda (_hd32263303_ _e32323306_ _hd32333308_)
                                  (if (gx#stx-pair? _hd32263303_)
                                      (let ((_e32293311_
                                             (gx#syntax-e _hd32263303_)))
                                        (let ((_lp-hd32303315_
                                               (##car _e32293311_))
                                              (_lp-tl32313318_
                                               (##cdr _e32293311_)))
                                          (if (gx#stx-pair? _lp-hd32303315_)
                                              (let ((_e32363321_
                                                     (gx#syntax-e
                                                      _lp-hd32303315_)))
                                                (let ((_hd32373325_
                                                       (##car _e32363321_))
                                                      (_tl32383328_
                                                       (##cdr _e32363321_)))
                                                  (if (gx#stx-pair?
                                                       _tl32383328_)
                                                      (let ((_e32393331_
                                                             (gx#syntax-e
                                                              _tl32383328_)))
                                                        (let ((_hd32403335_
                                                               (##car _e32393331_))
                                                              (_tl32413338_
                                                               (##cdr _e32393331_)))
                                                          (if (gx#stx-null?
                                                               _tl32413338_)
                                                              (_loop32283299_
                                                               _lp-tl32313318_
                                                               (cons _hd32403335_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _e32323306_)
                       (cons _hd32373325_ _hd32333308_))
                      (_g31903256_ _g31913260_))))
              (_g31903256_ _g31913260_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g31903256_ _g31913260_))))
                                      (let ((_e32343341_ (reverse _e32323306_))
                                            (_hd32353344_
                                             (reverse _hd32333308_)))
                                        (if (gx#stx-pair/null? _tl32243290_)
                                            (if (fx>= (gx#stx-length
                                                       _tl32243290_)
                                                      '0)
                                                (let ((_g30606_
                                                       (gx#syntax-split-splice
                                                        _tl32243290_
                                                        '0)))
                                                  (begin
                                                    (let ((_g30607_
                                                           (values-count
                                                            _g30606_)))
                                                      (if (not (fx= _g30607_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g30607_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target32423347_
                                                           (values-ref
                                                            _g30606_
                                                            0))
                                                          (_tl32443350_
                                                           (values-ref
                                                            _g30606_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl32443350_)
                                                          (letrec ((_loop32453353_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd32433357_ _body32493360_)
                              (if (gx#stx-pair? _hd32433357_)
                                  (let ((_e32463363_
                                         (gx#syntax-e _hd32433357_)))
                                    (let ((_lp-hd32473367_ (##car _e32463363_))
                                          (_lp-tl32483370_
                                           (##cdr _e32463363_)))
                                      (_loop32453353_
                                       _lp-tl32483370_
                                       (cons _lp-hd32473367_ _body32493360_))))
                                  (let ((_body32503373_
                                         (reverse _body32493360_)))
                                    ((lambda (_L3377_ _L3379_ _L3380_ _L3381_)
                                       (if (gx#stx-andmap
                                            _let-head?3185_
                                            (begin
                                              '#!void
                                              (foldr (lambda (_g34073410_
                                                              _g34083413_)
                                                       (cons _g34073410_
                                                             _g34083413_))
                                                     '()
                                                     _L3380_)))
                                           (let* ((_g34163433_
                                                   (lambda (_g34173429_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g34173429_)))
                                                  (_g34153505_
                                                   (lambda (_g34173437_)
                                                     (if (gx#stx-pair/null?
                                                          _g34173437_)
                                                         (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g34173437_)
                           '0)
                     (let ((_g30608_ (gx#syntax-split-splice _g34173437_ '0)))
                       (begin
                         (let ((_g30609_ (values-count _g30608_)))
                           (if (not (fx= _g30609_ 2))
                               (error "Context expects 2 values" _g30609_)))
                         (let ((_target34193440_ (values-ref _g30608_ 0))
                               (_tl34213443_ (values-ref _g30608_ 1)))
                           (if (gx#stx-null? _tl34213443_)
                               (letrec ((_loop34223446_
                                         (lambda (_hd34203450_
                                                  _hd-bind34263453_)
                                           (if (gx#stx-pair? _hd34203450_)
                                               (let ((_e34233456_
                                                      (gx#syntax-e
                                                       _hd34203450_)))
                                                 (let ((_lp-hd34243460_
                                                        (##car _e34233456_))
                                                       (_lp-tl34253463_
                                                        (##cdr _e34233456_)))
                                                   (_loop34223446_
                                                    _lp-tl34253463_
                                                    (cons _lp-hd34243460_
                                                          _hd-bind34263453_))))
                                               (let ((_hd-bind34273466_
                                                      (reverse _hd-bind34263453_)))
                                                 ((lambda (_L3470_)
                                                    (let ()
                                                      (cons _L3381_
                                                            (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-check-splice-targets _L3379_ _L3470_)
                            (foldr (lambda (_g34853491_
                                            _g34863494_
                                            _g34873496_)
                                     (cons (cons _g34863494_
                                                 (cons _g34853491_ '()))
                                           _g34873496_))
                                   '()
                                   _L3379_
                                   _L3470_))
                          (begin
                            '#!void
                            (foldr (lambda (_g34883499_ _g34893502_)
                                     (cons _g34883499_ _g34893502_))
                                   '()
                                   _L3377_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd-bind34273466_))))))
                                 (_loop34223446_ _target34193440_ '()))
                               (_g34163433_ _g34173437_)))))
                     (_g34163433_ _g34173437_))
                 (_g34163433_ _g34173437_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g34153505_
                                              (gx#stx-map
                                               _let-head3187_
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g35083511_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g35093514_)
                  (cons _g35083511_ _g35093514_))
                '()
                _L3380_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g31903256_ _g31913260_)))
                                     _body32503373_
                                     _e32343341_
                                     _hd32353344_
                                     _hd32203277_))))))
                    (_loop32453353_ _target32423347_ '()))
                  (_g31903256_ _g31913260_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g31903256_ _g31913260_))
                                            (_g31903256_ _g31913260_)))))))
                        (_loop32283299_ _target32253293_ '() '()))
                      (_g31903256_ _g31913260_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g31903256_ _g31913260_))
                                                (_g31903256_ _g31913260_))))
                                        (_g31903256_ _g31913260_))))
                                (_g31903256_ _g31913260_))))
                        (_g31903256_ _g31913260_))))
                 (_g31883601_
                  (lambda (_g31913521_)
                    (if (gx#stx-pair? _g31913521_)
                        (let ((_e31973524_ (gx#syntax-e _g31913521_)))
                          (let ((_hd31983528_ (##car _e31973524_))
                                (_tl31993531_ (##cdr _e31973524_)))
                            (if (gx#stx-pair? _tl31993531_)
                                (let ((_e32003534_ (gx#syntax-e _tl31993531_)))
                                  (let ((_hd32013538_ (##car _e32003534_))
                                        (_tl32023541_ (##cdr _e32003534_)))
                                    (if (gx#stx-pair? _tl32023541_)
                                        (let ((_e32033544_
                                               (gx#syntax-e _tl32023541_)))
                                          (let ((_hd32043548_
                                                 (##car _e32033544_))
                                                (_tl32053551_
                                                 (##cdr _e32033544_)))
                                            (if (gx#stx-pair? _hd32043548_)
                                                (let ((_e32063554_
                                                       (gx#syntax-e
                                                        _hd32043548_)))
                                                  (let ((_hd32073558_
                                                         (##car _e32063554_))
                                                        (_tl32083561_
                                                         (##cdr _e32063554_)))
                                                    (if (gx#stx-pair?
                                                         _tl32083561_)
                                                        (let ((_e32093564_
                                                               (gx#syntax-e
                                                                _tl32083561_)))
                                                          (let ((_hd32103568_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e32093564_))
                        (_tl32113571_ (##cdr _e32093564_)))
                    (if (gx#stx-null? _tl32113571_)
                        ((lambda (_L3574_ _L3576_ _L3577_ _L3578_ _L3579_)
                           (if (_let-head?3185_ _L3577_)
                               (cons _L3579_
                                     (cons _L3578_
                                           (cons (cons (cons _L3577_
                                                             (cons _L3576_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _L3574_)))
                               (_g31893517_ _g31913521_)))
                         _tl32053551_
                         _hd32103568_
                         _hd32073558_
                         _hd32013538_
                         _hd31983528_)
                        (_g31893517_ _g31913521_))))
                (_g31893517_ _g31913521_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g31893517_ _g31913521_))))
                                        (_g31893517_ _g31913521_))))
                                (_g31893517_ _g31913521_))))
                        (_g31893517_ _g31913521_)))))
            (_g31883601_ _stx3182_)))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#and|
      (lambda (_$stx3728_)
        (let* ((_g37343760_
                (lambda (_g37353756_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g37353756_)))
               (_g37333805_
                (lambda (_g37353764_)
                  (if (gx#stx-pair? _g37353764_)
                      (let ((_e37493767_ (gx#syntax-e _g37353764_)))
                        (let ((_hd37503771_ (##car _e37493767_))
                              (_tl37513774_ (##cdr _e37493767_)))
                          (if (gx#stx-pair? _tl37513774_)
                              (let ((_e37523777_ (gx#syntax-e _tl37513774_)))
                                (let ((_hd37533781_ (##car _e37523777_))
                                      (_tl37543784_ (##cdr _e37523777_)))
                                  ((lambda (_L3787_ _L3789_ _L3790_)
                                     (cons (gx#datum->syntax '#f 'if)
                                           (cons _L3789_
                                                 (cons (cons _L3790_ _L3787_)
                                                       (cons '#f '())))))
                                   _tl37543784_
                                   _hd37533781_
                                   _hd37503771_)))
                              (_g37343760_ _g37353764_))))
                      (_g37343760_ _g37353764_))))
               (_g37323845_
                (lambda (_g37353809_)
                  (if (gx#stx-pair? _g37353809_)
                      (let ((_e37403812_ (gx#syntax-e _g37353809_)))
                        (let ((_hd37413816_ (##car _e37403812_))
                              (_tl37423819_ (##cdr _e37403812_)))
                          (if (gx#stx-pair? _tl37423819_)
                              (let ((_e37433822_ (gx#syntax-e _tl37423819_)))
                                (let ((_hd37443826_ (##car _e37433822_))
                                      (_tl37453829_ (##cdr _e37433822_)))
                                  (if (gx#stx-null? _tl37453829_)
                                      ((lambda (_L3832_) _L3832_) _hd37443826_)
                                      (_g37333805_ _g37353809_))))
                              (_g37333805_ _g37353809_))))
                      (_g37333805_ _g37353809_))))
               (_g37313866_
                (lambda (_g37353849_)
                  (if (gx#stx-pair? _g37353849_)
                      (let ((_e37363852_ (gx#syntax-e _g37353849_)))
                        (let ((_hd37373856_ (##car _e37363852_))
                              (_tl37383859_ (##cdr _e37363852_)))
                          (if (gx#stx-null? _tl37383859_)
                              ((lambda () '#t))
                              (_g37323845_ _g37353849_))))
                      (_g37323845_ _g37353849_)))))
          (_g37313866_ _$stx3728_))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#or|
      (lambda (_$stx3870_)
        (let* ((_g38763902_
                (lambda (_g38773898_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g38773898_)))
               (_g38753947_
                (lambda (_g38773906_)
                  (if (gx#stx-pair? _g38773906_)
                      (let ((_e38913909_ (gx#syntax-e _g38773906_)))
                        (let ((_hd38923913_ (##car _e38913909_))
                              (_tl38933916_ (##cdr _e38913909_)))
                          (if (gx#stx-pair? _tl38933916_)
                              (let ((_e38943919_ (gx#syntax-e _tl38933916_)))
                                (let ((_hd38953923_ (##car _e38943919_))
                                      (_tl38963926_ (##cdr _e38943919_)))
                                  ((lambda (_L3929_ _L3931_ _L3932_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '$e)
                                                       (cons _L3931_ '()))
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'if)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$e)
                           (cons (gx#datum->syntax '#f '$e)
                                 (cons (cons _L3932_ _L3929_) '()))))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _tl38963926_
                                   _hd38953923_
                                   _hd38923913_)))
                              (_g38763902_ _g38773906_))))
                      (_g38763902_ _g38773906_))))
               (_g38743987_
                (lambda (_g38773951_)
                  (if (gx#stx-pair? _g38773951_)
                      (let ((_e38823954_ (gx#syntax-e _g38773951_)))
                        (let ((_hd38833958_ (##car _e38823954_))
                              (_tl38843961_ (##cdr _e38823954_)))
                          (if (gx#stx-pair? _tl38843961_)
                              (let ((_e38853964_ (gx#syntax-e _tl38843961_)))
                                (let ((_hd38863968_ (##car _e38853964_))
                                      (_tl38873971_ (##cdr _e38853964_)))
                                  (if (gx#stx-null? _tl38873971_)
                                      ((lambda (_L3974_) _L3974_) _hd38863968_)
                                      (_g38753947_ _g38773951_))))
                              (_g38753947_ _g38773951_))))
                      (_g38753947_ _g38773951_))))
               (_g38734008_
                (lambda (_g38773991_)
                  (if (gx#stx-pair? _g38773991_)
                      (let ((_e38783994_ (gx#syntax-e _g38773991_)))
                        (let ((_hd38793998_ (##car _e38783994_))
                              (_tl38804001_ (##cdr _e38783994_)))
                          (if (gx#stx-null? _tl38804001_)
                              ((lambda () '#f))
                              (_g38743987_ _g38773991_))))
                      (_g38743987_ _g38773991_)))))
          (_g38734008_ _$stx3870_))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#cond|
      (lambda (_$stx4012_)
        (let* ((_g40214112_
                (lambda (_g40224108_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g40224108_)))
               (_g40204213_
                (lambda (_g40224116_)
                  (if (gx#stx-pair? _g40224116_)
                      (let ((_e40894119_ (gx#syntax-e _g40224116_)))
                        (let ((_hd40904123_ (##car _e40894119_))
                              (_tl40914126_ (##cdr _e40894119_)))
                          (if (gx#stx-pair? _tl40914126_)
                              (let ((_e40924129_ (gx#syntax-e _tl40914126_)))
                                (let ((_hd40934133_ (##car _e40924129_))
                                      (_tl40944136_ (##cdr _e40924129_)))
                                  (if (gx#stx-pair? _hd40934133_)
                                      (let ((_e40954139_
                                             (gx#syntax-e _hd40934133_)))
                                        (let ((_hd40964143_
                                               (##car _e40954139_))
                                              (_tl40974146_
                                               (##cdr _e40954139_)))
                                          (if (gx#stx-pair/null? _tl40974146_)
                                              (if (fx>= (gx#stx-length
                                                         _tl40974146_)
                                                        '0)
                                                  (let ((_g30610_
                                                         (gx#syntax-split-splice
                                                          _tl40974146_
                                                          '0)))
                                                    (begin
                                                      (let ((_g30611_
                                                             (values-count
                                                              _g30610_)))
                                                        (if (not (fx= _g30611_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g30611_)))
              (let ((_target40984149_ (values-ref _g30610_ 0))
                    (_tl41004152_ (values-ref _g30610_ 1)))
                (if (gx#stx-null? _tl41004152_)
                    (letrec ((_loop41014155_
                              (lambda (_hd40994159_ _body41054162_)
                                (if (gx#stx-pair? _hd40994159_)
                                    (let ((_e41024165_
                                           (gx#syntax-e _hd40994159_)))
                                      (let ((_lp-hd41034169_
                                             (##car _e41024165_))
                                            (_lp-tl41044172_
                                             (##cdr _e41024165_)))
                                        (_loop41014155_
                                         _lp-tl41044172_
                                         (cons _lp-hd41034169_
                                               _body41054162_))))
                                    (let ((_body41064175_
                                           (reverse _body41054162_)))
                                      ((lambda (_L4179_
                                                _L4181_
                                                _L4182_
                                                _L4183_)
                                         (cons (gx#datum->syntax '#f 'if)
                                               (cons _L4182_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'begin)
                         (begin
                           '#!void
                           (foldr (lambda (_g42044207_ _g42054210_)
                                    (cons _g42044207_ _g42054210_))
                                  '()
                                  _L4181_)))
                   (cons (cons _L4183_ _L4179_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _tl40944136_
                                       _body41064175_
                                       _hd40964143_
                                       _hd40904123_))))))
                      (_loop41014155_ _target40984149_ '()))
                    (_g40214112_ _g40224116_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g40214112_ _g40224116_))
                                              (_g40214112_ _g40224116_))))
                                      (_g40214112_ _g40224116_))))
                              (_g40214112_ _g40224116_))))
                      (_g40214112_ _g40224116_))))
               (_g40194269_
                (lambda (_g40224217_)
                  (if (gx#stx-pair? _g40224217_)
                      (let ((_e40764220_ (gx#syntax-e _g40224217_)))
                        (let ((_hd40774224_ (##car _e40764220_))
                              (_tl40784227_ (##cdr _e40764220_)))
                          (if (gx#stx-pair? _tl40784227_)
                              (let ((_e40794230_ (gx#syntax-e _tl40784227_)))
                                (let ((_hd40804234_ (##car _e40794230_))
                                      (_tl40814237_ (##cdr _e40794230_)))
                                  (if (gx#stx-pair? _hd40804234_)
                                      (let ((_e40824240_
                                             (gx#syntax-e _hd40804234_)))
                                        (let ((_hd40834244_
                                               (##car _e40824240_))
                                              (_tl40844247_
                                               (##cdr _e40824240_)))
                                          (if (gx#stx-null? _tl40844247_)
                                              ((lambda (_L4250_
                                                        _L4252_
                                                        _L4253_)
                                                 (cons _L4253_
                                                       (cons (cons _L4252_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f '=>)
                                 (cons (gx#datum->syntax '#f 'values) '())))
                     _L4250_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _tl40814237_
                                               _hd40834244_
                                               _hd40774224_)
                                              (_g40204213_ _g40224217_))))
                                      (_g40204213_ _g40224217_))))
                              (_g40204213_ _g40224217_))))
                      (_g40204213_ _g40224217_))))
               (_g40184351_
                (lambda (_g40224273_)
                  (if (gx#stx-pair? _g40224273_)
                      (let ((_e40584276_ (gx#syntax-e _g40224273_)))
                        (let ((_hd40594280_ (##car _e40584276_))
                              (_tl40604283_ (##cdr _e40584276_)))
                          (if (gx#stx-pair? _tl40604283_)
                              (let ((_e40614286_ (gx#syntax-e _tl40604283_)))
                                (let ((_hd40624290_ (##car _e40614286_))
                                      (_tl40634293_ (##cdr _e40614286_)))
                                  (if (gx#stx-pair? _hd40624290_)
                                      (let ((_e40644296_
                                             (gx#syntax-e _hd40624290_)))
                                        (let ((_hd40654300_
                                               (##car _e40644296_))
                                              (_tl40664303_
                                               (##cdr _e40644296_)))
                                          (if (gx#stx-pair? _tl40664303_)
                                              (let ((_e40674306_
                                                     (gx#syntax-e
                                                      _tl40664303_)))
                                                (let ((_hd40684310_
                                                       (##car _e40674306_))
                                                      (_tl40694313_
                                                       (##cdr _e40674306_)))
                                                  (if (gx#identifier?
                                                       _hd40684310_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core::<sugar>::<sugar:1>[1]#_g30612_|
                                                           _hd40684310_)
                                                          (if (gx#stx-pair?
                                                               _tl40694313_)
                                                              (let ((_e40704316_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl40694313_)))
                        (let ((_hd40714320_ (##car _e40704316_))
                              (_tl40724323_ (##cdr _e40704316_)))
                          (if (gx#stx-null? _tl40724323_)
                              ((lambda (_L4326_ _L4328_ _L4329_ _L4330_)
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (cons (gx#datum->syntax '#f '$e)
                                                   (cons _L4329_ '()))
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'if)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                '$e)
                                                               (cons (cons _L4328_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (gx#datum->syntax '#f '$e) '()))
                             (cons (cons _L4330_ _L4326_) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                               _tl40634293_
                               _hd40714320_
                               _hd40654300_
                               _hd40594280_)
                              (_g40194269_ _g40224273_))))
                      (_g40194269_ _g40224273_))
                  (_g40194269_ _g40224273_))
              (_g40194269_ _g40224273_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g40194269_ _g40224273_))))
                                      (_g40194269_ _g40224273_))))
                              (_g40194269_ _g40224273_))))
                      (_g40194269_ _g40224273_))))
               (_g40174392_
                (lambda (_g40224355_)
                  (if (gx#stx-pair? _g40224355_)
                      (let ((_e40454358_ (gx#syntax-e _g40224355_)))
                        (let ((_hd40464362_ (##car _e40454358_))
                              (_tl40474365_ (##cdr _e40454358_)))
                          (if (gx#stx-pair? _tl40474365_)
                              (let ((_e40484368_ (gx#syntax-e _tl40474365_)))
                                (let ((_hd40494372_ (##car _e40484368_))
                                      (_tl40504375_ (##cdr _e40484368_)))
                                  (if (gx#stx-pair? _hd40494372_)
                                      (let ((_e40514378_
                                             (gx#syntax-e _hd40494372_)))
                                        (let ((_hd40524382_
                                               (##car _e40514378_))
                                              (_tl40534385_
                                               (##cdr _e40514378_)))
                                          (if (gx#identifier? _hd40524382_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core::<sugar>::<sugar:1>[1]#_g30613_|
                                                   _hd40524382_)
                                                  ((lambda ()
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'syntax-error)
                                                           (cons '"Bad syntax; misplaced else"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g40184351_ _g40224355_))
                                              (_g40184351_ _g40224355_))))
                                      (_g40184351_ _g40224355_))))
                              (_g40184351_ _g40224355_))))
                      (_g40184351_ _g40224355_))))
               (_g40164487_
                (lambda (_g40224396_)
                  (if (gx#stx-pair? _g40224396_)
                      (let ((_e40274399_ (gx#syntax-e _g40224396_)))
                        (let ((_hd40284403_ (##car _e40274399_))
                              (_tl40294406_ (##cdr _e40274399_)))
                          (if (gx#stx-pair? _tl40294406_)
                              (let ((_e40304409_ (gx#syntax-e _tl40294406_)))
                                (let ((_hd40314413_ (##car _e40304409_))
                                      (_tl40324416_ (##cdr _e40304409_)))
                                  (if (gx#stx-pair? _hd40314413_)
                                      (let ((_e40334419_
                                             (gx#syntax-e _hd40314413_)))
                                        (let ((_hd40344423_
                                               (##car _e40334419_))
                                              (_tl40354426_
                                               (##cdr _e40334419_)))
                                          (if (gx#identifier? _hd40344423_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core::<sugar>::<sugar:1>[1]#_g30614_|
                                                   _hd40344423_)
                                                  (if (gx#stx-pair/null?
                                                       _tl40354426_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl40354426_)
                        '0)
                  (let ((_g30615_ (gx#syntax-split-splice _tl40354426_ '0)))
                    (begin
                      (let ((_g30616_ (values-count _g30615_)))
                        (if (not (fx= _g30616_ 2))
                            (error "Context expects 2 values" _g30616_)))
                      (let ((_target40364429_ (values-ref _g30615_ 0))
                            (_tl40384432_ (values-ref _g30615_ 1)))
                        (if (gx#stx-null? _tl40384432_)
                            (letrec ((_loop40394435_
                                      (lambda (_hd40374439_ _body40434442_)
                                        (if (gx#stx-pair? _hd40374439_)
                                            (let ((_e40404445_
                                                   (gx#syntax-e _hd40374439_)))
                                              (let ((_lp-hd40414449_
                                                     (##car _e40404445_))
                                                    (_lp-tl40424452_
                                                     (##cdr _e40404445_)))
                                                (_loop40394435_
                                                 _lp-tl40424452_
                                                 (cons _lp-hd40414449_
                                                       _body40434442_))))
                                            (let ((_body40444455_
                                                   (reverse _body40434442_)))
                                              (if (gx#stx-null? _tl40324416_)
                                                  ((lambda (_L4459_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            '%#expression)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin)
                               (begin
                                 '#!void
                                 (foldr (lambda (_g44784481_ _g44794484_)
                                          (cons _g44784481_ _g44794484_))
                                        '()
                                        _L4459_)))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _body40444455_)
                                                  (_g40174392_
                                                   _g40224396_)))))))
                              (_loop40394435_ _target40364429_ '()))
                            (_g40174392_ _g40224396_)))))
                  (_g40174392_ _g40224396_))
              (_g40174392_ _g40224396_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g40174392_ _g40224396_))
                                              (_g40174392_ _g40224396_))))
                                      (_g40174392_ _g40224396_))))
                              (_g40174392_ _g40224396_))))
                      (_g40174392_ _g40224396_))))
               (_g40154508_
                (lambda (_g40224491_)
                  (if (gx#stx-pair? _g40224491_)
                      (let ((_e40234494_ (gx#syntax-e _g40224491_)))
                        (let ((_hd40244498_ (##car _e40234494_))
                              (_tl40254501_ (##cdr _e40234494_)))
                          (if (gx#stx-null? _tl40254501_)
                              ((lambda () '#!void))
                              (_g40164487_ _g40224491_))))
                      (_g40164487_ _g40224491_)))))
          (_g40154508_ _$stx4012_))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#when|
      (lambda (_$stx4514_)
        (let* ((_g45184542_
                (lambda (_g45194538_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g45194538_)))
               (_g45174627_
                (lambda (_g45194546_)
                  (if (gx#stx-pair? _g45194546_)
                      (let ((_e45224549_ (gx#syntax-e _g45194546_)))
                        (let ((_hd45234553_ (##car _e45224549_))
                              (_tl45244556_ (##cdr _e45224549_)))
                          (if (gx#stx-pair? _tl45244556_)
                              (let ((_e45254559_ (gx#syntax-e _tl45244556_)))
                                (let ((_hd45264563_ (##car _e45254559_))
                                      (_tl45274566_ (##cdr _e45254559_)))
                                  (if (gx#stx-pair/null? _tl45274566_)
                                      (if (fx>= (gx#stx-length _tl45274566_)
                                                '0)
                                          (let ((_g30617_
                                                 (gx#syntax-split-splice
                                                  _tl45274566_
                                                  '0)))
                                            (begin
                                              (let ((_g30618_
                                                     (values-count _g30617_)))
                                                (if (not (fx= _g30618_ 2))
                                                    (error "Context expects 2 values"
                                                           _g30618_)))
                                              (let ((_target45284569_
                                                     (values-ref _g30617_ 0))
                                                    (_tl45304572_
                                                     (values-ref _g30617_ 1)))
                                                (if (gx#stx-null? _tl45304572_)
                                                    (letrec ((_loop45314575_
                                                              (lambda (_hd45294579_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _expr45354582_)
                        (if (gx#stx-pair? _hd45294579_)
                            (let ((_e45324585_ (gx#syntax-e _hd45294579_)))
                              (let ((_lp-hd45334589_ (##car _e45324585_))
                                    (_lp-tl45344592_ (##cdr _e45324585_)))
                                (_loop45314575_
                                 _lp-tl45344592_
                                 (cons _lp-hd45334589_ _expr45354582_))))
                            (let ((_expr45364595_ (reverse _expr45354582_)))
                              ((lambda (_L4599_ _L4601_)
                                 (cons (gx#datum->syntax '#f 'if)
                                       (cons _L4601_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'begin)
                                                         (begin
                                                           '#!void
                                                           (foldr (lambda (_g46184621_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g46194624_)
                            (cons _g46184621_ _g46194624_))
                          '()
                          _L4599_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons '#!void '())))))
                               _expr45364595_
                               _hd45264563_))))))
              (_loop45314575_ _target45284569_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g45184542_
                                                     _g45194546_)))))
                                          (_g45184542_ _g45194546_))
                                      (_g45184542_ _g45194546_))))
                              (_g45184542_ _g45194546_))))
                      (_g45184542_ _g45194546_)))))
          (_g45174627_ _$stx4514_))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#unless|
      (lambda (_$stx4632_)
        (let* ((_g46364660_
                (lambda (_g46374656_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g46374656_)))
               (_g46354745_
                (lambda (_g46374664_)
                  (if (gx#stx-pair? _g46374664_)
                      (let ((_e46404667_ (gx#syntax-e _g46374664_)))
                        (let ((_hd46414671_ (##car _e46404667_))
                              (_tl46424674_ (##cdr _e46404667_)))
                          (if (gx#stx-pair? _tl46424674_)
                              (let ((_e46434677_ (gx#syntax-e _tl46424674_)))
                                (let ((_hd46444681_ (##car _e46434677_))
                                      (_tl46454684_ (##cdr _e46434677_)))
                                  (if (gx#stx-pair/null? _tl46454684_)
                                      (if (fx>= (gx#stx-length _tl46454684_)
                                                '0)
                                          (let ((_g30619_
                                                 (gx#syntax-split-splice
                                                  _tl46454684_
                                                  '0)))
                                            (begin
                                              (let ((_g30620_
                                                     (values-count _g30619_)))
                                                (if (not (fx= _g30620_ 2))
                                                    (error "Context expects 2 values"
                                                           _g30620_)))
                                              (let ((_target46464687_
                                                     (values-ref _g30619_ 0))
                                                    (_tl46484690_
                                                     (values-ref _g30619_ 1)))
                                                (if (gx#stx-null? _tl46484690_)
                                                    (letrec ((_loop46494693_
                                                              (lambda (_hd46474697_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _expr46534700_)
                        (if (gx#stx-pair? _hd46474697_)
                            (let ((_e46504703_ (gx#syntax-e _hd46474697_)))
                              (let ((_lp-hd46514707_ (##car _e46504703_))
                                    (_lp-tl46524710_ (##cdr _e46504703_)))
                                (_loop46494693_
                                 _lp-tl46524710_
                                 (cons _lp-hd46514707_ _expr46534700_))))
                            (let ((_expr46544713_ (reverse _expr46534700_)))
                              ((lambda (_L4717_ _L4719_)
                                 (cons (gx#datum->syntax '#f 'if)
                                       (cons _L4719_
                                             (cons '#!void
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'begin)
                                                               (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#!void
                         (foldr (lambda (_g47364739_ _g47374742_)
                                  (cons _g47364739_ _g47374742_))
                                '()
                                _L4717_)))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _expr46544713_
                               _hd46444681_))))))
              (_loop46494693_ _target46464687_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g46364660_
                                                     _g46374664_)))))
                                          (_g46364660_ _g46374664_))
                                      (_g46364660_ _g46374664_))))
                              (_g46364660_ _g46374664_))))
                      (_g46364660_ _g46374664_)))))
          (_g46354745_ _$stx4632_))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#syntax-error|
      (lambda (_stx4750_)
        (let* ((_g47534777_
                (lambda (_g47544773_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g47544773_)))
               (_g47524862_
                (lambda (_g47544781_)
                  (if (gx#stx-pair? _g47544781_)
                      (let ((_e47574784_ (gx#syntax-e _g47544781_)))
                        (let ((_hd47584788_ (##car _e47574784_))
                              (_tl47594791_ (##cdr _e47574784_)))
                          (if (gx#stx-pair? _tl47594791_)
                              (let ((_e47604794_ (gx#syntax-e _tl47594791_)))
                                (let ((_hd47614798_ (##car _e47604794_))
                                      (_tl47624801_ (##cdr _e47604794_)))
                                  (if (gx#stx-pair/null? _tl47624801_)
                                      (if (fx>= (gx#stx-length _tl47624801_)
                                                '0)
                                          (let ((_g30621_
                                                 (gx#syntax-split-splice
                                                  _tl47624801_
                                                  '0)))
                                            (begin
                                              (let ((_g30622_
                                                     (values-count _g30621_)))
                                                (if (not (fx= _g30622_ 2))
                                                    (error "Context expects 2 values"
                                                           _g30622_)))
                                              (let ((_target47634804_
                                                     (values-ref _g30621_ 0))
                                                    (_tl47654807_
                                                     (values-ref _g30621_ 1)))
                                                (if (gx#stx-null? _tl47654807_)
                                                    (letrec ((_loop47664810_
                                                              (lambda (_hd47644814_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _detail47704817_)
                        (if (gx#stx-pair? _hd47644814_)
                            (let ((_e47674820_ (gx#syntax-e _hd47644814_)))
                              (let ((_lp-hd47684824_ (##car _e47674820_))
                                    (_lp-tl47694827_ (##cdr _e47674820_)))
                                (_loop47664810_
                                 _lp-tl47694827_
                                 (cons _lp-hd47684824_ _detail47704817_))))
                            (let ((_detail47714830_
                                   (reverse _detail47704817_)))
                              ((lambda (_L4834_ _L4836_)
                                 (if (gx#stx-string? _L4836_)
                                     (apply gx#raise-syntax-error
                                            '#f
                                            (gx#stx-e _L4836_)
                                            _stx4750_
                                            (gx#syntax->list
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g48534856_
                                                               _g48544859_)
                                                        (cons _g48534856_
                                                              _g48544859_))
                                                      '()
                                                      _L4834_))))
                                     (_g47534777_ _g47544781_)))
                               _detail47714830_
                               _hd47614798_))))))
              (_loop47664810_ _target47634804_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g47534777_
                                                     _g47544781_)))))
                                          (_g47534777_ _g47544781_))
                                      (_g47534777_ _g47544781_))))
                              (_g47534777_ _g47544781_))))
                      (_g47534777_ _g47544781_)))))
          (_g47524862_ _stx4750_))))))
