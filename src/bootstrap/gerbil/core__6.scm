(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<MOP>$<MOP:1>[1]#generate-typedef|
    (lambda (_stx17919_ _struct?17921_)
      (letrec ((_wrap17923_
                (lambda (_e-stx19524_)
                  (gx#stx-wrap-source
                   _e-stx19524_
                   (gx#stx-source _stx17919_))))
               (_slotify17925_
                (lambda (_field19389_ _off19391_)
                  (let* ((___stx3895938960_ _field19389_)
                         (_g1939419421_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx3895938960_))))
                    (let ((___kont3896238963_
                           (lambda (_L19505_ _L19507_)
                             (cons _off19391_
                                   (cons _L19507_ (cons _L19505_ '())))))
                          (___kont3896438965_
                           (lambda (_L19458_ _L19460_ _L19461_)
                             (cons _off19391_
                                   (cons _L19460_ (cons _L19458_ '()))))))
                      (if (gx#stx-pair? ___stx3895938960_)
                          (let ((_e1939819485_
                                 (gx#syntax-e ___stx3895938960_)))
                            (let ((_tl1940019492_ (##cdr _e1939819485_))
                                  (_hd1939919489_ (##car _e1939819485_)))
                              (if (gx#stx-pair? _tl1940019492_)
                                  (let ((_e1940119495_
                                         (gx#syntax-e _tl1940019492_)))
                                    (let ((_tl1940319502_
                                           (##cdr _e1940119495_))
                                          (_hd1940219499_
                                           (##car _e1940119495_)))
                                      (if (gx#stx-null? _tl1940319502_)
                                          (___kont3896238963_
                                           _hd1940219499_
                                           _hd1939919489_)
                                          (if (gx#stx-pair? _tl1940319502_)
                                              (let ((_e1941319448_
                                                     (gx#syntax-e
                                                      _tl1940319502_)))
                                                (let ((_tl1941519455_
                                                       (##cdr _e1941319448_))
                                                      (_hd1941419452_
                                                       (##car _e1941319448_)))
                                                  (if (gx#stx-null?
                                                       _tl1941519455_)
                                                      (___kont3896438965_
                                                       _hd1941419452_
                                                       _hd1940219499_
                                                       _hd1939919489_)
                                                      (_g1939419421_))))
                                              (_g1939419421_)))))
                                  (_g1939419421_))))
                          (_g1939419421_))))))
               (_field-id17926_
                (lambda (_field19255_)
                  (let* ((___stx3900339004_ _field19255_)
                         (_g1925919286_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx3900339004_))))
                    (let ((___kont3900639007_ (lambda (_L19370_ _L19372_) ':))
                          (___kont3900839009_
                           (lambda (_L19323_ _L19325_ _L19326_) _L19326_)))
                      (if (gx#stx-pair? ___stx3900339004_)
                          (let ((_e1926319350_
                                 (gx#syntax-e ___stx3900339004_)))
                            (let ((_tl1926519357_ (##cdr _e1926319350_))
                                  (_hd1926419354_ (##car _e1926319350_)))
                              (if (gx#stx-pair? _tl1926519357_)
                                  (let ((_e1926619360_
                                         (gx#syntax-e _tl1926519357_)))
                                    (let ((_tl1926819367_
                                           (##cdr _e1926619360_))
                                          (_hd1926719364_
                                           (##car _e1926619360_)))
                                      (if (gx#stx-null? _tl1926819367_)
                                          (___kont3900639007_
                                           _hd1926719364_
                                           _hd1926419354_)
                                          (if (gx#stx-pair? _tl1926819367_)
                                              (let ((_e1927819313_
                                                     (gx#syntax-e
                                                      _tl1926819367_)))
                                                (let ((_tl1928019320_
                                                       (##cdr _e1927819313_))
                                                      (_hd1927919317_
                                                       (##car _e1927819313_)))
                                                  (if (gx#stx-null?
                                                       _tl1928019320_)
                                                      (___kont3900839009_
                                                       _hd1927919317_
                                                       _hd1926719364_
                                                       _hd1926419354_)
                                                      (_g1925919286_))))
                                              (_g1925919286_)))))
                                  (_g1925919286_))))
                          (_g1925919286_))))))
               (_struct-opt?17927_
                (lambda (_key19252_)
                  (memq (gx#stx-e _key19252_)
                        '(fields: id: name: plist: constructor: unchecked:))))
               (_class-opt?17928_
                (lambda (_key19249_)
                  (memq (gx#stx-e _key19249_)
                        '(slots: id: name: plist: constructor: unchecked:))))
               (_module-type-id17929_
                (lambda (_type-t19236_)
                  (let ((_$e19239_
                         (gx#module-context-ns (gx#current-expander-context))))
                    (if _$e19239_
                        ((lambda (_ns19243_)
                           (gx#stx-identifier
                            _type-t19236_
                            _ns19243_
                            '"#"
                            _type-t19236_))
                         _$e19239_)
                        (let ((_mid19246_
                               (gx#expander-context-id
                                (gx#current-expander-context))))
                          (gx#stx-identifier
                           _type-t19236_
                           _mid19246_
                           '"#"
                           _type-t19236_)))))))
        (let* ((_g1793117958_
                (lambda (_g1793217954_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1793217954_)))
               (_g1793019232_
                (lambda (_g1793217962_)
                  (if (gx#stx-pair? _g1793217962_)
                      (let ((_e1793817965_ (gx#syntax-e _g1793217962_)))
                        (let ((_hd1793917969_ (##car _e1793817965_))
                              (_tl1794017972_ (##cdr _e1793817965_)))
                          (if (gx#stx-pair? _tl1794017972_)
                              (let ((_e1794117975_
                                     (gx#syntax-e _tl1794017972_)))
                                (let ((_hd1794217979_ (##car _e1794117975_))
                                      (_tl1794317982_ (##cdr _e1794117975_)))
                                  (if (gx#stx-pair? _tl1794317982_)
                                      (let ((_e1794417985_
                                             (gx#syntax-e _tl1794317982_)))
                                        (let ((_hd1794517989_
                                               (##car _e1794417985_))
                                              (_tl1794617992_
                                               (##cdr _e1794417985_)))
                                          (if (gx#stx-pair? _tl1794617992_)
                                              (let ((_e1794717995_
                                                     (gx#syntax-e
                                                      _tl1794617992_)))
                                                (let ((_hd1794817999_
                                                       (##car _e1794717995_))
                                                      (_tl1794918002_
                                                       (##cdr _e1794717995_)))
                                                  (if (gx#stx-pair?
                                                       _tl1794918002_)
                                                      (let ((_e1795018005_
                                                             (gx#syntax-e
                                                              _tl1794918002_)))
                                                        (let ((_hd1795118009_
                                                               (##car _e1795018005_))
                                                              (_tl1795218012_
                                                               (##cdr _e1795018005_)))
                                                          ((lambda (_L18015_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L18017_
                            _L18018_
                            _L18019_
                            _L18020_)
                     (if (and (gx#identifier? _L18020_)
                              (or (gx#identifier? _L18018_)
                                  (gx#stx-false? _L18018_))
                              (gx#identifier? _L18017_)
                              (gx#stx-plist?
                               _L18015_
                               (if _struct?17921_
                                   _struct-opt?17927_
                                   _class-opt?17928_)))
                         (let* ((_els18054_
                                 (let ((_$e18050_
                                        (gx#stx-getq
                                         (if _struct?17921_ 'fields: 'slots:)
                                         _L18015_)))
                                   (if _$e18050_ _$e18050_ '())))
                                (_g1805718088_
                                 (lambda (_g1805818084_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1805818084_)))
                                (_g1805619228_
                                 (lambda (_g1805818092_)
                                   (if (gx#stx-pair? _g1805818092_)
                                       (let ((_e1806518095_
                                              (gx#syntax-e _g1805818092_)))
                                         (let ((_hd1806618099_
                                                (##car _e1806518095_))
                                               (_tl1806718102_
                                                (##cdr _e1806518095_)))
                                           (if (gx#stx-pair? _tl1806718102_)
                                               (let ((_e1806818105_
                                                      (gx#syntax-e
                                                       _tl1806718102_)))
                                                 (let ((_hd1806918109_
                                                        (##car _e1806818105_))
                                                       (_tl1807018112_
                                                        (##cdr _e1806818105_)))
                                                   (if (gx#stx-pair?
                                                        _tl1807018112_)
                                                       (let ((_e1807118115_
                                                              (gx#syntax-e
                                                               _tl1807018112_)))
                                                         (let ((_hd1807218119_
                                                                (##car _e1807118115_))
                                                               (_tl1807318122_
                                                                (##cdr _e1807118115_)))
                                                           (if (gx#stx-pair?
                                                                _tl1807318122_)
                                                               (let ((_e1807418125_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl1807318122_)))
                         (let ((_hd1807518129_ (##car _e1807418125_))
                               (_tl1807618132_ (##cdr _e1807418125_)))
                           (if (gx#stx-pair? _tl1807618132_)
                               (let ((_e1807718135_
                                      (gx#syntax-e _tl1807618132_)))
                                 (let ((_hd1807818139_ (##car _e1807718135_))
                                       (_tl1807918142_ (##cdr _e1807718135_)))
                                   (if (gx#stx-pair? _tl1807918142_)
                                       (let ((_e1808018145_
                                              (gx#syntax-e _tl1807918142_)))
                                         (let ((_hd1808118149_
                                                (##car _e1808018145_))
                                               (_tl1808218152_
                                                (##cdr _e1808018145_)))
                                           (if (gx#stx-null? _tl1808218152_)
                                               ((lambda (_L18155_
                                                         _L18157_
                                                         _L18158_
                                                         _L18159_
                                                         _L18160_
                                                         _L18161_)
                                                  (let ()
                                                    (let* ((_g1819018198_
                                                            (lambda (_g1819118194_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g1819118194_)))
                                                           (_g1818919220_
                                                            (lambda (_g1819118202_)
                                                              ((lambda (_L18205_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g1821818226_
                                   (lambda (_g1821918222_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1821918222_)))
                                  (_g1821719212_
                                   (lambda (_g1821918230_)
                                     ((lambda (_L18233_)
                                        (let ()
                                          (let* ((_g1824618254_
                                                  (lambda (_g1824718250_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1824718250_)))
                                                 (_g1824519204_
                                                  (lambda (_g1824718258_)
                                                    ((lambda (_L18261_)
                                                       (let ()
                                                         (let* ((_g1827418282_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1827518278_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1827518278_)))
                        (_g1827319200_
                         (lambda (_g1827518286_)
                           ((lambda (_L18289_)
                              (let ()
                                (let* ((_g1830218310_
                                        (lambda (_g1830318306_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g1830318306_)))
                                       (_g1830118916_
                                        (lambda (_g1830318314_)
                                          ((lambda (_L18317_)
                                             (let ()
                                               (let* ((_g1833018338_
                                                       (lambda (_g1833118334_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1833118334_)))
                                                      (_g1832918912_
                                                       (lambda (_g1833118342_)
                                                         ((lambda (_L18345_)
                                                            (let ()
                                                              (let* ((_g1835818366_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g1835918362_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1835918362_)))
                             (_g1835718908_
                              (lambda (_g1835918370_)
                                ((lambda (_L18373_)
                                   (let ()
                                     (let* ((_g1838618394_
                                             (lambda (_g1838718390_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1838718390_)))
                                            (_g1838518904_
                                             (lambda (_g1838718398_)
                                               ((lambda (_L18401_)
                                                  (let ()
                                                    (let* ((_attrs18414_
                                                            (if _struct?17921_
                                                                (gx#stx-map
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _slotify17925_
                         _els18054_
                         (iota (gx#stx-length _els18054_)))
                        _els18054_))
                   (_g1841718443_
                    (lambda (_g1841818439_)
                      (gx#raise-syntax-error '#f '"Bad syntax" _g1841818439_)))
                   (_g1841618816_
                    (lambda (_g1841818447_)
                      (if (gx#stx-pair/null? _g1841818447_)
                          (let ((_g42097_
                                 (gx#syntax-split-splice _g1841818447_ '0)))
                            (begin
                              (let ((_g42098_
                                     (if (##values? _g42097_)
                                         (##vector-length _g42097_)
                                         1)))
                                (if (not (##fx= _g42098_ 2))
                                    (error "Context expects 2 values"
                                           _g42098_)))
                              (let ((_target1842118450_
                                     (##vector-ref _g42097_ 0))
                                    (_tl1842318453_ (##vector-ref _g42097_ 1)))
                                (if (gx#stx-null? _tl1842318453_)
                                    (letrec ((_loop1842418456_
                                              (lambda (_hd1842218460_
                                                       _def-setf1842818463_
                                                       _def-getf1842918465_)
                                                (if (gx#stx-pair?
                                                     _hd1842218460_)
                                                    (let ((_e1842518468_
                                                           (gx#syntax-e
                                                            _hd1842218460_)))
                                                      (let ((_lp-hd1842618472_
                                                             (##car _e1842518468_))
                                                            (_lp-tl1842718475_
                                                             (##cdr _e1842518468_)))
                                                        (if (gx#stx-pair?
                                                             _lp-hd1842618472_)
                                                            (let ((_e1843218478_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _lp-hd1842618472_)))
                      (let ((_hd1843318482_ (##car _e1843218478_))
                            (_tl1843418485_ (##cdr _e1843218478_)))
                        (if (gx#stx-pair? _tl1843418485_)
                            (let ((_e1843518488_ (gx#syntax-e _tl1843418485_)))
                              (let ((_hd1843618492_ (##car _e1843518488_))
                                    (_tl1843718495_ (##cdr _e1843518488_)))
                                (if (gx#stx-null? _tl1843718495_)
                                    (_loop1842418456_
                                     _lp-tl1842718475_
                                     (cons _hd1843618492_ _def-setf1842818463_)
                                     (cons _hd1843318482_
                                           _def-getf1842918465_))
                                    (_g1841718443_ _g1841818447_))))
                            (_g1841718443_ _g1841818447_))))
                    (_g1841718443_ _g1841818447_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_def-setf1843018498_
                                                           (reverse _def-setf1842818463_))
                                                          (_def-getf1843118501_
                                                           (reverse _def-getf1842918465_)))
                                                      ((lambda (_L18504_
                                                                _L18506_)
                                                         (let ()
                                                           (let* ((_g1852418550_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g1852518546_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1852518546_)))
                          (_g1852318664_
                           (lambda (_g1852518554_)
                             (if (gx#stx-pair/null? _g1852518554_)
                                 (let ((_g42099_
                                        (gx#syntax-split-splice
                                         _g1852518554_
                                         '0)))
                                   (begin
                                     (let ((_g42100_
                                            (if (##values? _g42099_)
                                                (##vector-length _g42099_)
                                                1)))
                                       (if (not (##fx= _g42100_ 2))
                                           (error "Context expects 2 values"
                                                  _g42100_)))
                                     (let ((_target1852818557_
                                            (##vector-ref _g42099_ 0))
                                           (_tl1853018560_
                                            (##vector-ref _g42099_ 1)))
                                       (if (gx#stx-null? _tl1853018560_)
                                           (letrec ((_loop1853118563_
                                                     (lambda (_hd1852918567_
                                                              _def-usetf1853518570_
                                                              _def-ugetf1853618572_)
                                                       (if (gx#stx-pair?
                                                            _hd1852918567_)
                                                           (let ((_e1853218575_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd1852918567_)))
                     (let ((_lp-hd1853318579_ (##car _e1853218575_))
                           (_lp-tl1853418582_ (##cdr _e1853218575_)))
                       (if (gx#stx-pair? _lp-hd1853318579_)
                           (let ((_e1853918585_
                                  (gx#syntax-e _lp-hd1853318579_)))
                             (let ((_hd1854018589_ (##car _e1853918585_))
                                   (_tl1854118592_ (##cdr _e1853918585_)))
                               (if (gx#stx-pair? _tl1854118592_)
                                   (let ((_e1854218595_
                                          (gx#syntax-e _tl1854118592_)))
                                     (let ((_hd1854318599_
                                            (##car _e1854218595_))
                                           (_tl1854418602_
                                            (##cdr _e1854218595_)))
                                       (if (gx#stx-null? _tl1854418602_)
                                           (_loop1853118563_
                                            _lp-tl1853418582_
                                            (cons _hd1854318599_
                                                  _def-usetf1853518570_)
                                            (cons _hd1854018589_
                                                  _def-ugetf1853618572_))
                                           (_g1852418550_ _g1852518554_))))
                                   (_g1852418550_ _g1852518554_))))
                           (_g1852418550_ _g1852518554_))))
                   (let ((_def-usetf1853718605_
                          (reverse _def-usetf1853518570_))
                         (_def-ugetf1853818608_
                          (reverse _def-ugetf1853618572_)))
                     ((lambda (_L18611_ _L18613_)
                        (let ()
                          (let ()
                            (_wrap17923_
                             (cons (gx#datum->syntax '#f 'begin)
                                   (cons _L18345_
                                         (cons _L18401_
                                               (cons _L18373_
                                                     (foldr (lambda (_g1863118640_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g1863218643_)
                      (cons _g1863118640_ _g1863218643_))
                    (foldr (lambda (_g1863318646_ _g1863418649_)
                             (cons _g1863318646_ _g1863418649_))
                           (foldr (lambda (_g1863518652_ _g1863618655_)
                                    (cons _g1863518652_ _g1863618655_))
                                  (foldr (lambda (_g1863718658_ _g1863818661_)
                                           (cons _g1863718658_ _g1863818661_))
                                         '()
                                         _L18611_)
                                  _L18613_)
                           _L18504_)
                    _L18506_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      _def-usetf1853718605_
                      _def-ugetf1853818608_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop1853118563_
                                              _target1852818557_
                                              '()
                                              '()))
                                           (_g1852418550_ _g1852518554_)))))
                                 (_g1852418550_ _g1852518554_)))))
                     (_g1852318664_
                      (if (gx#stx-e (gx#stx-getq 'unchecked: _L18015_))
                          (gx#stx-map
                           (lambda (_ref18668_)
                             (let* ((_g1867118690_
                                     (lambda (_g1867218686_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1867218686_)))
                                    (_g1867018812_
                                     (lambda (_g1867218694_)
                                       (if (gx#stx-pair? _g1867218694_)
                                           (let ((_e1867618697_
                                                  (gx#syntax-e _g1867218694_)))
                                             (let ((_hd1867718701_
                                                    (##car _e1867618697_))
                                                   (_tl1867818704_
                                                    (##cdr _e1867618697_)))
                                               (if (gx#stx-pair?
                                                    _tl1867818704_)
                                                   (let ((_e1867918707_
                                                          (gx#syntax-e
                                                           _tl1867818704_)))
                                                     (let ((_hd1868018711_
                                                            (##car _e1867918707_))
                                                           (_tl1868118714_
                                                            (##cdr _e1867918707_)))
                                                       (if (gx#stx-pair?
                                                            _tl1868118714_)
                                                           (let ((_e1868218717_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl1868118714_)))
                     (let ((_hd1868318721_ (##car _e1868218717_))
                           (_tl1868418724_ (##cdr _e1868218717_)))
                       (if (gx#stx-null? _tl1868418724_)
                           ((lambda (_L18727_ _L18729_ _L18730_)
                              (let* ((_g1874818763_
                                      (lambda (_g1874918759_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g1874918759_)))
                                     (_g1874718808_
                                      (lambda (_g1874918767_)
                                        (if (gx#stx-pair? _g1874918767_)
                                            (let ((_e1875218770_
                                                   (gx#syntax-e
                                                    _g1874918767_)))
                                              (let ((_hd1875318774_
                                                     (##car _e1875218770_))
                                                    (_tl1875418777_
                                                     (##cdr _e1875218770_)))
                                                (if (gx#stx-pair?
                                                     _tl1875418777_)
                                                    (let ((_e1875518780_
                                                           (gx#syntax-e
                                                            _tl1875418777_)))
                                                      (let ((_hd1875618784_
                                                             (##car _e1875518780_))
                                                            (_tl1875718787_
                                                             (##cdr _e1875518780_)))
                                                        (if (gx#stx-null?
                                                             _tl1875718787_)
                                                            ((lambda (_L18790_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L18792_)
                       (let ()
                         (cons (_wrap17923_
                                (cons (gx#datum->syntax '#f 'def)
                                      (cons _L18792_
                                            (cons (cons _L18157_
                                                        (cons _L18020_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _L18730_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))
                               (cons (_wrap17923_
                                      (cons (gx#datum->syntax '#f 'def)
                                            (cons _L18790_
                                                  (cons (cons _L18155_
                                                              (cons _L18020_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f 'quote)
                                        (cons _L18730_ '()))
                                  '())))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))
                     _hd1875618784_
                     _hd1875318774_)
                    (_g1874818763_ _g1874918767_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1874818763_
                                                     _g1874918767_))))
                                            (_g1874818763_ _g1874918767_)))))
                                (_g1874718808_
                                 (list (gx#stx-identifier
                                        _L18729_
                                        '"&"
                                        _L18729_)
                                       (gx#stx-identifier
                                        _L18727_
                                        '"&"
                                        _L18727_)))))
                            _hd1868318721_
                            _hd1868018711_
                            _hd1867718701_)
                           (_g1867118690_ _g1867218694_))))
                   (_g1867118690_ _g1867218694_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1867118690_
                                                    _g1867218694_))))
                                           (_g1867118690_ _g1867218694_)))))
                               (_g1867018812_ _ref18668_)))
                           _attrs18414_)
                          '())))))
               _def-setf1843018498_
               _def-getf1843118501_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop1842418456_
                                       _target1842118450_
                                       '()
                                       '()))
                                    (_g1841718443_ _g1841818447_)))))
                          (_g1841718443_ _g1841818447_)))))
              (_g1841618816_
               (gx#stx-map
                (lambda (_ref18820_)
                  (let* ((_g1882318842_
                          (lambda (_g1882418838_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1882418838_)))
                         (_g1882218900_
                          (lambda (_g1882418846_)
                            (if (gx#stx-pair? _g1882418846_)
                                (let ((_e1882818849_
                                       (gx#syntax-e _g1882418846_)))
                                  (let ((_hd1882918853_ (##car _e1882818849_))
                                        (_tl1883018856_ (##cdr _e1882818849_)))
                                    (if (gx#stx-pair? _tl1883018856_)
                                        (let ((_e1883118859_
                                               (gx#syntax-e _tl1883018856_)))
                                          (let ((_hd1883218863_
                                                 (##car _e1883118859_))
                                                (_tl1883318866_
                                                 (##cdr _e1883118859_)))
                                            (if (gx#stx-pair? _tl1883318866_)
                                                (let ((_e1883418869_
                                                       (gx#syntax-e
                                                        _tl1883318866_)))
                                                  (let ((_hd1883518873_
                                                         (##car _e1883418869_))
                                                        (_tl1883618876_
                                                         (##cdr _e1883418869_)))
                                                    (if (gx#stx-null?
                                                         _tl1883618876_)
                                                        ((lambda (_L18879_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L18881_
                          _L18882_)
                   (cons (_wrap17923_
                          (cons (gx#datum->syntax '#f 'def)
                                (cons _L18881_
                                      (cons (cons _L18159_
                                                  (cons _L18020_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons _L18882_ '()))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '()))))
                         (cons (_wrap17923_
                                (cons (gx#datum->syntax '#f 'def)
                                      (cons _L18879_
                                            (cons (cons _L18158_
                                                        (cons _L18020_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _L18882_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))
                               '())))
                 _hd1883518873_
                 _hd1883218863_
                 _hd1882918853_)
                (_g1882318842_ _g1882418846_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1882318842_
                                                 _g1882418846_))))
                                        (_g1882318842_ _g1882418846_))))
                                (_g1882318842_ _g1882418846_)))))
                    (_g1882218900_ _ref18820_)))
                _attrs18414_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1838718398_))))
                                       (_g1838518904_
                                        (_wrap17923_
                                         (cons (gx#datum->syntax '#f 'def)
                                               (cons _L18017_
                                                     (cons (cons _L18160_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L18020_ '()))
                   '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _g1835918370_))))
                        (_g1835718908_
                         (if (gx#stx-false? _L18018_)
                             (cons (gx#datum->syntax '#f 'begin) '())
                             (_wrap17923_
                              (cons (gx#datum->syntax '#f 'def)
                                    (cons (cons _L18018_
                                                (gx#datum->syntax '#f '$args))
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'apply)
                                                      (cons _L18161_
                                                            (cons _L18020_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f '$args) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))))))))
                  _g1833118342_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1832918912_
                                                  (_wrap17923_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'def)
                                                         (cons _L18020_
                                                               (cons _L18317_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _g1830318314_))))
                                  (_g1830118916_
                                   (if _struct?17921_
                                       (let* ((_g1892018944_
                                               (lambda (_g1892118940_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1892118940_)))
                                              (_g1891919031_
                                               (lambda (_g1892118948_)
                                                 (if (gx#stx-pair?
                                                      _g1892118948_)
                                                     (let ((_e1892418951_
                                                            (gx#syntax-e
                                                             _g1892118948_)))
                                                       (let ((_hd1892518955_
                                                              (##car _e1892418951_))
                                                             (_tl1892618958_
                                                              (##cdr _e1892418951_)))
                                                         (if (gx#stx-pair?
                                                              _tl1892618958_)
                                                             (let ((_e1892718961_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl1892618958_)))
                       (let ((_hd1892818965_ (##car _e1892718961_))
                             (_tl1892918968_ (##cdr _e1892718961_)))
                         (if (gx#stx-pair/null? _hd1892818965_)
                             (let ((_g42101_
                                    (gx#syntax-split-splice
                                     _hd1892818965_
                                     '0)))
                               (begin
                                 (let ((_g42102_
                                        (if (##values? _g42101_)
                                            (##vector-length _g42101_)
                                            1)))
                                   (if (not (##fx= _g42102_ 2))
                                       (error "Context expects 2 values"
                                              _g42102_)))
                                 (let ((_target1893018971_
                                        (##vector-ref _g42101_ 0))
                                       (_tl1893218974_
                                        (##vector-ref _g42101_ 1)))
                                   (if (gx#stx-null? _tl1893218974_)
                                       (letrec ((_loop1893318977_
                                                 (lambda (_hd1893118981_
                                                          _field-id1893718984_)
                                                   (if (gx#stx-pair?
                                                        _hd1893118981_)
                                                       (let ((_e1893418987_
                                                              (gx#syntax-e
                                                               _hd1893118981_)))
                                                         (let ((_lp-hd1893518991_
                                                                (##car _e1893418987_))
                                                               (_lp-tl1893618994_
                                                                (##cdr _e1893418987_)))
                                                           (_loop1893318977_
                                                            _lp-tl1893618994_
                                                            (cons _lp-hd1893518991_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _field-id1893718984_))))
               (let ((_field-id1893818997_ (reverse _field-id1893718984_)))
                 (if (gx#stx-null? _tl1892918968_)
                     ((lambda (_L19001_ _L19003_)
                        (let ()
                          (cons (gx#datum->syntax '#f 'make-struct-type)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _L18205_ '()))
                                      (cons _L18019_
                                            (cons _L19003_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'quote)
                                                              (cons _L18233_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _L18261_
                      (cons (cons (gx#datum->syntax '#f 'quote)
                                  (cons _L18289_ '()))
                            (cons (cons (gx#datum->syntax '#f 'quote)
                                        (cons (foldr (lambda (_g1902219025_
                                                              _g1902319028_)
                                                       (cons _g1902219025_
                                                             _g1902319028_))
                                                     '()
                                                     _L19001_)
                                              '()))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      _field-id1893818997_
                      _hd1892518955_)
                     (_g1892018944_ _g1892118948_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop1893318977_
                                          _target1893018971_
                                          '()))
                                       (_g1892018944_ _g1892118948_)))))
                             (_g1892018944_ _g1892118948_))))
                     (_g1892018944_ _g1892118948_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1892018944_
                                                      _g1892118948_)))))
                                         (_g1891919031_
                                          (list (gx#stx-length _els18054_)
                                                (gx#stx-map
                                                 _field-id17926_
                                                 _els18054_))))
                                       (let* ((_g1903519068_
                                               (lambda (_g1903619064_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1903619064_)))
                                              (_g1903419196_
                                               (lambda (_g1903619072_)
                                                 (if (gx#stx-pair?
                                                      _g1903619072_)
                                                     (let ((_e1903919075_
                                                            (gx#syntax-e
                                                             _g1903619072_)))
                                                       (let ((_hd1904019079_
                                                              (##car _e1903919075_))
                                                             (_tl1904119082_
                                                              (##cdr _e1903919075_)))
                                                         (if (gx#stx-pair/null?
                                                              _hd1904019079_)
                                                             (let ((_g42103_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _hd1904019079_ '0)))
                       (begin
                         (let ((_g42104_
                                (if (##values? _g42103_)
                                    (##vector-length _g42103_)
                                    1)))
                           (if (not (##fx= _g42104_ 2))
                               (error "Context expects 2 values" _g42104_)))
                         (let ((_target1904219085_ (##vector-ref _g42103_ 0))
                               (_tl1904419088_ (##vector-ref _g42103_ 1)))
                           (if (gx#stx-null? _tl1904419088_)
                               (letrec ((_loop1904519091_
                                         (lambda (_hd1904319095_
                                                  _super1904919098_)
                                           (if (gx#stx-pair? _hd1904319095_)
                                               (let ((_e1904619101_
                                                      (gx#syntax-e
                                                       _hd1904319095_)))
                                                 (let ((_lp-hd1904719105_
                                                        (##car _e1904619101_))
                                                       (_lp-tl1904819108_
                                                        (##cdr _e1904619101_)))
                                                   (_loop1904519091_
                                                    _lp-tl1904819108_
                                                    (cons _lp-hd1904719105_
                                                          _super1904919098_))))
                                               (let ((_super1905019111_
                                                      (reverse _super1904919098_)))
                                                 (if (gx#stx-pair?
                                                      _tl1904119082_)
                                                     (let ((_e1905119115_
                                                            (gx#syntax-e
                                                             _tl1904119082_)))
                                                       (let ((_hd1905219119_
                                                              (##car _e1905119115_))
                                                             (_tl1905319122_
                                                              (##cdr _e1905119115_)))
                                                         (if (gx#stx-pair/null?
                                                              _hd1905219119_)
                                                             (let ((_g42105_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _hd1905219119_ '0)))
                       (begin
                         (let ((_g42106_
                                (if (##values? _g42105_)
                                    (##vector-length _g42105_)
                                    1)))
                           (if (not (##fx= _g42106_ 2))
                               (error "Context expects 2 values" _g42106_)))
                         (let ((_target1905419125_ (##vector-ref _g42105_ 0))
                               (_tl1905619128_ (##vector-ref _g42105_ 1)))
                           (if (gx#stx-null? _tl1905619128_)
                               (letrec ((_loop1905719131_
                                         (lambda (_hd1905519135_
                                                  _slot1906119138_)
                                           (if (gx#stx-pair? _hd1905519135_)
                                               (let ((_e1905819141_
                                                      (gx#syntax-e
                                                       _hd1905519135_)))
                                                 (let ((_lp-hd1905919145_
                                                        (##car _e1905819141_))
                                                       (_lp-tl1906019148_
                                                        (##cdr _e1905819141_)))
                                                   (_loop1905719131_
                                                    _lp-tl1906019148_
                                                    (cons _lp-hd1905919145_
                                                          _slot1906119138_))))
                                               (let ((_slot1906219151_
                                                      (reverse _slot1906119138_)))
                                                 (if (gx#stx-null?
                                                      _tl1905319122_)
                                                     ((lambda (_L19155_
                                                               _L19157_)
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'make-class-type)
                        (cons (cons (gx#datum->syntax '#f 'quote)
                                    (cons _L18205_ '()))
                              (cons (cons (gx#datum->syntax '#f '@list)
                                          (foldr (lambda (_g1917919184_
                                                          _g1918019187_)
                                                   (cons _g1917919184_
                                                         _g1918019187_))
                                                 '()
                                                 _L19157_))
                                    (cons (cons (gx#datum->syntax '#f 'quote)
                                                (cons (foldr (lambda (_g1918119190_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1918219193_)
                       (cons _g1918119190_ _g1918219193_))
                     '()
                     _L19155_)
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons _L18233_ '()))
                                                (cons _L18261_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons _L18289_ '()))
                    '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              _slot1906219151_
              _super1905019111_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1903519068_
                                                      _g1903619072_)))))))
                                 (_loop1905719131_ _target1905419125_ '()))
                               (_g1903519068_ _g1903619072_)))))
                     (_g1903519068_ _g1903619072_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1903519068_
                                                      _g1903619072_)))))))
                                 (_loop1904519091_ _target1904219085_ '()))
                               (_g1903519068_ _g1903619072_)))))
                     (_g1903519068_ _g1903619072_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1903519068_
                                                      _g1903619072_)))))
                                         (_g1903419196_
                                          (list _L18019_
                                                (gx#stx-map
                                                 gx#stx-car
                                                 _els18054_)))))))))
                            _g1827518286_))))
                   (_g1827319200_ (gx#stx-getq 'constructor: _L18015_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1824718258_))))
                                            (_g1824519204_
                                             (let ((_$e19208_
                                                    (gx#stx-getq
                                                     'plist:
                                                     _L18015_)))
                                               (if _$e19208_
                                                   _$e19208_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '@list)
                                                         '())))))))
                                      _g1821918230_))))
                             (_g1821719212_
                              (let ((_$e19216_ (gx#stx-getq 'name: _L18015_)))
                                (if _$e19216_ _$e19216_ _L18020_))))))
                       _g1819118202_))))
              (_g1818919220_
               (let ((_$e19224_ (gx#stx-getq 'id: _L18015_)))
                 (if _$e19224_
                     _$e19224_
                     (if (gx#module-context? (gx#current-expander-context))
                         (_module-type-id17929_ _L18020_)
                         (gx#genident _L18020_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1808118149_
                                                _hd1807818139_
                                                _hd1807518129_
                                                _hd1807218119_
                                                _hd1806918109_
                                                _hd1806618099_)
                                               (_g1805718088_ _g1805818092_))))
                                       (_g1805718088_ _g1805818092_))))
                               (_g1805718088_ _g1805818092_))))
                       (_g1805718088_ _g1805818092_))))
               (_g1805718088_ _g1805818092_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1805718088_ _g1805818092_))))
                                       (_g1805718088_ _g1805818092_)))))
                           (_g1805619228_
                            (if _struct?17921_
                                (cons (gx#datum->syntax
                                       '#f
                                       'make-struct-instance)
                                      (cons (gx#datum->syntax
                                             '#f
                                             'make-struct-predicate)
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'make-struct-field-accessor)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'make-struct-field-mutator)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'make-struct-field-unchecked-accessor)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'make-struct-field-unchecked-mutator)
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (cons (gx#datum->syntax
                                       '#f
                                       'make-class-instance)
                                      (cons (gx#datum->syntax
                                             '#f
                                             'make-class-predicate)
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'make-class-slot-accessor)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'make-class-slot-mutator)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'make-class-slot-unchecked-accessor)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'make-class-slot-unchecked-mutator)
                            '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (_g1793117958_ _g1793217962_)))
                   _tl1795218012_
                   _hd1795118009_
                   _hd1794817999_
                   _hd1794517989_
                   _hd1794217979_)))
              (_g1793117958_ _g1793217962_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1793117958_ _g1793217962_))))
                                      (_g1793117958_ _g1793217962_))))
                              (_g1793117958_ _g1793217962_))))
                      (_g1793117958_ _g1793217962_)))))
          (_g1793019232_ _stx17919_)))))
  (define |gerbil/core$<MOP>$<MOP:1>[:0:]#defstruct-type|
    (lambda (_stx19532_)
      (|gerbil/core$<MOP>$<MOP:1>[1]#generate-typedef| _stx19532_ '#t)))
  (define |gerbil/core$<MOP>$<MOP:1>[:0:]#defclass-type|
    (lambda (_stx19535_)
      (|gerbil/core$<MOP>$<MOP:1>[1]#generate-typedef| _stx19535_ '#f))))
