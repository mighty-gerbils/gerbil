(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<sugar>::<sugar:1>[1]#_g29402_|
    (gx#core-quote-syntax 'values))
  (define |gerbil/core::<sugar>::<sugar:1>[1]#_g29403_|
    (gx#core-quote-syntax 'values))
  (define |gerbil/core::<sugar>::<sugar:1>[1]#_g29406_|
    (gx#core-quote-syntax '=>))
  (define |gerbil/core::<sugar>::<sugar:1>[1]#_g29407_|
    (gx#core-quote-syntax 'else))
  (define |gerbil/core::<sugar>::<sugar:1>[1]#_g29408_|
    (gx#core-quote-syntax 'else))
  (begin
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#defrules|
      (lambda (_$stx1627_)
        (let ((_g16311659_
               (lambda (_g16321655_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g16321655_))))
          (let ((_g16301760_
                 (lambda (_g16321663_)
                   (if (gx#stx-pair? _g16321663_)
                       (let ((_e16361666_ (gx#syntax-e _g16321663_)))
                         (let ((_hd16371670_ (##car _e16361666_))
                               (_tl16381673_ (##cdr _e16361666_)))
                           (if (gx#stx-pair? _tl16381673_)
                               (let ((_e16391676_ (gx#syntax-e _tl16381673_)))
                                 (let ((_hd16401680_ (##car _e16391676_))
                                       (_tl16411683_ (##cdr _e16391676_)))
                                   (if (gx#stx-pair? _tl16411683_)
                                       (let ((_e16421686_
                                              (gx#syntax-e _tl16411683_)))
                                         (let ((_hd16431690_
                                                (##car _e16421686_))
                                               (_tl16441693_
                                                (##cdr _e16421686_)))
                                           (if (gx#stx-pair/null? _tl16441693_)
                                               (if (fx>= (gx#stx-length
                                                          _tl16441693_)
                                                         '0)
                                                   (let ((_g29374_
                                                          (gx#syntax-split-splice
                                                           _tl16441693_
                                                           '0)))
                                                     (begin
                                                       (let ((_g29375_
                                                              (values-count
                                                               _g29374_)))
                                                         (if (not (fx= _g29375_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g29375_)))
               (let ((_target16451696_ (values-ref _g29374_ 0))
                     (_tl16471699_ (values-ref _g29374_ 1)))
                 (if (gx#stx-null? _tl16471699_)
                     (letrec ((_loop16481702_
                               (lambda (_hd16461706_ _clauses16521709_)
                                 (if (gx#stx-pair? _hd16461706_)
                                     (let ((_e16491712_
                                            (gx#syntax-e _hd16461706_)))
                                       (let ((_lp-hd16501716_
                                              (##car _e16491712_))
                                             (_lp-tl16511719_
                                              (##cdr _e16491712_)))
                                         (_loop16481702_
                                          _lp-tl16511719_
                                          (cons _lp-hd16501716_
                                                _clauses16521709_))))
                                     (let ((_clauses16531722_
                                            (reverse _clauses16521709_)))
                                       ((lambda (_L1726_ _L1728_ _L1729_)
                                          (if (gx#identifier? _L1729_)
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'define-syntax)
                                                    (cons _L1729_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'syntax-rules)
                              (cons _L1728_
                                    (begin
                                      '#!void
                                      (foldr (lambda (_g17511754_ _g17521757_)
                                               (cons _g17511754_ _g17521757_))
                                             '()
                                             _L1726_))))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g16311659_ _g16321663_)))
                                        _clauses16531722_
                                        _hd16431690_
                                        _hd16401680_))))))
                       (_loop16481702_ _target16451696_ '()))
                     (_g16311659_ _g16321663_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g16311659_ _g16321663_))
                                               (_g16311659_ _g16321663_))))
                                       (_g16311659_ _g16321663_))))
                               (_g16311659_ _g16321663_))))
                       (_g16311659_ _g16321663_)))))
            (_g16301760_ _$stx1627_)))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#defsyntax%|
      (lambda (_$stx1765_)
        (let ((_g17701809_
               (lambda (_g17711805_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g17711805_))))
          (let ((_g17691864_
                 (lambda (_g17711813_)
                   (if (gx#stx-pair? _g17711813_)
                       (let ((_e17951816_ (gx#syntax-e _g17711813_)))
                         (let ((_hd17961820_ (##car _e17951816_))
                               (_tl17971823_ (##cdr _e17951816_)))
                           (if (gx#stx-pair? _tl17971823_)
                               (let ((_e17981826_ (gx#syntax-e _tl17971823_)))
                                 (let ((_hd17991830_ (##car _e17981826_))
                                       (_tl18001833_ (##cdr _e17981826_)))
                                   (if (gx#stx-pair? _tl18001833_)
                                       (let ((_e18011836_
                                              (gx#syntax-e _tl18001833_)))
                                         (let ((_hd18021840_
                                                (##car _e18011836_))
                                               (_tl18031843_
                                                (##cdr _e18011836_)))
                                           (if (gx#stx-null? _tl18031843_)
                                               ((lambda (_L1846_ _L1848_)
                                                  (if (gx#identifier? _L1848_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'define-syntax)
                                                            (cons _L1848_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L1846_ '())))
              (_g17701809_ _g17711813_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd18021840_
                                                _hd17991830_)
                                               (_g17701809_ _g17711813_))))
                                       (_g17701809_ _g17711813_))))
                               (_g17701809_ _g17711813_))))
                       (_g17701809_ _g17711813_)))))
            (let ((_g17681962_
                   (lambda (_g17711868_)
                     (if (gx#stx-pair? _g17711868_)
                         (let ((_e17751871_ (gx#syntax-e _g17711868_)))
                           (let ((_hd17761875_ (##car _e17751871_))
                                 (_tl17771878_ (##cdr _e17751871_)))
                             (if (gx#stx-pair? _tl17771878_)
                                 (let ((_e17781881_
                                        (gx#syntax-e _tl17771878_)))
                                   (let ((_hd17791885_ (##car _e17781881_))
                                         (_tl17801888_ (##cdr _e17781881_)))
                                     (if (gx#stx-pair? _hd17791885_)
                                         (let ((_e17811891_
                                                (gx#syntax-e _hd17791885_)))
                                           (let ((_hd17821895_
                                                  (##car _e17811891_))
                                                 (_tl17831898_
                                                  (##cdr _e17811891_)))
                                             (if (gx#stx-pair/null?
                                                  _tl17801888_)
                                                 (if (fx>= (gx#stx-length
                                                            _tl17801888_)
                                                           '0)
                                                     (let ((_g29376_
                                                            (gx#syntax-split-splice
                                                             _tl17801888_
                                                             '0)))
                                                       (begin
                                                         (let ((_g29377_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g29376_)))
                   (if (not (fx= _g29377_ 2))
                       (error "Context expects 2 values" _g29377_)))
                 (let ((_target17841901_ (values-ref _g29376_ 0))
                       (_tl17861904_ (values-ref _g29376_ 1)))
                   (if (gx#stx-null? _tl17861904_)
                       (letrec ((_loop17871907_
                                 (lambda (_hd17851911_ _body17911914_)
                                   (if (gx#stx-pair? _hd17851911_)
                                       (let ((_e17881917_
                                              (gx#syntax-e _hd17851911_)))
                                         (let ((_lp-hd17891921_
                                                (##car _e17881917_))
                                               (_lp-tl17901924_
                                                (##cdr _e17881917_)))
                                           (_loop17871907_
                                            _lp-tl17901924_
                                            (cons _lp-hd17891921_
                                                  _body17911914_))))
                                       (let ((_body17921927_
                                              (reverse _body17911914_)))
                                         ((lambda (_L1931_ _L1933_ _L1934_)
                                            (if (gx#identifier? _L1934_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'define-syntax)
                                                      (cons _L1934_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'lambda%)
                                (cons _L1933_
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g19531956_
                                                        _g19541959_)
                                                 (cons _g19531956_
                                                       _g19541959_))
                                               '()
                                               _L1931_))))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g17691864_ _g17711868_)))
                                          _body17921927_
                                          _tl17831898_
                                          _hd17821895_))))))
                         (_loop17871907_ _target17841901_ '()))
                       (_g17691864_ _g17711868_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g17691864_ _g17711868_))
                                                 (_g17691864_ _g17711868_))))
                                         (_g17691864_ _g17711868_))))
                                 (_g17691864_ _g17711868_))))
                         (_g17691864_ _g17711868_)))))
              (_g17681962_ _$stx1765_))))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#defalias|
      (lambda (_$stx1967_)
        (let ((_g19711989_
               (lambda (_g19721985_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g19721985_))))
          (let ((_g19702044_
                 (lambda (_g19721993_)
                   (if (gx#stx-pair? _g19721993_)
                       (let ((_e19751996_ (gx#syntax-e _g19721993_)))
                         (let ((_hd19762000_ (##car _e19751996_))
                               (_tl19772003_ (##cdr _e19751996_)))
                           (if (gx#stx-pair? _tl19772003_)
                               (let ((_e19782006_ (gx#syntax-e _tl19772003_)))
                                 (let ((_hd19792010_ (##car _e19782006_))
                                       (_tl19802013_ (##cdr _e19782006_)))
                                   (if (gx#stx-pair? _tl19802013_)
                                       (let ((_e19812016_
                                              (gx#syntax-e _tl19802013_)))
                                         (let ((_hd19822020_
                                                (##car _e19812016_))
                                               (_tl19832023_
                                                (##cdr _e19812016_)))
                                           (if (gx#stx-null? _tl19832023_)
                                               ((lambda (_L2026_ _L2028_)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'define-alias)
                                                        (cons _L2028_
                                                              (cons _L2026_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd19822020_
                                                _hd19792010_)
                                               (_g19711989_ _g19721993_))))
                                       (_g19711989_ _g19721993_))))
                               (_g19711989_ _g19721993_))))
                       (_g19711989_ _g19721993_)))))
            (_g19702044_ _$stx1967_)))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#define|
      (lambda (_$stx2048_)
        (let ((_g20532092_
               (lambda (_g20542088_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g20542088_))))
          (let ((_g20522147_
                 (lambda (_g20542096_)
                   (if (gx#stx-pair? _g20542096_)
                       (let ((_e20782099_ (gx#syntax-e _g20542096_)))
                         (let ((_hd20792103_ (##car _e20782099_))
                               (_tl20802106_ (##cdr _e20782099_)))
                           (if (gx#stx-pair? _tl20802106_)
                               (let ((_e20812109_ (gx#syntax-e _tl20802106_)))
                                 (let ((_hd20822113_ (##car _e20812109_))
                                       (_tl20832116_ (##cdr _e20812109_)))
                                   (if (gx#stx-pair? _tl20832116_)
                                       (let ((_e20842119_
                                              (gx#syntax-e _tl20832116_)))
                                         (let ((_hd20852123_
                                                (##car _e20842119_))
                                               (_tl20862126_
                                                (##cdr _e20842119_)))
                                           (if (gx#stx-null? _tl20862126_)
                                               ((lambda (_L2129_ _L2131_)
                                                  (if (gx#identifier? _L2131_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'define-values)
                                                            (cons (cons _L2131_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons _L2129_ '())))
              (_g20532092_ _g20542096_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd20852123_
                                                _hd20822113_)
                                               (_g20532092_ _g20542096_))))
                                       (_g20532092_ _g20542096_))))
                               (_g20532092_ _g20542096_))))
                       (_g20532092_ _g20542096_)))))
            (let ((_g20512245_
                   (lambda (_g20542151_)
                     (if (gx#stx-pair? _g20542151_)
                         (let ((_e20582154_ (gx#syntax-e _g20542151_)))
                           (let ((_hd20592158_ (##car _e20582154_))
                                 (_tl20602161_ (##cdr _e20582154_)))
                             (if (gx#stx-pair? _tl20602161_)
                                 (let ((_e20612164_
                                        (gx#syntax-e _tl20602161_)))
                                   (let ((_hd20622168_ (##car _e20612164_))
                                         (_tl20632171_ (##cdr _e20612164_)))
                                     (if (gx#stx-pair? _hd20622168_)
                                         (let ((_e20642174_
                                                (gx#syntax-e _hd20622168_)))
                                           (let ((_hd20652178_
                                                  (##car _e20642174_))
                                                 (_tl20662181_
                                                  (##cdr _e20642174_)))
                                             (if (gx#stx-pair/null?
                                                  _tl20632171_)
                                                 (if (fx>= (gx#stx-length
                                                            _tl20632171_)
                                                           '0)
                                                     (let ((_g29378_
                                                            (gx#syntax-split-splice
                                                             _tl20632171_
                                                             '0)))
                                                       (begin
                                                         (let ((_g29379_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g29378_)))
                   (if (not (fx= _g29379_ 2))
                       (error "Context expects 2 values" _g29379_)))
                 (let ((_target20672184_ (values-ref _g29378_ 0))
                       (_tl20692187_ (values-ref _g29378_ 1)))
                   (if (gx#stx-null? _tl20692187_)
                       (letrec ((_loop20702190_
                                 (lambda (_hd20682194_ _body20742197_)
                                   (if (gx#stx-pair? _hd20682194_)
                                       (let ((_e20712200_
                                              (gx#syntax-e _hd20682194_)))
                                         (let ((_lp-hd20722204_
                                                (##car _e20712200_))
                                               (_lp-tl20732207_
                                                (##cdr _e20712200_)))
                                           (_loop20702190_
                                            _lp-tl20732207_
                                            (cons _lp-hd20722204_
                                                  _body20742197_))))
                                       (let ((_body20752210_
                                              (reverse _body20742197_)))
                                         ((lambda (_L2214_ _L2216_ _L2217_)
                                            (if (gx#identifier? _L2217_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'define-values)
                                                      (cons (cons _L2217_ '())
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'lambda%)
                                (cons _L2216_
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g22362239_
                                                        _g22372242_)
                                                 (cons _g22362239_
                                                       _g22372242_))
                                               '()
                                               _L2214_))))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g20522147_ _g20542151_)))
                                          _body20752210_
                                          _tl20662181_
                                          _hd20652178_))))))
                         (_loop20702190_ _target20672184_ '()))
                       (_g20522147_ _g20542151_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g20522147_ _g20542151_))
                                                 (_g20522147_ _g20542151_))))
                                         (_g20522147_ _g20542151_))))
                                 (_g20522147_ _g20542151_))))
                         (_g20522147_ _g20542151_)))))
              (_g20512245_ _$stx2048_))))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#let*-values|
      (lambda (_$stx2250_)
        (let ((_g22552300_
               (lambda (_g22562296_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g22562296_))))
          (let ((_g22542401_
                 (lambda (_g22562304_)
                   (if (gx#stx-pair? _g22562304_)
                       (let ((_e22772307_ (gx#syntax-e _g22562304_)))
                         (let ((_hd22782311_ (##car _e22772307_))
                               (_tl22792314_ (##cdr _e22772307_)))
                           (if (gx#stx-pair? _tl22792314_)
                               (let ((_e22802317_ (gx#syntax-e _tl22792314_)))
                                 (let ((_hd22812321_ (##car _e22802317_))
                                       (_tl22822324_ (##cdr _e22802317_)))
                                   (if (gx#stx-pair? _hd22812321_)
                                       (let ((_e22832327_
                                              (gx#syntax-e _hd22812321_)))
                                         (let ((_hd22842331_
                                                (##car _e22832327_))
                                               (_tl22852334_
                                                (##cdr _e22832327_)))
                                           (if (gx#stx-pair/null? _tl22822324_)
                                               (if (fx>= (gx#stx-length
                                                          _tl22822324_)
                                                         '0)
                                                   (let ((_g29380_
                                                          (gx#syntax-split-splice
                                                           _tl22822324_
                                                           '0)))
                                                     (begin
                                                       (let ((_g29381_
                                                              (values-count
                                                               _g29380_)))
                                                         (if (not (fx= _g29381_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g29381_)))
               (let ((_target22862337_ (values-ref _g29380_ 0))
                     (_tl22882340_ (values-ref _g29380_ 1)))
                 (if (gx#stx-null? _tl22882340_)
                     (letrec ((_loop22892343_
                               (lambda (_hd22872347_ _body22932350_)
                                 (if (gx#stx-pair? _hd22872347_)
                                     (let ((_e22902353_
                                            (gx#syntax-e _hd22872347_)))
                                       (let ((_lp-hd22912357_
                                              (##car _e22902353_))
                                             (_lp-tl22922360_
                                              (##cdr _e22902353_)))
                                         (_loop22892343_
                                          _lp-tl22922360_
                                          (cons _lp-hd22912357_
                                                _body22932350_))))
                                     (let ((_body22942363_
                                            (reverse _body22932350_)))
                                       ((lambda (_L2367_
                                                 _L2369_
                                                 _L2370_
                                                 _L2371_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'let-values)
                                                (cons (cons _L2370_ '())
                                                      (cons (cons _L2371_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L2369_
                                (begin
                                  '#!void
                                  (foldr (lambda (_g23922395_ _g23932398_)
                                           (cons _g23922395_ _g23932398_))
                                         '()
                                         _L2367_))))
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _body22942363_
                                        _tl22852334_
                                        _hd22842331_
                                        _hd22782311_))))))
                       (_loop22892343_ _target22862337_ '()))
                     (_g22552300_ _g22562304_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g22552300_ _g22562304_))
                                               (_g22552300_ _g22562304_))))
                                       (_g22552300_ _g22562304_))))
                               (_g22552300_ _g22562304_))))
                       (_g22552300_ _g22562304_)))))
            (let ((_g22532483_
                   (lambda (_g22562405_)
                     (if (gx#stx-pair? _g22562405_)
                         (let ((_e22582408_ (gx#syntax-e _g22562405_)))
                           (let ((_hd22592412_ (##car _e22582408_))
                                 (_tl22602415_ (##cdr _e22582408_)))
                             (if (gx#stx-pair? _tl22602415_)
                                 (let ((_e22612418_
                                        (gx#syntax-e _tl22602415_)))
                                   (let ((_hd22622422_ (##car _e22612418_))
                                         (_tl22632425_ (##cdr _e22612418_)))
                                     (if (gx#stx-null? _hd22622422_)
                                         (if (gx#stx-pair/null? _tl22632425_)
                                             (if (fx>= (gx#stx-length
                                                        _tl22632425_)
                                                       '0)
                                                 (let ((_g29382_
                                                        (gx#syntax-split-splice
                                                         _tl22632425_
                                                         '0)))
                                                   (begin
                                                     (let ((_g29383_
                                                            (values-count
                                                             _g29382_)))
                                                       (if (not (fx= _g29383_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g29383_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target22642428_
                                                            (values-ref
                                                             _g29382_
                                                             0))
                                                           (_tl22662431_
                                                            (values-ref
                                                             _g29382_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl22662431_)
                                                           (letrec ((_loop22672434_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd22652438_ _body22712441_)
                               (if (gx#stx-pair? _hd22652438_)
                                   (let ((_e22682444_
                                          (gx#syntax-e _hd22652438_)))
                                     (let ((_lp-hd22692448_
                                            (##car _e22682444_))
                                           (_lp-tl22702451_
                                            (##cdr _e22682444_)))
                                       (_loop22672434_
                                        _lp-tl22702451_
                                        (cons _lp-hd22692448_
                                              _body22712441_))))
                                   (let ((_body22722454_
                                          (reverse _body22712441_)))
                                     ((lambda (_L2458_)
                                        (cons (gx#datum->syntax
                                               '#f
                                               'let-values)
                                              (cons '()
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g24742477_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g24752480_)
                       (cons _g24742477_ _g24752480_))
                     '()
                     _L2458_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _body22722454_))))))
                     (_loop22672434_ _target22642428_ '()))
                   (_g22542401_ _g22562405_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g22542401_ _g22562405_))
                                             (_g22542401_ _g22562405_))
                                         (_g22542401_ _g22562405_))))
                                 (_g22542401_ _g22562405_))))
                         (_g22542401_ _g22562405_)))))
              (_g22532483_ _$stx2250_))))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#let|
      (lambda (_$stx2489_)
        (let ((_g24942558_
               (lambda (_g24952554_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g24952554_))))
          (let ((_g24932643_
                 (lambda (_g24952562_)
                   (if (gx#stx-pair? _g24952562_)
                       (let ((_e25382565_ (gx#syntax-e _g24952562_)))
                         (let ((_hd25392569_ (##car _e25382565_))
                               (_tl25402572_ (##cdr _e25382565_)))
                           (if (gx#stx-pair? _tl25402572_)
                               (let ((_e25412575_ (gx#syntax-e _tl25402572_)))
                                 (let ((_hd25422579_ (##car _e25412575_))
                                       (_tl25432582_ (##cdr _e25412575_)))
                                   (if (gx#stx-pair/null? _tl25432582_)
                                       (if (fx>= (gx#stx-length _tl25432582_)
                                                 '0)
                                           (let ((_g29384_
                                                  (gx#syntax-split-splice
                                                   _tl25432582_
                                                   '0)))
                                             (begin
                                               (let ((_g29385_
                                                      (values-count _g29384_)))
                                                 (if (not (fx= _g29385_ 2))
                                                     (error "Context expects 2 values"
                                                            _g29385_)))
                                               (let ((_target25442585_
                                                      (values-ref _g29384_ 0))
                                                     (_tl25462588_
                                                      (values-ref _g29384_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl25462588_)
                                                     (letrec ((_loop25472591_
                                                               (lambda (_hd25452595_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _body25512598_)
                         (if (gx#stx-pair? _hd25452595_)
                             (let ((_e25482601_ (gx#syntax-e _hd25452595_)))
                               (let ((_lp-hd25492605_ (##car _e25482601_))
                                     (_lp-tl25502608_ (##cdr _e25482601_)))
                                 (_loop25472591_
                                  _lp-tl25502608_
                                  (cons _lp-hd25492605_ _body25512598_))))
                             (let ((_body25522611_ (reverse _body25512598_)))
                               ((lambda (_L2615_ _L2617_)
                                  (cons (gx#datum->syntax '#f '~let)
                                        (cons (gx#datum->syntax
                                               '#f
                                               'let-values)
                                              (cons _L2617_
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g26342637_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g26352640_)
                       (cons _g26342637_ _g26352640_))
                     '()
                     _L2615_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _body25522611_
                                _hd25422579_))))))
               (_loop25472591_ _target25442585_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g24942558_
                                                      _g24952562_)))))
                                           (_g24942558_ _g24952562_))
                                       (_g24942558_ _g24952562_))))
                               (_g24942558_ _g24952562_))))
                       (_g24942558_ _g24952562_)))))
            (let ((_g24922819_
                   (lambda (_g24952647_)
                     (if (gx#stx-pair? _g24952647_)
                         (let ((_e25012650_ (gx#syntax-e _g24952647_)))
                           (let ((_hd25022654_ (##car _e25012650_))
                                 (_tl25032657_ (##cdr _e25012650_)))
                             (if (gx#stx-pair? _tl25032657_)
                                 (let ((_e25042660_
                                        (gx#syntax-e _tl25032657_)))
                                   (let ((_hd25052664_ (##car _e25042660_))
                                         (_tl25062667_ (##cdr _e25042660_)))
                                     (if (gx#stx-pair? _tl25062667_)
                                         (let ((_e25072670_
                                                (gx#syntax-e _tl25062667_)))
                                           (let ((_hd25082674_
                                                  (##car _e25072670_))
                                                 (_tl25092677_
                                                  (##cdr _e25072670_)))
                                             (if (gx#stx-pair/null?
                                                  _hd25082674_)
                                                 (if (fx>= (gx#stx-length
                                                            _hd25082674_)
                                                           '0)
                                                     (let ((_g29386_
                                                            (gx#syntax-split-splice
                                                             _hd25082674_
                                                             '0)))
                                                       (begin
                                                         (let ((_g29387_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g29386_)))
                   (if (not (fx= _g29387_ 2))
                       (error "Context expects 2 values" _g29387_)))
                 (let ((_target25102680_ (values-ref _g29386_ 0))
                       (_tl25122683_ (values-ref _g29386_ 1)))
                   (letrec ((_loop25132686_
                             (lambda (_hd25112690_ _arg25172693_ _var25182695_)
                               (if (gx#stx-pair? _hd25112690_)
                                   (let ((_e25142698_
                                          (gx#syntax-e _hd25112690_)))
                                     (let ((_lp-hd25152702_
                                            (##car _e25142698_))
                                           (_lp-tl25162705_
                                            (##cdr _e25142698_)))
                                       (if (gx#stx-pair? _lp-hd25152702_)
                                           (let ((_e25212708_
                                                  (gx#syntax-e
                                                   _lp-hd25152702_)))
                                             (let ((_hd25222712_
                                                    (##car _e25212708_))
                                                   (_tl25232715_
                                                    (##cdr _e25212708_)))
                                               (if (gx#stx-pair? _tl25232715_)
                                                   (let ((_e25242718_
                                                          (gx#syntax-e
                                                           _tl25232715_)))
                                                     (let ((_hd25252722_
                                                            (##car _e25242718_))
                                                           (_tl25262725_
                                                            (##cdr _e25242718_)))
                                                       (if (gx#stx-null?
                                                            _tl25262725_)
                                                           (_loop25132686_
                                                            _lp-tl25162705_
                                                            (cons _hd25252722_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _arg25172693_)
                    (cons _hd25222712_ _var25182695_))
                   (_g24932643_ _g24952647_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g24932643_ _g24952647_))))
                                           (_g24932643_ _g24952647_))))
                                   (let ((_arg25192728_
                                          (reverse _arg25172693_))
                                         (_var25202731_
                                          (reverse _var25182695_)))
                                     (if (gx#stx-pair/null? _tl25092677_)
                                         (if (fx>= (gx#stx-length _tl25092677_)
                                                   '0)
                                             (let ((_g29388_
                                                    (gx#syntax-split-splice
                                                     _tl25092677_
                                                     '0)))
                                               (begin
                                                 (let ((_g29389_
                                                        (values-count
                                                         _g29388_)))
                                                   (if (not (fx= _g29389_ 2))
                                                       (error "Context expects 2 values"
                                                              _g29389_)))
                                                 (let ((_target25272734_
                                                        (values-ref
                                                         _g29388_
                                                         0))
                                                       (_tl25292737_
                                                        (values-ref
                                                         _g29388_
                                                         1)))
                                                   (if (gx#stx-null?
                                                        _tl25292737_)
                                                       (letrec ((_loop25302740_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd25282744_ _body25342747_)
                           (if (gx#stx-pair? _hd25282744_)
                               (let ((_e25312750_ (gx#syntax-e _hd25282744_)))
                                 (let ((_lp-hd25322754_ (##car _e25312750_))
                                       (_lp-tl25332757_ (##cdr _e25312750_)))
                                   (_loop25302740_
                                    _lp-tl25332757_
                                    (cons _lp-hd25322754_ _body25342747_))))
                               (let ((_body25352760_ (reverse _body25342747_)))
                                 ((lambda (_L2764_
                                           _L2766_
                                           _L2767_
                                           _L2768_
                                           _L2769_)
                                    (if (gx#identifier? _L2769_)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'letrec-values)
                                                    (cons (cons (cons (cons _L2769_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons (cons (gx#datum->syntax '#f 'lambda%)
                                          (cons (begin
                                                  '#!void
                                                  (foldr (lambda (_g27942801_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g27952804_)
                   (cons _g27942801_ _g27952804_))
                 _L2766_
                 _L2768_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (begin
                                                  '#!void
                                                  (foldr (lambda (_g27962807_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g27972810_)
                   (cons _g27962807_ _g27972810_))
                 '()
                 _L2764_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))
                        '())
                  (cons _L2769_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g27982813_
                                                                _g27992816_)
                                                         (cons _g27982813_
                                                               _g27992816_))
                                                       '()
                                                       _L2767_)))
                                        (_g24932643_ _g24952647_)))
                                  _body25352760_
                                  _tl25122683_
                                  _arg25192728_
                                  _var25202731_
                                  _hd25052664_))))))
                 (_loop25302740_ _target25272734_ '()))
               (_g24932643_ _g24952647_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g24932643_ _g24952647_))
                                         (_g24932643_ _g24952647_)))))))
                     (_loop25132686_ _target25102680_ '() '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g24932643_ _g24952647_))
                                                 (_g24932643_ _g24952647_))))
                                         (_g24932643_ _g24952647_))))
                                 (_g24932643_ _g24952647_))))
                         (_g24932643_ _g24952647_)))))
              (_g24922819_ _$stx2489_))))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#let*|
      (lambda (_$stx2826_)
        (let ((_g28302854_
               (lambda (_g28312850_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g28312850_))))
          (let ((_g28292939_
                 (lambda (_g28312858_)
                   (if (gx#stx-pair? _g28312858_)
                       (let ((_e28342861_ (gx#syntax-e _g28312858_)))
                         (let ((_hd28352865_ (##car _e28342861_))
                               (_tl28362868_ (##cdr _e28342861_)))
                           (if (gx#stx-pair? _tl28362868_)
                               (let ((_e28372871_ (gx#syntax-e _tl28362868_)))
                                 (let ((_hd28382875_ (##car _e28372871_))
                                       (_tl28392878_ (##cdr _e28372871_)))
                                   (if (gx#stx-pair/null? _tl28392878_)
                                       (if (fx>= (gx#stx-length _tl28392878_)
                                                 '0)
                                           (let ((_g29390_
                                                  (gx#syntax-split-splice
                                                   _tl28392878_
                                                   '0)))
                                             (begin
                                               (let ((_g29391_
                                                      (values-count _g29390_)))
                                                 (if (not (fx= _g29391_ 2))
                                                     (error "Context expects 2 values"
                                                            _g29391_)))
                                               (let ((_target28402881_
                                                      (values-ref _g29390_ 0))
                                                     (_tl28422884_
                                                      (values-ref _g29390_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl28422884_)
                                                     (letrec ((_loop28432887_
                                                               (lambda (_hd28412891_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _body28472894_)
                         (if (gx#stx-pair? _hd28412891_)
                             (let ((_e28442897_ (gx#syntax-e _hd28412891_)))
                               (let ((_lp-hd28452901_ (##car _e28442897_))
                                     (_lp-tl28462904_ (##cdr _e28442897_)))
                                 (_loop28432887_
                                  _lp-tl28462904_
                                  (cons _lp-hd28452901_ _body28472894_))))
                             (let ((_body28482907_ (reverse _body28472894_)))
                               ((lambda (_L2911_ _L2913_)
                                  (cons (gx#datum->syntax '#f '~let)
                                        (cons (gx#datum->syntax
                                               '#f
                                               'let*-values)
                                              (cons _L2913_
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g29302933_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g29312936_)
                       (cons _g29302933_ _g29312936_))
                     '()
                     _L2911_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _body28482907_
                                _hd28382875_))))))
               (_loop28432887_ _target28402881_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g28302854_
                                                      _g28312858_)))))
                                           (_g28302854_ _g28312858_))
                                       (_g28302854_ _g28312858_))))
                               (_g28302854_ _g28312858_))))
                       (_g28302854_ _g28312858_)))))
            (_g28292939_ _$stx2826_)))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#letrec|
      (lambda (_$stx2944_)
        (let ((_g29482972_
               (lambda (_g29492968_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g29492968_))))
          (let ((_g29473057_
                 (lambda (_g29492976_)
                   (if (gx#stx-pair? _g29492976_)
                       (let ((_e29522979_ (gx#syntax-e _g29492976_)))
                         (let ((_hd29532983_ (##car _e29522979_))
                               (_tl29542986_ (##cdr _e29522979_)))
                           (if (gx#stx-pair? _tl29542986_)
                               (let ((_e29552989_ (gx#syntax-e _tl29542986_)))
                                 (let ((_hd29562993_ (##car _e29552989_))
                                       (_tl29572996_ (##cdr _e29552989_)))
                                   (if (gx#stx-pair/null? _tl29572996_)
                                       (if (fx>= (gx#stx-length _tl29572996_)
                                                 '0)
                                           (let ((_g29392_
                                                  (gx#syntax-split-splice
                                                   _tl29572996_
                                                   '0)))
                                             (begin
                                               (let ((_g29393_
                                                      (values-count _g29392_)))
                                                 (if (not (fx= _g29393_ 2))
                                                     (error "Context expects 2 values"
                                                            _g29393_)))
                                               (let ((_target29582999_
                                                      (values-ref _g29392_ 0))
                                                     (_tl29603002_
                                                      (values-ref _g29392_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl29603002_)
                                                     (letrec ((_loop29613005_
                                                               (lambda (_hd29593009_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _body29653012_)
                         (if (gx#stx-pair? _hd29593009_)
                             (let ((_e29623015_ (gx#syntax-e _hd29593009_)))
                               (let ((_lp-hd29633019_ (##car _e29623015_))
                                     (_lp-tl29643022_ (##cdr _e29623015_)))
                                 (_loop29613005_
                                  _lp-tl29643022_
                                  (cons _lp-hd29633019_ _body29653012_))))
                             (let ((_body29663025_ (reverse _body29653012_)))
                               ((lambda (_L3029_ _L3031_)
                                  (cons (gx#datum->syntax '#f '~let)
                                        (cons (gx#datum->syntax
                                               '#f
                                               'letrec-values)
                                              (cons _L3031_
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g30483051_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g30493054_)
                       (cons _g30483051_ _g30493054_))
                     '()
                     _L3029_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _body29663025_
                                _hd29562993_))))))
               (_loop29613005_ _target29582999_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g29482972_
                                                      _g29492976_)))))
                                           (_g29482972_ _g29492976_))
                                       (_g29482972_ _g29492976_))))
                               (_g29482972_ _g29492976_))))
                       (_g29482972_ _g29492976_)))))
            (_g29473057_ _$stx2944_)))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#letrec*|
      (lambda (_$stx3062_)
        (let ((_g30663090_
               (lambda (_g30673086_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g30673086_))))
          (let ((_g30653175_
                 (lambda (_g30673094_)
                   (if (gx#stx-pair? _g30673094_)
                       (let ((_e30703097_ (gx#syntax-e _g30673094_)))
                         (let ((_hd30713101_ (##car _e30703097_))
                               (_tl30723104_ (##cdr _e30703097_)))
                           (if (gx#stx-pair? _tl30723104_)
                               (let ((_e30733107_ (gx#syntax-e _tl30723104_)))
                                 (let ((_hd30743111_ (##car _e30733107_))
                                       (_tl30753114_ (##cdr _e30733107_)))
                                   (if (gx#stx-pair/null? _tl30753114_)
                                       (if (fx>= (gx#stx-length _tl30753114_)
                                                 '0)
                                           (let ((_g29394_
                                                  (gx#syntax-split-splice
                                                   _tl30753114_
                                                   '0)))
                                             (begin
                                               (let ((_g29395_
                                                      (values-count _g29394_)))
                                                 (if (not (fx= _g29395_ 2))
                                                     (error "Context expects 2 values"
                                                            _g29395_)))
                                               (let ((_target30763117_
                                                      (values-ref _g29394_ 0))
                                                     (_tl30783120_
                                                      (values-ref _g29394_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl30783120_)
                                                     (letrec ((_loop30793123_
                                                               (lambda (_hd30773127_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _body30833130_)
                         (if (gx#stx-pair? _hd30773127_)
                             (let ((_e30803133_ (gx#syntax-e _hd30773127_)))
                               (let ((_lp-hd30813137_ (##car _e30803133_))
                                     (_lp-tl30823140_ (##cdr _e30803133_)))
                                 (_loop30793123_
                                  _lp-tl30823140_
                                  (cons _lp-hd30813137_ _body30833130_))))
                             (let ((_body30843143_ (reverse _body30833130_)))
                               ((lambda (_L3147_ _L3149_)
                                  (cons (gx#datum->syntax '#f '~let)
                                        (cons (gx#datum->syntax
                                               '#f
                                               'letrec*-values)
                                              (cons _L3149_
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g31663169_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g31673172_)
                       (cons _g31663169_ _g31673172_))
                     '()
                     _L3147_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _body30843143_
                                _hd30743111_))))))
               (_loop30793123_ _target30763117_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g30663090_
                                                      _g30673094_)))))
                                           (_g30663090_ _g30673094_))
                                       (_g30663090_ _g30673094_))))
                               (_g30663090_ _g30673094_))))
                       (_g30663090_ _g30673094_)))))
            (_g30653175_ _$stx3062_)))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#~let|
      (lambda (_stx3180_)
        (let ((_let-head?3183_
               (lambda (_x3663_)
                 (let ((_g36673678_
                        (lambda (_g36683674_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g36683674_))))
                   (let ((_g36663689_
                          (lambda (_g36683682_)
                            ((lambda () (gx#identifier? _x3663_))))))
                     (let ((_g36653719_
                            (lambda (_g36683693_)
                              (if (gx#stx-pair? _g36683693_)
                                  (let ((_e36703696_
                                         (gx#syntax-e _g36683693_)))
                                    (let ((_hd36713700_ (##car _e36703696_))
                                          (_tl36723703_ (##cdr _e36703696_)))
                                      (if (gx#identifier? _hd36713700_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core::<sugar>::<sugar:1>[1]#_g29403_|
                                               _hd36713700_)
                                              ((lambda (_L3706_)
                                                 (gx#stx-andmap
                                                  gx#identifier?
                                                  _L3706_))
                                               _tl36723703_)
                                              (_g36663689_ _g36683693_))
                                          (_g36663689_ _g36683693_))))
                                  (_g36663689_ _g36683693_)))))
                       (_g36653719_ _x3663_)))))))
          (let ((_let-head3185_
                 (lambda (_x3603_)
                   (let ((_g36073618_
                          (lambda (_g36083614_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g36083614_))))
                     (let ((_g36063629_
                            (lambda (_g36083622_)
                              ((lambda () (list _x3603_))))))
                       (let ((_g36053659_
                              (lambda (_g36083633_)
                                (if (gx#stx-pair? _g36083633_)
                                    (let ((_e36103636_
                                           (gx#syntax-e _g36083633_)))
                                      (let ((_hd36113640_ (##car _e36103636_))
                                            (_tl36123643_ (##cdr _e36103636_)))
                                        (if (gx#identifier? _hd36113640_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core::<sugar>::<sugar:1>[1]#_g29402_|
                                                 _hd36113640_)
                                                ((lambda (_L3646_) _L3646_)
                                                 _tl36123643_)
                                                (_g36063629_ _g36083633_))
                                            (_g36063629_ _g36083633_))))
                                    (_g36063629_ _g36083633_)))))
                         (_g36053659_ _x3603_)))))))
            (let ((_g31883254_
                   (lambda (_g31893250_)
                     (gx#raise-syntax-error '#f '"Bad syntax" _g31893250_))))
              (let ((_g31873515_
                     (lambda (_g31893258_)
                       (if (gx#stx-pair? _g31893258_)
                           (let ((_e32143261_ (gx#syntax-e _g31893258_)))
                             (let ((_hd32153265_ (##car _e32143261_))
                                   (_tl32163268_ (##cdr _e32143261_)))
                               (if (gx#stx-pair? _tl32163268_)
                                   (let ((_e32173271_
                                          (gx#syntax-e _tl32163268_)))
                                     (let ((_hd32183275_ (##car _e32173271_))
                                           (_tl32193278_ (##cdr _e32173271_)))
                                       (if (gx#stx-pair? _tl32193278_)
                                           (let ((_e32203281_
                                                  (gx#syntax-e _tl32193278_)))
                                             (let ((_hd32213285_
                                                    (##car _e32203281_))
                                                   (_tl32223288_
                                                    (##cdr _e32203281_)))
                                               (if (gx#stx-pair/null?
                                                    _hd32213285_)
                                                   (if (fx>= (gx#stx-length
                                                              _hd32213285_)
                                                             '0)
                                                       (let ((_g29396_
                                                              (gx#syntax-split-splice
                                                               _hd32213285_
                                                               '0)))
                                                         (begin
                                                           (let ((_g29397_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g29396_)))
                     (if (not (fx= _g29397_ 2))
                         (error "Context expects 2 values" _g29397_)))
                   (let ((_target32233291_ (values-ref _g29396_ 0))
                         (_tl32253294_ (values-ref _g29396_ 1)))
                     (if (gx#stx-null? _tl32253294_)
                         (letrec ((_loop32263297_
                                   (lambda (_hd32243301_
                                            _e32303304_
                                            _hd32313306_)
                                     (if (gx#stx-pair? _hd32243301_)
                                         (let ((_e32273309_
                                                (gx#syntax-e _hd32243301_)))
                                           (let ((_lp-hd32283313_
                                                  (##car _e32273309_))
                                                 (_lp-tl32293316_
                                                  (##cdr _e32273309_)))
                                             (if (gx#stx-pair? _lp-hd32283313_)
                                                 (let ((_e32343319_
                                                        (gx#syntax-e
                                                         _lp-hd32283313_)))
                                                   (let ((_hd32353323_
                                                          (##car _e32343319_))
                                                         (_tl32363326_
                                                          (##cdr _e32343319_)))
                                                     (if (gx#stx-pair?
                                                          _tl32363326_)
                                                         (let ((_e32373329_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl32363326_)))
                   (let ((_hd32383333_ (##car _e32373329_))
                         (_tl32393336_ (##cdr _e32373329_)))
                     (if (gx#stx-null? _tl32393336_)
                         (_loop32263297_
                          _lp-tl32293316_
                          (cons _hd32383333_ _e32303304_)
                          (cons _hd32353323_ _hd32313306_))
                         (_g31883254_ _g31893258_))))
                 (_g31883254_ _g31893258_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g31883254_ _g31893258_))))
                                         (let ((_e32323339_
                                                (reverse _e32303304_))
                                               (_hd32333342_
                                                (reverse _hd32313306_)))
                                           (if (gx#stx-pair/null? _tl32223288_)
                                               (if (fx>= (gx#stx-length
                                                          _tl32223288_)
                                                         '0)
                                                   (let ((_g29398_
                                                          (gx#syntax-split-splice
                                                           _tl32223288_
                                                           '0)))
                                                     (begin
                                                       (let ((_g29399_
                                                              (values-count
                                                               _g29398_)))
                                                         (if (not (fx= _g29399_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g29399_)))
               (let ((_target32403345_ (values-ref _g29398_ 0))
                     (_tl32423348_ (values-ref _g29398_ 1)))
                 (if (gx#stx-null? _tl32423348_)
                     (letrec ((_loop32433351_
                               (lambda (_hd32413355_ _body32473358_)
                                 (if (gx#stx-pair? _hd32413355_)
                                     (let ((_e32443361_
                                            (gx#syntax-e _hd32413355_)))
                                       (let ((_lp-hd32453365_
                                              (##car _e32443361_))
                                             (_lp-tl32463368_
                                              (##cdr _e32443361_)))
                                         (_loop32433351_
                                          _lp-tl32463368_
                                          (cons _lp-hd32453365_
                                                _body32473358_))))
                                     (let ((_body32483371_
                                            (reverse _body32473358_)))
                                       ((lambda (_L3375_
                                                 _L3377_
                                                 _L3378_
                                                 _L3379_)
                                          (if (gx#stx-andmap
                                               _let-head?3183_
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g34053408_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g34063411_)
                  (cons _g34053408_ _g34063411_))
                '()
                _L3378_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g34143431_
                                                     (lambda (_g34153427_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g34153427_))))
                                                (let ((_g34133503_
                                                       (lambda (_g34153435_)
                                                         (if (gx#stx-pair/null?
                                                              _g34153435_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g34153435_)
                               '0)
                         (let ((_g29400_
                                (gx#syntax-split-splice _g34153435_ '0)))
                           (begin
                             (let ((_g29401_ (values-count _g29400_)))
                               (if (not (fx= _g29401_ 2))
                                   (error "Context expects 2 values"
                                          _g29401_)))
                             (let ((_target34173438_ (values-ref _g29400_ 0))
                                   (_tl34193441_ (values-ref _g29400_ 1)))
                               (if (gx#stx-null? _tl34193441_)
                                   (letrec ((_loop34203444_
                                             (lambda (_hd34183448_
                                                      _hd-bind34243451_)
                                               (if (gx#stx-pair? _hd34183448_)
                                                   (let ((_e34213454_
                                                          (gx#syntax-e
                                                           _hd34183448_)))
                                                     (let ((_lp-hd34223458_
                                                            (##car _e34213454_))
                                                           (_lp-tl34233461_
                                                            (##cdr _e34213454_)))
                                                       (_loop34203444_
                                                        _lp-tl34233461_
                                                        (cons _lp-hd34223458_
                                                              _hd-bind34243451_))))
                                                   (let ((_hd-bind34253464_
                                                          (reverse _hd-bind34243451_)))
                                                     ((lambda (_L3468_)
                                                        (let ()
                                                          (cons _L3379_
                                                                (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (gx#syntax-check-splice-targets
                                 _L3377_
                                 _L3468_)
                                (foldr (lambda (_g34833489_
                                                _g34843492_
                                                _g34853494_)
                                         (cons (cons _g34843492_
                                                     (cons _g34833489_ '()))
                                               _g34853494_))
                                       '()
                                       _L3377_
                                       _L3468_))
                              (begin
                                '#!void
                                (foldr (lambda (_g34863497_ _g34873500_)
                                         (cons _g34863497_ _g34873500_))
                                       '()
                                       _L3375_))))))
              _hd-bind34253464_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop34203444_ _target34173438_ '()))
                                   (_g34143431_ _g34153435_)))))
                         (_g34143431_ _g34153435_))
                     (_g34143431_ _g34153435_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g34133503_
                                                   (gx#stx-map
                                                    _let-head3185_
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g35063509_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g35073512_)
                       (cons _g35063509_ _g35073512_))
                     '()
                     _L3378_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g31883254_ _g31893258_)))
                                        _body32483371_
                                        _e32323339_
                                        _hd32333342_
                                        _hd32183275_))))))
                       (_loop32433351_ _target32403345_ '()))
                     (_g31883254_ _g31893258_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g31883254_ _g31893258_))
                                               (_g31883254_ _g31893258_)))))))
                           (_loop32263297_ _target32233291_ '() '()))
                         (_g31883254_ _g31893258_)))))
               (_g31883254_ _g31893258_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g31883254_ _g31893258_))))
                                           (_g31883254_ _g31893258_))))
                                   (_g31883254_ _g31893258_))))
                           (_g31883254_ _g31893258_)))))
                (let ((_g31863599_
                       (lambda (_g31893519_)
                         (if (gx#stx-pair? _g31893519_)
                             (let ((_e31953522_ (gx#syntax-e _g31893519_)))
                               (let ((_hd31963526_ (##car _e31953522_))
                                     (_tl31973529_ (##cdr _e31953522_)))
                                 (if (gx#stx-pair? _tl31973529_)
                                     (let ((_e31983532_
                                            (gx#syntax-e _tl31973529_)))
                                       (let ((_hd31993536_ (##car _e31983532_))
                                             (_tl32003539_
                                              (##cdr _e31983532_)))
                                         (if (gx#stx-pair? _tl32003539_)
                                             (let ((_e32013542_
                                                    (gx#syntax-e
                                                     _tl32003539_)))
                                               (let ((_hd32023546_
                                                      (##car _e32013542_))
                                                     (_tl32033549_
                                                      (##cdr _e32013542_)))
                                                 (if (gx#stx-pair?
                                                      _hd32023546_)
                                                     (let ((_e32043552_
                                                            (gx#syntax-e
                                                             _hd32023546_)))
                                                       (let ((_hd32053556_
                                                              (##car _e32043552_))
                                                             (_tl32063559_
                                                              (##cdr _e32043552_)))
                                                         (if (gx#stx-pair?
                                                              _tl32063559_)
                                                             (let ((_e32073562_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl32063559_)))
                       (let ((_hd32083566_ (##car _e32073562_))
                             (_tl32093569_ (##cdr _e32073562_)))
                         (if (gx#stx-null? _tl32093569_)
                             ((lambda (_L3572_ _L3574_ _L3575_ _L3576_ _L3577_)
                                (if (_let-head?3183_ _L3575_)
                                    (cons _L3577_
                                          (cons _L3576_
                                                (cons (cons (cons _L3575_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L3574_ '()))
                    '())
              _L3572_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_g31873515_ _g31893519_)))
                              _tl32033549_
                              _hd32083566_
                              _hd32053556_
                              _hd31993536_
                              _hd31963526_)
                             (_g31873515_ _g31893519_))))
                     (_g31873515_ _g31893519_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g31873515_
                                                      _g31893519_))))
                                             (_g31873515_ _g31893519_))))
                                     (_g31873515_ _g31893519_))))
                             (_g31873515_ _g31893519_)))))
                  (_g31863599_ _stx3180_))))))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#and|
      (lambda (_$stx3726_)
        (let ((_g37323758_
               (lambda (_g37333754_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g37333754_))))
          (let ((_g37313803_
                 (lambda (_g37333762_)
                   (if (gx#stx-pair? _g37333762_)
                       (let ((_e37473765_ (gx#syntax-e _g37333762_)))
                         (let ((_hd37483769_ (##car _e37473765_))
                               (_tl37493772_ (##cdr _e37473765_)))
                           (if (gx#stx-pair? _tl37493772_)
                               (let ((_e37503775_ (gx#syntax-e _tl37493772_)))
                                 (let ((_hd37513779_ (##car _e37503775_))
                                       (_tl37523782_ (##cdr _e37503775_)))
                                   ((lambda (_L3785_ _L3787_ _L3788_)
                                      (cons (gx#datum->syntax '#f 'if)
                                            (cons _L3787_
                                                  (cons (cons _L3788_ _L3785_)
                                                        (cons '#f '())))))
                                    _tl37523782_
                                    _hd37513779_
                                    _hd37483769_)))
                               (_g37323758_ _g37333762_))))
                       (_g37323758_ _g37333762_)))))
            (let ((_g37303843_
                   (lambda (_g37333807_)
                     (if (gx#stx-pair? _g37333807_)
                         (let ((_e37383810_ (gx#syntax-e _g37333807_)))
                           (let ((_hd37393814_ (##car _e37383810_))
                                 (_tl37403817_ (##cdr _e37383810_)))
                             (if (gx#stx-pair? _tl37403817_)
                                 (let ((_e37413820_
                                        (gx#syntax-e _tl37403817_)))
                                   (let ((_hd37423824_ (##car _e37413820_))
                                         (_tl37433827_ (##cdr _e37413820_)))
                                     (if (gx#stx-null? _tl37433827_)
                                         ((lambda (_L3830_) _L3830_)
                                          _hd37423824_)
                                         (_g37313803_ _g37333807_))))
                                 (_g37313803_ _g37333807_))))
                         (_g37313803_ _g37333807_)))))
              (let ((_g37293864_
                     (lambda (_g37333847_)
                       (if (gx#stx-pair? _g37333847_)
                           (let ((_e37343850_ (gx#syntax-e _g37333847_)))
                             (let ((_hd37353854_ (##car _e37343850_))
                                   (_tl37363857_ (##cdr _e37343850_)))
                               (if (gx#stx-null? _tl37363857_)
                                   ((lambda () '#t))
                                   (_g37303843_ _g37333847_))))
                           (_g37303843_ _g37333847_)))))
                (_g37293864_ _$stx3726_)))))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#or|
      (lambda (_$stx3868_)
        (let ((_g38743900_
               (lambda (_g38753896_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g38753896_))))
          (let ((_g38733945_
                 (lambda (_g38753904_)
                   (if (gx#stx-pair? _g38753904_)
                       (let ((_e38893907_ (gx#syntax-e _g38753904_)))
                         (let ((_hd38903911_ (##car _e38893907_))
                               (_tl38913914_ (##cdr _e38893907_)))
                           (if (gx#stx-pair? _tl38913914_)
                               (let ((_e38923917_ (gx#syntax-e _tl38913914_)))
                                 (let ((_hd38933921_ (##car _e38923917_))
                                       (_tl38943924_ (##cdr _e38923917_)))
                                   ((lambda (_L3927_ _L3929_ _L3930_)
                                      (cons (gx#datum->syntax '#f 'let)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         '$e)
                                                        (cons _L3929_ '()))
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'if)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '$e)
                            (cons (gx#datum->syntax '#f '$e)
                                  (cons (cons _L3930_ _L3927_) '()))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _tl38943924_
                                    _hd38933921_
                                    _hd38903911_)))
                               (_g38743900_ _g38753904_))))
                       (_g38743900_ _g38753904_)))))
            (let ((_g38723985_
                   (lambda (_g38753949_)
                     (if (gx#stx-pair? _g38753949_)
                         (let ((_e38803952_ (gx#syntax-e _g38753949_)))
                           (let ((_hd38813956_ (##car _e38803952_))
                                 (_tl38823959_ (##cdr _e38803952_)))
                             (if (gx#stx-pair? _tl38823959_)
                                 (let ((_e38833962_
                                        (gx#syntax-e _tl38823959_)))
                                   (let ((_hd38843966_ (##car _e38833962_))
                                         (_tl38853969_ (##cdr _e38833962_)))
                                     (if (gx#stx-null? _tl38853969_)
                                         ((lambda (_L3972_) _L3972_)
                                          _hd38843966_)
                                         (_g38733945_ _g38753949_))))
                                 (_g38733945_ _g38753949_))))
                         (_g38733945_ _g38753949_)))))
              (let ((_g38714006_
                     (lambda (_g38753989_)
                       (if (gx#stx-pair? _g38753989_)
                           (let ((_e38763992_ (gx#syntax-e _g38753989_)))
                             (let ((_hd38773996_ (##car _e38763992_))
                                   (_tl38783999_ (##cdr _e38763992_)))
                               (if (gx#stx-null? _tl38783999_)
                                   ((lambda () '#f))
                                   (_g38723985_ _g38753989_))))
                           (_g38723985_ _g38753989_)))))
                (_g38714006_ _$stx3868_)))))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#cond|
      (lambda (_$stx4010_)
        (let ((_g40194110_
               (lambda (_g40204106_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g40204106_))))
          (let ((_g40184211_
                 (lambda (_g40204114_)
                   (if (gx#stx-pair? _g40204114_)
                       (let ((_e40874117_ (gx#syntax-e _g40204114_)))
                         (let ((_hd40884121_ (##car _e40874117_))
                               (_tl40894124_ (##cdr _e40874117_)))
                           (if (gx#stx-pair? _tl40894124_)
                               (let ((_e40904127_ (gx#syntax-e _tl40894124_)))
                                 (let ((_hd40914131_ (##car _e40904127_))
                                       (_tl40924134_ (##cdr _e40904127_)))
                                   (if (gx#stx-pair? _hd40914131_)
                                       (let ((_e40934137_
                                              (gx#syntax-e _hd40914131_)))
                                         (let ((_hd40944141_
                                                (##car _e40934137_))
                                               (_tl40954144_
                                                (##cdr _e40934137_)))
                                           (if (gx#stx-pair/null? _tl40954144_)
                                               (if (fx>= (gx#stx-length
                                                          _tl40954144_)
                                                         '0)
                                                   (let ((_g29404_
                                                          (gx#syntax-split-splice
                                                           _tl40954144_
                                                           '0)))
                                                     (begin
                                                       (let ((_g29405_
                                                              (values-count
                                                               _g29404_)))
                                                         (if (not (fx= _g29405_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g29405_)))
               (let ((_target40964147_ (values-ref _g29404_ 0))
                     (_tl40984150_ (values-ref _g29404_ 1)))
                 (if (gx#stx-null? _tl40984150_)
                     (letrec ((_loop40994153_
                               (lambda (_hd40974157_ _body41034160_)
                                 (if (gx#stx-pair? _hd40974157_)
                                     (let ((_e41004163_
                                            (gx#syntax-e _hd40974157_)))
                                       (let ((_lp-hd41014167_
                                              (##car _e41004163_))
                                             (_lp-tl41024170_
                                              (##cdr _e41004163_)))
                                         (_loop40994153_
                                          _lp-tl41024170_
                                          (cons _lp-hd41014167_
                                                _body41034160_))))
                                     (let ((_body41044173_
                                            (reverse _body41034160_)))
                                       ((lambda (_L4177_
                                                 _L4179_
                                                 _L4180_
                                                 _L4181_)
                                          (cons (gx#datum->syntax '#f 'if)
                                                (cons _L4180_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'begin)
                          (begin
                            '#!void
                            (foldr (lambda (_g42024205_ _g42034208_)
                                     (cons _g42024205_ _g42034208_))
                                   '()
                                   _L4179_)))
                    (cons (cons _L4181_ _L4177_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _tl40924134_
                                        _body41044173_
                                        _hd40944141_
                                        _hd40884121_))))))
                       (_loop40994153_ _target40964147_ '()))
                     (_g40194110_ _g40204114_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g40194110_ _g40204114_))
                                               (_g40194110_ _g40204114_))))
                                       (_g40194110_ _g40204114_))))
                               (_g40194110_ _g40204114_))))
                       (_g40194110_ _g40204114_)))))
            (let ((_g40174267_
                   (lambda (_g40204215_)
                     (if (gx#stx-pair? _g40204215_)
                         (let ((_e40744218_ (gx#syntax-e _g40204215_)))
                           (let ((_hd40754222_ (##car _e40744218_))
                                 (_tl40764225_ (##cdr _e40744218_)))
                             (if (gx#stx-pair? _tl40764225_)
                                 (let ((_e40774228_
                                        (gx#syntax-e _tl40764225_)))
                                   (let ((_hd40784232_ (##car _e40774228_))
                                         (_tl40794235_ (##cdr _e40774228_)))
                                     (if (gx#stx-pair? _hd40784232_)
                                         (let ((_e40804238_
                                                (gx#syntax-e _hd40784232_)))
                                           (let ((_hd40814242_
                                                  (##car _e40804238_))
                                                 (_tl40824245_
                                                  (##cdr _e40804238_)))
                                             (if (gx#stx-null? _tl40824245_)
                                                 ((lambda (_L4248_
                                                           _L4250_
                                                           _L4251_)
                                                    (cons _L4251_
                                                          (cons (cons _L4250_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#datum->syntax '#f '=>)
                                    (cons (gx#datum->syntax '#f 'values) '())))
                        _L4248_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _tl40794235_
                                                  _hd40814242_
                                                  _hd40754222_)
                                                 (_g40184211_ _g40204215_))))
                                         (_g40184211_ _g40204215_))))
                                 (_g40184211_ _g40204215_))))
                         (_g40184211_ _g40204215_)))))
              (let ((_g40164349_
                     (lambda (_g40204271_)
                       (if (gx#stx-pair? _g40204271_)
                           (let ((_e40564274_ (gx#syntax-e _g40204271_)))
                             (let ((_hd40574278_ (##car _e40564274_))
                                   (_tl40584281_ (##cdr _e40564274_)))
                               (if (gx#stx-pair? _tl40584281_)
                                   (let ((_e40594284_
                                          (gx#syntax-e _tl40584281_)))
                                     (let ((_hd40604288_ (##car _e40594284_))
                                           (_tl40614291_ (##cdr _e40594284_)))
                                       (if (gx#stx-pair? _hd40604288_)
                                           (let ((_e40624294_
                                                  (gx#syntax-e _hd40604288_)))
                                             (let ((_hd40634298_
                                                    (##car _e40624294_))
                                                   (_tl40644301_
                                                    (##cdr _e40624294_)))
                                               (if (gx#stx-pair? _tl40644301_)
                                                   (let ((_e40654304_
                                                          (gx#syntax-e
                                                           _tl40644301_)))
                                                     (let ((_hd40664308_
                                                            (##car _e40654304_))
                                                           (_tl40674311_
                                                            (##cdr _e40654304_)))
                                                       (if (gx#identifier?
                                                            _hd40664308_)
                                                           (if (gx#free-identifier=?
                                                                |gerbil/core::<sugar>::<sugar:1>[1]#_g29406_|
                                                                _hd40664308_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl40674311_)
                           (let ((_e40684314_ (gx#syntax-e _tl40674311_)))
                             (let ((_hd40694318_ (##car _e40684314_))
                                   (_tl40704321_ (##cdr _e40684314_)))
                               (if (gx#stx-null? _tl40704321_)
                                   ((lambda (_L4324_ _L4326_ _L4327_ _L4328_)
                                      (cons (gx#datum->syntax '#f 'let)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         '$e)
                                                        (cons _L4327_ '()))
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'if)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '$e)
                            (cons (cons _L4326_
                                        (cons (gx#datum->syntax '#f '$e) '()))
                                  (cons (cons _L4328_ _L4324_) '()))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _tl40614291_
                                    _hd40694318_
                                    _hd40634298_
                                    _hd40574278_)
                                   (_g40174267_ _g40204271_))))
                           (_g40174267_ _g40204271_))
                       (_g40174267_ _g40204271_))
                   (_g40174267_ _g40204271_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g40174267_ _g40204271_))))
                                           (_g40174267_ _g40204271_))))
                                   (_g40174267_ _g40204271_))))
                           (_g40174267_ _g40204271_)))))
                (let ((_g40154390_
                       (lambda (_g40204353_)
                         (if (gx#stx-pair? _g40204353_)
                             (let ((_e40434356_ (gx#syntax-e _g40204353_)))
                               (let ((_hd40444360_ (##car _e40434356_))
                                     (_tl40454363_ (##cdr _e40434356_)))
                                 (if (gx#stx-pair? _tl40454363_)
                                     (let ((_e40464366_
                                            (gx#syntax-e _tl40454363_)))
                                       (let ((_hd40474370_ (##car _e40464366_))
                                             (_tl40484373_
                                              (##cdr _e40464366_)))
                                         (if (gx#stx-pair? _hd40474370_)
                                             (let ((_e40494376_
                                                    (gx#syntax-e
                                                     _hd40474370_)))
                                               (let ((_hd40504380_
                                                      (##car _e40494376_))
                                                     (_tl40514383_
                                                      (##cdr _e40494376_)))
                                                 (if (gx#identifier?
                                                      _hd40504380_)
                                                     (if (gx#free-identifier=?
                                                          |gerbil/core::<sugar>::<sugar:1>[1]#_g29407_|
                                                          _hd40504380_)
                                                         ((lambda ()
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'syntax-error)
                          (cons '"Bad syntax; misplaced else" '()))))
                 (_g40164349_ _g40204353_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g40164349_
                                                      _g40204353_))))
                                             (_g40164349_ _g40204353_))))
                                     (_g40164349_ _g40204353_))))
                             (_g40164349_ _g40204353_)))))
                  (let ((_g40144485_
                         (lambda (_g40204394_)
                           (if (gx#stx-pair? _g40204394_)
                               (let ((_e40254397_ (gx#syntax-e _g40204394_)))
                                 (let ((_hd40264401_ (##car _e40254397_))
                                       (_tl40274404_ (##cdr _e40254397_)))
                                   (if (gx#stx-pair? _tl40274404_)
                                       (let ((_e40284407_
                                              (gx#syntax-e _tl40274404_)))
                                         (let ((_hd40294411_
                                                (##car _e40284407_))
                                               (_tl40304414_
                                                (##cdr _e40284407_)))
                                           (if (gx#stx-pair? _hd40294411_)
                                               (let ((_e40314417_
                                                      (gx#syntax-e
                                                       _hd40294411_)))
                                                 (let ((_hd40324421_
                                                        (##car _e40314417_))
                                                       (_tl40334424_
                                                        (##cdr _e40314417_)))
                                                   (if (gx#identifier?
                                                        _hd40324421_)
                                                       (if (gx#free-identifier=?
                                                            |gerbil/core::<sugar>::<sugar:1>[1]#_g29408_|
                                                            _hd40324421_)
                                                           (if (gx#stx-pair/null?
                                                                _tl40334424_)
                                                               (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _tl40334424_)
                                 '0)
                           (let ((_g29409_
                                  (gx#syntax-split-splice _tl40334424_ '0)))
                             (begin
                               (let ((_g29410_ (values-count _g29409_)))
                                 (if (not (fx= _g29410_ 2))
                                     (error "Context expects 2 values"
                                            _g29410_)))
                               (let ((_target40344427_ (values-ref _g29409_ 0))
                                     (_tl40364430_ (values-ref _g29409_ 1)))
                                 (if (gx#stx-null? _tl40364430_)
                                     (letrec ((_loop40374433_
                                               (lambda (_hd40354437_
                                                        _body40414440_)
                                                 (if (gx#stx-pair?
                                                      _hd40354437_)
                                                     (let ((_e40384443_
                                                            (gx#syntax-e
                                                             _hd40354437_)))
                                                       (let ((_lp-hd40394447_
                                                              (##car _e40384443_))
                                                             (_lp-tl40404450_
                                                              (##cdr _e40384443_)))
                                                         (_loop40374433_
                                                          _lp-tl40404450_
                                                          (cons _lp-hd40394447_
                                                                _body40414440_))))
                                                     (let ((_body40424453_
                                                            (reverse _body40414440_)))
                                                       (if (gx#stx-null?
                                                            _tl40304414_)
                                                           ((lambda (_L4457_)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '%#expression)
                            (cons (cons (gx#datum->syntax '#f 'begin)
                                        (begin
                                          '#!void
                                          (foldr (lambda (_g44764479_
                                                          _g44774482_)
                                                   (cons _g44764479_
                                                         _g44774482_))
                                                 '()
                                                 _L4457_)))
                                  '())))
                    _body40424453_)
                   (_g40154390_ _g40204394_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_loop40374433_ _target40344427_ '()))
                                     (_g40154390_ _g40204394_)))))
                           (_g40154390_ _g40204394_))
                       (_g40154390_ _g40204394_))
                   (_g40154390_ _g40204394_))
               (_g40154390_ _g40204394_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g40154390_ _g40204394_))))
                                       (_g40154390_ _g40204394_))))
                               (_g40154390_ _g40204394_)))))
                    (let ((_g40134506_
                           (lambda (_g40204489_)
                             (if (gx#stx-pair? _g40204489_)
                                 (let ((_e40214492_ (gx#syntax-e _g40204489_)))
                                   (let ((_hd40224496_ (##car _e40214492_))
                                         (_tl40234499_ (##cdr _e40214492_)))
                                     (if (gx#stx-null? _tl40234499_)
                                         ((lambda () '#!void))
                                         (_g40144485_ _g40204489_))))
                                 (_g40144485_ _g40204489_)))))
                      (_g40134506_ _$stx4010_))))))))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#when|
      (lambda (_$stx4512_)
        (let ((_g45164540_
               (lambda (_g45174536_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g45174536_))))
          (let ((_g45154625_
                 (lambda (_g45174544_)
                   (if (gx#stx-pair? _g45174544_)
                       (let ((_e45204547_ (gx#syntax-e _g45174544_)))
                         (let ((_hd45214551_ (##car _e45204547_))
                               (_tl45224554_ (##cdr _e45204547_)))
                           (if (gx#stx-pair? _tl45224554_)
                               (let ((_e45234557_ (gx#syntax-e _tl45224554_)))
                                 (let ((_hd45244561_ (##car _e45234557_))
                                       (_tl45254564_ (##cdr _e45234557_)))
                                   (if (gx#stx-pair/null? _tl45254564_)
                                       (if (fx>= (gx#stx-length _tl45254564_)
                                                 '0)
                                           (let ((_g29411_
                                                  (gx#syntax-split-splice
                                                   _tl45254564_
                                                   '0)))
                                             (begin
                                               (let ((_g29412_
                                                      (values-count _g29411_)))
                                                 (if (not (fx= _g29412_ 2))
                                                     (error "Context expects 2 values"
                                                            _g29412_)))
                                               (let ((_target45264567_
                                                      (values-ref _g29411_ 0))
                                                     (_tl45284570_
                                                      (values-ref _g29411_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl45284570_)
                                                     (letrec ((_loop45294573_
                                                               (lambda (_hd45274577_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr45334580_)
                         (if (gx#stx-pair? _hd45274577_)
                             (let ((_e45304583_ (gx#syntax-e _hd45274577_)))
                               (let ((_lp-hd45314587_ (##car _e45304583_))
                                     (_lp-tl45324590_ (##cdr _e45304583_)))
                                 (_loop45294573_
                                  _lp-tl45324590_
                                  (cons _lp-hd45314587_ _expr45334580_))))
                             (let ((_expr45344593_ (reverse _expr45334580_)))
                               ((lambda (_L4597_ _L4599_)
                                  (cons (gx#datum->syntax '#f 'if)
                                        (cons _L4599_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'begin)
                                                          (begin
                                                            '#!void
                                                            (foldr (lambda (_g46164619_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g46174622_)
                             (cons _g46164619_ _g46174622_))
                           '()
                           _L4597_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons '#!void '())))))
                                _expr45344593_
                                _hd45244561_))))))
               (_loop45294573_ _target45264567_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g45164540_
                                                      _g45174544_)))))
                                           (_g45164540_ _g45174544_))
                                       (_g45164540_ _g45174544_))))
                               (_g45164540_ _g45174544_))))
                       (_g45164540_ _g45174544_)))))
            (_g45154625_ _$stx4512_)))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#unless|
      (lambda (_$stx4630_)
        (let ((_g46344658_
               (lambda (_g46354654_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g46354654_))))
          (let ((_g46334743_
                 (lambda (_g46354662_)
                   (if (gx#stx-pair? _g46354662_)
                       (let ((_e46384665_ (gx#syntax-e _g46354662_)))
                         (let ((_hd46394669_ (##car _e46384665_))
                               (_tl46404672_ (##cdr _e46384665_)))
                           (if (gx#stx-pair? _tl46404672_)
                               (let ((_e46414675_ (gx#syntax-e _tl46404672_)))
                                 (let ((_hd46424679_ (##car _e46414675_))
                                       (_tl46434682_ (##cdr _e46414675_)))
                                   (if (gx#stx-pair/null? _tl46434682_)
                                       (if (fx>= (gx#stx-length _tl46434682_)
                                                 '0)
                                           (let ((_g29413_
                                                  (gx#syntax-split-splice
                                                   _tl46434682_
                                                   '0)))
                                             (begin
                                               (let ((_g29414_
                                                      (values-count _g29413_)))
                                                 (if (not (fx= _g29414_ 2))
                                                     (error "Context expects 2 values"
                                                            _g29414_)))
                                               (let ((_target46444685_
                                                      (values-ref _g29413_ 0))
                                                     (_tl46464688_
                                                      (values-ref _g29413_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl46464688_)
                                                     (letrec ((_loop46474691_
                                                               (lambda (_hd46454695_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr46514698_)
                         (if (gx#stx-pair? _hd46454695_)
                             (let ((_e46484701_ (gx#syntax-e _hd46454695_)))
                               (let ((_lp-hd46494705_ (##car _e46484701_))
                                     (_lp-tl46504708_ (##cdr _e46484701_)))
                                 (_loop46474691_
                                  _lp-tl46504708_
                                  (cons _lp-hd46494705_ _expr46514698_))))
                             (let ((_expr46524711_ (reverse _expr46514698_)))
                               ((lambda (_L4715_ _L4717_)
                                  (cons (gx#datum->syntax '#f 'if)
                                        (cons _L4717_
                                              (cons '#!void
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'begin)
                        (begin
                          '#!void
                          (foldr (lambda (_g47344737_ _g47354740_)
                                   (cons _g47344737_ _g47354740_))
                                 '()
                                 _L4715_)))
                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _expr46524711_
                                _hd46424679_))))))
               (_loop46474691_ _target46444685_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g46344658_
                                                      _g46354662_)))))
                                           (_g46344658_ _g46354662_))
                                       (_g46344658_ _g46354662_))))
                               (_g46344658_ _g46354662_))))
                       (_g46344658_ _g46354662_)))))
            (_g46334743_ _$stx4630_)))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#syntax-error|
      (lambda (_stx4748_)
        (let ((_g47514775_
               (lambda (_g47524771_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g47524771_))))
          (let ((_g47504860_
                 (lambda (_g47524779_)
                   (if (gx#stx-pair? _g47524779_)
                       (let ((_e47554782_ (gx#syntax-e _g47524779_)))
                         (let ((_hd47564786_ (##car _e47554782_))
                               (_tl47574789_ (##cdr _e47554782_)))
                           (if (gx#stx-pair? _tl47574789_)
                               (let ((_e47584792_ (gx#syntax-e _tl47574789_)))
                                 (let ((_hd47594796_ (##car _e47584792_))
                                       (_tl47604799_ (##cdr _e47584792_)))
                                   (if (gx#stx-pair/null? _tl47604799_)
                                       (if (fx>= (gx#stx-length _tl47604799_)
                                                 '0)
                                           (let ((_g29415_
                                                  (gx#syntax-split-splice
                                                   _tl47604799_
                                                   '0)))
                                             (begin
                                               (let ((_g29416_
                                                      (values-count _g29415_)))
                                                 (if (not (fx= _g29416_ 2))
                                                     (error "Context expects 2 values"
                                                            _g29416_)))
                                               (let ((_target47614802_
                                                      (values-ref _g29415_ 0))
                                                     (_tl47634805_
                                                      (values-ref _g29415_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl47634805_)
                                                     (letrec ((_loop47644808_
                                                               (lambda (_hd47624812_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _detail47684815_)
                         (if (gx#stx-pair? _hd47624812_)
                             (let ((_e47654818_ (gx#syntax-e _hd47624812_)))
                               (let ((_lp-hd47664822_ (##car _e47654818_))
                                     (_lp-tl47674825_ (##cdr _e47654818_)))
                                 (_loop47644808_
                                  _lp-tl47674825_
                                  (cons _lp-hd47664822_ _detail47684815_))))
                             (let ((_detail47694828_
                                    (reverse _detail47684815_)))
                               ((lambda (_L4832_ _L4834_)
                                  (if (gx#stx-string? _L4834_)
                                      (apply gx#raise-syntax-error
                                             '#f
                                             (gx#stx-e _L4834_)
                                             _stx4748_
                                             (gx#syntax->list
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g48514854_
                                                                _g48524857_)
                                                         (cons _g48514854_
                                                               _g48524857_))
                                                       '()
                                                       _L4832_))))
                                      (_g47514775_ _g47524779_)))
                                _detail47694828_
                                _hd47594796_))))))
               (_loop47644808_ _target47614802_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g47514775_
                                                      _g47524779_)))))
                                           (_g47514775_ _g47524779_))
                                       (_g47514775_ _g47524779_))))
                               (_g47514775_ _g47524779_))))
                       (_g47514775_ _g47524779_)))))
            (_g47504860_ _stx4748_)))))))
