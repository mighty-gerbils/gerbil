(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<MOP>::<MOP:1>[1]#generate-typedef|
    (lambda (_stx13092_ _struct?13094_)
      (let ((_wrap13096_
             (lambda (_e-stx14409_)
               (gx#stx-wrap-source _e-stx14409_ (gx#stx-source _stx13092_)))))
        (let ((_slotify13098_
               (lambda (_field14343_ _off14345_)
                 (let ((_g1434714362_
                        (lambda (_g1434814358_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1434814358_))))
                   (let ((_g1434614405_
                          (lambda (_g1434814366_)
                            (if (gx#stx-pair? _g1434814366_)
                                (let ((_e1435114369_
                                       (gx#syntax-e _g1434814366_)))
                                  (let ((_hd1435214373_ (##car _e1435114369_))
                                        (_tl1435314376_ (##cdr _e1435114369_)))
                                    (if (gx#stx-pair? _tl1435314376_)
                                        (let ((_e1435414379_
                                               (gx#syntax-e _tl1435314376_)))
                                          (let ((_hd1435514383_
                                                 (##car _e1435414379_))
                                                (_tl1435614386_
                                                 (##cdr _e1435414379_)))
                                            (if (gx#stx-null? _tl1435614386_)
                                                ((lambda (_L14389_ _L14391_)
                                                   (cons _off14345_
                                                         (cons _L14391_
                                                               (cons _L14389_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1435514383_
                                                 _hd1435214373_)
                                                (_g1434714362_
                                                 _g1434814366_))))
                                        (_g1434714362_ _g1434814366_))))
                                (_g1434714362_ _g1434814366_)))))
                     (_g1434614405_ _field14343_))))))
          (let ((_struct-opt?13099_
                 (lambda (_key14340_)
                   (memq (gx#stx-e _key14340_)
                         '(fields:
                           id:
                           name:
                           plist:
                           constructor:
                           unchecked:)))))
            (let ((_class-opt?13100_
                   (lambda (_key14337_)
                     (memq (gx#stx-e _key14337_)
                           '(slots:
                             id:
                             name:
                             plist:
                             constructor:
                             unchecked:)))))
              (let ((_module-type-id13101_
                     (lambda (_type-t14324_)
                       (let ((_$e14327_
                              (gx#module-context-ns
                               (gx#current-expander-context))))
                         (if _$e14327_
                             ((lambda (_ns14331_)
                                (gx#stx-identifier
                                 _type-t14324_
                                 _ns14331_
                                 '"#"
                                 _type-t14324_))
                              _$e14327_)
                             (let ((_mid14334_
                                    (gx#expander-context-id
                                     (gx#current-expander-context))))
                               (gx#stx-identifier
                                _type-t14324_
                                _mid14334_
                                '"#"
                                _type-t14324_)))))))
                (let ((_g1310313130_
                       (lambda (_g1310413126_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1310413126_))))
                  (let ((_g1310214320_
                         (lambda (_g1310413134_)
                           (if (gx#stx-pair? _g1310413134_)
                               (let ((_e1311013137_
                                      (gx#syntax-e _g1310413134_)))
                                 (let ((_hd1311113141_ (##car _e1311013137_))
                                       (_tl1311213144_ (##cdr _e1311013137_)))
                                   (if (gx#stx-pair? _tl1311213144_)
                                       (let ((_e1311313147_
                                              (gx#syntax-e _tl1311213144_)))
                                         (let ((_hd1311413151_
                                                (##car _e1311313147_))
                                               (_tl1311513154_
                                                (##cdr _e1311313147_)))
                                           (if (gx#stx-pair? _tl1311513154_)
                                               (let ((_e1311613157_
                                                      (gx#syntax-e
                                                       _tl1311513154_)))
                                                 (let ((_hd1311713161_
                                                        (##car _e1311613157_))
                                                       (_tl1311813164_
                                                        (##cdr _e1311613157_)))
                                                   (if (gx#stx-pair?
                                                        _tl1311813164_)
                                                       (let ((_e1311913167_
                                                              (gx#syntax-e
                                                               _tl1311813164_)))
                                                         (let ((_hd1312013171_
                                                                (##car _e1311913167_))
                                                               (_tl1312113174_
                                                                (##cdr _e1311913167_)))
                                                           (if (gx#stx-pair?
                                                                _tl1312113174_)
                                                               (let ((_e1312213177_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl1312113174_)))
                         (let ((_hd1312313181_ (##car _e1312213177_))
                               (_tl1312413184_ (##cdr _e1312213177_)))
                           ((lambda (_L13187_
                                     _L13189_
                                     _L13190_
                                     _L13191_
                                     _L13192_)
                              (if (if (gx#identifier? _L13192_)
                                      (if (let ((_$e13218_
                                                 (gx#identifier? _L13190_)))
                                            (if _$e13218_
                                                _$e13218_
                                                (gx#stx-false? _L13190_)))
                                          (if (gx#identifier? _L13189_)
                                              (gx#stx-plist?
                                               _L13187_
                                               (if _struct?13094_
                                                   _struct-opt?13099_
                                                   _class-opt?13100_))
                                              '#f)
                                          '#f)
                                      '#f)
                                  (let ((_els13226_
                                         (let ((_$e13222_
                                                (gx#stx-getq
                                                 (if _struct?13094_
                                                     'fields:
                                                     'slots:)
                                                 _L13187_)))
                                           (if _$e13222_ _$e13222_ '()))))
                                    (let ((_g1322913260_
                                           (lambda (_g1323013256_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1323013256_))))
                                      (let ((_g1322814316_
                                             (lambda (_g1323013264_)
                                               (if (gx#stx-pair? _g1323013264_)
                                                   (let ((_e1323713267_
                                                          (gx#syntax-e
                                                           _g1323013264_)))
                                                     (let ((_hd1323813271_
                                                            (##car _e1323713267_))
                                                           (_tl1323913274_
                                                            (##cdr _e1323713267_)))
                                                       (if (gx#stx-pair?
                                                            _tl1323913274_)
                                                           (let ((_e1324013277_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl1323913274_)))
                     (let ((_hd1324113281_ (##car _e1324013277_))
                           (_tl1324213284_ (##cdr _e1324013277_)))
                       (if (gx#stx-pair? _tl1324213284_)
                           (let ((_e1324313287_ (gx#syntax-e _tl1324213284_)))
                             (let ((_hd1324413291_ (##car _e1324313287_))
                                   (_tl1324513294_ (##cdr _e1324313287_)))
                               (if (gx#stx-pair? _tl1324513294_)
                                   (let ((_e1324613297_
                                          (gx#syntax-e _tl1324513294_)))
                                     (let ((_hd1324713301_
                                            (##car _e1324613297_))
                                           (_tl1324813304_
                                            (##cdr _e1324613297_)))
                                       (if (gx#stx-pair? _tl1324813304_)
                                           (let ((_e1324913307_
                                                  (gx#syntax-e
                                                   _tl1324813304_)))
                                             (let ((_hd1325013311_
                                                    (##car _e1324913307_))
                                                   (_tl1325113314_
                                                    (##cdr _e1324913307_)))
                                               (if (gx#stx-pair?
                                                    _tl1325113314_)
                                                   (let ((_e1325213317_
                                                          (gx#syntax-e
                                                           _tl1325113314_)))
                                                     (let ((_hd1325313321_
                                                            (##car _e1325213317_))
                                                           (_tl1325413324_
                                                            (##cdr _e1325213317_)))
                                                       (if (gx#stx-null?
                                                            _tl1325413324_)
                                                           ((lambda (_L13327_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L13329_
                             _L13330_
                             _L13331_
                             _L13332_
                             _L13333_)
                      (let ()
                        (let ((_g1336213370_
                               (lambda (_g1336313366_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1336313366_))))
                          (let ((_g1336114308_
                                 (lambda (_g1336313374_)
                                   ((lambda (_L13377_)
                                      (let ()
                                        (let ((_g1339013398_
                                               (lambda (_g1339113394_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1339113394_))))
                                          (let ((_g1338914300_
                                                 (lambda (_g1339113402_)
                                                   ((lambda (_L13405_)
                                                      (let ()
                                                        (let ((_g1341813426_
                                                               (lambda (_g1341913422_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1341913422_))))
                  (let ((_g1341714292_
                         (lambda (_g1341913430_)
                           ((lambda (_L13433_)
                              (let ()
                                (let ((_g1344613454_
                                       (lambda (_g1344713450_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1344713450_))))
                                  (let ((_g1344514288_
                                         (lambda (_g1344713458_)
                                           ((lambda (_L13461_)
                                              (let ()
                                                (let ((_g1347413482_
                                                       (lambda (_g1347513478_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1347513478_))))
                                                  (let ((_g1347314088_
                                                         (lambda (_g1347513486_)
                                                           ((lambda (_L13489_)
                                                              (let ()
                                                                (let ((_g1350213510_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g1350313506_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1350313506_))))
                          (let ((_g1350114084_
                                 (lambda (_g1350313514_)
                                   ((lambda (_L13517_)
                                      (let ()
                                        (let ((_g1353013538_
                                               (lambda (_g1353113534_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1353113534_))))
                                          (let ((_g1352914080_
                                                 (lambda (_g1353113542_)
                                                   ((lambda (_L13545_)
                                                      (let ()
                                                        (let ((_g1355813566_
                                                               (lambda (_g1355913562_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1355913562_))))
                  (let ((_g1355714076_
                         (lambda (_g1355913570_)
                           ((lambda (_L13573_)
                              (let ()
                                (let ((_attrs13586_
                                       (if _struct?13094_
                                           (gx#stx-map
                                            _slotify13098_
                                            _els13226_
                                            (iota (gx#stx-length _els13226_)))
                                           _els13226_)))
                                  (let ((_g1358913615_
                                         (lambda (_g1359013611_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g1359013611_))))
                                    (let ((_g1358813988_
                                           (lambda (_g1359013619_)
                                             (if (gx#stx-pair/null?
                                                  _g1359013619_)
                                                 (if (fx>= (gx#stx-length
                                                            _g1359013619_)
                                                           '0)
                                                     (let ((_g30295_
                                                            (gx#syntax-split-splice
                                                             _g1359013619_
                                                             '0)))
                                                       (begin
                                                         (let ((_g30296_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g30295_)))
                   (if (not (fx= _g30296_ 2))
                       (error "Context expects 2 values" _g30296_)))
                 (let ((_target1359313622_ (values-ref _g30295_ 0))
                       (_tl1359513625_ (values-ref _g30295_ 1)))
                   (if (gx#stx-null? _tl1359513625_)
                       (letrec ((_loop1359613628_
                                 (lambda (_hd1359413632_
                                          _def-setf1360013635_
                                          _def-getf1360113637_)
                                   (if (gx#stx-pair? _hd1359413632_)
                                       (let ((_e1359713640_
                                              (gx#syntax-e _hd1359413632_)))
                                         (let ((_lp-hd1359813644_
                                                (##car _e1359713640_))
                                               (_lp-tl1359913647_
                                                (##cdr _e1359713640_)))
                                           (if (gx#stx-pair? _lp-hd1359813644_)
                                               (let ((_e1360413650_
                                                      (gx#syntax-e
                                                       _lp-hd1359813644_)))
                                                 (let ((_hd1360513654_
                                                        (##car _e1360413650_))
                                                       (_tl1360613657_
                                                        (##cdr _e1360413650_)))
                                                   (if (gx#stx-pair?
                                                        _tl1360613657_)
                                                       (let ((_e1360713660_
                                                              (gx#syntax-e
                                                               _tl1360613657_)))
                                                         (let ((_hd1360813664_
                                                                (##car _e1360713660_))
                                                               (_tl1360913667_
                                                                (##cdr _e1360713660_)))
                                                           (if (gx#stx-null?
                                                                _tl1360913667_)
                                                               (_loop1359613628_
                                                                _lp-tl1359913647_
                                                                (cons _hd1360813664_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _def-setf1360013635_)
                        (cons _hd1360513654_ _def-getf1360113637_))
                       (_g1358913615_ _g1359013619_))))
               (_g1358913615_ _g1359013619_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1358913615_ _g1359013619_))))
                                       (let ((_def-setf1360213670_
                                              (reverse _def-setf1360013635_))
                                             (_def-getf1360313673_
                                              (reverse _def-getf1360113637_)))
                                         ((lambda (_L13676_ _L13678_)
                                            (let ()
                                              (let ((_g1369613722_
                                                     (lambda (_g1369713718_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1369713718_))))
                                                (let ((_g1369513836_
                                                       (lambda (_g1369713726_)
                                                         (if (gx#stx-pair/null?
                                                              _g1369713726_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1369713726_)
                               '0)
                         (let ((_g30297_
                                (gx#syntax-split-splice _g1369713726_ '0)))
                           (begin
                             (let ((_g30298_ (values-count _g30297_)))
                               (if (not (fx= _g30298_ 2))
                                   (error "Context expects 2 values"
                                          _g30298_)))
                             (let ((_target1370013729_ (values-ref _g30297_ 0))
                                   (_tl1370213732_ (values-ref _g30297_ 1)))
                               (if (gx#stx-null? _tl1370213732_)
                                   (letrec ((_loop1370313735_
                                             (lambda (_hd1370113739_
                                                      _def-usetf1370713742_
                                                      _def-ugetf1370813744_)
                                               (if (gx#stx-pair?
                                                    _hd1370113739_)
                                                   (let ((_e1370413747_
                                                          (gx#syntax-e
                                                           _hd1370113739_)))
                                                     (let ((_lp-hd1370513751_
                                                            (##car _e1370413747_))
                                                           (_lp-tl1370613754_
                                                            (##cdr _e1370413747_)))
                                                       (if (gx#stx-pair?
                                                            _lp-hd1370513751_)
                                                           (let ((_e1371113757_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _lp-hd1370513751_)))
                     (let ((_hd1371213761_ (##car _e1371113757_))
                           (_tl1371313764_ (##cdr _e1371113757_)))
                       (if (gx#stx-pair? _tl1371313764_)
                           (let ((_e1371413767_ (gx#syntax-e _tl1371313764_)))
                             (let ((_hd1371513771_ (##car _e1371413767_))
                                   (_tl1371613774_ (##cdr _e1371413767_)))
                               (if (gx#stx-null? _tl1371613774_)
                                   (_loop1370313735_
                                    _lp-tl1370613754_
                                    (cons _hd1371513771_ _def-usetf1370713742_)
                                    (cons _hd1371213761_
                                          _def-ugetf1370813744_))
                                   (_g1369613722_ _g1369713726_))))
                           (_g1369613722_ _g1369713726_))))
                   (_g1369613722_ _g1369713726_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_def-usetf1370913777_
                                                          (reverse _def-usetf1370713742_))
                                                         (_def-ugetf1371013780_
                                                          (reverse _def-ugetf1370813744_)))
                                                     ((lambda (_L13783_
                                                               _L13785_)
                                                        (let ()
                                                          (let ()
                                                            (_wrap13096_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           (cons _L13517_
                                 (cons _L13573_
                                       (cons _L13545_
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g1380313812_
                                                               _g1380413815_)
                                                        (cons _g1380313812_
                                                              _g1380413815_))
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g1380513818_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1380613821_)
                         (cons _g1380513818_ _g1380613821_))
                       (begin
                         '#!void
                         (foldr (lambda (_g1380713824_ _g1380813827_)
                                  (cons _g1380713824_ _g1380813827_))
                                (begin
                                  '#!void
                                  (foldr (lambda (_g1380913830_ _g1381013833_)
                                           (cons _g1380913830_ _g1381013833_))
                                         '()
                                         _L13783_))
                                _L13785_))
                       _L13676_))
              _L13678_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              _def-usetf1370913777_
              _def-ugetf1371013780_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop1370313735_
                                      _target1370013729_
                                      '()
                                      '()))
                                   (_g1369613722_ _g1369713726_)))))
                         (_g1369613722_ _g1369713726_))
                     (_g1369613722_ _g1369713726_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1369513836_
                                                   (if (gx#stx-e
                                                        (gx#stx-getq
                                                         'unchecked:
                                                         _L13187_))
                                                       (gx#stx-map
                                                        (lambda (_ref13840_)
                                                          (let ((_g1384313862_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1384413858_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1384413858_))))
                    (let ((_g1384213984_
                           (lambda (_g1384413866_)
                             (if (gx#stx-pair? _g1384413866_)
                                 (let ((_e1384813869_
                                        (gx#syntax-e _g1384413866_)))
                                   (let ((_hd1384913873_ (##car _e1384813869_))
                                         (_tl1385013876_
                                          (##cdr _e1384813869_)))
                                     (if (gx#stx-pair? _tl1385013876_)
                                         (let ((_e1385113879_
                                                (gx#syntax-e _tl1385013876_)))
                                           (let ((_hd1385213883_
                                                  (##car _e1385113879_))
                                                 (_tl1385313886_
                                                  (##cdr _e1385113879_)))
                                             (if (gx#stx-pair? _tl1385313886_)
                                                 (let ((_e1385413889_
                                                        (gx#syntax-e
                                                         _tl1385313886_)))
                                                   (let ((_hd1385513893_
                                                          (##car _e1385413889_))
                                                         (_tl1385613896_
                                                          (##cdr _e1385413889_)))
                                                     (if (gx#stx-null?
                                                          _tl1385613896_)
                                                         ((lambda (_L13899_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L13901_
                           _L13902_)
                    (let ((_g1392013935_
                           (lambda (_g1392113931_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1392113931_))))
                      (let ((_g1391913980_
                             (lambda (_g1392113939_)
                               (if (gx#stx-pair? _g1392113939_)
                                   (let ((_e1392413942_
                                          (gx#syntax-e _g1392113939_)))
                                     (let ((_hd1392513946_
                                            (##car _e1392413942_))
                                           (_tl1392613949_
                                            (##cdr _e1392413942_)))
                                       (if (gx#stx-pair? _tl1392613949_)
                                           (let ((_e1392713952_
                                                  (gx#syntax-e
                                                   _tl1392613949_)))
                                             (let ((_hd1392813956_
                                                    (##car _e1392713952_))
                                                   (_tl1392913959_
                                                    (##cdr _e1392713952_)))
                                               (if (gx#stx-null?
                                                    _tl1392913959_)
                                                   ((lambda (_L13962_ _L13964_)
                                                      (let ()
                                                        (cons (_wrap13096_
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'def)
                             (cons _L13964_
                                   (cons (cons _L13329_
                                               (cons _L13192_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _L13902_ '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                      (cons (_wrap13096_
                             (cons (gx#datum->syntax '#f 'def)
                                   (cons _L13962_
                                         (cons (cons _L13327_
                                                     (cons _L13192_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote)
                               (cons _L13902_ '()))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1392813956_
                                                    _hd1392513946_)
                                                   (_g1392013935_
                                                    _g1392113939_))))
                                           (_g1392013935_ _g1392113939_))))
                                   (_g1392013935_ _g1392113939_)))))
                        (_g1391913980_
                         (list (gx#stx-identifier _L13901_ '"&" _L13901_)
                               (gx#stx-identifier _L13899_ '"&" _L13899_))))))
                  _hd1385513893_
                  _hd1385213883_
                  _hd1384913873_)
                 (_g1384313862_ _g1384413866_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1384313862_
                                                  _g1384413866_))))
                                         (_g1384313862_ _g1384413866_))))
                                 (_g1384313862_ _g1384413866_)))))
                      (_g1384213984_ _ref13840_))))
                _attrs13586_)
               '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _def-setf1360213670_
                                          _def-getf1360313673_))))))
                         (_loop1359613628_ _target1359313622_ '() '()))
                       (_g1358913615_ _g1359013619_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1358913615_
                                                      _g1359013619_))
                                                 (_g1358913615_
                                                  _g1359013619_)))))
                                      (_g1358813988_
                                       (gx#stx-map
                                        (lambda (_ref13992_)
                                          (let ((_g1399514014_
                                                 (lambda (_g1399614010_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1399614010_))))
                                            (let ((_g1399414072_
                                                   (lambda (_g1399614018_)
                                                     (if (gx#stx-pair?
                                                          _g1399614018_)
                                                         (let ((_e1400014021_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1399614018_)))
                   (let ((_hd1400114025_ (##car _e1400014021_))
                         (_tl1400214028_ (##cdr _e1400014021_)))
                     (if (gx#stx-pair? _tl1400214028_)
                         (let ((_e1400314031_ (gx#syntax-e _tl1400214028_)))
                           (let ((_hd1400414035_ (##car _e1400314031_))
                                 (_tl1400514038_ (##cdr _e1400314031_)))
                             (if (gx#stx-pair? _tl1400514038_)
                                 (let ((_e1400614041_
                                        (gx#syntax-e _tl1400514038_)))
                                   (let ((_hd1400714045_ (##car _e1400614041_))
                                         (_tl1400814048_
                                          (##cdr _e1400614041_)))
                                     (if (gx#stx-null? _tl1400814048_)
                                         ((lambda (_L14051_ _L14053_ _L14054_)
                                            (cons (_wrap13096_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'def)
                                                         (cons _L14053_
                                                               (cons (cons _L13331_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons _L13192_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _L14054_ '()))
                                               '())))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (_wrap13096_
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'def)
                                                               (cons _L14051_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons _L13330_
                                         (cons _L13192_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons _L14054_ '()))
                                                     '())))
                                   '()))))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _hd1400714045_
                                          _hd1400414035_
                                          _hd1400114025_)
                                         (_g1399514014_ _g1399614018_))))
                                 (_g1399514014_ _g1399614018_))))
                         (_g1399514014_ _g1399614018_))))
                 (_g1399514014_ _g1399614018_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1399414072_ _ref13992_))))
                                        _attrs13586_)))))))
                            _g1355913570_))))
                    (_g1355714076_
                     (_wrap13096_
                      (cons (gx#datum->syntax '#f 'def)
                            (cons _L13189_
                                  (cons (cons _L13332_ (cons _L13192_ '()))
                                        '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1353113542_))))
                                            (_g1352914080_
                                             (if (gx#stx-false? _L13190_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin)
                                                       '())
                                                 (_wrap13096_
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'def)
                                                        (cons (cons _L13190_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f '$args))
                      (cons (cons (gx#datum->syntax '#f 'apply)
                                  (cons _L13333_
                                        (cons _L13192_
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     '$args)
                                                    '()))))
                            '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _g1350313514_))))
                            (_g1350114084_
                             (_wrap13096_
                              (cons (gx#datum->syntax '#f 'def)
                                    (cons _L13192_ (cons _L13489_ '())))))))))
                    _g1347513486_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1347314088_
                                                     (if _struct?13094_
                                                         (let ((_g1409214100_
                                                                (lambda (_g1409314096_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1409314096_))))
                   (let ((_g1409114119_
                          (lambda (_g1409314104_)
                            ((lambda (_L14107_)
                               (let ()
                                 (cons (gx#datum->syntax '#f 'make-struct-type)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _L13377_ '()))
                                             (cons _L13191_
                                                   (cons _L14107_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'quote)
                             (cons _L13405_ '()))
                       (cons _L13433_
                             (cons (cons (gx#datum->syntax '#f 'quote)
                                         (cons _L13461_ '()))
                                   '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             _g1409314104_))))
                     (_g1409114119_ (gx#stx-length _els13226_))))
                 (let ((_g1412314156_
                        (lambda (_g1412414152_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1412414152_))))
                   (let ((_g1412214284_
                          (lambda (_g1412414160_)
                            (if (gx#stx-pair? _g1412414160_)
                                (let ((_e1412714163_
                                       (gx#syntax-e _g1412414160_)))
                                  (let ((_hd1412814167_ (##car _e1412714163_))
                                        (_tl1412914170_ (##cdr _e1412714163_)))
                                    (if (gx#stx-pair/null? _hd1412814167_)
                                        (if (fx>= (gx#stx-length
                                                   _hd1412814167_)
                                                  '0)
                                            (let ((_g30299_
                                                   (gx#syntax-split-splice
                                                    _hd1412814167_
                                                    '0)))
                                              (begin
                                                (let ((_g30300_
                                                       (values-count
                                                        _g30299_)))
                                                  (if (not (fx= _g30300_ 2))
                                                      (error "Context expects 2 values"
                                                             _g30300_)))
                                                (let ((_target1413014173_
                                                       (values-ref _g30299_ 0))
                                                      (_tl1413214176_
                                                       (values-ref
                                                        _g30299_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl1413214176_)
                                                      (letrec ((_loop1413314179_
                                                                (lambda (_hd1413114183_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _super1413714186_)
                          (if (gx#stx-pair? _hd1413114183_)
                              (let ((_e1413414189_
                                     (gx#syntax-e _hd1413114183_)))
                                (let ((_lp-hd1413514193_ (##car _e1413414189_))
                                      (_lp-tl1413614196_
                                       (##cdr _e1413414189_)))
                                  (_loop1413314179_
                                   _lp-tl1413614196_
                                   (cons _lp-hd1413514193_
                                         _super1413714186_))))
                              (let ((_super1413814199_
                                     (reverse _super1413714186_)))
                                (if (gx#stx-pair? _tl1412914170_)
                                    (let ((_e1413914203_
                                           (gx#syntax-e _tl1412914170_)))
                                      (let ((_hd1414014207_
                                             (##car _e1413914203_))
                                            (_tl1414114210_
                                             (##cdr _e1413914203_)))
                                        (if (gx#stx-pair/null? _hd1414014207_)
                                            (if (fx>= (gx#stx-length
                                                       _hd1414014207_)
                                                      '0)
                                                (let ((_g30301_
                                                       (gx#syntax-split-splice
                                                        _hd1414014207_
                                                        '0)))
                                                  (begin
                                                    (let ((_g30302_
                                                           (values-count
                                                            _g30301_)))
                                                      (if (not (fx= _g30302_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g30302_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1414214213_
                                                           (values-ref
                                                            _g30301_
                                                            0))
                                                          (_tl1414414216_
                                                           (values-ref
                                                            _g30301_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl1414414216_)
                                                          (letrec ((_loop1414514219_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1414314223_ _slot1414914226_)
                              (if (gx#stx-pair? _hd1414314223_)
                                  (let ((_e1414614229_
                                         (gx#syntax-e _hd1414314223_)))
                                    (let ((_lp-hd1414714233_
                                           (##car _e1414614229_))
                                          (_lp-tl1414814236_
                                           (##cdr _e1414614229_)))
                                      (_loop1414514219_
                                       _lp-tl1414814236_
                                       (cons _lp-hd1414714233_
                                             _slot1414914226_))))
                                  (let ((_slot1415014239_
                                         (reverse _slot1414914226_)))
                                    (if (gx#stx-null? _tl1414114210_)
                                        ((lambda (_L14243_ _L14245_)
                                           (let ()
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'make-class-type)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote)
                                                               (cons _L13377_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons (gx#datum->syntax '#f '@list)
                             (begin
                               '#!void
                               (foldr (lambda (_g1426714272_ _g1426814275_)
                                        (cons _g1426714272_ _g1426814275_))
                                      '()
                                      _L14245_)))
                       (cons (cons (gx#datum->syntax '#f 'quote)
                                   (cons (begin
                                           '#!void
                                           (foldr (lambda (_g1426914278_
                                                           _g1427014281_)
                                                    (cons _g1426914278_
                                                          _g1427014281_))
                                                  '()
                                                  _L14243_))
                                         '()))
                             (cons (cons (gx#datum->syntax '#f 'quote)
                                         (cons _L13405_ '()))
                                   (cons _L13433_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _L13461_ '()))
                                               '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _slot1415014239_
                                         _super1413814199_)
                                        (_g1412314156_ _g1412414160_)))))))
                    (_loop1414514219_ _target1414214213_ '()))
                  (_g1412314156_ _g1412414160_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1412314156_ _g1412414160_))
                                            (_g1412314156_ _g1412414160_))))
                                    (_g1412314156_ _g1412414160_)))))))
                (_loop1413314179_ _target1413014173_ '()))
              (_g1412314156_ _g1412414160_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1412314156_ _g1412414160_))
                                        (_g1412314156_ _g1412414160_))))
                                (_g1412314156_ _g1412414160_)))))
                     (_g1412214284_
                      (list _L13191_
                            (gx#stx-map gx#stx-car _els13226_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g1344713458_))))
                                    (_g1344514288_
                                     (gx#stx-getq 'constructor: _L13187_))))))
                            _g1341913430_))))
                    (_g1341714292_
                     (let ((_$e14296_ (gx#stx-getq 'plist: _L13187_)))
                       (if _$e14296_
                           _$e14296_
                           (cons (gx#datum->syntax '#f '@list) '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1339113402_))))
                                            (_g1338914300_
                                             (let ((_$e14304_
                                                    (gx#stx-getq
                                                     'name:
                                                     _L13187_)))
                                               (if _$e14304_
                                                   _$e14304_
                                                   _L13192_)))))))
                                    _g1336313374_))))
                            (_g1336114308_
                             (let ((_$e14312_ (gx#stx-getq 'id: _L13187_)))
                               (if _$e14312_
                                   _$e14312_
                                   (if (gx#module-context?
                                        (gx#current-expander-context))
                                       (_module-type-id13101_ _L13192_)
                                       (gx#genident _L13192_)))))))))
                    _hd1325313321_
                    _hd1325013311_
                    _hd1324713301_
                    _hd1324413291_
                    _hd1324113281_
                    _hd1323813271_)
                   (_g1322913260_ _g1323013264_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1322913260_
                                                    _g1323013264_))))
                                           (_g1322913260_ _g1323013264_))))
                                   (_g1322913260_ _g1323013264_))))
                           (_g1322913260_ _g1323013264_))))
                   (_g1322913260_ _g1323013264_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1322913260_
                                                    _g1323013264_)))))
                                        (_g1322814316_
                                         (if _struct?13094_
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
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'make-struct-field-mutator)
                             (cons (gx#datum->syntax
                                    '#f
                                    'make-struct-field-unchecked-accessor)
                                   (cons (gx#datum->syntax
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
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'make-class-slot-mutator)
                             (cons (gx#datum->syntax
                                    '#f
                                    'make-class-slot-unchecked-accessor)
                                   (cons (gx#datum->syntax
                                          '#f
                                          'make-class-slot-unchecked-mutator)
                                         '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_g1310313130_ _g1310413134_)))
                            _tl1312413184_
                            _hd1312313181_
                            _hd1312013171_
                            _hd1311713161_
                            _hd1311413151_)))
                       (_g1310313130_ _g1310413134_))))
               (_g1310313130_ _g1310413134_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1310313130_ _g1310413134_))))
                                       (_g1310313130_ _g1310413134_))))
                               (_g1310313130_ _g1310413134_)))))
                    (_g1310214320_ _stx13092_))))))))))
  (define |gerbil/core::<MOP>::<MOP:1>[:0:]#defstruct-type|
    (lambda (_stx14416_)
      (|gerbil/core::<MOP>::<MOP:1>[1]#generate-typedef| _stx14416_ '#t)))
  (define |gerbil/core::<MOP>::<MOP:1>[:0:]#defclass-type|
    (lambda (_stx14419_)
      (|gerbil/core::<MOP>::<MOP:1>[1]#generate-typedef| _stx14419_ '#f))))
