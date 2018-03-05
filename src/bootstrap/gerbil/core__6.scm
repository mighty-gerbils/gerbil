(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<MOP>$<MOP:1>[1]#generate-typedef|
    (lambda (_stx16586_ _struct?16588_)
      (letrec ((_wrap16590_
                (lambda (_e-stx18191_)
                  (gx#stx-wrap-source
                   _e-stx18191_
                   (gx#stx-source _stx16586_))))
               (_slotify16592_
                (lambda (_field18056_ _off18058_)
                  (let* ((_g1806118088_
                          (lambda (_g1806218084_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1806218084_)))
                         (_g1806018145_
                          (lambda (_g1806218092_)
                            (if (gx#stx-pair? _g1806218092_)
                                (let ((_e1807418095_
                                       (gx#syntax-e _g1806218092_)))
                                  (let ((_hd1807518099_ (##car _e1807418095_))
                                        (_tl1807618102_ (##cdr _e1807418095_)))
                                    (if (gx#stx-pair? _tl1807618102_)
                                        (let ((_e1807718105_
                                               (gx#syntax-e _tl1807618102_)))
                                          (let ((_hd1807818109_
                                                 (##car _e1807718105_))
                                                (_tl1807918112_
                                                 (##cdr _e1807718105_)))
                                            (if (gx#stx-pair? _tl1807918112_)
                                                (let ((_e1808018115_
                                                       (gx#syntax-e
                                                        _tl1807918112_)))
                                                  (let ((_hd1808118119_
                                                         (##car _e1808018115_))
                                                        (_tl1808218122_
                                                         (##cdr _e1808018115_)))
                                                    (if (gx#stx-null?
                                                         _tl1808218122_)
                                                        ((lambda (_L18125_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L18127_
                          _L18128_)
                   (cons _off18058_ (cons _L18127_ (cons _L18125_ '()))))
                 _hd1808118119_
                 _hd1807818109_
                 _hd1807518099_)
                (_g1806118088_ _g1806218092_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1806118088_
                                                 _g1806218092_))))
                                        (_g1806118088_ _g1806218092_))))
                                (_g1806118088_ _g1806218092_))))
                         (_g1805918187_
                          (lambda (_g1806218149_)
                            (if (gx#stx-pair? _g1806218149_)
                                (let ((_e1806518152_
                                       (gx#syntax-e _g1806218149_)))
                                  (let ((_hd1806618156_ (##car _e1806518152_))
                                        (_tl1806718159_ (##cdr _e1806518152_)))
                                    (if (gx#stx-pair? _tl1806718159_)
                                        (let ((_e1806818162_
                                               (gx#syntax-e _tl1806718159_)))
                                          (let ((_hd1806918166_
                                                 (##car _e1806818162_))
                                                (_tl1807018169_
                                                 (##cdr _e1806818162_)))
                                            (if (gx#stx-null? _tl1807018169_)
                                                ((lambda (_L18172_ _L18174_)
                                                   (cons _off18058_
                                                         (cons _L18174_
                                                               (cons _L18172_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1806918166_
                                                 _hd1806618156_)
                                                (_g1806018145_
                                                 _g1806218149_))))
                                        (_g1806018145_ _g1806218149_))))
                                (_g1806018145_ _g1806218149_)))))
                    (_g1805918187_ _field18056_))))
               (_field-id16593_
                (lambda (_field17922_)
                  (let* ((_g1792617953_
                          (lambda (_g1792717949_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1792717949_)))
                         (_g1792518010_
                          (lambda (_g1792717957_)
                            (if (gx#stx-pair? _g1792717957_)
                                (let ((_e1793917960_
                                       (gx#syntax-e _g1792717957_)))
                                  (let ((_hd1794017964_ (##car _e1793917960_))
                                        (_tl1794117967_ (##cdr _e1793917960_)))
                                    (if (gx#stx-pair? _tl1794117967_)
                                        (let ((_e1794217970_
                                               (gx#syntax-e _tl1794117967_)))
                                          (let ((_hd1794317974_
                                                 (##car _e1794217970_))
                                                (_tl1794417977_
                                                 (##cdr _e1794217970_)))
                                            (if (gx#stx-pair? _tl1794417977_)
                                                (let ((_e1794517980_
                                                       (gx#syntax-e
                                                        _tl1794417977_)))
                                                  (let ((_hd1794617984_
                                                         (##car _e1794517980_))
                                                        (_tl1794717987_
                                                         (##cdr _e1794517980_)))
                                                    (if (gx#stx-null?
                                                         _tl1794717987_)
                                                        ((lambda (_L17990_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L17992_
                          _L17993_)
                   _L17993_)
                 _hd1794617984_
                 _hd1794317974_
                 _hd1794017964_)
                (_g1792617953_ _g1792717957_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1792617953_
                                                 _g1792717957_))))
                                        (_g1792617953_ _g1792717957_))))
                                (_g1792617953_ _g1792717957_))))
                         (_g1792418052_
                          (lambda (_g1792718014_)
                            (if (gx#stx-pair? _g1792718014_)
                                (let ((_e1793018017_
                                       (gx#syntax-e _g1792718014_)))
                                  (let ((_hd1793118021_ (##car _e1793018017_))
                                        (_tl1793218024_ (##cdr _e1793018017_)))
                                    (if (gx#stx-pair? _tl1793218024_)
                                        (let ((_e1793318027_
                                               (gx#syntax-e _tl1793218024_)))
                                          (let ((_hd1793418031_
                                                 (##car _e1793318027_))
                                                (_tl1793518034_
                                                 (##cdr _e1793318027_)))
                                            (if (gx#stx-null? _tl1793518034_)
                                                ((lambda (_L18037_ _L18039_)
                                                   ':)
                                                 _hd1793418031_
                                                 _hd1793118021_)
                                                (_g1792518010_
                                                 _g1792718014_))))
                                        (_g1792518010_ _g1792718014_))))
                                (_g1792518010_ _g1792718014_)))))
                    (_g1792418052_ _field17922_))))
               (_struct-opt?16594_
                (lambda (_key17919_)
                  (memq (gx#stx-e _key17919_)
                        '(fields: id: name: plist: constructor: unchecked:))))
               (_class-opt?16595_
                (lambda (_key17916_)
                  (memq (gx#stx-e _key17916_)
                        '(slots: id: name: plist: constructor: unchecked:))))
               (_module-type-id16596_
                (lambda (_type-t17903_)
                  (let ((_$e17906_
                         (gx#module-context-ns (gx#current-expander-context))))
                    (if _$e17906_
                        ((lambda (_ns17910_)
                           (gx#stx-identifier
                            _type-t17903_
                            _ns17910_
                            '"#"
                            _type-t17903_))
                         _$e17906_)
                        (let ((_mid17913_
                               (gx#expander-context-id
                                (gx#current-expander-context))))
                          (gx#stx-identifier
                           _type-t17903_
                           _mid17913_
                           '"#"
                           _type-t17903_)))))))
        (let* ((_g1659816625_
                (lambda (_g1659916621_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1659916621_)))
               (_g1659717899_
                (lambda (_g1659916629_)
                  (if (gx#stx-pair? _g1659916629_)
                      (let ((_e1660516632_ (gx#syntax-e _g1659916629_)))
                        (let ((_hd1660616636_ (##car _e1660516632_))
                              (_tl1660716639_ (##cdr _e1660516632_)))
                          (if (gx#stx-pair? _tl1660716639_)
                              (let ((_e1660816642_
                                     (gx#syntax-e _tl1660716639_)))
                                (let ((_hd1660916646_ (##car _e1660816642_))
                                      (_tl1661016649_ (##cdr _e1660816642_)))
                                  (if (gx#stx-pair? _tl1661016649_)
                                      (let ((_e1661116652_
                                             (gx#syntax-e _tl1661016649_)))
                                        (let ((_hd1661216656_
                                               (##car _e1661116652_))
                                              (_tl1661316659_
                                               (##cdr _e1661116652_)))
                                          (if (gx#stx-pair? _tl1661316659_)
                                              (let ((_e1661416662_
                                                     (gx#syntax-e
                                                      _tl1661316659_)))
                                                (let ((_hd1661516666_
                                                       (##car _e1661416662_))
                                                      (_tl1661616669_
                                                       (##cdr _e1661416662_)))
                                                  (if (gx#stx-pair?
                                                       _tl1661616669_)
                                                      (let ((_e1661716672_
                                                             (gx#syntax-e
                                                              _tl1661616669_)))
                                                        (let ((_hd1661816676_
                                                               (##car _e1661716672_))
                                                              (_tl1661916679_
                                                               (##cdr _e1661716672_)))
                                                          ((lambda (_L16682_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L16684_
                            _L16685_
                            _L16686_
                            _L16687_)
                     (if (if (gx#identifier? _L16687_)
                             (if (let ((_$e16713_ (gx#identifier? _L16685_)))
                                   (if _$e16713_
                                       _$e16713_
                                       (gx#stx-false? _L16685_)))
                                 (if (gx#identifier? _L16684_)
                                     (gx#stx-plist?
                                      _L16682_
                                      (if _struct?16588_
                                          _struct-opt?16594_
                                          _class-opt?16595_))
                                     '#f)
                                 '#f)
                             '#f)
                         (let* ((_els16721_
                                 (let ((_$e16717_
                                        (gx#stx-getq
                                         (if _struct?16588_ 'fields: 'slots:)
                                         _L16682_)))
                                   (if _$e16717_ _$e16717_ '())))
                                (_g1672416755_
                                 (lambda (_g1672516751_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1672516751_)))
                                (_g1672317895_
                                 (lambda (_g1672516759_)
                                   (if (gx#stx-pair? _g1672516759_)
                                       (let ((_e1673216762_
                                              (gx#syntax-e _g1672516759_)))
                                         (let ((_hd1673316766_
                                                (##car _e1673216762_))
                                               (_tl1673416769_
                                                (##cdr _e1673216762_)))
                                           (if (gx#stx-pair? _tl1673416769_)
                                               (let ((_e1673516772_
                                                      (gx#syntax-e
                                                       _tl1673416769_)))
                                                 (let ((_hd1673616776_
                                                        (##car _e1673516772_))
                                                       (_tl1673716779_
                                                        (##cdr _e1673516772_)))
                                                   (if (gx#stx-pair?
                                                        _tl1673716779_)
                                                       (let ((_e1673816782_
                                                              (gx#syntax-e
                                                               _tl1673716779_)))
                                                         (let ((_hd1673916786_
                                                                (##car _e1673816782_))
                                                               (_tl1674016789_
                                                                (##cdr _e1673816782_)))
                                                           (if (gx#stx-pair?
                                                                _tl1674016789_)
                                                               (let ((_e1674116792_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl1674016789_)))
                         (let ((_hd1674216796_ (##car _e1674116792_))
                               (_tl1674316799_ (##cdr _e1674116792_)))
                           (if (gx#stx-pair? _tl1674316799_)
                               (let ((_e1674416802_
                                      (gx#syntax-e _tl1674316799_)))
                                 (let ((_hd1674516806_ (##car _e1674416802_))
                                       (_tl1674616809_ (##cdr _e1674416802_)))
                                   (if (gx#stx-pair? _tl1674616809_)
                                       (let ((_e1674716812_
                                              (gx#syntax-e _tl1674616809_)))
                                         (let ((_hd1674816816_
                                                (##car _e1674716812_))
                                               (_tl1674916819_
                                                (##cdr _e1674716812_)))
                                           (if (gx#stx-null? _tl1674916819_)
                                               ((lambda (_L16822_
                                                         _L16824_
                                                         _L16825_
                                                         _L16826_
                                                         _L16827_
                                                         _L16828_)
                                                  (let ()
                                                    (let* ((_g1685716865_
                                                            (lambda (_g1685816861_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g1685816861_)))
                                                           (_g1685617887_
                                                            (lambda (_g1685816869_)
                                                              ((lambda (_L16872_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g1688516893_
                                   (lambda (_g1688616889_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1688616889_)))
                                  (_g1688417879_
                                   (lambda (_g1688616897_)
                                     ((lambda (_L16900_)
                                        (let ()
                                          (let* ((_g1691316921_
                                                  (lambda (_g1691416917_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1691416917_)))
                                                 (_g1691217871_
                                                  (lambda (_g1691416925_)
                                                    ((lambda (_L16928_)
                                                       (let ()
                                                         (let* ((_g1694116949_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1694216945_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1694216945_)))
                        (_g1694017867_
                         (lambda (_g1694216953_)
                           ((lambda (_L16956_)
                              (let ()
                                (let* ((_g1696916977_
                                        (lambda (_g1697016973_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g1697016973_)))
                                       (_g1696817583_
                                        (lambda (_g1697016981_)
                                          ((lambda (_L16984_)
                                             (let ()
                                               (let* ((_g1699717005_
                                                       (lambda (_g1699817001_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1699817001_)))
                                                      (_g1699617579_
                                                       (lambda (_g1699817009_)
                                                         ((lambda (_L17012_)
                                                            (let ()
                                                              (let* ((_g1702517033_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g1702617029_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1702617029_)))
                             (_g1702417575_
                              (lambda (_g1702617037_)
                                ((lambda (_L17040_)
                                   (let ()
                                     (let* ((_g1705317061_
                                             (lambda (_g1705417057_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1705417057_)))
                                            (_g1705217571_
                                             (lambda (_g1705417065_)
                                               ((lambda (_L17068_)
                                                  (let ()
                                                    (let* ((_attrs17081_
                                                            (if _struct?16588_
                                                                (gx#stx-map
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _slotify16592_
                         _els16721_
                         (iota (gx#stx-length _els16721_)))
                        _els16721_))
                   (_g1708417110_
                    (lambda (_g1708517106_)
                      (gx#raise-syntax-error '#f '"Bad syntax" _g1708517106_)))
                   (_g1708317483_
                    (lambda (_g1708517114_)
                      (if (gx#stx-pair/null? _g1708517114_)
                          (if (fx>= (gx#stx-length _g1708517114_) '0)
                              (let ((_g34782_
                                     (gx#syntax-split-splice
                                      _g1708517114_
                                      '0)))
                                (begin
                                  (let ((_g34783_ (values-count _g34782_)))
                                    (if (not (fx= _g34783_ 2))
                                        (error "Context expects 2 values"
                                               _g34783_)))
                                  (let ((_target1708817117_
                                         (values-ref _g34782_ 0))
                                        (_tl1709017120_
                                         (values-ref _g34782_ 1)))
                                    (if (gx#stx-null? _tl1709017120_)
                                        (letrec ((_loop1709117123_
                                                  (lambda (_hd1708917127_
                                                           _def-setf1709517130_
                                                           _def-getf1709617132_)
                                                    (if (gx#stx-pair?
                                                         _hd1708917127_)
                                                        (let ((_e1709217135_
                                                               (gx#syntax-e
                                                                _hd1708917127_)))
                                                          (let ((_lp-hd1709317139_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1709217135_))
                        (_lp-tl1709417142_ (##cdr _e1709217135_)))
                    (if (gx#stx-pair? _lp-hd1709317139_)
                        (let ((_e1709917145_ (gx#syntax-e _lp-hd1709317139_)))
                          (let ((_hd1710017149_ (##car _e1709917145_))
                                (_tl1710117152_ (##cdr _e1709917145_)))
                            (if (gx#stx-pair? _tl1710117152_)
                                (let ((_e1710217155_
                                       (gx#syntax-e _tl1710117152_)))
                                  (let ((_hd1710317159_ (##car _e1710217155_))
                                        (_tl1710417162_ (##cdr _e1710217155_)))
                                    (if (gx#stx-null? _tl1710417162_)
                                        (_loop1709117123_
                                         _lp-tl1709417142_
                                         (cons _hd1710317159_
                                               _def-setf1709517130_)
                                         (cons _hd1710017149_
                                               _def-getf1709617132_))
                                        (_g1708417110_ _g1708517114_))))
                                (_g1708417110_ _g1708517114_))))
                        (_g1708417110_ _g1708517114_))))
                (let ((_def-setf1709717165_ (reverse _def-setf1709517130_))
                      (_def-getf1709817168_ (reverse _def-getf1709617132_)))
                  ((lambda (_L17171_ _L17173_)
                     (let ()
                       (let* ((_g1719117217_
                               (lambda (_g1719217213_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1719217213_)))
                              (_g1719017331_
                               (lambda (_g1719217221_)
                                 (if (gx#stx-pair/null? _g1719217221_)
                                     (if (fx>= (gx#stx-length _g1719217221_)
                                               '0)
                                         (let ((_g34784_
                                                (gx#syntax-split-splice
                                                 _g1719217221_
                                                 '0)))
                                           (begin
                                             (let ((_g34785_
                                                    (values-count _g34784_)))
                                               (if (not (fx= _g34785_ 2))
                                                   (error "Context expects 2 values"
                                                          _g34785_)))
                                             (let ((_target1719517224_
                                                    (values-ref _g34784_ 0))
                                                   (_tl1719717227_
                                                    (values-ref _g34784_ 1)))
                                               (if (gx#stx-null?
                                                    _tl1719717227_)
                                                   (letrec ((_loop1719817230_
                                                             (lambda (_hd1719617234_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _def-usetf1720217237_
                              _def-ugetf1720317239_)
                       (if (gx#stx-pair? _hd1719617234_)
                           (let ((_e1719917242_ (gx#syntax-e _hd1719617234_)))
                             (let ((_lp-hd1720017246_ (##car _e1719917242_))
                                   (_lp-tl1720117249_ (##cdr _e1719917242_)))
                               (if (gx#stx-pair? _lp-hd1720017246_)
                                   (let ((_e1720617252_
                                          (gx#syntax-e _lp-hd1720017246_)))
                                     (let ((_hd1720717256_
                                            (##car _e1720617252_))
                                           (_tl1720817259_
                                            (##cdr _e1720617252_)))
                                       (if (gx#stx-pair? _tl1720817259_)
                                           (let ((_e1720917262_
                                                  (gx#syntax-e
                                                   _tl1720817259_)))
                                             (let ((_hd1721017266_
                                                    (##car _e1720917262_))
                                                   (_tl1721117269_
                                                    (##cdr _e1720917262_)))
                                               (if (gx#stx-null?
                                                    _tl1721117269_)
                                                   (_loop1719817230_
                                                    _lp-tl1720117249_
                                                    (cons _hd1721017266_
                                                          _def-usetf1720217237_)
                                                    (cons _hd1720717256_
                                                          _def-ugetf1720317239_))
                                                   (_g1719117217_
                                                    _g1719217221_))))
                                           (_g1719117217_ _g1719217221_))))
                                   (_g1719117217_ _g1719217221_))))
                           (let ((_def-usetf1720417272_
                                  (reverse _def-usetf1720217237_))
                                 (_def-ugetf1720517275_
                                  (reverse _def-ugetf1720317239_)))
                             ((lambda (_L17278_ _L17280_)
                                (let ()
                                  (let ()
                                    (_wrap16590_
                                     (cons (gx#datum->syntax '#f 'begin)
                                           (cons _L17012_
                                                 (cons _L17068_
                                                       (cons _L17040_
                                                             (begin
                                                               '#!void
                                                               (foldr (lambda (_g1729817307_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1729917310_)
                                (cons _g1729817307_ _g1729917310_))
                              (begin
                                '#!void
                                (foldr (lambda (_g1730017313_ _g1730117316_)
                                         (cons _g1730017313_ _g1730117316_))
                                       (begin
                                         '#!void
                                         (foldr (lambda (_g1730217319_
                                                         _g1730317322_)
                                                  (cons _g1730217319_
                                                        _g1730317322_))
                                                (begin
                                                  '#!void
                                                  (foldr (lambda (_g1730417325_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1730517328_)
                   (cons _g1730417325_ _g1730517328_))
                 '()
                 _L17278_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _L17280_))
                                       _L17171_))
                              _L17173_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              _def-usetf1720417272_
                              _def-ugetf1720517275_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1719817230_
                                                      _target1719517224_
                                                      '()
                                                      '()))
                                                   (_g1719117217_
                                                    _g1719217221_)))))
                                         (_g1719117217_ _g1719217221_))
                                     (_g1719117217_ _g1719217221_)))))
                         (_g1719017331_
                          (if (gx#stx-e (gx#stx-getq 'unchecked: _L16682_))
                              (gx#stx-map
                               (lambda (_ref17335_)
                                 (let* ((_g1733817357_
                                         (lambda (_g1733917353_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g1733917353_)))
                                        (_g1733717479_
                                         (lambda (_g1733917361_)
                                           (if (gx#stx-pair? _g1733917361_)
                                               (let ((_e1734317364_
                                                      (gx#syntax-e
                                                       _g1733917361_)))
                                                 (let ((_hd1734417368_
                                                        (##car _e1734317364_))
                                                       (_tl1734517371_
                                                        (##cdr _e1734317364_)))
                                                   (if (gx#stx-pair?
                                                        _tl1734517371_)
                                                       (let ((_e1734617374_
                                                              (gx#syntax-e
                                                               _tl1734517371_)))
                                                         (let ((_hd1734717378_
                                                                (##car _e1734617374_))
                                                               (_tl1734817381_
                                                                (##cdr _e1734617374_)))
                                                           (if (gx#stx-pair?
                                                                _tl1734817381_)
                                                               (let ((_e1734917384_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl1734817381_)))
                         (let ((_hd1735017388_ (##car _e1734917384_))
                               (_tl1735117391_ (##cdr _e1734917384_)))
                           (if (gx#stx-null? _tl1735117391_)
                               ((lambda (_L17394_ _L17396_ _L17397_)
                                  (let* ((_g1741517430_
                                          (lambda (_g1741617426_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g1741617426_)))
                                         (_g1741417475_
                                          (lambda (_g1741617434_)
                                            (if (gx#stx-pair? _g1741617434_)
                                                (let ((_e1741917437_
                                                       (gx#syntax-e
                                                        _g1741617434_)))
                                                  (let ((_hd1742017441_
                                                         (##car _e1741917437_))
                                                        (_tl1742117444_
                                                         (##cdr _e1741917437_)))
                                                    (if (gx#stx-pair?
                                                         _tl1742117444_)
                                                        (let ((_e1742217447_
                                                               (gx#syntax-e
                                                                _tl1742117444_)))
                                                          (let ((_hd1742317451_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1742217447_))
                        (_tl1742417454_ (##cdr _e1742217447_)))
                    (if (gx#stx-null? _tl1742417454_)
                        ((lambda (_L17457_ _L17459_)
                           (let ()
                             (cons (_wrap16590_
                                    (cons (gx#datum->syntax '#f 'def)
                                          (cons _L17459_
                                                (cons (cons _L16824_
                                                            (cons _L16687_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _L17397_ '()))
                                '())))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (cons (_wrap16590_
                                          (cons (gx#datum->syntax '#f 'def)
                                                (cons _L17457_
                                                      (cons (cons _L16822_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L16687_
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _L17397_ '()))
                                      '())))
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                         _hd1742317451_
                         _hd1742017441_)
                        (_g1741517430_ _g1741617434_))))
                (_g1741517430_ _g1741617434_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1741517430_
                                                 _g1741617434_)))))
                                    (_g1741417475_
                                     (list (gx#stx-identifier
                                            _L17396_
                                            '"&"
                                            _L17396_)
                                           (gx#stx-identifier
                                            _L17394_
                                            '"&"
                                            _L17394_)))))
                                _hd1735017388_
                                _hd1734717378_
                                _hd1734417368_)
                               (_g1733817357_ _g1733917361_))))
                       (_g1733817357_ _g1733917361_))))
               (_g1733817357_ _g1733917361_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1733817357_
                                                _g1733917361_)))))
                                   (_g1733717479_ _ref17335_)))
                               _attrs17081_)
                              '())))))
                   _def-setf1709717165_
                   _def-getf1709817168_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop1709117123_
                                           _target1708817117_
                                           '()
                                           '()))
                                        (_g1708417110_ _g1708517114_)))))
                              (_g1708417110_ _g1708517114_))
                          (_g1708417110_ _g1708517114_)))))
              (_g1708317483_
               (gx#stx-map
                (lambda (_ref17487_)
                  (let* ((_g1749017509_
                          (lambda (_g1749117505_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1749117505_)))
                         (_g1748917567_
                          (lambda (_g1749117513_)
                            (if (gx#stx-pair? _g1749117513_)
                                (let ((_e1749517516_
                                       (gx#syntax-e _g1749117513_)))
                                  (let ((_hd1749617520_ (##car _e1749517516_))
                                        (_tl1749717523_ (##cdr _e1749517516_)))
                                    (if (gx#stx-pair? _tl1749717523_)
                                        (let ((_e1749817526_
                                               (gx#syntax-e _tl1749717523_)))
                                          (let ((_hd1749917530_
                                                 (##car _e1749817526_))
                                                (_tl1750017533_
                                                 (##cdr _e1749817526_)))
                                            (if (gx#stx-pair? _tl1750017533_)
                                                (let ((_e1750117536_
                                                       (gx#syntax-e
                                                        _tl1750017533_)))
                                                  (let ((_hd1750217540_
                                                         (##car _e1750117536_))
                                                        (_tl1750317543_
                                                         (##cdr _e1750117536_)))
                                                    (if (gx#stx-null?
                                                         _tl1750317543_)
                                                        ((lambda (_L17546_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L17548_
                          _L17549_)
                   (cons (_wrap16590_
                          (cons (gx#datum->syntax '#f 'def)
                                (cons _L17548_
                                      (cons (cons _L16826_
                                                  (cons _L16687_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons _L17549_ '()))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '()))))
                         (cons (_wrap16590_
                                (cons (gx#datum->syntax '#f 'def)
                                      (cons _L17546_
                                            (cons (cons _L16825_
                                                        (cons _L16687_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _L17549_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))
                               '())))
                 _hd1750217540_
                 _hd1749917530_
                 _hd1749617520_)
                (_g1749017509_ _g1749117513_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1749017509_
                                                 _g1749117513_))))
                                        (_g1749017509_ _g1749117513_))))
                                (_g1749017509_ _g1749117513_)))))
                    (_g1748917567_ _ref17487_)))
                _attrs17081_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1705417065_))))
                                       (_g1705217571_
                                        (_wrap16590_
                                         (cons (gx#datum->syntax '#f 'def)
                                               (cons _L16684_
                                                     (cons (cons _L16827_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L16687_ '()))
                   '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _g1702617037_))))
                        (_g1702417575_
                         (if (gx#stx-false? _L16685_)
                             (cons (gx#datum->syntax '#f 'begin) '())
                             (_wrap16590_
                              (cons (gx#datum->syntax '#f 'def)
                                    (cons (cons _L16685_
                                                (gx#datum->syntax '#f '$args))
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'apply)
                                                      (cons _L16828_
                                                            (cons _L16687_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f '$args) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))))))))
                  _g1699817009_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1699617579_
                                                  (_wrap16590_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'def)
                                                         (cons _L16687_
                                                               (cons _L16984_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _g1697016981_))))
                                  (_g1696817583_
                                   (if _struct?16588_
                                       (let* ((_g1758717611_
                                               (lambda (_g1758817607_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1758817607_)))
                                              (_g1758617698_
                                               (lambda (_g1758817615_)
                                                 (if (gx#stx-pair?
                                                      _g1758817615_)
                                                     (let ((_e1759117618_
                                                            (gx#syntax-e
                                                             _g1758817615_)))
                                                       (let ((_hd1759217622_
                                                              (##car _e1759117618_))
                                                             (_tl1759317625_
                                                              (##cdr _e1759117618_)))
                                                         (if (gx#stx-pair?
                                                              _tl1759317625_)
                                                             (let ((_e1759417628_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl1759317625_)))
                       (let ((_hd1759517632_ (##car _e1759417628_))
                             (_tl1759617635_ (##cdr _e1759417628_)))
                         (if (gx#stx-pair/null? _hd1759517632_)
                             (if (fx>= (gx#stx-length _hd1759517632_) '0)
                                 (let ((_g34786_
                                        (gx#syntax-split-splice
                                         _hd1759517632_
                                         '0)))
                                   (begin
                                     (let ((_g34787_ (values-count _g34786_)))
                                       (if (not (fx= _g34787_ 2))
                                           (error "Context expects 2 values"
                                                  _g34787_)))
                                     (let ((_target1759717638_
                                            (values-ref _g34786_ 0))
                                           (_tl1759917641_
                                            (values-ref _g34786_ 1)))
                                       (if (gx#stx-null? _tl1759917641_)
                                           (letrec ((_loop1760017644_
                                                     (lambda (_hd1759817648_
                                                              _field-id1760417651_)
                                                       (if (gx#stx-pair?
                                                            _hd1759817648_)
                                                           (let ((_e1760117654_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd1759817648_)))
                     (let ((_lp-hd1760217658_ (##car _e1760117654_))
                           (_lp-tl1760317661_ (##cdr _e1760117654_)))
                       (_loop1760017644_
                        _lp-tl1760317661_
                        (cons _lp-hd1760217658_ _field-id1760417651_))))
                   (let ((_field-id1760517664_ (reverse _field-id1760417651_)))
                     (if (gx#stx-null? _tl1759617635_)
                         ((lambda (_L17668_ _L17670_)
                            (let ()
                              (cons (gx#datum->syntax '#f 'make-struct-type)
                                    (cons (cons (gx#datum->syntax '#f 'quote)
                                                (cons _L16872_ '()))
                                          (cons _L16686_
                                                (cons _L17670_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons _L16900_ '()))
                    (cons _L16928_
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _L16956_ '()))
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons (begin
                                                    '#!void
                                                    (foldr (lambda (_g1768917692_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1769017695_)
                     (cons _g1768917692_ _g1769017695_))
                   '()
                   _L17668_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          _field-id1760517664_
                          _hd1759217622_)
                         (_g1758717611_ _g1758817615_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop1760017644_
                                              _target1759717638_
                                              '()))
                                           (_g1758717611_ _g1758817615_)))))
                                 (_g1758717611_ _g1758817615_))
                             (_g1758717611_ _g1758817615_))))
                     (_g1758717611_ _g1758817615_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1758717611_
                                                      _g1758817615_)))))
                                         (_g1758617698_
                                          (list (gx#stx-length _els16721_)
                                                (gx#stx-map
                                                 _field-id16593_
                                                 _els16721_))))
                                       (let* ((_g1770217735_
                                               (lambda (_g1770317731_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1770317731_)))
                                              (_g1770117863_
                                               (lambda (_g1770317739_)
                                                 (if (gx#stx-pair?
                                                      _g1770317739_)
                                                     (let ((_e1770617742_
                                                            (gx#syntax-e
                                                             _g1770317739_)))
                                                       (let ((_hd1770717746_
                                                              (##car _e1770617742_))
                                                             (_tl1770817749_
                                                              (##cdr _e1770617742_)))
                                                         (if (gx#stx-pair/null?
                                                              _hd1770717746_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _hd1770717746_)
                               '0)
                         (let ((_g34788_
                                (gx#syntax-split-splice _hd1770717746_ '0)))
                           (begin
                             (let ((_g34789_ (values-count _g34788_)))
                               (if (not (fx= _g34789_ 2))
                                   (error "Context expects 2 values"
                                          _g34789_)))
                             (let ((_target1770917752_ (values-ref _g34788_ 0))
                                   (_tl1771117755_ (values-ref _g34788_ 1)))
                               (if (gx#stx-null? _tl1771117755_)
                                   (letrec ((_loop1771217758_
                                             (lambda (_hd1771017762_
                                                      _super1771617765_)
                                               (if (gx#stx-pair?
                                                    _hd1771017762_)
                                                   (let ((_e1771317768_
                                                          (gx#syntax-e
                                                           _hd1771017762_)))
                                                     (let ((_lp-hd1771417772_
                                                            (##car _e1771317768_))
                                                           (_lp-tl1771517775_
                                                            (##cdr _e1771317768_)))
                                                       (_loop1771217758_
                                                        _lp-tl1771517775_
                                                        (cons _lp-hd1771417772_
                                                              _super1771617765_))))
                                                   (let ((_super1771717778_
                                                          (reverse _super1771617765_)))
                                                     (if (gx#stx-pair?
                                                          _tl1770817749_)
                                                         (let ((_e1771817782_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1770817749_)))
                   (let ((_hd1771917786_ (##car _e1771817782_))
                         (_tl1772017789_ (##cdr _e1771817782_)))
                     (if (gx#stx-pair/null? _hd1771917786_)
                         (if (fx>= (gx#stx-length _hd1771917786_) '0)
                             (let ((_g34790_
                                    (gx#syntax-split-splice
                                     _hd1771917786_
                                     '0)))
                               (begin
                                 (let ((_g34791_ (values-count _g34790_)))
                                   (if (not (fx= _g34791_ 2))
                                       (error "Context expects 2 values"
                                              _g34791_)))
                                 (let ((_target1772117792_
                                        (values-ref _g34790_ 0))
                                       (_tl1772317795_
                                        (values-ref _g34790_ 1)))
                                   (if (gx#stx-null? _tl1772317795_)
                                       (letrec ((_loop1772417798_
                                                 (lambda (_hd1772217802_
                                                          _slot1772817805_)
                                                   (if (gx#stx-pair?
                                                        _hd1772217802_)
                                                       (let ((_e1772517808_
                                                              (gx#syntax-e
                                                               _hd1772217802_)))
                                                         (let ((_lp-hd1772617812_
                                                                (##car _e1772517808_))
                                                               (_lp-tl1772717815_
                                                                (##cdr _e1772517808_)))
                                                           (_loop1772417798_
                                                            _lp-tl1772717815_
                                                            (cons _lp-hd1772617812_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _slot1772817805_))))
               (let ((_slot1772917818_ (reverse _slot1772817805_)))
                 (if (gx#stx-null? _tl1772017789_)
                     ((lambda (_L17822_ _L17824_)
                        (let ()
                          (cons (gx#datum->syntax '#f 'make-class-type)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _L16872_ '()))
                                      (cons (cons (gx#datum->syntax '#f '@list)
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g1784617851_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1784717854_)
                     (cons _g1784617851_ _g1784717854_))
                   '()
                   _L17824_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'quote)
                                                        (cons (begin
                                                                '#!void
                                                                (foldr (lambda (_g1784817857_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g1784917860_)
                                 (cons _g1784817857_ _g1784917860_))
                               '()
                               _L17822_))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'quote)
                                                              (cons _L16900_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _L16928_
                      (cons (cons (gx#datum->syntax '#f 'quote)
                                  (cons _L16956_ '()))
                            '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      _slot1772917818_
                      _super1771717778_)
                     (_g1770217735_ _g1770317739_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop1772417798_
                                          _target1772117792_
                                          '()))
                                       (_g1770217735_ _g1770317739_)))))
                             (_g1770217735_ _g1770317739_))
                         (_g1770217735_ _g1770317739_))))
                 (_g1770217735_ _g1770317739_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop1771217758_ _target1770917752_ '()))
                                   (_g1770217735_ _g1770317739_)))))
                         (_g1770217735_ _g1770317739_))
                     (_g1770217735_ _g1770317739_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1770217735_
                                                      _g1770317739_)))))
                                         (_g1770117863_
                                          (list _L16686_
                                                (gx#stx-map
                                                 gx#stx-car
                                                 _els16721_)))))))))
                            _g1694216953_))))
                   (_g1694017867_ (gx#stx-getq 'constructor: _L16682_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1691416925_))))
                                            (_g1691217871_
                                             (let ((_$e17875_
                                                    (gx#stx-getq
                                                     'plist:
                                                     _L16682_)))
                                               (if _$e17875_
                                                   _$e17875_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '@list)
                                                         '())))))))
                                      _g1688616897_))))
                             (_g1688417879_
                              (let ((_$e17883_ (gx#stx-getq 'name: _L16682_)))
                                (if _$e17883_ _$e17883_ _L16687_))))))
                       _g1685816869_))))
              (_g1685617887_
               (let ((_$e17891_ (gx#stx-getq 'id: _L16682_)))
                 (if _$e17891_
                     _$e17891_
                     (if (gx#module-context? (gx#current-expander-context))
                         (_module-type-id16596_ _L16687_)
                         (gx#genident _L16687_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1674816816_
                                                _hd1674516806_
                                                _hd1674216796_
                                                _hd1673916786_
                                                _hd1673616776_
                                                _hd1673316766_)
                                               (_g1672416755_ _g1672516759_))))
                                       (_g1672416755_ _g1672516759_))))
                               (_g1672416755_ _g1672516759_))))
                       (_g1672416755_ _g1672516759_))))
               (_g1672416755_ _g1672516759_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1672416755_ _g1672516759_))))
                                       (_g1672416755_ _g1672516759_)))))
                           (_g1672317895_
                            (if _struct?16588_
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
                         (_g1659816625_ _g1659916629_)))
                   _tl1661916679_
                   _hd1661816676_
                   _hd1661516666_
                   _hd1661216656_
                   _hd1660916646_)))
              (_g1659816625_ _g1659916629_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1659816625_ _g1659916629_))))
                                      (_g1659816625_ _g1659916629_))))
                              (_g1659816625_ _g1659916629_))))
                      (_g1659816625_ _g1659916629_)))))
          (_g1659717899_ _stx16586_)))))
  (define |gerbil/core$<MOP>$<MOP:1>[:0:]#defstruct-type|
    (lambda (_stx18199_)
      (|gerbil/core$<MOP>$<MOP:1>[1]#generate-typedef| _stx18199_ '#t)))
  (define |gerbil/core$<MOP>$<MOP:1>[:0:]#defclass-type|
    (lambda (_stx18202_)
      (|gerbil/core$<MOP>$<MOP:1>[1]#generate-typedef| _stx18202_ '#f))))
