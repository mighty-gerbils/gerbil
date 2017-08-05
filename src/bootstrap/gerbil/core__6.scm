(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<MOP>::<MOP:1>[1]#generate-typedef|
    (lambda (_stx13091_ _struct?13093_)
      (let ((_wrap13095_
             (lambda (_e-stx14408_)
               (gx#stx-wrap-source _e-stx14408_ (gx#stx-source _stx13091_)))))
        (let ((_slotify13097_
               (lambda (_field14342_ _off14344_)
                 (let ((_g1434614361_
                        (lambda (_g1434714357_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1434714357_))))
                   (let ((_g1434514404_
                          (lambda (_g1434714365_)
                            (if (gx#stx-pair? _g1434714365_)
                                (let ((_e1435014368_
                                       (gx#syntax-e _g1434714365_)))
                                  (let ((_hd1435114372_ (##car _e1435014368_))
                                        (_tl1435214375_ (##cdr _e1435014368_)))
                                    (if (gx#stx-pair? _tl1435214375_)
                                        (let ((_e1435314378_
                                               (gx#syntax-e _tl1435214375_)))
                                          (let ((_hd1435414382_
                                                 (##car _e1435314378_))
                                                (_tl1435514385_
                                                 (##cdr _e1435314378_)))
                                            (if (gx#stx-null? _tl1435514385_)
                                                ((lambda (_L14388_ _L14390_)
                                                   (cons _off14344_
                                                         (cons _L14390_
                                                               (cons _L14388_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1435414382_
                                                 _hd1435114372_)
                                                (_g1434614361_
                                                 _g1434714365_))))
                                        (_g1434614361_ _g1434714365_))))
                                (_g1434614361_ _g1434714365_)))))
                     (_g1434514404_ _field14342_))))))
          (let ((_struct-opt?13098_
                 (lambda (_key14339_)
                   (memq (gx#stx-e _key14339_)
                         '(fields:
                           id:
                           name:
                           plist:
                           constructor:
                           unchecked:)))))
            (let ((_class-opt?13099_
                   (lambda (_key14336_)
                     (memq (gx#stx-e _key14336_)
                           '(slots:
                             id:
                             name:
                             plist:
                             constructor:
                             unchecked:)))))
              (let ((_module-type-id13100_
                     (lambda (_type-t14323_)
                       (let ((_$e14326_
                              (gx#module-context-ns
                               (gx#current-expander-context))))
                         (if _$e14326_
                             ((lambda (_ns14330_)
                                (gx#stx-identifier
                                 _type-t14323_
                                 _ns14330_
                                 '"#"
                                 _type-t14323_))
                              _$e14326_)
                             (let ((_mid14333_
                                    (gx#expander-context-id
                                     (gx#current-expander-context))))
                               (gx#stx-identifier
                                _type-t14323_
                                _mid14333_
                                '"#"
                                _type-t14323_)))))))
                (let ((_g1310213129_
                       (lambda (_g1310313125_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1310313125_))))
                  (let ((_g1310114319_
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
                                    (let ((_g1322813259_
                                           (lambda (_g1322913255_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1322913255_))))
                                      (let ((_g1322714315_
                                             (lambda (_g1322913263_)
                                               (if (gx#stx-pair? _g1322913263_)
                                                   (let ((_e1323613266_
                                                          (gx#syntax-e
                                                           _g1322913263_)))
                                                     (let ((_hd1323713270_
                                                            (##car _e1323613266_))
                                                           (_tl1323813273_
                                                            (##cdr _e1323613266_)))
                                                       (if (gx#stx-pair?
                                                            _tl1323813273_)
                                                           (let ((_e1323913276_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl1323813273_)))
                     (let ((_hd1324013280_ (##car _e1323913276_))
                           (_tl1324113283_ (##cdr _e1323913276_)))
                       (if (gx#stx-pair? _tl1324113283_)
                           (let ((_e1324213286_ (gx#syntax-e _tl1324113283_)))
                             (let ((_hd1324313290_ (##car _e1324213286_))
                                   (_tl1324413293_ (##cdr _e1324213286_)))
                               (if (gx#stx-pair? _tl1324413293_)
                                   (let ((_e1324513296_
                                          (gx#syntax-e _tl1324413293_)))
                                     (let ((_hd1324613300_
                                            (##car _e1324513296_))
                                           (_tl1324713303_
                                            (##cdr _e1324513296_)))
                                       (if (gx#stx-pair? _tl1324713303_)
                                           (let ((_e1324813306_
                                                  (gx#syntax-e
                                                   _tl1324713303_)))
                                             (let ((_hd1324913310_
                                                    (##car _e1324813306_))
                                                   (_tl1325013313_
                                                    (##cdr _e1324813306_)))
                                               (if (gx#stx-pair?
                                                    _tl1325013313_)
                                                   (let ((_e1325113316_
                                                          (gx#syntax-e
                                                           _tl1325013313_)))
                                                     (let ((_hd1325213320_
                                                            (##car _e1325113316_))
                                                           (_tl1325313323_
                                                            (##cdr _e1325113316_)))
                                                       (if (gx#stx-null?
                                                            _tl1325313323_)
                                                           ((lambda (_L13326_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L13328_
                             _L13329_
                             _L13330_
                             _L13331_
                             _L13332_)
                      (let ()
                        (let ((_g1336113369_
                               (lambda (_g1336213365_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1336213365_))))
                          (let ((_g1336014307_
                                 (lambda (_g1336213373_)
                                   ((lambda (_L13376_)
                                      (let ()
                                        (let ((_g1338913397_
                                               (lambda (_g1339013393_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1339013393_))))
                                          (let ((_g1338814299_
                                                 (lambda (_g1339013401_)
                                                   ((lambda (_L13404_)
                                                      (let ()
                                                        (let ((_g1341713425_
                                                               (lambda (_g1341813421_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1341813421_))))
                  (let ((_g1341614291_
                         (lambda (_g1341813429_)
                           ((lambda (_L13432_)
                              (let ()
                                (let ((_g1344513453_
                                       (lambda (_g1344613449_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1344613449_))))
                                  (let ((_g1344414287_
                                         (lambda (_g1344613457_)
                                           ((lambda (_L13460_)
                                              (let ()
                                                (let ((_g1347313481_
                                                       (lambda (_g1347413477_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1347413477_))))
                                                  (let ((_g1347214087_
                                                         (lambda (_g1347413485_)
                                                           ((lambda (_L13488_)
                                                              (let ()
                                                                (let ((_g1350113509_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g1350213505_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1350213505_))))
                          (let ((_g1350014083_
                                 (lambda (_g1350213513_)
                                   ((lambda (_L13516_)
                                      (let ()
                                        (let ((_g1352913537_
                                               (lambda (_g1353013533_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1353013533_))))
                                          (let ((_g1352814079_
                                                 (lambda (_g1353013541_)
                                                   ((lambda (_L13544_)
                                                      (let ()
                                                        (let ((_g1355713565_
                                                               (lambda (_g1355813561_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1355813561_))))
                  (let ((_g1355614075_
                         (lambda (_g1355813569_)
                           ((lambda (_L13572_)
                              (let ()
                                (let ((_attrs13585_
                                       (if _struct?13093_
                                           (gx#stx-map
                                            _slotify13097_
                                            _els13225_
                                            (iota (gx#stx-length _els13225_)))
                                           _els13225_)))
                                  (let ((_g1358813614_
                                         (lambda (_g1358913610_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g1358913610_))))
                                    (let ((_g1358713987_
                                           (lambda (_g1358913618_)
                                             (if (gx#stx-pair/null?
                                                  _g1358913618_)
                                                 (if (fx>= (gx#stx-length
                                                            _g1358913618_)
                                                           '0)
                                                     (let ((_g30294_
                                                            (gx#syntax-split-splice
                                                             _g1358913618_
                                                             '0)))
                                                       (begin
                                                         (let ((_g30295_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g30294_)))
                   (if (not (fx= _g30295_ 2))
                       (error "Context expects 2 values" _g30295_)))
                 (let ((_target1359213621_ (values-ref _g30294_ 0))
                       (_tl1359413624_ (values-ref _g30294_ 1)))
                   (if (gx#stx-null? _tl1359413624_)
                       (letrec ((_loop1359513627_
                                 (lambda (_hd1359313631_
                                          _def-setf1359913634_
                                          _def-getf1360013636_)
                                   (if (gx#stx-pair? _hd1359313631_)
                                       (let ((_e1359613639_
                                              (gx#syntax-e _hd1359313631_)))
                                         (let ((_lp-hd1359713643_
                                                (##car _e1359613639_))
                                               (_lp-tl1359813646_
                                                (##cdr _e1359613639_)))
                                           (if (gx#stx-pair? _lp-hd1359713643_)
                                               (let ((_e1360313649_
                                                      (gx#syntax-e
                                                       _lp-hd1359713643_)))
                                                 (let ((_hd1360413653_
                                                        (##car _e1360313649_))
                                                       (_tl1360513656_
                                                        (##cdr _e1360313649_)))
                                                   (if (gx#stx-pair?
                                                        _tl1360513656_)
                                                       (let ((_e1360613659_
                                                              (gx#syntax-e
                                                               _tl1360513656_)))
                                                         (let ((_hd1360713663_
                                                                (##car _e1360613659_))
                                                               (_tl1360813666_
                                                                (##cdr _e1360613659_)))
                                                           (if (gx#stx-null?
                                                                _tl1360813666_)
                                                               (_loop1359513627_
                                                                _lp-tl1359813646_
                                                                (cons _hd1360713663_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _def-setf1359913634_)
                        (cons _hd1360413653_ _def-getf1360013636_))
                       (_g1358813614_ _g1358913618_))))
               (_g1358813614_ _g1358913618_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1358813614_ _g1358913618_))))
                                       (let ((_def-setf1360113669_
                                              (reverse _def-setf1359913634_))
                                             (_def-getf1360213672_
                                              (reverse _def-getf1360013636_)))
                                         ((lambda (_L13675_ _L13677_)
                                            (let ()
                                              (let ((_g1369513721_
                                                     (lambda (_g1369613717_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1369613717_))))
                                                (let ((_g1369413835_
                                                       (lambda (_g1369613725_)
                                                         (if (gx#stx-pair/null?
                                                              _g1369613725_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1369613725_)
                               '0)
                         (let ((_g30296_
                                (gx#syntax-split-splice _g1369613725_ '0)))
                           (begin
                             (let ((_g30297_ (values-count _g30296_)))
                               (if (not (fx= _g30297_ 2))
                                   (error "Context expects 2 values"
                                          _g30297_)))
                             (let ((_target1369913728_ (values-ref _g30296_ 0))
                                   (_tl1370113731_ (values-ref _g30296_ 1)))
                               (if (gx#stx-null? _tl1370113731_)
                                   (letrec ((_loop1370213734_
                                             (lambda (_hd1370013738_
                                                      _def-usetf1370613741_
                                                      _def-ugetf1370713743_)
                                               (if (gx#stx-pair?
                                                    _hd1370013738_)
                                                   (let ((_e1370313746_
                                                          (gx#syntax-e
                                                           _hd1370013738_)))
                                                     (let ((_lp-hd1370413750_
                                                            (##car _e1370313746_))
                                                           (_lp-tl1370513753_
                                                            (##cdr _e1370313746_)))
                                                       (if (gx#stx-pair?
                                                            _lp-hd1370413750_)
                                                           (let ((_e1371013756_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _lp-hd1370413750_)))
                     (let ((_hd1371113760_ (##car _e1371013756_))
                           (_tl1371213763_ (##cdr _e1371013756_)))
                       (if (gx#stx-pair? _tl1371213763_)
                           (let ((_e1371313766_ (gx#syntax-e _tl1371213763_)))
                             (let ((_hd1371413770_ (##car _e1371313766_))
                                   (_tl1371513773_ (##cdr _e1371313766_)))
                               (if (gx#stx-null? _tl1371513773_)
                                   (_loop1370213734_
                                    _lp-tl1370513753_
                                    (cons _hd1371413770_ _def-usetf1370613741_)
                                    (cons _hd1371113760_
                                          _def-ugetf1370713743_))
                                   (_g1369513721_ _g1369613725_))))
                           (_g1369513721_ _g1369613725_))))
                   (_g1369513721_ _g1369613725_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_def-usetf1370813776_
                                                          (reverse _def-usetf1370613741_))
                                                         (_def-ugetf1370913779_
                                                          (reverse _def-ugetf1370713743_)))
                                                     ((lambda (_L13782_
                                                               _L13784_)
                                                        (let ()
                                                          (let ()
                                                            (_wrap13095_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           (cons _L13516_
                                 (cons _L13572_
                                       (cons _L13544_
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g1380213811_
                                                               _g1380313814_)
                                                        (cons _g1380213811_
                                                              _g1380313814_))
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g1380413817_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1380513820_)
                         (cons _g1380413817_ _g1380513820_))
                       (begin
                         '#!void
                         (foldr (lambda (_g1380613823_ _g1380713826_)
                                  (cons _g1380613823_ _g1380713826_))
                                (begin
                                  '#!void
                                  (foldr (lambda (_g1380813829_ _g1380913832_)
                                           (cons _g1380813829_ _g1380913832_))
                                         '()
                                         _L13782_))
                                _L13784_))
                       _L13675_))
              _L13677_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              _def-usetf1370813776_
              _def-ugetf1370913779_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop1370213734_
                                      _target1369913728_
                                      '()
                                      '()))
                                   (_g1369513721_ _g1369613725_)))))
                         (_g1369513721_ _g1369613725_))
                     (_g1369513721_ _g1369613725_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1369413835_
                                                   (if (gx#stx-e
                                                        (gx#stx-getq
                                                         'unchecked:
                                                         _L13186_))
                                                       (gx#stx-map
                                                        (lambda (_ref13839_)
                                                          (let ((_g1384213861_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1384313857_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1384313857_))))
                    (let ((_g1384113983_
                           (lambda (_g1384313865_)
                             (if (gx#stx-pair? _g1384313865_)
                                 (let ((_e1384713868_
                                        (gx#syntax-e _g1384313865_)))
                                   (let ((_hd1384813872_ (##car _e1384713868_))
                                         (_tl1384913875_
                                          (##cdr _e1384713868_)))
                                     (if (gx#stx-pair? _tl1384913875_)
                                         (let ((_e1385013878_
                                                (gx#syntax-e _tl1384913875_)))
                                           (let ((_hd1385113882_
                                                  (##car _e1385013878_))
                                                 (_tl1385213885_
                                                  (##cdr _e1385013878_)))
                                             (if (gx#stx-pair? _tl1385213885_)
                                                 (let ((_e1385313888_
                                                        (gx#syntax-e
                                                         _tl1385213885_)))
                                                   (let ((_hd1385413892_
                                                          (##car _e1385313888_))
                                                         (_tl1385513895_
                                                          (##cdr _e1385313888_)))
                                                     (if (gx#stx-null?
                                                          _tl1385513895_)
                                                         ((lambda (_L13898_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L13900_
                           _L13901_)
                    (let ((_g1391913934_
                           (lambda (_g1392013930_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1392013930_))))
                      (let ((_g1391813979_
                             (lambda (_g1392013938_)
                               (if (gx#stx-pair? _g1392013938_)
                                   (let ((_e1392313941_
                                          (gx#syntax-e _g1392013938_)))
                                     (let ((_hd1392413945_
                                            (##car _e1392313941_))
                                           (_tl1392513948_
                                            (##cdr _e1392313941_)))
                                       (if (gx#stx-pair? _tl1392513948_)
                                           (let ((_e1392613951_
                                                  (gx#syntax-e
                                                   _tl1392513948_)))
                                             (let ((_hd1392713955_
                                                    (##car _e1392613951_))
                                                   (_tl1392813958_
                                                    (##cdr _e1392613951_)))
                                               (if (gx#stx-null?
                                                    _tl1392813958_)
                                                   ((lambda (_L13961_ _L13963_)
                                                      (let ()
                                                        (cons (_wrap13095_
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'def)
                             (cons _L13963_
                                   (cons (cons _L13328_
                                               (cons _L13191_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _L13901_ '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                      (cons (_wrap13095_
                             (cons (gx#datum->syntax '#f 'def)
                                   (cons _L13961_
                                         (cons (cons _L13326_
                                                     (cons _L13191_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote)
                               (cons _L13901_ '()))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1392713955_
                                                    _hd1392413945_)
                                                   (_g1391913934_
                                                    _g1392013938_))))
                                           (_g1391913934_ _g1392013938_))))
                                   (_g1391913934_ _g1392013938_)))))
                        (_g1391813979_
                         (list (gx#stx-identifier _L13900_ '"&" _L13900_)
                               (gx#stx-identifier _L13898_ '"&" _L13898_))))))
                  _hd1385413892_
                  _hd1385113882_
                  _hd1384813872_)
                 (_g1384213861_ _g1384313865_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1384213861_
                                                  _g1384313865_))))
                                         (_g1384213861_ _g1384313865_))))
                                 (_g1384213861_ _g1384313865_)))))
                      (_g1384113983_ _ref13839_))))
                _attrs13585_)
               '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _def-setf1360113669_
                                          _def-getf1360213672_))))))
                         (_loop1359513627_ _target1359213621_ '() '()))
                       (_g1358813614_ _g1358913618_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1358813614_
                                                      _g1358913618_))
                                                 (_g1358813614_
                                                  _g1358913618_)))))
                                      (_g1358713987_
                                       (gx#stx-map
                                        (lambda (_ref13991_)
                                          (let ((_g1399414013_
                                                 (lambda (_g1399514009_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1399514009_))))
                                            (let ((_g1399314071_
                                                   (lambda (_g1399514017_)
                                                     (if (gx#stx-pair?
                                                          _g1399514017_)
                                                         (let ((_e1399914020_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1399514017_)))
                   (let ((_hd1400014024_ (##car _e1399914020_))
                         (_tl1400114027_ (##cdr _e1399914020_)))
                     (if (gx#stx-pair? _tl1400114027_)
                         (let ((_e1400214030_ (gx#syntax-e _tl1400114027_)))
                           (let ((_hd1400314034_ (##car _e1400214030_))
                                 (_tl1400414037_ (##cdr _e1400214030_)))
                             (if (gx#stx-pair? _tl1400414037_)
                                 (let ((_e1400514040_
                                        (gx#syntax-e _tl1400414037_)))
                                   (let ((_hd1400614044_ (##car _e1400514040_))
                                         (_tl1400714047_
                                          (##cdr _e1400514040_)))
                                     (if (gx#stx-null? _tl1400714047_)
                                         ((lambda (_L14050_ _L14052_ _L14053_)
                                            (cons (_wrap13095_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'def)
                                                         (cons _L14052_
                                                               (cons (cons _L13330_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons _L13191_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _L14053_ '()))
                                               '())))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (_wrap13095_
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'def)
                                                               (cons _L14050_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons _L13329_
                                         (cons _L13191_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons _L14053_ '()))
                                                     '())))
                                   '()))))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _hd1400614044_
                                          _hd1400314034_
                                          _hd1400014024_)
                                         (_g1399414013_ _g1399514017_))))
                                 (_g1399414013_ _g1399514017_))))
                         (_g1399414013_ _g1399514017_))))
                 (_g1399414013_ _g1399514017_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1399314071_ _ref13991_))))
                                        _attrs13585_)))))))
                            _g1355813569_))))
                    (_g1355614075_
                     (_wrap13095_
                      (cons (gx#datum->syntax '#f 'def)
                            (cons _L13188_
                                  (cons (cons _L13331_ (cons _L13191_ '()))
                                        '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1353013541_))))
                                            (_g1352814079_
                                             (if (gx#stx-false? _L13189_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin)
                                                       '())
                                                 (_wrap13095_
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'def)
                                                        (cons (cons _L13189_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f '$args))
                      (cons (cons (gx#datum->syntax '#f 'apply)
                                  (cons _L13332_
                                        (cons _L13191_
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     '$args)
                                                    '()))))
                            '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _g1350213513_))))
                            (_g1350014083_
                             (_wrap13095_
                              (cons (gx#datum->syntax '#f 'def)
                                    (cons _L13191_ (cons _L13488_ '())))))))))
                    _g1347413485_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1347214087_
                                                     (if _struct?13093_
                                                         (let ((_g1409114099_
                                                                (lambda (_g1409214095_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1409214095_))))
                   (let ((_g1409014118_
                          (lambda (_g1409214103_)
                            ((lambda (_L14106_)
                               (let ()
                                 (cons (gx#datum->syntax '#f 'make-struct-type)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _L13376_ '()))
                                             (cons _L13190_
                                                   (cons _L14106_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'quote)
                             (cons _L13404_ '()))
                       (cons _L13432_
                             (cons (cons (gx#datum->syntax '#f 'quote)
                                         (cons _L13460_ '()))
                                   '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             _g1409214103_))))
                     (_g1409014118_ (gx#stx-length _els13225_))))
                 (let ((_g1412214155_
                        (lambda (_g1412314151_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1412314151_))))
                   (let ((_g1412114283_
                          (lambda (_g1412314159_)
                            (if (gx#stx-pair? _g1412314159_)
                                (let ((_e1412614162_
                                       (gx#syntax-e _g1412314159_)))
                                  (let ((_hd1412714166_ (##car _e1412614162_))
                                        (_tl1412814169_ (##cdr _e1412614162_)))
                                    (if (gx#stx-pair/null? _hd1412714166_)
                                        (if (fx>= (gx#stx-length
                                                   _hd1412714166_)
                                                  '0)
                                            (let ((_g30298_
                                                   (gx#syntax-split-splice
                                                    _hd1412714166_
                                                    '0)))
                                              (begin
                                                (let ((_g30299_
                                                       (values-count
                                                        _g30298_)))
                                                  (if (not (fx= _g30299_ 2))
                                                      (error "Context expects 2 values"
                                                             _g30299_)))
                                                (let ((_target1412914172_
                                                       (values-ref _g30298_ 0))
                                                      (_tl1413114175_
                                                       (values-ref
                                                        _g30298_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl1413114175_)
                                                      (letrec ((_loop1413214178_
                                                                (lambda (_hd1413014182_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _super1413614185_)
                          (if (gx#stx-pair? _hd1413014182_)
                              (let ((_e1413314188_
                                     (gx#syntax-e _hd1413014182_)))
                                (let ((_lp-hd1413414192_ (##car _e1413314188_))
                                      (_lp-tl1413514195_
                                       (##cdr _e1413314188_)))
                                  (_loop1413214178_
                                   _lp-tl1413514195_
                                   (cons _lp-hd1413414192_
                                         _super1413614185_))))
                              (let ((_super1413714198_
                                     (reverse _super1413614185_)))
                                (if (gx#stx-pair? _tl1412814169_)
                                    (let ((_e1413814202_
                                           (gx#syntax-e _tl1412814169_)))
                                      (let ((_hd1413914206_
                                             (##car _e1413814202_))
                                            (_tl1414014209_
                                             (##cdr _e1413814202_)))
                                        (if (gx#stx-pair/null? _hd1413914206_)
                                            (if (fx>= (gx#stx-length
                                                       _hd1413914206_)
                                                      '0)
                                                (let ((_g30300_
                                                       (gx#syntax-split-splice
                                                        _hd1413914206_
                                                        '0)))
                                                  (begin
                                                    (let ((_g30301_
                                                           (values-count
                                                            _g30300_)))
                                                      (if (not (fx= _g30301_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g30301_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1414114212_
                                                           (values-ref
                                                            _g30300_
                                                            0))
                                                          (_tl1414314215_
                                                           (values-ref
                                                            _g30300_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl1414314215_)
                                                          (letrec ((_loop1414414218_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1414214222_ _slot1414814225_)
                              (if (gx#stx-pair? _hd1414214222_)
                                  (let ((_e1414514228_
                                         (gx#syntax-e _hd1414214222_)))
                                    (let ((_lp-hd1414614232_
                                           (##car _e1414514228_))
                                          (_lp-tl1414714235_
                                           (##cdr _e1414514228_)))
                                      (_loop1414414218_
                                       _lp-tl1414714235_
                                       (cons _lp-hd1414614232_
                                             _slot1414814225_))))
                                  (let ((_slot1414914238_
                                         (reverse _slot1414814225_)))
                                    (if (gx#stx-null? _tl1414014209_)
                                        ((lambda (_L14242_ _L14244_)
                                           (let ()
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'make-class-type)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote)
                                                               (cons _L13376_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons (gx#datum->syntax '#f '@list)
                             (begin
                               '#!void
                               (foldr (lambda (_g1426614271_ _g1426714274_)
                                        (cons _g1426614271_ _g1426714274_))
                                      '()
                                      _L14244_)))
                       (cons (cons (gx#datum->syntax '#f 'quote)
                                   (cons (begin
                                           '#!void
                                           (foldr (lambda (_g1426814277_
                                                           _g1426914280_)
                                                    (cons _g1426814277_
                                                          _g1426914280_))
                                                  '()
                                                  _L14242_))
                                         '()))
                             (cons (cons (gx#datum->syntax '#f 'quote)
                                         (cons _L13404_ '()))
                                   (cons _L13432_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _L13460_ '()))
                                               '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _slot1414914238_
                                         _super1413714198_)
                                        (_g1412214155_ _g1412314159_)))))))
                    (_loop1414414218_ _target1414114212_ '()))
                  (_g1412214155_ _g1412314159_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1412214155_ _g1412314159_))
                                            (_g1412214155_ _g1412314159_))))
                                    (_g1412214155_ _g1412314159_)))))))
                (_loop1413214178_ _target1412914172_ '()))
              (_g1412214155_ _g1412314159_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1412214155_ _g1412314159_))
                                        (_g1412214155_ _g1412314159_))))
                                (_g1412214155_ _g1412314159_)))))
                     (_g1412114283_
                      (list _L13190_
                            (gx#stx-map gx#stx-car _els13225_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g1344613457_))))
                                    (_g1344414287_
                                     (gx#stx-getq 'constructor: _L13186_))))))
                            _g1341813429_))))
                    (_g1341614291_
                     (let ((_$e14295_ (gx#stx-getq 'plist: _L13186_)))
                       (if _$e14295_
                           _$e14295_
                           (cons (gx#datum->syntax '#f '@list) '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1339013401_))))
                                            (_g1338814299_
                                             (let ((_$e14303_
                                                    (gx#stx-getq
                                                     'name:
                                                     _L13186_)))
                                               (if _$e14303_
                                                   _$e14303_
                                                   _L13191_)))))))
                                    _g1336213373_))))
                            (_g1336014307_
                             (let ((_$e14311_ (gx#stx-getq 'id: _L13186_)))
                               (if _$e14311_
                                   _$e14311_
                                   (if (gx#module-context?
                                        (gx#current-expander-context))
                                       (_module-type-id13100_ _L13191_)
                                       (gx#genident _L13191_)))))))))
                    _hd1325213320_
                    _hd1324913310_
                    _hd1324613300_
                    _hd1324313290_
                    _hd1324013280_
                    _hd1323713270_)
                   (_g1322813259_ _g1322913263_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1322813259_
                                                    _g1322913263_))))
                                           (_g1322813259_ _g1322913263_))))
                                   (_g1322813259_ _g1322913263_))))
                           (_g1322813259_ _g1322913263_))))
                   (_g1322813259_ _g1322913263_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1322813259_
                                                    _g1322913263_)))))
                                        (_g1322714315_
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
                    (_g1310114319_ _stx13091_))))))))))
  (define |gerbil/core::<MOP>::<MOP:1>[:0:]#defstruct-type|
    (lambda (_stx14415_)
      (|gerbil/core::<MOP>::<MOP:1>[1]#generate-typedef| _stx14415_ '#t)))
  (define |gerbil/core::<MOP>::<MOP:1>[:0:]#defclass-type|
    (lambda (_stx14418_)
      (|gerbil/core::<MOP>::<MOP:1>[1]#generate-typedef| _stx14418_ '#f))))
