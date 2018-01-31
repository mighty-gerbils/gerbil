(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<MOP>$<MOP:1>[1]#generate-typedef|
    (lambda (_stx13503_ _struct?13505_)
      (letrec ((_wrap13507_
                (lambda (_e-stx14820_)
                  (gx#stx-wrap-source
                   _e-stx14820_
                   (gx#stx-source _stx13503_))))
               (_slotify13509_
                (lambda (_field14754_ _off14756_)
                  (let* ((_g1475814773_
                          (lambda (_g1475914769_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1475914769_)))
                         (_g1475714816_
                          (lambda (_g1475914777_)
                            (if (gx#stx-pair? _g1475914777_)
                                (let ((_e1476214780_
                                       (gx#syntax-e _g1475914777_)))
                                  (let ((_hd1476314784_ (##car _e1476214780_))
                                        (_tl1476414787_ (##cdr _e1476214780_)))
                                    (if (gx#stx-pair? _tl1476414787_)
                                        (let ((_e1476514790_
                                               (gx#syntax-e _tl1476414787_)))
                                          (let ((_hd1476614794_
                                                 (##car _e1476514790_))
                                                (_tl1476714797_
                                                 (##cdr _e1476514790_)))
                                            (if (gx#stx-null? _tl1476714797_)
                                                ((lambda (_L14800_ _L14802_)
                                                   (cons _off14756_
                                                         (cons _L14802_
                                                               (cons _L14800_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1476614794_
                                                 _hd1476314784_)
                                                (_g1475814773_
                                                 _g1475914777_))))
                                        (_g1475814773_ _g1475914777_))))
                                (_g1475814773_ _g1475914777_)))))
                    (_g1475714816_ _field14754_))))
               (_struct-opt?13510_
                (lambda (_key14751_)
                  (memq (gx#stx-e _key14751_)
                        '(fields: id: name: plist: constructor: unchecked:))))
               (_class-opt?13511_
                (lambda (_key14748_)
                  (memq (gx#stx-e _key14748_)
                        '(slots: id: name: plist: constructor: unchecked:))))
               (_module-type-id13512_
                (lambda (_type-t14735_)
                  (let ((_$e14738_
                         (gx#module-context-ns (gx#current-expander-context))))
                    (if _$e14738_
                        ((lambda (_ns14742_)
                           (gx#stx-identifier
                            _type-t14735_
                            _ns14742_
                            '"#"
                            _type-t14735_))
                         _$e14738_)
                        (let ((_mid14745_
                               (gx#expander-context-id
                                (gx#current-expander-context))))
                          (gx#stx-identifier
                           _type-t14735_
                           _mid14745_
                           '"#"
                           _type-t14735_)))))))
        (let* ((_g1351413541_
                (lambda (_g1351513537_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1351513537_)))
               (_g1351314731_
                (lambda (_g1351513545_)
                  (if (gx#stx-pair? _g1351513545_)
                      (let ((_e1352113548_ (gx#syntax-e _g1351513545_)))
                        (let ((_hd1352213552_ (##car _e1352113548_))
                              (_tl1352313555_ (##cdr _e1352113548_)))
                          (if (gx#stx-pair? _tl1352313555_)
                              (let ((_e1352413558_
                                     (gx#syntax-e _tl1352313555_)))
                                (let ((_hd1352513562_ (##car _e1352413558_))
                                      (_tl1352613565_ (##cdr _e1352413558_)))
                                  (if (gx#stx-pair? _tl1352613565_)
                                      (let ((_e1352713568_
                                             (gx#syntax-e _tl1352613565_)))
                                        (let ((_hd1352813572_
                                               (##car _e1352713568_))
                                              (_tl1352913575_
                                               (##cdr _e1352713568_)))
                                          (if (gx#stx-pair? _tl1352913575_)
                                              (let ((_e1353013578_
                                                     (gx#syntax-e
                                                      _tl1352913575_)))
                                                (let ((_hd1353113582_
                                                       (##car _e1353013578_))
                                                      (_tl1353213585_
                                                       (##cdr _e1353013578_)))
                                                  (if (gx#stx-pair?
                                                       _tl1353213585_)
                                                      (let ((_e1353313588_
                                                             (gx#syntax-e
                                                              _tl1353213585_)))
                                                        (let ((_hd1353413592_
                                                               (##car _e1353313588_))
                                                              (_tl1353513595_
                                                               (##cdr _e1353313588_)))
                                                          ((lambda (_L13598_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L13600_
                            _L13601_
                            _L13602_
                            _L13603_)
                     (if (if (gx#identifier? _L13603_)
                             (if (let ((_$e13629_ (gx#identifier? _L13601_)))
                                   (if _$e13629_
                                       _$e13629_
                                       (gx#stx-false? _L13601_)))
                                 (if (gx#identifier? _L13600_)
                                     (gx#stx-plist?
                                      _L13598_
                                      (if _struct?13505_
                                          _struct-opt?13510_
                                          _class-opt?13511_))
                                     '#f)
                                 '#f)
                             '#f)
                         (let* ((_els13637_
                                 (let ((_$e13633_
                                        (gx#stx-getq
                                         (if _struct?13505_ 'fields: 'slots:)
                                         _L13598_)))
                                   (if _$e13633_ _$e13633_ '())))
                                (_g1364013671_
                                 (lambda (_g1364113667_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1364113667_)))
                                (_g1363914727_
                                 (lambda (_g1364113675_)
                                   (if (gx#stx-pair? _g1364113675_)
                                       (let ((_e1364813678_
                                              (gx#syntax-e _g1364113675_)))
                                         (let ((_hd1364913682_
                                                (##car _e1364813678_))
                                               (_tl1365013685_
                                                (##cdr _e1364813678_)))
                                           (if (gx#stx-pair? _tl1365013685_)
                                               (let ((_e1365113688_
                                                      (gx#syntax-e
                                                       _tl1365013685_)))
                                                 (let ((_hd1365213692_
                                                        (##car _e1365113688_))
                                                       (_tl1365313695_
                                                        (##cdr _e1365113688_)))
                                                   (if (gx#stx-pair?
                                                        _tl1365313695_)
                                                       (let ((_e1365413698_
                                                              (gx#syntax-e
                                                               _tl1365313695_)))
                                                         (let ((_hd1365513702_
                                                                (##car _e1365413698_))
                                                               (_tl1365613705_
                                                                (##cdr _e1365413698_)))
                                                           (if (gx#stx-pair?
                                                                _tl1365613705_)
                                                               (let ((_e1365713708_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl1365613705_)))
                         (let ((_hd1365813712_ (##car _e1365713708_))
                               (_tl1365913715_ (##cdr _e1365713708_)))
                           (if (gx#stx-pair? _tl1365913715_)
                               (let ((_e1366013718_
                                      (gx#syntax-e _tl1365913715_)))
                                 (let ((_hd1366113722_ (##car _e1366013718_))
                                       (_tl1366213725_ (##cdr _e1366013718_)))
                                   (if (gx#stx-pair? _tl1366213725_)
                                       (let ((_e1366313728_
                                              (gx#syntax-e _tl1366213725_)))
                                         (let ((_hd1366413732_
                                                (##car _e1366313728_))
                                               (_tl1366513735_
                                                (##cdr _e1366313728_)))
                                           (if (gx#stx-null? _tl1366513735_)
                                               ((lambda (_L13738_
                                                         _L13740_
                                                         _L13741_
                                                         _L13742_
                                                         _L13743_
                                                         _L13744_)
                                                  (let ()
                                                    (let* ((_g1377313781_
                                                            (lambda (_g1377413777_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g1377413777_)))
                                                           (_g1377214719_
                                                            (lambda (_g1377413785_)
                                                              ((lambda (_L13788_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g1380113809_
                                   (lambda (_g1380213805_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1380213805_)))
                                  (_g1380014711_
                                   (lambda (_g1380213813_)
                                     ((lambda (_L13816_)
                                        (let ()
                                          (let* ((_g1382913837_
                                                  (lambda (_g1383013833_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1383013833_)))
                                                 (_g1382814703_
                                                  (lambda (_g1383013841_)
                                                    ((lambda (_L13844_)
                                                       (let ()
                                                         (let* ((_g1385713865_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1385813861_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1385813861_)))
                        (_g1385614699_
                         (lambda (_g1385813869_)
                           ((lambda (_L13872_)
                              (let ()
                                (let* ((_g1388513893_
                                        (lambda (_g1388613889_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g1388613889_)))
                                       (_g1388414499_
                                        (lambda (_g1388613897_)
                                          ((lambda (_L13900_)
                                             (let ()
                                               (let* ((_g1391313921_
                                                       (lambda (_g1391413917_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1391413917_)))
                                                      (_g1391214495_
                                                       (lambda (_g1391413925_)
                                                         ((lambda (_L13928_)
                                                            (let ()
                                                              (let* ((_g1394113949_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g1394213945_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1394213945_)))
                             (_g1394014491_
                              (lambda (_g1394213953_)
                                ((lambda (_L13956_)
                                   (let ()
                                     (let* ((_g1396913977_
                                             (lambda (_g1397013973_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1397013973_)))
                                            (_g1396814487_
                                             (lambda (_g1397013981_)
                                               ((lambda (_L13984_)
                                                  (let ()
                                                    (let* ((_attrs13997_
                                                            (if _struct?13505_
                                                                (gx#stx-map
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _slotify13509_
                         _els13637_
                         (iota (gx#stx-length _els13637_)))
                        _els13637_))
                   (_g1400014026_
                    (lambda (_g1400114022_)
                      (gx#raise-syntax-error '#f '"Bad syntax" _g1400114022_)))
                   (_g1399914399_
                    (lambda (_g1400114030_)
                      (if (gx#stx-pair/null? _g1400114030_)
                          (if (fx>= (gx#stx-length _g1400114030_) '0)
                              (let ((_g31346_
                                     (gx#syntax-split-splice
                                      _g1400114030_
                                      '0)))
                                (begin
                                  (let ((_g31347_ (values-count _g31346_)))
                                    (if (not (fx= _g31347_ 2))
                                        (error "Context expects 2 values"
                                               _g31347_)))
                                  (let ((_target1400414033_
                                         (values-ref _g31346_ 0))
                                        (_tl1400614036_
                                         (values-ref _g31346_ 1)))
                                    (if (gx#stx-null? _tl1400614036_)
                                        (letrec ((_loop1400714039_
                                                  (lambda (_hd1400514043_
                                                           _def-setf1401114046_
                                                           _def-getf1401214048_)
                                                    (if (gx#stx-pair?
                                                         _hd1400514043_)
                                                        (let ((_e1400814051_
                                                               (gx#syntax-e
                                                                _hd1400514043_)))
                                                          (let ((_lp-hd1400914055_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1400814051_))
                        (_lp-tl1401014058_ (##cdr _e1400814051_)))
                    (if (gx#stx-pair? _lp-hd1400914055_)
                        (let ((_e1401514061_ (gx#syntax-e _lp-hd1400914055_)))
                          (let ((_hd1401614065_ (##car _e1401514061_))
                                (_tl1401714068_ (##cdr _e1401514061_)))
                            (if (gx#stx-pair? _tl1401714068_)
                                (let ((_e1401814071_
                                       (gx#syntax-e _tl1401714068_)))
                                  (let ((_hd1401914075_ (##car _e1401814071_))
                                        (_tl1402014078_ (##cdr _e1401814071_)))
                                    (if (gx#stx-null? _tl1402014078_)
                                        (_loop1400714039_
                                         _lp-tl1401014058_
                                         (cons _hd1401914075_
                                               _def-setf1401114046_)
                                         (cons _hd1401614065_
                                               _def-getf1401214048_))
                                        (_g1400014026_ _g1400114030_))))
                                (_g1400014026_ _g1400114030_))))
                        (_g1400014026_ _g1400114030_))))
                (let ((_def-setf1401314081_ (reverse _def-setf1401114046_))
                      (_def-getf1401414084_ (reverse _def-getf1401214048_)))
                  ((lambda (_L14087_ _L14089_)
                     (let ()
                       (let* ((_g1410714133_
                               (lambda (_g1410814129_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1410814129_)))
                              (_g1410614247_
                               (lambda (_g1410814137_)
                                 (if (gx#stx-pair/null? _g1410814137_)
                                     (if (fx>= (gx#stx-length _g1410814137_)
                                               '0)
                                         (let ((_g31348_
                                                (gx#syntax-split-splice
                                                 _g1410814137_
                                                 '0)))
                                           (begin
                                             (let ((_g31349_
                                                    (values-count _g31348_)))
                                               (if (not (fx= _g31349_ 2))
                                                   (error "Context expects 2 values"
                                                          _g31349_)))
                                             (let ((_target1411114140_
                                                    (values-ref _g31348_ 0))
                                                   (_tl1411314143_
                                                    (values-ref _g31348_ 1)))
                                               (if (gx#stx-null?
                                                    _tl1411314143_)
                                                   (letrec ((_loop1411414146_
                                                             (lambda (_hd1411214150_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _def-usetf1411814153_
                              _def-ugetf1411914155_)
                       (if (gx#stx-pair? _hd1411214150_)
                           (let ((_e1411514158_ (gx#syntax-e _hd1411214150_)))
                             (let ((_lp-hd1411614162_ (##car _e1411514158_))
                                   (_lp-tl1411714165_ (##cdr _e1411514158_)))
                               (if (gx#stx-pair? _lp-hd1411614162_)
                                   (let ((_e1412214168_
                                          (gx#syntax-e _lp-hd1411614162_)))
                                     (let ((_hd1412314172_
                                            (##car _e1412214168_))
                                           (_tl1412414175_
                                            (##cdr _e1412214168_)))
                                       (if (gx#stx-pair? _tl1412414175_)
                                           (let ((_e1412514178_
                                                  (gx#syntax-e
                                                   _tl1412414175_)))
                                             (let ((_hd1412614182_
                                                    (##car _e1412514178_))
                                                   (_tl1412714185_
                                                    (##cdr _e1412514178_)))
                                               (if (gx#stx-null?
                                                    _tl1412714185_)
                                                   (_loop1411414146_
                                                    _lp-tl1411714165_
                                                    (cons _hd1412614182_
                                                          _def-usetf1411814153_)
                                                    (cons _hd1412314172_
                                                          _def-ugetf1411914155_))
                                                   (_g1410714133_
                                                    _g1410814137_))))
                                           (_g1410714133_ _g1410814137_))))
                                   (_g1410714133_ _g1410814137_))))
                           (let ((_def-usetf1412014188_
                                  (reverse _def-usetf1411814153_))
                                 (_def-ugetf1412114191_
                                  (reverse _def-ugetf1411914155_)))
                             ((lambda (_L14194_ _L14196_)
                                (let ()
                                  (let ()
                                    (_wrap13507_
                                     (cons (gx#datum->syntax '#f 'begin)
                                           (cons _L13928_
                                                 (cons _L13984_
                                                       (cons _L13956_
                                                             (begin
                                                               '#!void
                                                               (foldr (lambda (_g1421414223_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1421514226_)
                                (cons _g1421414223_ _g1421514226_))
                              (begin
                                '#!void
                                (foldr (lambda (_g1421614229_ _g1421714232_)
                                         (cons _g1421614229_ _g1421714232_))
                                       (begin
                                         '#!void
                                         (foldr (lambda (_g1421814235_
                                                         _g1421914238_)
                                                  (cons _g1421814235_
                                                        _g1421914238_))
                                                (begin
                                                  '#!void
                                                  (foldr (lambda (_g1422014241_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1422114244_)
                   (cons _g1422014241_ _g1422114244_))
                 '()
                 _L14194_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _L14196_))
                                       _L14087_))
                              _L14089_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              _def-usetf1412014188_
                              _def-ugetf1412114191_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1411414146_
                                                      _target1411114140_
                                                      '()
                                                      '()))
                                                   (_g1410714133_
                                                    _g1410814137_)))))
                                         (_g1410714133_ _g1410814137_))
                                     (_g1410714133_ _g1410814137_)))))
                         (_g1410614247_
                          (if (gx#stx-e (gx#stx-getq 'unchecked: _L13598_))
                              (gx#stx-map
                               (lambda (_ref14251_)
                                 (let* ((_g1425414273_
                                         (lambda (_g1425514269_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g1425514269_)))
                                        (_g1425314395_
                                         (lambda (_g1425514277_)
                                           (if (gx#stx-pair? _g1425514277_)
                                               (let ((_e1425914280_
                                                      (gx#syntax-e
                                                       _g1425514277_)))
                                                 (let ((_hd1426014284_
                                                        (##car _e1425914280_))
                                                       (_tl1426114287_
                                                        (##cdr _e1425914280_)))
                                                   (if (gx#stx-pair?
                                                        _tl1426114287_)
                                                       (let ((_e1426214290_
                                                              (gx#syntax-e
                                                               _tl1426114287_)))
                                                         (let ((_hd1426314294_
                                                                (##car _e1426214290_))
                                                               (_tl1426414297_
                                                                (##cdr _e1426214290_)))
                                                           (if (gx#stx-pair?
                                                                _tl1426414297_)
                                                               (let ((_e1426514300_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl1426414297_)))
                         (let ((_hd1426614304_ (##car _e1426514300_))
                               (_tl1426714307_ (##cdr _e1426514300_)))
                           (if (gx#stx-null? _tl1426714307_)
                               ((lambda (_L14310_ _L14312_ _L14313_)
                                  (let* ((_g1433114346_
                                          (lambda (_g1433214342_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g1433214342_)))
                                         (_g1433014391_
                                          (lambda (_g1433214350_)
                                            (if (gx#stx-pair? _g1433214350_)
                                                (let ((_e1433514353_
                                                       (gx#syntax-e
                                                        _g1433214350_)))
                                                  (let ((_hd1433614357_
                                                         (##car _e1433514353_))
                                                        (_tl1433714360_
                                                         (##cdr _e1433514353_)))
                                                    (if (gx#stx-pair?
                                                         _tl1433714360_)
                                                        (let ((_e1433814363_
                                                               (gx#syntax-e
                                                                _tl1433714360_)))
                                                          (let ((_hd1433914367_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1433814363_))
                        (_tl1434014370_ (##cdr _e1433814363_)))
                    (if (gx#stx-null? _tl1434014370_)
                        ((lambda (_L14373_ _L14375_)
                           (let ()
                             (cons (_wrap13507_
                                    (cons (gx#datum->syntax '#f 'def)
                                          (cons _L14375_
                                                (cons (cons _L13740_
                                                            (cons _L13603_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _L14313_ '()))
                                '())))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (cons (_wrap13507_
                                          (cons (gx#datum->syntax '#f 'def)
                                                (cons _L14373_
                                                      (cons (cons _L13738_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L13603_
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _L14313_ '()))
                                      '())))
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                         _hd1433914367_
                         _hd1433614357_)
                        (_g1433114346_ _g1433214350_))))
                (_g1433114346_ _g1433214350_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1433114346_
                                                 _g1433214350_)))))
                                    (_g1433014391_
                                     (list (gx#stx-identifier
                                            _L14312_
                                            '"&"
                                            _L14312_)
                                           (gx#stx-identifier
                                            _L14310_
                                            '"&"
                                            _L14310_)))))
                                _hd1426614304_
                                _hd1426314294_
                                _hd1426014284_)
                               (_g1425414273_ _g1425514277_))))
                       (_g1425414273_ _g1425514277_))))
               (_g1425414273_ _g1425514277_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1425414273_
                                                _g1425514277_)))))
                                   (_g1425314395_ _ref14251_)))
                               _attrs13997_)
                              '())))))
                   _def-setf1401314081_
                   _def-getf1401414084_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop1400714039_
                                           _target1400414033_
                                           '()
                                           '()))
                                        (_g1400014026_ _g1400114030_)))))
                              (_g1400014026_ _g1400114030_))
                          (_g1400014026_ _g1400114030_)))))
              (_g1399914399_
               (gx#stx-map
                (lambda (_ref14403_)
                  (let* ((_g1440614425_
                          (lambda (_g1440714421_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1440714421_)))
                         (_g1440514483_
                          (lambda (_g1440714429_)
                            (if (gx#stx-pair? _g1440714429_)
                                (let ((_e1441114432_
                                       (gx#syntax-e _g1440714429_)))
                                  (let ((_hd1441214436_ (##car _e1441114432_))
                                        (_tl1441314439_ (##cdr _e1441114432_)))
                                    (if (gx#stx-pair? _tl1441314439_)
                                        (let ((_e1441414442_
                                               (gx#syntax-e _tl1441314439_)))
                                          (let ((_hd1441514446_
                                                 (##car _e1441414442_))
                                                (_tl1441614449_
                                                 (##cdr _e1441414442_)))
                                            (if (gx#stx-pair? _tl1441614449_)
                                                (let ((_e1441714452_
                                                       (gx#syntax-e
                                                        _tl1441614449_)))
                                                  (let ((_hd1441814456_
                                                         (##car _e1441714452_))
                                                        (_tl1441914459_
                                                         (##cdr _e1441714452_)))
                                                    (if (gx#stx-null?
                                                         _tl1441914459_)
                                                        ((lambda (_L14462_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L14464_
                          _L14465_)
                   (cons (_wrap13507_
                          (cons (gx#datum->syntax '#f 'def)
                                (cons _L14464_
                                      (cons (cons _L13742_
                                                  (cons _L13603_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons _L14465_ '()))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '()))))
                         (cons (_wrap13507_
                                (cons (gx#datum->syntax '#f 'def)
                                      (cons _L14462_
                                            (cons (cons _L13741_
                                                        (cons _L13603_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _L14465_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))
                               '())))
                 _hd1441814456_
                 _hd1441514446_
                 _hd1441214436_)
                (_g1440614425_ _g1440714429_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1440614425_
                                                 _g1440714429_))))
                                        (_g1440614425_ _g1440714429_))))
                                (_g1440614425_ _g1440714429_)))))
                    (_g1440514483_ _ref14403_)))
                _attrs13997_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1397013981_))))
                                       (_g1396814487_
                                        (_wrap13507_
                                         (cons (gx#datum->syntax '#f 'def)
                                               (cons _L13600_
                                                     (cons (cons _L13743_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L13603_ '()))
                   '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _g1394213953_))))
                        (_g1394014491_
                         (if (gx#stx-false? _L13601_)
                             (cons (gx#datum->syntax '#f 'begin) '())
                             (_wrap13507_
                              (cons (gx#datum->syntax '#f 'def)
                                    (cons (cons _L13601_
                                                (gx#datum->syntax '#f '$args))
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'apply)
                                                      (cons _L13744_
                                                            (cons _L13603_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f '$args) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))))))))
                  _g1391413925_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1391214495_
                                                  (_wrap13507_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'def)
                                                         (cons _L13603_
                                                               (cons _L13900_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _g1388613897_))))
                                  (_g1388414499_
                                   (if _struct?13505_
                                       (let* ((_g1450314511_
                                               (lambda (_g1450414507_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1450414507_)))
                                              (_g1450214530_
                                               (lambda (_g1450414515_)
                                                 ((lambda (_L14518_)
                                                    (let ()
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'make-struct-type)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _L13788_ '()))
                          (cons _L13602_
                                (cons _L14518_
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _L13816_ '()))
                                            (cons _L13844_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'quote)
                                                              (cons _L13872_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1450414515_))))
                                         (_g1450214530_
                                          (gx#stx-length _els13637_)))
                                       (let* ((_g1453414567_
                                               (lambda (_g1453514563_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1453514563_)))
                                              (_g1453314695_
                                               (lambda (_g1453514571_)
                                                 (if (gx#stx-pair?
                                                      _g1453514571_)
                                                     (let ((_e1453814574_
                                                            (gx#syntax-e
                                                             _g1453514571_)))
                                                       (let ((_hd1453914578_
                                                              (##car _e1453814574_))
                                                             (_tl1454014581_
                                                              (##cdr _e1453814574_)))
                                                         (if (gx#stx-pair/null?
                                                              _hd1453914578_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _hd1453914578_)
                               '0)
                         (let ((_g31350_
                                (gx#syntax-split-splice _hd1453914578_ '0)))
                           (begin
                             (let ((_g31351_ (values-count _g31350_)))
                               (if (not (fx= _g31351_ 2))
                                   (error "Context expects 2 values"
                                          _g31351_)))
                             (let ((_target1454114584_ (values-ref _g31350_ 0))
                                   (_tl1454314587_ (values-ref _g31350_ 1)))
                               (if (gx#stx-null? _tl1454314587_)
                                   (letrec ((_loop1454414590_
                                             (lambda (_hd1454214594_
                                                      _super1454814597_)
                                               (if (gx#stx-pair?
                                                    _hd1454214594_)
                                                   (let ((_e1454514600_
                                                          (gx#syntax-e
                                                           _hd1454214594_)))
                                                     (let ((_lp-hd1454614604_
                                                            (##car _e1454514600_))
                                                           (_lp-tl1454714607_
                                                            (##cdr _e1454514600_)))
                                                       (_loop1454414590_
                                                        _lp-tl1454714607_
                                                        (cons _lp-hd1454614604_
                                                              _super1454814597_))))
                                                   (let ((_super1454914610_
                                                          (reverse _super1454814597_)))
                                                     (if (gx#stx-pair?
                                                          _tl1454014581_)
                                                         (let ((_e1455014614_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1454014581_)))
                   (let ((_hd1455114618_ (##car _e1455014614_))
                         (_tl1455214621_ (##cdr _e1455014614_)))
                     (if (gx#stx-pair/null? _hd1455114618_)
                         (if (fx>= (gx#stx-length _hd1455114618_) '0)
                             (let ((_g31352_
                                    (gx#syntax-split-splice
                                     _hd1455114618_
                                     '0)))
                               (begin
                                 (let ((_g31353_ (values-count _g31352_)))
                                   (if (not (fx= _g31353_ 2))
                                       (error "Context expects 2 values"
                                              _g31353_)))
                                 (let ((_target1455314624_
                                        (values-ref _g31352_ 0))
                                       (_tl1455514627_
                                        (values-ref _g31352_ 1)))
                                   (if (gx#stx-null? _tl1455514627_)
                                       (letrec ((_loop1455614630_
                                                 (lambda (_hd1455414634_
                                                          _slot1456014637_)
                                                   (if (gx#stx-pair?
                                                        _hd1455414634_)
                                                       (let ((_e1455714640_
                                                              (gx#syntax-e
                                                               _hd1455414634_)))
                                                         (let ((_lp-hd1455814644_
                                                                (##car _e1455714640_))
                                                               (_lp-tl1455914647_
                                                                (##cdr _e1455714640_)))
                                                           (_loop1455614630_
                                                            _lp-tl1455914647_
                                                            (cons _lp-hd1455814644_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _slot1456014637_))))
               (let ((_slot1456114650_ (reverse _slot1456014637_)))
                 (if (gx#stx-null? _tl1455214621_)
                     ((lambda (_L14654_ _L14656_)
                        (let ()
                          (cons (gx#datum->syntax '#f 'make-class-type)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _L13788_ '()))
                                      (cons (cons (gx#datum->syntax '#f '@list)
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g1467814683_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1467914686_)
                     (cons _g1467814683_ _g1467914686_))
                   '()
                   _L14656_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'quote)
                                                        (cons (begin
                                                                '#!void
                                                                (foldr (lambda (_g1468014689_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g1468114692_)
                                 (cons _g1468014689_ _g1468114692_))
                               '()
                               _L14654_))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'quote)
                                                              (cons _L13816_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _L13844_
                      (cons (cons (gx#datum->syntax '#f 'quote)
                                  (cons _L13872_ '()))
                            '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      _slot1456114650_
                      _super1454914610_)
                     (_g1453414567_ _g1453514571_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop1455614630_
                                          _target1455314624_
                                          '()))
                                       (_g1453414567_ _g1453514571_)))))
                             (_g1453414567_ _g1453514571_))
                         (_g1453414567_ _g1453514571_))))
                 (_g1453414567_ _g1453514571_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop1454414590_ _target1454114584_ '()))
                                   (_g1453414567_ _g1453514571_)))))
                         (_g1453414567_ _g1453514571_))
                     (_g1453414567_ _g1453514571_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1453414567_
                                                      _g1453514571_)))))
                                         (_g1453314695_
                                          (list _L13602_
                                                (gx#stx-map
                                                 gx#stx-car
                                                 _els13637_)))))))))
                            _g1385813869_))))
                   (_g1385614699_ (gx#stx-getq 'constructor: _L13598_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1383013841_))))
                                            (_g1382814703_
                                             (let ((_$e14707_
                                                    (gx#stx-getq
                                                     'plist:
                                                     _L13598_)))
                                               (if _$e14707_
                                                   _$e14707_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '@list)
                                                         '())))))))
                                      _g1380213813_))))
                             (_g1380014711_
                              (let ((_$e14715_ (gx#stx-getq 'name: _L13598_)))
                                (if _$e14715_ _$e14715_ _L13603_))))))
                       _g1377413785_))))
              (_g1377214719_
               (let ((_$e14723_ (gx#stx-getq 'id: _L13598_)))
                 (if _$e14723_
                     _$e14723_
                     (if (gx#module-context? (gx#current-expander-context))
                         (_module-type-id13512_ _L13603_)
                         (gx#genident _L13603_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1366413732_
                                                _hd1366113722_
                                                _hd1365813712_
                                                _hd1365513702_
                                                _hd1365213692_
                                                _hd1364913682_)
                                               (_g1364013671_ _g1364113675_))))
                                       (_g1364013671_ _g1364113675_))))
                               (_g1364013671_ _g1364113675_))))
                       (_g1364013671_ _g1364113675_))))
               (_g1364013671_ _g1364113675_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1364013671_ _g1364113675_))))
                                       (_g1364013671_ _g1364113675_)))))
                           (_g1363914727_
                            (if _struct?13505_
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
                         (_g1351413541_ _g1351513545_)))
                   _tl1353513595_
                   _hd1353413592_
                   _hd1353113582_
                   _hd1352813572_
                   _hd1352513562_)))
              (_g1351413541_ _g1351513545_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1351413541_ _g1351513545_))))
                                      (_g1351413541_ _g1351513545_))))
                              (_g1351413541_ _g1351513545_))))
                      (_g1351413541_ _g1351513545_)))))
          (_g1351314731_ _stx13503_)))))
  (define |gerbil/core$<MOP>$<MOP:1>[:0:]#defstruct-type|
    (lambda (_stx14827_)
      (|gerbil/core$<MOP>$<MOP:1>[1]#generate-typedef| _stx14827_ '#t)))
  (define |gerbil/core$<MOP>$<MOP:1>[:0:]#defclass-type|
    (lambda (_stx14830_)
      (|gerbil/core$<MOP>$<MOP:1>[1]#generate-typedef| _stx14830_ '#f))))
