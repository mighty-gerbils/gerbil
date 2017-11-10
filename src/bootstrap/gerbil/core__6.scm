(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<MOP>$<MOP:1>[1]#generate-typedef|
    (lambda (_stx13500_ _struct?13502_)
      (letrec ((_wrap13504_
                (lambda (_e-stx14817_)
                  (gx#stx-wrap-source
                   _e-stx14817_
                   (gx#stx-source _stx13500_))))
               (_slotify13506_
                (lambda (_field14751_ _off14753_)
                  (let* ((_g1475514770_
                          (lambda (_g1475614766_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1475614766_)))
                         (_g1475414813_
                          (lambda (_g1475614774_)
                            (if (gx#stx-pair? _g1475614774_)
                                (let ((_e1475914777_
                                       (gx#syntax-e _g1475614774_)))
                                  (let ((_hd1476014781_ (##car _e1475914777_))
                                        (_tl1476114784_ (##cdr _e1475914777_)))
                                    (if (gx#stx-pair? _tl1476114784_)
                                        (let ((_e1476214787_
                                               (gx#syntax-e _tl1476114784_)))
                                          (let ((_hd1476314791_
                                                 (##car _e1476214787_))
                                                (_tl1476414794_
                                                 (##cdr _e1476214787_)))
                                            (if (gx#stx-null? _tl1476414794_)
                                                ((lambda (_L14797_ _L14799_)
                                                   (cons _off14753_
                                                         (cons _L14799_
                                                               (cons _L14797_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1476314791_
                                                 _hd1476014781_)
                                                (_g1475514770_
                                                 _g1475614774_))))
                                        (_g1475514770_ _g1475614774_))))
                                (_g1475514770_ _g1475614774_)))))
                    (_g1475414813_ _field14751_))))
               (_struct-opt?13507_
                (lambda (_key14748_)
                  (memq (gx#stx-e _key14748_)
                        '(fields: id: name: plist: constructor: unchecked:))))
               (_class-opt?13508_
                (lambda (_key14745_)
                  (memq (gx#stx-e _key14745_)
                        '(slots: id: name: plist: constructor: unchecked:))))
               (_module-type-id13509_
                (lambda (_type-t14732_)
                  (let ((_$e14735_
                         (gx#module-context-ns (gx#current-expander-context))))
                    (if _$e14735_
                        ((lambda (_ns14739_)
                           (gx#stx-identifier
                            _type-t14732_
                            _ns14739_
                            '"#"
                            _type-t14732_))
                         _$e14735_)
                        (let ((_mid14742_
                               (gx#expander-context-id
                                (gx#current-expander-context))))
                          (gx#stx-identifier
                           _type-t14732_
                           _mid14742_
                           '"#"
                           _type-t14732_)))))))
        (let* ((_g1351113538_
                (lambda (_g1351213534_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1351213534_)))
               (_g1351014728_
                (lambda (_g1351213542_)
                  (if (gx#stx-pair? _g1351213542_)
                      (let ((_e1351813545_ (gx#syntax-e _g1351213542_)))
                        (let ((_hd1351913549_ (##car _e1351813545_))
                              (_tl1352013552_ (##cdr _e1351813545_)))
                          (if (gx#stx-pair? _tl1352013552_)
                              (let ((_e1352113555_
                                     (gx#syntax-e _tl1352013552_)))
                                (let ((_hd1352213559_ (##car _e1352113555_))
                                      (_tl1352313562_ (##cdr _e1352113555_)))
                                  (if (gx#stx-pair? _tl1352313562_)
                                      (let ((_e1352413565_
                                             (gx#syntax-e _tl1352313562_)))
                                        (let ((_hd1352513569_
                                               (##car _e1352413565_))
                                              (_tl1352613572_
                                               (##cdr _e1352413565_)))
                                          (if (gx#stx-pair? _tl1352613572_)
                                              (let ((_e1352713575_
                                                     (gx#syntax-e
                                                      _tl1352613572_)))
                                                (let ((_hd1352813579_
                                                       (##car _e1352713575_))
                                                      (_tl1352913582_
                                                       (##cdr _e1352713575_)))
                                                  (if (gx#stx-pair?
                                                       _tl1352913582_)
                                                      (let ((_e1353013585_
                                                             (gx#syntax-e
                                                              _tl1352913582_)))
                                                        (let ((_hd1353113589_
                                                               (##car _e1353013585_))
                                                              (_tl1353213592_
                                                               (##cdr _e1353013585_)))
                                                          ((lambda (_L13595_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L13597_
                            _L13598_
                            _L13599_
                            _L13600_)
                     (if (if (gx#identifier? _L13600_)
                             (if (let ((_$e13626_ (gx#identifier? _L13598_)))
                                   (if _$e13626_
                                       _$e13626_
                                       (gx#stx-false? _L13598_)))
                                 (if (gx#identifier? _L13597_)
                                     (gx#stx-plist?
                                      _L13595_
                                      (if _struct?13502_
                                          _struct-opt?13507_
                                          _class-opt?13508_))
                                     '#f)
                                 '#f)
                             '#f)
                         (let* ((_els13634_
                                 (let ((_$e13630_
                                        (gx#stx-getq
                                         (if _struct?13502_ 'fields: 'slots:)
                                         _L13595_)))
                                   (if _$e13630_ _$e13630_ '())))
                                (_g1363713668_
                                 (lambda (_g1363813664_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1363813664_)))
                                (_g1363614724_
                                 (lambda (_g1363813672_)
                                   (if (gx#stx-pair? _g1363813672_)
                                       (let ((_e1364513675_
                                              (gx#syntax-e _g1363813672_)))
                                         (let ((_hd1364613679_
                                                (##car _e1364513675_))
                                               (_tl1364713682_
                                                (##cdr _e1364513675_)))
                                           (if (gx#stx-pair? _tl1364713682_)
                                               (let ((_e1364813685_
                                                      (gx#syntax-e
                                                       _tl1364713682_)))
                                                 (let ((_hd1364913689_
                                                        (##car _e1364813685_))
                                                       (_tl1365013692_
                                                        (##cdr _e1364813685_)))
                                                   (if (gx#stx-pair?
                                                        _tl1365013692_)
                                                       (let ((_e1365113695_
                                                              (gx#syntax-e
                                                               _tl1365013692_)))
                                                         (let ((_hd1365213699_
                                                                (##car _e1365113695_))
                                                               (_tl1365313702_
                                                                (##cdr _e1365113695_)))
                                                           (if (gx#stx-pair?
                                                                _tl1365313702_)
                                                               (let ((_e1365413705_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl1365313702_)))
                         (let ((_hd1365513709_ (##car _e1365413705_))
                               (_tl1365613712_ (##cdr _e1365413705_)))
                           (if (gx#stx-pair? _tl1365613712_)
                               (let ((_e1365713715_
                                      (gx#syntax-e _tl1365613712_)))
                                 (let ((_hd1365813719_ (##car _e1365713715_))
                                       (_tl1365913722_ (##cdr _e1365713715_)))
                                   (if (gx#stx-pair? _tl1365913722_)
                                       (let ((_e1366013725_
                                              (gx#syntax-e _tl1365913722_)))
                                         (let ((_hd1366113729_
                                                (##car _e1366013725_))
                                               (_tl1366213732_
                                                (##cdr _e1366013725_)))
                                           (if (gx#stx-null? _tl1366213732_)
                                               ((lambda (_L13735_
                                                         _L13737_
                                                         _L13738_
                                                         _L13739_
                                                         _L13740_
                                                         _L13741_)
                                                  (let ()
                                                    (let* ((_g1377013778_
                                                            (lambda (_g1377113774_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g1377113774_)))
                                                           (_g1376914716_
                                                            (lambda (_g1377113782_)
                                                              ((lambda (_L13785_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g1379813806_
                                   (lambda (_g1379913802_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1379913802_)))
                                  (_g1379714708_
                                   (lambda (_g1379913810_)
                                     ((lambda (_L13813_)
                                        (let ()
                                          (let* ((_g1382613834_
                                                  (lambda (_g1382713830_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1382713830_)))
                                                 (_g1382514700_
                                                  (lambda (_g1382713838_)
                                                    ((lambda (_L13841_)
                                                       (let ()
                                                         (let* ((_g1385413862_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1385513858_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1385513858_)))
                        (_g1385314696_
                         (lambda (_g1385513866_)
                           ((lambda (_L13869_)
                              (let ()
                                (let* ((_g1388213890_
                                        (lambda (_g1388313886_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g1388313886_)))
                                       (_g1388114496_
                                        (lambda (_g1388313894_)
                                          ((lambda (_L13897_)
                                             (let ()
                                               (let* ((_g1391013918_
                                                       (lambda (_g1391113914_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1391113914_)))
                                                      (_g1390914492_
                                                       (lambda (_g1391113922_)
                                                         ((lambda (_L13925_)
                                                            (let ()
                                                              (let* ((_g1393813946_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g1393913942_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1393913942_)))
                             (_g1393714488_
                              (lambda (_g1393913950_)
                                ((lambda (_L13953_)
                                   (let ()
                                     (let* ((_g1396613974_
                                             (lambda (_g1396713970_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1396713970_)))
                                            (_g1396514484_
                                             (lambda (_g1396713978_)
                                               ((lambda (_L13981_)
                                                  (let ()
                                                    (let* ((_attrs13994_
                                                            (if _struct?13502_
                                                                (gx#stx-map
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _slotify13506_
                         _els13634_
                         (iota (gx#stx-length _els13634_)))
                        _els13634_))
                   (_g1399714023_
                    (lambda (_g1399814019_)
                      (gx#raise-syntax-error '#f '"Bad syntax" _g1399814019_)))
                   (_g1399614396_
                    (lambda (_g1399814027_)
                      (if (gx#stx-pair/null? _g1399814027_)
                          (if (fx>= (gx#stx-length _g1399814027_) '0)
                              (let ((_g30709_
                                     (gx#syntax-split-splice
                                      _g1399814027_
                                      '0)))
                                (begin
                                  (let ((_g30710_ (values-count _g30709_)))
                                    (if (not (fx= _g30710_ 2))
                                        (error "Context expects 2 values"
                                               _g30710_)))
                                  (let ((_target1400114030_
                                         (values-ref _g30709_ 0))
                                        (_tl1400314033_
                                         (values-ref _g30709_ 1)))
                                    (if (gx#stx-null? _tl1400314033_)
                                        (letrec ((_loop1400414036_
                                                  (lambda (_hd1400214040_
                                                           _def-setf1400814043_
                                                           _def-getf1400914045_)
                                                    (if (gx#stx-pair?
                                                         _hd1400214040_)
                                                        (let ((_e1400514048_
                                                               (gx#syntax-e
                                                                _hd1400214040_)))
                                                          (let ((_lp-hd1400614052_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1400514048_))
                        (_lp-tl1400714055_ (##cdr _e1400514048_)))
                    (if (gx#stx-pair? _lp-hd1400614052_)
                        (let ((_e1401214058_ (gx#syntax-e _lp-hd1400614052_)))
                          (let ((_hd1401314062_ (##car _e1401214058_))
                                (_tl1401414065_ (##cdr _e1401214058_)))
                            (if (gx#stx-pair? _tl1401414065_)
                                (let ((_e1401514068_
                                       (gx#syntax-e _tl1401414065_)))
                                  (let ((_hd1401614072_ (##car _e1401514068_))
                                        (_tl1401714075_ (##cdr _e1401514068_)))
                                    (if (gx#stx-null? _tl1401714075_)
                                        (_loop1400414036_
                                         _lp-tl1400714055_
                                         (cons _hd1401614072_
                                               _def-setf1400814043_)
                                         (cons _hd1401314062_
                                               _def-getf1400914045_))
                                        (_g1399714023_ _g1399814027_))))
                                (_g1399714023_ _g1399814027_))))
                        (_g1399714023_ _g1399814027_))))
                (let ((_def-setf1401014078_ (reverse _def-setf1400814043_))
                      (_def-getf1401114081_ (reverse _def-getf1400914045_)))
                  ((lambda (_L14084_ _L14086_)
                     (let ()
                       (let* ((_g1410414130_
                               (lambda (_g1410514126_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1410514126_)))
                              (_g1410314244_
                               (lambda (_g1410514134_)
                                 (if (gx#stx-pair/null? _g1410514134_)
                                     (if (fx>= (gx#stx-length _g1410514134_)
                                               '0)
                                         (let ((_g30711_
                                                (gx#syntax-split-splice
                                                 _g1410514134_
                                                 '0)))
                                           (begin
                                             (let ((_g30712_
                                                    (values-count _g30711_)))
                                               (if (not (fx= _g30712_ 2))
                                                   (error "Context expects 2 values"
                                                          _g30712_)))
                                             (let ((_target1410814137_
                                                    (values-ref _g30711_ 0))
                                                   (_tl1411014140_
                                                    (values-ref _g30711_ 1)))
                                               (if (gx#stx-null?
                                                    _tl1411014140_)
                                                   (letrec ((_loop1411114143_
                                                             (lambda (_hd1410914147_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _def-usetf1411514150_
                              _def-ugetf1411614152_)
                       (if (gx#stx-pair? _hd1410914147_)
                           (let ((_e1411214155_ (gx#syntax-e _hd1410914147_)))
                             (let ((_lp-hd1411314159_ (##car _e1411214155_))
                                   (_lp-tl1411414162_ (##cdr _e1411214155_)))
                               (if (gx#stx-pair? _lp-hd1411314159_)
                                   (let ((_e1411914165_
                                          (gx#syntax-e _lp-hd1411314159_)))
                                     (let ((_hd1412014169_
                                            (##car _e1411914165_))
                                           (_tl1412114172_
                                            (##cdr _e1411914165_)))
                                       (if (gx#stx-pair? _tl1412114172_)
                                           (let ((_e1412214175_
                                                  (gx#syntax-e
                                                   _tl1412114172_)))
                                             (let ((_hd1412314179_
                                                    (##car _e1412214175_))
                                                   (_tl1412414182_
                                                    (##cdr _e1412214175_)))
                                               (if (gx#stx-null?
                                                    _tl1412414182_)
                                                   (_loop1411114143_
                                                    _lp-tl1411414162_
                                                    (cons _hd1412314179_
                                                          _def-usetf1411514150_)
                                                    (cons _hd1412014169_
                                                          _def-ugetf1411614152_))
                                                   (_g1410414130_
                                                    _g1410514134_))))
                                           (_g1410414130_ _g1410514134_))))
                                   (_g1410414130_ _g1410514134_))))
                           (let ((_def-usetf1411714185_
                                  (reverse _def-usetf1411514150_))
                                 (_def-ugetf1411814188_
                                  (reverse _def-ugetf1411614152_)))
                             ((lambda (_L14191_ _L14193_)
                                (let ()
                                  (let ()
                                    (_wrap13504_
                                     (cons (gx#datum->syntax '#f 'begin)
                                           (cons _L13925_
                                                 (cons _L13981_
                                                       (cons _L13953_
                                                             (begin
                                                               '#!void
                                                               (foldr (lambda (_g1421114220_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1421214223_)
                                (cons _g1421114220_ _g1421214223_))
                              (begin
                                '#!void
                                (foldr (lambda (_g1421314226_ _g1421414229_)
                                         (cons _g1421314226_ _g1421414229_))
                                       (begin
                                         '#!void
                                         (foldr (lambda (_g1421514232_
                                                         _g1421614235_)
                                                  (cons _g1421514232_
                                                        _g1421614235_))
                                                (begin
                                                  '#!void
                                                  (foldr (lambda (_g1421714238_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1421814241_)
                   (cons _g1421714238_ _g1421814241_))
                 '()
                 _L14191_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _L14193_))
                                       _L14084_))
                              _L14086_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              _def-usetf1411714185_
                              _def-ugetf1411814188_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1411114143_
                                                      _target1410814137_
                                                      '()
                                                      '()))
                                                   (_g1410414130_
                                                    _g1410514134_)))))
                                         (_g1410414130_ _g1410514134_))
                                     (_g1410414130_ _g1410514134_)))))
                         (_g1410314244_
                          (if (gx#stx-e (gx#stx-getq 'unchecked: _L13595_))
                              (gx#stx-map
                               (lambda (_ref14248_)
                                 (let* ((_g1425114270_
                                         (lambda (_g1425214266_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g1425214266_)))
                                        (_g1425014392_
                                         (lambda (_g1425214274_)
                                           (if (gx#stx-pair? _g1425214274_)
                                               (let ((_e1425614277_
                                                      (gx#syntax-e
                                                       _g1425214274_)))
                                                 (let ((_hd1425714281_
                                                        (##car _e1425614277_))
                                                       (_tl1425814284_
                                                        (##cdr _e1425614277_)))
                                                   (if (gx#stx-pair?
                                                        _tl1425814284_)
                                                       (let ((_e1425914287_
                                                              (gx#syntax-e
                                                               _tl1425814284_)))
                                                         (let ((_hd1426014291_
                                                                (##car _e1425914287_))
                                                               (_tl1426114294_
                                                                (##cdr _e1425914287_)))
                                                           (if (gx#stx-pair?
                                                                _tl1426114294_)
                                                               (let ((_e1426214297_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl1426114294_)))
                         (let ((_hd1426314301_ (##car _e1426214297_))
                               (_tl1426414304_ (##cdr _e1426214297_)))
                           (if (gx#stx-null? _tl1426414304_)
                               ((lambda (_L14307_ _L14309_ _L14310_)
                                  (let* ((_g1432814343_
                                          (lambda (_g1432914339_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g1432914339_)))
                                         (_g1432714388_
                                          (lambda (_g1432914347_)
                                            (if (gx#stx-pair? _g1432914347_)
                                                (let ((_e1433214350_
                                                       (gx#syntax-e
                                                        _g1432914347_)))
                                                  (let ((_hd1433314354_
                                                         (##car _e1433214350_))
                                                        (_tl1433414357_
                                                         (##cdr _e1433214350_)))
                                                    (if (gx#stx-pair?
                                                         _tl1433414357_)
                                                        (let ((_e1433514360_
                                                               (gx#syntax-e
                                                                _tl1433414357_)))
                                                          (let ((_hd1433614364_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1433514360_))
                        (_tl1433714367_ (##cdr _e1433514360_)))
                    (if (gx#stx-null? _tl1433714367_)
                        ((lambda (_L14370_ _L14372_)
                           (let ()
                             (cons (_wrap13504_
                                    (cons (gx#datum->syntax '#f 'def)
                                          (cons _L14372_
                                                (cons (cons _L13737_
                                                            (cons _L13600_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _L14310_ '()))
                                '())))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (cons (_wrap13504_
                                          (cons (gx#datum->syntax '#f 'def)
                                                (cons _L14370_
                                                      (cons (cons _L13735_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L13600_
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _L14310_ '()))
                                      '())))
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                         _hd1433614364_
                         _hd1433314354_)
                        (_g1432814343_ _g1432914347_))))
                (_g1432814343_ _g1432914347_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1432814343_
                                                 _g1432914347_)))))
                                    (_g1432714388_
                                     (list (gx#stx-identifier
                                            _L14309_
                                            '"&"
                                            _L14309_)
                                           (gx#stx-identifier
                                            _L14307_
                                            '"&"
                                            _L14307_)))))
                                _hd1426314301_
                                _hd1426014291_
                                _hd1425714281_)
                               (_g1425114270_ _g1425214274_))))
                       (_g1425114270_ _g1425214274_))))
               (_g1425114270_ _g1425214274_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1425114270_
                                                _g1425214274_)))))
                                   (_g1425014392_ _ref14248_)))
                               _attrs13994_)
                              '())))))
                   _def-setf1401014078_
                   _def-getf1401114081_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop1400414036_
                                           _target1400114030_
                                           '()
                                           '()))
                                        (_g1399714023_ _g1399814027_)))))
                              (_g1399714023_ _g1399814027_))
                          (_g1399714023_ _g1399814027_)))))
              (_g1399614396_
               (gx#stx-map
                (lambda (_ref14400_)
                  (let* ((_g1440314422_
                          (lambda (_g1440414418_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1440414418_)))
                         (_g1440214480_
                          (lambda (_g1440414426_)
                            (if (gx#stx-pair? _g1440414426_)
                                (let ((_e1440814429_
                                       (gx#syntax-e _g1440414426_)))
                                  (let ((_hd1440914433_ (##car _e1440814429_))
                                        (_tl1441014436_ (##cdr _e1440814429_)))
                                    (if (gx#stx-pair? _tl1441014436_)
                                        (let ((_e1441114439_
                                               (gx#syntax-e _tl1441014436_)))
                                          (let ((_hd1441214443_
                                                 (##car _e1441114439_))
                                                (_tl1441314446_
                                                 (##cdr _e1441114439_)))
                                            (if (gx#stx-pair? _tl1441314446_)
                                                (let ((_e1441414449_
                                                       (gx#syntax-e
                                                        _tl1441314446_)))
                                                  (let ((_hd1441514453_
                                                         (##car _e1441414449_))
                                                        (_tl1441614456_
                                                         (##cdr _e1441414449_)))
                                                    (if (gx#stx-null?
                                                         _tl1441614456_)
                                                        ((lambda (_L14459_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L14461_
                          _L14462_)
                   (cons (_wrap13504_
                          (cons (gx#datum->syntax '#f 'def)
                                (cons _L14461_
                                      (cons (cons _L13739_
                                                  (cons _L13600_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons _L14462_ '()))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '()))))
                         (cons (_wrap13504_
                                (cons (gx#datum->syntax '#f 'def)
                                      (cons _L14459_
                                            (cons (cons _L13738_
                                                        (cons _L13600_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _L14462_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))
                               '())))
                 _hd1441514453_
                 _hd1441214443_
                 _hd1440914433_)
                (_g1440314422_ _g1440414426_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1440314422_
                                                 _g1440414426_))))
                                        (_g1440314422_ _g1440414426_))))
                                (_g1440314422_ _g1440414426_)))))
                    (_g1440214480_ _ref14400_)))
                _attrs13994_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1396713978_))))
                                       (_g1396514484_
                                        (_wrap13504_
                                         (cons (gx#datum->syntax '#f 'def)
                                               (cons _L13597_
                                                     (cons (cons _L13740_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L13600_ '()))
                   '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _g1393913950_))))
                        (_g1393714488_
                         (if (gx#stx-false? _L13598_)
                             (cons (gx#datum->syntax '#f 'begin) '())
                             (_wrap13504_
                              (cons (gx#datum->syntax '#f 'def)
                                    (cons (cons _L13598_
                                                (gx#datum->syntax '#f '$args))
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'apply)
                                                      (cons _L13741_
                                                            (cons _L13600_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f '$args) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))))))))
                  _g1391113922_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1390914492_
                                                  (_wrap13504_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'def)
                                                         (cons _L13600_
                                                               (cons _L13897_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _g1388313894_))))
                                  (_g1388114496_
                                   (if _struct?13502_
                                       (let* ((_g1450014508_
                                               (lambda (_g1450114504_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1450114504_)))
                                              (_g1449914527_
                                               (lambda (_g1450114512_)
                                                 ((lambda (_L14515_)
                                                    (let ()
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'make-struct-type)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _L13785_ '()))
                          (cons _L13599_
                                (cons _L14515_
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _L13813_ '()))
                                            (cons _L13841_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'quote)
                                                              (cons _L13869_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1450114512_))))
                                         (_g1449914527_
                                          (gx#stx-length _els13634_)))
                                       (let* ((_g1453114564_
                                               (lambda (_g1453214560_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1453214560_)))
                                              (_g1453014692_
                                               (lambda (_g1453214568_)
                                                 (if (gx#stx-pair?
                                                      _g1453214568_)
                                                     (let ((_e1453514571_
                                                            (gx#syntax-e
                                                             _g1453214568_)))
                                                       (let ((_hd1453614575_
                                                              (##car _e1453514571_))
                                                             (_tl1453714578_
                                                              (##cdr _e1453514571_)))
                                                         (if (gx#stx-pair/null?
                                                              _hd1453614575_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _hd1453614575_)
                               '0)
                         (let ((_g30713_
                                (gx#syntax-split-splice _hd1453614575_ '0)))
                           (begin
                             (let ((_g30714_ (values-count _g30713_)))
                               (if (not (fx= _g30714_ 2))
                                   (error "Context expects 2 values"
                                          _g30714_)))
                             (let ((_target1453814581_ (values-ref _g30713_ 0))
                                   (_tl1454014584_ (values-ref _g30713_ 1)))
                               (if (gx#stx-null? _tl1454014584_)
                                   (letrec ((_loop1454114587_
                                             (lambda (_hd1453914591_
                                                      _super1454514594_)
                                               (if (gx#stx-pair?
                                                    _hd1453914591_)
                                                   (let ((_e1454214597_
                                                          (gx#syntax-e
                                                           _hd1453914591_)))
                                                     (let ((_lp-hd1454314601_
                                                            (##car _e1454214597_))
                                                           (_lp-tl1454414604_
                                                            (##cdr _e1454214597_)))
                                                       (_loop1454114587_
                                                        _lp-tl1454414604_
                                                        (cons _lp-hd1454314601_
                                                              _super1454514594_))))
                                                   (let ((_super1454614607_
                                                          (reverse _super1454514594_)))
                                                     (if (gx#stx-pair?
                                                          _tl1453714578_)
                                                         (let ((_e1454714611_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1453714578_)))
                   (let ((_hd1454814615_ (##car _e1454714611_))
                         (_tl1454914618_ (##cdr _e1454714611_)))
                     (if (gx#stx-pair/null? _hd1454814615_)
                         (if (fx>= (gx#stx-length _hd1454814615_) '0)
                             (let ((_g30715_
                                    (gx#syntax-split-splice
                                     _hd1454814615_
                                     '0)))
                               (begin
                                 (let ((_g30716_ (values-count _g30715_)))
                                   (if (not (fx= _g30716_ 2))
                                       (error "Context expects 2 values"
                                              _g30716_)))
                                 (let ((_target1455014621_
                                        (values-ref _g30715_ 0))
                                       (_tl1455214624_
                                        (values-ref _g30715_ 1)))
                                   (if (gx#stx-null? _tl1455214624_)
                                       (letrec ((_loop1455314627_
                                                 (lambda (_hd1455114631_
                                                          _slot1455714634_)
                                                   (if (gx#stx-pair?
                                                        _hd1455114631_)
                                                       (let ((_e1455414637_
                                                              (gx#syntax-e
                                                               _hd1455114631_)))
                                                         (let ((_lp-hd1455514641_
                                                                (##car _e1455414637_))
                                                               (_lp-tl1455614644_
                                                                (##cdr _e1455414637_)))
                                                           (_loop1455314627_
                                                            _lp-tl1455614644_
                                                            (cons _lp-hd1455514641_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _slot1455714634_))))
               (let ((_slot1455814647_ (reverse _slot1455714634_)))
                 (if (gx#stx-null? _tl1454914618_)
                     ((lambda (_L14651_ _L14653_)
                        (let ()
                          (cons (gx#datum->syntax '#f 'make-class-type)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _L13785_ '()))
                                      (cons (cons (gx#datum->syntax '#f '@list)
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g1467514680_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1467614683_)
                     (cons _g1467514680_ _g1467614683_))
                   '()
                   _L14653_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'quote)
                                                        (cons (begin
                                                                '#!void
                                                                (foldr (lambda (_g1467714686_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g1467814689_)
                                 (cons _g1467714686_ _g1467814689_))
                               '()
                               _L14651_))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'quote)
                                                              (cons _L13813_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _L13841_
                      (cons (cons (gx#datum->syntax '#f 'quote)
                                  (cons _L13869_ '()))
                            '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      _slot1455814647_
                      _super1454614607_)
                     (_g1453114564_ _g1453214568_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop1455314627_
                                          _target1455014621_
                                          '()))
                                       (_g1453114564_ _g1453214568_)))))
                             (_g1453114564_ _g1453214568_))
                         (_g1453114564_ _g1453214568_))))
                 (_g1453114564_ _g1453214568_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop1454114587_ _target1453814581_ '()))
                                   (_g1453114564_ _g1453214568_)))))
                         (_g1453114564_ _g1453214568_))
                     (_g1453114564_ _g1453214568_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1453114564_
                                                      _g1453214568_)))))
                                         (_g1453014692_
                                          (list _L13599_
                                                (gx#stx-map
                                                 gx#stx-car
                                                 _els13634_)))))))))
                            _g1385513866_))))
                   (_g1385314696_ (gx#stx-getq 'constructor: _L13595_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1382713838_))))
                                            (_g1382514700_
                                             (let ((_$e14704_
                                                    (gx#stx-getq
                                                     'plist:
                                                     _L13595_)))
                                               (if _$e14704_
                                                   _$e14704_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '@list)
                                                         '())))))))
                                      _g1379913810_))))
                             (_g1379714708_
                              (let ((_$e14712_ (gx#stx-getq 'name: _L13595_)))
                                (if _$e14712_ _$e14712_ _L13600_))))))
                       _g1377113782_))))
              (_g1376914716_
               (let ((_$e14720_ (gx#stx-getq 'id: _L13595_)))
                 (if _$e14720_
                     _$e14720_
                     (if (gx#module-context? (gx#current-expander-context))
                         (_module-type-id13509_ _L13600_)
                         (gx#genident _L13600_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1366113729_
                                                _hd1365813719_
                                                _hd1365513709_
                                                _hd1365213699_
                                                _hd1364913689_
                                                _hd1364613679_)
                                               (_g1363713668_ _g1363813672_))))
                                       (_g1363713668_ _g1363813672_))))
                               (_g1363713668_ _g1363813672_))))
                       (_g1363713668_ _g1363813672_))))
               (_g1363713668_ _g1363813672_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1363713668_ _g1363813672_))))
                                       (_g1363713668_ _g1363813672_)))))
                           (_g1363614724_
                            (if _struct?13502_
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
                         (_g1351113538_ _g1351213542_)))
                   _tl1353213592_
                   _hd1353113589_
                   _hd1352813579_
                   _hd1352513569_
                   _hd1352213559_)))
              (_g1351113538_ _g1351213542_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1351113538_ _g1351213542_))))
                                      (_g1351113538_ _g1351213542_))))
                              (_g1351113538_ _g1351213542_))))
                      (_g1351113538_ _g1351213542_)))))
          (_g1351014728_ _stx13500_)))))
  (define |gerbil/core$<MOP>$<MOP:1>[:0:]#defstruct-type|
    (lambda (_stx14824_)
      (|gerbil/core$<MOP>$<MOP:1>[1]#generate-typedef| _stx14824_ '#t)))
  (define |gerbil/core$<MOP>$<MOP:1>[:0:]#defclass-type|
    (lambda (_stx14827_)
      (|gerbil/core$<MOP>$<MOP:1>[1]#generate-typedef| _stx14827_ '#f))))
