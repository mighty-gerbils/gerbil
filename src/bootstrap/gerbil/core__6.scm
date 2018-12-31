(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<MOP>$<MOP:1>[1]#generate-typedef|
    (lambda (_stx17793_ _struct?17795_)
      (letrec ((_wrap17797_
                (lambda (_e-stx19398_)
                  (gx#stx-wrap-source
                   _e-stx19398_
                   (gx#stx-source _stx17793_))))
               (_slotify17799_
                (lambda (_field19263_ _off19265_)
                  (let* ((___stx3878138782_ _field19263_)
                         (_g1926819295_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx3878138782_))))
                    (let ((___kont3878438785_
                           (lambda (_L19379_ _L19381_)
                             (cons _off19265_
                                   (cons _L19381_ (cons _L19379_ '())))))
                          (___kont3878638787_
                           (lambda (_L19332_ _L19334_ _L19335_)
                             (cons _off19265_
                                   (cons _L19334_ (cons _L19332_ '()))))))
                      (if (gx#stx-pair? ___stx3878138782_)
                          (let ((_e1927219359_
                                 (gx#syntax-e ___stx3878138782_)))
                            (let ((_tl1927419366_ (##cdr _e1927219359_))
                                  (_hd1927319363_ (##car _e1927219359_)))
                              (if (gx#stx-pair? _tl1927419366_)
                                  (let ((_e1927519369_
                                         (gx#syntax-e _tl1927419366_)))
                                    (let ((_tl1927719376_
                                           (##cdr _e1927519369_))
                                          (_hd1927619373_
                                           (##car _e1927519369_)))
                                      (if (gx#stx-null? _tl1927719376_)
                                          (___kont3878438785_
                                           _hd1927619373_
                                           _hd1927319363_)
                                          (if (gx#stx-pair? _tl1927719376_)
                                              (let ((_e1928719322_
                                                     (gx#syntax-e
                                                      _tl1927719376_)))
                                                (let ((_tl1928919329_
                                                       (##cdr _e1928719322_))
                                                      (_hd1928819326_
                                                       (##car _e1928719322_)))
                                                  (if (gx#stx-null?
                                                       _tl1928919329_)
                                                      (___kont3878638787_
                                                       _hd1928819326_
                                                       _hd1927619373_
                                                       _hd1927319363_)
                                                      (_g1926819295_))))
                                              (_g1926819295_)))))
                                  (_g1926819295_))))
                          (_g1926819295_))))))
               (_field-id17800_
                (lambda (_field19129_)
                  (let* ((___stx3882538826_ _field19129_)
                         (_g1913319160_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx3882538826_))))
                    (let ((___kont3882838829_ (lambda (_L19244_ _L19246_) ':))
                          (___kont3883038831_
                           (lambda (_L19197_ _L19199_ _L19200_) _L19200_)))
                      (if (gx#stx-pair? ___stx3882538826_)
                          (let ((_e1913719224_
                                 (gx#syntax-e ___stx3882538826_)))
                            (let ((_tl1913919231_ (##cdr _e1913719224_))
                                  (_hd1913819228_ (##car _e1913719224_)))
                              (if (gx#stx-pair? _tl1913919231_)
                                  (let ((_e1914019234_
                                         (gx#syntax-e _tl1913919231_)))
                                    (let ((_tl1914219241_
                                           (##cdr _e1914019234_))
                                          (_hd1914119238_
                                           (##car _e1914019234_)))
                                      (if (gx#stx-null? _tl1914219241_)
                                          (___kont3882838829_
                                           _hd1914119238_
                                           _hd1913819228_)
                                          (if (gx#stx-pair? _tl1914219241_)
                                              (let ((_e1915219187_
                                                     (gx#syntax-e
                                                      _tl1914219241_)))
                                                (let ((_tl1915419194_
                                                       (##cdr _e1915219187_))
                                                      (_hd1915319191_
                                                       (##car _e1915219187_)))
                                                  (if (gx#stx-null?
                                                       _tl1915419194_)
                                                      (___kont3883038831_
                                                       _hd1915319191_
                                                       _hd1914119238_
                                                       _hd1913819228_)
                                                      (_g1913319160_))))
                                              (_g1913319160_)))))
                                  (_g1913319160_))))
                          (_g1913319160_))))))
               (_struct-opt?17801_
                (lambda (_key19126_)
                  (memq (gx#stx-e _key19126_)
                        '(fields: id: name: plist: constructor: unchecked:))))
               (_class-opt?17802_
                (lambda (_key19123_)
                  (memq (gx#stx-e _key19123_)
                        '(slots: id: name: plist: constructor: unchecked:))))
               (_module-type-id17803_
                (lambda (_type-t19110_)
                  (let ((_$e19113_
                         (gx#module-context-ns (gx#current-expander-context))))
                    (if _$e19113_
                        ((lambda (_ns19117_)
                           (gx#stx-identifier
                            _type-t19110_
                            _ns19117_
                            '"#"
                            _type-t19110_))
                         _$e19113_)
                        (let ((_mid19120_
                               (gx#expander-context-id
                                (gx#current-expander-context))))
                          (gx#stx-identifier
                           _type-t19110_
                           _mid19120_
                           '"#"
                           _type-t19110_)))))))
        (let* ((_g1780517832_
                (lambda (_g1780617828_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1780617828_)))
               (_g1780419106_
                (lambda (_g1780617836_)
                  (if (gx#stx-pair? _g1780617836_)
                      (let ((_e1781217839_ (gx#syntax-e _g1780617836_)))
                        (let ((_hd1781317843_ (##car _e1781217839_))
                              (_tl1781417846_ (##cdr _e1781217839_)))
                          (if (gx#stx-pair? _tl1781417846_)
                              (let ((_e1781517849_
                                     (gx#syntax-e _tl1781417846_)))
                                (let ((_hd1781617853_ (##car _e1781517849_))
                                      (_tl1781717856_ (##cdr _e1781517849_)))
                                  (if (gx#stx-pair? _tl1781717856_)
                                      (let ((_e1781817859_
                                             (gx#syntax-e _tl1781717856_)))
                                        (let ((_hd1781917863_
                                               (##car _e1781817859_))
                                              (_tl1782017866_
                                               (##cdr _e1781817859_)))
                                          (if (gx#stx-pair? _tl1782017866_)
                                              (let ((_e1782117869_
                                                     (gx#syntax-e
                                                      _tl1782017866_)))
                                                (let ((_hd1782217873_
                                                       (##car _e1782117869_))
                                                      (_tl1782317876_
                                                       (##cdr _e1782117869_)))
                                                  (if (gx#stx-pair?
                                                       _tl1782317876_)
                                                      (let ((_e1782417879_
                                                             (gx#syntax-e
                                                              _tl1782317876_)))
                                                        (let ((_hd1782517883_
                                                               (##car _e1782417879_))
                                                              (_tl1782617886_
                                                               (##cdr _e1782417879_)))
                                                          ((lambda (_L17889_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L17891_
                            _L17892_
                            _L17893_
                            _L17894_)
                     (if (and (gx#identifier? _L17894_)
                              (or (gx#identifier? _L17892_)
                                  (gx#stx-false? _L17892_))
                              (gx#identifier? _L17891_)
                              (gx#stx-plist?
                               _L17889_
                               (if _struct?17795_
                                   _struct-opt?17801_
                                   _class-opt?17802_)))
                         (let* ((_els17928_
                                 (let ((_$e17924_
                                        (gx#stx-getq
                                         (if _struct?17795_ 'fields: 'slots:)
                                         _L17889_)))
                                   (if _$e17924_ _$e17924_ '())))
                                (_g1793117962_
                                 (lambda (_g1793217958_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1793217958_)))
                                (_g1793019102_
                                 (lambda (_g1793217966_)
                                   (if (gx#stx-pair? _g1793217966_)
                                       (let ((_e1793917969_
                                              (gx#syntax-e _g1793217966_)))
                                         (let ((_hd1794017973_
                                                (##car _e1793917969_))
                                               (_tl1794117976_
                                                (##cdr _e1793917969_)))
                                           (if (gx#stx-pair? _tl1794117976_)
                                               (let ((_e1794217979_
                                                      (gx#syntax-e
                                                       _tl1794117976_)))
                                                 (let ((_hd1794317983_
                                                        (##car _e1794217979_))
                                                       (_tl1794417986_
                                                        (##cdr _e1794217979_)))
                                                   (if (gx#stx-pair?
                                                        _tl1794417986_)
                                                       (let ((_e1794517989_
                                                              (gx#syntax-e
                                                               _tl1794417986_)))
                                                         (let ((_hd1794617993_
                                                                (##car _e1794517989_))
                                                               (_tl1794717996_
                                                                (##cdr _e1794517989_)))
                                                           (if (gx#stx-pair?
                                                                _tl1794717996_)
                                                               (let ((_e1794817999_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl1794717996_)))
                         (let ((_hd1794918003_ (##car _e1794817999_))
                               (_tl1795018006_ (##cdr _e1794817999_)))
                           (if (gx#stx-pair? _tl1795018006_)
                               (let ((_e1795118009_
                                      (gx#syntax-e _tl1795018006_)))
                                 (let ((_hd1795218013_ (##car _e1795118009_))
                                       (_tl1795318016_ (##cdr _e1795118009_)))
                                   (if (gx#stx-pair? _tl1795318016_)
                                       (let ((_e1795418019_
                                              (gx#syntax-e _tl1795318016_)))
                                         (let ((_hd1795518023_
                                                (##car _e1795418019_))
                                               (_tl1795618026_
                                                (##cdr _e1795418019_)))
                                           (if (gx#stx-null? _tl1795618026_)
                                               ((lambda (_L18029_
                                                         _L18031_
                                                         _L18032_
                                                         _L18033_
                                                         _L18034_
                                                         _L18035_)
                                                  (let ()
                                                    (let* ((_g1806418072_
                                                            (lambda (_g1806518068_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g1806518068_)))
                                                           (_g1806319094_
                                                            (lambda (_g1806518076_)
                                                              ((lambda (_L18079_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g1809218100_
                                   (lambda (_g1809318096_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1809318096_)))
                                  (_g1809119086_
                                   (lambda (_g1809318104_)
                                     ((lambda (_L18107_)
                                        (let ()
                                          (let* ((_g1812018128_
                                                  (lambda (_g1812118124_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1812118124_)))
                                                 (_g1811919078_
                                                  (lambda (_g1812118132_)
                                                    ((lambda (_L18135_)
                                                       (let ()
                                                         (let* ((_g1814818156_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1814918152_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1814918152_)))
                        (_g1814719074_
                         (lambda (_g1814918160_)
                           ((lambda (_L18163_)
                              (let ()
                                (let* ((_g1817618184_
                                        (lambda (_g1817718180_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g1817718180_)))
                                       (_g1817518790_
                                        (lambda (_g1817718188_)
                                          ((lambda (_L18191_)
                                             (let ()
                                               (let* ((_g1820418212_
                                                       (lambda (_g1820518208_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1820518208_)))
                                                      (_g1820318786_
                                                       (lambda (_g1820518216_)
                                                         ((lambda (_L18219_)
                                                            (let ()
                                                              (let* ((_g1823218240_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g1823318236_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1823318236_)))
                             (_g1823118782_
                              (lambda (_g1823318244_)
                                ((lambda (_L18247_)
                                   (let ()
                                     (let* ((_g1826018268_
                                             (lambda (_g1826118264_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1826118264_)))
                                            (_g1825918778_
                                             (lambda (_g1826118272_)
                                               ((lambda (_L18275_)
                                                  (let ()
                                                    (let* ((_attrs18288_
                                                            (if _struct?17795_
                                                                (gx#stx-map
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _slotify17799_
                         _els17928_
                         (iota (gx#stx-length _els17928_)))
                        _els17928_))
                   (_g1829118317_
                    (lambda (_g1829218313_)
                      (gx#raise-syntax-error '#f '"Bad syntax" _g1829218313_)))
                   (_g1829018690_
                    (lambda (_g1829218321_)
                      (if (gx#stx-pair/null? _g1829218321_)
                          (let ((_g41917_
                                 (gx#syntax-split-splice _g1829218321_ '0)))
                            (begin
                              (let ((_g41918_
                                     (if (##values? _g41917_)
                                         (##vector-length _g41917_)
                                         1)))
                                (if (not (##fx= _g41918_ 2))
                                    (error "Context expects 2 values"
                                           _g41918_)))
                              (let ((_target1829518324_
                                     (##vector-ref _g41917_ 0))
                                    (_tl1829718327_ (##vector-ref _g41917_ 1)))
                                (if (gx#stx-null? _tl1829718327_)
                                    (letrec ((_loop1829818330_
                                              (lambda (_hd1829618334_
                                                       _def-setf1830218337_
                                                       _def-getf1830318339_)
                                                (if (gx#stx-pair?
                                                     _hd1829618334_)
                                                    (let ((_e1829918342_
                                                           (gx#syntax-e
                                                            _hd1829618334_)))
                                                      (let ((_lp-hd1830018346_
                                                             (##car _e1829918342_))
                                                            (_lp-tl1830118349_
                                                             (##cdr _e1829918342_)))
                                                        (if (gx#stx-pair?
                                                             _lp-hd1830018346_)
                                                            (let ((_e1830618352_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _lp-hd1830018346_)))
                      (let ((_hd1830718356_ (##car _e1830618352_))
                            (_tl1830818359_ (##cdr _e1830618352_)))
                        (if (gx#stx-pair? _tl1830818359_)
                            (let ((_e1830918362_ (gx#syntax-e _tl1830818359_)))
                              (let ((_hd1831018366_ (##car _e1830918362_))
                                    (_tl1831118369_ (##cdr _e1830918362_)))
                                (if (gx#stx-null? _tl1831118369_)
                                    (_loop1829818330_
                                     _lp-tl1830118349_
                                     (cons _hd1831018366_ _def-setf1830218337_)
                                     (cons _hd1830718356_
                                           _def-getf1830318339_))
                                    (_g1829118317_ _g1829218321_))))
                            (_g1829118317_ _g1829218321_))))
                    (_g1829118317_ _g1829218321_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_def-setf1830418372_
                                                           (reverse _def-setf1830218337_))
                                                          (_def-getf1830518375_
                                                           (reverse _def-getf1830318339_)))
                                                      ((lambda (_L18378_
                                                                _L18380_)
                                                         (let ()
                                                           (let* ((_g1839818424_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g1839918420_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1839918420_)))
                          (_g1839718538_
                           (lambda (_g1839918428_)
                             (if (gx#stx-pair/null? _g1839918428_)
                                 (let ((_g41919_
                                        (gx#syntax-split-splice
                                         _g1839918428_
                                         '0)))
                                   (begin
                                     (let ((_g41920_
                                            (if (##values? _g41919_)
                                                (##vector-length _g41919_)
                                                1)))
                                       (if (not (##fx= _g41920_ 2))
                                           (error "Context expects 2 values"
                                                  _g41920_)))
                                     (let ((_target1840218431_
                                            (##vector-ref _g41919_ 0))
                                           (_tl1840418434_
                                            (##vector-ref _g41919_ 1)))
                                       (if (gx#stx-null? _tl1840418434_)
                                           (letrec ((_loop1840518437_
                                                     (lambda (_hd1840318441_
                                                              _def-usetf1840918444_
                                                              _def-ugetf1841018446_)
                                                       (if (gx#stx-pair?
                                                            _hd1840318441_)
                                                           (let ((_e1840618449_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd1840318441_)))
                     (let ((_lp-hd1840718453_ (##car _e1840618449_))
                           (_lp-tl1840818456_ (##cdr _e1840618449_)))
                       (if (gx#stx-pair? _lp-hd1840718453_)
                           (let ((_e1841318459_
                                  (gx#syntax-e _lp-hd1840718453_)))
                             (let ((_hd1841418463_ (##car _e1841318459_))
                                   (_tl1841518466_ (##cdr _e1841318459_)))
                               (if (gx#stx-pair? _tl1841518466_)
                                   (let ((_e1841618469_
                                          (gx#syntax-e _tl1841518466_)))
                                     (let ((_hd1841718473_
                                            (##car _e1841618469_))
                                           (_tl1841818476_
                                            (##cdr _e1841618469_)))
                                       (if (gx#stx-null? _tl1841818476_)
                                           (_loop1840518437_
                                            _lp-tl1840818456_
                                            (cons _hd1841718473_
                                                  _def-usetf1840918444_)
                                            (cons _hd1841418463_
                                                  _def-ugetf1841018446_))
                                           (_g1839818424_ _g1839918428_))))
                                   (_g1839818424_ _g1839918428_))))
                           (_g1839818424_ _g1839918428_))))
                   (let ((_def-usetf1841118479_
                          (reverse _def-usetf1840918444_))
                         (_def-ugetf1841218482_
                          (reverse _def-ugetf1841018446_)))
                     ((lambda (_L18485_ _L18487_)
                        (let ()
                          (let ()
                            (_wrap17797_
                             (cons (gx#datum->syntax '#f 'begin)
                                   (cons _L18219_
                                         (cons _L18275_
                                               (cons _L18247_
                                                     (foldr (lambda (_g1850518514_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g1850618517_)
                      (cons _g1850518514_ _g1850618517_))
                    (foldr (lambda (_g1850718520_ _g1850818523_)
                             (cons _g1850718520_ _g1850818523_))
                           (foldr (lambda (_g1850918526_ _g1851018529_)
                                    (cons _g1850918526_ _g1851018529_))
                                  (foldr (lambda (_g1851118532_ _g1851218535_)
                                           (cons _g1851118532_ _g1851218535_))
                                         '()
                                         _L18485_)
                                  _L18487_)
                           _L18378_)
                    _L18380_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      _def-usetf1841118479_
                      _def-ugetf1841218482_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop1840518437_
                                              _target1840218431_
                                              '()
                                              '()))
                                           (_g1839818424_ _g1839918428_)))))
                                 (_g1839818424_ _g1839918428_)))))
                     (_g1839718538_
                      (if (gx#stx-e (gx#stx-getq 'unchecked: _L17889_))
                          (gx#stx-map
                           (lambda (_ref18542_)
                             (let* ((_g1854518564_
                                     (lambda (_g1854618560_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1854618560_)))
                                    (_g1854418686_
                                     (lambda (_g1854618568_)
                                       (if (gx#stx-pair? _g1854618568_)
                                           (let ((_e1855018571_
                                                  (gx#syntax-e _g1854618568_)))
                                             (let ((_hd1855118575_
                                                    (##car _e1855018571_))
                                                   (_tl1855218578_
                                                    (##cdr _e1855018571_)))
                                               (if (gx#stx-pair?
                                                    _tl1855218578_)
                                                   (let ((_e1855318581_
                                                          (gx#syntax-e
                                                           _tl1855218578_)))
                                                     (let ((_hd1855418585_
                                                            (##car _e1855318581_))
                                                           (_tl1855518588_
                                                            (##cdr _e1855318581_)))
                                                       (if (gx#stx-pair?
                                                            _tl1855518588_)
                                                           (let ((_e1855618591_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl1855518588_)))
                     (let ((_hd1855718595_ (##car _e1855618591_))
                           (_tl1855818598_ (##cdr _e1855618591_)))
                       (if (gx#stx-null? _tl1855818598_)
                           ((lambda (_L18601_ _L18603_ _L18604_)
                              (let* ((_g1862218637_
                                      (lambda (_g1862318633_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g1862318633_)))
                                     (_g1862118682_
                                      (lambda (_g1862318641_)
                                        (if (gx#stx-pair? _g1862318641_)
                                            (let ((_e1862618644_
                                                   (gx#syntax-e
                                                    _g1862318641_)))
                                              (let ((_hd1862718648_
                                                     (##car _e1862618644_))
                                                    (_tl1862818651_
                                                     (##cdr _e1862618644_)))
                                                (if (gx#stx-pair?
                                                     _tl1862818651_)
                                                    (let ((_e1862918654_
                                                           (gx#syntax-e
                                                            _tl1862818651_)))
                                                      (let ((_hd1863018658_
                                                             (##car _e1862918654_))
                                                            (_tl1863118661_
                                                             (##cdr _e1862918654_)))
                                                        (if (gx#stx-null?
                                                             _tl1863118661_)
                                                            ((lambda (_L18664_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L18666_)
                       (let ()
                         (cons (_wrap17797_
                                (cons (gx#datum->syntax '#f 'def)
                                      (cons _L18666_
                                            (cons (cons _L18031_
                                                        (cons _L17894_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _L18604_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))
                               (cons (_wrap17797_
                                      (cons (gx#datum->syntax '#f 'def)
                                            (cons _L18664_
                                                  (cons (cons _L18029_
                                                              (cons _L17894_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f 'quote)
                                        (cons _L18604_ '()))
                                  '())))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))
                     _hd1863018658_
                     _hd1862718648_)
                    (_g1862218637_ _g1862318641_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1862218637_
                                                     _g1862318641_))))
                                            (_g1862218637_ _g1862318641_)))))
                                (_g1862118682_
                                 (list (gx#stx-identifier
                                        _L18603_
                                        '"&"
                                        _L18603_)
                                       (gx#stx-identifier
                                        _L18601_
                                        '"&"
                                        _L18601_)))))
                            _hd1855718595_
                            _hd1855418585_
                            _hd1855118575_)
                           (_g1854518564_ _g1854618568_))))
                   (_g1854518564_ _g1854618568_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1854518564_
                                                    _g1854618568_))))
                                           (_g1854518564_ _g1854618568_)))))
                               (_g1854418686_ _ref18542_)))
                           _attrs18288_)
                          '())))))
               _def-setf1830418372_
               _def-getf1830518375_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop1829818330_
                                       _target1829518324_
                                       '()
                                       '()))
                                    (_g1829118317_ _g1829218321_)))))
                          (_g1829118317_ _g1829218321_)))))
              (_g1829018690_
               (gx#stx-map
                (lambda (_ref18694_)
                  (let* ((_g1869718716_
                          (lambda (_g1869818712_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1869818712_)))
                         (_g1869618774_
                          (lambda (_g1869818720_)
                            (if (gx#stx-pair? _g1869818720_)
                                (let ((_e1870218723_
                                       (gx#syntax-e _g1869818720_)))
                                  (let ((_hd1870318727_ (##car _e1870218723_))
                                        (_tl1870418730_ (##cdr _e1870218723_)))
                                    (if (gx#stx-pair? _tl1870418730_)
                                        (let ((_e1870518733_
                                               (gx#syntax-e _tl1870418730_)))
                                          (let ((_hd1870618737_
                                                 (##car _e1870518733_))
                                                (_tl1870718740_
                                                 (##cdr _e1870518733_)))
                                            (if (gx#stx-pair? _tl1870718740_)
                                                (let ((_e1870818743_
                                                       (gx#syntax-e
                                                        _tl1870718740_)))
                                                  (let ((_hd1870918747_
                                                         (##car _e1870818743_))
                                                        (_tl1871018750_
                                                         (##cdr _e1870818743_)))
                                                    (if (gx#stx-null?
                                                         _tl1871018750_)
                                                        ((lambda (_L18753_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L18755_
                          _L18756_)
                   (cons (_wrap17797_
                          (cons (gx#datum->syntax '#f 'def)
                                (cons _L18755_
                                      (cons (cons _L18033_
                                                  (cons _L17894_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons _L18756_ '()))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '()))))
                         (cons (_wrap17797_
                                (cons (gx#datum->syntax '#f 'def)
                                      (cons _L18753_
                                            (cons (cons _L18032_
                                                        (cons _L17894_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _L18756_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))
                               '())))
                 _hd1870918747_
                 _hd1870618737_
                 _hd1870318727_)
                (_g1869718716_ _g1869818720_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1869718716_
                                                 _g1869818720_))))
                                        (_g1869718716_ _g1869818720_))))
                                (_g1869718716_ _g1869818720_)))))
                    (_g1869618774_ _ref18694_)))
                _attrs18288_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1826118272_))))
                                       (_g1825918778_
                                        (_wrap17797_
                                         (cons (gx#datum->syntax '#f 'def)
                                               (cons _L17891_
                                                     (cons (cons _L18034_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L17894_ '()))
                   '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _g1823318244_))))
                        (_g1823118782_
                         (if (gx#stx-false? _L17892_)
                             (cons (gx#datum->syntax '#f 'begin) '())
                             (_wrap17797_
                              (cons (gx#datum->syntax '#f 'def)
                                    (cons (cons _L17892_
                                                (gx#datum->syntax '#f '$args))
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'apply)
                                                      (cons _L18035_
                                                            (cons _L17894_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f '$args) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))))))))
                  _g1820518216_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1820318786_
                                                  (_wrap17797_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'def)
                                                         (cons _L17894_
                                                               (cons _L18191_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _g1817718188_))))
                                  (_g1817518790_
                                   (if _struct?17795_
                                       (let* ((_g1879418818_
                                               (lambda (_g1879518814_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1879518814_)))
                                              (_g1879318905_
                                               (lambda (_g1879518822_)
                                                 (if (gx#stx-pair?
                                                      _g1879518822_)
                                                     (let ((_e1879818825_
                                                            (gx#syntax-e
                                                             _g1879518822_)))
                                                       (let ((_hd1879918829_
                                                              (##car _e1879818825_))
                                                             (_tl1880018832_
                                                              (##cdr _e1879818825_)))
                                                         (if (gx#stx-pair?
                                                              _tl1880018832_)
                                                             (let ((_e1880118835_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl1880018832_)))
                       (let ((_hd1880218839_ (##car _e1880118835_))
                             (_tl1880318842_ (##cdr _e1880118835_)))
                         (if (gx#stx-pair/null? _hd1880218839_)
                             (let ((_g41921_
                                    (gx#syntax-split-splice
                                     _hd1880218839_
                                     '0)))
                               (begin
                                 (let ((_g41922_
                                        (if (##values? _g41921_)
                                            (##vector-length _g41921_)
                                            1)))
                                   (if (not (##fx= _g41922_ 2))
                                       (error "Context expects 2 values"
                                              _g41922_)))
                                 (let ((_target1880418845_
                                        (##vector-ref _g41921_ 0))
                                       (_tl1880618848_
                                        (##vector-ref _g41921_ 1)))
                                   (if (gx#stx-null? _tl1880618848_)
                                       (letrec ((_loop1880718851_
                                                 (lambda (_hd1880518855_
                                                          _field-id1881118858_)
                                                   (if (gx#stx-pair?
                                                        _hd1880518855_)
                                                       (let ((_e1880818861_
                                                              (gx#syntax-e
                                                               _hd1880518855_)))
                                                         (let ((_lp-hd1880918865_
                                                                (##car _e1880818861_))
                                                               (_lp-tl1881018868_
                                                                (##cdr _e1880818861_)))
                                                           (_loop1880718851_
                                                            _lp-tl1881018868_
                                                            (cons _lp-hd1880918865_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _field-id1881118858_))))
               (let ((_field-id1881218871_ (reverse _field-id1881118858_)))
                 (if (gx#stx-null? _tl1880318842_)
                     ((lambda (_L18875_ _L18877_)
                        (let ()
                          (cons (gx#datum->syntax '#f 'make-struct-type)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _L18079_ '()))
                                      (cons _L17893_
                                            (cons _L18877_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'quote)
                                                              (cons _L18107_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _L18135_
                      (cons (cons (gx#datum->syntax '#f 'quote)
                                  (cons _L18163_ '()))
                            (cons (cons (gx#datum->syntax '#f 'quote)
                                        (cons (foldr (lambda (_g1889618899_
                                                              _g1889718902_)
                                                       (cons _g1889618899_
                                                             _g1889718902_))
                                                     '()
                                                     _L18875_)
                                              '()))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      _field-id1881218871_
                      _hd1879918829_)
                     (_g1879418818_ _g1879518822_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop1880718851_
                                          _target1880418845_
                                          '()))
                                       (_g1879418818_ _g1879518822_)))))
                             (_g1879418818_ _g1879518822_))))
                     (_g1879418818_ _g1879518822_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1879418818_
                                                      _g1879518822_)))))
                                         (_g1879318905_
                                          (list (gx#stx-length _els17928_)
                                                (gx#stx-map
                                                 _field-id17800_
                                                 _els17928_))))
                                       (let* ((_g1890918942_
                                               (lambda (_g1891018938_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1891018938_)))
                                              (_g1890819070_
                                               (lambda (_g1891018946_)
                                                 (if (gx#stx-pair?
                                                      _g1891018946_)
                                                     (let ((_e1891318949_
                                                            (gx#syntax-e
                                                             _g1891018946_)))
                                                       (let ((_hd1891418953_
                                                              (##car _e1891318949_))
                                                             (_tl1891518956_
                                                              (##cdr _e1891318949_)))
                                                         (if (gx#stx-pair/null?
                                                              _hd1891418953_)
                                                             (let ((_g41923_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _hd1891418953_ '0)))
                       (begin
                         (let ((_g41924_
                                (if (##values? _g41923_)
                                    (##vector-length _g41923_)
                                    1)))
                           (if (not (##fx= _g41924_ 2))
                               (error "Context expects 2 values" _g41924_)))
                         (let ((_target1891618959_ (##vector-ref _g41923_ 0))
                               (_tl1891818962_ (##vector-ref _g41923_ 1)))
                           (if (gx#stx-null? _tl1891818962_)
                               (letrec ((_loop1891918965_
                                         (lambda (_hd1891718969_
                                                  _super1892318972_)
                                           (if (gx#stx-pair? _hd1891718969_)
                                               (let ((_e1892018975_
                                                      (gx#syntax-e
                                                       _hd1891718969_)))
                                                 (let ((_lp-hd1892118979_
                                                        (##car _e1892018975_))
                                                       (_lp-tl1892218982_
                                                        (##cdr _e1892018975_)))
                                                   (_loop1891918965_
                                                    _lp-tl1892218982_
                                                    (cons _lp-hd1892118979_
                                                          _super1892318972_))))
                                               (let ((_super1892418985_
                                                      (reverse _super1892318972_)))
                                                 (if (gx#stx-pair?
                                                      _tl1891518956_)
                                                     (let ((_e1892518989_
                                                            (gx#syntax-e
                                                             _tl1891518956_)))
                                                       (let ((_hd1892618993_
                                                              (##car _e1892518989_))
                                                             (_tl1892718996_
                                                              (##cdr _e1892518989_)))
                                                         (if (gx#stx-pair/null?
                                                              _hd1892618993_)
                                                             (let ((_g41925_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _hd1892618993_ '0)))
                       (begin
                         (let ((_g41926_
                                (if (##values? _g41925_)
                                    (##vector-length _g41925_)
                                    1)))
                           (if (not (##fx= _g41926_ 2))
                               (error "Context expects 2 values" _g41926_)))
                         (let ((_target1892818999_ (##vector-ref _g41925_ 0))
                               (_tl1893019002_ (##vector-ref _g41925_ 1)))
                           (if (gx#stx-null? _tl1893019002_)
                               (letrec ((_loop1893119005_
                                         (lambda (_hd1892919009_
                                                  _slot1893519012_)
                                           (if (gx#stx-pair? _hd1892919009_)
                                               (let ((_e1893219015_
                                                      (gx#syntax-e
                                                       _hd1892919009_)))
                                                 (let ((_lp-hd1893319019_
                                                        (##car _e1893219015_))
                                                       (_lp-tl1893419022_
                                                        (##cdr _e1893219015_)))
                                                   (_loop1893119005_
                                                    _lp-tl1893419022_
                                                    (cons _lp-hd1893319019_
                                                          _slot1893519012_))))
                                               (let ((_slot1893619025_
                                                      (reverse _slot1893519012_)))
                                                 (if (gx#stx-null?
                                                      _tl1892718996_)
                                                     ((lambda (_L19029_
                                                               _L19031_)
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'make-class-type)
                        (cons (cons (gx#datum->syntax '#f 'quote)
                                    (cons _L18079_ '()))
                              (cons (cons (gx#datum->syntax '#f '@list)
                                          (foldr (lambda (_g1905319058_
                                                          _g1905419061_)
                                                   (cons _g1905319058_
                                                         _g1905419061_))
                                                 '()
                                                 _L19031_))
                                    (cons (cons (gx#datum->syntax '#f 'quote)
                                                (cons (foldr (lambda (_g1905519064_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1905619067_)
                       (cons _g1905519064_ _g1905619067_))
                     '()
                     _L19029_)
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons _L18107_ '()))
                                                (cons _L18135_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons _L18163_ '()))
                    '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              _slot1893619025_
              _super1892418985_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1890918942_
                                                      _g1891018946_)))))))
                                 (_loop1893119005_ _target1892818999_ '()))
                               (_g1890918942_ _g1891018946_)))))
                     (_g1890918942_ _g1891018946_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1890918942_
                                                      _g1891018946_)))))))
                                 (_loop1891918965_ _target1891618959_ '()))
                               (_g1890918942_ _g1891018946_)))))
                     (_g1890918942_ _g1891018946_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1890918942_
                                                      _g1891018946_)))))
                                         (_g1890819070_
                                          (list _L17893_
                                                (gx#stx-map
                                                 gx#stx-car
                                                 _els17928_)))))))))
                            _g1814918160_))))
                   (_g1814719074_ (gx#stx-getq 'constructor: _L17889_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1812118132_))))
                                            (_g1811919078_
                                             (let ((_$e19082_
                                                    (gx#stx-getq
                                                     'plist:
                                                     _L17889_)))
                                               (if _$e19082_
                                                   _$e19082_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '@list)
                                                         '())))))))
                                      _g1809318104_))))
                             (_g1809119086_
                              (let ((_$e19090_ (gx#stx-getq 'name: _L17889_)))
                                (if _$e19090_ _$e19090_ _L17894_))))))
                       _g1806518076_))))
              (_g1806319094_
               (let ((_$e19098_ (gx#stx-getq 'id: _L17889_)))
                 (if _$e19098_
                     _$e19098_
                     (if (gx#module-context? (gx#current-expander-context))
                         (_module-type-id17803_ _L17894_)
                         (gx#genident _L17894_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1795518023_
                                                _hd1795218013_
                                                _hd1794918003_
                                                _hd1794617993_
                                                _hd1794317983_
                                                _hd1794017973_)
                                               (_g1793117962_ _g1793217966_))))
                                       (_g1793117962_ _g1793217966_))))
                               (_g1793117962_ _g1793217966_))))
                       (_g1793117962_ _g1793217966_))))
               (_g1793117962_ _g1793217966_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1793117962_ _g1793217966_))))
                                       (_g1793117962_ _g1793217966_)))))
                           (_g1793019102_
                            (if _struct?17795_
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
                         (_g1780517832_ _g1780617836_)))
                   _tl1782617886_
                   _hd1782517883_
                   _hd1782217873_
                   _hd1781917863_
                   _hd1781617853_)))
              (_g1780517832_ _g1780617836_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1780517832_ _g1780617836_))))
                                      (_g1780517832_ _g1780617836_))))
                              (_g1780517832_ _g1780617836_))))
                      (_g1780517832_ _g1780617836_)))))
          (_g1780419106_ _stx17793_)))))
  (define |gerbil/core$<MOP>$<MOP:1>[:0:]#defstruct-type|
    (lambda (_stx19406_)
      (|gerbil/core$<MOP>$<MOP:1>[1]#generate-typedef| _stx19406_ '#t)))
  (define |gerbil/core$<MOP>$<MOP:1>[:0:]#defclass-type|
    (lambda (_stx19409_)
      (|gerbil/core$<MOP>$<MOP:1>[1]#generate-typedef| _stx19409_ '#f))))
