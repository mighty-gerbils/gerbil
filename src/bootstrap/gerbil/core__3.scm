(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<sugar>::<sugar:1>[1]#_g30199_|
    (gx#core-quote-syntax 'values))
  (define |gerbil/core::<sugar>::<sugar:1>[1]#_g30200_|
    (gx#core-quote-syntax 'values))
  (define |gerbil/core::<sugar>::<sugar:1>[1]#_g30203_|
    (gx#core-quote-syntax '=>))
  (define |gerbil/core::<sugar>::<sugar:1>[1]#_g30204_|
    (gx#core-quote-syntax 'else))
  (define |gerbil/core::<sugar>::<sugar:1>[1]#_g30205_|
    (gx#core-quote-syntax 'else))
  (begin
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#defrules|
      (lambda (_$stx1628_)
        (let ((_g16321660_
               (lambda (_g16331656_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g16331656_))))
          (let ((_g16311761_
                 (lambda (_g16331664_)
                   (if (gx#stx-pair? _g16331664_)
                       (let ((_e16371667_ (gx#syntax-e _g16331664_)))
                         (let ((_hd16381671_ (##car _e16371667_))
                               (_tl16391674_ (##cdr _e16371667_)))
                           (if (gx#stx-pair? _tl16391674_)
                               (let ((_e16401677_ (gx#syntax-e _tl16391674_)))
                                 (let ((_hd16411681_ (##car _e16401677_))
                                       (_tl16421684_ (##cdr _e16401677_)))
                                   (if (gx#stx-pair? _tl16421684_)
                                       (let ((_e16431687_
                                              (gx#syntax-e _tl16421684_)))
                                         (let ((_hd16441691_
                                                (##car _e16431687_))
                                               (_tl16451694_
                                                (##cdr _e16431687_)))
                                           (if (gx#stx-pair/null? _tl16451694_)
                                               (if (fx>= (gx#stx-length
                                                          _tl16451694_)
                                                         '0)
                                                   (let ((_g30171_
                                                          (gx#syntax-split-splice
                                                           _tl16451694_
                                                           '0)))
                                                     (begin
                                                       (let ((_g30172_
                                                              (values-count
                                                               _g30171_)))
                                                         (if (not (fx= _g30172_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g30172_)))
               (let ((_target16461697_ (values-ref _g30171_ 0))
                     (_tl16481700_ (values-ref _g30171_ 1)))
                 (if (gx#stx-null? _tl16481700_)
                     (letrec ((_loop16491703_
                               (lambda (_hd16471707_ _clauses16531710_)
                                 (if (gx#stx-pair? _hd16471707_)
                                     (let ((_e16501713_
                                            (gx#syntax-e _hd16471707_)))
                                       (let ((_lp-hd16511717_
                                              (##car _e16501713_))
                                             (_lp-tl16521720_
                                              (##cdr _e16501713_)))
                                         (_loop16491703_
                                          _lp-tl16521720_
                                          (cons _lp-hd16511717_
                                                _clauses16531710_))))
                                     (let ((_clauses16541723_
                                            (reverse _clauses16531710_)))
                                       ((lambda (_L1727_ _L1729_ _L1730_)
                                          (if (gx#identifier? _L1730_)
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'define-syntax)
                                                    (cons _L1730_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'syntax-rules)
                              (cons _L1729_
                                    (begin
                                      '#!void
                                      (foldr (lambda (_g17521755_ _g17531758_)
                                               (cons _g17521755_ _g17531758_))
                                             '()
                                             _L1727_))))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g16321660_ _g16331664_)))
                                        _clauses16541723_
                                        _hd16441691_
                                        _hd16411681_))))))
                       (_loop16491703_ _target16461697_ '()))
                     (_g16321660_ _g16331664_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g16321660_ _g16331664_))
                                               (_g16321660_ _g16331664_))))
                                       (_g16321660_ _g16331664_))))
                               (_g16321660_ _g16331664_))))
                       (_g16321660_ _g16331664_)))))
            (_g16311761_ _$stx1628_)))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#defsyntax%|
      (lambda (_$stx1766_)
        (let ((_g17711810_
               (lambda (_g17721806_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g17721806_))))
          (let ((_g17701865_
                 (lambda (_g17721814_)
                   (if (gx#stx-pair? _g17721814_)
                       (let ((_e17961817_ (gx#syntax-e _g17721814_)))
                         (let ((_hd17971821_ (##car _e17961817_))
                               (_tl17981824_ (##cdr _e17961817_)))
                           (if (gx#stx-pair? _tl17981824_)
                               (let ((_e17991827_ (gx#syntax-e _tl17981824_)))
                                 (let ((_hd18001831_ (##car _e17991827_))
                                       (_tl18011834_ (##cdr _e17991827_)))
                                   (if (gx#stx-pair? _tl18011834_)
                                       (let ((_e18021837_
                                              (gx#syntax-e _tl18011834_)))
                                         (let ((_hd18031841_
                                                (##car _e18021837_))
                                               (_tl18041844_
                                                (##cdr _e18021837_)))
                                           (if (gx#stx-null? _tl18041844_)
                                               ((lambda (_L1847_ _L1849_)
                                                  (if (gx#identifier? _L1849_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'define-syntax)
                                                            (cons _L1849_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L1847_ '())))
              (_g17711810_ _g17721814_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd18031841_
                                                _hd18001831_)
                                               (_g17711810_ _g17721814_))))
                                       (_g17711810_ _g17721814_))))
                               (_g17711810_ _g17721814_))))
                       (_g17711810_ _g17721814_)))))
            (let ((_g17691963_
                   (lambda (_g17721869_)
                     (if (gx#stx-pair? _g17721869_)
                         (let ((_e17761872_ (gx#syntax-e _g17721869_)))
                           (let ((_hd17771876_ (##car _e17761872_))
                                 (_tl17781879_ (##cdr _e17761872_)))
                             (if (gx#stx-pair? _tl17781879_)
                                 (let ((_e17791882_
                                        (gx#syntax-e _tl17781879_)))
                                   (let ((_hd17801886_ (##car _e17791882_))
                                         (_tl17811889_ (##cdr _e17791882_)))
                                     (if (gx#stx-pair? _hd17801886_)
                                         (let ((_e17821892_
                                                (gx#syntax-e _hd17801886_)))
                                           (let ((_hd17831896_
                                                  (##car _e17821892_))
                                                 (_tl17841899_
                                                  (##cdr _e17821892_)))
                                             (if (gx#stx-pair/null?
                                                  _tl17811889_)
                                                 (if (fx>= (gx#stx-length
                                                            _tl17811889_)
                                                           '0)
                                                     (let ((_g30173_
                                                            (gx#syntax-split-splice
                                                             _tl17811889_
                                                             '0)))
                                                       (begin
                                                         (let ((_g30174_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g30173_)))
                   (if (not (fx= _g30174_ 2))
                       (error "Context expects 2 values" _g30174_)))
                 (let ((_target17851902_ (values-ref _g30173_ 0))
                       (_tl17871905_ (values-ref _g30173_ 1)))
                   (if (gx#stx-null? _tl17871905_)
                       (letrec ((_loop17881908_
                                 (lambda (_hd17861912_ _body17921915_)
                                   (if (gx#stx-pair? _hd17861912_)
                                       (let ((_e17891918_
                                              (gx#syntax-e _hd17861912_)))
                                         (let ((_lp-hd17901922_
                                                (##car _e17891918_))
                                               (_lp-tl17911925_
                                                (##cdr _e17891918_)))
                                           (_loop17881908_
                                            _lp-tl17911925_
                                            (cons _lp-hd17901922_
                                                  _body17921915_))))
                                       (let ((_body17931928_
                                              (reverse _body17921915_)))
                                         ((lambda (_L1932_ _L1934_ _L1935_)
                                            (if (gx#identifier? _L1935_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'define-syntax)
                                                      (cons _L1935_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'lambda%)
                                (cons _L1934_
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g19541957_
                                                        _g19551960_)
                                                 (cons _g19541957_
                                                       _g19551960_))
                                               '()
                                               _L1932_))))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g17701865_ _g17721869_)))
                                          _body17931928_
                                          _tl17841899_
                                          _hd17831896_))))))
                         (_loop17881908_ _target17851902_ '()))
                       (_g17701865_ _g17721869_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g17701865_ _g17721869_))
                                                 (_g17701865_ _g17721869_))))
                                         (_g17701865_ _g17721869_))))
                                 (_g17701865_ _g17721869_))))
                         (_g17701865_ _g17721869_)))))
              (_g17691963_ _$stx1766_))))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#defalias|
      (lambda (_$stx1968_)
        (let ((_g19721990_
               (lambda (_g19731986_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g19731986_))))
          (let ((_g19712045_
                 (lambda (_g19731994_)
                   (if (gx#stx-pair? _g19731994_)
                       (let ((_e19761997_ (gx#syntax-e _g19731994_)))
                         (let ((_hd19772001_ (##car _e19761997_))
                               (_tl19782004_ (##cdr _e19761997_)))
                           (if (gx#stx-pair? _tl19782004_)
                               (let ((_e19792007_ (gx#syntax-e _tl19782004_)))
                                 (let ((_hd19802011_ (##car _e19792007_))
                                       (_tl19812014_ (##cdr _e19792007_)))
                                   (if (gx#stx-pair? _tl19812014_)
                                       (let ((_e19822017_
                                              (gx#syntax-e _tl19812014_)))
                                         (let ((_hd19832021_
                                                (##car _e19822017_))
                                               (_tl19842024_
                                                (##cdr _e19822017_)))
                                           (if (gx#stx-null? _tl19842024_)
                                               ((lambda (_L2027_ _L2029_)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'define-alias)
                                                        (cons _L2029_
                                                              (cons _L2027_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd19832021_
                                                _hd19802011_)
                                               (_g19721990_ _g19731994_))))
                                       (_g19721990_ _g19731994_))))
                               (_g19721990_ _g19731994_))))
                       (_g19721990_ _g19731994_)))))
            (_g19712045_ _$stx1968_)))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#define|
      (lambda (_$stx2049_)
        (let ((_g20542093_
               (lambda (_g20552089_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g20552089_))))
          (let ((_g20532148_
                 (lambda (_g20552097_)
                   (if (gx#stx-pair? _g20552097_)
                       (let ((_e20792100_ (gx#syntax-e _g20552097_)))
                         (let ((_hd20802104_ (##car _e20792100_))
                               (_tl20812107_ (##cdr _e20792100_)))
                           (if (gx#stx-pair? _tl20812107_)
                               (let ((_e20822110_ (gx#syntax-e _tl20812107_)))
                                 (let ((_hd20832114_ (##car _e20822110_))
                                       (_tl20842117_ (##cdr _e20822110_)))
                                   (if (gx#stx-pair? _tl20842117_)
                                       (let ((_e20852120_
                                              (gx#syntax-e _tl20842117_)))
                                         (let ((_hd20862124_
                                                (##car _e20852120_))
                                               (_tl20872127_
                                                (##cdr _e20852120_)))
                                           (if (gx#stx-null? _tl20872127_)
                                               ((lambda (_L2130_ _L2132_)
                                                  (if (gx#identifier? _L2132_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'define-values)
                                                            (cons (cons _L2132_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons _L2130_ '())))
              (_g20542093_ _g20552097_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd20862124_
                                                _hd20832114_)
                                               (_g20542093_ _g20552097_))))
                                       (_g20542093_ _g20552097_))))
                               (_g20542093_ _g20552097_))))
                       (_g20542093_ _g20552097_)))))
            (let ((_g20522246_
                   (lambda (_g20552152_)
                     (if (gx#stx-pair? _g20552152_)
                         (let ((_e20592155_ (gx#syntax-e _g20552152_)))
                           (let ((_hd20602159_ (##car _e20592155_))
                                 (_tl20612162_ (##cdr _e20592155_)))
                             (if (gx#stx-pair? _tl20612162_)
                                 (let ((_e20622165_
                                        (gx#syntax-e _tl20612162_)))
                                   (let ((_hd20632169_ (##car _e20622165_))
                                         (_tl20642172_ (##cdr _e20622165_)))
                                     (if (gx#stx-pair? _hd20632169_)
                                         (let ((_e20652175_
                                                (gx#syntax-e _hd20632169_)))
                                           (let ((_hd20662179_
                                                  (##car _e20652175_))
                                                 (_tl20672182_
                                                  (##cdr _e20652175_)))
                                             (if (gx#stx-pair/null?
                                                  _tl20642172_)
                                                 (if (fx>= (gx#stx-length
                                                            _tl20642172_)
                                                           '0)
                                                     (let ((_g30175_
                                                            (gx#syntax-split-splice
                                                             _tl20642172_
                                                             '0)))
                                                       (begin
                                                         (let ((_g30176_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g30175_)))
                   (if (not (fx= _g30176_ 2))
                       (error "Context expects 2 values" _g30176_)))
                 (let ((_target20682185_ (values-ref _g30175_ 0))
                       (_tl20702188_ (values-ref _g30175_ 1)))
                   (if (gx#stx-null? _tl20702188_)
                       (letrec ((_loop20712191_
                                 (lambda (_hd20692195_ _body20752198_)
                                   (if (gx#stx-pair? _hd20692195_)
                                       (let ((_e20722201_
                                              (gx#syntax-e _hd20692195_)))
                                         (let ((_lp-hd20732205_
                                                (##car _e20722201_))
                                               (_lp-tl20742208_
                                                (##cdr _e20722201_)))
                                           (_loop20712191_
                                            _lp-tl20742208_
                                            (cons _lp-hd20732205_
                                                  _body20752198_))))
                                       (let ((_body20762211_
                                              (reverse _body20752198_)))
                                         ((lambda (_L2215_ _L2217_ _L2218_)
                                            (if (gx#identifier? _L2218_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'define-values)
                                                      (cons (cons _L2218_ '())
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'lambda%)
                                (cons _L2217_
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g22372240_
                                                        _g22382243_)
                                                 (cons _g22372240_
                                                       _g22382243_))
                                               '()
                                               _L2215_))))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g20532148_ _g20552152_)))
                                          _body20762211_
                                          _tl20672182_
                                          _hd20662179_))))))
                         (_loop20712191_ _target20682185_ '()))
                       (_g20532148_ _g20552152_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g20532148_ _g20552152_))
                                                 (_g20532148_ _g20552152_))))
                                         (_g20532148_ _g20552152_))))
                                 (_g20532148_ _g20552152_))))
                         (_g20532148_ _g20552152_)))))
              (_g20522246_ _$stx2049_))))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#let*-values|
      (lambda (_$stx2251_)
        (let ((_g22562301_
               (lambda (_g22572297_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g22572297_))))
          (let ((_g22552402_
                 (lambda (_g22572305_)
                   (if (gx#stx-pair? _g22572305_)
                       (let ((_e22782308_ (gx#syntax-e _g22572305_)))
                         (let ((_hd22792312_ (##car _e22782308_))
                               (_tl22802315_ (##cdr _e22782308_)))
                           (if (gx#stx-pair? _tl22802315_)
                               (let ((_e22812318_ (gx#syntax-e _tl22802315_)))
                                 (let ((_hd22822322_ (##car _e22812318_))
                                       (_tl22832325_ (##cdr _e22812318_)))
                                   (if (gx#stx-pair? _hd22822322_)
                                       (let ((_e22842328_
                                              (gx#syntax-e _hd22822322_)))
                                         (let ((_hd22852332_
                                                (##car _e22842328_))
                                               (_tl22862335_
                                                (##cdr _e22842328_)))
                                           (if (gx#stx-pair/null? _tl22832325_)
                                               (if (fx>= (gx#stx-length
                                                          _tl22832325_)
                                                         '0)
                                                   (let ((_g30177_
                                                          (gx#syntax-split-splice
                                                           _tl22832325_
                                                           '0)))
                                                     (begin
                                                       (let ((_g30178_
                                                              (values-count
                                                               _g30177_)))
                                                         (if (not (fx= _g30178_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g30178_)))
               (let ((_target22872338_ (values-ref _g30177_ 0))
                     (_tl22892341_ (values-ref _g30177_ 1)))
                 (if (gx#stx-null? _tl22892341_)
                     (letrec ((_loop22902344_
                               (lambda (_hd22882348_ _body22942351_)
                                 (if (gx#stx-pair? _hd22882348_)
                                     (let ((_e22912354_
                                            (gx#syntax-e _hd22882348_)))
                                       (let ((_lp-hd22922358_
                                              (##car _e22912354_))
                                             (_lp-tl22932361_
                                              (##cdr _e22912354_)))
                                         (_loop22902344_
                                          _lp-tl22932361_
                                          (cons _lp-hd22922358_
                                                _body22942351_))))
                                     (let ((_body22952364_
                                            (reverse _body22942351_)))
                                       ((lambda (_L2368_
                                                 _L2370_
                                                 _L2371_
                                                 _L2372_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'let-values)
                                                (cons (cons _L2371_ '())
                                                      (cons (cons _L2372_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L2370_
                                (begin
                                  '#!void
                                  (foldr (lambda (_g23932396_ _g23942399_)
                                           (cons _g23932396_ _g23942399_))
                                         '()
                                         _L2368_))))
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _body22952364_
                                        _tl22862335_
                                        _hd22852332_
                                        _hd22792312_))))))
                       (_loop22902344_ _target22872338_ '()))
                     (_g22562301_ _g22572305_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g22562301_ _g22572305_))
                                               (_g22562301_ _g22572305_))))
                                       (_g22562301_ _g22572305_))))
                               (_g22562301_ _g22572305_))))
                       (_g22562301_ _g22572305_)))))
            (let ((_g22542484_
                   (lambda (_g22572406_)
                     (if (gx#stx-pair? _g22572406_)
                         (let ((_e22592409_ (gx#syntax-e _g22572406_)))
                           (let ((_hd22602413_ (##car _e22592409_))
                                 (_tl22612416_ (##cdr _e22592409_)))
                             (if (gx#stx-pair? _tl22612416_)
                                 (let ((_e22622419_
                                        (gx#syntax-e _tl22612416_)))
                                   (let ((_hd22632423_ (##car _e22622419_))
                                         (_tl22642426_ (##cdr _e22622419_)))
                                     (if (gx#stx-null? _hd22632423_)
                                         (if (gx#stx-pair/null? _tl22642426_)
                                             (if (fx>= (gx#stx-length
                                                        _tl22642426_)
                                                       '0)
                                                 (let ((_g30179_
                                                        (gx#syntax-split-splice
                                                         _tl22642426_
                                                         '0)))
                                                   (begin
                                                     (let ((_g30180_
                                                            (values-count
                                                             _g30179_)))
                                                       (if (not (fx= _g30180_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g30180_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target22652429_
                                                            (values-ref
                                                             _g30179_
                                                             0))
                                                           (_tl22672432_
                                                            (values-ref
                                                             _g30179_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl22672432_)
                                                           (letrec ((_loop22682435_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd22662439_ _body22722442_)
                               (if (gx#stx-pair? _hd22662439_)
                                   (let ((_e22692445_
                                          (gx#syntax-e _hd22662439_)))
                                     (let ((_lp-hd22702449_
                                            (##car _e22692445_))
                                           (_lp-tl22712452_
                                            (##cdr _e22692445_)))
                                       (_loop22682435_
                                        _lp-tl22712452_
                                        (cons _lp-hd22702449_
                                              _body22722442_))))
                                   (let ((_body22732455_
                                          (reverse _body22722442_)))
                                     ((lambda (_L2459_)
                                        (cons (gx#datum->syntax
                                               '#f
                                               'let-values)
                                              (cons '()
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g24752478_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g24762481_)
                       (cons _g24752478_ _g24762481_))
                     '()
                     _L2459_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _body22732455_))))))
                     (_loop22682435_ _target22652429_ '()))
                   (_g22552402_ _g22572406_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g22552402_ _g22572406_))
                                             (_g22552402_ _g22572406_))
                                         (_g22552402_ _g22572406_))))
                                 (_g22552402_ _g22572406_))))
                         (_g22552402_ _g22572406_)))))
              (_g22542484_ _$stx2251_))))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#let|
      (lambda (_$stx2490_)
        (let ((_g24952559_
               (lambda (_g24962555_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g24962555_))))
          (let ((_g24942644_
                 (lambda (_g24962563_)
                   (if (gx#stx-pair? _g24962563_)
                       (let ((_e25392566_ (gx#syntax-e _g24962563_)))
                         (let ((_hd25402570_ (##car _e25392566_))
                               (_tl25412573_ (##cdr _e25392566_)))
                           (if (gx#stx-pair? _tl25412573_)
                               (let ((_e25422576_ (gx#syntax-e _tl25412573_)))
                                 (let ((_hd25432580_ (##car _e25422576_))
                                       (_tl25442583_ (##cdr _e25422576_)))
                                   (if (gx#stx-pair/null? _tl25442583_)
                                       (if (fx>= (gx#stx-length _tl25442583_)
                                                 '0)
                                           (let ((_g30181_
                                                  (gx#syntax-split-splice
                                                   _tl25442583_
                                                   '0)))
                                             (begin
                                               (let ((_g30182_
                                                      (values-count _g30181_)))
                                                 (if (not (fx= _g30182_ 2))
                                                     (error "Context expects 2 values"
                                                            _g30182_)))
                                               (let ((_target25452586_
                                                      (values-ref _g30181_ 0))
                                                     (_tl25472589_
                                                      (values-ref _g30181_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl25472589_)
                                                     (letrec ((_loop25482592_
                                                               (lambda (_hd25462596_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _body25522599_)
                         (if (gx#stx-pair? _hd25462596_)
                             (let ((_e25492602_ (gx#syntax-e _hd25462596_)))
                               (let ((_lp-hd25502606_ (##car _e25492602_))
                                     (_lp-tl25512609_ (##cdr _e25492602_)))
                                 (_loop25482592_
                                  _lp-tl25512609_
                                  (cons _lp-hd25502606_ _body25522599_))))
                             (let ((_body25532612_ (reverse _body25522599_)))
                               ((lambda (_L2616_ _L2618_)
                                  (cons (gx#datum->syntax '#f '~let)
                                        (cons (gx#datum->syntax
                                               '#f
                                               'let-values)
                                              (cons _L2618_
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g26352638_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g26362641_)
                       (cons _g26352638_ _g26362641_))
                     '()
                     _L2616_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _body25532612_
                                _hd25432580_))))))
               (_loop25482592_ _target25452586_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g24952559_
                                                      _g24962563_)))))
                                           (_g24952559_ _g24962563_))
                                       (_g24952559_ _g24962563_))))
                               (_g24952559_ _g24962563_))))
                       (_g24952559_ _g24962563_)))))
            (let ((_g24932820_
                   (lambda (_g24962648_)
                     (if (gx#stx-pair? _g24962648_)
                         (let ((_e25022651_ (gx#syntax-e _g24962648_)))
                           (let ((_hd25032655_ (##car _e25022651_))
                                 (_tl25042658_ (##cdr _e25022651_)))
                             (if (gx#stx-pair? _tl25042658_)
                                 (let ((_e25052661_
                                        (gx#syntax-e _tl25042658_)))
                                   (let ((_hd25062665_ (##car _e25052661_))
                                         (_tl25072668_ (##cdr _e25052661_)))
                                     (if (gx#stx-pair? _tl25072668_)
                                         (let ((_e25082671_
                                                (gx#syntax-e _tl25072668_)))
                                           (let ((_hd25092675_
                                                  (##car _e25082671_))
                                                 (_tl25102678_
                                                  (##cdr _e25082671_)))
                                             (if (gx#stx-pair/null?
                                                  _hd25092675_)
                                                 (if (fx>= (gx#stx-length
                                                            _hd25092675_)
                                                           '0)
                                                     (let ((_g30183_
                                                            (gx#syntax-split-splice
                                                             _hd25092675_
                                                             '0)))
                                                       (begin
                                                         (let ((_g30184_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g30183_)))
                   (if (not (fx= _g30184_ 2))
                       (error "Context expects 2 values" _g30184_)))
                 (let ((_target25112681_ (values-ref _g30183_ 0))
                       (_tl25132684_ (values-ref _g30183_ 1)))
                   (letrec ((_loop25142687_
                             (lambda (_hd25122691_ _arg25182694_ _var25192696_)
                               (if (gx#stx-pair? _hd25122691_)
                                   (let ((_e25152699_
                                          (gx#syntax-e _hd25122691_)))
                                     (let ((_lp-hd25162703_
                                            (##car _e25152699_))
                                           (_lp-tl25172706_
                                            (##cdr _e25152699_)))
                                       (if (gx#stx-pair? _lp-hd25162703_)
                                           (let ((_e25222709_
                                                  (gx#syntax-e
                                                   _lp-hd25162703_)))
                                             (let ((_hd25232713_
                                                    (##car _e25222709_))
                                                   (_tl25242716_
                                                    (##cdr _e25222709_)))
                                               (if (gx#stx-pair? _tl25242716_)
                                                   (let ((_e25252719_
                                                          (gx#syntax-e
                                                           _tl25242716_)))
                                                     (let ((_hd25262723_
                                                            (##car _e25252719_))
                                                           (_tl25272726_
                                                            (##cdr _e25252719_)))
                                                       (if (gx#stx-null?
                                                            _tl25272726_)
                                                           (_loop25142687_
                                                            _lp-tl25172706_
                                                            (cons _hd25262723_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _arg25182694_)
                    (cons _hd25232713_ _var25192696_))
                   (_g24942644_ _g24962648_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g24942644_ _g24962648_))))
                                           (_g24942644_ _g24962648_))))
                                   (let ((_arg25202729_
                                          (reverse _arg25182694_))
                                         (_var25212732_
                                          (reverse _var25192696_)))
                                     (if (gx#stx-pair/null? _tl25102678_)
                                         (if (fx>= (gx#stx-length _tl25102678_)
                                                   '0)
                                             (let ((_g30185_
                                                    (gx#syntax-split-splice
                                                     _tl25102678_
                                                     '0)))
                                               (begin
                                                 (let ((_g30186_
                                                        (values-count
                                                         _g30185_)))
                                                   (if (not (fx= _g30186_ 2))
                                                       (error "Context expects 2 values"
                                                              _g30186_)))
                                                 (let ((_target25282735_
                                                        (values-ref
                                                         _g30185_
                                                         0))
                                                       (_tl25302738_
                                                        (values-ref
                                                         _g30185_
                                                         1)))
                                                   (if (gx#stx-null?
                                                        _tl25302738_)
                                                       (letrec ((_loop25312741_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd25292745_ _body25352748_)
                           (if (gx#stx-pair? _hd25292745_)
                               (let ((_e25322751_ (gx#syntax-e _hd25292745_)))
                                 (let ((_lp-hd25332755_ (##car _e25322751_))
                                       (_lp-tl25342758_ (##cdr _e25322751_)))
                                   (_loop25312741_
                                    _lp-tl25342758_
                                    (cons _lp-hd25332755_ _body25352748_))))
                               (let ((_body25362761_ (reverse _body25352748_)))
                                 ((lambda (_L2765_
                                           _L2767_
                                           _L2768_
                                           _L2769_
                                           _L2770_)
                                    (if (gx#identifier? _L2770_)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'letrec-values)
                                                    (cons (cons (cons (cons _L2770_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '())
                              (cons (cons (gx#datum->syntax '#f 'lambda%)
                                          (cons (begin
                                                  '#!void
                                                  (foldr (lambda (_g27952802_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g27962805_)
                   (cons _g27952802_ _g27962805_))
                 _L2767_
                 _L2769_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (begin
                                                  '#!void
                                                  (foldr (lambda (_g27972808_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g27982811_)
                   (cons _g27972808_ _g27982811_))
                 '()
                 _L2765_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))
                        '())
                  (cons _L2770_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g27992814_
                                                                _g28002817_)
                                                         (cons _g27992814_
                                                               _g28002817_))
                                                       '()
                                                       _L2768_)))
                                        (_g24942644_ _g24962648_)))
                                  _body25362761_
                                  _tl25132684_
                                  _arg25202729_
                                  _var25212732_
                                  _hd25062665_))))))
                 (_loop25312741_ _target25282735_ '()))
               (_g24942644_ _g24962648_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g24942644_ _g24962648_))
                                         (_g24942644_ _g24962648_)))))))
                     (_loop25142687_ _target25112681_ '() '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g24942644_ _g24962648_))
                                                 (_g24942644_ _g24962648_))))
                                         (_g24942644_ _g24962648_))))
                                 (_g24942644_ _g24962648_))))
                         (_g24942644_ _g24962648_)))))
              (_g24932820_ _$stx2490_))))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#let*|
      (lambda (_$stx2827_)
        (let ((_g28312855_
               (lambda (_g28322851_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g28322851_))))
          (let ((_g28302940_
                 (lambda (_g28322859_)
                   (if (gx#stx-pair? _g28322859_)
                       (let ((_e28352862_ (gx#syntax-e _g28322859_)))
                         (let ((_hd28362866_ (##car _e28352862_))
                               (_tl28372869_ (##cdr _e28352862_)))
                           (if (gx#stx-pair? _tl28372869_)
                               (let ((_e28382872_ (gx#syntax-e _tl28372869_)))
                                 (let ((_hd28392876_ (##car _e28382872_))
                                       (_tl28402879_ (##cdr _e28382872_)))
                                   (if (gx#stx-pair/null? _tl28402879_)
                                       (if (fx>= (gx#stx-length _tl28402879_)
                                                 '0)
                                           (let ((_g30187_
                                                  (gx#syntax-split-splice
                                                   _tl28402879_
                                                   '0)))
                                             (begin
                                               (let ((_g30188_
                                                      (values-count _g30187_)))
                                                 (if (not (fx= _g30188_ 2))
                                                     (error "Context expects 2 values"
                                                            _g30188_)))
                                               (let ((_target28412882_
                                                      (values-ref _g30187_ 0))
                                                     (_tl28432885_
                                                      (values-ref _g30187_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl28432885_)
                                                     (letrec ((_loop28442888_
                                                               (lambda (_hd28422892_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _body28482895_)
                         (if (gx#stx-pair? _hd28422892_)
                             (let ((_e28452898_ (gx#syntax-e _hd28422892_)))
                               (let ((_lp-hd28462902_ (##car _e28452898_))
                                     (_lp-tl28472905_ (##cdr _e28452898_)))
                                 (_loop28442888_
                                  _lp-tl28472905_
                                  (cons _lp-hd28462902_ _body28482895_))))
                             (let ((_body28492908_ (reverse _body28482895_)))
                               ((lambda (_L2912_ _L2914_)
                                  (cons (gx#datum->syntax '#f '~let)
                                        (cons (gx#datum->syntax
                                               '#f
                                               'let*-values)
                                              (cons _L2914_
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g29312934_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g29322937_)
                       (cons _g29312934_ _g29322937_))
                     '()
                     _L2912_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _body28492908_
                                _hd28392876_))))))
               (_loop28442888_ _target28412882_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g28312855_
                                                      _g28322859_)))))
                                           (_g28312855_ _g28322859_))
                                       (_g28312855_ _g28322859_))))
                               (_g28312855_ _g28322859_))))
                       (_g28312855_ _g28322859_)))))
            (_g28302940_ _$stx2827_)))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#letrec|
      (lambda (_$stx2945_)
        (let ((_g29492973_
               (lambda (_g29502969_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g29502969_))))
          (let ((_g29483058_
                 (lambda (_g29502977_)
                   (if (gx#stx-pair? _g29502977_)
                       (let ((_e29532980_ (gx#syntax-e _g29502977_)))
                         (let ((_hd29542984_ (##car _e29532980_))
                               (_tl29552987_ (##cdr _e29532980_)))
                           (if (gx#stx-pair? _tl29552987_)
                               (let ((_e29562990_ (gx#syntax-e _tl29552987_)))
                                 (let ((_hd29572994_ (##car _e29562990_))
                                       (_tl29582997_ (##cdr _e29562990_)))
                                   (if (gx#stx-pair/null? _tl29582997_)
                                       (if (fx>= (gx#stx-length _tl29582997_)
                                                 '0)
                                           (let ((_g30189_
                                                  (gx#syntax-split-splice
                                                   _tl29582997_
                                                   '0)))
                                             (begin
                                               (let ((_g30190_
                                                      (values-count _g30189_)))
                                                 (if (not (fx= _g30190_ 2))
                                                     (error "Context expects 2 values"
                                                            _g30190_)))
                                               (let ((_target29593000_
                                                      (values-ref _g30189_ 0))
                                                     (_tl29613003_
                                                      (values-ref _g30189_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl29613003_)
                                                     (letrec ((_loop29623006_
                                                               (lambda (_hd29603010_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _body29663013_)
                         (if (gx#stx-pair? _hd29603010_)
                             (let ((_e29633016_ (gx#syntax-e _hd29603010_)))
                               (let ((_lp-hd29643020_ (##car _e29633016_))
                                     (_lp-tl29653023_ (##cdr _e29633016_)))
                                 (_loop29623006_
                                  _lp-tl29653023_
                                  (cons _lp-hd29643020_ _body29663013_))))
                             (let ((_body29673026_ (reverse _body29663013_)))
                               ((lambda (_L3030_ _L3032_)
                                  (cons (gx#datum->syntax '#f '~let)
                                        (cons (gx#datum->syntax
                                               '#f
                                               'letrec-values)
                                              (cons _L3032_
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g30493052_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g30503055_)
                       (cons _g30493052_ _g30503055_))
                     '()
                     _L3030_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _body29673026_
                                _hd29572994_))))))
               (_loop29623006_ _target29593000_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g29492973_
                                                      _g29502977_)))))
                                           (_g29492973_ _g29502977_))
                                       (_g29492973_ _g29502977_))))
                               (_g29492973_ _g29502977_))))
                       (_g29492973_ _g29502977_)))))
            (_g29483058_ _$stx2945_)))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#letrec*|
      (lambda (_$stx3063_)
        (let ((_g30673091_
               (lambda (_g30683087_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g30683087_))))
          (let ((_g30663176_
                 (lambda (_g30683095_)
                   (if (gx#stx-pair? _g30683095_)
                       (let ((_e30713098_ (gx#syntax-e _g30683095_)))
                         (let ((_hd30723102_ (##car _e30713098_))
                               (_tl30733105_ (##cdr _e30713098_)))
                           (if (gx#stx-pair? _tl30733105_)
                               (let ((_e30743108_ (gx#syntax-e _tl30733105_)))
                                 (let ((_hd30753112_ (##car _e30743108_))
                                       (_tl30763115_ (##cdr _e30743108_)))
                                   (if (gx#stx-pair/null? _tl30763115_)
                                       (if (fx>= (gx#stx-length _tl30763115_)
                                                 '0)
                                           (let ((_g30191_
                                                  (gx#syntax-split-splice
                                                   _tl30763115_
                                                   '0)))
                                             (begin
                                               (let ((_g30192_
                                                      (values-count _g30191_)))
                                                 (if (not (fx= _g30192_ 2))
                                                     (error "Context expects 2 values"
                                                            _g30192_)))
                                               (let ((_target30773118_
                                                      (values-ref _g30191_ 0))
                                                     (_tl30793121_
                                                      (values-ref _g30191_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl30793121_)
                                                     (letrec ((_loop30803124_
                                                               (lambda (_hd30783128_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _body30843131_)
                         (if (gx#stx-pair? _hd30783128_)
                             (let ((_e30813134_ (gx#syntax-e _hd30783128_)))
                               (let ((_lp-hd30823138_ (##car _e30813134_))
                                     (_lp-tl30833141_ (##cdr _e30813134_)))
                                 (_loop30803124_
                                  _lp-tl30833141_
                                  (cons _lp-hd30823138_ _body30843131_))))
                             (let ((_body30853144_ (reverse _body30843131_)))
                               ((lambda (_L3148_ _L3150_)
                                  (cons (gx#datum->syntax '#f '~let)
                                        (cons (gx#datum->syntax
                                               '#f
                                               'letrec*-values)
                                              (cons _L3150_
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g31673170_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g31683173_)
                       (cons _g31673170_ _g31683173_))
                     '()
                     _L3148_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _body30853144_
                                _hd30753112_))))))
               (_loop30803124_ _target30773118_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g30673091_
                                                      _g30683095_)))))
                                           (_g30673091_ _g30683095_))
                                       (_g30673091_ _g30683095_))))
                               (_g30673091_ _g30683095_))))
                       (_g30673091_ _g30683095_)))))
            (_g30663176_ _$stx3063_)))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#~let|
      (lambda (_stx3181_)
        (let ((_let-head?3184_
               (lambda (_x3664_)
                 (let ((_g36683679_
                        (lambda (_g36693675_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g36693675_))))
                   (let ((_g36673690_
                          (lambda (_g36693683_)
                            ((lambda () (gx#identifier? _x3664_))))))
                     (let ((_g36663720_
                            (lambda (_g36693694_)
                              (if (gx#stx-pair? _g36693694_)
                                  (let ((_e36713697_
                                         (gx#syntax-e _g36693694_)))
                                    (let ((_hd36723701_ (##car _e36713697_))
                                          (_tl36733704_ (##cdr _e36713697_)))
                                      (if (gx#identifier? _hd36723701_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core::<sugar>::<sugar:1>[1]#_g30200_|
                                               _hd36723701_)
                                              ((lambda (_L3707_)
                                                 (gx#stx-andmap
                                                  gx#identifier?
                                                  _L3707_))
                                               _tl36733704_)
                                              (_g36673690_ _g36693694_))
                                          (_g36673690_ _g36693694_))))
                                  (_g36673690_ _g36693694_)))))
                       (_g36663720_ _x3664_)))))))
          (let ((_let-head3186_
                 (lambda (_x3604_)
                   (let ((_g36083619_
                          (lambda (_g36093615_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g36093615_))))
                     (let ((_g36073630_
                            (lambda (_g36093623_)
                              ((lambda () (list _x3604_))))))
                       (let ((_g36063660_
                              (lambda (_g36093634_)
                                (if (gx#stx-pair? _g36093634_)
                                    (let ((_e36113637_
                                           (gx#syntax-e _g36093634_)))
                                      (let ((_hd36123641_ (##car _e36113637_))
                                            (_tl36133644_ (##cdr _e36113637_)))
                                        (if (gx#identifier? _hd36123641_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core::<sugar>::<sugar:1>[1]#_g30199_|
                                                 _hd36123641_)
                                                ((lambda (_L3647_) _L3647_)
                                                 _tl36133644_)
                                                (_g36073630_ _g36093634_))
                                            (_g36073630_ _g36093634_))))
                                    (_g36073630_ _g36093634_)))))
                         (_g36063660_ _x3604_)))))))
            (let ((_g31893255_
                   (lambda (_g31903251_)
                     (gx#raise-syntax-error '#f '"Bad syntax" _g31903251_))))
              (let ((_g31883516_
                     (lambda (_g31903259_)
                       (if (gx#stx-pair? _g31903259_)
                           (let ((_e32153262_ (gx#syntax-e _g31903259_)))
                             (let ((_hd32163266_ (##car _e32153262_))
                                   (_tl32173269_ (##cdr _e32153262_)))
                               (if (gx#stx-pair? _tl32173269_)
                                   (let ((_e32183272_
                                          (gx#syntax-e _tl32173269_)))
                                     (let ((_hd32193276_ (##car _e32183272_))
                                           (_tl32203279_ (##cdr _e32183272_)))
                                       (if (gx#stx-pair? _tl32203279_)
                                           (let ((_e32213282_
                                                  (gx#syntax-e _tl32203279_)))
                                             (let ((_hd32223286_
                                                    (##car _e32213282_))
                                                   (_tl32233289_
                                                    (##cdr _e32213282_)))
                                               (if (gx#stx-pair/null?
                                                    _hd32223286_)
                                                   (if (fx>= (gx#stx-length
                                                              _hd32223286_)
                                                             '0)
                                                       (let ((_g30193_
                                                              (gx#syntax-split-splice
                                                               _hd32223286_
                                                               '0)))
                                                         (begin
                                                           (let ((_g30194_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g30193_)))
                     (if (not (fx= _g30194_ 2))
                         (error "Context expects 2 values" _g30194_)))
                   (let ((_target32243292_ (values-ref _g30193_ 0))
                         (_tl32263295_ (values-ref _g30193_ 1)))
                     (if (gx#stx-null? _tl32263295_)
                         (letrec ((_loop32273298_
                                   (lambda (_hd32253302_
                                            _e32313305_
                                            _hd32323307_)
                                     (if (gx#stx-pair? _hd32253302_)
                                         (let ((_e32283310_
                                                (gx#syntax-e _hd32253302_)))
                                           (let ((_lp-hd32293314_
                                                  (##car _e32283310_))
                                                 (_lp-tl32303317_
                                                  (##cdr _e32283310_)))
                                             (if (gx#stx-pair? _lp-hd32293314_)
                                                 (let ((_e32353320_
                                                        (gx#syntax-e
                                                         _lp-hd32293314_)))
                                                   (let ((_hd32363324_
                                                          (##car _e32353320_))
                                                         (_tl32373327_
                                                          (##cdr _e32353320_)))
                                                     (if (gx#stx-pair?
                                                          _tl32373327_)
                                                         (let ((_e32383330_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl32373327_)))
                   (let ((_hd32393334_ (##car _e32383330_))
                         (_tl32403337_ (##cdr _e32383330_)))
                     (if (gx#stx-null? _tl32403337_)
                         (_loop32273298_
                          _lp-tl32303317_
                          (cons _hd32393334_ _e32313305_)
                          (cons _hd32363324_ _hd32323307_))
                         (_g31893255_ _g31903259_))))
                 (_g31893255_ _g31903259_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g31893255_ _g31903259_))))
                                         (let ((_e32333340_
                                                (reverse _e32313305_))
                                               (_hd32343343_
                                                (reverse _hd32323307_)))
                                           (if (gx#stx-pair/null? _tl32233289_)
                                               (if (fx>= (gx#stx-length
                                                          _tl32233289_)
                                                         '0)
                                                   (let ((_g30195_
                                                          (gx#syntax-split-splice
                                                           _tl32233289_
                                                           '0)))
                                                     (begin
                                                       (let ((_g30196_
                                                              (values-count
                                                               _g30195_)))
                                                         (if (not (fx= _g30196_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g30196_)))
               (let ((_target32413346_ (values-ref _g30195_ 0))
                     (_tl32433349_ (values-ref _g30195_ 1)))
                 (if (gx#stx-null? _tl32433349_)
                     (letrec ((_loop32443352_
                               (lambda (_hd32423356_ _body32483359_)
                                 (if (gx#stx-pair? _hd32423356_)
                                     (let ((_e32453362_
                                            (gx#syntax-e _hd32423356_)))
                                       (let ((_lp-hd32463366_
                                              (##car _e32453362_))
                                             (_lp-tl32473369_
                                              (##cdr _e32453362_)))
                                         (_loop32443352_
                                          _lp-tl32473369_
                                          (cons _lp-hd32463366_
                                                _body32483359_))))
                                     (let ((_body32493372_
                                            (reverse _body32483359_)))
                                       ((lambda (_L3376_
                                                 _L3378_
                                                 _L3379_
                                                 _L3380_)
                                          (if (gx#stx-andmap
                                               _let-head?3184_
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g34063409_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g34073412_)
                  (cons _g34063409_ _g34073412_))
                '()
                _L3379_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g34153432_
                                                     (lambda (_g34163428_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g34163428_))))
                                                (let ((_g34143504_
                                                       (lambda (_g34163436_)
                                                         (if (gx#stx-pair/null?
                                                              _g34163436_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g34163436_)
                               '0)
                         (let ((_g30197_
                                (gx#syntax-split-splice _g34163436_ '0)))
                           (begin
                             (let ((_g30198_ (values-count _g30197_)))
                               (if (not (fx= _g30198_ 2))
                                   (error "Context expects 2 values"
                                          _g30198_)))
                             (let ((_target34183439_ (values-ref _g30197_ 0))
                                   (_tl34203442_ (values-ref _g30197_ 1)))
                               (if (gx#stx-null? _tl34203442_)
                                   (letrec ((_loop34213445_
                                             (lambda (_hd34193449_
                                                      _hd-bind34253452_)
                                               (if (gx#stx-pair? _hd34193449_)
                                                   (let ((_e34223455_
                                                          (gx#syntax-e
                                                           _hd34193449_)))
                                                     (let ((_lp-hd34233459_
                                                            (##car _e34223455_))
                                                           (_lp-tl34243462_
                                                            (##cdr _e34223455_)))
                                                       (_loop34213445_
                                                        _lp-tl34243462_
                                                        (cons _lp-hd34233459_
                                                              _hd-bind34253452_))))
                                                   (let ((_hd-bind34263465_
                                                          (reverse _hd-bind34253452_)))
                                                     ((lambda (_L3469_)
                                                        (let ()
                                                          (cons _L3380_
                                                                (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (gx#syntax-check-splice-targets
                                 _L3378_
                                 _L3469_)
                                (foldr (lambda (_g34843490_
                                                _g34853493_
                                                _g34863495_)
                                         (cons (cons _g34853493_
                                                     (cons _g34843490_ '()))
                                               _g34863495_))
                                       '()
                                       _L3378_
                                       _L3469_))
                              (begin
                                '#!void
                                (foldr (lambda (_g34873498_ _g34883501_)
                                         (cons _g34873498_ _g34883501_))
                                       '()
                                       _L3376_))))))
              _hd-bind34263465_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop34213445_ _target34183439_ '()))
                                   (_g34153432_ _g34163436_)))))
                         (_g34153432_ _g34163436_))
                     (_g34153432_ _g34163436_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g34143504_
                                                   (gx#stx-map
                                                    _let-head3186_
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g35073510_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g35083513_)
                       (cons _g35073510_ _g35083513_))
                     '()
                     _L3379_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g31893255_ _g31903259_)))
                                        _body32493372_
                                        _e32333340_
                                        _hd32343343_
                                        _hd32193276_))))))
                       (_loop32443352_ _target32413346_ '()))
                     (_g31893255_ _g31903259_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g31893255_ _g31903259_))
                                               (_g31893255_ _g31903259_)))))))
                           (_loop32273298_ _target32243292_ '() '()))
                         (_g31893255_ _g31903259_)))))
               (_g31893255_ _g31903259_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g31893255_ _g31903259_))))
                                           (_g31893255_ _g31903259_))))
                                   (_g31893255_ _g31903259_))))
                           (_g31893255_ _g31903259_)))))
                (let ((_g31873600_
                       (lambda (_g31903520_)
                         (if (gx#stx-pair? _g31903520_)
                             (let ((_e31963523_ (gx#syntax-e _g31903520_)))
                               (let ((_hd31973527_ (##car _e31963523_))
                                     (_tl31983530_ (##cdr _e31963523_)))
                                 (if (gx#stx-pair? _tl31983530_)
                                     (let ((_e31993533_
                                            (gx#syntax-e _tl31983530_)))
                                       (let ((_hd32003537_ (##car _e31993533_))
                                             (_tl32013540_
                                              (##cdr _e31993533_)))
                                         (if (gx#stx-pair? _tl32013540_)
                                             (let ((_e32023543_
                                                    (gx#syntax-e
                                                     _tl32013540_)))
                                               (let ((_hd32033547_
                                                      (##car _e32023543_))
                                                     (_tl32043550_
                                                      (##cdr _e32023543_)))
                                                 (if (gx#stx-pair?
                                                      _hd32033547_)
                                                     (let ((_e32053553_
                                                            (gx#syntax-e
                                                             _hd32033547_)))
                                                       (let ((_hd32063557_
                                                              (##car _e32053553_))
                                                             (_tl32073560_
                                                              (##cdr _e32053553_)))
                                                         (if (gx#stx-pair?
                                                              _tl32073560_)
                                                             (let ((_e32083563_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl32073560_)))
                       (let ((_hd32093567_ (##car _e32083563_))
                             (_tl32103570_ (##cdr _e32083563_)))
                         (if (gx#stx-null? _tl32103570_)
                             ((lambda (_L3573_ _L3575_ _L3576_ _L3577_ _L3578_)
                                (if (_let-head?3184_ _L3576_)
                                    (cons _L3578_
                                          (cons _L3577_
                                                (cons (cons (cons _L3576_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L3575_ '()))
                    '())
              _L3573_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_g31883516_ _g31903520_)))
                              _tl32043550_
                              _hd32093567_
                              _hd32063557_
                              _hd32003537_
                              _hd31973527_)
                             (_g31883516_ _g31903520_))))
                     (_g31883516_ _g31903520_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g31883516_
                                                      _g31903520_))))
                                             (_g31883516_ _g31903520_))))
                                     (_g31883516_ _g31903520_))))
                             (_g31883516_ _g31903520_)))))
                  (_g31873600_ _stx3181_))))))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#and|
      (lambda (_$stx3727_)
        (let ((_g37333759_
               (lambda (_g37343755_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g37343755_))))
          (let ((_g37323804_
                 (lambda (_g37343763_)
                   (if (gx#stx-pair? _g37343763_)
                       (let ((_e37483766_ (gx#syntax-e _g37343763_)))
                         (let ((_hd37493770_ (##car _e37483766_))
                               (_tl37503773_ (##cdr _e37483766_)))
                           (if (gx#stx-pair? _tl37503773_)
                               (let ((_e37513776_ (gx#syntax-e _tl37503773_)))
                                 (let ((_hd37523780_ (##car _e37513776_))
                                       (_tl37533783_ (##cdr _e37513776_)))
                                   ((lambda (_L3786_ _L3788_ _L3789_)
                                      (cons (gx#datum->syntax '#f 'if)
                                            (cons _L3788_
                                                  (cons (cons _L3789_ _L3786_)
                                                        (cons '#f '())))))
                                    _tl37533783_
                                    _hd37523780_
                                    _hd37493770_)))
                               (_g37333759_ _g37343763_))))
                       (_g37333759_ _g37343763_)))))
            (let ((_g37313844_
                   (lambda (_g37343808_)
                     (if (gx#stx-pair? _g37343808_)
                         (let ((_e37393811_ (gx#syntax-e _g37343808_)))
                           (let ((_hd37403815_ (##car _e37393811_))
                                 (_tl37413818_ (##cdr _e37393811_)))
                             (if (gx#stx-pair? _tl37413818_)
                                 (let ((_e37423821_
                                        (gx#syntax-e _tl37413818_)))
                                   (let ((_hd37433825_ (##car _e37423821_))
                                         (_tl37443828_ (##cdr _e37423821_)))
                                     (if (gx#stx-null? _tl37443828_)
                                         ((lambda (_L3831_) _L3831_)
                                          _hd37433825_)
                                         (_g37323804_ _g37343808_))))
                                 (_g37323804_ _g37343808_))))
                         (_g37323804_ _g37343808_)))))
              (let ((_g37303865_
                     (lambda (_g37343848_)
                       (if (gx#stx-pair? _g37343848_)
                           (let ((_e37353851_ (gx#syntax-e _g37343848_)))
                             (let ((_hd37363855_ (##car _e37353851_))
                                   (_tl37373858_ (##cdr _e37353851_)))
                               (if (gx#stx-null? _tl37373858_)
                                   ((lambda () '#t))
                                   (_g37313844_ _g37343848_))))
                           (_g37313844_ _g37343848_)))))
                (_g37303865_ _$stx3727_)))))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#or|
      (lambda (_$stx3869_)
        (let ((_g38753901_
               (lambda (_g38763897_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g38763897_))))
          (let ((_g38743946_
                 (lambda (_g38763905_)
                   (if (gx#stx-pair? _g38763905_)
                       (let ((_e38903908_ (gx#syntax-e _g38763905_)))
                         (let ((_hd38913912_ (##car _e38903908_))
                               (_tl38923915_ (##cdr _e38903908_)))
                           (if (gx#stx-pair? _tl38923915_)
                               (let ((_e38933918_ (gx#syntax-e _tl38923915_)))
                                 (let ((_hd38943922_ (##car _e38933918_))
                                       (_tl38953925_ (##cdr _e38933918_)))
                                   ((lambda (_L3928_ _L3930_ _L3931_)
                                      (cons (gx#datum->syntax '#f 'let)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         '$e)
                                                        (cons _L3930_ '()))
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'if)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '$e)
                            (cons (gx#datum->syntax '#f '$e)
                                  (cons (cons _L3931_ _L3928_) '()))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _tl38953925_
                                    _hd38943922_
                                    _hd38913912_)))
                               (_g38753901_ _g38763905_))))
                       (_g38753901_ _g38763905_)))))
            (let ((_g38733986_
                   (lambda (_g38763950_)
                     (if (gx#stx-pair? _g38763950_)
                         (let ((_e38813953_ (gx#syntax-e _g38763950_)))
                           (let ((_hd38823957_ (##car _e38813953_))
                                 (_tl38833960_ (##cdr _e38813953_)))
                             (if (gx#stx-pair? _tl38833960_)
                                 (let ((_e38843963_
                                        (gx#syntax-e _tl38833960_)))
                                   (let ((_hd38853967_ (##car _e38843963_))
                                         (_tl38863970_ (##cdr _e38843963_)))
                                     (if (gx#stx-null? _tl38863970_)
                                         ((lambda (_L3973_) _L3973_)
                                          _hd38853967_)
                                         (_g38743946_ _g38763950_))))
                                 (_g38743946_ _g38763950_))))
                         (_g38743946_ _g38763950_)))))
              (let ((_g38724007_
                     (lambda (_g38763990_)
                       (if (gx#stx-pair? _g38763990_)
                           (let ((_e38773993_ (gx#syntax-e _g38763990_)))
                             (let ((_hd38783997_ (##car _e38773993_))
                                   (_tl38794000_ (##cdr _e38773993_)))
                               (if (gx#stx-null? _tl38794000_)
                                   ((lambda () '#f))
                                   (_g38733986_ _g38763990_))))
                           (_g38733986_ _g38763990_)))))
                (_g38724007_ _$stx3869_)))))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#cond|
      (lambda (_$stx4011_)
        (let ((_g40204111_
               (lambda (_g40214107_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g40214107_))))
          (let ((_g40194212_
                 (lambda (_g40214115_)
                   (if (gx#stx-pair? _g40214115_)
                       (let ((_e40884118_ (gx#syntax-e _g40214115_)))
                         (let ((_hd40894122_ (##car _e40884118_))
                               (_tl40904125_ (##cdr _e40884118_)))
                           (if (gx#stx-pair? _tl40904125_)
                               (let ((_e40914128_ (gx#syntax-e _tl40904125_)))
                                 (let ((_hd40924132_ (##car _e40914128_))
                                       (_tl40934135_ (##cdr _e40914128_)))
                                   (if (gx#stx-pair? _hd40924132_)
                                       (let ((_e40944138_
                                              (gx#syntax-e _hd40924132_)))
                                         (let ((_hd40954142_
                                                (##car _e40944138_))
                                               (_tl40964145_
                                                (##cdr _e40944138_)))
                                           (if (gx#stx-pair/null? _tl40964145_)
                                               (if (fx>= (gx#stx-length
                                                          _tl40964145_)
                                                         '0)
                                                   (let ((_g30201_
                                                          (gx#syntax-split-splice
                                                           _tl40964145_
                                                           '0)))
                                                     (begin
                                                       (let ((_g30202_
                                                              (values-count
                                                               _g30201_)))
                                                         (if (not (fx= _g30202_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g30202_)))
               (let ((_target40974148_ (values-ref _g30201_ 0))
                     (_tl40994151_ (values-ref _g30201_ 1)))
                 (if (gx#stx-null? _tl40994151_)
                     (letrec ((_loop41004154_
                               (lambda (_hd40984158_ _body41044161_)
                                 (if (gx#stx-pair? _hd40984158_)
                                     (let ((_e41014164_
                                            (gx#syntax-e _hd40984158_)))
                                       (let ((_lp-hd41024168_
                                              (##car _e41014164_))
                                             (_lp-tl41034171_
                                              (##cdr _e41014164_)))
                                         (_loop41004154_
                                          _lp-tl41034171_
                                          (cons _lp-hd41024168_
                                                _body41044161_))))
                                     (let ((_body41054174_
                                            (reverse _body41044161_)))
                                       ((lambda (_L4178_
                                                 _L4180_
                                                 _L4181_
                                                 _L4182_)
                                          (cons (gx#datum->syntax '#f 'if)
                                                (cons _L4181_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'begin)
                          (begin
                            '#!void
                            (foldr (lambda (_g42034206_ _g42044209_)
                                     (cons _g42034206_ _g42044209_))
                                   '()
                                   _L4180_)))
                    (cons (cons _L4182_ _L4178_) '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _tl40934135_
                                        _body41054174_
                                        _hd40954142_
                                        _hd40894122_))))))
                       (_loop41004154_ _target40974148_ '()))
                     (_g40204111_ _g40214115_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g40204111_ _g40214115_))
                                               (_g40204111_ _g40214115_))))
                                       (_g40204111_ _g40214115_))))
                               (_g40204111_ _g40214115_))))
                       (_g40204111_ _g40214115_)))))
            (let ((_g40184268_
                   (lambda (_g40214216_)
                     (if (gx#stx-pair? _g40214216_)
                         (let ((_e40754219_ (gx#syntax-e _g40214216_)))
                           (let ((_hd40764223_ (##car _e40754219_))
                                 (_tl40774226_ (##cdr _e40754219_)))
                             (if (gx#stx-pair? _tl40774226_)
                                 (let ((_e40784229_
                                        (gx#syntax-e _tl40774226_)))
                                   (let ((_hd40794233_ (##car _e40784229_))
                                         (_tl40804236_ (##cdr _e40784229_)))
                                     (if (gx#stx-pair? _hd40794233_)
                                         (let ((_e40814239_
                                                (gx#syntax-e _hd40794233_)))
                                           (let ((_hd40824243_
                                                  (##car _e40814239_))
                                                 (_tl40834246_
                                                  (##cdr _e40814239_)))
                                             (if (gx#stx-null? _tl40834246_)
                                                 ((lambda (_L4249_
                                                           _L4251_
                                                           _L4252_)
                                                    (cons _L4252_
                                                          (cons (cons _L4251_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#datum->syntax '#f '=>)
                                    (cons (gx#datum->syntax '#f 'values) '())))
                        _L4249_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _tl40804236_
                                                  _hd40824243_
                                                  _hd40764223_)
                                                 (_g40194212_ _g40214216_))))
                                         (_g40194212_ _g40214216_))))
                                 (_g40194212_ _g40214216_))))
                         (_g40194212_ _g40214216_)))))
              (let ((_g40174350_
                     (lambda (_g40214272_)
                       (if (gx#stx-pair? _g40214272_)
                           (let ((_e40574275_ (gx#syntax-e _g40214272_)))
                             (let ((_hd40584279_ (##car _e40574275_))
                                   (_tl40594282_ (##cdr _e40574275_)))
                               (if (gx#stx-pair? _tl40594282_)
                                   (let ((_e40604285_
                                          (gx#syntax-e _tl40594282_)))
                                     (let ((_hd40614289_ (##car _e40604285_))
                                           (_tl40624292_ (##cdr _e40604285_)))
                                       (if (gx#stx-pair? _hd40614289_)
                                           (let ((_e40634295_
                                                  (gx#syntax-e _hd40614289_)))
                                             (let ((_hd40644299_
                                                    (##car _e40634295_))
                                                   (_tl40654302_
                                                    (##cdr _e40634295_)))
                                               (if (gx#stx-pair? _tl40654302_)
                                                   (let ((_e40664305_
                                                          (gx#syntax-e
                                                           _tl40654302_)))
                                                     (let ((_hd40674309_
                                                            (##car _e40664305_))
                                                           (_tl40684312_
                                                            (##cdr _e40664305_)))
                                                       (if (gx#identifier?
                                                            _hd40674309_)
                                                           (if (gx#free-identifier=?
                                                                |gerbil/core::<sugar>::<sugar:1>[1]#_g30203_|
                                                                _hd40674309_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl40684312_)
                           (let ((_e40694315_ (gx#syntax-e _tl40684312_)))
                             (let ((_hd40704319_ (##car _e40694315_))
                                   (_tl40714322_ (##cdr _e40694315_)))
                               (if (gx#stx-null? _tl40714322_)
                                   ((lambda (_L4325_ _L4327_ _L4328_ _L4329_)
                                      (cons (gx#datum->syntax '#f 'let)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         '$e)
                                                        (cons _L4328_ '()))
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'if)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '$e)
                            (cons (cons _L4327_
                                        (cons (gx#datum->syntax '#f '$e) '()))
                                  (cons (cons _L4329_ _L4325_) '()))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _tl40624292_
                                    _hd40704319_
                                    _hd40644299_
                                    _hd40584279_)
                                   (_g40184268_ _g40214272_))))
                           (_g40184268_ _g40214272_))
                       (_g40184268_ _g40214272_))
                   (_g40184268_ _g40214272_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g40184268_ _g40214272_))))
                                           (_g40184268_ _g40214272_))))
                                   (_g40184268_ _g40214272_))))
                           (_g40184268_ _g40214272_)))))
                (let ((_g40164391_
                       (lambda (_g40214354_)
                         (if (gx#stx-pair? _g40214354_)
                             (let ((_e40444357_ (gx#syntax-e _g40214354_)))
                               (let ((_hd40454361_ (##car _e40444357_))
                                     (_tl40464364_ (##cdr _e40444357_)))
                                 (if (gx#stx-pair? _tl40464364_)
                                     (let ((_e40474367_
                                            (gx#syntax-e _tl40464364_)))
                                       (let ((_hd40484371_ (##car _e40474367_))
                                             (_tl40494374_
                                              (##cdr _e40474367_)))
                                         (if (gx#stx-pair? _hd40484371_)
                                             (let ((_e40504377_
                                                    (gx#syntax-e
                                                     _hd40484371_)))
                                               (let ((_hd40514381_
                                                      (##car _e40504377_))
                                                     (_tl40524384_
                                                      (##cdr _e40504377_)))
                                                 (if (gx#identifier?
                                                      _hd40514381_)
                                                     (if (gx#free-identifier=?
                                                          |gerbil/core::<sugar>::<sugar:1>[1]#_g30204_|
                                                          _hd40514381_)
                                                         ((lambda ()
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'syntax-error)
                          (cons '"Bad syntax; misplaced else" '()))))
                 (_g40174350_ _g40214354_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g40174350_
                                                      _g40214354_))))
                                             (_g40174350_ _g40214354_))))
                                     (_g40174350_ _g40214354_))))
                             (_g40174350_ _g40214354_)))))
                  (let ((_g40154486_
                         (lambda (_g40214395_)
                           (if (gx#stx-pair? _g40214395_)
                               (let ((_e40264398_ (gx#syntax-e _g40214395_)))
                                 (let ((_hd40274402_ (##car _e40264398_))
                                       (_tl40284405_ (##cdr _e40264398_)))
                                   (if (gx#stx-pair? _tl40284405_)
                                       (let ((_e40294408_
                                              (gx#syntax-e _tl40284405_)))
                                         (let ((_hd40304412_
                                                (##car _e40294408_))
                                               (_tl40314415_
                                                (##cdr _e40294408_)))
                                           (if (gx#stx-pair? _hd40304412_)
                                               (let ((_e40324418_
                                                      (gx#syntax-e
                                                       _hd40304412_)))
                                                 (let ((_hd40334422_
                                                        (##car _e40324418_))
                                                       (_tl40344425_
                                                        (##cdr _e40324418_)))
                                                   (if (gx#identifier?
                                                        _hd40334422_)
                                                       (if (gx#free-identifier=?
                                                            |gerbil/core::<sugar>::<sugar:1>[1]#_g30205_|
                                                            _hd40334422_)
                                                           (if (gx#stx-pair/null?
                                                                _tl40344425_)
                                                               (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _tl40344425_)
                                 '0)
                           (let ((_g30206_
                                  (gx#syntax-split-splice _tl40344425_ '0)))
                             (begin
                               (let ((_g30207_ (values-count _g30206_)))
                                 (if (not (fx= _g30207_ 2))
                                     (error "Context expects 2 values"
                                            _g30207_)))
                               (let ((_target40354428_ (values-ref _g30206_ 0))
                                     (_tl40374431_ (values-ref _g30206_ 1)))
                                 (if (gx#stx-null? _tl40374431_)
                                     (letrec ((_loop40384434_
                                               (lambda (_hd40364438_
                                                        _body40424441_)
                                                 (if (gx#stx-pair?
                                                      _hd40364438_)
                                                     (let ((_e40394444_
                                                            (gx#syntax-e
                                                             _hd40364438_)))
                                                       (let ((_lp-hd40404448_
                                                              (##car _e40394444_))
                                                             (_lp-tl40414451_
                                                              (##cdr _e40394444_)))
                                                         (_loop40384434_
                                                          _lp-tl40414451_
                                                          (cons _lp-hd40404448_
                                                                _body40424441_))))
                                                     (let ((_body40434454_
                                                            (reverse _body40424441_)))
                                                       (if (gx#stx-null?
                                                            _tl40314415_)
                                                           ((lambda (_L4458_)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '%#expression)
                            (cons (cons (gx#datum->syntax '#f 'begin)
                                        (begin
                                          '#!void
                                          (foldr (lambda (_g44774480_
                                                          _g44784483_)
                                                   (cons _g44774480_
                                                         _g44784483_))
                                                 '()
                                                 _L4458_)))
                                  '())))
                    _body40434454_)
                   (_g40164391_ _g40214395_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_loop40384434_ _target40354428_ '()))
                                     (_g40164391_ _g40214395_)))))
                           (_g40164391_ _g40214395_))
                       (_g40164391_ _g40214395_))
                   (_g40164391_ _g40214395_))
               (_g40164391_ _g40214395_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g40164391_ _g40214395_))))
                                       (_g40164391_ _g40214395_))))
                               (_g40164391_ _g40214395_)))))
                    (let ((_g40144507_
                           (lambda (_g40214490_)
                             (if (gx#stx-pair? _g40214490_)
                                 (let ((_e40224493_ (gx#syntax-e _g40214490_)))
                                   (let ((_hd40234497_ (##car _e40224493_))
                                         (_tl40244500_ (##cdr _e40224493_)))
                                     (if (gx#stx-null? _tl40244500_)
                                         ((lambda () '#!void))
                                         (_g40154486_ _g40214490_))))
                                 (_g40154486_ _g40214490_)))))
                      (_g40144507_ _$stx4011_))))))))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#when|
      (lambda (_$stx4513_)
        (let ((_g45174541_
               (lambda (_g45184537_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g45184537_))))
          (let ((_g45164626_
                 (lambda (_g45184545_)
                   (if (gx#stx-pair? _g45184545_)
                       (let ((_e45214548_ (gx#syntax-e _g45184545_)))
                         (let ((_hd45224552_ (##car _e45214548_))
                               (_tl45234555_ (##cdr _e45214548_)))
                           (if (gx#stx-pair? _tl45234555_)
                               (let ((_e45244558_ (gx#syntax-e _tl45234555_)))
                                 (let ((_hd45254562_ (##car _e45244558_))
                                       (_tl45264565_ (##cdr _e45244558_)))
                                   (if (gx#stx-pair/null? _tl45264565_)
                                       (if (fx>= (gx#stx-length _tl45264565_)
                                                 '0)
                                           (let ((_g30208_
                                                  (gx#syntax-split-splice
                                                   _tl45264565_
                                                   '0)))
                                             (begin
                                               (let ((_g30209_
                                                      (values-count _g30208_)))
                                                 (if (not (fx= _g30209_ 2))
                                                     (error "Context expects 2 values"
                                                            _g30209_)))
                                               (let ((_target45274568_
                                                      (values-ref _g30208_ 0))
                                                     (_tl45294571_
                                                      (values-ref _g30208_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl45294571_)
                                                     (letrec ((_loop45304574_
                                                               (lambda (_hd45284578_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr45344581_)
                         (if (gx#stx-pair? _hd45284578_)
                             (let ((_e45314584_ (gx#syntax-e _hd45284578_)))
                               (let ((_lp-hd45324588_ (##car _e45314584_))
                                     (_lp-tl45334591_ (##cdr _e45314584_)))
                                 (_loop45304574_
                                  _lp-tl45334591_
                                  (cons _lp-hd45324588_ _expr45344581_))))
                             (let ((_expr45354594_ (reverse _expr45344581_)))
                               ((lambda (_L4598_ _L4600_)
                                  (cons (gx#datum->syntax '#f 'if)
                                        (cons _L4600_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'begin)
                                                          (begin
                                                            '#!void
                                                            (foldr (lambda (_g46174620_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g46184623_)
                             (cons _g46174620_ _g46184623_))
                           '()
                           _L4598_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons '#!void '())))))
                                _expr45354594_
                                _hd45254562_))))))
               (_loop45304574_ _target45274568_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g45174541_
                                                      _g45184545_)))))
                                           (_g45174541_ _g45184545_))
                                       (_g45174541_ _g45184545_))))
                               (_g45174541_ _g45184545_))))
                       (_g45174541_ _g45184545_)))))
            (_g45164626_ _$stx4513_)))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#unless|
      (lambda (_$stx4631_)
        (let ((_g46354659_
               (lambda (_g46364655_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g46364655_))))
          (let ((_g46344744_
                 (lambda (_g46364663_)
                   (if (gx#stx-pair? _g46364663_)
                       (let ((_e46394666_ (gx#syntax-e _g46364663_)))
                         (let ((_hd46404670_ (##car _e46394666_))
                               (_tl46414673_ (##cdr _e46394666_)))
                           (if (gx#stx-pair? _tl46414673_)
                               (let ((_e46424676_ (gx#syntax-e _tl46414673_)))
                                 (let ((_hd46434680_ (##car _e46424676_))
                                       (_tl46444683_ (##cdr _e46424676_)))
                                   (if (gx#stx-pair/null? _tl46444683_)
                                       (if (fx>= (gx#stx-length _tl46444683_)
                                                 '0)
                                           (let ((_g30210_
                                                  (gx#syntax-split-splice
                                                   _tl46444683_
                                                   '0)))
                                             (begin
                                               (let ((_g30211_
                                                      (values-count _g30210_)))
                                                 (if (not (fx= _g30211_ 2))
                                                     (error "Context expects 2 values"
                                                            _g30211_)))
                                               (let ((_target46454686_
                                                      (values-ref _g30210_ 0))
                                                     (_tl46474689_
                                                      (values-ref _g30210_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl46474689_)
                                                     (letrec ((_loop46484692_
                                                               (lambda (_hd46464696_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr46524699_)
                         (if (gx#stx-pair? _hd46464696_)
                             (let ((_e46494702_ (gx#syntax-e _hd46464696_)))
                               (let ((_lp-hd46504706_ (##car _e46494702_))
                                     (_lp-tl46514709_ (##cdr _e46494702_)))
                                 (_loop46484692_
                                  _lp-tl46514709_
                                  (cons _lp-hd46504706_ _expr46524699_))))
                             (let ((_expr46534712_ (reverse _expr46524699_)))
                               ((lambda (_L4716_ _L4718_)
                                  (cons (gx#datum->syntax '#f 'if)
                                        (cons _L4718_
                                              (cons '#!void
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'begin)
                        (begin
                          '#!void
                          (foldr (lambda (_g47354738_ _g47364741_)
                                   (cons _g47354738_ _g47364741_))
                                 '()
                                 _L4716_)))
                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _expr46534712_
                                _hd46434680_))))))
               (_loop46484692_ _target46454686_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g46354659_
                                                      _g46364663_)))))
                                           (_g46354659_ _g46364663_))
                                       (_g46354659_ _g46364663_))))
                               (_g46354659_ _g46364663_))))
                       (_g46354659_ _g46364663_)))))
            (_g46344744_ _$stx4631_)))))
    (define |gerbil/core::<sugar>::<sugar:1>[:0:]#syntax-error|
      (lambda (_stx4749_)
        (let ((_g47524776_
               (lambda (_g47534772_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g47534772_))))
          (let ((_g47514861_
                 (lambda (_g47534780_)
                   (if (gx#stx-pair? _g47534780_)
                       (let ((_e47564783_ (gx#syntax-e _g47534780_)))
                         (let ((_hd47574787_ (##car _e47564783_))
                               (_tl47584790_ (##cdr _e47564783_)))
                           (if (gx#stx-pair? _tl47584790_)
                               (let ((_e47594793_ (gx#syntax-e _tl47584790_)))
                                 (let ((_hd47604797_ (##car _e47594793_))
                                       (_tl47614800_ (##cdr _e47594793_)))
                                   (if (gx#stx-pair/null? _tl47614800_)
                                       (if (fx>= (gx#stx-length _tl47614800_)
                                                 '0)
                                           (let ((_g30212_
                                                  (gx#syntax-split-splice
                                                   _tl47614800_
                                                   '0)))
                                             (begin
                                               (let ((_g30213_
                                                      (values-count _g30212_)))
                                                 (if (not (fx= _g30213_ 2))
                                                     (error "Context expects 2 values"
                                                            _g30213_)))
                                               (let ((_target47624803_
                                                      (values-ref _g30212_ 0))
                                                     (_tl47644806_
                                                      (values-ref _g30212_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl47644806_)
                                                     (letrec ((_loop47654809_
                                                               (lambda (_hd47634813_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _detail47694816_)
                         (if (gx#stx-pair? _hd47634813_)
                             (let ((_e47664819_ (gx#syntax-e _hd47634813_)))
                               (let ((_lp-hd47674823_ (##car _e47664819_))
                                     (_lp-tl47684826_ (##cdr _e47664819_)))
                                 (_loop47654809_
                                  _lp-tl47684826_
                                  (cons _lp-hd47674823_ _detail47694816_))))
                             (let ((_detail47704829_
                                    (reverse _detail47694816_)))
                               ((lambda (_L4833_ _L4835_)
                                  (if (gx#stx-string? _L4835_)
                                      (apply gx#raise-syntax-error
                                             '#f
                                             (gx#stx-e _L4835_)
                                             _stx4749_
                                             (gx#syntax->list
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g48524855_
                                                                _g48534858_)
                                                         (cons _g48524855_
                                                               _g48534858_))
                                                       '()
                                                       _L4833_))))
                                      (_g47524776_ _g47534780_)))
                                _detail47704829_
                                _hd47604797_))))))
               (_loop47654809_ _target47624803_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g47524776_
                                                      _g47534780_)))))
                                           (_g47524776_ _g47534780_))
                                       (_g47524776_ _g47534780_))))
                               (_g47524776_ _g47534780_))))
                       (_g47524776_ _g47534780_)))))
            (_g47514861_ _stx4749_)))))))
