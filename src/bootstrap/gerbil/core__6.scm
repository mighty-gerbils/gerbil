(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<MOP>::<MOP:1>[1]#generate-typedef|
    (lambda (_stx13091_ _struct?13093_)
      (let ((_wrap13095_
             (lambda (_e-stx14094_)
               (gx#stx-wrap-source _e-stx14094_ (gx#stx-source _stx13091_)))))
        (let ((_slotify13097_
               (lambda (_field14028_ _off14030_)
                 (let ((_g1403214047_
                        (lambda (_g1403314043_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1403314043_))))
                   (let ((_g1403114090_
                          (lambda (_g1403314051_)
                            (if (gx#stx-pair? _g1403314051_)
                                (let ((_e1403614054_
                                       (gx#syntax-e _g1403314051_)))
                                  (let ((_hd1403714058_ (##car _e1403614054_))
                                        (_tl1403814061_ (##cdr _e1403614054_)))
                                    (if (gx#stx-pair? _tl1403814061_)
                                        (let ((_e1403914064_
                                               (gx#syntax-e _tl1403814061_)))
                                          (let ((_hd1404014068_
                                                 (##car _e1403914064_))
                                                (_tl1404114071_
                                                 (##cdr _e1403914064_)))
                                            (if (gx#stx-null? _tl1404114071_)
                                                ((lambda (_L14074_ _L14076_)
                                                   (cons _off14030_
                                                         (cons _L14076_
                                                               (cons _L14074_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1404014068_
                                                 _hd1403714058_)
                                                (_g1403214047_
                                                 _g1403314051_))))
                                        (_g1403214047_ _g1403314051_))))
                                (_g1403214047_ _g1403314051_)))))
                     (_g1403114090_ _field14028_))))))
          (let ((_struct-opt?13098_
                 (lambda (_key14025_)
                   (memq (gx#stx-e _key14025_)
                         '(fields: id: name: plist: constructor:)))))
            (let ((_class-opt?13099_
                   (lambda (_key14022_)
                     (memq (gx#stx-e _key14022_)
                           '(slots: id: name: plist: constructor:)))))
              (let ((_module-type-id13100_
                     (lambda (_type-t14009_)
                       (let ((_$e14012_
                              (gx#module-context-ns
                               (gx#current-expander-context))))
                         (if _$e14012_
                             ((lambda (_ns14016_)
                                (gx#stx-identifier
                                 _type-t14009_
                                 _ns14016_
                                 '"#"
                                 _type-t14009_))
                              _$e14012_)
                             (let ((_mid14019_
                                    (gx#expander-context-id
                                     (gx#current-expander-context))))
                               (gx#stx-identifier
                                _type-t14009_
                                _mid14019_
                                '"#"
                                _type-t14009_)))))))
                (let ((_g1310213129_
                       (lambda (_g1310313125_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1310313125_))))
                  (let ((_g1310114005_
                         (lambda (_g1310313133_)
                           (if (gx#stx-pair? _g1310313133_)
                               (let ((_e1310913136_
                                      (gx#syntax-e _g1310313133_)))
                                 (let ((_hd1311013140_ (##car _e1310913136_))
                                       (_tl1311113143_ (##cdr _e1310913136_)))
                                   (if (gx#stx-pair? _tl1311113143_)
                                       (let ((_e1311213146_
                                              (gx#syntax-e _tl1311113143_)))
                                         (let ((_hd1311313150_
                                                (##car _e1311213146_))
                                               (_tl1311413153_
                                                (##cdr _e1311213146_)))
                                           (if (gx#stx-pair? _tl1311413153_)
                                               (let ((_e1311513156_
                                                      (gx#syntax-e
                                                       _tl1311413153_)))
                                                 (let ((_hd1311613160_
                                                        (##car _e1311513156_))
                                                       (_tl1311713163_
                                                        (##cdr _e1311513156_)))
                                                   (if (gx#stx-pair?
                                                        _tl1311713163_)
                                                       (let ((_e1311813166_
                                                              (gx#syntax-e
                                                               _tl1311713163_)))
                                                         (let ((_hd1311913170_
                                                                (##car _e1311813166_))
                                                               (_tl1312013173_
                                                                (##cdr _e1311813166_)))
                                                           (if (gx#stx-pair?
                                                                _tl1312013173_)
                                                               (let ((_e1312113176_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl1312013173_)))
                         (let ((_hd1312213180_ (##car _e1312113176_))
                               (_tl1312313183_ (##cdr _e1312113176_)))
                           ((lambda (_L13186_
                                     _L13188_
                                     _L13189_
                                     _L13190_
                                     _L13191_)
                              (if (if (gx#identifier? _L13191_)
                                      (if (let ((_$e13217_
                                                 (gx#identifier? _L13189_)))
                                            (if _$e13217_
                                                _$e13217_
                                                (gx#stx-false? _L13189_)))
                                          (if (gx#identifier? _L13188_)
                                              (gx#stx-plist?
                                               _L13186_
                                               (if _struct?13093_
                                                   _struct-opt?13098_
                                                   _class-opt?13099_))
                                              '#f)
                                          '#f)
                                      '#f)
                                  (let ((_els13225_
                                         (let ((_$e13221_
                                                (gx#stx-getq
                                                 (if _struct?13093_
                                                     'fields:
                                                     'slots:)
                                                 _L13186_)))
                                           (if _$e13221_ _$e13221_ '()))))
                                    (let ((_g1322813251_
                                           (lambda (_g1322913247_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1322913247_))))
                                      (let ((_g1322714001_
                                             (lambda (_g1322913255_)
                                               (if (gx#stx-pair? _g1322913255_)
                                                   (let ((_e1323413258_
                                                          (gx#syntax-e
                                                           _g1322913255_)))
                                                     (let ((_hd1323513262_
                                                            (##car _e1323413258_))
                                                           (_tl1323613265_
                                                            (##cdr _e1323413258_)))
                                                       (if (gx#stx-pair?
                                                            _tl1323613265_)
                                                           (let ((_e1323713268_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl1323613265_)))
                     (let ((_hd1323813272_ (##car _e1323713268_))
                           (_tl1323913275_ (##cdr _e1323713268_)))
                       (if (gx#stx-pair? _tl1323913275_)
                           (let ((_e1324013278_ (gx#syntax-e _tl1323913275_)))
                             (let ((_hd1324113282_ (##car _e1324013278_))
                                   (_tl1324213285_ (##cdr _e1324013278_)))
                               (if (gx#stx-pair? _tl1324213285_)
                                   (let ((_e1324313288_
                                          (gx#syntax-e _tl1324213285_)))
                                     (let ((_hd1324413292_
                                            (##car _e1324313288_))
                                           (_tl1324513295_
                                            (##cdr _e1324313288_)))
                                       (if (gx#stx-null? _tl1324513295_)
                                           ((lambda (_L13298_
                                                     _L13300_
                                                     _L13301_
                                                     _L13302_)
                                              (let ()
                                                (let ((_g1332513333_
                                                       (lambda (_g1332613329_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1332613329_))))
                                                  (let ((_g1332413993_
                                                         (lambda (_g1332613337_)
                                                           ((lambda (_L13340_)
                                                              (let ()
                                                                (let ((_g1335313361_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g1335413357_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1335413357_))))
                          (let ((_g1335213985_
                                 (lambda (_g1335413365_)
                                   ((lambda (_L13368_)
                                      (let ()
                                        (let ((_g1338113389_
                                               (lambda (_g1338213385_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1338213385_))))
                                          (let ((_g1338013977_
                                                 (lambda (_g1338213393_)
                                                   ((lambda (_L13396_)
                                                      (let ()
                                                        (let ((_g1340913417_
                                                               (lambda (_g1341013413_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1341013413_))))
                  (let ((_g1340813973_
                         (lambda (_g1341013421_)
                           ((lambda (_L13424_)
                              (let ()
                                (let ((_g1343713445_
                                       (lambda (_g1343813441_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1343813441_))))
                                  (let ((_g1343613773_
                                         (lambda (_g1343813449_)
                                           ((lambda (_L13452_)
                                              (let ()
                                                (let ((_g1346513473_
                                                       (lambda (_g1346613469_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1346613469_))))
                                                  (let ((_g1346413769_
                                                         (lambda (_g1346613477_)
                                                           ((lambda (_L13480_)
                                                              (let ()
                                                                (let ((_g1349313501_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g1349413497_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1349413497_))))
                          (let ((_g1349213765_
                                 (lambda (_g1349413505_)
                                   ((lambda (_L13508_)
                                      (let ()
                                        (let ((_g1352113529_
                                               (lambda (_g1352213525_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1352213525_))))
                                          (let ((_g1352013761_
                                                 (lambda (_g1352213533_)
                                                   ((lambda (_L13536_)
                                                      (let ()
                                                        (let ((_g1354913575_
                                                               (lambda (_g1355013571_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1355013571_))))
                  (let ((_g1354813673_
                         (lambda (_g1355013579_)
                           (if (gx#stx-pair/null? _g1355013579_)
                               (if (fx>= (gx#stx-length _g1355013579_) '0)
                                   (let ((_g29727_
                                          (gx#syntax-split-splice
                                           _g1355013579_
                                           '0)))
                                     (begin
                                       (let ((_g29728_
                                              (values-count _g29727_)))
                                         (if (not (fx= _g29728_ 2))
                                             (error "Context expects 2 values"
                                                    _g29728_)))
                                       (let ((_target1355313582_
                                              (values-ref _g29727_ 0))
                                             (_tl1355513585_
                                              (values-ref _g29727_ 1)))
                                         (if (gx#stx-null? _tl1355513585_)
                                             (letrec ((_loop1355613588_
                                                       (lambda (_hd1355413592_
                                                                _def-setf1356013595_
                                                                _def-getf1356113597_)
                                                         (if (gx#stx-pair?
                                                              _hd1355413592_)
                                                             (let ((_e1355713600_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _hd1355413592_)))
                       (let ((_lp-hd1355813604_ (##car _e1355713600_))
                             (_lp-tl1355913607_ (##cdr _e1355713600_)))
                         (if (gx#stx-pair? _lp-hd1355813604_)
                             (let ((_e1356413610_
                                    (gx#syntax-e _lp-hd1355813604_)))
                               (let ((_hd1356513614_ (##car _e1356413610_))
                                     (_tl1356613617_ (##cdr _e1356413610_)))
                                 (if (gx#stx-pair? _tl1356613617_)
                                     (let ((_e1356713620_
                                            (gx#syntax-e _tl1356613617_)))
                                       (let ((_hd1356813624_
                                              (##car _e1356713620_))
                                             (_tl1356913627_
                                              (##cdr _e1356713620_)))
                                         (if (gx#stx-null? _tl1356913627_)
                                             (_loop1355613588_
                                              _lp-tl1355913607_
                                              (cons _hd1356813624_
                                                    _def-setf1356013595_)
                                              (cons _hd1356513614_
                                                    _def-getf1356113597_))
                                             (_g1354913575_ _g1355013579_))))
                                     (_g1354913575_ _g1355013579_))))
                             (_g1354913575_ _g1355013579_))))
                     (let ((_def-setf1356213630_
                            (reverse _def-setf1356013595_))
                           (_def-getf1356313633_
                            (reverse _def-getf1356113597_)))
                       ((lambda (_L13636_ _L13638_)
                          (let ()
                            (let ()
                              (_wrap13095_
                               (cons (gx#datum->syntax '#f 'begin)
                                     (cons _L13480_
                                           (cons _L13536_
                                                 (cons _L13508_
                                                       (begin
                                                         '#!void
                                                         (foldr (lambda (_g1365613661_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g1365713664_)
                          (cons _g1365613661_ _g1365713664_))
                        (begin
                          '#!void
                          (foldr (lambda (_g1365813667_ _g1365913670_)
                                   (cons _g1365813667_ _g1365913670_))
                                 '()
                                 _L13636_))
                        _L13638_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        _def-setf1356213630_
                        _def-getf1356313633_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop1355613588_
                                                _target1355313582_
                                                '()
                                                '()))
                                             (_g1354913575_ _g1355013579_)))))
                                   (_g1354913575_ _g1355013579_))
                               (_g1354913575_ _g1355013579_)))))
                    (_g1354813673_
                     (gx#stx-map
                      (lambda (_ref13677_)
                        (let ((_g1368013699_
                               (lambda (_g1368113695_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1368113695_))))
                          (let ((_g1367913757_
                                 (lambda (_g1368113703_)
                                   (if (gx#stx-pair? _g1368113703_)
                                       (let ((_e1368513706_
                                              (gx#syntax-e _g1368113703_)))
                                         (let ((_hd1368613710_
                                                (##car _e1368513706_))
                                               (_tl1368713713_
                                                (##cdr _e1368513706_)))
                                           (if (gx#stx-pair? _tl1368713713_)
                                               (let ((_e1368813716_
                                                      (gx#syntax-e
                                                       _tl1368713713_)))
                                                 (let ((_hd1368913720_
                                                        (##car _e1368813716_))
                                                       (_tl1369013723_
                                                        (##cdr _e1368813716_)))
                                                   (if (gx#stx-pair?
                                                        _tl1369013723_)
                                                       (let ((_e1369113726_
                                                              (gx#syntax-e
                                                               _tl1369013723_)))
                                                         (let ((_hd1369213730_
                                                                (##car _e1369113726_))
                                                               (_tl1369313733_
                                                                (##cdr _e1369113726_)))
                                                           (if (gx#stx-null?
                                                                _tl1369313733_)
                                                               ((lambda (_L13736_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L13738_
                                 _L13739_)
                          (cons (_wrap13095_
                                 (cons (gx#datum->syntax '#f 'def)
                                       (cons _L13738_
                                             (cons (cons _L13300_
                                                         (cons _L13191_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'quote)
                                   (cons _L13739_ '()))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                                (cons (_wrap13095_
                                       (cons (gx#datum->syntax '#f 'def)
                                             (cons _L13736_
                                                   (cons (cons _L13298_
                                                               (cons _L13191_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'quote)
                                         (cons _L13739_ '()))
                                   '())))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                        _hd1369213730_
                        _hd1368913720_
                        _hd1368613710_)
                       (_g1368013699_ _g1368113703_))))
               (_g1368013699_ _g1368113703_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1368013699_ _g1368113703_))))
                                       (_g1368013699_ _g1368113703_)))))
                            (_g1367913757_ _ref13677_))))
                      (if _struct?13093_
                          (gx#stx-map
                           _slotify13097_
                           _els13225_
                           (iota (gx#stx-length _els13225_)))
                          _els13225_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1352213533_))))
                                            (_g1352013761_
                                             (_wrap13095_
                                              (cons (gx#datum->syntax '#f 'def)
                                                    (cons _L13188_
                                                          (cons (cons _L13301_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _L13191_ '()))
                        '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _g1349413505_))))
                            (_g1349213765_
                             (if (gx#stx-false? _L13189_)
                                 (cons (gx#datum->syntax '#f 'begin) '())
                                 (_wrap13095_
                                  (cons (gx#datum->syntax '#f 'def)
                                        (cons (cons _L13189_
                                                    (gx#datum->syntax
                                                     '#f
                                                     '$args))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'apply)
                                                          (cons _L13302_
                                                                (cons _L13191_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#datum->syntax '#f '$args) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))))))
                    _g1346613477_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1346413769_
                                                     (_wrap13095_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'def)
                                                            (cons _L13191_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L13452_ '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g1343813449_))))
                                    (_g1343613773_
                                     (if _struct?13093_
                                         (let ((_g1377713785_
                                                (lambda (_g1377813781_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1377813781_))))
                                           (let ((_g1377613804_
                                                  (lambda (_g1377813789_)
                                                    ((lambda (_L13792_)
                                                       (let ()
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'make-struct-type)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'quote)
                                   (cons _L13340_ '()))
                             (cons _L13190_
                                   (cons _L13792_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _L13368_ '()))
                                               (cons _L13396_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _L13424_ '()))
                   '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1377813789_))))
                                             (_g1377613804_
                                              (gx#stx-length _els13225_))))
                                         (let ((_g1380813841_
                                                (lambda (_g1380913837_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1380913837_))))
                                           (let ((_g1380713969_
                                                  (lambda (_g1380913845_)
                                                    (if (gx#stx-pair?
                                                         _g1380913845_)
                                                        (let ((_e1381213848_
                                                               (gx#syntax-e
                                                                _g1380913845_)))
                                                          (let ((_hd1381313852_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1381213848_))
                        (_tl1381413855_ (##cdr _e1381213848_)))
                    (if (gx#stx-pair/null? _hd1381313852_)
                        (if (fx>= (gx#stx-length _hd1381313852_) '0)
                            (let ((_g29729_
                                   (gx#syntax-split-splice _hd1381313852_ '0)))
                              (begin
                                (let ((_g29730_ (values-count _g29729_)))
                                  (if (not (fx= _g29730_ 2))
                                      (error "Context expects 2 values"
                                             _g29730_)))
                                (let ((_target1381513858_
                                       (values-ref _g29729_ 0))
                                      (_tl1381713861_ (values-ref _g29729_ 1)))
                                  (if (gx#stx-null? _tl1381713861_)
                                      (letrec ((_loop1381813864_
                                                (lambda (_hd1381613868_
                                                         _super1382213871_)
                                                  (if (gx#stx-pair?
                                                       _hd1381613868_)
                                                      (let ((_e1381913874_
                                                             (gx#syntax-e
                                                              _hd1381613868_)))
                                                        (let ((_lp-hd1382013878_
                                                               (##car _e1381913874_))
                                                              (_lp-tl1382113881_
                                                               (##cdr _e1381913874_)))
                                                          (_loop1381813864_
                                                           _lp-tl1382113881_
                                                           (cons _lp-hd1382013878_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _super1382213871_))))
              (let ((_super1382313884_ (reverse _super1382213871_)))
                (if (gx#stx-pair? _tl1381413855_)
                    (let ((_e1382413888_ (gx#syntax-e _tl1381413855_)))
                      (let ((_hd1382513892_ (##car _e1382413888_))
                            (_tl1382613895_ (##cdr _e1382413888_)))
                        (if (gx#stx-pair/null? _hd1382513892_)
                            (if (fx>= (gx#stx-length _hd1382513892_) '0)
                                (let ((_g29731_
                                       (gx#syntax-split-splice
                                        _hd1382513892_
                                        '0)))
                                  (begin
                                    (let ((_g29732_ (values-count _g29731_)))
                                      (if (not (fx= _g29732_ 2))
                                          (error "Context expects 2 values"
                                                 _g29732_)))
                                    (let ((_target1382713898_
                                           (values-ref _g29731_ 0))
                                          (_tl1382913901_
                                           (values-ref _g29731_ 1)))
                                      (if (gx#stx-null? _tl1382913901_)
                                          (letrec ((_loop1383013904_
                                                    (lambda (_hd1382813908_
                                                             _slot1383413911_)
                                                      (if (gx#stx-pair?
                                                           _hd1382813908_)
                                                          (let ((_e1383113914_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _hd1382813908_)))
                    (let ((_lp-hd1383213918_ (##car _e1383113914_))
                          (_lp-tl1383313921_ (##cdr _e1383113914_)))
                      (_loop1383013904_
                       _lp-tl1383313921_
                       (cons _lp-hd1383213918_ _slot1383413911_))))
                  (let ((_slot1383513924_ (reverse _slot1383413911_)))
                    (if (gx#stx-null? _tl1382613895_)
                        ((lambda (_L13928_ _L13930_)
                           (let ()
                             (cons (gx#datum->syntax '#f 'make-class-type)
                                   (cons (cons (gx#datum->syntax '#f 'quote)
                                               (cons _L13340_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '@list)
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g1395213957_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1395313960_)
                        (cons _g1395213957_ _g1395313960_))
                      '()
                      _L13930_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#!void
                           (foldr (lambda (_g1395413963_ _g1395513966_)
                                    (cons _g1395413963_ _g1395513966_))
                                  '()
                                  _L13928_))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _L13368_ '()))
                   (cons _L13396_
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _L13424_ '()))
                               '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         _slot1383513924_
                         _super1382313884_)
                        (_g1380813841_ _g1380913845_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1383013904_
                                             _target1382713898_
                                             '()))
                                          (_g1380813841_ _g1380913845_)))))
                                (_g1380813841_ _g1380913845_))
                            (_g1380813841_ _g1380913845_))))
                    (_g1380813841_ _g1380913845_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1381813864_
                                         _target1381513858_
                                         '()))
                                      (_g1380813841_ _g1380913845_)))))
                            (_g1380813841_ _g1380913845_))
                        (_g1380813841_ _g1380913845_))))
                (_g1380813841_ _g1380913845_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1380713969_
                                              (list _L13190_
                                                    (gx#stx-map
                                                     gx#stx-car
                                                     _els13225_)))))))))))
                            _g1341013421_))))
                    (_g1340813973_ (gx#stx-getq 'constructor: _L13186_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1338213393_))))
                                            (_g1338013977_
                                             (let ((_$e13981_
                                                    (gx#stx-getq
                                                     'plist:
                                                     _L13186_)))
                                               (if _$e13981_
                                                   _$e13981_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '@list)
                                                         '()))))))))
                                    _g1335413365_))))
                            (_g1335213985_
                             (let ((_$e13989_ (gx#stx-getq 'name: _L13186_)))
                               (if _$e13989_ _$e13989_ _L13191_)))))))
                    _g1332613337_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1332413993_
                                                     (let ((_$e13997_
                                                            (gx#stx-getq
                                                             'id:
                                                             _L13186_)))
                                                       (if _$e13997_
                                                           _$e13997_
                                                           (if (gx#module-context?
                                                                (gx#current-expander-context))
                                                               (_module-type-id13100_
                                                                _L13191_)
                                                               (gx#genident
                                                                _L13191_)))))))))
                                            _hd1324413292_
                                            _hd1324113282_
                                            _hd1323813272_
                                            _hd1323513262_)
                                           (_g1322813251_ _g1322913255_))))
                                   (_g1322813251_ _g1322913255_))))
                           (_g1322813251_ _g1322913255_))))
                   (_g1322813251_ _g1322913255_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1322813251_
                                                    _g1322913255_)))))
                                        (_g1322714001_
                                         (if _struct?13093_
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
                                  (_g1310213129_ _g1310313133_)))
                            _tl1312313183_
                            _hd1312213180_
                            _hd1311913170_
                            _hd1311613160_
                            _hd1311313150_)))
                       (_g1310213129_ _g1310313133_))))
               (_g1310213129_ _g1310313133_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1310213129_ _g1310313133_))))
                                       (_g1310213129_ _g1310313133_))))
                               (_g1310213129_ _g1310313133_)))))
                    (_g1310114005_ _stx13091_))))))))))
  (define |gerbil/core::<MOP>::<MOP:1>[:0:]#defstruct-type|
    (lambda (_stx14100_)
      (|gerbil/core::<MOP>::<MOP:1>[1]#generate-typedef| _stx14100_ '#t)))
  (define |gerbil/core::<MOP>::<MOP:1>[:0:]#defclass-type|
    (lambda (_stx14103_)
      (|gerbil/core::<MOP>::<MOP:1>[1]#generate-typedef| _stx14103_ '#f))))
