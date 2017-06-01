(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<MOP>::<MOP:1>[1]#generate-typedef|
    (lambda (_stx13086_ _struct?13088_)
      (let ((_wrap13090_
             (lambda (_e-stx14089_)
               (gx#stx-wrap-source _e-stx14089_ (gx#stx-source _stx13086_)))))
        (let ((_slotify13092_
               (lambda (_field14023_ _off14025_)
                 (let ((_g1402714042_
                        (lambda (_g1402814038_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1402814038_))))
                   (let ((_g1402614085_
                          (lambda (_g1402814046_)
                            (if (gx#stx-pair? _g1402814046_)
                                (let ((_e1403114049_
                                       (gx#syntax-e _g1402814046_)))
                                  (let ((_hd1403214053_ (##car _e1403114049_))
                                        (_tl1403314056_ (##cdr _e1403114049_)))
                                    (if (gx#stx-pair? _tl1403314056_)
                                        (let ((_e1403414059_
                                               (gx#syntax-e _tl1403314056_)))
                                          (let ((_hd1403514063_
                                                 (##car _e1403414059_))
                                                (_tl1403614066_
                                                 (##cdr _e1403414059_)))
                                            (if (gx#stx-null? _tl1403614066_)
                                                ((lambda (_L14069_ _L14071_)
                                                   (cons _off14025_
                                                         (cons _L14071_
                                                               (cons _L14069_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1403514063_
                                                 _hd1403214053_)
                                                (_g1402714042_
                                                 _g1402814046_))))
                                        (_g1402714042_ _g1402814046_))))
                                (_g1402714042_ _g1402814046_)))))
                     (_g1402614085_ _field14023_))))))
          (let ((_struct-opt?13093_
                 (lambda (_key14020_)
                   (memq (gx#stx-e _key14020_)
                         '(fields: id: name: plist: constructor:)))))
            (let ((_class-opt?13094_
                   (lambda (_key14017_)
                     (memq (gx#stx-e _key14017_)
                           '(slots: id: name: plist: constructor:)))))
              (let ((_module-type-id13095_
                     (lambda (_type-t14004_)
                       (let ((_$e14007_
                              (gx#module-context-ns
                               (gx#current-expander-context))))
                         (if _$e14007_
                             ((lambda (_ns14011_)
                                (gx#stx-identifier
                                 _type-t14004_
                                 _ns14011_
                                 '"#"
                                 _type-t14004_))
                              _$e14007_)
                             (let ((_mid14014_
                                    (gx#expander-context-id
                                     (gx#current-expander-context))))
                               (gx#stx-identifier
                                _type-t14004_
                                _mid14014_
                                '"#"
                                _type-t14004_)))))))
                (let ((_g1309713124_
                       (lambda (_g1309813120_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1309813120_))))
                  (let ((_g1309614000_
                         (lambda (_g1309813128_)
                           (if (gx#stx-pair? _g1309813128_)
                               (let ((_e1310413131_
                                      (gx#syntax-e _g1309813128_)))
                                 (let ((_hd1310513135_ (##car _e1310413131_))
                                       (_tl1310613138_ (##cdr _e1310413131_)))
                                   (if (gx#stx-pair? _tl1310613138_)
                                       (let ((_e1310713141_
                                              (gx#syntax-e _tl1310613138_)))
                                         (let ((_hd1310813145_
                                                (##car _e1310713141_))
                                               (_tl1310913148_
                                                (##cdr _e1310713141_)))
                                           (if (gx#stx-pair? _tl1310913148_)
                                               (let ((_e1311013151_
                                                      (gx#syntax-e
                                                       _tl1310913148_)))
                                                 (let ((_hd1311113155_
                                                        (##car _e1311013151_))
                                                       (_tl1311213158_
                                                        (##cdr _e1311013151_)))
                                                   (if (gx#stx-pair?
                                                        _tl1311213158_)
                                                       (let ((_e1311313161_
                                                              (gx#syntax-e
                                                               _tl1311213158_)))
                                                         (let ((_hd1311413165_
                                                                (##car _e1311313161_))
                                                               (_tl1311513168_
                                                                (##cdr _e1311313161_)))
                                                           (if (gx#stx-pair?
                                                                _tl1311513168_)
                                                               (let ((_e1311613171_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl1311513168_)))
                         (let ((_hd1311713175_ (##car _e1311613171_))
                               (_tl1311813178_ (##cdr _e1311613171_)))
                           ((lambda (_L13181_
                                     _L13183_
                                     _L13184_
                                     _L13185_
                                     _L13186_)
                              (if (if (gx#identifier? _L13186_)
                                      (if (let ((_$e13212_
                                                 (gx#identifier? _L13184_)))
                                            (if _$e13212_
                                                _$e13212_
                                                (gx#stx-false? _L13184_)))
                                          (if (gx#identifier? _L13183_)
                                              (gx#stx-plist?
                                               _L13181_
                                               (if _struct?13088_
                                                   _struct-opt?13093_
                                                   _class-opt?13094_))
                                              '#f)
                                          '#f)
                                      '#f)
                                  (let ((_els13220_
                                         (let ((_$e13216_
                                                (gx#stx-getq
                                                 (if _struct?13088_
                                                     'fields:
                                                     'slots:)
                                                 _L13181_)))
                                           (if _$e13216_ _$e13216_ '()))))
                                    (let ((_g1322313246_
                                           (lambda (_g1322413242_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1322413242_))))
                                      (let ((_g1322213996_
                                             (lambda (_g1322413250_)
                                               (if (gx#stx-pair? _g1322413250_)
                                                   (let ((_e1322913253_
                                                          (gx#syntax-e
                                                           _g1322413250_)))
                                                     (let ((_hd1323013257_
                                                            (##car _e1322913253_))
                                                           (_tl1323113260_
                                                            (##cdr _e1322913253_)))
                                                       (if (gx#stx-pair?
                                                            _tl1323113260_)
                                                           (let ((_e1323213263_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl1323113260_)))
                     (let ((_hd1323313267_ (##car _e1323213263_))
                           (_tl1323413270_ (##cdr _e1323213263_)))
                       (if (gx#stx-pair? _tl1323413270_)
                           (let ((_e1323513273_ (gx#syntax-e _tl1323413270_)))
                             (let ((_hd1323613277_ (##car _e1323513273_))
                                   (_tl1323713280_ (##cdr _e1323513273_)))
                               (if (gx#stx-pair? _tl1323713280_)
                                   (let ((_e1323813283_
                                          (gx#syntax-e _tl1323713280_)))
                                     (let ((_hd1323913287_
                                            (##car _e1323813283_))
                                           (_tl1324013290_
                                            (##cdr _e1323813283_)))
                                       (if (gx#stx-null? _tl1324013290_)
                                           ((lambda (_L13293_
                                                     _L13295_
                                                     _L13296_
                                                     _L13297_)
                                              (let ()
                                                (let ((_g1332013328_
                                                       (lambda (_g1332113324_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1332113324_))))
                                                  (let ((_g1331913988_
                                                         (lambda (_g1332113332_)
                                                           ((lambda (_L13335_)
                                                              (let ()
                                                                (let ((_g1334813356_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g1334913352_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1334913352_))))
                          (let ((_g1334713980_
                                 (lambda (_g1334913360_)
                                   ((lambda (_L13363_)
                                      (let ()
                                        (let ((_g1337613384_
                                               (lambda (_g1337713380_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1337713380_))))
                                          (let ((_g1337513972_
                                                 (lambda (_g1337713388_)
                                                   ((lambda (_L13391_)
                                                      (let ()
                                                        (let ((_g1340413412_
                                                               (lambda (_g1340513408_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1340513408_))))
                  (let ((_g1340313968_
                         (lambda (_g1340513416_)
                           ((lambda (_L13419_)
                              (let ()
                                (let ((_g1343213440_
                                       (lambda (_g1343313436_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1343313436_))))
                                  (let ((_g1343113768_
                                         (lambda (_g1343313444_)
                                           ((lambda (_L13447_)
                                              (let ()
                                                (let ((_g1346013468_
                                                       (lambda (_g1346113464_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1346113464_))))
                                                  (let ((_g1345913764_
                                                         (lambda (_g1346113472_)
                                                           ((lambda (_L13475_)
                                                              (let ()
                                                                (let ((_g1348813496_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g1348913492_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1348913492_))))
                          (let ((_g1348713760_
                                 (lambda (_g1348913500_)
                                   ((lambda (_L13503_)
                                      (let ()
                                        (let ((_g1351613524_
                                               (lambda (_g1351713520_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1351713520_))))
                                          (let ((_g1351513756_
                                                 (lambda (_g1351713528_)
                                                   ((lambda (_L13531_)
                                                      (let ()
                                                        (let ((_g1354413570_
                                                               (lambda (_g1354513566_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1354513566_))))
                  (let ((_g1354313668_
                         (lambda (_g1354513574_)
                           (if (gx#stx-pair/null? _g1354513574_)
                               (if (fx>= (gx#stx-length _g1354513574_) '0)
                                   (let ((_g29493_
                                          (gx#syntax-split-splice
                                           _g1354513574_
                                           '0)))
                                     (begin
                                       (let ((_g29494_
                                              (values-count _g29493_)))
                                         (if (not (fx= _g29494_ 2))
                                             (error "Context expects 2 values"
                                                    _g29494_)))
                                       (let ((_target1354813577_
                                              (values-ref _g29493_ 0))
                                             (_tl1355013580_
                                              (values-ref _g29493_ 1)))
                                         (if (gx#stx-null? _tl1355013580_)
                                             (letrec ((_loop1355113583_
                                                       (lambda (_hd1354913587_
                                                                _def-setf1355513590_
                                                                _def-getf1355613592_)
                                                         (if (gx#stx-pair?
                                                              _hd1354913587_)
                                                             (let ((_e1355213595_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _hd1354913587_)))
                       (let ((_lp-hd1355313599_ (##car _e1355213595_))
                             (_lp-tl1355413602_ (##cdr _e1355213595_)))
                         (if (gx#stx-pair? _lp-hd1355313599_)
                             (let ((_e1355913605_
                                    (gx#syntax-e _lp-hd1355313599_)))
                               (let ((_hd1356013609_ (##car _e1355913605_))
                                     (_tl1356113612_ (##cdr _e1355913605_)))
                                 (if (gx#stx-pair? _tl1356113612_)
                                     (let ((_e1356213615_
                                            (gx#syntax-e _tl1356113612_)))
                                       (let ((_hd1356313619_
                                              (##car _e1356213615_))
                                             (_tl1356413622_
                                              (##cdr _e1356213615_)))
                                         (if (gx#stx-null? _tl1356413622_)
                                             (_loop1355113583_
                                              _lp-tl1355413602_
                                              (cons _hd1356313619_
                                                    _def-setf1355513590_)
                                              (cons _hd1356013609_
                                                    _def-getf1355613592_))
                                             (_g1354413570_ _g1354513574_))))
                                     (_g1354413570_ _g1354513574_))))
                             (_g1354413570_ _g1354513574_))))
                     (let ((_def-setf1355713625_
                            (reverse _def-setf1355513590_))
                           (_def-getf1355813628_
                            (reverse _def-getf1355613592_)))
                       ((lambda (_L13631_ _L13633_)
                          (let ()
                            (let ()
                              (_wrap13090_
                               (cons (gx#datum->syntax '#f 'begin)
                                     (cons _L13475_
                                           (cons _L13531_
                                                 (cons _L13503_
                                                       (begin
                                                         '#!void
                                                         (foldr (lambda (_g1365113656_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g1365213659_)
                          (cons _g1365113656_ _g1365213659_))
                        (begin
                          '#!void
                          (foldr (lambda (_g1365313662_ _g1365413665_)
                                   (cons _g1365313662_ _g1365413665_))
                                 '()
                                 _L13631_))
                        _L13633_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        _def-setf1355713625_
                        _def-getf1355813628_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop1355113583_
                                                _target1354813577_
                                                '()
                                                '()))
                                             (_g1354413570_ _g1354513574_)))))
                                   (_g1354413570_ _g1354513574_))
                               (_g1354413570_ _g1354513574_)))))
                    (_g1354313668_
                     (gx#stx-map
                      (lambda (_ref13672_)
                        (let ((_g1367513694_
                               (lambda (_g1367613690_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1367613690_))))
                          (let ((_g1367413752_
                                 (lambda (_g1367613698_)
                                   (if (gx#stx-pair? _g1367613698_)
                                       (let ((_e1368013701_
                                              (gx#syntax-e _g1367613698_)))
                                         (let ((_hd1368113705_
                                                (##car _e1368013701_))
                                               (_tl1368213708_
                                                (##cdr _e1368013701_)))
                                           (if (gx#stx-pair? _tl1368213708_)
                                               (let ((_e1368313711_
                                                      (gx#syntax-e
                                                       _tl1368213708_)))
                                                 (let ((_hd1368413715_
                                                        (##car _e1368313711_))
                                                       (_tl1368513718_
                                                        (##cdr _e1368313711_)))
                                                   (if (gx#stx-pair?
                                                        _tl1368513718_)
                                                       (let ((_e1368613721_
                                                              (gx#syntax-e
                                                               _tl1368513718_)))
                                                         (let ((_hd1368713725_
                                                                (##car _e1368613721_))
                                                               (_tl1368813728_
                                                                (##cdr _e1368613721_)))
                                                           (if (gx#stx-null?
                                                                _tl1368813728_)
                                                               ((lambda (_L13731_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L13733_
                                 _L13734_)
                          (cons (_wrap13090_
                                 (cons (gx#datum->syntax '#f 'def)
                                       (cons _L13733_
                                             (cons (cons _L13295_
                                                         (cons _L13186_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'quote)
                                   (cons _L13734_ '()))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                                (cons (_wrap13090_
                                       (cons (gx#datum->syntax '#f 'def)
                                             (cons _L13731_
                                                   (cons (cons _L13293_
                                                               (cons _L13186_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'quote)
                                         (cons _L13734_ '()))
                                   '())))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                        _hd1368713725_
                        _hd1368413715_
                        _hd1368113705_)
                       (_g1367513694_ _g1367613698_))))
               (_g1367513694_ _g1367613698_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1367513694_ _g1367613698_))))
                                       (_g1367513694_ _g1367613698_)))))
                            (_g1367413752_ _ref13672_))))
                      (if _struct?13088_
                          (gx#stx-map
                           _slotify13092_
                           _els13220_
                           (iota (gx#stx-length _els13220_)))
                          _els13220_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1351713528_))))
                                            (_g1351513756_
                                             (_wrap13090_
                                              (cons (gx#datum->syntax '#f 'def)
                                                    (cons _L13183_
                                                          (cons (cons _L13296_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _L13186_ '()))
                        '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _g1348913500_))))
                            (_g1348713760_
                             (if (gx#stx-false? _L13184_)
                                 (cons (gx#datum->syntax '#f 'begin) '())
                                 (_wrap13090_
                                  (cons (gx#datum->syntax '#f 'def)
                                        (cons (cons _L13184_
                                                    (gx#datum->syntax
                                                     '#f
                                                     '$args))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'apply)
                                                          (cons _L13297_
                                                                (cons _L13186_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#datum->syntax '#f '$args) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))))))
                    _g1346113472_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1345913764_
                                                     (_wrap13090_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'def)
                                                            (cons _L13186_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L13447_ '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g1343313444_))))
                                    (_g1343113768_
                                     (if _struct?13088_
                                         (let ((_g1377213780_
                                                (lambda (_g1377313776_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1377313776_))))
                                           (let ((_g1377113799_
                                                  (lambda (_g1377313784_)
                                                    ((lambda (_L13787_)
                                                       (let ()
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'make-struct-type)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'quote)
                                   (cons _L13335_ '()))
                             (cons _L13185_
                                   (cons _L13787_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _L13363_ '()))
                                               (cons _L13391_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _L13419_ '()))
                   '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1377313784_))))
                                             (_g1377113799_
                                              (gx#stx-length _els13220_))))
                                         (let ((_g1380313836_
                                                (lambda (_g1380413832_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1380413832_))))
                                           (let ((_g1380213964_
                                                  (lambda (_g1380413840_)
                                                    (if (gx#stx-pair?
                                                         _g1380413840_)
                                                        (let ((_e1380713843_
                                                               (gx#syntax-e
                                                                _g1380413840_)))
                                                          (let ((_hd1380813847_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1380713843_))
                        (_tl1380913850_ (##cdr _e1380713843_)))
                    (if (gx#stx-pair/null? _hd1380813847_)
                        (if (fx>= (gx#stx-length _hd1380813847_) '0)
                            (let ((_g29495_
                                   (gx#syntax-split-splice _hd1380813847_ '0)))
                              (begin
                                (let ((_g29496_ (values-count _g29495_)))
                                  (if (not (fx= _g29496_ 2))
                                      (error "Context expects 2 values"
                                             _g29496_)))
                                (let ((_target1381013853_
                                       (values-ref _g29495_ 0))
                                      (_tl1381213856_ (values-ref _g29495_ 1)))
                                  (if (gx#stx-null? _tl1381213856_)
                                      (letrec ((_loop1381313859_
                                                (lambda (_hd1381113863_
                                                         _super1381713866_)
                                                  (if (gx#stx-pair?
                                                       _hd1381113863_)
                                                      (let ((_e1381413869_
                                                             (gx#syntax-e
                                                              _hd1381113863_)))
                                                        (let ((_lp-hd1381513873_
                                                               (##car _e1381413869_))
                                                              (_lp-tl1381613876_
                                                               (##cdr _e1381413869_)))
                                                          (_loop1381313859_
                                                           _lp-tl1381613876_
                                                           (cons _lp-hd1381513873_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _super1381713866_))))
              (let ((_super1381813879_ (reverse _super1381713866_)))
                (if (gx#stx-pair? _tl1380913850_)
                    (let ((_e1381913883_ (gx#syntax-e _tl1380913850_)))
                      (let ((_hd1382013887_ (##car _e1381913883_))
                            (_tl1382113890_ (##cdr _e1381913883_)))
                        (if (gx#stx-pair/null? _hd1382013887_)
                            (if (fx>= (gx#stx-length _hd1382013887_) '0)
                                (let ((_g29497_
                                       (gx#syntax-split-splice
                                        _hd1382013887_
                                        '0)))
                                  (begin
                                    (let ((_g29498_ (values-count _g29497_)))
                                      (if (not (fx= _g29498_ 2))
                                          (error "Context expects 2 values"
                                                 _g29498_)))
                                    (let ((_target1382213893_
                                           (values-ref _g29497_ 0))
                                          (_tl1382413896_
                                           (values-ref _g29497_ 1)))
                                      (if (gx#stx-null? _tl1382413896_)
                                          (letrec ((_loop1382513899_
                                                    (lambda (_hd1382313903_
                                                             _slot1382913906_)
                                                      (if (gx#stx-pair?
                                                           _hd1382313903_)
                                                          (let ((_e1382613909_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _hd1382313903_)))
                    (let ((_lp-hd1382713913_ (##car _e1382613909_))
                          (_lp-tl1382813916_ (##cdr _e1382613909_)))
                      (_loop1382513899_
                       _lp-tl1382813916_
                       (cons _lp-hd1382713913_ _slot1382913906_))))
                  (let ((_slot1383013919_ (reverse _slot1382913906_)))
                    (if (gx#stx-null? _tl1382113890_)
                        ((lambda (_L13923_ _L13925_)
                           (let ()
                             (cons (gx#datum->syntax '#f 'make-class-type)
                                   (cons (cons (gx#datum->syntax '#f 'quote)
                                               (cons _L13335_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '@list)
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g1394713952_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1394813955_)
                        (cons _g1394713952_ _g1394813955_))
                      '()
                      _L13925_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#!void
                           (foldr (lambda (_g1394913958_ _g1395013961_)
                                    (cons _g1394913958_ _g1395013961_))
                                  '()
                                  _L13923_))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _L13363_ '()))
                   (cons _L13391_
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _L13419_ '()))
                               '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         _slot1383013919_
                         _super1381813879_)
                        (_g1380313836_ _g1380413840_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1382513899_
                                             _target1382213893_
                                             '()))
                                          (_g1380313836_ _g1380413840_)))))
                                (_g1380313836_ _g1380413840_))
                            (_g1380313836_ _g1380413840_))))
                    (_g1380313836_ _g1380413840_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1381313859_
                                         _target1381013853_
                                         '()))
                                      (_g1380313836_ _g1380413840_)))))
                            (_g1380313836_ _g1380413840_))
                        (_g1380313836_ _g1380413840_))))
                (_g1380313836_ _g1380413840_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1380213964_
                                              (list _L13185_
                                                    (gx#stx-map
                                                     gx#stx-car
                                                     _els13220_)))))))))))
                            _g1340513416_))))
                    (_g1340313968_ (gx#stx-getq 'constructor: _L13181_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1337713388_))))
                                            (_g1337513972_
                                             (let ((_$e13976_
                                                    (gx#stx-getq
                                                     'plist:
                                                     _L13181_)))
                                               (if _$e13976_
                                                   _$e13976_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '@list)
                                                         '()))))))))
                                    _g1334913360_))))
                            (_g1334713980_
                             (let ((_$e13984_ (gx#stx-getq 'name: _L13181_)))
                               (if _$e13984_ _$e13984_ _L13186_)))))))
                    _g1332113332_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1331913988_
                                                     (let ((_$e13992_
                                                            (gx#stx-getq
                                                             'id:
                                                             _L13181_)))
                                                       (if _$e13992_
                                                           _$e13992_
                                                           (if (gx#module-context?
                                                                (gx#current-expander-context))
                                                               (_module-type-id13095_
                                                                _L13186_)
                                                               (gx#genident
                                                                _L13186_)))))))))
                                            _hd1323913287_
                                            _hd1323613277_
                                            _hd1323313267_
                                            _hd1323013257_)
                                           (_g1322313246_ _g1322413250_))))
                                   (_g1322313246_ _g1322413250_))))
                           (_g1322313246_ _g1322413250_))))
                   (_g1322313246_ _g1322413250_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1322313246_
                                                    _g1322413250_)))))
                                        (_g1322213996_
                                         (if _struct?13088_
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
                                  (_g1309713124_ _g1309813128_)))
                            _tl1311813178_
                            _hd1311713175_
                            _hd1311413165_
                            _hd1311113155_
                            _hd1310813145_)))
                       (_g1309713124_ _g1309813128_))))
               (_g1309713124_ _g1309813128_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1309713124_ _g1309813128_))))
                                       (_g1309713124_ _g1309813128_))))
                               (_g1309713124_ _g1309813128_)))))
                    (_g1309614000_ _stx13086_))))))))))
  (define |gerbil/core::<MOP>::<MOP:1>[:0:]#defstruct-type|
    (lambda (_stx14095_)
      (|gerbil/core::<MOP>::<MOP:1>[1]#generate-typedef| _stx14095_ '#t)))
  (define |gerbil/core::<MOP>::<MOP:1>[:0:]#defclass-type|
    (lambda (_stx14098_)
      (|gerbil/core::<MOP>::<MOP:1>[1]#generate-typedef| _stx14098_ '#f))))
