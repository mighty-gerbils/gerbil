(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<MOP>::<MOP:1>[1]#generate-typedef|
    (lambda (_stx13090_ _struct?13092_)
      (let ((_wrap13094_
             (lambda (_e-stx14093_)
               (gx#stx-wrap-source _e-stx14093_ (gx#stx-source _stx13090_)))))
        (let ((_slotify13096_
               (lambda (_field14027_ _off14029_)
                 (let ((_g1403114046_
                        (lambda (_g1403214042_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1403214042_))))
                   (let ((_g1403014089_
                          (lambda (_g1403214050_)
                            (if (gx#stx-pair? _g1403214050_)
                                (let ((_e1403514053_
                                       (gx#syntax-e _g1403214050_)))
                                  (let ((_hd1403614057_ (##car _e1403514053_))
                                        (_tl1403714060_ (##cdr _e1403514053_)))
                                    (if (gx#stx-pair? _tl1403714060_)
                                        (let ((_e1403814063_
                                               (gx#syntax-e _tl1403714060_)))
                                          (let ((_hd1403914067_
                                                 (##car _e1403814063_))
                                                (_tl1404014070_
                                                 (##cdr _e1403814063_)))
                                            (if (gx#stx-null? _tl1404014070_)
                                                ((lambda (_L14073_ _L14075_)
                                                   (cons _off14029_
                                                         (cons _L14075_
                                                               (cons _L14073_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1403914067_
                                                 _hd1403614057_)
                                                (_g1403114046_
                                                 _g1403214050_))))
                                        (_g1403114046_ _g1403214050_))))
                                (_g1403114046_ _g1403214050_)))))
                     (_g1403014089_ _field14027_))))))
          (let ((_struct-opt?13097_
                 (lambda (_key14024_)
                   (memq (gx#stx-e _key14024_)
                         '(fields: id: name: plist: constructor:)))))
            (let ((_class-opt?13098_
                   (lambda (_key14021_)
                     (memq (gx#stx-e _key14021_)
                           '(slots: id: name: plist: constructor:)))))
              (let ((_module-type-id13099_
                     (lambda (_type-t14008_)
                       (let ((_$e14011_
                              (gx#module-context-ns
                               (gx#current-expander-context))))
                         (if _$e14011_
                             ((lambda (_ns14015_)
                                (gx#stx-identifier
                                 _type-t14008_
                                 _ns14015_
                                 '"#"
                                 _type-t14008_))
                              _$e14011_)
                             (let ((_mid14018_
                                    (gx#expander-context-id
                                     (gx#current-expander-context))))
                               (gx#stx-identifier
                                _type-t14008_
                                _mid14018_
                                '"#"
                                _type-t14008_)))))))
                (let ((_g1310113128_
                       (lambda (_g1310213124_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1310213124_))))
                  (let ((_g1310014004_
                         (lambda (_g1310213132_)
                           (if (gx#stx-pair? _g1310213132_)
                               (let ((_e1310813135_
                                      (gx#syntax-e _g1310213132_)))
                                 (let ((_hd1310913139_ (##car _e1310813135_))
                                       (_tl1311013142_ (##cdr _e1310813135_)))
                                   (if (gx#stx-pair? _tl1311013142_)
                                       (let ((_e1311113145_
                                              (gx#syntax-e _tl1311013142_)))
                                         (let ((_hd1311213149_
                                                (##car _e1311113145_))
                                               (_tl1311313152_
                                                (##cdr _e1311113145_)))
                                           (if (gx#stx-pair? _tl1311313152_)
                                               (let ((_e1311413155_
                                                      (gx#syntax-e
                                                       _tl1311313152_)))
                                                 (let ((_hd1311513159_
                                                        (##car _e1311413155_))
                                                       (_tl1311613162_
                                                        (##cdr _e1311413155_)))
                                                   (if (gx#stx-pair?
                                                        _tl1311613162_)
                                                       (let ((_e1311713165_
                                                              (gx#syntax-e
                                                               _tl1311613162_)))
                                                         (let ((_hd1311813169_
                                                                (##car _e1311713165_))
                                                               (_tl1311913172_
                                                                (##cdr _e1311713165_)))
                                                           (if (gx#stx-pair?
                                                                _tl1311913172_)
                                                               (let ((_e1312013175_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl1311913172_)))
                         (let ((_hd1312113179_ (##car _e1312013175_))
                               (_tl1312213182_ (##cdr _e1312013175_)))
                           ((lambda (_L13185_
                                     _L13187_
                                     _L13188_
                                     _L13189_
                                     _L13190_)
                              (if (if (gx#identifier? _L13190_)
                                      (if (let ((_$e13216_
                                                 (gx#identifier? _L13188_)))
                                            (if _$e13216_
                                                _$e13216_
                                                (gx#stx-false? _L13188_)))
                                          (if (gx#identifier? _L13187_)
                                              (gx#stx-plist?
                                               _L13185_
                                               (if _struct?13092_
                                                   _struct-opt?13097_
                                                   _class-opt?13098_))
                                              '#f)
                                          '#f)
                                      '#f)
                                  (let ((_els13224_
                                         (let ((_$e13220_
                                                (gx#stx-getq
                                                 (if _struct?13092_
                                                     'fields:
                                                     'slots:)
                                                 _L13185_)))
                                           (if _$e13220_ _$e13220_ '()))))
                                    (let ((_g1322713250_
                                           (lambda (_g1322813246_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1322813246_))))
                                      (let ((_g1322614000_
                                             (lambda (_g1322813254_)
                                               (if (gx#stx-pair? _g1322813254_)
                                                   (let ((_e1323313257_
                                                          (gx#syntax-e
                                                           _g1322813254_)))
                                                     (let ((_hd1323413261_
                                                            (##car _e1323313257_))
                                                           (_tl1323513264_
                                                            (##cdr _e1323313257_)))
                                                       (if (gx#stx-pair?
                                                            _tl1323513264_)
                                                           (let ((_e1323613267_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl1323513264_)))
                     (let ((_hd1323713271_ (##car _e1323613267_))
                           (_tl1323813274_ (##cdr _e1323613267_)))
                       (if (gx#stx-pair? _tl1323813274_)
                           (let ((_e1323913277_ (gx#syntax-e _tl1323813274_)))
                             (let ((_hd1324013281_ (##car _e1323913277_))
                                   (_tl1324113284_ (##cdr _e1323913277_)))
                               (if (gx#stx-pair? _tl1324113284_)
                                   (let ((_e1324213287_
                                          (gx#syntax-e _tl1324113284_)))
                                     (let ((_hd1324313291_
                                            (##car _e1324213287_))
                                           (_tl1324413294_
                                            (##cdr _e1324213287_)))
                                       (if (gx#stx-null? _tl1324413294_)
                                           ((lambda (_L13297_
                                                     _L13299_
                                                     _L13300_
                                                     _L13301_)
                                              (let ()
                                                (let ((_g1332413332_
                                                       (lambda (_g1332513328_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1332513328_))))
                                                  (let ((_g1332313992_
                                                         (lambda (_g1332513336_)
                                                           ((lambda (_L13339_)
                                                              (let ()
                                                                (let ((_g1335213360_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g1335313356_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1335313356_))))
                          (let ((_g1335113984_
                                 (lambda (_g1335313364_)
                                   ((lambda (_L13367_)
                                      (let ()
                                        (let ((_g1338013388_
                                               (lambda (_g1338113384_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1338113384_))))
                                          (let ((_g1337913976_
                                                 (lambda (_g1338113392_)
                                                   ((lambda (_L13395_)
                                                      (let ()
                                                        (let ((_g1340813416_
                                                               (lambda (_g1340913412_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1340913412_))))
                  (let ((_g1340713972_
                         (lambda (_g1340913420_)
                           ((lambda (_L13423_)
                              (let ()
                                (let ((_g1343613444_
                                       (lambda (_g1343713440_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1343713440_))))
                                  (let ((_g1343513772_
                                         (lambda (_g1343713448_)
                                           ((lambda (_L13451_)
                                              (let ()
                                                (let ((_g1346413472_
                                                       (lambda (_g1346513468_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1346513468_))))
                                                  (let ((_g1346313768_
                                                         (lambda (_g1346513476_)
                                                           ((lambda (_L13479_)
                                                              (let ()
                                                                (let ((_g1349213500_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g1349313496_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1349313496_))))
                          (let ((_g1349113764_
                                 (lambda (_g1349313504_)
                                   ((lambda (_L13507_)
                                      (let ()
                                        (let ((_g1352013528_
                                               (lambda (_g1352113524_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1352113524_))))
                                          (let ((_g1351913760_
                                                 (lambda (_g1352113532_)
                                                   ((lambda (_L13535_)
                                                      (let ()
                                                        (let ((_g1354813574_
                                                               (lambda (_g1354913570_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1354913570_))))
                  (let ((_g1354713672_
                         (lambda (_g1354913578_)
                           (if (gx#stx-pair/null? _g1354913578_)
                               (if (fx>= (gx#stx-length _g1354913578_) '0)
                                   (let ((_g29497_
                                          (gx#syntax-split-splice
                                           _g1354913578_
                                           '0)))
                                     (begin
                                       (let ((_g29498_
                                              (values-count _g29497_)))
                                         (if (not (fx= _g29498_ 2))
                                             (error "Context expects 2 values"
                                                    _g29498_)))
                                       (let ((_target1355213581_
                                              (values-ref _g29497_ 0))
                                             (_tl1355413584_
                                              (values-ref _g29497_ 1)))
                                         (if (gx#stx-null? _tl1355413584_)
                                             (letrec ((_loop1355513587_
                                                       (lambda (_hd1355313591_
                                                                _def-setf1355913594_
                                                                _def-getf1356013596_)
                                                         (if (gx#stx-pair?
                                                              _hd1355313591_)
                                                             (let ((_e1355613599_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _hd1355313591_)))
                       (let ((_lp-hd1355713603_ (##car _e1355613599_))
                             (_lp-tl1355813606_ (##cdr _e1355613599_)))
                         (if (gx#stx-pair? _lp-hd1355713603_)
                             (let ((_e1356313609_
                                    (gx#syntax-e _lp-hd1355713603_)))
                               (let ((_hd1356413613_ (##car _e1356313609_))
                                     (_tl1356513616_ (##cdr _e1356313609_)))
                                 (if (gx#stx-pair? _tl1356513616_)
                                     (let ((_e1356613619_
                                            (gx#syntax-e _tl1356513616_)))
                                       (let ((_hd1356713623_
                                              (##car _e1356613619_))
                                             (_tl1356813626_
                                              (##cdr _e1356613619_)))
                                         (if (gx#stx-null? _tl1356813626_)
                                             (_loop1355513587_
                                              _lp-tl1355813606_
                                              (cons _hd1356713623_
                                                    _def-setf1355913594_)
                                              (cons _hd1356413613_
                                                    _def-getf1356013596_))
                                             (_g1354813574_ _g1354913578_))))
                                     (_g1354813574_ _g1354913578_))))
                             (_g1354813574_ _g1354913578_))))
                     (let ((_def-setf1356113629_
                            (reverse _def-setf1355913594_))
                           (_def-getf1356213632_
                            (reverse _def-getf1356013596_)))
                       ((lambda (_L13635_ _L13637_)
                          (let ()
                            (let ()
                              (_wrap13094_
                               (cons (gx#datum->syntax '#f 'begin)
                                     (cons _L13479_
                                           (cons _L13535_
                                                 (cons _L13507_
                                                       (begin
                                                         '#!void
                                                         (foldr (lambda (_g1365513660_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g1365613663_)
                          (cons _g1365513660_ _g1365613663_))
                        (begin
                          '#!void
                          (foldr (lambda (_g1365713666_ _g1365813669_)
                                   (cons _g1365713666_ _g1365813669_))
                                 '()
                                 _L13635_))
                        _L13637_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        _def-setf1356113629_
                        _def-getf1356213632_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop1355513587_
                                                _target1355213581_
                                                '()
                                                '()))
                                             (_g1354813574_ _g1354913578_)))))
                                   (_g1354813574_ _g1354913578_))
                               (_g1354813574_ _g1354913578_)))))
                    (_g1354713672_
                     (gx#stx-map
                      (lambda (_ref13676_)
                        (let ((_g1367913698_
                               (lambda (_g1368013694_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1368013694_))))
                          (let ((_g1367813756_
                                 (lambda (_g1368013702_)
                                   (if (gx#stx-pair? _g1368013702_)
                                       (let ((_e1368413705_
                                              (gx#syntax-e _g1368013702_)))
                                         (let ((_hd1368513709_
                                                (##car _e1368413705_))
                                               (_tl1368613712_
                                                (##cdr _e1368413705_)))
                                           (if (gx#stx-pair? _tl1368613712_)
                                               (let ((_e1368713715_
                                                      (gx#syntax-e
                                                       _tl1368613712_)))
                                                 (let ((_hd1368813719_
                                                        (##car _e1368713715_))
                                                       (_tl1368913722_
                                                        (##cdr _e1368713715_)))
                                                   (if (gx#stx-pair?
                                                        _tl1368913722_)
                                                       (let ((_e1369013725_
                                                              (gx#syntax-e
                                                               _tl1368913722_)))
                                                         (let ((_hd1369113729_
                                                                (##car _e1369013725_))
                                                               (_tl1369213732_
                                                                (##cdr _e1369013725_)))
                                                           (if (gx#stx-null?
                                                                _tl1369213732_)
                                                               ((lambda (_L13735_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L13737_
                                 _L13738_)
                          (cons (_wrap13094_
                                 (cons (gx#datum->syntax '#f 'def)
                                       (cons _L13737_
                                             (cons (cons _L13299_
                                                         (cons _L13190_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'quote)
                                   (cons _L13738_ '()))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                                (cons (_wrap13094_
                                       (cons (gx#datum->syntax '#f 'def)
                                             (cons _L13735_
                                                   (cons (cons _L13297_
                                                               (cons _L13190_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'quote)
                                         (cons _L13738_ '()))
                                   '())))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                        _hd1369113729_
                        _hd1368813719_
                        _hd1368513709_)
                       (_g1367913698_ _g1368013702_))))
               (_g1367913698_ _g1368013702_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1367913698_ _g1368013702_))))
                                       (_g1367913698_ _g1368013702_)))))
                            (_g1367813756_ _ref13676_))))
                      (if _struct?13092_
                          (gx#stx-map
                           _slotify13096_
                           _els13224_
                           (iota (gx#stx-length _els13224_)))
                          _els13224_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1352113532_))))
                                            (_g1351913760_
                                             (_wrap13094_
                                              (cons (gx#datum->syntax '#f 'def)
                                                    (cons _L13187_
                                                          (cons (cons _L13300_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _L13190_ '()))
                        '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _g1349313504_))))
                            (_g1349113764_
                             (if (gx#stx-false? _L13188_)
                                 (cons (gx#datum->syntax '#f 'begin) '())
                                 (_wrap13094_
                                  (cons (gx#datum->syntax '#f 'def)
                                        (cons (cons _L13188_
                                                    (gx#datum->syntax
                                                     '#f
                                                     '$args))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'apply)
                                                          (cons _L13301_
                                                                (cons _L13190_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#datum->syntax '#f '$args) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))))))
                    _g1346513476_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1346313768_
                                                     (_wrap13094_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'def)
                                                            (cons _L13190_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L13451_ '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g1343713448_))))
                                    (_g1343513772_
                                     (if _struct?13092_
                                         (let ((_g1377613784_
                                                (lambda (_g1377713780_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1377713780_))))
                                           (let ((_g1377513803_
                                                  (lambda (_g1377713788_)
                                                    ((lambda (_L13791_)
                                                       (let ()
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'make-struct-type)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'quote)
                                   (cons _L13339_ '()))
                             (cons _L13189_
                                   (cons _L13791_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _L13367_ '()))
                                               (cons _L13395_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _L13423_ '()))
                   '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1377713788_))))
                                             (_g1377513803_
                                              (gx#stx-length _els13224_))))
                                         (let ((_g1380713840_
                                                (lambda (_g1380813836_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1380813836_))))
                                           (let ((_g1380613968_
                                                  (lambda (_g1380813844_)
                                                    (if (gx#stx-pair?
                                                         _g1380813844_)
                                                        (let ((_e1381113847_
                                                               (gx#syntax-e
                                                                _g1380813844_)))
                                                          (let ((_hd1381213851_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1381113847_))
                        (_tl1381313854_ (##cdr _e1381113847_)))
                    (if (gx#stx-pair/null? _hd1381213851_)
                        (if (fx>= (gx#stx-length _hd1381213851_) '0)
                            (let ((_g29499_
                                   (gx#syntax-split-splice _hd1381213851_ '0)))
                              (begin
                                (let ((_g29500_ (values-count _g29499_)))
                                  (if (not (fx= _g29500_ 2))
                                      (error "Context expects 2 values"
                                             _g29500_)))
                                (let ((_target1381413857_
                                       (values-ref _g29499_ 0))
                                      (_tl1381613860_ (values-ref _g29499_ 1)))
                                  (if (gx#stx-null? _tl1381613860_)
                                      (letrec ((_loop1381713863_
                                                (lambda (_hd1381513867_
                                                         _super1382113870_)
                                                  (if (gx#stx-pair?
                                                       _hd1381513867_)
                                                      (let ((_e1381813873_
                                                             (gx#syntax-e
                                                              _hd1381513867_)))
                                                        (let ((_lp-hd1381913877_
                                                               (##car _e1381813873_))
                                                              (_lp-tl1382013880_
                                                               (##cdr _e1381813873_)))
                                                          (_loop1381713863_
                                                           _lp-tl1382013880_
                                                           (cons _lp-hd1381913877_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _super1382113870_))))
              (let ((_super1382213883_ (reverse _super1382113870_)))
                (if (gx#stx-pair? _tl1381313854_)
                    (let ((_e1382313887_ (gx#syntax-e _tl1381313854_)))
                      (let ((_hd1382413891_ (##car _e1382313887_))
                            (_tl1382513894_ (##cdr _e1382313887_)))
                        (if (gx#stx-pair/null? _hd1382413891_)
                            (if (fx>= (gx#stx-length _hd1382413891_) '0)
                                (let ((_g29501_
                                       (gx#syntax-split-splice
                                        _hd1382413891_
                                        '0)))
                                  (begin
                                    (let ((_g29502_ (values-count _g29501_)))
                                      (if (not (fx= _g29502_ 2))
                                          (error "Context expects 2 values"
                                                 _g29502_)))
                                    (let ((_target1382613897_
                                           (values-ref _g29501_ 0))
                                          (_tl1382813900_
                                           (values-ref _g29501_ 1)))
                                      (if (gx#stx-null? _tl1382813900_)
                                          (letrec ((_loop1382913903_
                                                    (lambda (_hd1382713907_
                                                             _slot1383313910_)
                                                      (if (gx#stx-pair?
                                                           _hd1382713907_)
                                                          (let ((_e1383013913_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _hd1382713907_)))
                    (let ((_lp-hd1383113917_ (##car _e1383013913_))
                          (_lp-tl1383213920_ (##cdr _e1383013913_)))
                      (_loop1382913903_
                       _lp-tl1383213920_
                       (cons _lp-hd1383113917_ _slot1383313910_))))
                  (let ((_slot1383413923_ (reverse _slot1383313910_)))
                    (if (gx#stx-null? _tl1382513894_)
                        ((lambda (_L13927_ _L13929_)
                           (let ()
                             (cons (gx#datum->syntax '#f 'make-class-type)
                                   (cons (cons (gx#datum->syntax '#f 'quote)
                                               (cons _L13339_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '@list)
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g1395113956_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1395213959_)
                        (cons _g1395113956_ _g1395213959_))
                      '()
                      _L13929_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#!void
                           (foldr (lambda (_g1395313962_ _g1395413965_)
                                    (cons _g1395313962_ _g1395413965_))
                                  '()
                                  _L13927_))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _L13367_ '()))
                   (cons _L13395_
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _L13423_ '()))
                               '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         _slot1383413923_
                         _super1382213883_)
                        (_g1380713840_ _g1380813844_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1382913903_
                                             _target1382613897_
                                             '()))
                                          (_g1380713840_ _g1380813844_)))))
                                (_g1380713840_ _g1380813844_))
                            (_g1380713840_ _g1380813844_))))
                    (_g1380713840_ _g1380813844_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1381713863_
                                         _target1381413857_
                                         '()))
                                      (_g1380713840_ _g1380813844_)))))
                            (_g1380713840_ _g1380813844_))
                        (_g1380713840_ _g1380813844_))))
                (_g1380713840_ _g1380813844_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1380613968_
                                              (list _L13189_
                                                    (gx#stx-map
                                                     gx#stx-car
                                                     _els13224_)))))))))))
                            _g1340913420_))))
                    (_g1340713972_ (gx#stx-getq 'constructor: _L13185_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1338113392_))))
                                            (_g1337913976_
                                             (let ((_$e13980_
                                                    (gx#stx-getq
                                                     'plist:
                                                     _L13185_)))
                                               (if _$e13980_
                                                   _$e13980_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '@list)
                                                         '()))))))))
                                    _g1335313364_))))
                            (_g1335113984_
                             (let ((_$e13988_ (gx#stx-getq 'name: _L13185_)))
                               (if _$e13988_ _$e13988_ _L13190_)))))))
                    _g1332513336_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1332313992_
                                                     (let ((_$e13996_
                                                            (gx#stx-getq
                                                             'id:
                                                             _L13185_)))
                                                       (if _$e13996_
                                                           _$e13996_
                                                           (if (gx#module-context?
                                                                (gx#current-expander-context))
                                                               (_module-type-id13099_
                                                                _L13190_)
                                                               (gx#genident
                                                                _L13190_)))))))))
                                            _hd1324313291_
                                            _hd1324013281_
                                            _hd1323713271_
                                            _hd1323413261_)
                                           (_g1322713250_ _g1322813254_))))
                                   (_g1322713250_ _g1322813254_))))
                           (_g1322713250_ _g1322813254_))))
                   (_g1322713250_ _g1322813254_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1322713250_
                                                    _g1322813254_)))))
                                        (_g1322614000_
                                         (if _struct?13092_
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
                             '()))))
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
                             '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_g1310113128_ _g1310213132_)))
                            _tl1312213182_
                            _hd1312113179_
                            _hd1311813169_
                            _hd1311513159_
                            _hd1311213149_)))
                       (_g1310113128_ _g1310213132_))))
               (_g1310113128_ _g1310213132_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1310113128_ _g1310213132_))))
                                       (_g1310113128_ _g1310213132_))))
                               (_g1310113128_ _g1310213132_)))))
                    (_g1310014004_ _stx13090_))))))))))
  (define |gerbil/core::<MOP>::<MOP:1>[:0:]#defstruct-type|
    (lambda (_stx14099_)
      (|gerbil/core::<MOP>::<MOP:1>[1]#generate-typedef| _stx14099_ '#t)))
  (define |gerbil/core::<MOP>::<MOP:1>[:0:]#defclass-type|
    (lambda (_stx14102_)
      (|gerbil/core::<MOP>::<MOP:1>[1]#generate-typedef| _stx14102_ '#f))))
