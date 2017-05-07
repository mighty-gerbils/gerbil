(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<MOP>::<MOP:1>[1]#generate-typedef|
    (lambda (_stx12851_ _struct?12853_)
      (let ((_wrap12855_
             (lambda (_e-stx13854_)
               (gx#stx-wrap-source _e-stx13854_ (gx#stx-source _stx12851_)))))
        (let ((_slotify12857_
               (lambda (_field13788_ _off13790_)
                 (let ((_g1379213807_
                        (lambda (_g1379313803_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1379313803_))))
                   (let ((_g1379113850_
                          (lambda (_g1379313811_)
                            (if (gx#stx-pair? _g1379313811_)
                                (let ((_e1379613814_
                                       (gx#syntax-e _g1379313811_)))
                                  (let ((_hd1379713818_ (##car _e1379613814_))
                                        (_tl1379813821_ (##cdr _e1379613814_)))
                                    (if (gx#stx-pair? _tl1379813821_)
                                        (let ((_e1379913824_
                                               (gx#syntax-e _tl1379813821_)))
                                          (let ((_hd1380013828_
                                                 (##car _e1379913824_))
                                                (_tl1380113831_
                                                 (##cdr _e1379913824_)))
                                            (if (gx#stx-null? _tl1380113831_)
                                                ((lambda (_L13834_ _L13836_)
                                                   (cons _off13790_
                                                         (cons _L13836_
                                                               (cons _L13834_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1380013828_
                                                 _hd1379713818_)
                                                (_g1379213807_
                                                 _g1379313811_))))
                                        (_g1379213807_ _g1379313811_))))
                                (_g1379213807_ _g1379313811_)))))
                     (_g1379113850_ _field13788_))))))
          (let ((_struct-opt?12858_
                 (lambda (_key13785_)
                   (memq (gx#stx-e _key13785_)
                         '(fields: id: name: plist: constructor:)))))
            (let ((_class-opt?12859_
                   (lambda (_key13782_)
                     (memq (gx#stx-e _key13782_)
                           '(slots: id: name: plist: constructor:)))))
              (let ((_module-type-id12860_
                     (lambda (_type-t13769_)
                       (let ((_$e13772_
                              (gx#module-context-ns
                               (gx#current-expander-context))))
                         (if _$e13772_
                             ((lambda (_ns13776_)
                                (gx#stx-identifier
                                 _type-t13769_
                                 _ns13776_
                                 '"#"
                                 _type-t13769_))
                              _$e13772_)
                             (let ((_mid13779_
                                    (gx#expander-context-id
                                     (gx#current-expander-context))))
                               (gx#stx-identifier
                                _type-t13769_
                                _mid13779_
                                '"#"
                                _type-t13769_)))))))
                (let ((_g1286212889_
                       (lambda (_g1286312885_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1286312885_))))
                  (let ((_g1286113765_
                         (lambda (_g1286312893_)
                           (if (gx#stx-pair? _g1286312893_)
                               (let ((_e1286912896_
                                      (gx#syntax-e _g1286312893_)))
                                 (let ((_hd1287012900_ (##car _e1286912896_))
                                       (_tl1287112903_ (##cdr _e1286912896_)))
                                   (if (gx#stx-pair? _tl1287112903_)
                                       (let ((_e1287212906_
                                              (gx#syntax-e _tl1287112903_)))
                                         (let ((_hd1287312910_
                                                (##car _e1287212906_))
                                               (_tl1287412913_
                                                (##cdr _e1287212906_)))
                                           (if (gx#stx-pair? _tl1287412913_)
                                               (let ((_e1287512916_
                                                      (gx#syntax-e
                                                       _tl1287412913_)))
                                                 (let ((_hd1287612920_
                                                        (##car _e1287512916_))
                                                       (_tl1287712923_
                                                        (##cdr _e1287512916_)))
                                                   (if (gx#stx-pair?
                                                        _tl1287712923_)
                                                       (let ((_e1287812926_
                                                              (gx#syntax-e
                                                               _tl1287712923_)))
                                                         (let ((_hd1287912930_
                                                                (##car _e1287812926_))
                                                               (_tl1288012933_
                                                                (##cdr _e1287812926_)))
                                                           (if (gx#stx-pair?
                                                                _tl1288012933_)
                                                               (let ((_e1288112936_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl1288012933_)))
                         (let ((_hd1288212940_ (##car _e1288112936_))
                               (_tl1288312943_ (##cdr _e1288112936_)))
                           ((lambda (_L12946_
                                     _L12948_
                                     _L12949_
                                     _L12950_
                                     _L12951_)
                              (if (if (gx#identifier? _L12951_)
                                      (if (let ((_$e12977_
                                                 (gx#identifier? _L12949_)))
                                            (if _$e12977_
                                                _$e12977_
                                                (gx#stx-false? _L12949_)))
                                          (if (gx#identifier? _L12948_)
                                              (gx#stx-plist?
                                               _L12946_
                                               (if _struct?12853_
                                                   _struct-opt?12858_
                                                   _class-opt?12859_))
                                              '#f)
                                          '#f)
                                      '#f)
                                  (let ((_els12985_
                                         (let ((_$e12981_
                                                (gx#stx-getq
                                                 (if _struct?12853_
                                                     'fields:
                                                     'slots:)
                                                 _L12946_)))
                                           (if _$e12981_ _$e12981_ '()))))
                                    (let ((_g1298813011_
                                           (lambda (_g1298913007_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1298913007_))))
                                      (let ((_g1298713761_
                                             (lambda (_g1298913015_)
                                               (if (gx#stx-pair? _g1298913015_)
                                                   (let ((_e1299413018_
                                                          (gx#syntax-e
                                                           _g1298913015_)))
                                                     (let ((_hd1299513022_
                                                            (##car _e1299413018_))
                                                           (_tl1299613025_
                                                            (##cdr _e1299413018_)))
                                                       (if (gx#stx-pair?
                                                            _tl1299613025_)
                                                           (let ((_e1299713028_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl1299613025_)))
                     (let ((_hd1299813032_ (##car _e1299713028_))
                           (_tl1299913035_ (##cdr _e1299713028_)))
                       (if (gx#stx-pair? _tl1299913035_)
                           (let ((_e1300013038_ (gx#syntax-e _tl1299913035_)))
                             (let ((_hd1300113042_ (##car _e1300013038_))
                                   (_tl1300213045_ (##cdr _e1300013038_)))
                               (if (gx#stx-pair? _tl1300213045_)
                                   (let ((_e1300313048_
                                          (gx#syntax-e _tl1300213045_)))
                                     (let ((_hd1300413052_
                                            (##car _e1300313048_))
                                           (_tl1300513055_
                                            (##cdr _e1300313048_)))
                                       (if (gx#stx-null? _tl1300513055_)
                                           ((lambda (_L13058_
                                                     _L13060_
                                                     _L13061_
                                                     _L13062_)
                                              (let ()
                                                (let ((_g1308513093_
                                                       (lambda (_g1308613089_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1308613089_))))
                                                  (let ((_g1308413753_
                                                         (lambda (_g1308613097_)
                                                           ((lambda (_L13100_)
                                                              (let ()
                                                                (let ((_g1311313121_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g1311413117_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1311413117_))))
                          (let ((_g1311213745_
                                 (lambda (_g1311413125_)
                                   ((lambda (_L13128_)
                                      (let ()
                                        (let ((_g1314113149_
                                               (lambda (_g1314213145_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1314213145_))))
                                          (let ((_g1314013737_
                                                 (lambda (_g1314213153_)
                                                   ((lambda (_L13156_)
                                                      (let ()
                                                        (let ((_g1316913177_
                                                               (lambda (_g1317013173_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1317013173_))))
                  (let ((_g1316813733_
                         (lambda (_g1317013181_)
                           ((lambda (_L13184_)
                              (let ()
                                (let ((_g1319713205_
                                       (lambda (_g1319813201_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1319813201_))))
                                  (let ((_g1319613533_
                                         (lambda (_g1319813209_)
                                           ((lambda (_L13212_)
                                              (let ()
                                                (let ((_g1322513233_
                                                       (lambda (_g1322613229_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1322613229_))))
                                                  (let ((_g1322413529_
                                                         (lambda (_g1322613237_)
                                                           ((lambda (_L13240_)
                                                              (let ()
                                                                (let ((_g1325313261_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g1325413257_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1325413257_))))
                          (let ((_g1325213525_
                                 (lambda (_g1325413265_)
                                   ((lambda (_L13268_)
                                      (let ()
                                        (let ((_g1328113289_
                                               (lambda (_g1328213285_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1328213285_))))
                                          (let ((_g1328013521_
                                                 (lambda (_g1328213293_)
                                                   ((lambda (_L13296_)
                                                      (let ()
                                                        (let ((_g1330913335_
                                                               (lambda (_g1331013331_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1331013331_))))
                  (let ((_g1330813433_
                         (lambda (_g1331013339_)
                           (if (gx#stx-pair/null? _g1331013339_)
                               (if (fx>= (gx#stx-length _g1331013339_) '0)
                                   (let ((_g28378_
                                          (gx#syntax-split-splice
                                           _g1331013339_
                                           '0)))
                                     (begin
                                       (let ((_g28379_
                                              (values-count _g28378_)))
                                         (if (not (fx= _g28379_ 2))
                                             (error "Context expects 2 values"
                                                    _g28379_)))
                                       (let ((_target1331313342_
                                              (values-ref _g28378_ 0))
                                             (_tl1331513345_
                                              (values-ref _g28378_ 1)))
                                         (if (gx#stx-null? _tl1331513345_)
                                             (letrec ((_loop1331613348_
                                                       (lambda (_hd1331413352_
                                                                _def-setf1332013355_
                                                                _def-getf1332113357_)
                                                         (if (gx#stx-pair?
                                                              _hd1331413352_)
                                                             (let ((_e1331713360_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _hd1331413352_)))
                       (let ((_lp-hd1331813364_ (##car _e1331713360_))
                             (_lp-tl1331913367_ (##cdr _e1331713360_)))
                         (if (gx#stx-pair? _lp-hd1331813364_)
                             (let ((_e1332413370_
                                    (gx#syntax-e _lp-hd1331813364_)))
                               (let ((_hd1332513374_ (##car _e1332413370_))
                                     (_tl1332613377_ (##cdr _e1332413370_)))
                                 (if (gx#stx-pair? _tl1332613377_)
                                     (let ((_e1332713380_
                                            (gx#syntax-e _tl1332613377_)))
                                       (let ((_hd1332813384_
                                              (##car _e1332713380_))
                                             (_tl1332913387_
                                              (##cdr _e1332713380_)))
                                         (if (gx#stx-null? _tl1332913387_)
                                             (_loop1331613348_
                                              _lp-tl1331913367_
                                              (cons _hd1332813384_
                                                    _def-setf1332013355_)
                                              (cons _hd1332513374_
                                                    _def-getf1332113357_))
                                             (_g1330913335_ _g1331013339_))))
                                     (_g1330913335_ _g1331013339_))))
                             (_g1330913335_ _g1331013339_))))
                     (let ((_def-setf1332213390_
                            (reverse _def-setf1332013355_))
                           (_def-getf1332313393_
                            (reverse _def-getf1332113357_)))
                       ((lambda (_L13396_ _L13398_)
                          (let ()
                            (let ()
                              (_wrap12855_
                               (cons (gx#datum->syntax '#f 'begin)
                                     (cons _L13240_
                                           (cons _L13296_
                                                 (cons _L13268_
                                                       (begin
                                                         '#!void
                                                         (foldr (lambda (_g1341613421_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g1341713424_)
                          (cons _g1341613421_ _g1341713424_))
                        (begin
                          '#!void
                          (foldr (lambda (_g1341813427_ _g1341913430_)
                                   (cons _g1341813427_ _g1341913430_))
                                 '()
                                 _L13396_))
                        _L13398_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        _def-setf1332213390_
                        _def-getf1332313393_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop1331613348_
                                                _target1331313342_
                                                '()
                                                '()))
                                             (_g1330913335_ _g1331013339_)))))
                                   (_g1330913335_ _g1331013339_))
                               (_g1330913335_ _g1331013339_)))))
                    (_g1330813433_
                     (gx#stx-map
                      (lambda (_ref13437_)
                        (let ((_g1344013459_
                               (lambda (_g1344113455_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1344113455_))))
                          (let ((_g1343913517_
                                 (lambda (_g1344113463_)
                                   (if (gx#stx-pair? _g1344113463_)
                                       (let ((_e1344513466_
                                              (gx#syntax-e _g1344113463_)))
                                         (let ((_hd1344613470_
                                                (##car _e1344513466_))
                                               (_tl1344713473_
                                                (##cdr _e1344513466_)))
                                           (if (gx#stx-pair? _tl1344713473_)
                                               (let ((_e1344813476_
                                                      (gx#syntax-e
                                                       _tl1344713473_)))
                                                 (let ((_hd1344913480_
                                                        (##car _e1344813476_))
                                                       (_tl1345013483_
                                                        (##cdr _e1344813476_)))
                                                   (if (gx#stx-pair?
                                                        _tl1345013483_)
                                                       (let ((_e1345113486_
                                                              (gx#syntax-e
                                                               _tl1345013483_)))
                                                         (let ((_hd1345213490_
                                                                (##car _e1345113486_))
                                                               (_tl1345313493_
                                                                (##cdr _e1345113486_)))
                                                           (if (gx#stx-null?
                                                                _tl1345313493_)
                                                               ((lambda (_L13496_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L13498_
                                 _L13499_)
                          (cons (_wrap12855_
                                 (cons (gx#datum->syntax '#f 'def)
                                       (cons _L13498_
                                             (cons (cons _L13060_
                                                         (cons _L12951_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'quote)
                                   (cons _L13499_ '()))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                                (cons (_wrap12855_
                                       (cons (gx#datum->syntax '#f 'def)
                                             (cons _L13496_
                                                   (cons (cons _L13058_
                                                               (cons _L12951_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'quote)
                                         (cons _L13499_ '()))
                                   '())))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                        _hd1345213490_
                        _hd1344913480_
                        _hd1344613470_)
                       (_g1344013459_ _g1344113463_))))
               (_g1344013459_ _g1344113463_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1344013459_ _g1344113463_))))
                                       (_g1344013459_ _g1344113463_)))))
                            (_g1343913517_ _ref13437_))))
                      (if _struct?12853_
                          (gx#stx-map
                           _slotify12857_
                           _els12985_
                           (iota (gx#stx-length _els12985_)))
                          _els12985_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1328213293_))))
                                            (_g1328013521_
                                             (_wrap12855_
                                              (cons (gx#datum->syntax '#f 'def)
                                                    (cons _L12948_
                                                          (cons (cons _L13061_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _L12951_ '()))
                        '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _g1325413265_))))
                            (_g1325213525_
                             (if (gx#stx-false? _L12949_)
                                 (cons (gx#datum->syntax '#f 'begin) '())
                                 (_wrap12855_
                                  (cons (gx#datum->syntax '#f 'def)
                                        (cons (cons _L12949_
                                                    (gx#datum->syntax
                                                     '#f
                                                     '$args))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'apply)
                                                          (cons _L13062_
                                                                (cons _L12951_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#datum->syntax '#f '$args) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))))))
                    _g1322613237_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1322413529_
                                                     (_wrap12855_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'def)
                                                            (cons _L12951_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L13212_ '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g1319813209_))))
                                    (_g1319613533_
                                     (if _struct?12853_
                                         (let ((_g1353713545_
                                                (lambda (_g1353813541_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1353813541_))))
                                           (let ((_g1353613564_
                                                  (lambda (_g1353813549_)
                                                    ((lambda (_L13552_)
                                                       (let ()
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'make-struct-type)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'quote)
                                   (cons _L13100_ '()))
                             (cons _L12950_
                                   (cons _L13552_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _L13128_ '()))
                                               (cons _L13156_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _L13184_ '()))
                   '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1353813549_))))
                                             (_g1353613564_
                                              (gx#stx-length _els12985_))))
                                         (let ((_g1356813601_
                                                (lambda (_g1356913597_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1356913597_))))
                                           (let ((_g1356713729_
                                                  (lambda (_g1356913605_)
                                                    (if (gx#stx-pair?
                                                         _g1356913605_)
                                                        (let ((_e1357213608_
                                                               (gx#syntax-e
                                                                _g1356913605_)))
                                                          (let ((_hd1357313612_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1357213608_))
                        (_tl1357413615_ (##cdr _e1357213608_)))
                    (if (gx#stx-pair/null? _hd1357313612_)
                        (if (fx>= (gx#stx-length _hd1357313612_) '0)
                            (let ((_g28380_
                                   (gx#syntax-split-splice _hd1357313612_ '0)))
                              (begin
                                (let ((_g28381_ (values-count _g28380_)))
                                  (if (not (fx= _g28381_ 2))
                                      (error "Context expects 2 values"
                                             _g28381_)))
                                (let ((_target1357513618_
                                       (values-ref _g28380_ 0))
                                      (_tl1357713621_ (values-ref _g28380_ 1)))
                                  (if (gx#stx-null? _tl1357713621_)
                                      (letrec ((_loop1357813624_
                                                (lambda (_hd1357613628_
                                                         _super1358213631_)
                                                  (if (gx#stx-pair?
                                                       _hd1357613628_)
                                                      (let ((_e1357913634_
                                                             (gx#syntax-e
                                                              _hd1357613628_)))
                                                        (let ((_lp-hd1358013638_
                                                               (##car _e1357913634_))
                                                              (_lp-tl1358113641_
                                                               (##cdr _e1357913634_)))
                                                          (_loop1357813624_
                                                           _lp-tl1358113641_
                                                           (cons _lp-hd1358013638_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _super1358213631_))))
              (let ((_super1358313644_ (reverse _super1358213631_)))
                (if (gx#stx-pair? _tl1357413615_)
                    (let ((_e1358413648_ (gx#syntax-e _tl1357413615_)))
                      (let ((_hd1358513652_ (##car _e1358413648_))
                            (_tl1358613655_ (##cdr _e1358413648_)))
                        (if (gx#stx-pair/null? _hd1358513652_)
                            (if (fx>= (gx#stx-length _hd1358513652_) '0)
                                (let ((_g28382_
                                       (gx#syntax-split-splice
                                        _hd1358513652_
                                        '0)))
                                  (begin
                                    (let ((_g28383_ (values-count _g28382_)))
                                      (if (not (fx= _g28383_ 2))
                                          (error "Context expects 2 values"
                                                 _g28383_)))
                                    (let ((_target1358713658_
                                           (values-ref _g28382_ 0))
                                          (_tl1358913661_
                                           (values-ref _g28382_ 1)))
                                      (if (gx#stx-null? _tl1358913661_)
                                          (letrec ((_loop1359013664_
                                                    (lambda (_hd1358813668_
                                                             _slot1359413671_)
                                                      (if (gx#stx-pair?
                                                           _hd1358813668_)
                                                          (let ((_e1359113674_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _hd1358813668_)))
                    (let ((_lp-hd1359213678_ (##car _e1359113674_))
                          (_lp-tl1359313681_ (##cdr _e1359113674_)))
                      (_loop1359013664_
                       _lp-tl1359313681_
                       (cons _lp-hd1359213678_ _slot1359413671_))))
                  (let ((_slot1359513684_ (reverse _slot1359413671_)))
                    (if (gx#stx-null? _tl1358613655_)
                        ((lambda (_L13688_ _L13690_)
                           (let ()
                             (cons (gx#datum->syntax '#f 'make-class-type)
                                   (cons (cons (gx#datum->syntax '#f 'quote)
                                               (cons _L13100_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '@list)
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g1371213717_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1371313720_)
                        (cons _g1371213717_ _g1371313720_))
                      '()
                      _L13690_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#!void
                           (foldr (lambda (_g1371413723_ _g1371513726_)
                                    (cons _g1371413723_ _g1371513726_))
                                  '()
                                  _L13688_))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _L13128_ '()))
                   (cons _L13156_
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _L13184_ '()))
                               '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         _slot1359513684_
                         _super1358313644_)
                        (_g1356813601_ _g1356913605_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1359013664_
                                             _target1358713658_
                                             '()))
                                          (_g1356813601_ _g1356913605_)))))
                                (_g1356813601_ _g1356913605_))
                            (_g1356813601_ _g1356913605_))))
                    (_g1356813601_ _g1356913605_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1357813624_
                                         _target1357513618_
                                         '()))
                                      (_g1356813601_ _g1356913605_)))))
                            (_g1356813601_ _g1356913605_))
                        (_g1356813601_ _g1356913605_))))
                (_g1356813601_ _g1356913605_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1356713729_
                                              (list _L12950_
                                                    (gx#stx-map
                                                     gx#stx-car
                                                     _els12985_)))))))))))
                            _g1317013181_))))
                    (_g1316813733_ (gx#stx-getq 'constructor: _L12946_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1314213153_))))
                                            (_g1314013737_
                                             (let ((_$e13741_
                                                    (gx#stx-getq
                                                     'plist:
                                                     _L12946_)))
                                               (if _$e13741_
                                                   _$e13741_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '@list)
                                                         '()))))))))
                                    _g1311413125_))))
                            (_g1311213745_
                             (let ((_$e13749_ (gx#stx-getq 'name: _L12946_)))
                               (if _$e13749_ _$e13749_ _L12951_)))))))
                    _g1308613097_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1308413753_
                                                     (let ((_$e13757_
                                                            (gx#stx-getq
                                                             'id:
                                                             _L12946_)))
                                                       (if _$e13757_
                                                           _$e13757_
                                                           (if (gx#module-context?
                                                                (gx#current-expander-context))
                                                               (_module-type-id12860_
                                                                _L12951_)
                                                               (gx#genident
                                                                _L12951_)))))))))
                                            _hd1300413052_
                                            _hd1300113042_
                                            _hd1299813032_
                                            _hd1299513022_)
                                           (_g1298813011_ _g1298913015_))))
                                   (_g1298813011_ _g1298913015_))))
                           (_g1298813011_ _g1298913015_))))
                   (_g1298813011_ _g1298913015_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1298813011_
                                                    _g1298913015_)))))
                                        (_g1298713761_
                                         (if _struct?12853_
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
                                  (_g1286212889_ _g1286312893_)))
                            _tl1288312943_
                            _hd1288212940_
                            _hd1287912930_
                            _hd1287612920_
                            _hd1287312910_)))
                       (_g1286212889_ _g1286312893_))))
               (_g1286212889_ _g1286312893_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1286212889_ _g1286312893_))))
                                       (_g1286212889_ _g1286312893_))))
                               (_g1286212889_ _g1286312893_)))))
                    (_g1286113765_ _stx12851_))))))))))
  (define |gerbil/core::<MOP>::<MOP:1>[:0:]#defstruct-type|
    (lambda (_stx13860_)
      (|gerbil/core::<MOP>::<MOP:1>[1]#generate-typedef| _stx13860_ '#t)))
  (define |gerbil/core::<MOP>::<MOP:1>[:0:]#defclass-type|
    (lambda (_stx13863_)
      (|gerbil/core::<MOP>::<MOP:1>[1]#generate-typedef| _stx13863_ '#f))))
