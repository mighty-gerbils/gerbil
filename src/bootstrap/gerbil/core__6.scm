(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<MOP>::<MOP:1>[1]#generate-typedef|
    (lambda (_stx13006_ _struct?13008_)
      (let ((_wrap13010_
             (lambda (_e-stx14009_)
               (gx#stx-wrap-source _e-stx14009_ (gx#stx-source _stx13006_)))))
        (let ((_slotify13012_
               (lambda (_field13943_ _off13945_)
                 (let ((_g1394713962_
                        (lambda (_g1394813958_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1394813958_))))
                   (let ((_g1394614005_
                          (lambda (_g1394813966_)
                            (if (gx#stx-pair? _g1394813966_)
                                (let ((_e1395113969_
                                       (gx#syntax-e _g1394813966_)))
                                  (let ((_hd1395213973_ (##car _e1395113969_))
                                        (_tl1395313976_ (##cdr _e1395113969_)))
                                    (if (gx#stx-pair? _tl1395313976_)
                                        (let ((_e1395413979_
                                               (gx#syntax-e _tl1395313976_)))
                                          (let ((_hd1395513983_
                                                 (##car _e1395413979_))
                                                (_tl1395613986_
                                                 (##cdr _e1395413979_)))
                                            (if (gx#stx-null? _tl1395613986_)
                                                ((lambda (_L13989_ _L13991_)
                                                   (cons _off13945_
                                                         (cons _L13991_
                                                               (cons _L13989_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1395513983_
                                                 _hd1395213973_)
                                                (_g1394713962_
                                                 _g1394813966_))))
                                        (_g1394713962_ _g1394813966_))))
                                (_g1394713962_ _g1394813966_)))))
                     (_g1394614005_ _field13943_))))))
          (let ((_struct-opt?13013_
                 (lambda (_key13940_)
                   (memq (gx#stx-e _key13940_)
                         '(fields: id: name: plist: constructor:)))))
            (let ((_class-opt?13014_
                   (lambda (_key13937_)
                     (memq (gx#stx-e _key13937_)
                           '(slots: id: name: plist: constructor:)))))
              (let ((_module-type-id13015_
                     (lambda (_type-t13924_)
                       (let ((_$e13927_
                              (gx#module-context-ns
                               (gx#current-expander-context))))
                         (if _$e13927_
                             ((lambda (_ns13931_)
                                (gx#stx-identifier
                                 _type-t13924_
                                 _ns13931_
                                 '"#"
                                 _type-t13924_))
                              _$e13927_)
                             (let ((_mid13934_
                                    (gx#expander-context-id
                                     (gx#current-expander-context))))
                               (gx#stx-identifier
                                _type-t13924_
                                _mid13934_
                                '"#"
                                _type-t13924_)))))))
                (let ((_g1301713044_
                       (lambda (_g1301813040_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1301813040_))))
                  (let ((_g1301613920_
                         (lambda (_g1301813048_)
                           (if (gx#stx-pair? _g1301813048_)
                               (let ((_e1302413051_
                                      (gx#syntax-e _g1301813048_)))
                                 (let ((_hd1302513055_ (##car _e1302413051_))
                                       (_tl1302613058_ (##cdr _e1302413051_)))
                                   (if (gx#stx-pair? _tl1302613058_)
                                       (let ((_e1302713061_
                                              (gx#syntax-e _tl1302613058_)))
                                         (let ((_hd1302813065_
                                                (##car _e1302713061_))
                                               (_tl1302913068_
                                                (##cdr _e1302713061_)))
                                           (if (gx#stx-pair? _tl1302913068_)
                                               (let ((_e1303013071_
                                                      (gx#syntax-e
                                                       _tl1302913068_)))
                                                 (let ((_hd1303113075_
                                                        (##car _e1303013071_))
                                                       (_tl1303213078_
                                                        (##cdr _e1303013071_)))
                                                   (if (gx#stx-pair?
                                                        _tl1303213078_)
                                                       (let ((_e1303313081_
                                                              (gx#syntax-e
                                                               _tl1303213078_)))
                                                         (let ((_hd1303413085_
                                                                (##car _e1303313081_))
                                                               (_tl1303513088_
                                                                (##cdr _e1303313081_)))
                                                           (if (gx#stx-pair?
                                                                _tl1303513088_)
                                                               (let ((_e1303613091_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl1303513088_)))
                         (let ((_hd1303713095_ (##car _e1303613091_))
                               (_tl1303813098_ (##cdr _e1303613091_)))
                           ((lambda (_L13101_
                                     _L13103_
                                     _L13104_
                                     _L13105_
                                     _L13106_)
                              (if (if (gx#identifier? _L13106_)
                                      (if (let ((_$e13132_
                                                 (gx#identifier? _L13104_)))
                                            (if _$e13132_
                                                _$e13132_
                                                (gx#stx-false? _L13104_)))
                                          (if (gx#identifier? _L13103_)
                                              (gx#stx-plist?
                                               _L13101_
                                               (if _struct?13008_
                                                   _struct-opt?13013_
                                                   _class-opt?13014_))
                                              '#f)
                                          '#f)
                                      '#f)
                                  (let ((_els13140_
                                         (let ((_$e13136_
                                                (gx#stx-getq
                                                 (if _struct?13008_
                                                     'fields:
                                                     'slots:)
                                                 _L13101_)))
                                           (if _$e13136_ _$e13136_ '()))))
                                    (let ((_g1314313166_
                                           (lambda (_g1314413162_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1314413162_))))
                                      (let ((_g1314213916_
                                             (lambda (_g1314413170_)
                                               (if (gx#stx-pair? _g1314413170_)
                                                   (let ((_e1314913173_
                                                          (gx#syntax-e
                                                           _g1314413170_)))
                                                     (let ((_hd1315013177_
                                                            (##car _e1314913173_))
                                                           (_tl1315113180_
                                                            (##cdr _e1314913173_)))
                                                       (if (gx#stx-pair?
                                                            _tl1315113180_)
                                                           (let ((_e1315213183_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl1315113180_)))
                     (let ((_hd1315313187_ (##car _e1315213183_))
                           (_tl1315413190_ (##cdr _e1315213183_)))
                       (if (gx#stx-pair? _tl1315413190_)
                           (let ((_e1315513193_ (gx#syntax-e _tl1315413190_)))
                             (let ((_hd1315613197_ (##car _e1315513193_))
                                   (_tl1315713200_ (##cdr _e1315513193_)))
                               (if (gx#stx-pair? _tl1315713200_)
                                   (let ((_e1315813203_
                                          (gx#syntax-e _tl1315713200_)))
                                     (let ((_hd1315913207_
                                            (##car _e1315813203_))
                                           (_tl1316013210_
                                            (##cdr _e1315813203_)))
                                       (if (gx#stx-null? _tl1316013210_)
                                           ((lambda (_L13213_
                                                     _L13215_
                                                     _L13216_
                                                     _L13217_)
                                              (let ()
                                                (let ((_g1324013248_
                                                       (lambda (_g1324113244_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1324113244_))))
                                                  (let ((_g1323913908_
                                                         (lambda (_g1324113252_)
                                                           ((lambda (_L13255_)
                                                              (let ()
                                                                (let ((_g1326813276_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g1326913272_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1326913272_))))
                          (let ((_g1326713900_
                                 (lambda (_g1326913280_)
                                   ((lambda (_L13283_)
                                      (let ()
                                        (let ((_g1329613304_
                                               (lambda (_g1329713300_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1329713300_))))
                                          (let ((_g1329513892_
                                                 (lambda (_g1329713308_)
                                                   ((lambda (_L13311_)
                                                      (let ()
                                                        (let ((_g1332413332_
                                                               (lambda (_g1332513328_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1332513328_))))
                  (let ((_g1332313888_
                         (lambda (_g1332513336_)
                           ((lambda (_L13339_)
                              (let ()
                                (let ((_g1335213360_
                                       (lambda (_g1335313356_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1335313356_))))
                                  (let ((_g1335113688_
                                         (lambda (_g1335313364_)
                                           ((lambda (_L13367_)
                                              (let ()
                                                (let ((_g1338013388_
                                                       (lambda (_g1338113384_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1338113384_))))
                                                  (let ((_g1337913684_
                                                         (lambda (_g1338113392_)
                                                           ((lambda (_L13395_)
                                                              (let ()
                                                                (let ((_g1340813416_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g1340913412_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1340913412_))))
                          (let ((_g1340713680_
                                 (lambda (_g1340913420_)
                                   ((lambda (_L13423_)
                                      (let ()
                                        (let ((_g1343613444_
                                               (lambda (_g1343713440_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1343713440_))))
                                          (let ((_g1343513676_
                                                 (lambda (_g1343713448_)
                                                   ((lambda (_L13451_)
                                                      (let ()
                                                        (let ((_g1346413490_
                                                               (lambda (_g1346513486_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1346513486_))))
                  (let ((_g1346313588_
                         (lambda (_g1346513494_)
                           (if (gx#stx-pair/null? _g1346513494_)
                               (if (fx>= (gx#stx-length _g1346513494_) '0)
                                   (let ((_g29413_
                                          (gx#syntax-split-splice
                                           _g1346513494_
                                           '0)))
                                     (begin
                                       (let ((_g29414_
                                              (values-count _g29413_)))
                                         (if (not (fx= _g29414_ 2))
                                             (error "Context expects 2 values"
                                                    _g29414_)))
                                       (let ((_target1346813497_
                                              (values-ref _g29413_ 0))
                                             (_tl1347013500_
                                              (values-ref _g29413_ 1)))
                                         (if (gx#stx-null? _tl1347013500_)
                                             (letrec ((_loop1347113503_
                                                       (lambda (_hd1346913507_
                                                                _def-setf1347513510_
                                                                _def-getf1347613512_)
                                                         (if (gx#stx-pair?
                                                              _hd1346913507_)
                                                             (let ((_e1347213515_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _hd1346913507_)))
                       (let ((_lp-hd1347313519_ (##car _e1347213515_))
                             (_lp-tl1347413522_ (##cdr _e1347213515_)))
                         (if (gx#stx-pair? _lp-hd1347313519_)
                             (let ((_e1347913525_
                                    (gx#syntax-e _lp-hd1347313519_)))
                               (let ((_hd1348013529_ (##car _e1347913525_))
                                     (_tl1348113532_ (##cdr _e1347913525_)))
                                 (if (gx#stx-pair? _tl1348113532_)
                                     (let ((_e1348213535_
                                            (gx#syntax-e _tl1348113532_)))
                                       (let ((_hd1348313539_
                                              (##car _e1348213535_))
                                             (_tl1348413542_
                                              (##cdr _e1348213535_)))
                                         (if (gx#stx-null? _tl1348413542_)
                                             (_loop1347113503_
                                              _lp-tl1347413522_
                                              (cons _hd1348313539_
                                                    _def-setf1347513510_)
                                              (cons _hd1348013529_
                                                    _def-getf1347613512_))
                                             (_g1346413490_ _g1346513494_))))
                                     (_g1346413490_ _g1346513494_))))
                             (_g1346413490_ _g1346513494_))))
                     (let ((_def-setf1347713545_
                            (reverse _def-setf1347513510_))
                           (_def-getf1347813548_
                            (reverse _def-getf1347613512_)))
                       ((lambda (_L13551_ _L13553_)
                          (let ()
                            (let ()
                              (_wrap13010_
                               (cons (gx#datum->syntax '#f 'begin)
                                     (cons _L13395_
                                           (cons _L13451_
                                                 (cons _L13423_
                                                       (begin
                                                         '#!void
                                                         (foldr (lambda (_g1357113576_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g1357213579_)
                          (cons _g1357113576_ _g1357213579_))
                        (begin
                          '#!void
                          (foldr (lambda (_g1357313582_ _g1357413585_)
                                   (cons _g1357313582_ _g1357413585_))
                                 '()
                                 _L13551_))
                        _L13553_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        _def-setf1347713545_
                        _def-getf1347813548_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop1347113503_
                                                _target1346813497_
                                                '()
                                                '()))
                                             (_g1346413490_ _g1346513494_)))))
                                   (_g1346413490_ _g1346513494_))
                               (_g1346413490_ _g1346513494_)))))
                    (_g1346313588_
                     (gx#stx-map
                      (lambda (_ref13592_)
                        (let ((_g1359513614_
                               (lambda (_g1359613610_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1359613610_))))
                          (let ((_g1359413672_
                                 (lambda (_g1359613618_)
                                   (if (gx#stx-pair? _g1359613618_)
                                       (let ((_e1360013621_
                                              (gx#syntax-e _g1359613618_)))
                                         (let ((_hd1360113625_
                                                (##car _e1360013621_))
                                               (_tl1360213628_
                                                (##cdr _e1360013621_)))
                                           (if (gx#stx-pair? _tl1360213628_)
                                               (let ((_e1360313631_
                                                      (gx#syntax-e
                                                       _tl1360213628_)))
                                                 (let ((_hd1360413635_
                                                        (##car _e1360313631_))
                                                       (_tl1360513638_
                                                        (##cdr _e1360313631_)))
                                                   (if (gx#stx-pair?
                                                        _tl1360513638_)
                                                       (let ((_e1360613641_
                                                              (gx#syntax-e
                                                               _tl1360513638_)))
                                                         (let ((_hd1360713645_
                                                                (##car _e1360613641_))
                                                               (_tl1360813648_
                                                                (##cdr _e1360613641_)))
                                                           (if (gx#stx-null?
                                                                _tl1360813648_)
                                                               ((lambda (_L13651_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L13653_
                                 _L13654_)
                          (cons (_wrap13010_
                                 (cons (gx#datum->syntax '#f 'def)
                                       (cons _L13653_
                                             (cons (cons _L13215_
                                                         (cons _L13106_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'quote)
                                   (cons _L13654_ '()))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                                (cons (_wrap13010_
                                       (cons (gx#datum->syntax '#f 'def)
                                             (cons _L13651_
                                                   (cons (cons _L13213_
                                                               (cons _L13106_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'quote)
                                         (cons _L13654_ '()))
                                   '())))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                        _hd1360713645_
                        _hd1360413635_
                        _hd1360113625_)
                       (_g1359513614_ _g1359613618_))))
               (_g1359513614_ _g1359613618_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1359513614_ _g1359613618_))))
                                       (_g1359513614_ _g1359613618_)))))
                            (_g1359413672_ _ref13592_))))
                      (if _struct?13008_
                          (gx#stx-map
                           _slotify13012_
                           _els13140_
                           (iota (gx#stx-length _els13140_)))
                          _els13140_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1343713448_))))
                                            (_g1343513676_
                                             (_wrap13010_
                                              (cons (gx#datum->syntax '#f 'def)
                                                    (cons _L13103_
                                                          (cons (cons _L13216_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _L13106_ '()))
                        '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _g1340913420_))))
                            (_g1340713680_
                             (if (gx#stx-false? _L13104_)
                                 (cons (gx#datum->syntax '#f 'begin) '())
                                 (_wrap13010_
                                  (cons (gx#datum->syntax '#f 'def)
                                        (cons (cons _L13104_
                                                    (gx#datum->syntax
                                                     '#f
                                                     '$args))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'apply)
                                                          (cons _L13217_
                                                                (cons _L13106_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#datum->syntax '#f '$args) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))))))
                    _g1338113392_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1337913684_
                                                     (_wrap13010_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'def)
                                                            (cons _L13106_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L13367_ '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g1335313364_))))
                                    (_g1335113688_
                                     (if _struct?13008_
                                         (let ((_g1369213700_
                                                (lambda (_g1369313696_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1369313696_))))
                                           (let ((_g1369113719_
                                                  (lambda (_g1369313704_)
                                                    ((lambda (_L13707_)
                                                       (let ()
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'make-struct-type)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'quote)
                                   (cons _L13255_ '()))
                             (cons _L13105_
                                   (cons _L13707_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _L13283_ '()))
                                               (cons _L13311_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _L13339_ '()))
                   '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1369313704_))))
                                             (_g1369113719_
                                              (gx#stx-length _els13140_))))
                                         (let ((_g1372313756_
                                                (lambda (_g1372413752_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1372413752_))))
                                           (let ((_g1372213884_
                                                  (lambda (_g1372413760_)
                                                    (if (gx#stx-pair?
                                                         _g1372413760_)
                                                        (let ((_e1372713763_
                                                               (gx#syntax-e
                                                                _g1372413760_)))
                                                          (let ((_hd1372813767_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1372713763_))
                        (_tl1372913770_ (##cdr _e1372713763_)))
                    (if (gx#stx-pair/null? _hd1372813767_)
                        (if (fx>= (gx#stx-length _hd1372813767_) '0)
                            (let ((_g29415_
                                   (gx#syntax-split-splice _hd1372813767_ '0)))
                              (begin
                                (let ((_g29416_ (values-count _g29415_)))
                                  (if (not (fx= _g29416_ 2))
                                      (error "Context expects 2 values"
                                             _g29416_)))
                                (let ((_target1373013773_
                                       (values-ref _g29415_ 0))
                                      (_tl1373213776_ (values-ref _g29415_ 1)))
                                  (if (gx#stx-null? _tl1373213776_)
                                      (letrec ((_loop1373313779_
                                                (lambda (_hd1373113783_
                                                         _super1373713786_)
                                                  (if (gx#stx-pair?
                                                       _hd1373113783_)
                                                      (let ((_e1373413789_
                                                             (gx#syntax-e
                                                              _hd1373113783_)))
                                                        (let ((_lp-hd1373513793_
                                                               (##car _e1373413789_))
                                                              (_lp-tl1373613796_
                                                               (##cdr _e1373413789_)))
                                                          (_loop1373313779_
                                                           _lp-tl1373613796_
                                                           (cons _lp-hd1373513793_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _super1373713786_))))
              (let ((_super1373813799_ (reverse _super1373713786_)))
                (if (gx#stx-pair? _tl1372913770_)
                    (let ((_e1373913803_ (gx#syntax-e _tl1372913770_)))
                      (let ((_hd1374013807_ (##car _e1373913803_))
                            (_tl1374113810_ (##cdr _e1373913803_)))
                        (if (gx#stx-pair/null? _hd1374013807_)
                            (if (fx>= (gx#stx-length _hd1374013807_) '0)
                                (let ((_g29417_
                                       (gx#syntax-split-splice
                                        _hd1374013807_
                                        '0)))
                                  (begin
                                    (let ((_g29418_ (values-count _g29417_)))
                                      (if (not (fx= _g29418_ 2))
                                          (error "Context expects 2 values"
                                                 _g29418_)))
                                    (let ((_target1374213813_
                                           (values-ref _g29417_ 0))
                                          (_tl1374413816_
                                           (values-ref _g29417_ 1)))
                                      (if (gx#stx-null? _tl1374413816_)
                                          (letrec ((_loop1374513819_
                                                    (lambda (_hd1374313823_
                                                             _slot1374913826_)
                                                      (if (gx#stx-pair?
                                                           _hd1374313823_)
                                                          (let ((_e1374613829_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _hd1374313823_)))
                    (let ((_lp-hd1374713833_ (##car _e1374613829_))
                          (_lp-tl1374813836_ (##cdr _e1374613829_)))
                      (_loop1374513819_
                       _lp-tl1374813836_
                       (cons _lp-hd1374713833_ _slot1374913826_))))
                  (let ((_slot1375013839_ (reverse _slot1374913826_)))
                    (if (gx#stx-null? _tl1374113810_)
                        ((lambda (_L13843_ _L13845_)
                           (let ()
                             (cons (gx#datum->syntax '#f 'make-class-type)
                                   (cons (cons (gx#datum->syntax '#f 'quote)
                                               (cons _L13255_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '@list)
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g1386713872_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1386813875_)
                        (cons _g1386713872_ _g1386813875_))
                      '()
                      _L13845_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#!void
                           (foldr (lambda (_g1386913878_ _g1387013881_)
                                    (cons _g1386913878_ _g1387013881_))
                                  '()
                                  _L13843_))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _L13283_ '()))
                   (cons _L13311_
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _L13339_ '()))
                               '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         _slot1375013839_
                         _super1373813799_)
                        (_g1372313756_ _g1372413760_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1374513819_
                                             _target1374213813_
                                             '()))
                                          (_g1372313756_ _g1372413760_)))))
                                (_g1372313756_ _g1372413760_))
                            (_g1372313756_ _g1372413760_))))
                    (_g1372313756_ _g1372413760_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1373313779_
                                         _target1373013773_
                                         '()))
                                      (_g1372313756_ _g1372413760_)))))
                            (_g1372313756_ _g1372413760_))
                        (_g1372313756_ _g1372413760_))))
                (_g1372313756_ _g1372413760_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1372213884_
                                              (list _L13105_
                                                    (gx#stx-map
                                                     gx#stx-car
                                                     _els13140_)))))))))))
                            _g1332513336_))))
                    (_g1332313888_ (gx#stx-getq 'constructor: _L13101_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1329713308_))))
                                            (_g1329513892_
                                             (let ((_$e13896_
                                                    (gx#stx-getq
                                                     'plist:
                                                     _L13101_)))
                                               (if _$e13896_
                                                   _$e13896_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '@list)
                                                         '()))))))))
                                    _g1326913280_))))
                            (_g1326713900_
                             (let ((_$e13904_ (gx#stx-getq 'name: _L13101_)))
                               (if _$e13904_ _$e13904_ _L13106_)))))))
                    _g1324113252_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1323913908_
                                                     (let ((_$e13912_
                                                            (gx#stx-getq
                                                             'id:
                                                             _L13101_)))
                                                       (if _$e13912_
                                                           _$e13912_
                                                           (if (gx#module-context?
                                                                (gx#current-expander-context))
                                                               (_module-type-id13015_
                                                                _L13106_)
                                                               (gx#genident
                                                                _L13106_)))))))))
                                            _hd1315913207_
                                            _hd1315613197_
                                            _hd1315313187_
                                            _hd1315013177_)
                                           (_g1314313166_ _g1314413170_))))
                                   (_g1314313166_ _g1314413170_))))
                           (_g1314313166_ _g1314413170_))))
                   (_g1314313166_ _g1314413170_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1314313166_
                                                    _g1314413170_)))))
                                        (_g1314213916_
                                         (if _struct?13008_
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
                                  (_g1301713044_ _g1301813048_)))
                            _tl1303813098_
                            _hd1303713095_
                            _hd1303413085_
                            _hd1303113075_
                            _hd1302813065_)))
                       (_g1301713044_ _g1301813048_))))
               (_g1301713044_ _g1301813048_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1301713044_ _g1301813048_))))
                                       (_g1301713044_ _g1301813048_))))
                               (_g1301713044_ _g1301813048_)))))
                    (_g1301613920_ _stx13006_))))))))))
  (define |gerbil/core::<MOP>::<MOP:1>[:0:]#defstruct-type|
    (lambda (_stx14015_)
      (|gerbil/core::<MOP>::<MOP:1>[1]#generate-typedef| _stx14015_ '#t)))
  (define |gerbil/core::<MOP>::<MOP:1>[:0:]#defclass-type|
    (lambda (_stx14018_)
      (|gerbil/core::<MOP>::<MOP:1>[1]#generate-typedef| _stx14018_ '#f))))
