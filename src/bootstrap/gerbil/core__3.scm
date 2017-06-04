(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<sugar>::<sugar:1>[1]#_g29397_|
    (gx#core-quote-syntax 'values))
  (define |gerbil/core::<sugar>::<sugar:1>[1]#_g29398_|
    (gx#core-quote-syntax 'values))
  (define |gerbil/core::<sugar>::<sugar:1>[1]#_g29401_|
    (gx#core-quote-syntax '=>))
  (define |gerbil/core::<sugar>::<sugar:1>[1]#_g29402_|
    (gx#core-quote-syntax 'else))
  (define |gerbil/core::<sugar>::<sugar:1>[1]#_g29403_|
    (gx#core-quote-syntax 'else))
  (begin
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#defrules|
      (lambda (_$stx1622_)
        (let ((_g16261654_
               (lambda (_g16271650_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g16271650_))))
          (let ((_g16251755_
                 (lambda (_g16271658_)
                   (if (gx#stx-pair? _g16271658_)
                       (let ((_e16311661_ (gx#syntax-e _g16271658_)))
                         (let ((_hd16321665_ (##car _e16311661_))
                               (_tl16331668_ (##cdr _e16311661_)))
                           (if (gx#stx-pair? _tl16331668_)
                               (let ((_e16341671_ (gx#syntax-e _tl16331668_)))
                                 (let ((_hd16351675_ (##car _e16341671_))
                                       (_tl16361678_ (##cdr _e16341671_)))
                                   (if (gx#stx-pair? _tl16361678_)
                                       (let ((_e16371681_
                                              (gx#syntax-e _tl16361678_)))
                                         (let ((_hd16381685_
                                                (##car _e16371681_))
                                               (_tl16391688_
                                                (##cdr _e16371681_)))
                                           (if (gx#stx-pair/null? _tl16391688_)
                                               (if (fx>= (gx#stx-length
                                                          _tl16391688_)
                                                         '0)
                                                   (let ((_g29369_
                                                          (gx#syntax-split-splice
                                                           _tl16391688_
                                                           '0)))
                                                     (begin
                                                       (let ((_g29370_
                                                              (values-count
                                                               _g29369_)))
                                                         (if (not (fx= _g29370_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g29370_)))
               (let ((_target16401691_ (values-ref _g29369_ 0))
                     (_tl16421694_ (values-ref _g29369_ 1)))
                 (if (gx#stx-null? _tl16421694_)
                     (letrec ((_loop16431697_
                               (lambda (_hd16411701_ _clauses16471704_)
                                 (if (gx#stx-pair? _hd16411701_)
                                     (let ((_e16441707_
                                            (gx#syntax-e _hd16411701_)))
                                       (let ((_lp-hd16451711_
                                              (##car _e16441707_))
                                             (_lp-tl16461714_
                                              (##cdr _e16441707_)))
                                         (_loop16431697_
                                          _lp-tl16461714_
                                          (cons _lp-hd16451711_
                                                _clauses16471704_))))
                                     (let ((_clauses16481717_
                                            (reverse _clauses16471704_)))
                                       ((lambda (_L1721_ _L1723_ _L1724_)
                                          (if (gx#identifier? _L1724_)
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'define-syntax)
                                                    (cons _L1724_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'syntax-rules)
                              (cons _L1723_
                                    (begin
                                      '#!void
                                      (foldr (lambda (_g17461749_ _g17471752_)
                                               (cons _g17461749_ _g17471752_))
                                             '()
                                             _L1721_))))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g16261654_ _g16271658_)))
                                        _clauses16481717_
                                        _hd16381685_
                                        _hd16351675_))))))
                       (_loop16431697_ _target16401691_ '()))
                     (_g16261654_ _g16271658_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g16261654_ _g16271658_))
                                               (_g16261654_ _g16271658_))))
                                       (_g16261654_ _g16271658_))))
                               (_g16261654_ _g16271658_))))
                       (_g16261654_ _g16271658_)))))
            (_g16251755_ _$stx1622_)))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#defsyntax%|
      (lambda (_$stx1760_)
        (let ((_g17651804_
               (lambda (_g17661800_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g17661800_))))
          (let ((_g17641859_
                 (lambda (_g17661808_)
                   (if (gx#stx-pair? _g17661808_)
                       (let ((_e17901811_ (gx#syntax-e _g17661808_)))
                         (let ((_hd17911815_ (##car _e17901811_))
                               (_tl17921818_ (##cdr _e17901811_)))
                           (if (gx#stx-pair? _tl17921818_)
                               (let ((_e17931821_ (gx#syntax-e _tl17921818_)))
                                 (let ((_hd17941825_ (##car _e17931821_))
                                       (_tl17951828_ (##cdr _e17931821_)))
                                   (if (gx#stx-pair? _tl17951828_)
                                       (let ((_e17961831_
                                              (gx#syntax-e _tl17951828_)))
                                         (let ((_hd17971835_
                                                (##car _e17961831_))
                                               (_tl17981838_
                                                (##cdr _e17961831_)))
                                           (if (gx#stx-null? _tl17981838_)
                                               ((lambda (_L1841_ _L1843_)
                                                  (if (gx#identifier? _L1843_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'define-syntax)
                                                            (cons _L1843_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L1841_ '())))
              (_g17651804_ _g17661808_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd17971835_
                                                _hd17941825_)
                                               (_g17651804_ _g17661808_))))
                                       (_g17651804_ _g17661808_))))
                               (_g17651804_ _g17661808_))))
                       (_g17651804_ _g17661808_)))))
            (let ((_g17631957_
                   (lambda (_g17661863_)
                     (if (gx#stx-pair? _g17661863_)
                         (let ((_e17701866_ (gx#syntax-e _g17661863_)))
                           (let ((_hd17711870_ (##car _e17701866_))
                                 (_tl17721873_ (##cdr _e17701866_)))
                             (if (gx#stx-pair? _tl17721873_)
                                 (let ((_e17731876_
                                        (gx#syntax-e _tl17721873_)))
                                   (let ((_hd17741880_ (##car _e17731876_))
                                         (_tl17751883_ (##cdr _e17731876_)))
                                     (if (gx#stx-pair? _hd17741880_)
                                         (let ((_e17761886_
                                                (gx#syntax-e _hd17741880_)))
                                           (let ((_hd17771890_
                                                  (##car _e17761886_))
                                                 (_tl17781893_
                                                  (##cdr _e17761886_)))
                                             (if (gx#stx-pair/null?
                                                  _tl17751883_)
                                                 (if (fx>= (gx#stx-length
                                                            _tl17751883_)
                                                           '0)
                                                     (let ((_g29371_
                                                            (gx#syntax-split-splice
                                                             _tl17751883_
                                                             '0)))
                                                       (begin
                                                         (let ((_g29372_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g29371_)))
                   (if (not (fx= _g29372_ 2))
                       (error "Context expects 2 values" _g29372_)))
                 (let ((_target17791896_ (values-ref _g29371_ 0))
                       (_tl17811899_ (values-ref _g29371_ 1)))
                   (if (gx#stx-null? _tl17811899_)
                       (letrec ((_loop17821902_
                                 (lambda (_hd17801906_ _body17861909_)
                                   (if (gx#stx-pair? _hd17801906_)
                                       (let ((_e17831912_
                                              (gx#syntax-e _hd17801906_)))
                                         (let ((_lp-hd17841916_
                                                (##car _e17831912_))
                                               (_lp-tl17851919_
                                                (##cdr _e17831912_)))
                                           (_loop17821902_
                                            _lp-tl17851919_
                                            (cons _lp-hd17841916_
                                                  _body17861909_))))
                                       (let ((_body17871922_
                                              (reverse _body17861909_)))
                                         ((lambda (_L1926_ _L1928_ _L1929_)
                                            (if (gx#identifier? _L1929_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'define-syntax)
                                                      (cons _L1929_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'lambda%)
                                (cons _L1928_
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g19481951_
                                                        _g19491954_)
                                                 (cons _g19481951_
                                                       _g19491954_))
                                               '()
                                               _L1926_))))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g17641859_ _g17661863_)))
                                          _body17871922_
                                          _tl17781893_
                                          _hd17771890_))))))
                         (_loop17821902_ _target17791896_ '()))
                       (_g17641859_ _g17661863_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g17641859_ _g17661863_))
                                                 (_g17641859_ _g17661863_))))
                                         (_g17641859_ _g17661863_))))
                                 (_g17641859_ _g17661863_))))
                         (_g17641859_ _g17661863_)))))
              (_g17631957_ _$stx1760_))))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#defalias|
      (lambda (_$stx1962_)
        (let ((_g19661984_
               (lambda (_g19671980_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g19671980_))))
          (let ((_g19652039_
                 (lambda (_g19671988_)
                   (if (gx#stx-pair? _g19671988_)
                       (let ((_e19701991_ (gx#syntax-e _g19671988_)))
                         (let ((_hd19711995_ (##car _e19701991_))
                               (_tl19721998_ (##cdr _e19701991_)))
                           (if (gx#stx-pair? _tl19721998_)
                               (let ((_e19732001_ (gx#syntax-e _tl19721998_)))
                                 (let ((_hd19742005_ (##car _e19732001_))
                                       (_tl19752008_ (##cdr _e19732001_)))
                                   (if (gx#stx-pair? _tl19752008_)
                                       (let ((_e19762011_
                                              (gx#syntax-e _tl19752008_)))
                                         (let ((_hd19772015_
                                                (##car _e19762011_))
                                               (_tl19782018_
                                                (##cdr _e19762011_)))
                                           (if (gx#stx-null? _tl19782018_)
                                               ((lambda (_L2021_ _L2023_)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'define-alias)
                                                        (cons _L2023_
                                                              (cons _L2021_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd19772015_
                                                _hd19742005_)
                                               (_g19661984_ _g19671988_))))
                                       (_g19661984_ _g19671988_))))
                               (_g19661984_ _g19671988_))))
                       (_g19661984_ _g19671988_)))))
            (_g19652039_ _$stx1962_)))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#define|
      (lambda (_$stx2043_)
        (let ((_g20482087_
               (lambda (_g20492083_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g20492083_))))
          (let ((_g20472142_
                 (lambda (_g20492091_)
                   (if (gx#stx-pair? _g20492091_)
                       (let ((_e20732094_ (gx#syntax-e _g20492091_)))
                         (let ((_hd20742098_ (##car _e20732094_))
                               (_tl20752101_ (##cdr _e20732094_)))
                           (if (gx#stx-pair? _tl20752101_)
                               (let ((_e20762104_ (gx#syntax-e _tl20752101_)))
                                 (let ((_hd20772108_ (##car _e20762104_))
                                       (_tl20782111_ (##cdr _e20762104_)))
                                   (if (gx#stx-pair? _tl20782111_)
                                       (let ((_e20792114_
                                              (gx#syntax-e _tl20782111_)))
                                         (let ((_hd20802118_
                                                (##car _e20792114_))
                                               (_tl20812121_
                                                (##cdr _e20792114_)))
                                           (if (gx#stx-null? _tl20812121_)
                                               ((lambda (_L2124_ _L2126_)
                                                  (if (gx#identifier? _L2126_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'define-values)
                                                            (cons (cons _L2126_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons _L2124_ '())))
              (_g20482087_ _g20492091_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd20802118_
                                                _hd20772108_)
                                               (_g20482087_ _g20492091_))))
                                       (_g20482087_ _g20492091_))))
                               (_g20482087_ _g20492091_))))
                       (_g20482087_ _g20492091_)))))
            (let ((_g20462240_
                   (lambda (_g20492146_)
                     (if (gx#stx-pair? _g20492146_)
                         (let ((_e20532149_ (gx#syntax-e _g20492146_)))
                           (let ((_hd20542153_ (##car _e20532149_))
                                 (_tl20552156_ (##cdr _e20532149_)))
                             (if (gx#stx-pair? _tl20552156_)
                                 (let ((_e20562159_
                                        (gx#syntax-e _tl20552156_)))
                                   (let ((_hd20572163_ (##car _e20562159_))
                                         (_tl20582166_ (##cdr _e20562159_)))
                                     (if (gx#stx-pair? _hd20572163_)
                                         (let ((_e20592169_
                                                (gx#syntax-e _hd20572163_)))
                                           (let ((_hd20602173_
                                                  (##car _e20592169_))
                                                 (_tl20612176_
                                                  (##cdr _e20592169_)))
                                             (if (gx#stx-pair/null?
                                                  _tl20582166_)
                                                 (if (fx>= (gx#stx-length
                                                            _tl20582166_)
                                                           '0)
                                                     (let ((_g29373_
                                                            (gx#syntax-split-splice
                                                             _tl20582166_
                                                             '0)))
                                                       (begin
                                                         (let ((_g29374_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g29373_)))
                   (if (not (fx= _g29374_ 2))
                       (error "Context expects 2 values" _g29374_)))
                 (let ((_target20622179_ (values-ref _g29373_ 0))
                       (_tl20642182_ (values-ref _g29373_ 1)))
                   (if (gx#stx-null? _tl20642182_)
                       (letrec ((_loop20652185_
                                 (lambda (_hd20632189_ _body20692192_)
                                   (if (gx#stx-pair? _hd20632189_)
                                       (let ((_e20662195_
                                              (gx#syntax-e _hd20632189_)))
                                         (let ((_lp-hd20672199_
                                                (##car _e20662195_))
                                               (_lp-tl20682202_
                                                (##cdr _e20662195_)))
                                           (_loop20652185_
                                            _lp-tl20682202_
                                            (cons _lp-hd20672199_
                                                  _body20692192_))))
                                       (let ((_body20702205_
                                              (reverse _body20692192_)))
                                         ((lambda (_L2209_ _L2211_ _L2212_)
                                            (if (gx#identifier? _L2212_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'define-values)
                                                      (cons (cons _L2212_ '())
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'lambda%)
                                (cons _L2211_
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g22312234_
                                                        _g22322237_)
                                                 (cons _g22312234_
                                                       _g22322237_))
                                               '()
                                               _L2209_))))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g20472142_ _g20492146_)))
                                          _body20702205_
                                          _tl20612176_
                                          _hd20602173_))))))
                         (_loop20652185_ _target20622179_ '()))
                       (_g20472142_ _g20492146_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g20472142_ _g20492146_))
                                                 (_g20472142_ _g20492146_))))
                                         (_g20472142_ _g20492146_))))
                                 (_g20472142_ _g20492146_))))
                         (_g20472142_ _g20492146_)))))
              (_g20462240_ _$stx2043_))))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#let*-values|
      (lambda (_$stx2245_)
        (let ((_g22502295_
               (lambda (_g22512291_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g22512291_))))
          (let ((_g22492396_
                 (lambda (_g22512299_)
                   (if (gx#stx-pair? _g22512299_)
                       (let ((_e22722302_ (gx#syntax-e _g22512299_)))
                         (let ((_hd22732306_ (##car _e22722302_))
                               (_tl22742309_ (##cdr _e22722302_)))
                           (if (gx#stx-pair? _tl22742309_)
                               (let ((_e22752312_ (gx#syntax-e _tl22742309_)))
                                 (let ((_hd22762316_ (##car _e22752312_))
                                       (_tl22772319_ (##cdr _e22752312_)))
                                   (if (gx#stx-pair? _hd22762316_)
                                       (let ((_e22782322_
                                              (gx#syntax-e _hd22762316_)))
                                         (let ((_hd22792326_
                                                (##car _e22782322_))
                                               (_tl22802329_
                                                (##cdr _e22782322_)))
                                           (if (gx#stx-pair/null? _tl22772319_)
                                               (if (fx>= (gx#stx-length
                                                          _tl22772319_)
                                                         '0)
                                                   (let ((_g29375_
                                                          (gx#syntax-split-splice
                                                           _tl22772319_
                                                           '0)))
                                                     (begin
                                                       (let ((_g29376_
                                                              (values-count
                                                               _g29375_)))
                                                         (if (not (fx= _g29376_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g29376_)))
               (let ((_target22812332_ (values-ref _g29375_ 0))
                     (_tl22832335_ (values-ref _g29375_ 1)))
                 (if (gx#stx-null? _tl22832335_)
                     (letrec ((_loop22842338_
                               (lambda (_hd22822342_ _body22882345_)
                                 (if (gx#stx-pair? _hd22822342_)
                                     (let ((_e22852348_
                                            (gx#syntax-e _hd22822342_)))
                                       (let ((_lp-hd22862352_
                                              (##car _e22852348_))
                                             (_lp-tl22872355_
                                              (##cdr _e22852348_)))
                                         (_loop22842338_
                                          _lp-tl22872355_
                                          (cons _lp-hd22862352_
                                                _body22882345_))))
                                     (let ((_body22892358_
                                            (reverse _body22882345_)))
                                       ((lambda (_L2362_
                                                 _L2364_
                                                 _L2365_
                                                 _L2366_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'let-values)
                                                (cons (cons _L2365_ '())
                                                      (cons (cons _L2366_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L2364_
                                (begin
                                  '#!void
                                  (foldr (lambda (_g23872390_ _g23882393_)
                                           (cons _g23872390_ _g23882393_))
                                         '()
                                         _L2362_))))
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _body22892358_
                                        _tl22802329_
                                        _hd22792326_
                                        _hd22732306_))))))
                       (_loop22842338_ _target22812332_ '()))
                     (_g22502295_ _g22512299_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g22502295_ _g22512299_))
                                               (_g22502295_ _g22512299_))))
                                       (_g22502295_ _g22512299_))))
                               (_g22502295_ _g22512299_))))
                       (_g22502295_ _g22512299_)))))
            (let ((_g22482478_
                   (lambda (_g22512400_)
                     (if (gx#stx-pair? _g22512400_)
                         (let ((_e22532403_ (gx#syntax-e _g22512400_)))
                           (let ((_hd22542407_ (##car _e22532403_))
                                 (_tl22552410_ (##cdr _e22532403_)))
                             (if (gx#stx-pair? _tl22552410_)
                                 (let ((_e22562413_
                                        (gx#syntax-e _tl22552410_)))
                                   (let ((_hd22572417_ (##car _e22562413_))
                                         (_tl22582420_ (##cdr _e22562413_)))
                                     (if (gx#stx-null? _hd22572417_)
                                         (if (gx#stx-pair/null? _tl22582420_)
                                             (if (fx>= (gx#stx-length
                                                        _tl22582420_)
                                                       '0)
                                                 (let ((_g29377_
                                                        (gx#syntax-split-splice
                                                         _tl22582420_
                                                         '0)))
                                                   (begin
                                                     (let ((_g29378_
                                                            (values-count
                                                             _g29377_)))
                                                       (if (not (fx= _g29378_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g29378_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target22592423_
                                                            (values-ref
                                                             _g29377_
                                                             0))
                                                           (_tl22612426_
                                                            (values-ref
                                                             _g29377_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl22612426_)
                                                           (letrec ((_loop22622429_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd22602433_ _body22662436_)
                               (if (gx#stx-pair? _hd22602433_)
                                   (let ((_e22632439_
                                          (gx#syntax-e _hd22602433_)))
                                     (let ((_lp-hd22642443_
                                            (##car _e22632439_))
                                           (_lp-tl22652446_
                                            (##cdr _e22632439_)))
                                       (_loop22622429_
                                        _lp-tl22652446_
                                        (cons _lp-hd22642443_
                                              _body22662436_))))
                                   (let ((_body22672449_
                                          (reverse _body22662436_)))
                                     ((lambda (_L2453_)
                                        (cons (gx#datum->syntax
                                               '#f
                                               'let-values)
                                              (cons '()
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g24692472_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g24702475_)
                       (cons _g24692472_ _g24702475_))
                     '()
                     _L2453_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _body22672449_))))))
                     (_loop22622429_ _target22592423_ '()))
                   (_g22492396_ _g22512400_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g22492396_ _g22512400_))
                                             (_g22492396_ _g22512400_))
                                         (_g22492396_ _g22512400_))))
                                 (_g22492396_ _g22512400_))))
                         (_g22492396_ _g22512400_)))))
              (_g22482478_ _$stx2245_))))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#let|
      (lambda (_$stx2484_)
        (let ((_g24892553_
               (lambda (_g24902549_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g24902549_))))
          (let ((_g24882638_
                 (lambda (_g24902557_)
                   (if (gx#stx-pair? _g24902557_)
                       (let ((_e25332560_ (gx#syntax-e _g24902557_)))
                         (let ((_hd25342564_ (##car _e25332560_))
                               (_tl25352567_ (##cdr _e25332560_)))
                           (if (gx#stx-pair? _tl25352567_)
                               (let ((_e25362570_ (gx#syntax-e _tl25352567_)))
                                 (let ((_hd25372574_ (##car _e25362570_))
                                       (_tl25382577_ (##cdr _e25362570_)))
                                   (if (gx#stx-pair/null? _tl25382577_)
                                       (if (fx>= (gx#stx-length _tl25382577_)
                                                 '0)
                                           (let ((_g29379_
                                                  (gx#syntax-split-splice
                                                   _tl25382577_
                                                   '0)))
                                             (begin
                                               (let ((_g29380_
                                                      (values-count _g29379_)))
                                                 (if (not (fx= _g29380_ 2))
                                                     (error "Context expects 2 values"
                                                            _g29380_)))
                                               (let ((_target25392580_
                                                      (values-ref _g29379_ 0))
                                                     (_tl25412583_
                                                      (values-ref _g29379_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl25412583_)
                                                     (letrec ((_loop25422586_
                                                               (lambda (_hd25402590_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _body25462593_)
                         (if (gx#stx-pair? _hd25402590_)
                             (let ((_e25432596_ (gx#syntax-e _hd25402590_)))
                               (let ((_lp-hd25442600_ (##car _e25432596_))
                                     (_lp-tl25452603_ (##cdr _e25432596_)))
                                 (_loop25422586_
                                  _lp-tl25452603_
                                  (cons _lp-hd25442600_ _body25462593_))))
                             (let ((_body25472606_ (reverse _body25462593_)))
                               ((lambda (_L2610_ _L2612_)
                                  (cons (gx#datum->syntax '#f '~let)
                                        (cons (gx#datum->syntax
                                               '#f
                                               'let-values)
                                              (cons _L2612_
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g26292632_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g26302635_)
                       (cons _g26292632_ _g26302635_))
                     '()
                     _L2610_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _body25472606_
                                _hd25372574_))))))
               (_loop25422586_ _target25392580_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g24892553_
                                                      _g24902557_)))))
                                           (_g24892553_ _g24902557_))
                                       (_g24892553_ _g24902557_))))
                               (_g24892553_ _g24902557_))))
                       (_g24892553_ _g24902557_)))))
            (let ((_g24872814_
                   (lambda (_g24902642_)
                     (if (gx#stx-pair? _g24902642_)
                         (let ((_e24962645_ (gx#syntax-e _g24902642_)))
                           (let ((_hd24972649_ (##car _e24962645_))
                                 (_tl24982652_ (##cdr _e24962645_)))
                             (if (gx#stx-pair? _tl24982652_)
                                 (let ((_e24992655_
                                        (gx#syntax-e _tl24982652_)))
                                   (let ((_hd25002659_ (##car _e24992655_))
                                         (_tl25012662_ (##cdr _e24992655_)))
                                     (if (gx#stx-pair? _tl25012662_)
                                         (let ((_e25022665_
                                                (gx#syntax-e _tl25012662_)))
                                           (let ((_hd25032669_
                                                  (##car _e25022665_))
                                                 (_tl25042672_
                                                  (##cdr _e25022665_)))
                                             (if (gx#stx-pair/null?
                                                  _hd25032669_)
                                                 (if (fx>= (gx#stx-length
                                                            _hd25032669_)
                                                           '0)
                                                     (let ((_g29381_
                                                            (gx#syntax-split-splice
                                                             _hd25032669_
                                                             '0)))
                                                       (begin
                                                         (let ((_g29382_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g29381_)))
                   (if (not (fx= _g29382_ 2))
                       (error "Context expects 2 values" _g29382_)))
                 (let ((_target25052675_ (values-ref _g29381_ 0))
                       (_tl25072678_ (values-ref _g29381_ 1)))
                   (letrec ((_loop25082681_
                             (lambda (_hd25062685_ _arg25122688_ _var25132690_)
                               (if (gx#stx-pair? _hd25062685_)
                                   (let ((_e25092693_
                                          (gx#syntax-e _hd25062685_)))
                                     (let ((_lp-hd25102697_
                                            (##car _e25092693_))
                                           (_lp-tl25112700_
                                            (##cdr _e25092693_)))
                                       (if (gx#stx-pair? _lp-hd25102697_)
                                           (let ((_e25162703_
                                                  (gx#syntax-e
                                                   _lp-hd25102697_)))
                                             (let ((_hd25172707_
                                                    (##car _e25162703_))
                                                   (_tl25182710_
                                                    (##cdr _e25162703_)))
                                               (if (gx#stx-pair? _tl25182710_)
                                                   (let ((_e25192713_
                                                          (gx#syntax-e
                                                           _tl25182710_)))
                                                     (let ((_hd25202717_
                                                            (##car _e25192713_))
                                                           (_tl25212720_
                                                            (##cdr _e25192713_)))
                                                       (if (gx#stx-null?
                                                            _tl25212720_)
                                                           (_loop25082681_
                                                            _lp-tl25112700_
                                                            (cons _hd25202717_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _arg25122688_)
                    (cons _hd25172707_ _var25132690_))
                   (_g24882638_ _g24902642_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g24882638_ _g24902642_))))
                                           (_g24882638_ _g24902642_))))
                                   (let ((_arg25142723_
                                          (reverse _arg25122688_))
                                         (_var25152726_
                                          (reverse _var25132690_)))
                                     (if (gx#stx-pair/null? _tl25042672_)
                                         (if (fx>= (gx#stx-length _tl25042672_)
                                                   '0)
                                             (let ((_g29383_
                                                    (gx#syntax-split-splice
                                                     _tl25042672_
                                                     '0)))
                                               (begin
                                                 (let ((_g29384_
                                                        (values-count
                                                         _g29383_)))
                                                   (if (not (fx= _g29384_ 2))
                                                       (error "Context expects 2 values"
                                                              _g29384_)))
                                                 (let ((_target25222729_
                                                        (values-ref
                                                         _g29383_
                                                         0))
                                                       (_tl25242732_
                                                        (values-ref
                                                         _g29383_
                                                         1)))
                                                   (if (gx#stx-null?
                                                        _tl25242732_)
                                                       (letrec ((_loop25252735_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd25232739_ _body25292742_)
                           (if (gx#stx-pair? _hd25232739_)
                               (let ((_e25262745_ (gx#syntax-e _hd25232739_)))
                                 (let ((_lp-hd25272749_ (##car _e25262745_))
                                       (_lp-tl25282752_ (##cdr _e25262745_)))
                                   (_loop25252735_
                                    _lp-tl25282752_
                                    (cons _lp-hd25272749_ _body25292742_))))
                               (let ((_body25302755_ (reverse _body25292742_)))
                                 ((lambda (_L2759_
                                           _L2761_
                                           _L2762_
                                           _L2763_
                                           _L2764_)
                                    (if (gx#identifier? _L2764_)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'letrec-values)
                                                    (cons (cons (cons (cons _L2764_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons (cons (gx#datum->syntax '#f 'lambda%)
                                          (cons (begin
                                                  '#!void
                                                  (foldr (lambda (_g27892796_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g27902799_)
                   (cons _g27892796_ _g27902799_))
                 _L2761_
                 _L2763_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (begin
                                                  '#!void
                                                  (foldr (lambda (_g27912802_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g27922805_)
                   (cons _g27912802_ _g27922805_))
                 '()
                 _L2759_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))
                        '())
                  (cons _L2764_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g27932808_
                                                                _g27942811_)
                                                         (cons _g27932808_
                                                               _g27942811_))
                                                       '()
                                                       _L2762_)))
                                        (_g24882638_ _g24902642_)))
                                  _body25302755_
                                  _tl25072678_
                                  _arg25142723_
                                  _var25152726_
                                  _hd25002659_))))))
                 (_loop25252735_ _target25222729_ '()))
               (_g24882638_ _g24902642_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g24882638_ _g24902642_))
                                         (_g24882638_ _g24902642_)))))))
                     (_loop25082681_ _target25052675_ '() '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g24882638_ _g24902642_))
                                                 (_g24882638_ _g24902642_))))
                                         (_g24882638_ _g24902642_))))
                                 (_g24882638_ _g24902642_))))
                         (_g24882638_ _g24902642_)))))
              (_g24872814_ _$stx2484_))))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#let*|
      (lambda (_$stx2821_)
        (let ((_g28252849_
               (lambda (_g28262845_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g28262845_))))
          (let ((_g28242934_
                 (lambda (_g28262853_)
                   (if (gx#stx-pair? _g28262853_)
                       (let ((_e28292856_ (gx#syntax-e _g28262853_)))
                         (let ((_hd28302860_ (##car _e28292856_))
                               (_tl28312863_ (##cdr _e28292856_)))
                           (if (gx#stx-pair? _tl28312863_)
                               (let ((_e28322866_ (gx#syntax-e _tl28312863_)))
                                 (let ((_hd28332870_ (##car _e28322866_))
                                       (_tl28342873_ (##cdr _e28322866_)))
                                   (if (gx#stx-pair/null? _tl28342873_)
                                       (if (fx>= (gx#stx-length _tl28342873_)
                                                 '0)
                                           (let ((_g29385_
                                                  (gx#syntax-split-splice
                                                   _tl28342873_
                                                   '0)))
                                             (begin
                                               (let ((_g29386_
                                                      (values-count _g29385_)))
                                                 (if (not (fx= _g29386_ 2))
                                                     (error "Context expects 2 values"
                                                            _g29386_)))
                                               (let ((_target28352876_
                                                      (values-ref _g29385_ 0))
                                                     (_tl28372879_
                                                      (values-ref _g29385_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl28372879_)
                                                     (letrec ((_loop28382882_
                                                               (lambda (_hd28362886_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _body28422889_)
                         (if (gx#stx-pair? _hd28362886_)
                             (let ((_e28392892_ (gx#syntax-e _hd28362886_)))
                               (let ((_lp-hd28402896_ (##car _e28392892_))
                                     (_lp-tl28412899_ (##cdr _e28392892_)))
                                 (_loop28382882_
                                  _lp-tl28412899_
                                  (cons _lp-hd28402896_ _body28422889_))))
                             (let ((_body28432902_ (reverse _body28422889_)))
                               ((lambda (_L2906_ _L2908_)
                                  (cons (gx#datum->syntax '#f '~let)
                                        (cons (gx#datum->syntax
                                               '#f
                                               'let*-values)
                                              (cons _L2908_
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g29252928_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g29262931_)
                       (cons _g29252928_ _g29262931_))
                     '()
                     _L2906_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _body28432902_
                                _hd28332870_))))))
               (_loop28382882_ _target28352876_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g28252849_
                                                      _g28262853_)))))
                                           (_g28252849_ _g28262853_))
                                       (_g28252849_ _g28262853_))))
                               (_g28252849_ _g28262853_))))
                       (_g28252849_ _g28262853_)))))
            (_g28242934_ _$stx2821_)))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#letrec|
      (lambda (_$stx2939_)
        (let ((_g29432967_
               (lambda (_g29442963_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g29442963_))))
          (let ((_g29423052_
                 (lambda (_g29442971_)
                   (if (gx#stx-pair? _g29442971_)
                       (let ((_e29472974_ (gx#syntax-e _g29442971_)))
                         (let ((_hd29482978_ (##car _e29472974_))
                               (_tl29492981_ (##cdr _e29472974_)))
                           (if (gx#stx-pair? _tl29492981_)
                               (let ((_e29502984_ (gx#syntax-e _tl29492981_)))
                                 (let ((_hd29512988_ (##car _e29502984_))
                                       (_tl29522991_ (##cdr _e29502984_)))
                                   (if (gx#stx-pair/null? _tl29522991_)
                                       (if (fx>= (gx#stx-length _tl29522991_)
                                                 '0)
                                           (let ((_g29387_
                                                  (gx#syntax-split-splice
                                                   _tl29522991_
                                                   '0)))
                                             (begin
                                               (let ((_g29388_
                                                      (values-count _g29387_)))
                                                 (if (not (fx= _g29388_ 2))
                                                     (error "Context expects 2 values"
                                                            _g29388_)))
                                               (let ((_target29532994_
                                                      (values-ref _g29387_ 0))
                                                     (_tl29552997_
                                                      (values-ref _g29387_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl29552997_)
                                                     (letrec ((_loop29563000_
                                                               (lambda (_hd29543004_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _body29603007_)
                         (if (gx#stx-pair? _hd29543004_)
                             (let ((_e29573010_ (gx#syntax-e _hd29543004_)))
                               (let ((_lp-hd29583014_ (##car _e29573010_))
                                     (_lp-tl29593017_ (##cdr _e29573010_)))
                                 (_loop29563000_
                                  _lp-tl29593017_
                                  (cons _lp-hd29583014_ _body29603007_))))
                             (let ((_body29613020_ (reverse _body29603007_)))
                               ((lambda (_L3024_ _L3026_)
                                  (cons (gx#datum->syntax '#f '~let)
                                        (cons (gx#datum->syntax
                                               '#f
                                               'letrec-values)
                                              (cons _L3026_
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g30433046_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g30443049_)
                       (cons _g30433046_ _g30443049_))
                     '()
                     _L3024_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _body29613020_
                                _hd29512988_))))))
               (_loop29563000_ _target29532994_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g29432967_
                                                      _g29442971_)))))
                                           (_g29432967_ _g29442971_))
                                       (_g29432967_ _g29442971_))))
                               (_g29432967_ _g29442971_))))
                       (_g29432967_ _g29442971_)))))
            (_g29423052_ _$stx2939_)))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#letrec*|
      (lambda (_$stx3057_)
        (let ((_g30613085_
               (lambda (_g30623081_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g30623081_))))
          (let ((_g30603170_
                 (lambda (_g30623089_)
                   (if (gx#stx-pair? _g30623089_)
                       (let ((_e30653092_ (gx#syntax-e _g30623089_)))
                         (let ((_hd30663096_ (##car _e30653092_))
                               (_tl30673099_ (##cdr _e30653092_)))
                           (if (gx#stx-pair? _tl30673099_)
                               (let ((_e30683102_ (gx#syntax-e _tl30673099_)))
                                 (let ((_hd30693106_ (##car _e30683102_))
                                       (_tl30703109_ (##cdr _e30683102_)))
                                   (if (gx#stx-pair/null? _tl30703109_)
                                       (if (fx>= (gx#stx-length _tl30703109_)
                                                 '0)
                                           (let ((_g29389_
                                                  (gx#syntax-split-splice
                                                   _tl30703109_
                                                   '0)))
                                             (begin
                                               (let ((_g29390_
                                                      (values-count _g29389_)))
                                                 (if (not (fx= _g29390_ 2))
                                                     (error "Context expects 2 values"
                                                            _g29390_)))
                                               (let ((_target30713112_
                                                      (values-ref _g29389_ 0))
                                                     (_tl30733115_
                                                      (values-ref _g29389_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl30733115_)
                                                     (letrec ((_loop30743118_
                                                               (lambda (_hd30723122_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _body30783125_)
                         (if (gx#stx-pair? _hd30723122_)
                             (let ((_e30753128_ (gx#syntax-e _hd30723122_)))
                               (let ((_lp-hd30763132_ (##car _e30753128_))
                                     (_lp-tl30773135_ (##cdr _e30753128_)))
                                 (_loop30743118_
                                  _lp-tl30773135_
                                  (cons _lp-hd30763132_ _body30783125_))))
                             (let ((_body30793138_ (reverse _body30783125_)))
                               ((lambda (_L3142_ _L3144_)
                                  (cons (gx#datum->syntax '#f '~let)
                                        (cons (gx#datum->syntax
                                               '#f
                                               'letrec*-values)
                                              (cons _L3144_
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g31613164_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g31623167_)
                       (cons _g31613164_ _g31623167_))
                     '()
                     _L3142_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _body30793138_
                                _hd30693106_))))))
               (_loop30743118_ _target30713112_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g30613085_
                                                      _g30623089_)))))
                                           (_g30613085_ _g30623089_))
                                       (_g30613085_ _g30623089_))))
                               (_g30613085_ _g30623089_))))
                       (_g30613085_ _g30623089_)))))
            (_g30603170_ _$stx3057_)))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#~let|
      (lambda (_stx3175_)
        (let ((_let-head?3178_
               (lambda (_x3658_)
                 (let ((_g36623673_
                        (lambda (_g36633669_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g36633669_))))
                   (let ((_g36613684_
                          (lambda (_g36633677_)
                            ((lambda () (gx#identifier? _x3658_))))))
                     (let ((_g36603714_
                            (lambda (_g36633688_)
                              (if (gx#stx-pair? _g36633688_)
                                  (let ((_e36653691_
                                         (gx#syntax-e _g36633688_)))
                                    (let ((_hd36663695_ (##car _e36653691_))
                                          (_tl36673698_ (##cdr _e36653691_)))
                                      (if (gx#identifier? _hd36663695_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core::<sugar>::<sugar:1>[1]#_g29398_|
                                               _hd36663695_)
                                              ((lambda (_L3701_)
                                                 (gx#stx-andmap
                                                  gx#identifier?
                                                  _L3701_))
                                               _tl36673698_)
                                              (_g36613684_ _g36633688_))
                                          (_g36613684_ _g36633688_))))
                                  (_g36613684_ _g36633688_)))))
                       (_g36603714_ _x3658_)))))))
          (let ((_let-head3180_
                 (lambda (_x3598_)
                   (let ((_g36023613_
                          (lambda (_g36033609_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g36033609_))))
                     (let ((_g36013624_
                            (lambda (_g36033617_)
                              ((lambda () (list _x3598_))))))
                       (let ((_g36003654_
                              (lambda (_g36033628_)
                                (if (gx#stx-pair? _g36033628_)
                                    (let ((_e36053631_
                                           (gx#syntax-e _g36033628_)))
                                      (let ((_hd36063635_ (##car _e36053631_))
                                            (_tl36073638_ (##cdr _e36053631_)))
                                        (if (gx#identifier? _hd36063635_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core::<sugar>::<sugar:1>[1]#_g29397_|
                                                 _hd36063635_)
                                                ((lambda (_L3641_) _L3641_)
                                                 _tl36073638_)
                                                (_g36013624_ _g36033628_))
                                            (_g36013624_ _g36033628_))))
                                    (_g36013624_ _g36033628_)))))
                         (_g36003654_ _x3598_)))))))
            (let ((_g31833249_
                   (lambda (_g31843245_)
                     (gx#raise-syntax-error '#f '"Bad syntax" _g31843245_))))
              (let ((_g31823510_
                     (lambda (_g31843253_)
                       (if (gx#stx-pair? _g31843253_)
                           (let ((_e32093256_ (gx#syntax-e _g31843253_)))
                             (let ((_hd32103260_ (##car _e32093256_))
                                   (_tl32113263_ (##cdr _e32093256_)))
                               (if (gx#stx-pair? _tl32113263_)
                                   (let ((_e32123266_
                                          (gx#syntax-e _tl32113263_)))
                                     (let ((_hd32133270_ (##car _e32123266_))
                                           (_tl32143273_ (##cdr _e32123266_)))
                                       (if (gx#stx-pair? _tl32143273_)
                                           (let ((_e32153276_
                                                  (gx#syntax-e _tl32143273_)))
                                             (let ((_hd32163280_
                                                    (##car _e32153276_))
                                                   (_tl32173283_
                                                    (##cdr _e32153276_)))
                                               (if (gx#stx-pair/null?
                                                    _hd32163280_)
                                                   (if (fx>= (gx#stx-length
                                                              _hd32163280_)
                                                             '0)
                                                       (let ((_g29391_
                                                              (gx#syntax-split-splice
                                                               _hd32163280_
                                                               '0)))
                                                         (begin
                                                           (let ((_g29392_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g29391_)))
                     (if (not (fx= _g29392_ 2))
                         (error "Context expects 2 values" _g29392_)))
                   (let ((_target32183286_ (values-ref _g29391_ 0))
                         (_tl32203289_ (values-ref _g29391_ 1)))
                     (if (gx#stx-null? _tl32203289_)
                         (letrec ((_loop32213292_
                                   (lambda (_hd32193296_
                                            _e32253299_
                                            _hd32263301_)
                                     (if (gx#stx-pair? _hd32193296_)
                                         (let ((_e32223304_
                                                (gx#syntax-e _hd32193296_)))
                                           (let ((_lp-hd32233308_
                                                  (##car _e32223304_))
                                                 (_lp-tl32243311_
                                                  (##cdr _e32223304_)))
                                             (if (gx#stx-pair? _lp-hd32233308_)
                                                 (let ((_e32293314_
                                                        (gx#syntax-e
                                                         _lp-hd32233308_)))
                                                   (let ((_hd32303318_
                                                          (##car _e32293314_))
                                                         (_tl32313321_
                                                          (##cdr _e32293314_)))
                                                     (if (gx#stx-pair?
                                                          _tl32313321_)
                                                         (let ((_e32323324_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl32313321_)))
                   (let ((_hd32333328_ (##car _e32323324_))
                         (_tl32343331_ (##cdr _e32323324_)))
                     (if (gx#stx-null? _tl32343331_)
                         (_loop32213292_
                          _lp-tl32243311_
                          (cons _hd32333328_ _e32253299_)
                          (cons _hd32303318_ _hd32263301_))
                         (_g31833249_ _g31843253_))))
                 (_g31833249_ _g31843253_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g31833249_ _g31843253_))))
                                         (let ((_e32273334_
                                                (reverse _e32253299_))
                                               (_hd32283337_
                                                (reverse _hd32263301_)))
                                           (if (gx#stx-pair/null? _tl32173283_)
                                               (if (fx>= (gx#stx-length
                                                          _tl32173283_)
                                                         '0)
                                                   (let ((_g29393_
                                                          (gx#syntax-split-splice
                                                           _tl32173283_
                                                           '0)))
                                                     (begin
                                                       (let ((_g29394_
                                                              (values-count
                                                               _g29393_)))
                                                         (if (not (fx= _g29394_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g29394_)))
               (let ((_target32353340_ (values-ref _g29393_ 0))
                     (_tl32373343_ (values-ref _g29393_ 1)))
                 (if (gx#stx-null? _tl32373343_)
                     (letrec ((_loop32383346_
                               (lambda (_hd32363350_ _body32423353_)
                                 (if (gx#stx-pair? _hd32363350_)
                                     (let ((_e32393356_
                                            (gx#syntax-e _hd32363350_)))
                                       (let ((_lp-hd32403360_
                                              (##car _e32393356_))
                                             (_lp-tl32413363_
                                              (##cdr _e32393356_)))
                                         (_loop32383346_
                                          _lp-tl32413363_
                                          (cons _lp-hd32403360_
                                                _body32423353_))))
                                     (let ((_body32433366_
                                            (reverse _body32423353_)))
                                       ((lambda (_L3370_
                                                 _L3372_
                                                 _L3373_
                                                 _L3374_)
                                          (if (gx#stx-andmap
                                               _let-head?3178_
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g34003403_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g34013406_)
                  (cons _g34003403_ _g34013406_))
                '()
                _L3373_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g34093426_
                                                     (lambda (_g34103422_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g34103422_))))
                                                (let ((_g34083498_
                                                       (lambda (_g34103430_)
                                                         (if (gx#stx-pair/null?
                                                              _g34103430_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g34103430_)
                               '0)
                         (let ((_g29395_
                                (gx#syntax-split-splice _g34103430_ '0)))
                           (begin
                             (let ((_g29396_ (values-count _g29395_)))
                               (if (not (fx= _g29396_ 2))
                                   (error "Context expects 2 values"
                                          _g29396_)))
                             (let ((_target34123433_ (values-ref _g29395_ 0))
                                   (_tl34143436_ (values-ref _g29395_ 1)))
                               (if (gx#stx-null? _tl34143436_)
                                   (letrec ((_loop34153439_
                                             (lambda (_hd34133443_
                                                      _hd-bind34193446_)
                                               (if (gx#stx-pair? _hd34133443_)
                                                   (let ((_e34163449_
                                                          (gx#syntax-e
                                                           _hd34133443_)))
                                                     (let ((_lp-hd34173453_
                                                            (##car _e34163449_))
                                                           (_lp-tl34183456_
                                                            (##cdr _e34163449_)))
                                                       (_loop34153439_
                                                        _lp-tl34183456_
                                                        (cons _lp-hd34173453_
                                                              _hd-bind34193446_))))
                                                   (let ((_hd-bind34203459_
                                                          (reverse _hd-bind34193446_)))
                                                     ((lambda (_L3463_)
                                                        (let ()
                                                          (cons _L3374_
                                                                (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (gx#syntax-check-splice-targets
                                 _L3372_
                                 _L3463_)
                                (foldr (lambda (_g34783484_
                                                _g34793487_
                                                _g34803489_)
                                         (cons (cons _g34793487_
                                                     (cons _g34783484_ '()))
                                               _g34803489_))
                                       '()
                                       _L3372_
                                       _L3463_))
                              (begin
                                '#!void
                                (foldr (lambda (_g34813492_ _g34823495_)
                                         (cons _g34813492_ _g34823495_))
                                       '()
                                       _L3370_))))))
              _hd-bind34203459_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop34153439_ _target34123433_ '()))
                                   (_g34093426_ _g34103430_)))))
                         (_g34093426_ _g34103430_))
                     (_g34093426_ _g34103430_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g34083498_
                                                   (gx#stx-map
                                                    _let-head3180_
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g35013504_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g35023507_)
                       (cons _g35013504_ _g35023507_))
                     '()
                     _L3373_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g31833249_ _g31843253_)))
                                        _body32433366_
                                        _e32273334_
                                        _hd32283337_
                                        _hd32133270_))))))
                       (_loop32383346_ _target32353340_ '()))
                     (_g31833249_ _g31843253_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g31833249_ _g31843253_))
                                               (_g31833249_ _g31843253_)))))))
                           (_loop32213292_ _target32183286_ '() '()))
                         (_g31833249_ _g31843253_)))))
               (_g31833249_ _g31843253_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g31833249_ _g31843253_))))
                                           (_g31833249_ _g31843253_))))
                                   (_g31833249_ _g31843253_))))
                           (_g31833249_ _g31843253_)))))
                (let ((_g31813594_
                       (lambda (_g31843514_)
                         (if (gx#stx-pair? _g31843514_)
                             (let ((_e31903517_ (gx#syntax-e _g31843514_)))
                               (let ((_hd31913521_ (##car _e31903517_))
                                     (_tl31923524_ (##cdr _e31903517_)))
                                 (if (gx#stx-pair? _tl31923524_)
                                     (let ((_e31933527_
                                            (gx#syntax-e _tl31923524_)))
                                       (let ((_hd31943531_ (##car _e31933527_))
                                             (_tl31953534_
                                              (##cdr _e31933527_)))
                                         (if (gx#stx-pair? _tl31953534_)
                                             (let ((_e31963537_
                                                    (gx#syntax-e
                                                     _tl31953534_)))
                                               (let ((_hd31973541_
                                                      (##car _e31963537_))
                                                     (_tl31983544_
                                                      (##cdr _e31963537_)))
                                                 (if (gx#stx-pair?
                                                      _hd31973541_)
                                                     (let ((_e31993547_
                                                            (gx#syntax-e
                                                             _hd31973541_)))
                                                       (let ((_hd32003551_
                                                              (##car _e31993547_))
                                                             (_tl32013554_
                                                              (##cdr _e31993547_)))
                                                         (if (gx#stx-pair?
                                                              _tl32013554_)
                                                             (let ((_e32023557_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl32013554_)))
                       (let ((_hd32033561_ (##car _e32023557_))
                             (_tl32043564_ (##cdr _e32023557_)))
                         (if (gx#stx-null? _tl32043564_)
                             ((lambda (_L3567_ _L3569_ _L3570_ _L3571_ _L3572_)
                                (if (_let-head?3178_ _L3570_)
                                    (cons _L3572_
                                          (cons _L3571_
                                                (cons (cons (cons _L3570_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L3569_ '()))
                    '())
              _L3567_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_g31823510_ _g31843514_)))
                              _tl31983544_
                              _hd32033561_
                              _hd32003551_
                              _hd31943531_
                              _hd31913521_)
                             (_g31823510_ _g31843514_))))
                     (_g31823510_ _g31843514_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g31823510_
                                                      _g31843514_))))
                                             (_g31823510_ _g31843514_))))
                                     (_g31823510_ _g31843514_))))
                             (_g31823510_ _g31843514_)))))
                  (_g31813594_ _stx3175_))))))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#and|
      (lambda (_$stx3721_)
        (let ((_g37273753_
               (lambda (_g37283749_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g37283749_))))
          (let ((_g37263798_
                 (lambda (_g37283757_)
                   (if (gx#stx-pair? _g37283757_)
                       (let ((_e37423760_ (gx#syntax-e _g37283757_)))
                         (let ((_hd37433764_ (##car _e37423760_))
                               (_tl37443767_ (##cdr _e37423760_)))
                           (if (gx#stx-pair? _tl37443767_)
                               (let ((_e37453770_ (gx#syntax-e _tl37443767_)))
                                 (let ((_hd37463774_ (##car _e37453770_))
                                       (_tl37473777_ (##cdr _e37453770_)))
                                   ((lambda (_L3780_ _L3782_ _L3783_)
                                      (cons (gx#datum->syntax '#f 'if)
                                            (cons _L3782_
                                                  (cons (cons _L3783_ _L3780_)
                                                        (cons '#f '())))))
                                    _tl37473777_
                                    _hd37463774_
                                    _hd37433764_)))
                               (_g37273753_ _g37283757_))))
                       (_g37273753_ _g37283757_)))))
            (let ((_g37253838_
                   (lambda (_g37283802_)
                     (if (gx#stx-pair? _g37283802_)
                         (let ((_e37333805_ (gx#syntax-e _g37283802_)))
                           (let ((_hd37343809_ (##car _e37333805_))
                                 (_tl37353812_ (##cdr _e37333805_)))
                             (if (gx#stx-pair? _tl37353812_)
                                 (let ((_e37363815_
                                        (gx#syntax-e _tl37353812_)))
                                   (let ((_hd37373819_ (##car _e37363815_))
                                         (_tl37383822_ (##cdr _e37363815_)))
                                     (if (gx#stx-null? _tl37383822_)
                                         ((lambda (_L3825_) _L3825_)
                                          _hd37373819_)
                                         (_g37263798_ _g37283802_))))
                                 (_g37263798_ _g37283802_))))
                         (_g37263798_ _g37283802_)))))
              (let ((_g37243859_
                     (lambda (_g37283842_)
                       (if (gx#stx-pair? _g37283842_)
                           (let ((_e37293845_ (gx#syntax-e _g37283842_)))
                             (let ((_hd37303849_ (##car _e37293845_))
                                   (_tl37313852_ (##cdr _e37293845_)))
                               (if (gx#stx-null? _tl37313852_)
                                   ((lambda () '#t))
                                   (_g37253838_ _g37283842_))))
                           (_g37253838_ _g37283842_)))))
                (_g37243859_ _$stx3721_)))))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#or|
      (lambda (_$stx3863_)
        (let ((_g38693895_
               (lambda (_g38703891_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g38703891_))))
          (let ((_g38683940_
                 (lambda (_g38703899_)
                   (if (gx#stx-pair? _g38703899_)
                       (let ((_e38843902_ (gx#syntax-e _g38703899_)))
                         (let ((_hd38853906_ (##car _e38843902_))
                               (_tl38863909_ (##cdr _e38843902_)))
                           (if (gx#stx-pair? _tl38863909_)
                               (let ((_e38873912_ (gx#syntax-e _tl38863909_)))
                                 (let ((_hd38883916_ (##car _e38873912_))
                                       (_tl38893919_ (##cdr _e38873912_)))
                                   ((lambda (_L3922_ _L3924_ _L3925_)
                                      (cons (gx#datum->syntax '#f 'let)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         '$e)
                                                        (cons _L3924_ '()))
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'if)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '$e)
                            (cons (gx#datum->syntax '#f '$e)
                                  (cons (cons _L3925_ _L3922_) '()))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _tl38893919_
                                    _hd38883916_
                                    _hd38853906_)))
                               (_g38693895_ _g38703899_))))
                       (_g38693895_ _g38703899_)))))
            (let ((_g38673980_
                   (lambda (_g38703944_)
                     (if (gx#stx-pair? _g38703944_)
                         (let ((_e38753947_ (gx#syntax-e _g38703944_)))
                           (let ((_hd38763951_ (##car _e38753947_))
                                 (_tl38773954_ (##cdr _e38753947_)))
                             (if (gx#stx-pair? _tl38773954_)
                                 (let ((_e38783957_
                                        (gx#syntax-e _tl38773954_)))
                                   (let ((_hd38793961_ (##car _e38783957_))
                                         (_tl38803964_ (##cdr _e38783957_)))
                                     (if (gx#stx-null? _tl38803964_)
                                         ((lambda (_L3967_) _L3967_)
                                          _hd38793961_)
                                         (_g38683940_ _g38703944_))))
                                 (_g38683940_ _g38703944_))))
                         (_g38683940_ _g38703944_)))))
              (let ((_g38664001_
                     (lambda (_g38703984_)
                       (if (gx#stx-pair? _g38703984_)
                           (let ((_e38713987_ (gx#syntax-e _g38703984_)))
                             (let ((_hd38723991_ (##car _e38713987_))
                                   (_tl38733994_ (##cdr _e38713987_)))
                               (if (gx#stx-null? _tl38733994_)
                                   ((lambda () '#f))
                                   (_g38673980_ _g38703984_))))
                           (_g38673980_ _g38703984_)))))
                (_g38664001_ _$stx3863_)))))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#cond|
      (lambda (_$stx4005_)
        (let ((_g40144105_
               (lambda (_g40154101_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g40154101_))))
          (let ((_g40134206_
                 (lambda (_g40154109_)
                   (if (gx#stx-pair? _g40154109_)
                       (let ((_e40824112_ (gx#syntax-e _g40154109_)))
                         (let ((_hd40834116_ (##car _e40824112_))
                               (_tl40844119_ (##cdr _e40824112_)))
                           (if (gx#stx-pair? _tl40844119_)
                               (let ((_e40854122_ (gx#syntax-e _tl40844119_)))
                                 (let ((_hd40864126_ (##car _e40854122_))
                                       (_tl40874129_ (##cdr _e40854122_)))
                                   (if (gx#stx-pair? _hd40864126_)
                                       (let ((_e40884132_
                                              (gx#syntax-e _hd40864126_)))
                                         (let ((_hd40894136_
                                                (##car _e40884132_))
                                               (_tl40904139_
                                                (##cdr _e40884132_)))
                                           (if (gx#stx-pair/null? _tl40904139_)
                                               (if (fx>= (gx#stx-length
                                                          _tl40904139_)
                                                         '0)
                                                   (let ((_g29399_
                                                          (gx#syntax-split-splice
                                                           _tl40904139_
                                                           '0)))
                                                     (begin
                                                       (let ((_g29400_
                                                              (values-count
                                                               _g29399_)))
                                                         (if (not (fx= _g29400_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g29400_)))
               (let ((_target40914142_ (values-ref _g29399_ 0))
                     (_tl40934145_ (values-ref _g29399_ 1)))
                 (if (gx#stx-null? _tl40934145_)
                     (letrec ((_loop40944148_
                               (lambda (_hd40924152_ _body40984155_)
                                 (if (gx#stx-pair? _hd40924152_)
                                     (let ((_e40954158_
                                            (gx#syntax-e _hd40924152_)))
                                       (let ((_lp-hd40964162_
                                              (##car _e40954158_))
                                             (_lp-tl40974165_
                                              (##cdr _e40954158_)))
                                         (_loop40944148_
                                          _lp-tl40974165_
                                          (cons _lp-hd40964162_
                                                _body40984155_))))
                                     (let ((_body40994168_
                                            (reverse _body40984155_)))
                                       ((lambda (_L4172_
                                                 _L4174_
                                                 _L4175_
                                                 _L4176_)
                                          (cons (gx#datum->syntax '#f 'if)
                                                (cons _L4175_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'begin)
                          (begin
                            '#!void
                            (foldr (lambda (_g41974200_ _g41984203_)
                                     (cons _g41974200_ _g41984203_))
                                   '()
                                   _L4174_)))
                    (cons (cons _L4176_ _L4172_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _tl40874129_
                                        _body40994168_
                                        _hd40894136_
                                        _hd40834116_))))))
                       (_loop40944148_ _target40914142_ '()))
                     (_g40144105_ _g40154109_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g40144105_ _g40154109_))
                                               (_g40144105_ _g40154109_))))
                                       (_g40144105_ _g40154109_))))
                               (_g40144105_ _g40154109_))))
                       (_g40144105_ _g40154109_)))))
            (let ((_g40124262_
                   (lambda (_g40154210_)
                     (if (gx#stx-pair? _g40154210_)
                         (let ((_e40694213_ (gx#syntax-e _g40154210_)))
                           (let ((_hd40704217_ (##car _e40694213_))
                                 (_tl40714220_ (##cdr _e40694213_)))
                             (if (gx#stx-pair? _tl40714220_)
                                 (let ((_e40724223_
                                        (gx#syntax-e _tl40714220_)))
                                   (let ((_hd40734227_ (##car _e40724223_))
                                         (_tl40744230_ (##cdr _e40724223_)))
                                     (if (gx#stx-pair? _hd40734227_)
                                         (let ((_e40754233_
                                                (gx#syntax-e _hd40734227_)))
                                           (let ((_hd40764237_
                                                  (##car _e40754233_))
                                                 (_tl40774240_
                                                  (##cdr _e40754233_)))
                                             (if (gx#stx-null? _tl40774240_)
                                                 ((lambda (_L4243_
                                                           _L4245_
                                                           _L4246_)
                                                    (cons _L4246_
                                                          (cons (cons _L4245_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#datum->syntax '#f '=>)
                                    (cons (gx#datum->syntax '#f 'values) '())))
                        _L4243_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _tl40744230_
                                                  _hd40764237_
                                                  _hd40704217_)
                                                 (_g40134206_ _g40154210_))))
                                         (_g40134206_ _g40154210_))))
                                 (_g40134206_ _g40154210_))))
                         (_g40134206_ _g40154210_)))))
              (let ((_g40114344_
                     (lambda (_g40154266_)
                       (if (gx#stx-pair? _g40154266_)
                           (let ((_e40514269_ (gx#syntax-e _g40154266_)))
                             (let ((_hd40524273_ (##car _e40514269_))
                                   (_tl40534276_ (##cdr _e40514269_)))
                               (if (gx#stx-pair? _tl40534276_)
                                   (let ((_e40544279_
                                          (gx#syntax-e _tl40534276_)))
                                     (let ((_hd40554283_ (##car _e40544279_))
                                           (_tl40564286_ (##cdr _e40544279_)))
                                       (if (gx#stx-pair? _hd40554283_)
                                           (let ((_e40574289_
                                                  (gx#syntax-e _hd40554283_)))
                                             (let ((_hd40584293_
                                                    (##car _e40574289_))
                                                   (_tl40594296_
                                                    (##cdr _e40574289_)))
                                               (if (gx#stx-pair? _tl40594296_)
                                                   (let ((_e40604299_
                                                          (gx#syntax-e
                                                           _tl40594296_)))
                                                     (let ((_hd40614303_
                                                            (##car _e40604299_))
                                                           (_tl40624306_
                                                            (##cdr _e40604299_)))
                                                       (if (gx#identifier?
                                                            _hd40614303_)
                                                           (if (gx#free-identifier=?
                                                                |gerbil/core::<sugar>::<sugar:1>[1]#_g29401_|
                                                                _hd40614303_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl40624306_)
                           (let ((_e40634309_ (gx#syntax-e _tl40624306_)))
                             (let ((_hd40644313_ (##car _e40634309_))
                                   (_tl40654316_ (##cdr _e40634309_)))
                               (if (gx#stx-null? _tl40654316_)
                                   ((lambda (_L4319_ _L4321_ _L4322_ _L4323_)
                                      (cons (gx#datum->syntax '#f 'let)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         '$e)
                                                        (cons _L4322_ '()))
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'if)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '$e)
                            (cons (cons _L4321_
                                        (cons (gx#datum->syntax '#f '$e) '()))
                                  (cons (cons _L4323_ _L4319_) '()))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _tl40564286_
                                    _hd40644313_
                                    _hd40584293_
                                    _hd40524273_)
                                   (_g40124262_ _g40154266_))))
                           (_g40124262_ _g40154266_))
                       (_g40124262_ _g40154266_))
                   (_g40124262_ _g40154266_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g40124262_ _g40154266_))))
                                           (_g40124262_ _g40154266_))))
                                   (_g40124262_ _g40154266_))))
                           (_g40124262_ _g40154266_)))))
                (let ((_g40104385_
                       (lambda (_g40154348_)
                         (if (gx#stx-pair? _g40154348_)
                             (let ((_e40384351_ (gx#syntax-e _g40154348_)))
                               (let ((_hd40394355_ (##car _e40384351_))
                                     (_tl40404358_ (##cdr _e40384351_)))
                                 (if (gx#stx-pair? _tl40404358_)
                                     (let ((_e40414361_
                                            (gx#syntax-e _tl40404358_)))
                                       (let ((_hd40424365_ (##car _e40414361_))
                                             (_tl40434368_
                                              (##cdr _e40414361_)))
                                         (if (gx#stx-pair? _hd40424365_)
                                             (let ((_e40444371_
                                                    (gx#syntax-e
                                                     _hd40424365_)))
                                               (let ((_hd40454375_
                                                      (##car _e40444371_))
                                                     (_tl40464378_
                                                      (##cdr _e40444371_)))
                                                 (if (gx#identifier?
                                                      _hd40454375_)
                                                     (if (gx#free-identifier=?
                                                          |gerbil/core::<sugar>::<sugar:1>[1]#_g29402_|
                                                          _hd40454375_)
                                                         ((lambda ()
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'syntax-error)
                          (cons '"Bad syntax; misplaced else" '()))))
                 (_g40114344_ _g40154348_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g40114344_
                                                      _g40154348_))))
                                             (_g40114344_ _g40154348_))))
                                     (_g40114344_ _g40154348_))))
                             (_g40114344_ _g40154348_)))))
                  (let ((_g40094480_
                         (lambda (_g40154389_)
                           (if (gx#stx-pair? _g40154389_)
                               (let ((_e40204392_ (gx#syntax-e _g40154389_)))
                                 (let ((_hd40214396_ (##car _e40204392_))
                                       (_tl40224399_ (##cdr _e40204392_)))
                                   (if (gx#stx-pair? _tl40224399_)
                                       (let ((_e40234402_
                                              (gx#syntax-e _tl40224399_)))
                                         (let ((_hd40244406_
                                                (##car _e40234402_))
                                               (_tl40254409_
                                                (##cdr _e40234402_)))
                                           (if (gx#stx-pair? _hd40244406_)
                                               (let ((_e40264412_
                                                      (gx#syntax-e
                                                       _hd40244406_)))
                                                 (let ((_hd40274416_
                                                        (##car _e40264412_))
                                                       (_tl40284419_
                                                        (##cdr _e40264412_)))
                                                   (if (gx#identifier?
                                                        _hd40274416_)
                                                       (if (gx#free-identifier=?
                                                            |gerbil/core::<sugar>::<sugar:1>[1]#_g29403_|
                                                            _hd40274416_)
                                                           (if (gx#stx-pair/null?
                                                                _tl40284419_)
                                                               (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _tl40284419_)
                                 '0)
                           (let ((_g29404_
                                  (gx#syntax-split-splice _tl40284419_ '0)))
                             (begin
                               (let ((_g29405_ (values-count _g29404_)))
                                 (if (not (fx= _g29405_ 2))
                                     (error "Context expects 2 values"
                                            _g29405_)))
                               (let ((_target40294422_ (values-ref _g29404_ 0))
                                     (_tl40314425_ (values-ref _g29404_ 1)))
                                 (if (gx#stx-null? _tl40314425_)
                                     (letrec ((_loop40324428_
                                               (lambda (_hd40304432_
                                                        _body40364435_)
                                                 (if (gx#stx-pair?
                                                      _hd40304432_)
                                                     (let ((_e40334438_
                                                            (gx#syntax-e
                                                             _hd40304432_)))
                                                       (let ((_lp-hd40344442_
                                                              (##car _e40334438_))
                                                             (_lp-tl40354445_
                                                              (##cdr _e40334438_)))
                                                         (_loop40324428_
                                                          _lp-tl40354445_
                                                          (cons _lp-hd40344442_
                                                                _body40364435_))))
                                                     (let ((_body40374448_
                                                            (reverse _body40364435_)))
                                                       (if (gx#stx-null?
                                                            _tl40254409_)
                                                           ((lambda (_L4452_)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '%#expression)
                            (cons (cons (gx#datum->syntax '#f 'begin)
                                        (begin
                                          '#!void
                                          (foldr (lambda (_g44714474_
                                                          _g44724477_)
                                                   (cons _g44714474_
                                                         _g44724477_))
                                                 '()
                                                 _L4452_)))
                                  '())))
                    _body40374448_)
                   (_g40104385_ _g40154389_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_loop40324428_ _target40294422_ '()))
                                     (_g40104385_ _g40154389_)))))
                           (_g40104385_ _g40154389_))
                       (_g40104385_ _g40154389_))
                   (_g40104385_ _g40154389_))
               (_g40104385_ _g40154389_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g40104385_ _g40154389_))))
                                       (_g40104385_ _g40154389_))))
                               (_g40104385_ _g40154389_)))))
                    (let ((_g40084501_
                           (lambda (_g40154484_)
                             (if (gx#stx-pair? _g40154484_)
                                 (let ((_e40164487_ (gx#syntax-e _g40154484_)))
                                   (let ((_hd40174491_ (##car _e40164487_))
                                         (_tl40184494_ (##cdr _e40164487_)))
                                     (if (gx#stx-null? _tl40184494_)
                                         ((lambda () '#!void))
                                         (_g40094480_ _g40154484_))))
                                 (_g40094480_ _g40154484_)))))
                      (_g40084501_ _$stx4005_))))))))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#when|
      (lambda (_$stx4507_)
        (let ((_g45114535_
               (lambda (_g45124531_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g45124531_))))
          (let ((_g45104620_
                 (lambda (_g45124539_)
                   (if (gx#stx-pair? _g45124539_)
                       (let ((_e45154542_ (gx#syntax-e _g45124539_)))
                         (let ((_hd45164546_ (##car _e45154542_))
                               (_tl45174549_ (##cdr _e45154542_)))
                           (if (gx#stx-pair? _tl45174549_)
                               (let ((_e45184552_ (gx#syntax-e _tl45174549_)))
                                 (let ((_hd45194556_ (##car _e45184552_))
                                       (_tl45204559_ (##cdr _e45184552_)))
                                   (if (gx#stx-pair/null? _tl45204559_)
                                       (if (fx>= (gx#stx-length _tl45204559_)
                                                 '0)
                                           (let ((_g29406_
                                                  (gx#syntax-split-splice
                                                   _tl45204559_
                                                   '0)))
                                             (begin
                                               (let ((_g29407_
                                                      (values-count _g29406_)))
                                                 (if (not (fx= _g29407_ 2))
                                                     (error "Context expects 2 values"
                                                            _g29407_)))
                                               (let ((_target45214562_
                                                      (values-ref _g29406_ 0))
                                                     (_tl45234565_
                                                      (values-ref _g29406_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl45234565_)
                                                     (letrec ((_loop45244568_
                                                               (lambda (_hd45224572_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr45284575_)
                         (if (gx#stx-pair? _hd45224572_)
                             (let ((_e45254578_ (gx#syntax-e _hd45224572_)))
                               (let ((_lp-hd45264582_ (##car _e45254578_))
                                     (_lp-tl45274585_ (##cdr _e45254578_)))
                                 (_loop45244568_
                                  _lp-tl45274585_
                                  (cons _lp-hd45264582_ _expr45284575_))))
                             (let ((_expr45294588_ (reverse _expr45284575_)))
                               ((lambda (_L4592_ _L4594_)
                                  (cons (gx#datum->syntax '#f 'if)
                                        (cons _L4594_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'begin)
                                                          (begin
                                                            '#!void
                                                            (foldr (lambda (_g46114614_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g46124617_)
                             (cons _g46114614_ _g46124617_))
                           '()
                           _L4592_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons '#!void '())))))
                                _expr45294588_
                                _hd45194556_))))))
               (_loop45244568_ _target45214562_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g45114535_
                                                      _g45124539_)))))
                                           (_g45114535_ _g45124539_))
                                       (_g45114535_ _g45124539_))))
                               (_g45114535_ _g45124539_))))
                       (_g45114535_ _g45124539_)))))
            (_g45104620_ _$stx4507_)))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#unless|
      (lambda (_$stx4625_)
        (let ((_g46294653_
               (lambda (_g46304649_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g46304649_))))
          (let ((_g46284738_
                 (lambda (_g46304657_)
                   (if (gx#stx-pair? _g46304657_)
                       (let ((_e46334660_ (gx#syntax-e _g46304657_)))
                         (let ((_hd46344664_ (##car _e46334660_))
                               (_tl46354667_ (##cdr _e46334660_)))
                           (if (gx#stx-pair? _tl46354667_)
                               (let ((_e46364670_ (gx#syntax-e _tl46354667_)))
                                 (let ((_hd46374674_ (##car _e46364670_))
                                       (_tl46384677_ (##cdr _e46364670_)))
                                   (if (gx#stx-pair/null? _tl46384677_)
                                       (if (fx>= (gx#stx-length _tl46384677_)
                                                 '0)
                                           (let ((_g29408_
                                                  (gx#syntax-split-splice
                                                   _tl46384677_
                                                   '0)))
                                             (begin
                                               (let ((_g29409_
                                                      (values-count _g29408_)))
                                                 (if (not (fx= _g29409_ 2))
                                                     (error "Context expects 2 values"
                                                            _g29409_)))
                                               (let ((_target46394680_
                                                      (values-ref _g29408_ 0))
                                                     (_tl46414683_
                                                      (values-ref _g29408_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl46414683_)
                                                     (letrec ((_loop46424686_
                                                               (lambda (_hd46404690_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr46464693_)
                         (if (gx#stx-pair? _hd46404690_)
                             (let ((_e46434696_ (gx#syntax-e _hd46404690_)))
                               (let ((_lp-hd46444700_ (##car _e46434696_))
                                     (_lp-tl46454703_ (##cdr _e46434696_)))
                                 (_loop46424686_
                                  _lp-tl46454703_
                                  (cons _lp-hd46444700_ _expr46464693_))))
                             (let ((_expr46474706_ (reverse _expr46464693_)))
                               ((lambda (_L4710_ _L4712_)
                                  (cons (gx#datum->syntax '#f 'if)
                                        (cons _L4712_
                                              (cons '#!void
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'begin)
                        (begin
                          '#!void
                          (foldr (lambda (_g47294732_ _g47304735_)
                                   (cons _g47294732_ _g47304735_))
                                 '()
                                 _L4710_)))
                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _expr46474706_
                                _hd46374674_))))))
               (_loop46424686_ _target46394680_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g46294653_
                                                      _g46304657_)))))
                                           (_g46294653_ _g46304657_))
                                       (_g46294653_ _g46304657_))))
                               (_g46294653_ _g46304657_))))
                       (_g46294653_ _g46304657_)))))
            (_g46284738_ _$stx4625_)))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#syntax-error|
      (lambda (_stx4743_)
        (let ((_g47464770_
               (lambda (_g47474766_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g47474766_))))
          (let ((_g47454855_
                 (lambda (_g47474774_)
                   (if (gx#stx-pair? _g47474774_)
                       (let ((_e47504777_ (gx#syntax-e _g47474774_)))
                         (let ((_hd47514781_ (##car _e47504777_))
                               (_tl47524784_ (##cdr _e47504777_)))
                           (if (gx#stx-pair? _tl47524784_)
                               (let ((_e47534787_ (gx#syntax-e _tl47524784_)))
                                 (let ((_hd47544791_ (##car _e47534787_))
                                       (_tl47554794_ (##cdr _e47534787_)))
                                   (if (gx#stx-pair/null? _tl47554794_)
                                       (if (fx>= (gx#stx-length _tl47554794_)
                                                 '0)
                                           (let ((_g29410_
                                                  (gx#syntax-split-splice
                                                   _tl47554794_
                                                   '0)))
                                             (begin
                                               (let ((_g29411_
                                                      (values-count _g29410_)))
                                                 (if (not (fx= _g29411_ 2))
                                                     (error "Context expects 2 values"
                                                            _g29411_)))
                                               (let ((_target47564797_
                                                      (values-ref _g29410_ 0))
                                                     (_tl47584800_
                                                      (values-ref _g29410_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl47584800_)
                                                     (letrec ((_loop47594803_
                                                               (lambda (_hd47574807_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _detail47634810_)
                         (if (gx#stx-pair? _hd47574807_)
                             (let ((_e47604813_ (gx#syntax-e _hd47574807_)))
                               (let ((_lp-hd47614817_ (##car _e47604813_))
                                     (_lp-tl47624820_ (##cdr _e47604813_)))
                                 (_loop47594803_
                                  _lp-tl47624820_
                                  (cons _lp-hd47614817_ _detail47634810_))))
                             (let ((_detail47644823_
                                    (reverse _detail47634810_)))
                               ((lambda (_L4827_ _L4829_)
                                  (if (gx#stx-string? _L4829_)
                                      (apply gx#raise-syntax-error
                                             '#f
                                             (gx#stx-e _L4829_)
                                             _stx4743_
                                             (gx#syntax->list
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g48464849_
                                                                _g48474852_)
                                                         (cons _g48464849_
                                                               _g48474852_))
                                                       '()
                                                       _L4827_))))
                                      (_g47464770_ _g47474774_)))
                                _detail47644823_
                                _hd47544791_))))))
               (_loop47594803_ _target47564797_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g47464770_
                                                      _g47474774_)))))
                                           (_g47464770_ _g47474774_))
                                       (_g47464770_ _g47474774_))))
                               (_g47464770_ _g47474774_))))
                       (_g47464770_ _g47474774_)))))
            (_g47454855_ _stx4743_)))))))
