(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<MOP>$<MOP:1>[1]#generate-typedef|
    (lambda (_stx17037_ _struct?17039_)
      (letrec ((_wrap17041_
                (lambda (_e-stx18642_)
                  (gx#stx-wrap-source
                   _e-stx18642_
                   (gx#stx-source _stx17037_))))
               (_slotify17043_
                (lambda (_field18507_ _off18509_)
                  (let* ((_g1851218539_
                          (lambda (_g1851318535_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1851318535_)))
                         (_g1851118596_
                          (lambda (_g1851318543_)
                            (if (gx#stx-pair? _g1851318543_)
                                (let ((_e1852518546_
                                       (gx#syntax-e _g1851318543_)))
                                  (let ((_hd1852618550_ (##car _e1852518546_))
                                        (_tl1852718553_ (##cdr _e1852518546_)))
                                    (if (gx#stx-pair? _tl1852718553_)
                                        (let ((_e1852818556_
                                               (gx#syntax-e _tl1852718553_)))
                                          (let ((_hd1852918560_
                                                 (##car _e1852818556_))
                                                (_tl1853018563_
                                                 (##cdr _e1852818556_)))
                                            (if (gx#stx-pair? _tl1853018563_)
                                                (let ((_e1853118566_
                                                       (gx#syntax-e
                                                        _tl1853018563_)))
                                                  (let ((_hd1853218570_
                                                         (##car _e1853118566_))
                                                        (_tl1853318573_
                                                         (##cdr _e1853118566_)))
                                                    (if (gx#stx-null?
                                                         _tl1853318573_)
                                                        ((lambda (_L18576_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L18578_
                          _L18579_)
                   (cons _off18509_ (cons _L18578_ (cons _L18576_ '()))))
                 _hd1853218570_
                 _hd1852918560_
                 _hd1852618550_)
                (_g1851218539_ _g1851318543_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1851218539_
                                                 _g1851318543_))))
                                        (_g1851218539_ _g1851318543_))))
                                (_g1851218539_ _g1851318543_))))
                         (_g1851018638_
                          (lambda (_g1851318600_)
                            (if (gx#stx-pair? _g1851318600_)
                                (let ((_e1851618603_
                                       (gx#syntax-e _g1851318600_)))
                                  (let ((_hd1851718607_ (##car _e1851618603_))
                                        (_tl1851818610_ (##cdr _e1851618603_)))
                                    (if (gx#stx-pair? _tl1851818610_)
                                        (let ((_e1851918613_
                                               (gx#syntax-e _tl1851818610_)))
                                          (let ((_hd1852018617_
                                                 (##car _e1851918613_))
                                                (_tl1852118620_
                                                 (##cdr _e1851918613_)))
                                            (if (gx#stx-null? _tl1852118620_)
                                                ((lambda (_L18623_ _L18625_)
                                                   (cons _off18509_
                                                         (cons _L18625_
                                                               (cons _L18623_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1852018617_
                                                 _hd1851718607_)
                                                (_g1851118596_
                                                 _g1851318600_))))
                                        (_g1851118596_ _g1851318600_))))
                                (_g1851118596_ _g1851318600_)))))
                    (_g1851018638_ _field18507_))))
               (_field-id17044_
                (lambda (_field18373_)
                  (let* ((_g1837718404_
                          (lambda (_g1837818400_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1837818400_)))
                         (_g1837618461_
                          (lambda (_g1837818408_)
                            (if (gx#stx-pair? _g1837818408_)
                                (let ((_e1839018411_
                                       (gx#syntax-e _g1837818408_)))
                                  (let ((_hd1839118415_ (##car _e1839018411_))
                                        (_tl1839218418_ (##cdr _e1839018411_)))
                                    (if (gx#stx-pair? _tl1839218418_)
                                        (let ((_e1839318421_
                                               (gx#syntax-e _tl1839218418_)))
                                          (let ((_hd1839418425_
                                                 (##car _e1839318421_))
                                                (_tl1839518428_
                                                 (##cdr _e1839318421_)))
                                            (if (gx#stx-pair? _tl1839518428_)
                                                (let ((_e1839618431_
                                                       (gx#syntax-e
                                                        _tl1839518428_)))
                                                  (let ((_hd1839718435_
                                                         (##car _e1839618431_))
                                                        (_tl1839818438_
                                                         (##cdr _e1839618431_)))
                                                    (if (gx#stx-null?
                                                         _tl1839818438_)
                                                        ((lambda (_L18441_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L18443_
                          _L18444_)
                   _L18444_)
                 _hd1839718435_
                 _hd1839418425_
                 _hd1839118415_)
                (_g1837718404_ _g1837818408_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1837718404_
                                                 _g1837818408_))))
                                        (_g1837718404_ _g1837818408_))))
                                (_g1837718404_ _g1837818408_))))
                         (_g1837518503_
                          (lambda (_g1837818465_)
                            (if (gx#stx-pair? _g1837818465_)
                                (let ((_e1838118468_
                                       (gx#syntax-e _g1837818465_)))
                                  (let ((_hd1838218472_ (##car _e1838118468_))
                                        (_tl1838318475_ (##cdr _e1838118468_)))
                                    (if (gx#stx-pair? _tl1838318475_)
                                        (let ((_e1838418478_
                                               (gx#syntax-e _tl1838318475_)))
                                          (let ((_hd1838518482_
                                                 (##car _e1838418478_))
                                                (_tl1838618485_
                                                 (##cdr _e1838418478_)))
                                            (if (gx#stx-null? _tl1838618485_)
                                                ((lambda (_L18488_ _L18490_)
                                                   ':)
                                                 _hd1838518482_
                                                 _hd1838218472_)
                                                (_g1837618461_
                                                 _g1837818465_))))
                                        (_g1837618461_ _g1837818465_))))
                                (_g1837618461_ _g1837818465_)))))
                    (_g1837518503_ _field18373_))))
               (_struct-opt?17045_
                (lambda (_key18370_)
                  (memq (gx#stx-e _key18370_)
                        '(fields: id: name: plist: constructor: unchecked:))))
               (_class-opt?17046_
                (lambda (_key18367_)
                  (memq (gx#stx-e _key18367_)
                        '(slots: id: name: plist: constructor: unchecked:))))
               (_module-type-id17047_
                (lambda (_type-t18354_)
                  (let ((_$e18357_
                         (gx#module-context-ns (gx#current-expander-context))))
                    (if _$e18357_
                        ((lambda (_ns18361_)
                           (gx#stx-identifier
                            _type-t18354_
                            _ns18361_
                            '"#"
                            _type-t18354_))
                         _$e18357_)
                        (let ((_mid18364_
                               (gx#expander-context-id
                                (gx#current-expander-context))))
                          (gx#stx-identifier
                           _type-t18354_
                           _mid18364_
                           '"#"
                           _type-t18354_)))))))
        (let* ((_g1704917076_
                (lambda (_g1705017072_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1705017072_)))
               (_g1704818350_
                (lambda (_g1705017080_)
                  (if (gx#stx-pair? _g1705017080_)
                      (let ((_e1705617083_ (gx#syntax-e _g1705017080_)))
                        (let ((_hd1705717087_ (##car _e1705617083_))
                              (_tl1705817090_ (##cdr _e1705617083_)))
                          (if (gx#stx-pair? _tl1705817090_)
                              (let ((_e1705917093_
                                     (gx#syntax-e _tl1705817090_)))
                                (let ((_hd1706017097_ (##car _e1705917093_))
                                      (_tl1706117100_ (##cdr _e1705917093_)))
                                  (if (gx#stx-pair? _tl1706117100_)
                                      (let ((_e1706217103_
                                             (gx#syntax-e _tl1706117100_)))
                                        (let ((_hd1706317107_
                                               (##car _e1706217103_))
                                              (_tl1706417110_
                                               (##cdr _e1706217103_)))
                                          (if (gx#stx-pair? _tl1706417110_)
                                              (let ((_e1706517113_
                                                     (gx#syntax-e
                                                      _tl1706417110_)))
                                                (let ((_hd1706617117_
                                                       (##car _e1706517113_))
                                                      (_tl1706717120_
                                                       (##cdr _e1706517113_)))
                                                  (if (gx#stx-pair?
                                                       _tl1706717120_)
                                                      (let ((_e1706817123_
                                                             (gx#syntax-e
                                                              _tl1706717120_)))
                                                        (let ((_hd1706917127_
                                                               (##car _e1706817123_))
                                                              (_tl1707017130_
                                                               (##cdr _e1706817123_)))
                                                          ((lambda (_L17133_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L17135_
                            _L17136_
                            _L17137_
                            _L17138_)
                     (if (if (gx#identifier? _L17138_)
                             (if (let ((_$e17164_ (gx#identifier? _L17136_)))
                                   (if _$e17164_
                                       _$e17164_
                                       (gx#stx-false? _L17136_)))
                                 (if (gx#identifier? _L17135_)
                                     (gx#stx-plist?
                                      _L17133_
                                      (if _struct?17039_
                                          _struct-opt?17045_
                                          _class-opt?17046_))
                                     '#f)
                                 '#f)
                             '#f)
                         (let* ((_els17172_
                                 (let ((_$e17168_
                                        (gx#stx-getq
                                         (if _struct?17039_ 'fields: 'slots:)
                                         _L17133_)))
                                   (if _$e17168_ _$e17168_ '())))
                                (_g1717517206_
                                 (lambda (_g1717617202_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1717617202_)))
                                (_g1717418346_
                                 (lambda (_g1717617210_)
                                   (if (gx#stx-pair? _g1717617210_)
                                       (let ((_e1718317213_
                                              (gx#syntax-e _g1717617210_)))
                                         (let ((_hd1718417217_
                                                (##car _e1718317213_))
                                               (_tl1718517220_
                                                (##cdr _e1718317213_)))
                                           (if (gx#stx-pair? _tl1718517220_)
                                               (let ((_e1718617223_
                                                      (gx#syntax-e
                                                       _tl1718517220_)))
                                                 (let ((_hd1718717227_
                                                        (##car _e1718617223_))
                                                       (_tl1718817230_
                                                        (##cdr _e1718617223_)))
                                                   (if (gx#stx-pair?
                                                        _tl1718817230_)
                                                       (let ((_e1718917233_
                                                              (gx#syntax-e
                                                               _tl1718817230_)))
                                                         (let ((_hd1719017237_
                                                                (##car _e1718917233_))
                                                               (_tl1719117240_
                                                                (##cdr _e1718917233_)))
                                                           (if (gx#stx-pair?
                                                                _tl1719117240_)
                                                               (let ((_e1719217243_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl1719117240_)))
                         (let ((_hd1719317247_ (##car _e1719217243_))
                               (_tl1719417250_ (##cdr _e1719217243_)))
                           (if (gx#stx-pair? _tl1719417250_)
                               (let ((_e1719517253_
                                      (gx#syntax-e _tl1719417250_)))
                                 (let ((_hd1719617257_ (##car _e1719517253_))
                                       (_tl1719717260_ (##cdr _e1719517253_)))
                                   (if (gx#stx-pair? _tl1719717260_)
                                       (let ((_e1719817263_
                                              (gx#syntax-e _tl1719717260_)))
                                         (let ((_hd1719917267_
                                                (##car _e1719817263_))
                                               (_tl1720017270_
                                                (##cdr _e1719817263_)))
                                           (if (gx#stx-null? _tl1720017270_)
                                               ((lambda (_L17273_
                                                         _L17275_
                                                         _L17276_
                                                         _L17277_
                                                         _L17278_
                                                         _L17279_)
                                                  (let ()
                                                    (let* ((_g1730817316_
                                                            (lambda (_g1730917312_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g1730917312_)))
                                                           (_g1730718338_
                                                            (lambda (_g1730917320_)
                                                              ((lambda (_L17323_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g1733617344_
                                   (lambda (_g1733717340_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1733717340_)))
                                  (_g1733518330_
                                   (lambda (_g1733717348_)
                                     ((lambda (_L17351_)
                                        (let ()
                                          (let* ((_g1736417372_
                                                  (lambda (_g1736517368_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1736517368_)))
                                                 (_g1736318322_
                                                  (lambda (_g1736517376_)
                                                    ((lambda (_L17379_)
                                                       (let ()
                                                         (let* ((_g1739217400_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1739317396_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1739317396_)))
                        (_g1739118318_
                         (lambda (_g1739317404_)
                           ((lambda (_L17407_)
                              (let ()
                                (let* ((_g1742017428_
                                        (lambda (_g1742117424_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g1742117424_)))
                                       (_g1741918034_
                                        (lambda (_g1742117432_)
                                          ((lambda (_L17435_)
                                             (let ()
                                               (let* ((_g1744817456_
                                                       (lambda (_g1744917452_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1744917452_)))
                                                      (_g1744718030_
                                                       (lambda (_g1744917460_)
                                                         ((lambda (_L17463_)
                                                            (let ()
                                                              (let* ((_g1747617484_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g1747717480_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1747717480_)))
                             (_g1747518026_
                              (lambda (_g1747717488_)
                                ((lambda (_L17491_)
                                   (let ()
                                     (let* ((_g1750417512_
                                             (lambda (_g1750517508_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1750517508_)))
                                            (_g1750318022_
                                             (lambda (_g1750517516_)
                                               ((lambda (_L17519_)
                                                  (let ()
                                                    (let* ((_attrs17532_
                                                            (if _struct?17039_
                                                                (gx#stx-map
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _slotify17043_
                         _els17172_
                         (iota (gx#stx-length _els17172_)))
                        _els17172_))
                   (_g1753517561_
                    (lambda (_g1753617557_)
                      (gx#raise-syntax-error '#f '"Bad syntax" _g1753617557_)))
                   (_g1753417934_
                    (lambda (_g1753617565_)
                      (if (gx#stx-pair/null? _g1753617565_)
                          (if (fx>= (gx#stx-length _g1753617565_) '0)
                              (let ((_g35365_
                                     (gx#syntax-split-splice
                                      _g1753617565_
                                      '0)))
                                (begin
                                  (let ((_g35366_
                                         (if (##values? _g35365_)
                                             (##vector-length _g35365_)
                                             1)))
                                    (if (not (##fx= _g35366_ 2))
                                        (error "Context expects 2 values"
                                               _g35366_)))
                                  (let ((_target1753917568_
                                         (##vector-ref _g35365_ 0))
                                        (_tl1754117571_
                                         (##vector-ref _g35365_ 1)))
                                    (if (gx#stx-null? _tl1754117571_)
                                        (letrec ((_loop1754217574_
                                                  (lambda (_hd1754017578_
                                                           _def-setf1754617581_
                                                           _def-getf1754717583_)
                                                    (if (gx#stx-pair?
                                                         _hd1754017578_)
                                                        (let ((_e1754317586_
                                                               (gx#syntax-e
                                                                _hd1754017578_)))
                                                          (let ((_lp-hd1754417590_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1754317586_))
                        (_lp-tl1754517593_ (##cdr _e1754317586_)))
                    (if (gx#stx-pair? _lp-hd1754417590_)
                        (let ((_e1755017596_ (gx#syntax-e _lp-hd1754417590_)))
                          (let ((_hd1755117600_ (##car _e1755017596_))
                                (_tl1755217603_ (##cdr _e1755017596_)))
                            (if (gx#stx-pair? _tl1755217603_)
                                (let ((_e1755317606_
                                       (gx#syntax-e _tl1755217603_)))
                                  (let ((_hd1755417610_ (##car _e1755317606_))
                                        (_tl1755517613_ (##cdr _e1755317606_)))
                                    (if (gx#stx-null? _tl1755517613_)
                                        (_loop1754217574_
                                         _lp-tl1754517593_
                                         (cons _hd1755417610_
                                               _def-setf1754617581_)
                                         (cons _hd1755117600_
                                               _def-getf1754717583_))
                                        (_g1753517561_ _g1753617565_))))
                                (_g1753517561_ _g1753617565_))))
                        (_g1753517561_ _g1753617565_))))
                (let ((_def-setf1754817616_ (reverse _def-setf1754617581_))
                      (_def-getf1754917619_ (reverse _def-getf1754717583_)))
                  ((lambda (_L17622_ _L17624_)
                     (let ()
                       (let* ((_g1764217668_
                               (lambda (_g1764317664_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1764317664_)))
                              (_g1764117782_
                               (lambda (_g1764317672_)
                                 (if (gx#stx-pair/null? _g1764317672_)
                                     (if (fx>= (gx#stx-length _g1764317672_)
                                               '0)
                                         (let ((_g35367_
                                                (gx#syntax-split-splice
                                                 _g1764317672_
                                                 '0)))
                                           (begin
                                             (let ((_g35368_
                                                    (if (##values? _g35367_)
                                                        (##vector-length
                                                         _g35367_)
                                                        1)))
                                               (if (not (##fx= _g35368_ 2))
                                                   (error "Context expects 2 values"
                                                          _g35368_)))
                                             (let ((_target1764617675_
                                                    (##vector-ref _g35367_ 0))
                                                   (_tl1764817678_
                                                    (##vector-ref _g35367_ 1)))
                                               (if (gx#stx-null?
                                                    _tl1764817678_)
                                                   (letrec ((_loop1764917681_
                                                             (lambda (_hd1764717685_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _def-usetf1765317688_
                              _def-ugetf1765417690_)
                       (if (gx#stx-pair? _hd1764717685_)
                           (let ((_e1765017693_ (gx#syntax-e _hd1764717685_)))
                             (let ((_lp-hd1765117697_ (##car _e1765017693_))
                                   (_lp-tl1765217700_ (##cdr _e1765017693_)))
                               (if (gx#stx-pair? _lp-hd1765117697_)
                                   (let ((_e1765717703_
                                          (gx#syntax-e _lp-hd1765117697_)))
                                     (let ((_hd1765817707_
                                            (##car _e1765717703_))
                                           (_tl1765917710_
                                            (##cdr _e1765717703_)))
                                       (if (gx#stx-pair? _tl1765917710_)
                                           (let ((_e1766017713_
                                                  (gx#syntax-e
                                                   _tl1765917710_)))
                                             (let ((_hd1766117717_
                                                    (##car _e1766017713_))
                                                   (_tl1766217720_
                                                    (##cdr _e1766017713_)))
                                               (if (gx#stx-null?
                                                    _tl1766217720_)
                                                   (_loop1764917681_
                                                    _lp-tl1765217700_
                                                    (cons _hd1766117717_
                                                          _def-usetf1765317688_)
                                                    (cons _hd1765817707_
                                                          _def-ugetf1765417690_))
                                                   (_g1764217668_
                                                    _g1764317672_))))
                                           (_g1764217668_ _g1764317672_))))
                                   (_g1764217668_ _g1764317672_))))
                           (let ((_def-usetf1765517723_
                                  (reverse _def-usetf1765317688_))
                                 (_def-ugetf1765617726_
                                  (reverse _def-ugetf1765417690_)))
                             ((lambda (_L17729_ _L17731_)
                                (let ()
                                  (let ()
                                    (_wrap17041_
                                     (cons (gx#datum->syntax '#f 'begin)
                                           (cons _L17463_
                                                 (cons _L17519_
                                                       (cons _L17491_
                                                             (begin
                                                               '#!void
                                                               (foldr (lambda (_g1774917758_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1775017761_)
                                (cons _g1774917758_ _g1775017761_))
                              (begin
                                '#!void
                                (foldr (lambda (_g1775117764_ _g1775217767_)
                                         (cons _g1775117764_ _g1775217767_))
                                       (begin
                                         '#!void
                                         (foldr (lambda (_g1775317770_
                                                         _g1775417773_)
                                                  (cons _g1775317770_
                                                        _g1775417773_))
                                                (begin
                                                  '#!void
                                                  (foldr (lambda (_g1775517776_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1775617779_)
                   (cons _g1775517776_ _g1775617779_))
                 '()
                 _L17729_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _L17731_))
                                       _L17622_))
                              _L17624_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              _def-usetf1765517723_
                              _def-ugetf1765617726_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1764917681_
                                                      _target1764617675_
                                                      '()
                                                      '()))
                                                   (_g1764217668_
                                                    _g1764317672_)))))
                                         (_g1764217668_ _g1764317672_))
                                     (_g1764217668_ _g1764317672_)))))
                         (_g1764117782_
                          (if (gx#stx-e (gx#stx-getq 'unchecked: _L17133_))
                              (gx#stx-map
                               (lambda (_ref17786_)
                                 (let* ((_g1778917808_
                                         (lambda (_g1779017804_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g1779017804_)))
                                        (_g1778817930_
                                         (lambda (_g1779017812_)
                                           (if (gx#stx-pair? _g1779017812_)
                                               (let ((_e1779417815_
                                                      (gx#syntax-e
                                                       _g1779017812_)))
                                                 (let ((_hd1779517819_
                                                        (##car _e1779417815_))
                                                       (_tl1779617822_
                                                        (##cdr _e1779417815_)))
                                                   (if (gx#stx-pair?
                                                        _tl1779617822_)
                                                       (let ((_e1779717825_
                                                              (gx#syntax-e
                                                               _tl1779617822_)))
                                                         (let ((_hd1779817829_
                                                                (##car _e1779717825_))
                                                               (_tl1779917832_
                                                                (##cdr _e1779717825_)))
                                                           (if (gx#stx-pair?
                                                                _tl1779917832_)
                                                               (let ((_e1780017835_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl1779917832_)))
                         (let ((_hd1780117839_ (##car _e1780017835_))
                               (_tl1780217842_ (##cdr _e1780017835_)))
                           (if (gx#stx-null? _tl1780217842_)
                               ((lambda (_L17845_ _L17847_ _L17848_)
                                  (let* ((_g1786617881_
                                          (lambda (_g1786717877_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g1786717877_)))
                                         (_g1786517926_
                                          (lambda (_g1786717885_)
                                            (if (gx#stx-pair? _g1786717885_)
                                                (let ((_e1787017888_
                                                       (gx#syntax-e
                                                        _g1786717885_)))
                                                  (let ((_hd1787117892_
                                                         (##car _e1787017888_))
                                                        (_tl1787217895_
                                                         (##cdr _e1787017888_)))
                                                    (if (gx#stx-pair?
                                                         _tl1787217895_)
                                                        (let ((_e1787317898_
                                                               (gx#syntax-e
                                                                _tl1787217895_)))
                                                          (let ((_hd1787417902_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1787317898_))
                        (_tl1787517905_ (##cdr _e1787317898_)))
                    (if (gx#stx-null? _tl1787517905_)
                        ((lambda (_L17908_ _L17910_)
                           (let ()
                             (cons (_wrap17041_
                                    (cons (gx#datum->syntax '#f 'def)
                                          (cons _L17910_
                                                (cons (cons _L17275_
                                                            (cons _L17138_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _L17848_ '()))
                                '())))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (cons (_wrap17041_
                                          (cons (gx#datum->syntax '#f 'def)
                                                (cons _L17908_
                                                      (cons (cons _L17273_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L17138_
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _L17848_ '()))
                                      '())))
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                         _hd1787417902_
                         _hd1787117892_)
                        (_g1786617881_ _g1786717885_))))
                (_g1786617881_ _g1786717885_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1786617881_
                                                 _g1786717885_)))))
                                    (_g1786517926_
                                     (list (gx#stx-identifier
                                            _L17847_
                                            '"&"
                                            _L17847_)
                                           (gx#stx-identifier
                                            _L17845_
                                            '"&"
                                            _L17845_)))))
                                _hd1780117839_
                                _hd1779817829_
                                _hd1779517819_)
                               (_g1778917808_ _g1779017812_))))
                       (_g1778917808_ _g1779017812_))))
               (_g1778917808_ _g1779017812_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1778917808_
                                                _g1779017812_)))))
                                   (_g1778817930_ _ref17786_)))
                               _attrs17532_)
                              '())))))
                   _def-setf1754817616_
                   _def-getf1754917619_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop1754217574_
                                           _target1753917568_
                                           '()
                                           '()))
                                        (_g1753517561_ _g1753617565_)))))
                              (_g1753517561_ _g1753617565_))
                          (_g1753517561_ _g1753617565_)))))
              (_g1753417934_
               (gx#stx-map
                (lambda (_ref17938_)
                  (let* ((_g1794117960_
                          (lambda (_g1794217956_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1794217956_)))
                         (_g1794018018_
                          (lambda (_g1794217964_)
                            (if (gx#stx-pair? _g1794217964_)
                                (let ((_e1794617967_
                                       (gx#syntax-e _g1794217964_)))
                                  (let ((_hd1794717971_ (##car _e1794617967_))
                                        (_tl1794817974_ (##cdr _e1794617967_)))
                                    (if (gx#stx-pair? _tl1794817974_)
                                        (let ((_e1794917977_
                                               (gx#syntax-e _tl1794817974_)))
                                          (let ((_hd1795017981_
                                                 (##car _e1794917977_))
                                                (_tl1795117984_
                                                 (##cdr _e1794917977_)))
                                            (if (gx#stx-pair? _tl1795117984_)
                                                (let ((_e1795217987_
                                                       (gx#syntax-e
                                                        _tl1795117984_)))
                                                  (let ((_hd1795317991_
                                                         (##car _e1795217987_))
                                                        (_tl1795417994_
                                                         (##cdr _e1795217987_)))
                                                    (if (gx#stx-null?
                                                         _tl1795417994_)
                                                        ((lambda (_L17997_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L17999_
                          _L18000_)
                   (cons (_wrap17041_
                          (cons (gx#datum->syntax '#f 'def)
                                (cons _L17999_
                                      (cons (cons _L17277_
                                                  (cons _L17138_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons _L18000_ '()))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '()))))
                         (cons (_wrap17041_
                                (cons (gx#datum->syntax '#f 'def)
                                      (cons _L17997_
                                            (cons (cons _L17276_
                                                        (cons _L17138_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _L18000_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))
                               '())))
                 _hd1795317991_
                 _hd1795017981_
                 _hd1794717971_)
                (_g1794117960_ _g1794217964_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1794117960_
                                                 _g1794217964_))))
                                        (_g1794117960_ _g1794217964_))))
                                (_g1794117960_ _g1794217964_)))))
                    (_g1794018018_ _ref17938_)))
                _attrs17532_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1750517516_))))
                                       (_g1750318022_
                                        (_wrap17041_
                                         (cons (gx#datum->syntax '#f 'def)
                                               (cons _L17135_
                                                     (cons (cons _L17278_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L17138_ '()))
                   '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _g1747717488_))))
                        (_g1747518026_
                         (if (gx#stx-false? _L17136_)
                             (cons (gx#datum->syntax '#f 'begin) '())
                             (_wrap17041_
                              (cons (gx#datum->syntax '#f 'def)
                                    (cons (cons _L17136_
                                                (gx#datum->syntax '#f '$args))
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'apply)
                                                      (cons _L17279_
                                                            (cons _L17138_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f '$args) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))))))))
                  _g1744917460_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1744718030_
                                                  (_wrap17041_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'def)
                                                         (cons _L17138_
                                                               (cons _L17435_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _g1742117432_))))
                                  (_g1741918034_
                                   (if _struct?17039_
                                       (let* ((_g1803818062_
                                               (lambda (_g1803918058_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1803918058_)))
                                              (_g1803718149_
                                               (lambda (_g1803918066_)
                                                 (if (gx#stx-pair?
                                                      _g1803918066_)
                                                     (let ((_e1804218069_
                                                            (gx#syntax-e
                                                             _g1803918066_)))
                                                       (let ((_hd1804318073_
                                                              (##car _e1804218069_))
                                                             (_tl1804418076_
                                                              (##cdr _e1804218069_)))
                                                         (if (gx#stx-pair?
                                                              _tl1804418076_)
                                                             (let ((_e1804518079_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl1804418076_)))
                       (let ((_hd1804618083_ (##car _e1804518079_))
                             (_tl1804718086_ (##cdr _e1804518079_)))
                         (if (gx#stx-pair/null? _hd1804618083_)
                             (if (fx>= (gx#stx-length _hd1804618083_) '0)
                                 (let ((_g35369_
                                        (gx#syntax-split-splice
                                         _hd1804618083_
                                         '0)))
                                   (begin
                                     (let ((_g35370_
                                            (if (##values? _g35369_)
                                                (##vector-length _g35369_)
                                                1)))
                                       (if (not (##fx= _g35370_ 2))
                                           (error "Context expects 2 values"
                                                  _g35370_)))
                                     (let ((_target1804818089_
                                            (##vector-ref _g35369_ 0))
                                           (_tl1805018092_
                                            (##vector-ref _g35369_ 1)))
                                       (if (gx#stx-null? _tl1805018092_)
                                           (letrec ((_loop1805118095_
                                                     (lambda (_hd1804918099_
                                                              _field-id1805518102_)
                                                       (if (gx#stx-pair?
                                                            _hd1804918099_)
                                                           (let ((_e1805218105_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd1804918099_)))
                     (let ((_lp-hd1805318109_ (##car _e1805218105_))
                           (_lp-tl1805418112_ (##cdr _e1805218105_)))
                       (_loop1805118095_
                        _lp-tl1805418112_
                        (cons _lp-hd1805318109_ _field-id1805518102_))))
                   (let ((_field-id1805618115_ (reverse _field-id1805518102_)))
                     (if (gx#stx-null? _tl1804718086_)
                         ((lambda (_L18119_ _L18121_)
                            (let ()
                              (cons (gx#datum->syntax '#f 'make-struct-type)
                                    (cons (cons (gx#datum->syntax '#f 'quote)
                                                (cons _L17323_ '()))
                                          (cons _L17137_
                                                (cons _L18121_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons _L17351_ '()))
                    (cons _L17379_
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _L17407_ '()))
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons (begin
                                                    '#!void
                                                    (foldr (lambda (_g1814018143_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1814118146_)
                     (cons _g1814018143_ _g1814118146_))
                   '()
                   _L18119_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          _field-id1805618115_
                          _hd1804318073_)
                         (_g1803818062_ _g1803918066_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop1805118095_
                                              _target1804818089_
                                              '()))
                                           (_g1803818062_ _g1803918066_)))))
                                 (_g1803818062_ _g1803918066_))
                             (_g1803818062_ _g1803918066_))))
                     (_g1803818062_ _g1803918066_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1803818062_
                                                      _g1803918066_)))))
                                         (_g1803718149_
                                          (list (gx#stx-length _els17172_)
                                                (gx#stx-map
                                                 _field-id17044_
                                                 _els17172_))))
                                       (let* ((_g1815318186_
                                               (lambda (_g1815418182_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1815418182_)))
                                              (_g1815218314_
                                               (lambda (_g1815418190_)
                                                 (if (gx#stx-pair?
                                                      _g1815418190_)
                                                     (let ((_e1815718193_
                                                            (gx#syntax-e
                                                             _g1815418190_)))
                                                       (let ((_hd1815818197_
                                                              (##car _e1815718193_))
                                                             (_tl1815918200_
                                                              (##cdr _e1815718193_)))
                                                         (if (gx#stx-pair/null?
                                                              _hd1815818197_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _hd1815818197_)
                               '0)
                         (let ((_g35371_
                                (gx#syntax-split-splice _hd1815818197_ '0)))
                           (begin
                             (let ((_g35372_
                                    (if (##values? _g35371_)
                                        (##vector-length _g35371_)
                                        1)))
                               (if (not (##fx= _g35372_ 2))
                                   (error "Context expects 2 values"
                                          _g35372_)))
                             (let ((_target1816018203_
                                    (##vector-ref _g35371_ 0))
                                   (_tl1816218206_ (##vector-ref _g35371_ 1)))
                               (if (gx#stx-null? _tl1816218206_)
                                   (letrec ((_loop1816318209_
                                             (lambda (_hd1816118213_
                                                      _super1816718216_)
                                               (if (gx#stx-pair?
                                                    _hd1816118213_)
                                                   (let ((_e1816418219_
                                                          (gx#syntax-e
                                                           _hd1816118213_)))
                                                     (let ((_lp-hd1816518223_
                                                            (##car _e1816418219_))
                                                           (_lp-tl1816618226_
                                                            (##cdr _e1816418219_)))
                                                       (_loop1816318209_
                                                        _lp-tl1816618226_
                                                        (cons _lp-hd1816518223_
                                                              _super1816718216_))))
                                                   (let ((_super1816818229_
                                                          (reverse _super1816718216_)))
                                                     (if (gx#stx-pair?
                                                          _tl1815918200_)
                                                         (let ((_e1816918233_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1815918200_)))
                   (let ((_hd1817018237_ (##car _e1816918233_))
                         (_tl1817118240_ (##cdr _e1816918233_)))
                     (if (gx#stx-pair/null? _hd1817018237_)
                         (if (fx>= (gx#stx-length _hd1817018237_) '0)
                             (let ((_g35373_
                                    (gx#syntax-split-splice
                                     _hd1817018237_
                                     '0)))
                               (begin
                                 (let ((_g35374_
                                        (if (##values? _g35373_)
                                            (##vector-length _g35373_)
                                            1)))
                                   (if (not (##fx= _g35374_ 2))
                                       (error "Context expects 2 values"
                                              _g35374_)))
                                 (let ((_target1817218243_
                                        (##vector-ref _g35373_ 0))
                                       (_tl1817418246_
                                        (##vector-ref _g35373_ 1)))
                                   (if (gx#stx-null? _tl1817418246_)
                                       (letrec ((_loop1817518249_
                                                 (lambda (_hd1817318253_
                                                          _slot1817918256_)
                                                   (if (gx#stx-pair?
                                                        _hd1817318253_)
                                                       (let ((_e1817618259_
                                                              (gx#syntax-e
                                                               _hd1817318253_)))
                                                         (let ((_lp-hd1817718263_
                                                                (##car _e1817618259_))
                                                               (_lp-tl1817818266_
                                                                (##cdr _e1817618259_)))
                                                           (_loop1817518249_
                                                            _lp-tl1817818266_
                                                            (cons _lp-hd1817718263_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _slot1817918256_))))
               (let ((_slot1818018269_ (reverse _slot1817918256_)))
                 (if (gx#stx-null? _tl1817118240_)
                     ((lambda (_L18273_ _L18275_)
                        (let ()
                          (cons (gx#datum->syntax '#f 'make-class-type)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _L17323_ '()))
                                      (cons (cons (gx#datum->syntax '#f '@list)
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g1829718302_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1829818305_)
                     (cons _g1829718302_ _g1829818305_))
                   '()
                   _L18275_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'quote)
                                                        (cons (begin
                                                                '#!void
                                                                (foldr (lambda (_g1829918308_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g1830018311_)
                                 (cons _g1829918308_ _g1830018311_))
                               '()
                               _L18273_))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'quote)
                                                              (cons _L17351_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _L17379_
                      (cons (cons (gx#datum->syntax '#f 'quote)
                                  (cons _L17407_ '()))
                            '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      _slot1818018269_
                      _super1816818229_)
                     (_g1815318186_ _g1815418190_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop1817518249_
                                          _target1817218243_
                                          '()))
                                       (_g1815318186_ _g1815418190_)))))
                             (_g1815318186_ _g1815418190_))
                         (_g1815318186_ _g1815418190_))))
                 (_g1815318186_ _g1815418190_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop1816318209_ _target1816018203_ '()))
                                   (_g1815318186_ _g1815418190_)))))
                         (_g1815318186_ _g1815418190_))
                     (_g1815318186_ _g1815418190_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1815318186_
                                                      _g1815418190_)))))
                                         (_g1815218314_
                                          (list _L17137_
                                                (gx#stx-map
                                                 gx#stx-car
                                                 _els17172_)))))))))
                            _g1739317404_))))
                   (_g1739118318_ (gx#stx-getq 'constructor: _L17133_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1736517376_))))
                                            (_g1736318322_
                                             (let ((_$e18326_
                                                    (gx#stx-getq
                                                     'plist:
                                                     _L17133_)))
                                               (if _$e18326_
                                                   _$e18326_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '@list)
                                                         '())))))))
                                      _g1733717348_))))
                             (_g1733518330_
                              (let ((_$e18334_ (gx#stx-getq 'name: _L17133_)))
                                (if _$e18334_ _$e18334_ _L17138_))))))
                       _g1730917320_))))
              (_g1730718338_
               (let ((_$e18342_ (gx#stx-getq 'id: _L17133_)))
                 (if _$e18342_
                     _$e18342_
                     (if (gx#module-context? (gx#current-expander-context))
                         (_module-type-id17047_ _L17138_)
                         (gx#genident _L17138_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1719917267_
                                                _hd1719617257_
                                                _hd1719317247_
                                                _hd1719017237_
                                                _hd1718717227_
                                                _hd1718417217_)
                                               (_g1717517206_ _g1717617210_))))
                                       (_g1717517206_ _g1717617210_))))
                               (_g1717517206_ _g1717617210_))))
                       (_g1717517206_ _g1717617210_))))
               (_g1717517206_ _g1717617210_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1717517206_ _g1717617210_))))
                                       (_g1717517206_ _g1717617210_)))))
                           (_g1717418346_
                            (if _struct?17039_
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
                         (_g1704917076_ _g1705017080_)))
                   _tl1707017130_
                   _hd1706917127_
                   _hd1706617117_
                   _hd1706317107_
                   _hd1706017097_)))
              (_g1704917076_ _g1705017080_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1704917076_ _g1705017080_))))
                                      (_g1704917076_ _g1705017080_))))
                              (_g1704917076_ _g1705017080_))))
                      (_g1704917076_ _g1705017080_)))))
          (_g1704818350_ _stx17037_)))))
  (define |gerbil/core$<MOP>$<MOP:1>[:0:]#defstruct-type|
    (lambda (_stx18650_)
      (|gerbil/core$<MOP>$<MOP:1>[1]#generate-typedef| _stx18650_ '#t)))
  (define |gerbil/core$<MOP>$<MOP:1>[:0:]#defclass-type|
    (lambda (_stx18653_)
      (|gerbil/core$<MOP>$<MOP:1>[1]#generate-typedef| _stx18653_ '#f))))
