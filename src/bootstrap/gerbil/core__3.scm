(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<sugar>::<sugar:1>[1]#_g29398_|
    (gx#core-quote-syntax 'values))
  (define |gerbil/core::<sugar>::<sugar:1>[1]#_g29399_|
    (gx#core-quote-syntax 'values))
  (define |gerbil/core::<sugar>::<sugar:1>[1]#_g29402_|
    (gx#core-quote-syntax '=>))
  (define |gerbil/core::<sugar>::<sugar:1>[1]#_g29403_|
    (gx#core-quote-syntax 'else))
  (define |gerbil/core::<sugar>::<sugar:1>[1]#_g29404_|
    (gx#core-quote-syntax 'else))
  (begin
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#defrules|
      (lambda (_$stx1623_)
        (let ((_g16271655_
               (lambda (_g16281651_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g16281651_))))
          (let ((_g16261756_
                 (lambda (_g16281659_)
                   (if (gx#stx-pair? _g16281659_)
                       (let ((_e16321662_ (gx#syntax-e _g16281659_)))
                         (let ((_hd16331666_ (##car _e16321662_))
                               (_tl16341669_ (##cdr _e16321662_)))
                           (if (gx#stx-pair? _tl16341669_)
                               (let ((_e16351672_ (gx#syntax-e _tl16341669_)))
                                 (let ((_hd16361676_ (##car _e16351672_))
                                       (_tl16371679_ (##cdr _e16351672_)))
                                   (if (gx#stx-pair? _tl16371679_)
                                       (let ((_e16381682_
                                              (gx#syntax-e _tl16371679_)))
                                         (let ((_hd16391686_
                                                (##car _e16381682_))
                                               (_tl16401689_
                                                (##cdr _e16381682_)))
                                           (if (gx#stx-pair/null? _tl16401689_)
                                               (if (fx>= (gx#stx-length
                                                          _tl16401689_)
                                                         '0)
                                                   (let ((_g29370_
                                                          (gx#syntax-split-splice
                                                           _tl16401689_
                                                           '0)))
                                                     (begin
                                                       (let ((_g29371_
                                                              (values-count
                                                               _g29370_)))
                                                         (if (not (fx= _g29371_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g29371_)))
               (let ((_target16411692_ (values-ref _g29370_ 0))
                     (_tl16431695_ (values-ref _g29370_ 1)))
                 (if (gx#stx-null? _tl16431695_)
                     (letrec ((_loop16441698_
                               (lambda (_hd16421702_ _clauses16481705_)
                                 (if (gx#stx-pair? _hd16421702_)
                                     (let ((_e16451708_
                                            (gx#syntax-e _hd16421702_)))
                                       (let ((_lp-hd16461712_
                                              (##car _e16451708_))
                                             (_lp-tl16471715_
                                              (##cdr _e16451708_)))
                                         (_loop16441698_
                                          _lp-tl16471715_
                                          (cons _lp-hd16461712_
                                                _clauses16481705_))))
                                     (let ((_clauses16491718_
                                            (reverse _clauses16481705_)))
                                       ((lambda (_L1722_ _L1724_ _L1725_)
                                          (if (gx#identifier? _L1725_)
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'define-syntax)
                                                    (cons _L1725_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'syntax-rules)
                              (cons _L1724_
                                    (begin
                                      '#!void
                                      (foldr (lambda (_g17471750_ _g17481753_)
                                               (cons _g17471750_ _g17481753_))
                                             '()
                                             _L1722_))))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g16271655_ _g16281659_)))
                                        _clauses16491718_
                                        _hd16391686_
                                        _hd16361676_))))))
                       (_loop16441698_ _target16411692_ '()))
                     (_g16271655_ _g16281659_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g16271655_ _g16281659_))
                                               (_g16271655_ _g16281659_))))
                                       (_g16271655_ _g16281659_))))
                               (_g16271655_ _g16281659_))))
                       (_g16271655_ _g16281659_)))))
            (_g16261756_ _$stx1623_)))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#defsyntax%|
      (lambda (_$stx1761_)
        (let ((_g17661805_
               (lambda (_g17671801_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g17671801_))))
          (let ((_g17651860_
                 (lambda (_g17671809_)
                   (if (gx#stx-pair? _g17671809_)
                       (let ((_e17911812_ (gx#syntax-e _g17671809_)))
                         (let ((_hd17921816_ (##car _e17911812_))
                               (_tl17931819_ (##cdr _e17911812_)))
                           (if (gx#stx-pair? _tl17931819_)
                               (let ((_e17941822_ (gx#syntax-e _tl17931819_)))
                                 (let ((_hd17951826_ (##car _e17941822_))
                                       (_tl17961829_ (##cdr _e17941822_)))
                                   (if (gx#stx-pair? _tl17961829_)
                                       (let ((_e17971832_
                                              (gx#syntax-e _tl17961829_)))
                                         (let ((_hd17981836_
                                                (##car _e17971832_))
                                               (_tl17991839_
                                                (##cdr _e17971832_)))
                                           (if (gx#stx-null? _tl17991839_)
                                               ((lambda (_L1842_ _L1844_)
                                                  (if (gx#identifier? _L1844_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'define-syntax)
                                                            (cons _L1844_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L1842_ '())))
              (_g17661805_ _g17671809_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd17981836_
                                                _hd17951826_)
                                               (_g17661805_ _g17671809_))))
                                       (_g17661805_ _g17671809_))))
                               (_g17661805_ _g17671809_))))
                       (_g17661805_ _g17671809_)))))
            (let ((_g17641958_
                   (lambda (_g17671864_)
                     (if (gx#stx-pair? _g17671864_)
                         (let ((_e17711867_ (gx#syntax-e _g17671864_)))
                           (let ((_hd17721871_ (##car _e17711867_))
                                 (_tl17731874_ (##cdr _e17711867_)))
                             (if (gx#stx-pair? _tl17731874_)
                                 (let ((_e17741877_
                                        (gx#syntax-e _tl17731874_)))
                                   (let ((_hd17751881_ (##car _e17741877_))
                                         (_tl17761884_ (##cdr _e17741877_)))
                                     (if (gx#stx-pair? _hd17751881_)
                                         (let ((_e17771887_
                                                (gx#syntax-e _hd17751881_)))
                                           (let ((_hd17781891_
                                                  (##car _e17771887_))
                                                 (_tl17791894_
                                                  (##cdr _e17771887_)))
                                             (if (gx#stx-pair/null?
                                                  _tl17761884_)
                                                 (if (fx>= (gx#stx-length
                                                            _tl17761884_)
                                                           '0)
                                                     (let ((_g29372_
                                                            (gx#syntax-split-splice
                                                             _tl17761884_
                                                             '0)))
                                                       (begin
                                                         (let ((_g29373_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g29372_)))
                   (if (not (fx= _g29373_ 2))
                       (error "Context expects 2 values" _g29373_)))
                 (let ((_target17801897_ (values-ref _g29372_ 0))
                       (_tl17821900_ (values-ref _g29372_ 1)))
                   (if (gx#stx-null? _tl17821900_)
                       (letrec ((_loop17831903_
                                 (lambda (_hd17811907_ _body17871910_)
                                   (if (gx#stx-pair? _hd17811907_)
                                       (let ((_e17841913_
                                              (gx#syntax-e _hd17811907_)))
                                         (let ((_lp-hd17851917_
                                                (##car _e17841913_))
                                               (_lp-tl17861920_
                                                (##cdr _e17841913_)))
                                           (_loop17831903_
                                            _lp-tl17861920_
                                            (cons _lp-hd17851917_
                                                  _body17871910_))))
                                       (let ((_body17881923_
                                              (reverse _body17871910_)))
                                         ((lambda (_L1927_ _L1929_ _L1930_)
                                            (if (gx#identifier? _L1930_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'define-syntax)
                                                      (cons _L1930_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'lambda%)
                                (cons _L1929_
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g19491952_
                                                        _g19501955_)
                                                 (cons _g19491952_
                                                       _g19501955_))
                                               '()
                                               _L1927_))))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g17651860_ _g17671864_)))
                                          _body17881923_
                                          _tl17791894_
                                          _hd17781891_))))))
                         (_loop17831903_ _target17801897_ '()))
                       (_g17651860_ _g17671864_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g17651860_ _g17671864_))
                                                 (_g17651860_ _g17671864_))))
                                         (_g17651860_ _g17671864_))))
                                 (_g17651860_ _g17671864_))))
                         (_g17651860_ _g17671864_)))))
              (_g17641958_ _$stx1761_))))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#defalias|
      (lambda (_$stx1963_)
        (let ((_g19671985_
               (lambda (_g19681981_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g19681981_))))
          (let ((_g19662040_
                 (lambda (_g19681989_)
                   (if (gx#stx-pair? _g19681989_)
                       (let ((_e19711992_ (gx#syntax-e _g19681989_)))
                         (let ((_hd19721996_ (##car _e19711992_))
                               (_tl19731999_ (##cdr _e19711992_)))
                           (if (gx#stx-pair? _tl19731999_)
                               (let ((_e19742002_ (gx#syntax-e _tl19731999_)))
                                 (let ((_hd19752006_ (##car _e19742002_))
                                       (_tl19762009_ (##cdr _e19742002_)))
                                   (if (gx#stx-pair? _tl19762009_)
                                       (let ((_e19772012_
                                              (gx#syntax-e _tl19762009_)))
                                         (let ((_hd19782016_
                                                (##car _e19772012_))
                                               (_tl19792019_
                                                (##cdr _e19772012_)))
                                           (if (gx#stx-null? _tl19792019_)
                                               ((lambda (_L2022_ _L2024_)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'define-alias)
                                                        (cons _L2024_
                                                              (cons _L2022_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd19782016_
                                                _hd19752006_)
                                               (_g19671985_ _g19681989_))))
                                       (_g19671985_ _g19681989_))))
                               (_g19671985_ _g19681989_))))
                       (_g19671985_ _g19681989_)))))
            (_g19662040_ _$stx1963_)))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#define|
      (lambda (_$stx2044_)
        (let ((_g20492088_
               (lambda (_g20502084_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g20502084_))))
          (let ((_g20482143_
                 (lambda (_g20502092_)
                   (if (gx#stx-pair? _g20502092_)
                       (let ((_e20742095_ (gx#syntax-e _g20502092_)))
                         (let ((_hd20752099_ (##car _e20742095_))
                               (_tl20762102_ (##cdr _e20742095_)))
                           (if (gx#stx-pair? _tl20762102_)
                               (let ((_e20772105_ (gx#syntax-e _tl20762102_)))
                                 (let ((_hd20782109_ (##car _e20772105_))
                                       (_tl20792112_ (##cdr _e20772105_)))
                                   (if (gx#stx-pair? _tl20792112_)
                                       (let ((_e20802115_
                                              (gx#syntax-e _tl20792112_)))
                                         (let ((_hd20812119_
                                                (##car _e20802115_))
                                               (_tl20822122_
                                                (##cdr _e20802115_)))
                                           (if (gx#stx-null? _tl20822122_)
                                               ((lambda (_L2125_ _L2127_)
                                                  (if (gx#identifier? _L2127_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'define-values)
                                                            (cons (cons _L2127_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons _L2125_ '())))
              (_g20492088_ _g20502092_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd20812119_
                                                _hd20782109_)
                                               (_g20492088_ _g20502092_))))
                                       (_g20492088_ _g20502092_))))
                               (_g20492088_ _g20502092_))))
                       (_g20492088_ _g20502092_)))))
            (let ((_g20472241_
                   (lambda (_g20502147_)
                     (if (gx#stx-pair? _g20502147_)
                         (let ((_e20542150_ (gx#syntax-e _g20502147_)))
                           (let ((_hd20552154_ (##car _e20542150_))
                                 (_tl20562157_ (##cdr _e20542150_)))
                             (if (gx#stx-pair? _tl20562157_)
                                 (let ((_e20572160_
                                        (gx#syntax-e _tl20562157_)))
                                   (let ((_hd20582164_ (##car _e20572160_))
                                         (_tl20592167_ (##cdr _e20572160_)))
                                     (if (gx#stx-pair? _hd20582164_)
                                         (let ((_e20602170_
                                                (gx#syntax-e _hd20582164_)))
                                           (let ((_hd20612174_
                                                  (##car _e20602170_))
                                                 (_tl20622177_
                                                  (##cdr _e20602170_)))
                                             (if (gx#stx-pair/null?
                                                  _tl20592167_)
                                                 (if (fx>= (gx#stx-length
                                                            _tl20592167_)
                                                           '0)
                                                     (let ((_g29374_
                                                            (gx#syntax-split-splice
                                                             _tl20592167_
                                                             '0)))
                                                       (begin
                                                         (let ((_g29375_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g29374_)))
                   (if (not (fx= _g29375_ 2))
                       (error "Context expects 2 values" _g29375_)))
                 (let ((_target20632180_ (values-ref _g29374_ 0))
                       (_tl20652183_ (values-ref _g29374_ 1)))
                   (if (gx#stx-null? _tl20652183_)
                       (letrec ((_loop20662186_
                                 (lambda (_hd20642190_ _body20702193_)
                                   (if (gx#stx-pair? _hd20642190_)
                                       (let ((_e20672196_
                                              (gx#syntax-e _hd20642190_)))
                                         (let ((_lp-hd20682200_
                                                (##car _e20672196_))
                                               (_lp-tl20692203_
                                                (##cdr _e20672196_)))
                                           (_loop20662186_
                                            _lp-tl20692203_
                                            (cons _lp-hd20682200_
                                                  _body20702193_))))
                                       (let ((_body20712206_
                                              (reverse _body20702193_)))
                                         ((lambda (_L2210_ _L2212_ _L2213_)
                                            (if (gx#identifier? _L2213_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'define-values)
                                                      (cons (cons _L2213_ '())
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'lambda%)
                                (cons _L2212_
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g22322235_
                                                        _g22332238_)
                                                 (cons _g22322235_
                                                       _g22332238_))
                                               '()
                                               _L2210_))))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g20482143_ _g20502147_)))
                                          _body20712206_
                                          _tl20622177_
                                          _hd20612174_))))))
                         (_loop20662186_ _target20632180_ '()))
                       (_g20482143_ _g20502147_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g20482143_ _g20502147_))
                                                 (_g20482143_ _g20502147_))))
                                         (_g20482143_ _g20502147_))))
                                 (_g20482143_ _g20502147_))))
                         (_g20482143_ _g20502147_)))))
              (_g20472241_ _$stx2044_))))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#let*-values|
      (lambda (_$stx2246_)
        (let ((_g22512296_
               (lambda (_g22522292_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g22522292_))))
          (let ((_g22502397_
                 (lambda (_g22522300_)
                   (if (gx#stx-pair? _g22522300_)
                       (let ((_e22732303_ (gx#syntax-e _g22522300_)))
                         (let ((_hd22742307_ (##car _e22732303_))
                               (_tl22752310_ (##cdr _e22732303_)))
                           (if (gx#stx-pair? _tl22752310_)
                               (let ((_e22762313_ (gx#syntax-e _tl22752310_)))
                                 (let ((_hd22772317_ (##car _e22762313_))
                                       (_tl22782320_ (##cdr _e22762313_)))
                                   (if (gx#stx-pair? _hd22772317_)
                                       (let ((_e22792323_
                                              (gx#syntax-e _hd22772317_)))
                                         (let ((_hd22802327_
                                                (##car _e22792323_))
                                               (_tl22812330_
                                                (##cdr _e22792323_)))
                                           (if (gx#stx-pair/null? _tl22782320_)
                                               (if (fx>= (gx#stx-length
                                                          _tl22782320_)
                                                         '0)
                                                   (let ((_g29376_
                                                          (gx#syntax-split-splice
                                                           _tl22782320_
                                                           '0)))
                                                     (begin
                                                       (let ((_g29377_
                                                              (values-count
                                                               _g29376_)))
                                                         (if (not (fx= _g29377_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g29377_)))
               (let ((_target22822333_ (values-ref _g29376_ 0))
                     (_tl22842336_ (values-ref _g29376_ 1)))
                 (if (gx#stx-null? _tl22842336_)
                     (letrec ((_loop22852339_
                               (lambda (_hd22832343_ _body22892346_)
                                 (if (gx#stx-pair? _hd22832343_)
                                     (let ((_e22862349_
                                            (gx#syntax-e _hd22832343_)))
                                       (let ((_lp-hd22872353_
                                              (##car _e22862349_))
                                             (_lp-tl22882356_
                                              (##cdr _e22862349_)))
                                         (_loop22852339_
                                          _lp-tl22882356_
                                          (cons _lp-hd22872353_
                                                _body22892346_))))
                                     (let ((_body22902359_
                                            (reverse _body22892346_)))
                                       ((lambda (_L2363_
                                                 _L2365_
                                                 _L2366_
                                                 _L2367_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'let-values)
                                                (cons (cons _L2366_ '())
                                                      (cons (cons _L2367_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L2365_
                                (begin
                                  '#!void
                                  (foldr (lambda (_g23882391_ _g23892394_)
                                           (cons _g23882391_ _g23892394_))
                                         '()
                                         _L2363_))))
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _body22902359_
                                        _tl22812330_
                                        _hd22802327_
                                        _hd22742307_))))))
                       (_loop22852339_ _target22822333_ '()))
                     (_g22512296_ _g22522300_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g22512296_ _g22522300_))
                                               (_g22512296_ _g22522300_))))
                                       (_g22512296_ _g22522300_))))
                               (_g22512296_ _g22522300_))))
                       (_g22512296_ _g22522300_)))))
            (let ((_g22492479_
                   (lambda (_g22522401_)
                     (if (gx#stx-pair? _g22522401_)
                         (let ((_e22542404_ (gx#syntax-e _g22522401_)))
                           (let ((_hd22552408_ (##car _e22542404_))
                                 (_tl22562411_ (##cdr _e22542404_)))
                             (if (gx#stx-pair? _tl22562411_)
                                 (let ((_e22572414_
                                        (gx#syntax-e _tl22562411_)))
                                   (let ((_hd22582418_ (##car _e22572414_))
                                         (_tl22592421_ (##cdr _e22572414_)))
                                     (if (gx#stx-null? _hd22582418_)
                                         (if (gx#stx-pair/null? _tl22592421_)
                                             (if (fx>= (gx#stx-length
                                                        _tl22592421_)
                                                       '0)
                                                 (let ((_g29378_
                                                        (gx#syntax-split-splice
                                                         _tl22592421_
                                                         '0)))
                                                   (begin
                                                     (let ((_g29379_
                                                            (values-count
                                                             _g29378_)))
                                                       (if (not (fx= _g29379_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g29379_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target22602424_
                                                            (values-ref
                                                             _g29378_
                                                             0))
                                                           (_tl22622427_
                                                            (values-ref
                                                             _g29378_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl22622427_)
                                                           (letrec ((_loop22632430_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd22612434_ _body22672437_)
                               (if (gx#stx-pair? _hd22612434_)
                                   (let ((_e22642440_
                                          (gx#syntax-e _hd22612434_)))
                                     (let ((_lp-hd22652444_
                                            (##car _e22642440_))
                                           (_lp-tl22662447_
                                            (##cdr _e22642440_)))
                                       (_loop22632430_
                                        _lp-tl22662447_
                                        (cons _lp-hd22652444_
                                              _body22672437_))))
                                   (let ((_body22682450_
                                          (reverse _body22672437_)))
                                     ((lambda (_L2454_)
                                        (cons (gx#datum->syntax
                                               '#f
                                               'let-values)
                                              (cons '()
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g24702473_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g24712476_)
                       (cons _g24702473_ _g24712476_))
                     '()
                     _L2454_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _body22682450_))))))
                     (_loop22632430_ _target22602424_ '()))
                   (_g22502397_ _g22522401_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g22502397_ _g22522401_))
                                             (_g22502397_ _g22522401_))
                                         (_g22502397_ _g22522401_))))
                                 (_g22502397_ _g22522401_))))
                         (_g22502397_ _g22522401_)))))
              (_g22492479_ _$stx2246_))))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#let|
      (lambda (_$stx2485_)
        (let ((_g24902554_
               (lambda (_g24912550_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g24912550_))))
          (let ((_g24892639_
                 (lambda (_g24912558_)
                   (if (gx#stx-pair? _g24912558_)
                       (let ((_e25342561_ (gx#syntax-e _g24912558_)))
                         (let ((_hd25352565_ (##car _e25342561_))
                               (_tl25362568_ (##cdr _e25342561_)))
                           (if (gx#stx-pair? _tl25362568_)
                               (let ((_e25372571_ (gx#syntax-e _tl25362568_)))
                                 (let ((_hd25382575_ (##car _e25372571_))
                                       (_tl25392578_ (##cdr _e25372571_)))
                                   (if (gx#stx-pair/null? _tl25392578_)
                                       (if (fx>= (gx#stx-length _tl25392578_)
                                                 '0)
                                           (let ((_g29380_
                                                  (gx#syntax-split-splice
                                                   _tl25392578_
                                                   '0)))
                                             (begin
                                               (let ((_g29381_
                                                      (values-count _g29380_)))
                                                 (if (not (fx= _g29381_ 2))
                                                     (error "Context expects 2 values"
                                                            _g29381_)))
                                               (let ((_target25402581_
                                                      (values-ref _g29380_ 0))
                                                     (_tl25422584_
                                                      (values-ref _g29380_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl25422584_)
                                                     (letrec ((_loop25432587_
                                                               (lambda (_hd25412591_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _body25472594_)
                         (if (gx#stx-pair? _hd25412591_)
                             (let ((_e25442597_ (gx#syntax-e _hd25412591_)))
                               (let ((_lp-hd25452601_ (##car _e25442597_))
                                     (_lp-tl25462604_ (##cdr _e25442597_)))
                                 (_loop25432587_
                                  _lp-tl25462604_
                                  (cons _lp-hd25452601_ _body25472594_))))
                             (let ((_body25482607_ (reverse _body25472594_)))
                               ((lambda (_L2611_ _L2613_)
                                  (cons (gx#datum->syntax '#f '~let)
                                        (cons (gx#datum->syntax
                                               '#f
                                               'let-values)
                                              (cons _L2613_
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g26302633_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g26312636_)
                       (cons _g26302633_ _g26312636_))
                     '()
                     _L2611_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _body25482607_
                                _hd25382575_))))))
               (_loop25432587_ _target25402581_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g24902554_
                                                      _g24912558_)))))
                                           (_g24902554_ _g24912558_))
                                       (_g24902554_ _g24912558_))))
                               (_g24902554_ _g24912558_))))
                       (_g24902554_ _g24912558_)))))
            (let ((_g24882815_
                   (lambda (_g24912643_)
                     (if (gx#stx-pair? _g24912643_)
                         (let ((_e24972646_ (gx#syntax-e _g24912643_)))
                           (let ((_hd24982650_ (##car _e24972646_))
                                 (_tl24992653_ (##cdr _e24972646_)))
                             (if (gx#stx-pair? _tl24992653_)
                                 (let ((_e25002656_
                                        (gx#syntax-e _tl24992653_)))
                                   (let ((_hd25012660_ (##car _e25002656_))
                                         (_tl25022663_ (##cdr _e25002656_)))
                                     (if (gx#stx-pair? _tl25022663_)
                                         (let ((_e25032666_
                                                (gx#syntax-e _tl25022663_)))
                                           (let ((_hd25042670_
                                                  (##car _e25032666_))
                                                 (_tl25052673_
                                                  (##cdr _e25032666_)))
                                             (if (gx#stx-pair/null?
                                                  _hd25042670_)
                                                 (if (fx>= (gx#stx-length
                                                            _hd25042670_)
                                                           '0)
                                                     (let ((_g29382_
                                                            (gx#syntax-split-splice
                                                             _hd25042670_
                                                             '0)))
                                                       (begin
                                                         (let ((_g29383_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g29382_)))
                   (if (not (fx= _g29383_ 2))
                       (error "Context expects 2 values" _g29383_)))
                 (let ((_target25062676_ (values-ref _g29382_ 0))
                       (_tl25082679_ (values-ref _g29382_ 1)))
                   (letrec ((_loop25092682_
                             (lambda (_hd25072686_ _arg25132689_ _var25142691_)
                               (if (gx#stx-pair? _hd25072686_)
                                   (let ((_e25102694_
                                          (gx#syntax-e _hd25072686_)))
                                     (let ((_lp-hd25112698_
                                            (##car _e25102694_))
                                           (_lp-tl25122701_
                                            (##cdr _e25102694_)))
                                       (if (gx#stx-pair? _lp-hd25112698_)
                                           (let ((_e25172704_
                                                  (gx#syntax-e
                                                   _lp-hd25112698_)))
                                             (let ((_hd25182708_
                                                    (##car _e25172704_))
                                                   (_tl25192711_
                                                    (##cdr _e25172704_)))
                                               (if (gx#stx-pair? _tl25192711_)
                                                   (let ((_e25202714_
                                                          (gx#syntax-e
                                                           _tl25192711_)))
                                                     (let ((_hd25212718_
                                                            (##car _e25202714_))
                                                           (_tl25222721_
                                                            (##cdr _e25202714_)))
                                                       (if (gx#stx-null?
                                                            _tl25222721_)
                                                           (_loop25092682_
                                                            _lp-tl25122701_
                                                            (cons _hd25212718_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _arg25132689_)
                    (cons _hd25182708_ _var25142691_))
                   (_g24892639_ _g24912643_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g24892639_ _g24912643_))))
                                           (_g24892639_ _g24912643_))))
                                   (let ((_arg25152724_
                                          (reverse _arg25132689_))
                                         (_var25162727_
                                          (reverse _var25142691_)))
                                     (if (gx#stx-pair/null? _tl25052673_)
                                         (if (fx>= (gx#stx-length _tl25052673_)
                                                   '0)
                                             (let ((_g29384_
                                                    (gx#syntax-split-splice
                                                     _tl25052673_
                                                     '0)))
                                               (begin
                                                 (let ((_g29385_
                                                        (values-count
                                                         _g29384_)))
                                                   (if (not (fx= _g29385_ 2))
                                                       (error "Context expects 2 values"
                                                              _g29385_)))
                                                 (let ((_target25232730_
                                                        (values-ref
                                                         _g29384_
                                                         0))
                                                       (_tl25252733_
                                                        (values-ref
                                                         _g29384_
                                                         1)))
                                                   (if (gx#stx-null?
                                                        _tl25252733_)
                                                       (letrec ((_loop25262736_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd25242740_ _body25302743_)
                           (if (gx#stx-pair? _hd25242740_)
                               (let ((_e25272746_ (gx#syntax-e _hd25242740_)))
                                 (let ((_lp-hd25282750_ (##car _e25272746_))
                                       (_lp-tl25292753_ (##cdr _e25272746_)))
                                   (_loop25262736_
                                    _lp-tl25292753_
                                    (cons _lp-hd25282750_ _body25302743_))))
                               (let ((_body25312756_ (reverse _body25302743_)))
                                 ((lambda (_L2760_
                                           _L2762_
                                           _L2763_
                                           _L2764_
                                           _L2765_)
                                    (if (gx#identifier? _L2765_)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'letrec-values)
                                                    (cons (cons (cons (cons _L2765_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons (cons (gx#datum->syntax '#f 'lambda%)
                                          (cons (begin
                                                  '#!void
                                                  (foldr (lambda (_g27902797_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g27912800_)
                   (cons _g27902797_ _g27912800_))
                 _L2762_
                 _L2764_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (begin
                                                  '#!void
                                                  (foldr (lambda (_g27922803_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g27932806_)
                   (cons _g27922803_ _g27932806_))
                 '()
                 _L2760_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))
                        '())
                  (cons _L2765_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g27942809_
                                                                _g27952812_)
                                                         (cons _g27942809_
                                                               _g27952812_))
                                                       '()
                                                       _L2763_)))
                                        (_g24892639_ _g24912643_)))
                                  _body25312756_
                                  _tl25082679_
                                  _arg25152724_
                                  _var25162727_
                                  _hd25012660_))))))
                 (_loop25262736_ _target25232730_ '()))
               (_g24892639_ _g24912643_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g24892639_ _g24912643_))
                                         (_g24892639_ _g24912643_)))))))
                     (_loop25092682_ _target25062676_ '() '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g24892639_ _g24912643_))
                                                 (_g24892639_ _g24912643_))))
                                         (_g24892639_ _g24912643_))))
                                 (_g24892639_ _g24912643_))))
                         (_g24892639_ _g24912643_)))))
              (_g24882815_ _$stx2485_))))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#let*|
      (lambda (_$stx2822_)
        (let ((_g28262850_
               (lambda (_g28272846_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g28272846_))))
          (let ((_g28252935_
                 (lambda (_g28272854_)
                   (if (gx#stx-pair? _g28272854_)
                       (let ((_e28302857_ (gx#syntax-e _g28272854_)))
                         (let ((_hd28312861_ (##car _e28302857_))
                               (_tl28322864_ (##cdr _e28302857_)))
                           (if (gx#stx-pair? _tl28322864_)
                               (let ((_e28332867_ (gx#syntax-e _tl28322864_)))
                                 (let ((_hd28342871_ (##car _e28332867_))
                                       (_tl28352874_ (##cdr _e28332867_)))
                                   (if (gx#stx-pair/null? _tl28352874_)
                                       (if (fx>= (gx#stx-length _tl28352874_)
                                                 '0)
                                           (let ((_g29386_
                                                  (gx#syntax-split-splice
                                                   _tl28352874_
                                                   '0)))
                                             (begin
                                               (let ((_g29387_
                                                      (values-count _g29386_)))
                                                 (if (not (fx= _g29387_ 2))
                                                     (error "Context expects 2 values"
                                                            _g29387_)))
                                               (let ((_target28362877_
                                                      (values-ref _g29386_ 0))
                                                     (_tl28382880_
                                                      (values-ref _g29386_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl28382880_)
                                                     (letrec ((_loop28392883_
                                                               (lambda (_hd28372887_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _body28432890_)
                         (if (gx#stx-pair? _hd28372887_)
                             (let ((_e28402893_ (gx#syntax-e _hd28372887_)))
                               (let ((_lp-hd28412897_ (##car _e28402893_))
                                     (_lp-tl28422900_ (##cdr _e28402893_)))
                                 (_loop28392883_
                                  _lp-tl28422900_
                                  (cons _lp-hd28412897_ _body28432890_))))
                             (let ((_body28442903_ (reverse _body28432890_)))
                               ((lambda (_L2907_ _L2909_)
                                  (cons (gx#datum->syntax '#f '~let)
                                        (cons (gx#datum->syntax
                                               '#f
                                               'let*-values)
                                              (cons _L2909_
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g29262929_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g29272932_)
                       (cons _g29262929_ _g29272932_))
                     '()
                     _L2907_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _body28442903_
                                _hd28342871_))))))
               (_loop28392883_ _target28362877_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g28262850_
                                                      _g28272854_)))))
                                           (_g28262850_ _g28272854_))
                                       (_g28262850_ _g28272854_))))
                               (_g28262850_ _g28272854_))))
                       (_g28262850_ _g28272854_)))))
            (_g28252935_ _$stx2822_)))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#letrec|
      (lambda (_$stx2940_)
        (let ((_g29442968_
               (lambda (_g29452964_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g29452964_))))
          (let ((_g29433053_
                 (lambda (_g29452972_)
                   (if (gx#stx-pair? _g29452972_)
                       (let ((_e29482975_ (gx#syntax-e _g29452972_)))
                         (let ((_hd29492979_ (##car _e29482975_))
                               (_tl29502982_ (##cdr _e29482975_)))
                           (if (gx#stx-pair? _tl29502982_)
                               (let ((_e29512985_ (gx#syntax-e _tl29502982_)))
                                 (let ((_hd29522989_ (##car _e29512985_))
                                       (_tl29532992_ (##cdr _e29512985_)))
                                   (if (gx#stx-pair/null? _tl29532992_)
                                       (if (fx>= (gx#stx-length _tl29532992_)
                                                 '0)
                                           (let ((_g29388_
                                                  (gx#syntax-split-splice
                                                   _tl29532992_
                                                   '0)))
                                             (begin
                                               (let ((_g29389_
                                                      (values-count _g29388_)))
                                                 (if (not (fx= _g29389_ 2))
                                                     (error "Context expects 2 values"
                                                            _g29389_)))
                                               (let ((_target29542995_
                                                      (values-ref _g29388_ 0))
                                                     (_tl29562998_
                                                      (values-ref _g29388_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl29562998_)
                                                     (letrec ((_loop29573001_
                                                               (lambda (_hd29553005_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _body29613008_)
                         (if (gx#stx-pair? _hd29553005_)
                             (let ((_e29583011_ (gx#syntax-e _hd29553005_)))
                               (let ((_lp-hd29593015_ (##car _e29583011_))
                                     (_lp-tl29603018_ (##cdr _e29583011_)))
                                 (_loop29573001_
                                  _lp-tl29603018_
                                  (cons _lp-hd29593015_ _body29613008_))))
                             (let ((_body29623021_ (reverse _body29613008_)))
                               ((lambda (_L3025_ _L3027_)
                                  (cons (gx#datum->syntax '#f '~let)
                                        (cons (gx#datum->syntax
                                               '#f
                                               'letrec-values)
                                              (cons _L3027_
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g30443047_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g30453050_)
                       (cons _g30443047_ _g30453050_))
                     '()
                     _L3025_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _body29623021_
                                _hd29522989_))))))
               (_loop29573001_ _target29542995_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g29442968_
                                                      _g29452972_)))))
                                           (_g29442968_ _g29452972_))
                                       (_g29442968_ _g29452972_))))
                               (_g29442968_ _g29452972_))))
                       (_g29442968_ _g29452972_)))))
            (_g29433053_ _$stx2940_)))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#letrec*|
      (lambda (_$stx3058_)
        (let ((_g30623086_
               (lambda (_g30633082_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g30633082_))))
          (let ((_g30613171_
                 (lambda (_g30633090_)
                   (if (gx#stx-pair? _g30633090_)
                       (let ((_e30663093_ (gx#syntax-e _g30633090_)))
                         (let ((_hd30673097_ (##car _e30663093_))
                               (_tl30683100_ (##cdr _e30663093_)))
                           (if (gx#stx-pair? _tl30683100_)
                               (let ((_e30693103_ (gx#syntax-e _tl30683100_)))
                                 (let ((_hd30703107_ (##car _e30693103_))
                                       (_tl30713110_ (##cdr _e30693103_)))
                                   (if (gx#stx-pair/null? _tl30713110_)
                                       (if (fx>= (gx#stx-length _tl30713110_)
                                                 '0)
                                           (let ((_g29390_
                                                  (gx#syntax-split-splice
                                                   _tl30713110_
                                                   '0)))
                                             (begin
                                               (let ((_g29391_
                                                      (values-count _g29390_)))
                                                 (if (not (fx= _g29391_ 2))
                                                     (error "Context expects 2 values"
                                                            _g29391_)))
                                               (let ((_target30723113_
                                                      (values-ref _g29390_ 0))
                                                     (_tl30743116_
                                                      (values-ref _g29390_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl30743116_)
                                                     (letrec ((_loop30753119_
                                                               (lambda (_hd30733123_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _body30793126_)
                         (if (gx#stx-pair? _hd30733123_)
                             (let ((_e30763129_ (gx#syntax-e _hd30733123_)))
                               (let ((_lp-hd30773133_ (##car _e30763129_))
                                     (_lp-tl30783136_ (##cdr _e30763129_)))
                                 (_loop30753119_
                                  _lp-tl30783136_
                                  (cons _lp-hd30773133_ _body30793126_))))
                             (let ((_body30803139_ (reverse _body30793126_)))
                               ((lambda (_L3143_ _L3145_)
                                  (cons (gx#datum->syntax '#f '~let)
                                        (cons (gx#datum->syntax
                                               '#f
                                               'letrec*-values)
                                              (cons _L3145_
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g31623165_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g31633168_)
                       (cons _g31623165_ _g31633168_))
                     '()
                     _L3143_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _body30803139_
                                _hd30703107_))))))
               (_loop30753119_ _target30723113_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g30623086_
                                                      _g30633090_)))))
                                           (_g30623086_ _g30633090_))
                                       (_g30623086_ _g30633090_))))
                               (_g30623086_ _g30633090_))))
                       (_g30623086_ _g30633090_)))))
            (_g30613171_ _$stx3058_)))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#~let|
      (lambda (_stx3176_)
        (let ((_let-head?3179_
               (lambda (_x3659_)
                 (let ((_g36633674_
                        (lambda (_g36643670_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g36643670_))))
                   (let ((_g36623685_
                          (lambda (_g36643678_)
                            ((lambda () (gx#identifier? _x3659_))))))
                     (let ((_g36613715_
                            (lambda (_g36643689_)
                              (if (gx#stx-pair? _g36643689_)
                                  (let ((_e36663692_
                                         (gx#syntax-e _g36643689_)))
                                    (let ((_hd36673696_ (##car _e36663692_))
                                          (_tl36683699_ (##cdr _e36663692_)))
                                      (if (gx#identifier? _hd36673696_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core::<sugar>::<sugar:1>[1]#_g29399_|
                                               _hd36673696_)
                                              ((lambda (_L3702_)
                                                 (gx#stx-andmap
                                                  gx#identifier?
                                                  _L3702_))
                                               _tl36683699_)
                                              (_g36623685_ _g36643689_))
                                          (_g36623685_ _g36643689_))))
                                  (_g36623685_ _g36643689_)))))
                       (_g36613715_ _x3659_)))))))
          (let ((_let-head3181_
                 (lambda (_x3599_)
                   (let ((_g36033614_
                          (lambda (_g36043610_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g36043610_))))
                     (let ((_g36023625_
                            (lambda (_g36043618_)
                              ((lambda () (list _x3599_))))))
                       (let ((_g36013655_
                              (lambda (_g36043629_)
                                (if (gx#stx-pair? _g36043629_)
                                    (let ((_e36063632_
                                           (gx#syntax-e _g36043629_)))
                                      (let ((_hd36073636_ (##car _e36063632_))
                                            (_tl36083639_ (##cdr _e36063632_)))
                                        (if (gx#identifier? _hd36073636_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core::<sugar>::<sugar:1>[1]#_g29398_|
                                                 _hd36073636_)
                                                ((lambda (_L3642_) _L3642_)
                                                 _tl36083639_)
                                                (_g36023625_ _g36043629_))
                                            (_g36023625_ _g36043629_))))
                                    (_g36023625_ _g36043629_)))))
                         (_g36013655_ _x3599_)))))))
            (let ((_g31843250_
                   (lambda (_g31853246_)
                     (gx#raise-syntax-error '#f '"Bad syntax" _g31853246_))))
              (let ((_g31833511_
                     (lambda (_g31853254_)
                       (if (gx#stx-pair? _g31853254_)
                           (let ((_e32103257_ (gx#syntax-e _g31853254_)))
                             (let ((_hd32113261_ (##car _e32103257_))
                                   (_tl32123264_ (##cdr _e32103257_)))
                               (if (gx#stx-pair? _tl32123264_)
                                   (let ((_e32133267_
                                          (gx#syntax-e _tl32123264_)))
                                     (let ((_hd32143271_ (##car _e32133267_))
                                           (_tl32153274_ (##cdr _e32133267_)))
                                       (if (gx#stx-pair? _tl32153274_)
                                           (let ((_e32163277_
                                                  (gx#syntax-e _tl32153274_)))
                                             (let ((_hd32173281_
                                                    (##car _e32163277_))
                                                   (_tl32183284_
                                                    (##cdr _e32163277_)))
                                               (if (gx#stx-pair/null?
                                                    _hd32173281_)
                                                   (if (fx>= (gx#stx-length
                                                              _hd32173281_)
                                                             '0)
                                                       (let ((_g29392_
                                                              (gx#syntax-split-splice
                                                               _hd32173281_
                                                               '0)))
                                                         (begin
                                                           (let ((_g29393_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g29392_)))
                     (if (not (fx= _g29393_ 2))
                         (error "Context expects 2 values" _g29393_)))
                   (let ((_target32193287_ (values-ref _g29392_ 0))
                         (_tl32213290_ (values-ref _g29392_ 1)))
                     (if (gx#stx-null? _tl32213290_)
                         (letrec ((_loop32223293_
                                   (lambda (_hd32203297_
                                            _e32263300_
                                            _hd32273302_)
                                     (if (gx#stx-pair? _hd32203297_)
                                         (let ((_e32233305_
                                                (gx#syntax-e _hd32203297_)))
                                           (let ((_lp-hd32243309_
                                                  (##car _e32233305_))
                                                 (_lp-tl32253312_
                                                  (##cdr _e32233305_)))
                                             (if (gx#stx-pair? _lp-hd32243309_)
                                                 (let ((_e32303315_
                                                        (gx#syntax-e
                                                         _lp-hd32243309_)))
                                                   (let ((_hd32313319_
                                                          (##car _e32303315_))
                                                         (_tl32323322_
                                                          (##cdr _e32303315_)))
                                                     (if (gx#stx-pair?
                                                          _tl32323322_)
                                                         (let ((_e32333325_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl32323322_)))
                   (let ((_hd32343329_ (##car _e32333325_))
                         (_tl32353332_ (##cdr _e32333325_)))
                     (if (gx#stx-null? _tl32353332_)
                         (_loop32223293_
                          _lp-tl32253312_
                          (cons _hd32343329_ _e32263300_)
                          (cons _hd32313319_ _hd32273302_))
                         (_g31843250_ _g31853254_))))
                 (_g31843250_ _g31853254_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g31843250_ _g31853254_))))
                                         (let ((_e32283335_
                                                (reverse _e32263300_))
                                               (_hd32293338_
                                                (reverse _hd32273302_)))
                                           (if (gx#stx-pair/null? _tl32183284_)
                                               (if (fx>= (gx#stx-length
                                                          _tl32183284_)
                                                         '0)
                                                   (let ((_g29394_
                                                          (gx#syntax-split-splice
                                                           _tl32183284_
                                                           '0)))
                                                     (begin
                                                       (let ((_g29395_
                                                              (values-count
                                                               _g29394_)))
                                                         (if (not (fx= _g29395_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g29395_)))
               (let ((_target32363341_ (values-ref _g29394_ 0))
                     (_tl32383344_ (values-ref _g29394_ 1)))
                 (if (gx#stx-null? _tl32383344_)
                     (letrec ((_loop32393347_
                               (lambda (_hd32373351_ _body32433354_)
                                 (if (gx#stx-pair? _hd32373351_)
                                     (let ((_e32403357_
                                            (gx#syntax-e _hd32373351_)))
                                       (let ((_lp-hd32413361_
                                              (##car _e32403357_))
                                             (_lp-tl32423364_
                                              (##cdr _e32403357_)))
                                         (_loop32393347_
                                          _lp-tl32423364_
                                          (cons _lp-hd32413361_
                                                _body32433354_))))
                                     (let ((_body32443367_
                                            (reverse _body32433354_)))
                                       ((lambda (_L3371_
                                                 _L3373_
                                                 _L3374_
                                                 _L3375_)
                                          (if (gx#stx-andmap
                                               _let-head?3179_
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g34013404_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g34023407_)
                  (cons _g34013404_ _g34023407_))
                '()
                _L3374_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g34103427_
                                                     (lambda (_g34113423_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g34113423_))))
                                                (let ((_g34093499_
                                                       (lambda (_g34113431_)
                                                         (if (gx#stx-pair/null?
                                                              _g34113431_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g34113431_)
                               '0)
                         (let ((_g29396_
                                (gx#syntax-split-splice _g34113431_ '0)))
                           (begin
                             (let ((_g29397_ (values-count _g29396_)))
                               (if (not (fx= _g29397_ 2))
                                   (error "Context expects 2 values"
                                          _g29397_)))
                             (let ((_target34133434_ (values-ref _g29396_ 0))
                                   (_tl34153437_ (values-ref _g29396_ 1)))
                               (if (gx#stx-null? _tl34153437_)
                                   (letrec ((_loop34163440_
                                             (lambda (_hd34143444_
                                                      _hd-bind34203447_)
                                               (if (gx#stx-pair? _hd34143444_)
                                                   (let ((_e34173450_
                                                          (gx#syntax-e
                                                           _hd34143444_)))
                                                     (let ((_lp-hd34183454_
                                                            (##car _e34173450_))
                                                           (_lp-tl34193457_
                                                            (##cdr _e34173450_)))
                                                       (_loop34163440_
                                                        _lp-tl34193457_
                                                        (cons _lp-hd34183454_
                                                              _hd-bind34203447_))))
                                                   (let ((_hd-bind34213460_
                                                          (reverse _hd-bind34203447_)))
                                                     ((lambda (_L3464_)
                                                        (let ()
                                                          (cons _L3375_
                                                                (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (gx#syntax-check-splice-targets
                                 _L3373_
                                 _L3464_)
                                (foldr (lambda (_g34793485_
                                                _g34803488_
                                                _g34813490_)
                                         (cons (cons _g34803488_
                                                     (cons _g34793485_ '()))
                                               _g34813490_))
                                       '()
                                       _L3373_
                                       _L3464_))
                              (begin
                                '#!void
                                (foldr (lambda (_g34823493_ _g34833496_)
                                         (cons _g34823493_ _g34833496_))
                                       '()
                                       _L3371_))))))
              _hd-bind34213460_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop34163440_ _target34133434_ '()))
                                   (_g34103427_ _g34113431_)))))
                         (_g34103427_ _g34113431_))
                     (_g34103427_ _g34113431_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g34093499_
                                                   (gx#stx-map
                                                    _let-head3181_
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g35023505_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g35033508_)
                       (cons _g35023505_ _g35033508_))
                     '()
                     _L3374_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g31843250_ _g31853254_)))
                                        _body32443367_
                                        _e32283335_
                                        _hd32293338_
                                        _hd32143271_))))))
                       (_loop32393347_ _target32363341_ '()))
                     (_g31843250_ _g31853254_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g31843250_ _g31853254_))
                                               (_g31843250_ _g31853254_)))))))
                           (_loop32223293_ _target32193287_ '() '()))
                         (_g31843250_ _g31853254_)))))
               (_g31843250_ _g31853254_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g31843250_ _g31853254_))))
                                           (_g31843250_ _g31853254_))))
                                   (_g31843250_ _g31853254_))))
                           (_g31843250_ _g31853254_)))))
                (let ((_g31823595_
                       (lambda (_g31853515_)
                         (if (gx#stx-pair? _g31853515_)
                             (let ((_e31913518_ (gx#syntax-e _g31853515_)))
                               (let ((_hd31923522_ (##car _e31913518_))
                                     (_tl31933525_ (##cdr _e31913518_)))
                                 (if (gx#stx-pair? _tl31933525_)
                                     (let ((_e31943528_
                                            (gx#syntax-e _tl31933525_)))
                                       (let ((_hd31953532_ (##car _e31943528_))
                                             (_tl31963535_
                                              (##cdr _e31943528_)))
                                         (if (gx#stx-pair? _tl31963535_)
                                             (let ((_e31973538_
                                                    (gx#syntax-e
                                                     _tl31963535_)))
                                               (let ((_hd31983542_
                                                      (##car _e31973538_))
                                                     (_tl31993545_
                                                      (##cdr _e31973538_)))
                                                 (if (gx#stx-pair?
                                                      _hd31983542_)
                                                     (let ((_e32003548_
                                                            (gx#syntax-e
                                                             _hd31983542_)))
                                                       (let ((_hd32013552_
                                                              (##car _e32003548_))
                                                             (_tl32023555_
                                                              (##cdr _e32003548_)))
                                                         (if (gx#stx-pair?
                                                              _tl32023555_)
                                                             (let ((_e32033558_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl32023555_)))
                       (let ((_hd32043562_ (##car _e32033558_))
                             (_tl32053565_ (##cdr _e32033558_)))
                         (if (gx#stx-null? _tl32053565_)
                             ((lambda (_L3568_ _L3570_ _L3571_ _L3572_ _L3573_)
                                (if (_let-head?3179_ _L3571_)
                                    (cons _L3573_
                                          (cons _L3572_
                                                (cons (cons (cons _L3571_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L3570_ '()))
                    '())
              _L3568_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_g31833511_ _g31853515_)))
                              _tl31993545_
                              _hd32043562_
                              _hd32013552_
                              _hd31953532_
                              _hd31923522_)
                             (_g31833511_ _g31853515_))))
                     (_g31833511_ _g31853515_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g31833511_
                                                      _g31853515_))))
                                             (_g31833511_ _g31853515_))))
                                     (_g31833511_ _g31853515_))))
                             (_g31833511_ _g31853515_)))))
                  (_g31823595_ _stx3176_))))))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#and|
      (lambda (_$stx3722_)
        (let ((_g37283754_
               (lambda (_g37293750_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g37293750_))))
          (let ((_g37273799_
                 (lambda (_g37293758_)
                   (if (gx#stx-pair? _g37293758_)
                       (let ((_e37433761_ (gx#syntax-e _g37293758_)))
                         (let ((_hd37443765_ (##car _e37433761_))
                               (_tl37453768_ (##cdr _e37433761_)))
                           (if (gx#stx-pair? _tl37453768_)
                               (let ((_e37463771_ (gx#syntax-e _tl37453768_)))
                                 (let ((_hd37473775_ (##car _e37463771_))
                                       (_tl37483778_ (##cdr _e37463771_)))
                                   ((lambda (_L3781_ _L3783_ _L3784_)
                                      (cons (gx#datum->syntax '#f 'if)
                                            (cons _L3783_
                                                  (cons (cons _L3784_ _L3781_)
                                                        (cons '#f '())))))
                                    _tl37483778_
                                    _hd37473775_
                                    _hd37443765_)))
                               (_g37283754_ _g37293758_))))
                       (_g37283754_ _g37293758_)))))
            (let ((_g37263839_
                   (lambda (_g37293803_)
                     (if (gx#stx-pair? _g37293803_)
                         (let ((_e37343806_ (gx#syntax-e _g37293803_)))
                           (let ((_hd37353810_ (##car _e37343806_))
                                 (_tl37363813_ (##cdr _e37343806_)))
                             (if (gx#stx-pair? _tl37363813_)
                                 (let ((_e37373816_
                                        (gx#syntax-e _tl37363813_)))
                                   (let ((_hd37383820_ (##car _e37373816_))
                                         (_tl37393823_ (##cdr _e37373816_)))
                                     (if (gx#stx-null? _tl37393823_)
                                         ((lambda (_L3826_) _L3826_)
                                          _hd37383820_)
                                         (_g37273799_ _g37293803_))))
                                 (_g37273799_ _g37293803_))))
                         (_g37273799_ _g37293803_)))))
              (let ((_g37253860_
                     (lambda (_g37293843_)
                       (if (gx#stx-pair? _g37293843_)
                           (let ((_e37303846_ (gx#syntax-e _g37293843_)))
                             (let ((_hd37313850_ (##car _e37303846_))
                                   (_tl37323853_ (##cdr _e37303846_)))
                               (if (gx#stx-null? _tl37323853_)
                                   ((lambda () '#t))
                                   (_g37263839_ _g37293843_))))
                           (_g37263839_ _g37293843_)))))
                (_g37253860_ _$stx3722_)))))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#or|
      (lambda (_$stx3864_)
        (let ((_g38703896_
               (lambda (_g38713892_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g38713892_))))
          (let ((_g38693941_
                 (lambda (_g38713900_)
                   (if (gx#stx-pair? _g38713900_)
                       (let ((_e38853903_ (gx#syntax-e _g38713900_)))
                         (let ((_hd38863907_ (##car _e38853903_))
                               (_tl38873910_ (##cdr _e38853903_)))
                           (if (gx#stx-pair? _tl38873910_)
                               (let ((_e38883913_ (gx#syntax-e _tl38873910_)))
                                 (let ((_hd38893917_ (##car _e38883913_))
                                       (_tl38903920_ (##cdr _e38883913_)))
                                   ((lambda (_L3923_ _L3925_ _L3926_)
                                      (cons (gx#datum->syntax '#f 'let)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         '$e)
                                                        (cons _L3925_ '()))
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'if)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '$e)
                            (cons (gx#datum->syntax '#f '$e)
                                  (cons (cons _L3926_ _L3923_) '()))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _tl38903920_
                                    _hd38893917_
                                    _hd38863907_)))
                               (_g38703896_ _g38713900_))))
                       (_g38703896_ _g38713900_)))))
            (let ((_g38683981_
                   (lambda (_g38713945_)
                     (if (gx#stx-pair? _g38713945_)
                         (let ((_e38763948_ (gx#syntax-e _g38713945_)))
                           (let ((_hd38773952_ (##car _e38763948_))
                                 (_tl38783955_ (##cdr _e38763948_)))
                             (if (gx#stx-pair? _tl38783955_)
                                 (let ((_e38793958_
                                        (gx#syntax-e _tl38783955_)))
                                   (let ((_hd38803962_ (##car _e38793958_))
                                         (_tl38813965_ (##cdr _e38793958_)))
                                     (if (gx#stx-null? _tl38813965_)
                                         ((lambda (_L3968_) _L3968_)
                                          _hd38803962_)
                                         (_g38693941_ _g38713945_))))
                                 (_g38693941_ _g38713945_))))
                         (_g38693941_ _g38713945_)))))
              (let ((_g38674002_
                     (lambda (_g38713985_)
                       (if (gx#stx-pair? _g38713985_)
                           (let ((_e38723988_ (gx#syntax-e _g38713985_)))
                             (let ((_hd38733992_ (##car _e38723988_))
                                   (_tl38743995_ (##cdr _e38723988_)))
                               (if (gx#stx-null? _tl38743995_)
                                   ((lambda () '#f))
                                   (_g38683981_ _g38713985_))))
                           (_g38683981_ _g38713985_)))))
                (_g38674002_ _$stx3864_)))))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#cond|
      (lambda (_$stx4006_)
        (let ((_g40154106_
               (lambda (_g40164102_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g40164102_))))
          (let ((_g40144207_
                 (lambda (_g40164110_)
                   (if (gx#stx-pair? _g40164110_)
                       (let ((_e40834113_ (gx#syntax-e _g40164110_)))
                         (let ((_hd40844117_ (##car _e40834113_))
                               (_tl40854120_ (##cdr _e40834113_)))
                           (if (gx#stx-pair? _tl40854120_)
                               (let ((_e40864123_ (gx#syntax-e _tl40854120_)))
                                 (let ((_hd40874127_ (##car _e40864123_))
                                       (_tl40884130_ (##cdr _e40864123_)))
                                   (if (gx#stx-pair? _hd40874127_)
                                       (let ((_e40894133_
                                              (gx#syntax-e _hd40874127_)))
                                         (let ((_hd40904137_
                                                (##car _e40894133_))
                                               (_tl40914140_
                                                (##cdr _e40894133_)))
                                           (if (gx#stx-pair/null? _tl40914140_)
                                               (if (fx>= (gx#stx-length
                                                          _tl40914140_)
                                                         '0)
                                                   (let ((_g29400_
                                                          (gx#syntax-split-splice
                                                           _tl40914140_
                                                           '0)))
                                                     (begin
                                                       (let ((_g29401_
                                                              (values-count
                                                               _g29400_)))
                                                         (if (not (fx= _g29401_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g29401_)))
               (let ((_target40924143_ (values-ref _g29400_ 0))
                     (_tl40944146_ (values-ref _g29400_ 1)))
                 (if (gx#stx-null? _tl40944146_)
                     (letrec ((_loop40954149_
                               (lambda (_hd40934153_ _body40994156_)
                                 (if (gx#stx-pair? _hd40934153_)
                                     (let ((_e40964159_
                                            (gx#syntax-e _hd40934153_)))
                                       (let ((_lp-hd40974163_
                                              (##car _e40964159_))
                                             (_lp-tl40984166_
                                              (##cdr _e40964159_)))
                                         (_loop40954149_
                                          _lp-tl40984166_
                                          (cons _lp-hd40974163_
                                                _body40994156_))))
                                     (let ((_body41004169_
                                            (reverse _body40994156_)))
                                       ((lambda (_L4173_
                                                 _L4175_
                                                 _L4176_
                                                 _L4177_)
                                          (cons (gx#datum->syntax '#f 'if)
                                                (cons _L4176_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'begin)
                          (begin
                            '#!void
                            (foldr (lambda (_g41984201_ _g41994204_)
                                     (cons _g41984201_ _g41994204_))
                                   '()
                                   _L4175_)))
                    (cons (cons _L4177_ _L4173_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _tl40884130_
                                        _body41004169_
                                        _hd40904137_
                                        _hd40844117_))))))
                       (_loop40954149_ _target40924143_ '()))
                     (_g40154106_ _g40164110_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g40154106_ _g40164110_))
                                               (_g40154106_ _g40164110_))))
                                       (_g40154106_ _g40164110_))))
                               (_g40154106_ _g40164110_))))
                       (_g40154106_ _g40164110_)))))
            (let ((_g40134263_
                   (lambda (_g40164211_)
                     (if (gx#stx-pair? _g40164211_)
                         (let ((_e40704214_ (gx#syntax-e _g40164211_)))
                           (let ((_hd40714218_ (##car _e40704214_))
                                 (_tl40724221_ (##cdr _e40704214_)))
                             (if (gx#stx-pair? _tl40724221_)
                                 (let ((_e40734224_
                                        (gx#syntax-e _tl40724221_)))
                                   (let ((_hd40744228_ (##car _e40734224_))
                                         (_tl40754231_ (##cdr _e40734224_)))
                                     (if (gx#stx-pair? _hd40744228_)
                                         (let ((_e40764234_
                                                (gx#syntax-e _hd40744228_)))
                                           (let ((_hd40774238_
                                                  (##car _e40764234_))
                                                 (_tl40784241_
                                                  (##cdr _e40764234_)))
                                             (if (gx#stx-null? _tl40784241_)
                                                 ((lambda (_L4244_
                                                           _L4246_
                                                           _L4247_)
                                                    (cons _L4247_
                                                          (cons (cons _L4246_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#datum->syntax '#f '=>)
                                    (cons (gx#datum->syntax '#f 'values) '())))
                        _L4244_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _tl40754231_
                                                  _hd40774238_
                                                  _hd40714218_)
                                                 (_g40144207_ _g40164211_))))
                                         (_g40144207_ _g40164211_))))
                                 (_g40144207_ _g40164211_))))
                         (_g40144207_ _g40164211_)))))
              (let ((_g40124345_
                     (lambda (_g40164267_)
                       (if (gx#stx-pair? _g40164267_)
                           (let ((_e40524270_ (gx#syntax-e _g40164267_)))
                             (let ((_hd40534274_ (##car _e40524270_))
                                   (_tl40544277_ (##cdr _e40524270_)))
                               (if (gx#stx-pair? _tl40544277_)
                                   (let ((_e40554280_
                                          (gx#syntax-e _tl40544277_)))
                                     (let ((_hd40564284_ (##car _e40554280_))
                                           (_tl40574287_ (##cdr _e40554280_)))
                                       (if (gx#stx-pair? _hd40564284_)
                                           (let ((_e40584290_
                                                  (gx#syntax-e _hd40564284_)))
                                             (let ((_hd40594294_
                                                    (##car _e40584290_))
                                                   (_tl40604297_
                                                    (##cdr _e40584290_)))
                                               (if (gx#stx-pair? _tl40604297_)
                                                   (let ((_e40614300_
                                                          (gx#syntax-e
                                                           _tl40604297_)))
                                                     (let ((_hd40624304_
                                                            (##car _e40614300_))
                                                           (_tl40634307_
                                                            (##cdr _e40614300_)))
                                                       (if (gx#identifier?
                                                            _hd40624304_)
                                                           (if (gx#free-identifier=?
                                                                |gerbil/core::<sugar>::<sugar:1>[1]#_g29402_|
                                                                _hd40624304_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl40634307_)
                           (let ((_e40644310_ (gx#syntax-e _tl40634307_)))
                             (let ((_hd40654314_ (##car _e40644310_))
                                   (_tl40664317_ (##cdr _e40644310_)))
                               (if (gx#stx-null? _tl40664317_)
                                   ((lambda (_L4320_ _L4322_ _L4323_ _L4324_)
                                      (cons (gx#datum->syntax '#f 'let)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         '$e)
                                                        (cons _L4323_ '()))
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'if)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '$e)
                            (cons (cons _L4322_
                                        (cons (gx#datum->syntax '#f '$e) '()))
                                  (cons (cons _L4324_ _L4320_) '()))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _tl40574287_
                                    _hd40654314_
                                    _hd40594294_
                                    _hd40534274_)
                                   (_g40134263_ _g40164267_))))
                           (_g40134263_ _g40164267_))
                       (_g40134263_ _g40164267_))
                   (_g40134263_ _g40164267_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g40134263_ _g40164267_))))
                                           (_g40134263_ _g40164267_))))
                                   (_g40134263_ _g40164267_))))
                           (_g40134263_ _g40164267_)))))
                (let ((_g40114386_
                       (lambda (_g40164349_)
                         (if (gx#stx-pair? _g40164349_)
                             (let ((_e40394352_ (gx#syntax-e _g40164349_)))
                               (let ((_hd40404356_ (##car _e40394352_))
                                     (_tl40414359_ (##cdr _e40394352_)))
                                 (if (gx#stx-pair? _tl40414359_)
                                     (let ((_e40424362_
                                            (gx#syntax-e _tl40414359_)))
                                       (let ((_hd40434366_ (##car _e40424362_))
                                             (_tl40444369_
                                              (##cdr _e40424362_)))
                                         (if (gx#stx-pair? _hd40434366_)
                                             (let ((_e40454372_
                                                    (gx#syntax-e
                                                     _hd40434366_)))
                                               (let ((_hd40464376_
                                                      (##car _e40454372_))
                                                     (_tl40474379_
                                                      (##cdr _e40454372_)))
                                                 (if (gx#identifier?
                                                      _hd40464376_)
                                                     (if (gx#free-identifier=?
                                                          |gerbil/core::<sugar>::<sugar:1>[1]#_g29403_|
                                                          _hd40464376_)
                                                         ((lambda ()
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'syntax-error)
                          (cons '"Bad syntax; misplaced else" '()))))
                 (_g40124345_ _g40164349_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g40124345_
                                                      _g40164349_))))
                                             (_g40124345_ _g40164349_))))
                                     (_g40124345_ _g40164349_))))
                             (_g40124345_ _g40164349_)))))
                  (let ((_g40104481_
                         (lambda (_g40164390_)
                           (if (gx#stx-pair? _g40164390_)
                               (let ((_e40214393_ (gx#syntax-e _g40164390_)))
                                 (let ((_hd40224397_ (##car _e40214393_))
                                       (_tl40234400_ (##cdr _e40214393_)))
                                   (if (gx#stx-pair? _tl40234400_)
                                       (let ((_e40244403_
                                              (gx#syntax-e _tl40234400_)))
                                         (let ((_hd40254407_
                                                (##car _e40244403_))
                                               (_tl40264410_
                                                (##cdr _e40244403_)))
                                           (if (gx#stx-pair? _hd40254407_)
                                               (let ((_e40274413_
                                                      (gx#syntax-e
                                                       _hd40254407_)))
                                                 (let ((_hd40284417_
                                                        (##car _e40274413_))
                                                       (_tl40294420_
                                                        (##cdr _e40274413_)))
                                                   (if (gx#identifier?
                                                        _hd40284417_)
                                                       (if (gx#free-identifier=?
                                                            |gerbil/core::<sugar>::<sugar:1>[1]#_g29404_|
                                                            _hd40284417_)
                                                           (if (gx#stx-pair/null?
                                                                _tl40294420_)
                                                               (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _tl40294420_)
                                 '0)
                           (let ((_g29405_
                                  (gx#syntax-split-splice _tl40294420_ '0)))
                             (begin
                               (let ((_g29406_ (values-count _g29405_)))
                                 (if (not (fx= _g29406_ 2))
                                     (error "Context expects 2 values"
                                            _g29406_)))
                               (let ((_target40304423_ (values-ref _g29405_ 0))
                                     (_tl40324426_ (values-ref _g29405_ 1)))
                                 (if (gx#stx-null? _tl40324426_)
                                     (letrec ((_loop40334429_
                                               (lambda (_hd40314433_
                                                        _body40374436_)
                                                 (if (gx#stx-pair?
                                                      _hd40314433_)
                                                     (let ((_e40344439_
                                                            (gx#syntax-e
                                                             _hd40314433_)))
                                                       (let ((_lp-hd40354443_
                                                              (##car _e40344439_))
                                                             (_lp-tl40364446_
                                                              (##cdr _e40344439_)))
                                                         (_loop40334429_
                                                          _lp-tl40364446_
                                                          (cons _lp-hd40354443_
                                                                _body40374436_))))
                                                     (let ((_body40384449_
                                                            (reverse _body40374436_)))
                                                       (if (gx#stx-null?
                                                            _tl40264410_)
                                                           ((lambda (_L4453_)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '%#expression)
                            (cons (cons (gx#datum->syntax '#f 'begin)
                                        (begin
                                          '#!void
                                          (foldr (lambda (_g44724475_
                                                          _g44734478_)
                                                   (cons _g44724475_
                                                         _g44734478_))
                                                 '()
                                                 _L4453_)))
                                  '())))
                    _body40384449_)
                   (_g40114386_ _g40164390_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_loop40334429_ _target40304423_ '()))
                                     (_g40114386_ _g40164390_)))))
                           (_g40114386_ _g40164390_))
                       (_g40114386_ _g40164390_))
                   (_g40114386_ _g40164390_))
               (_g40114386_ _g40164390_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g40114386_ _g40164390_))))
                                       (_g40114386_ _g40164390_))))
                               (_g40114386_ _g40164390_)))))
                    (let ((_g40094502_
                           (lambda (_g40164485_)
                             (if (gx#stx-pair? _g40164485_)
                                 (let ((_e40174488_ (gx#syntax-e _g40164485_)))
                                   (let ((_hd40184492_ (##car _e40174488_))
                                         (_tl40194495_ (##cdr _e40174488_)))
                                     (if (gx#stx-null? _tl40194495_)
                                         ((lambda () '#!void))
                                         (_g40104481_ _g40164485_))))
                                 (_g40104481_ _g40164485_)))))
                      (_g40094502_ _$stx4006_))))))))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#when|
      (lambda (_$stx4508_)
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
                                           (let ((_g29407_
                                                  (gx#syntax-split-splice
                                                   _tl45214560_
                                                   '0)))
                                             (begin
                                               (let ((_g29408_
                                                      (values-count _g29407_)))
                                                 (if (not (fx= _g29408_ 2))
                                                     (error "Context expects 2 values"
                                                            _g29408_)))
                                               (let ((_target45224563_
                                                      (values-ref _g29407_ 0))
                                                     (_tl45244566_
                                                      (values-ref _g29407_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl45244566_)
                                                     (letrec ((_loop45254569_
                                                               (lambda (_hd45234573_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr45294576_)
                         (if (gx#stx-pair? _hd45234573_)
                             (let ((_e45264579_ (gx#syntax-e _hd45234573_)))
                               (let ((_lp-hd45274583_ (##car _e45264579_))
                                     (_lp-tl45284586_ (##cdr _e45264579_)))
                                 (_loop45254569_
                                  _lp-tl45284586_
                                  (cons _lp-hd45274583_ _expr45294576_))))
                             (let ((_expr45304589_ (reverse _expr45294576_)))
                               ((lambda (_L4593_ _L4595_)
                                  (cons (gx#datum->syntax '#f 'if)
                                        (cons _L4595_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'begin)
                                                          (begin
                                                            '#!void
                                                            (foldr (lambda (_g46124615_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g46134618_)
                             (cons _g46124615_ _g46134618_))
                           '()
                           _L4593_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons '#!void '())))))
                                _expr45304589_
                                _hd45204557_))))))
               (_loop45254569_ _target45224563_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g45124536_
                                                      _g45134540_)))))
                                           (_g45124536_ _g45134540_))
                                       (_g45124536_ _g45134540_))))
                               (_g45124536_ _g45134540_))))
                       (_g45124536_ _g45134540_)))))
            (_g45114621_ _$stx4508_)))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#unless|
      (lambda (_$stx4626_)
        (let ((_g46304654_
               (lambda (_g46314650_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g46314650_))))
          (let ((_g46294739_
                 (lambda (_g46314658_)
                   (if (gx#stx-pair? _g46314658_)
                       (let ((_e46344661_ (gx#syntax-e _g46314658_)))
                         (let ((_hd46354665_ (##car _e46344661_))
                               (_tl46364668_ (##cdr _e46344661_)))
                           (if (gx#stx-pair? _tl46364668_)
                               (let ((_e46374671_ (gx#syntax-e _tl46364668_)))
                                 (let ((_hd46384675_ (##car _e46374671_))
                                       (_tl46394678_ (##cdr _e46374671_)))
                                   (if (gx#stx-pair/null? _tl46394678_)
                                       (if (fx>= (gx#stx-length _tl46394678_)
                                                 '0)
                                           (let ((_g29409_
                                                  (gx#syntax-split-splice
                                                   _tl46394678_
                                                   '0)))
                                             (begin
                                               (let ((_g29410_
                                                      (values-count _g29409_)))
                                                 (if (not (fx= _g29410_ 2))
                                                     (error "Context expects 2 values"
                                                            _g29410_)))
                                               (let ((_target46404681_
                                                      (values-ref _g29409_ 0))
                                                     (_tl46424684_
                                                      (values-ref _g29409_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl46424684_)
                                                     (letrec ((_loop46434687_
                                                               (lambda (_hd46414691_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr46474694_)
                         (if (gx#stx-pair? _hd46414691_)
                             (let ((_e46444697_ (gx#syntax-e _hd46414691_)))
                               (let ((_lp-hd46454701_ (##car _e46444697_))
                                     (_lp-tl46464704_ (##cdr _e46444697_)))
                                 (_loop46434687_
                                  _lp-tl46464704_
                                  (cons _lp-hd46454701_ _expr46474694_))))
                             (let ((_expr46484707_ (reverse _expr46474694_)))
                               ((lambda (_L4711_ _L4713_)
                                  (cons (gx#datum->syntax '#f 'if)
                                        (cons _L4713_
                                              (cons '#!void
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'begin)
                        (begin
                          '#!void
                          (foldr (lambda (_g47304733_ _g47314736_)
                                   (cons _g47304733_ _g47314736_))
                                 '()
                                 _L4711_)))
                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _expr46484707_
                                _hd46384675_))))))
               (_loop46434687_ _target46404681_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g46304654_
                                                      _g46314658_)))))
                                           (_g46304654_ _g46314658_))
                                       (_g46304654_ _g46314658_))))
                               (_g46304654_ _g46314658_))))
                       (_g46304654_ _g46314658_)))))
            (_g46294739_ _$stx4626_)))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#syntax-error|
      (lambda (_stx4744_)
        (let ((_g47474771_
               (lambda (_g47484767_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g47484767_))))
          (let ((_g47464856_
                 (lambda (_g47484775_)
                   (if (gx#stx-pair? _g47484775_)
                       (let ((_e47514778_ (gx#syntax-e _g47484775_)))
                         (let ((_hd47524782_ (##car _e47514778_))
                               (_tl47534785_ (##cdr _e47514778_)))
                           (if (gx#stx-pair? _tl47534785_)
                               (let ((_e47544788_ (gx#syntax-e _tl47534785_)))
                                 (let ((_hd47554792_ (##car _e47544788_))
                                       (_tl47564795_ (##cdr _e47544788_)))
                                   (if (gx#stx-pair/null? _tl47564795_)
                                       (if (fx>= (gx#stx-length _tl47564795_)
                                                 '0)
                                           (let ((_g29411_
                                                  (gx#syntax-split-splice
                                                   _tl47564795_
                                                   '0)))
                                             (begin
                                               (let ((_g29412_
                                                      (values-count _g29411_)))
                                                 (if (not (fx= _g29412_ 2))
                                                     (error "Context expects 2 values"
                                                            _g29412_)))
                                               (let ((_target47574798_
                                                      (values-ref _g29411_ 0))
                                                     (_tl47594801_
                                                      (values-ref _g29411_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl47594801_)
                                                     (letrec ((_loop47604804_
                                                               (lambda (_hd47584808_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _detail47644811_)
                         (if (gx#stx-pair? _hd47584808_)
                             (let ((_e47614814_ (gx#syntax-e _hd47584808_)))
                               (let ((_lp-hd47624818_ (##car _e47614814_))
                                     (_lp-tl47634821_ (##cdr _e47614814_)))
                                 (_loop47604804_
                                  _lp-tl47634821_
                                  (cons _lp-hd47624818_ _detail47644811_))))
                             (let ((_detail47654824_
                                    (reverse _detail47644811_)))
                               ((lambda (_L4828_ _L4830_)
                                  (if (gx#stx-string? _L4830_)
                                      (apply gx#raise-syntax-error
                                             '#f
                                             (gx#stx-e _L4830_)
                                             _stx4744_
                                             (gx#syntax->list
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g48474850_
                                                                _g48484853_)
                                                         (cons _g48474850_
                                                               _g48484853_))
                                                       '()
                                                       _L4828_))))
                                      (_g47474771_ _g47484775_)))
                                _detail47654824_
                                _hd47554792_))))))
               (_loop47604804_ _target47574798_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g47474771_
                                                      _g47484775_)))))
                                           (_g47474771_ _g47484775_))
                                       (_g47474771_ _g47484775_))))
                               (_g47474771_ _g47484775_))))
                       (_g47474771_ _g47484775_)))))
            (_g47464856_ _stx4744_)))))))
