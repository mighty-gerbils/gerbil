(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<MOP>$<MOP:1>[1]#generate-typedef|
    (lambda (_stx16799_ _struct?16801_)
      (letrec ((_wrap16803_
                (lambda (_e-stx18404_)
                  (gx#stx-wrap-source
                   _e-stx18404_
                   (gx#stx-source _stx16799_))))
               (_slotify16805_
                (lambda (_field18269_ _off18271_)
                  (let* ((_g1827418301_
                          (lambda (_g1827518297_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1827518297_)))
                         (_g1827318358_
                          (lambda (_g1827518305_)
                            (if (gx#stx-pair? _g1827518305_)
                                (let ((_e1828718308_
                                       (gx#syntax-e _g1827518305_)))
                                  (let ((_hd1828818312_ (##car _e1828718308_))
                                        (_tl1828918315_ (##cdr _e1828718308_)))
                                    (if (gx#stx-pair? _tl1828918315_)
                                        (let ((_e1829018318_
                                               (gx#syntax-e _tl1828918315_)))
                                          (let ((_hd1829118322_
                                                 (##car _e1829018318_))
                                                (_tl1829218325_
                                                 (##cdr _e1829018318_)))
                                            (if (gx#stx-pair? _tl1829218325_)
                                                (let ((_e1829318328_
                                                       (gx#syntax-e
                                                        _tl1829218325_)))
                                                  (let ((_hd1829418332_
                                                         (##car _e1829318328_))
                                                        (_tl1829518335_
                                                         (##cdr _e1829318328_)))
                                                    (if (gx#stx-null?
                                                         _tl1829518335_)
                                                        ((lambda (_L18338_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L18340_
                          _L18341_)
                   (cons _off18271_ (cons _L18340_ (cons _L18338_ '()))))
                 _hd1829418332_
                 _hd1829118322_
                 _hd1828818312_)
                (_g1827418301_ _g1827518305_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1827418301_
                                                 _g1827518305_))))
                                        (_g1827418301_ _g1827518305_))))
                                (_g1827418301_ _g1827518305_))))
                         (_g1827218400_
                          (lambda (_g1827518362_)
                            (if (gx#stx-pair? _g1827518362_)
                                (let ((_e1827818365_
                                       (gx#syntax-e _g1827518362_)))
                                  (let ((_hd1827918369_ (##car _e1827818365_))
                                        (_tl1828018372_ (##cdr _e1827818365_)))
                                    (if (gx#stx-pair? _tl1828018372_)
                                        (let ((_e1828118375_
                                               (gx#syntax-e _tl1828018372_)))
                                          (let ((_hd1828218379_
                                                 (##car _e1828118375_))
                                                (_tl1828318382_
                                                 (##cdr _e1828118375_)))
                                            (if (gx#stx-null? _tl1828318382_)
                                                ((lambda (_L18385_ _L18387_)
                                                   (cons _off18271_
                                                         (cons _L18387_
                                                               (cons _L18385_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1828218379_
                                                 _hd1827918369_)
                                                (_g1827318358_
                                                 _g1827518362_))))
                                        (_g1827318358_ _g1827518362_))))
                                (_g1827318358_ _g1827518362_)))))
                    (_g1827218400_ _field18269_))))
               (_field-id16806_
                (lambda (_field18135_)
                  (let* ((_g1813918166_
                          (lambda (_g1814018162_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1814018162_)))
                         (_g1813818223_
                          (lambda (_g1814018170_)
                            (if (gx#stx-pair? _g1814018170_)
                                (let ((_e1815218173_
                                       (gx#syntax-e _g1814018170_)))
                                  (let ((_hd1815318177_ (##car _e1815218173_))
                                        (_tl1815418180_ (##cdr _e1815218173_)))
                                    (if (gx#stx-pair? _tl1815418180_)
                                        (let ((_e1815518183_
                                               (gx#syntax-e _tl1815418180_)))
                                          (let ((_hd1815618187_
                                                 (##car _e1815518183_))
                                                (_tl1815718190_
                                                 (##cdr _e1815518183_)))
                                            (if (gx#stx-pair? _tl1815718190_)
                                                (let ((_e1815818193_
                                                       (gx#syntax-e
                                                        _tl1815718190_)))
                                                  (let ((_hd1815918197_
                                                         (##car _e1815818193_))
                                                        (_tl1816018200_
                                                         (##cdr _e1815818193_)))
                                                    (if (gx#stx-null?
                                                         _tl1816018200_)
                                                        ((lambda (_L18203_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L18205_
                          _L18206_)
                   _L18206_)
                 _hd1815918197_
                 _hd1815618187_
                 _hd1815318177_)
                (_g1813918166_ _g1814018170_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1813918166_
                                                 _g1814018170_))))
                                        (_g1813918166_ _g1814018170_))))
                                (_g1813918166_ _g1814018170_))))
                         (_g1813718265_
                          (lambda (_g1814018227_)
                            (if (gx#stx-pair? _g1814018227_)
                                (let ((_e1814318230_
                                       (gx#syntax-e _g1814018227_)))
                                  (let ((_hd1814418234_ (##car _e1814318230_))
                                        (_tl1814518237_ (##cdr _e1814318230_)))
                                    (if (gx#stx-pair? _tl1814518237_)
                                        (let ((_e1814618240_
                                               (gx#syntax-e _tl1814518237_)))
                                          (let ((_hd1814718244_
                                                 (##car _e1814618240_))
                                                (_tl1814818247_
                                                 (##cdr _e1814618240_)))
                                            (if (gx#stx-null? _tl1814818247_)
                                                ((lambda (_L18250_ _L18252_)
                                                   ':)
                                                 _hd1814718244_
                                                 _hd1814418234_)
                                                (_g1813818223_
                                                 _g1814018227_))))
                                        (_g1813818223_ _g1814018227_))))
                                (_g1813818223_ _g1814018227_)))))
                    (_g1813718265_ _field18135_))))
               (_struct-opt?16807_
                (lambda (_key18132_)
                  (memq (gx#stx-e _key18132_)
                        '(fields: id: name: plist: constructor: unchecked:))))
               (_class-opt?16808_
                (lambda (_key18129_)
                  (memq (gx#stx-e _key18129_)
                        '(slots: id: name: plist: constructor: unchecked:))))
               (_module-type-id16809_
                (lambda (_type-t18116_)
                  (let ((_$e18119_
                         (gx#module-context-ns (gx#current-expander-context))))
                    (if _$e18119_
                        ((lambda (_ns18123_)
                           (gx#stx-identifier
                            _type-t18116_
                            _ns18123_
                            '"#"
                            _type-t18116_))
                         _$e18119_)
                        (let ((_mid18126_
                               (gx#expander-context-id
                                (gx#current-expander-context))))
                          (gx#stx-identifier
                           _type-t18116_
                           _mid18126_
                           '"#"
                           _type-t18116_)))))))
        (let* ((_g1681116838_
                (lambda (_g1681216834_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1681216834_)))
               (_g1681018112_
                (lambda (_g1681216842_)
                  (if (gx#stx-pair? _g1681216842_)
                      (let ((_e1681816845_ (gx#syntax-e _g1681216842_)))
                        (let ((_hd1681916849_ (##car _e1681816845_))
                              (_tl1682016852_ (##cdr _e1681816845_)))
                          (if (gx#stx-pair? _tl1682016852_)
                              (let ((_e1682116855_
                                     (gx#syntax-e _tl1682016852_)))
                                (let ((_hd1682216859_ (##car _e1682116855_))
                                      (_tl1682316862_ (##cdr _e1682116855_)))
                                  (if (gx#stx-pair? _tl1682316862_)
                                      (let ((_e1682416865_
                                             (gx#syntax-e _tl1682316862_)))
                                        (let ((_hd1682516869_
                                               (##car _e1682416865_))
                                              (_tl1682616872_
                                               (##cdr _e1682416865_)))
                                          (if (gx#stx-pair? _tl1682616872_)
                                              (let ((_e1682716875_
                                                     (gx#syntax-e
                                                      _tl1682616872_)))
                                                (let ((_hd1682816879_
                                                       (##car _e1682716875_))
                                                      (_tl1682916882_
                                                       (##cdr _e1682716875_)))
                                                  (if (gx#stx-pair?
                                                       _tl1682916882_)
                                                      (let ((_e1683016885_
                                                             (gx#syntax-e
                                                              _tl1682916882_)))
                                                        (let ((_hd1683116889_
                                                               (##car _e1683016885_))
                                                              (_tl1683216892_
                                                               (##cdr _e1683016885_)))
                                                          ((lambda (_L16895_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L16897_
                            _L16898_
                            _L16899_
                            _L16900_)
                     (if (if (gx#identifier? _L16900_)
                             (if (let ((_$e16926_ (gx#identifier? _L16898_)))
                                   (if _$e16926_
                                       _$e16926_
                                       (gx#stx-false? _L16898_)))
                                 (if (gx#identifier? _L16897_)
                                     (gx#stx-plist?
                                      _L16895_
                                      (if _struct?16801_
                                          _struct-opt?16807_
                                          _class-opt?16808_))
                                     '#f)
                                 '#f)
                             '#f)
                         (let* ((_els16934_
                                 (let ((_$e16930_
                                        (gx#stx-getq
                                         (if _struct?16801_ 'fields: 'slots:)
                                         _L16895_)))
                                   (if _$e16930_ _$e16930_ '())))
                                (_g1693716968_
                                 (lambda (_g1693816964_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1693816964_)))
                                (_g1693618108_
                                 (lambda (_g1693816972_)
                                   (if (gx#stx-pair? _g1693816972_)
                                       (let ((_e1694516975_
                                              (gx#syntax-e _g1693816972_)))
                                         (let ((_hd1694616979_
                                                (##car _e1694516975_))
                                               (_tl1694716982_
                                                (##cdr _e1694516975_)))
                                           (if (gx#stx-pair? _tl1694716982_)
                                               (let ((_e1694816985_
                                                      (gx#syntax-e
                                                       _tl1694716982_)))
                                                 (let ((_hd1694916989_
                                                        (##car _e1694816985_))
                                                       (_tl1695016992_
                                                        (##cdr _e1694816985_)))
                                                   (if (gx#stx-pair?
                                                        _tl1695016992_)
                                                       (let ((_e1695116995_
                                                              (gx#syntax-e
                                                               _tl1695016992_)))
                                                         (let ((_hd1695216999_
                                                                (##car _e1695116995_))
                                                               (_tl1695317002_
                                                                (##cdr _e1695116995_)))
                                                           (if (gx#stx-pair?
                                                                _tl1695317002_)
                                                               (let ((_e1695417005_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl1695317002_)))
                         (let ((_hd1695517009_ (##car _e1695417005_))
                               (_tl1695617012_ (##cdr _e1695417005_)))
                           (if (gx#stx-pair? _tl1695617012_)
                               (let ((_e1695717015_
                                      (gx#syntax-e _tl1695617012_)))
                                 (let ((_hd1695817019_ (##car _e1695717015_))
                                       (_tl1695917022_ (##cdr _e1695717015_)))
                                   (if (gx#stx-pair? _tl1695917022_)
                                       (let ((_e1696017025_
                                              (gx#syntax-e _tl1695917022_)))
                                         (let ((_hd1696117029_
                                                (##car _e1696017025_))
                                               (_tl1696217032_
                                                (##cdr _e1696017025_)))
                                           (if (gx#stx-null? _tl1696217032_)
                                               ((lambda (_L17035_
                                                         _L17037_
                                                         _L17038_
                                                         _L17039_
                                                         _L17040_
                                                         _L17041_)
                                                  (let ()
                                                    (let* ((_g1707017078_
                                                            (lambda (_g1707117074_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g1707117074_)))
                                                           (_g1706918100_
                                                            (lambda (_g1707117082_)
                                                              ((lambda (_L17085_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g1709817106_
                                   (lambda (_g1709917102_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1709917102_)))
                                  (_g1709718092_
                                   (lambda (_g1709917110_)
                                     ((lambda (_L17113_)
                                        (let ()
                                          (let* ((_g1712617134_
                                                  (lambda (_g1712717130_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1712717130_)))
                                                 (_g1712518084_
                                                  (lambda (_g1712717138_)
                                                    ((lambda (_L17141_)
                                                       (let ()
                                                         (let* ((_g1715417162_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1715517158_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1715517158_)))
                        (_g1715318080_
                         (lambda (_g1715517166_)
                           ((lambda (_L17169_)
                              (let ()
                                (let* ((_g1718217190_
                                        (lambda (_g1718317186_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g1718317186_)))
                                       (_g1718117796_
                                        (lambda (_g1718317194_)
                                          ((lambda (_L17197_)
                                             (let ()
                                               (let* ((_g1721017218_
                                                       (lambda (_g1721117214_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1721117214_)))
                                                      (_g1720917792_
                                                       (lambda (_g1721117222_)
                                                         ((lambda (_L17225_)
                                                            (let ()
                                                              (let* ((_g1723817246_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g1723917242_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1723917242_)))
                             (_g1723717788_
                              (lambda (_g1723917250_)
                                ((lambda (_L17253_)
                                   (let ()
                                     (let* ((_g1726617274_
                                             (lambda (_g1726717270_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1726717270_)))
                                            (_g1726517784_
                                             (lambda (_g1726717278_)
                                               ((lambda (_L17281_)
                                                  (let ()
                                                    (let* ((_attrs17294_
                                                            (if _struct?16801_
                                                                (gx#stx-map
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _slotify16805_
                         _els16934_
                         (iota (gx#stx-length _els16934_)))
                        _els16934_))
                   (_g1729717323_
                    (lambda (_g1729817319_)
                      (gx#raise-syntax-error '#f '"Bad syntax" _g1729817319_)))
                   (_g1729617696_
                    (lambda (_g1729817327_)
                      (if (gx#stx-pair/null? _g1729817327_)
                          (if (fx>= (gx#stx-length _g1729817327_) '0)
                              (let ((_g34995_
                                     (gx#syntax-split-splice
                                      _g1729817327_
                                      '0)))
                                (begin
                                  (let ((_g34996_ (values-count _g34995_)))
                                    (if (not (fx= _g34996_ 2))
                                        (error "Context expects 2 values"
                                               _g34996_)))
                                  (let ((_target1730117330_
                                         (values-ref _g34995_ 0))
                                        (_tl1730317333_
                                         (values-ref _g34995_ 1)))
                                    (if (gx#stx-null? _tl1730317333_)
                                        (letrec ((_loop1730417336_
                                                  (lambda (_hd1730217340_
                                                           _def-setf1730817343_
                                                           _def-getf1730917345_)
                                                    (if (gx#stx-pair?
                                                         _hd1730217340_)
                                                        (let ((_e1730517348_
                                                               (gx#syntax-e
                                                                _hd1730217340_)))
                                                          (let ((_lp-hd1730617352_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1730517348_))
                        (_lp-tl1730717355_ (##cdr _e1730517348_)))
                    (if (gx#stx-pair? _lp-hd1730617352_)
                        (let ((_e1731217358_ (gx#syntax-e _lp-hd1730617352_)))
                          (let ((_hd1731317362_ (##car _e1731217358_))
                                (_tl1731417365_ (##cdr _e1731217358_)))
                            (if (gx#stx-pair? _tl1731417365_)
                                (let ((_e1731517368_
                                       (gx#syntax-e _tl1731417365_)))
                                  (let ((_hd1731617372_ (##car _e1731517368_))
                                        (_tl1731717375_ (##cdr _e1731517368_)))
                                    (if (gx#stx-null? _tl1731717375_)
                                        (_loop1730417336_
                                         _lp-tl1730717355_
                                         (cons _hd1731617372_
                                               _def-setf1730817343_)
                                         (cons _hd1731317362_
                                               _def-getf1730917345_))
                                        (_g1729717323_ _g1729817327_))))
                                (_g1729717323_ _g1729817327_))))
                        (_g1729717323_ _g1729817327_))))
                (let ((_def-setf1731017378_ (reverse _def-setf1730817343_))
                      (_def-getf1731117381_ (reverse _def-getf1730917345_)))
                  ((lambda (_L17384_ _L17386_)
                     (let ()
                       (let* ((_g1740417430_
                               (lambda (_g1740517426_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1740517426_)))
                              (_g1740317544_
                               (lambda (_g1740517434_)
                                 (if (gx#stx-pair/null? _g1740517434_)
                                     (if (fx>= (gx#stx-length _g1740517434_)
                                               '0)
                                         (let ((_g34997_
                                                (gx#syntax-split-splice
                                                 _g1740517434_
                                                 '0)))
                                           (begin
                                             (let ((_g34998_
                                                    (values-count _g34997_)))
                                               (if (not (fx= _g34998_ 2))
                                                   (error "Context expects 2 values"
                                                          _g34998_)))
                                             (let ((_target1740817437_
                                                    (values-ref _g34997_ 0))
                                                   (_tl1741017440_
                                                    (values-ref _g34997_ 1)))
                                               (if (gx#stx-null?
                                                    _tl1741017440_)
                                                   (letrec ((_loop1741117443_
                                                             (lambda (_hd1740917447_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _def-usetf1741517450_
                              _def-ugetf1741617452_)
                       (if (gx#stx-pair? _hd1740917447_)
                           (let ((_e1741217455_ (gx#syntax-e _hd1740917447_)))
                             (let ((_lp-hd1741317459_ (##car _e1741217455_))
                                   (_lp-tl1741417462_ (##cdr _e1741217455_)))
                               (if (gx#stx-pair? _lp-hd1741317459_)
                                   (let ((_e1741917465_
                                          (gx#syntax-e _lp-hd1741317459_)))
                                     (let ((_hd1742017469_
                                            (##car _e1741917465_))
                                           (_tl1742117472_
                                            (##cdr _e1741917465_)))
                                       (if (gx#stx-pair? _tl1742117472_)
                                           (let ((_e1742217475_
                                                  (gx#syntax-e
                                                   _tl1742117472_)))
                                             (let ((_hd1742317479_
                                                    (##car _e1742217475_))
                                                   (_tl1742417482_
                                                    (##cdr _e1742217475_)))
                                               (if (gx#stx-null?
                                                    _tl1742417482_)
                                                   (_loop1741117443_
                                                    _lp-tl1741417462_
                                                    (cons _hd1742317479_
                                                          _def-usetf1741517450_)
                                                    (cons _hd1742017469_
                                                          _def-ugetf1741617452_))
                                                   (_g1740417430_
                                                    _g1740517434_))))
                                           (_g1740417430_ _g1740517434_))))
                                   (_g1740417430_ _g1740517434_))))
                           (let ((_def-usetf1741717485_
                                  (reverse _def-usetf1741517450_))
                                 (_def-ugetf1741817488_
                                  (reverse _def-ugetf1741617452_)))
                             ((lambda (_L17491_ _L17493_)
                                (let ()
                                  (let ()
                                    (_wrap16803_
                                     (cons (gx#datum->syntax '#f 'begin)
                                           (cons _L17225_
                                                 (cons _L17281_
                                                       (cons _L17253_
                                                             (begin
                                                               '#!void
                                                               (foldr (lambda (_g1751117520_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1751217523_)
                                (cons _g1751117520_ _g1751217523_))
                              (begin
                                '#!void
                                (foldr (lambda (_g1751317526_ _g1751417529_)
                                         (cons _g1751317526_ _g1751417529_))
                                       (begin
                                         '#!void
                                         (foldr (lambda (_g1751517532_
                                                         _g1751617535_)
                                                  (cons _g1751517532_
                                                        _g1751617535_))
                                                (begin
                                                  '#!void
                                                  (foldr (lambda (_g1751717538_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1751817541_)
                   (cons _g1751717538_ _g1751817541_))
                 '()
                 _L17491_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _L17493_))
                                       _L17384_))
                              _L17386_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              _def-usetf1741717485_
                              _def-ugetf1741817488_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1741117443_
                                                      _target1740817437_
                                                      '()
                                                      '()))
                                                   (_g1740417430_
                                                    _g1740517434_)))))
                                         (_g1740417430_ _g1740517434_))
                                     (_g1740417430_ _g1740517434_)))))
                         (_g1740317544_
                          (if (gx#stx-e (gx#stx-getq 'unchecked: _L16895_))
                              (gx#stx-map
                               (lambda (_ref17548_)
                                 (let* ((_g1755117570_
                                         (lambda (_g1755217566_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g1755217566_)))
                                        (_g1755017692_
                                         (lambda (_g1755217574_)
                                           (if (gx#stx-pair? _g1755217574_)
                                               (let ((_e1755617577_
                                                      (gx#syntax-e
                                                       _g1755217574_)))
                                                 (let ((_hd1755717581_
                                                        (##car _e1755617577_))
                                                       (_tl1755817584_
                                                        (##cdr _e1755617577_)))
                                                   (if (gx#stx-pair?
                                                        _tl1755817584_)
                                                       (let ((_e1755917587_
                                                              (gx#syntax-e
                                                               _tl1755817584_)))
                                                         (let ((_hd1756017591_
                                                                (##car _e1755917587_))
                                                               (_tl1756117594_
                                                                (##cdr _e1755917587_)))
                                                           (if (gx#stx-pair?
                                                                _tl1756117594_)
                                                               (let ((_e1756217597_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl1756117594_)))
                         (let ((_hd1756317601_ (##car _e1756217597_))
                               (_tl1756417604_ (##cdr _e1756217597_)))
                           (if (gx#stx-null? _tl1756417604_)
                               ((lambda (_L17607_ _L17609_ _L17610_)
                                  (let* ((_g1762817643_
                                          (lambda (_g1762917639_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g1762917639_)))
                                         (_g1762717688_
                                          (lambda (_g1762917647_)
                                            (if (gx#stx-pair? _g1762917647_)
                                                (let ((_e1763217650_
                                                       (gx#syntax-e
                                                        _g1762917647_)))
                                                  (let ((_hd1763317654_
                                                         (##car _e1763217650_))
                                                        (_tl1763417657_
                                                         (##cdr _e1763217650_)))
                                                    (if (gx#stx-pair?
                                                         _tl1763417657_)
                                                        (let ((_e1763517660_
                                                               (gx#syntax-e
                                                                _tl1763417657_)))
                                                          (let ((_hd1763617664_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1763517660_))
                        (_tl1763717667_ (##cdr _e1763517660_)))
                    (if (gx#stx-null? _tl1763717667_)
                        ((lambda (_L17670_ _L17672_)
                           (let ()
                             (cons (_wrap16803_
                                    (cons (gx#datum->syntax '#f 'def)
                                          (cons _L17672_
                                                (cons (cons _L17037_
                                                            (cons _L16900_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _L17610_ '()))
                                '())))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (cons (_wrap16803_
                                          (cons (gx#datum->syntax '#f 'def)
                                                (cons _L17670_
                                                      (cons (cons _L17035_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L16900_
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _L17610_ '()))
                                      '())))
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                         _hd1763617664_
                         _hd1763317654_)
                        (_g1762817643_ _g1762917647_))))
                (_g1762817643_ _g1762917647_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1762817643_
                                                 _g1762917647_)))))
                                    (_g1762717688_
                                     (list (gx#stx-identifier
                                            _L17609_
                                            '"&"
                                            _L17609_)
                                           (gx#stx-identifier
                                            _L17607_
                                            '"&"
                                            _L17607_)))))
                                _hd1756317601_
                                _hd1756017591_
                                _hd1755717581_)
                               (_g1755117570_ _g1755217574_))))
                       (_g1755117570_ _g1755217574_))))
               (_g1755117570_ _g1755217574_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1755117570_
                                                _g1755217574_)))))
                                   (_g1755017692_ _ref17548_)))
                               _attrs17294_)
                              '())))))
                   _def-setf1731017378_
                   _def-getf1731117381_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop1730417336_
                                           _target1730117330_
                                           '()
                                           '()))
                                        (_g1729717323_ _g1729817327_)))))
                              (_g1729717323_ _g1729817327_))
                          (_g1729717323_ _g1729817327_)))))
              (_g1729617696_
               (gx#stx-map
                (lambda (_ref17700_)
                  (let* ((_g1770317722_
                          (lambda (_g1770417718_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1770417718_)))
                         (_g1770217780_
                          (lambda (_g1770417726_)
                            (if (gx#stx-pair? _g1770417726_)
                                (let ((_e1770817729_
                                       (gx#syntax-e _g1770417726_)))
                                  (let ((_hd1770917733_ (##car _e1770817729_))
                                        (_tl1771017736_ (##cdr _e1770817729_)))
                                    (if (gx#stx-pair? _tl1771017736_)
                                        (let ((_e1771117739_
                                               (gx#syntax-e _tl1771017736_)))
                                          (let ((_hd1771217743_
                                                 (##car _e1771117739_))
                                                (_tl1771317746_
                                                 (##cdr _e1771117739_)))
                                            (if (gx#stx-pair? _tl1771317746_)
                                                (let ((_e1771417749_
                                                       (gx#syntax-e
                                                        _tl1771317746_)))
                                                  (let ((_hd1771517753_
                                                         (##car _e1771417749_))
                                                        (_tl1771617756_
                                                         (##cdr _e1771417749_)))
                                                    (if (gx#stx-null?
                                                         _tl1771617756_)
                                                        ((lambda (_L17759_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L17761_
                          _L17762_)
                   (cons (_wrap16803_
                          (cons (gx#datum->syntax '#f 'def)
                                (cons _L17761_
                                      (cons (cons _L17039_
                                                  (cons _L16900_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons _L17762_ '()))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '()))))
                         (cons (_wrap16803_
                                (cons (gx#datum->syntax '#f 'def)
                                      (cons _L17759_
                                            (cons (cons _L17038_
                                                        (cons _L16900_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _L17762_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))
                               '())))
                 _hd1771517753_
                 _hd1771217743_
                 _hd1770917733_)
                (_g1770317722_ _g1770417726_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1770317722_
                                                 _g1770417726_))))
                                        (_g1770317722_ _g1770417726_))))
                                (_g1770317722_ _g1770417726_)))))
                    (_g1770217780_ _ref17700_)))
                _attrs17294_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1726717278_))))
                                       (_g1726517784_
                                        (_wrap16803_
                                         (cons (gx#datum->syntax '#f 'def)
                                               (cons _L16897_
                                                     (cons (cons _L17040_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L16900_ '()))
                   '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _g1723917250_))))
                        (_g1723717788_
                         (if (gx#stx-false? _L16898_)
                             (cons (gx#datum->syntax '#f 'begin) '())
                             (_wrap16803_
                              (cons (gx#datum->syntax '#f 'def)
                                    (cons (cons _L16898_
                                                (gx#datum->syntax '#f '$args))
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'apply)
                                                      (cons _L17041_
                                                            (cons _L16900_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f '$args) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))))))))
                  _g1721117222_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1720917792_
                                                  (_wrap16803_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'def)
                                                         (cons _L16900_
                                                               (cons _L17197_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _g1718317194_))))
                                  (_g1718117796_
                                   (if _struct?16801_
                                       (let* ((_g1780017824_
                                               (lambda (_g1780117820_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1780117820_)))
                                              (_g1779917911_
                                               (lambda (_g1780117828_)
                                                 (if (gx#stx-pair?
                                                      _g1780117828_)
                                                     (let ((_e1780417831_
                                                            (gx#syntax-e
                                                             _g1780117828_)))
                                                       (let ((_hd1780517835_
                                                              (##car _e1780417831_))
                                                             (_tl1780617838_
                                                              (##cdr _e1780417831_)))
                                                         (if (gx#stx-pair?
                                                              _tl1780617838_)
                                                             (let ((_e1780717841_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl1780617838_)))
                       (let ((_hd1780817845_ (##car _e1780717841_))
                             (_tl1780917848_ (##cdr _e1780717841_)))
                         (if (gx#stx-pair/null? _hd1780817845_)
                             (if (fx>= (gx#stx-length _hd1780817845_) '0)
                                 (let ((_g34999_
                                        (gx#syntax-split-splice
                                         _hd1780817845_
                                         '0)))
                                   (begin
                                     (let ((_g35000_ (values-count _g34999_)))
                                       (if (not (fx= _g35000_ 2))
                                           (error "Context expects 2 values"
                                                  _g35000_)))
                                     (let ((_target1781017851_
                                            (values-ref _g34999_ 0))
                                           (_tl1781217854_
                                            (values-ref _g34999_ 1)))
                                       (if (gx#stx-null? _tl1781217854_)
                                           (letrec ((_loop1781317857_
                                                     (lambda (_hd1781117861_
                                                              _field-id1781717864_)
                                                       (if (gx#stx-pair?
                                                            _hd1781117861_)
                                                           (let ((_e1781417867_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd1781117861_)))
                     (let ((_lp-hd1781517871_ (##car _e1781417867_))
                           (_lp-tl1781617874_ (##cdr _e1781417867_)))
                       (_loop1781317857_
                        _lp-tl1781617874_
                        (cons _lp-hd1781517871_ _field-id1781717864_))))
                   (let ((_field-id1781817877_ (reverse _field-id1781717864_)))
                     (if (gx#stx-null? _tl1780917848_)
                         ((lambda (_L17881_ _L17883_)
                            (let ()
                              (cons (gx#datum->syntax '#f 'make-struct-type)
                                    (cons (cons (gx#datum->syntax '#f 'quote)
                                                (cons _L17085_ '()))
                                          (cons _L16899_
                                                (cons _L17883_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons _L17113_ '()))
                    (cons _L17141_
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _L17169_ '()))
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons (begin
                                                    '#!void
                                                    (foldr (lambda (_g1790217905_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1790317908_)
                     (cons _g1790217905_ _g1790317908_))
                   '()
                   _L17881_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          _field-id1781817877_
                          _hd1780517835_)
                         (_g1780017824_ _g1780117828_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop1781317857_
                                              _target1781017851_
                                              '()))
                                           (_g1780017824_ _g1780117828_)))))
                                 (_g1780017824_ _g1780117828_))
                             (_g1780017824_ _g1780117828_))))
                     (_g1780017824_ _g1780117828_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1780017824_
                                                      _g1780117828_)))))
                                         (_g1779917911_
                                          (list (gx#stx-length _els16934_)
                                                (gx#stx-map
                                                 _field-id16806_
                                                 _els16934_))))
                                       (let* ((_g1791517948_
                                               (lambda (_g1791617944_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1791617944_)))
                                              (_g1791418076_
                                               (lambda (_g1791617952_)
                                                 (if (gx#stx-pair?
                                                      _g1791617952_)
                                                     (let ((_e1791917955_
                                                            (gx#syntax-e
                                                             _g1791617952_)))
                                                       (let ((_hd1792017959_
                                                              (##car _e1791917955_))
                                                             (_tl1792117962_
                                                              (##cdr _e1791917955_)))
                                                         (if (gx#stx-pair/null?
                                                              _hd1792017959_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _hd1792017959_)
                               '0)
                         (let ((_g35001_
                                (gx#syntax-split-splice _hd1792017959_ '0)))
                           (begin
                             (let ((_g35002_ (values-count _g35001_)))
                               (if (not (fx= _g35002_ 2))
                                   (error "Context expects 2 values"
                                          _g35002_)))
                             (let ((_target1792217965_ (values-ref _g35001_ 0))
                                   (_tl1792417968_ (values-ref _g35001_ 1)))
                               (if (gx#stx-null? _tl1792417968_)
                                   (letrec ((_loop1792517971_
                                             (lambda (_hd1792317975_
                                                      _super1792917978_)
                                               (if (gx#stx-pair?
                                                    _hd1792317975_)
                                                   (let ((_e1792617981_
                                                          (gx#syntax-e
                                                           _hd1792317975_)))
                                                     (let ((_lp-hd1792717985_
                                                            (##car _e1792617981_))
                                                           (_lp-tl1792817988_
                                                            (##cdr _e1792617981_)))
                                                       (_loop1792517971_
                                                        _lp-tl1792817988_
                                                        (cons _lp-hd1792717985_
                                                              _super1792917978_))))
                                                   (let ((_super1793017991_
                                                          (reverse _super1792917978_)))
                                                     (if (gx#stx-pair?
                                                          _tl1792117962_)
                                                         (let ((_e1793117995_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1792117962_)))
                   (let ((_hd1793217999_ (##car _e1793117995_))
                         (_tl1793318002_ (##cdr _e1793117995_)))
                     (if (gx#stx-pair/null? _hd1793217999_)
                         (if (fx>= (gx#stx-length _hd1793217999_) '0)
                             (let ((_g35003_
                                    (gx#syntax-split-splice
                                     _hd1793217999_
                                     '0)))
                               (begin
                                 (let ((_g35004_ (values-count _g35003_)))
                                   (if (not (fx= _g35004_ 2))
                                       (error "Context expects 2 values"
                                              _g35004_)))
                                 (let ((_target1793418005_
                                        (values-ref _g35003_ 0))
                                       (_tl1793618008_
                                        (values-ref _g35003_ 1)))
                                   (if (gx#stx-null? _tl1793618008_)
                                       (letrec ((_loop1793718011_
                                                 (lambda (_hd1793518015_
                                                          _slot1794118018_)
                                                   (if (gx#stx-pair?
                                                        _hd1793518015_)
                                                       (let ((_e1793818021_
                                                              (gx#syntax-e
                                                               _hd1793518015_)))
                                                         (let ((_lp-hd1793918025_
                                                                (##car _e1793818021_))
                                                               (_lp-tl1794018028_
                                                                (##cdr _e1793818021_)))
                                                           (_loop1793718011_
                                                            _lp-tl1794018028_
                                                            (cons _lp-hd1793918025_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _slot1794118018_))))
               (let ((_slot1794218031_ (reverse _slot1794118018_)))
                 (if (gx#stx-null? _tl1793318002_)
                     ((lambda (_L18035_ _L18037_)
                        (let ()
                          (cons (gx#datum->syntax '#f 'make-class-type)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _L17085_ '()))
                                      (cons (cons (gx#datum->syntax '#f '@list)
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g1805918064_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1806018067_)
                     (cons _g1805918064_ _g1806018067_))
                   '()
                   _L18037_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'quote)
                                                        (cons (begin
                                                                '#!void
                                                                (foldr (lambda (_g1806118070_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g1806218073_)
                                 (cons _g1806118070_ _g1806218073_))
                               '()
                               _L18035_))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'quote)
                                                              (cons _L17113_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _L17141_
                      (cons (cons (gx#datum->syntax '#f 'quote)
                                  (cons _L17169_ '()))
                            '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      _slot1794218031_
                      _super1793017991_)
                     (_g1791517948_ _g1791617952_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop1793718011_
                                          _target1793418005_
                                          '()))
                                       (_g1791517948_ _g1791617952_)))))
                             (_g1791517948_ _g1791617952_))
                         (_g1791517948_ _g1791617952_))))
                 (_g1791517948_ _g1791617952_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop1792517971_ _target1792217965_ '()))
                                   (_g1791517948_ _g1791617952_)))))
                         (_g1791517948_ _g1791617952_))
                     (_g1791517948_ _g1791617952_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1791517948_
                                                      _g1791617952_)))))
                                         (_g1791418076_
                                          (list _L16899_
                                                (gx#stx-map
                                                 gx#stx-car
                                                 _els16934_)))))))))
                            _g1715517166_))))
                   (_g1715318080_ (gx#stx-getq 'constructor: _L16895_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1712717138_))))
                                            (_g1712518084_
                                             (let ((_$e18088_
                                                    (gx#stx-getq
                                                     'plist:
                                                     _L16895_)))
                                               (if _$e18088_
                                                   _$e18088_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '@list)
                                                         '())))))))
                                      _g1709917110_))))
                             (_g1709718092_
                              (let ((_$e18096_ (gx#stx-getq 'name: _L16895_)))
                                (if _$e18096_ _$e18096_ _L16900_))))))
                       _g1707117082_))))
              (_g1706918100_
               (let ((_$e18104_ (gx#stx-getq 'id: _L16895_)))
                 (if _$e18104_
                     _$e18104_
                     (if (gx#module-context? (gx#current-expander-context))
                         (_module-type-id16809_ _L16900_)
                         (gx#genident _L16900_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1696117029_
                                                _hd1695817019_
                                                _hd1695517009_
                                                _hd1695216999_
                                                _hd1694916989_
                                                _hd1694616979_)
                                               (_g1693716968_ _g1693816972_))))
                                       (_g1693716968_ _g1693816972_))))
                               (_g1693716968_ _g1693816972_))))
                       (_g1693716968_ _g1693816972_))))
               (_g1693716968_ _g1693816972_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1693716968_ _g1693816972_))))
                                       (_g1693716968_ _g1693816972_)))))
                           (_g1693618108_
                            (if _struct?16801_
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
                         (_g1681116838_ _g1681216842_)))
                   _tl1683216892_
                   _hd1683116889_
                   _hd1682816879_
                   _hd1682516869_
                   _hd1682216859_)))
              (_g1681116838_ _g1681216842_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1681116838_ _g1681216842_))))
                                      (_g1681116838_ _g1681216842_))))
                              (_g1681116838_ _g1681216842_))))
                      (_g1681116838_ _g1681216842_)))))
          (_g1681018112_ _stx16799_)))))
  (define |gerbil/core$<MOP>$<MOP:1>[:0:]#defstruct-type|
    (lambda (_stx18412_)
      (|gerbil/core$<MOP>$<MOP:1>[1]#generate-typedef| _stx18412_ '#t)))
  (define |gerbil/core$<MOP>$<MOP:1>[:0:]#defclass-type|
    (lambda (_stx18415_)
      (|gerbil/core$<MOP>$<MOP:1>[1]#generate-typedef| _stx18415_ '#f))))
