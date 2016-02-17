(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<MOP>::<MOP:1>[1]#generate-typedef|
    (lambda (_stx12811_ _struct?12813_)
      (let ((_wrap12815_
             (lambda (_e-stx13814_)
               (gx#stx-wrap-source _e-stx13814_ (gx#stx-source _stx12811_)))))
        (let ((_slotify12817_
               (lambda (_field13748_ _off13750_)
                 (let ((_g1375213767_
                        (lambda (_g1375313763_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1375313763_))))
                   (let ((_g1375113810_
                          (lambda (_g1375313771_)
                            (if (gx#stx-pair? _g1375313771_)
                                (let ((_e1375613774_
                                       (gx#syntax-e _g1375313771_)))
                                  (let ((_hd1375713778_ (##car _e1375613774_))
                                        (_tl1375813781_ (##cdr _e1375613774_)))
                                    (if (gx#stx-pair? _tl1375813781_)
                                        (let ((_e1375913784_
                                               (gx#syntax-e _tl1375813781_)))
                                          (let ((_hd1376013788_
                                                 (##car _e1375913784_))
                                                (_tl1376113791_
                                                 (##cdr _e1375913784_)))
                                            (if (gx#stx-null? _tl1376113791_)
                                                ((lambda (_L13794_ _L13796_)
                                                   (cons _off13750_
                                                         (cons _L13796_
                                                               (cons _L13794_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1376013788_
                                                 _hd1375713778_)
                                                (_g1375213767_
                                                 _g1375313771_))))
                                        (_g1375213767_ _g1375313771_))))
                                (_g1375213767_ _g1375313771_)))))
                     (_g1375113810_ _field13748_))))))
          (let ((_struct-opt?12818_
                 (lambda (_key13745_)
                   (memq (gx#stx-e _key13745_)
                         '(fields: id: name: plist: constructor:)))))
            (let ((_class-opt?12819_
                   (lambda (_key13742_)
                     (memq (gx#stx-e _key13742_)
                           '(slots: id: name: plist: constructor:)))))
              (let ((_module-type-id12820_
                     (lambda (_type-t13729_)
                       (let ((_$e13732_
                              (gx#module-context-ns
                               (gx#current-expander-context))))
                         (if _$e13732_
                             ((lambda (_ns13736_)
                                (gx#stx-identifier
                                 _type-t13729_
                                 _ns13736_
                                 '"#"
                                 _type-t13729_))
                              _$e13732_)
                             (let ((_mid13739_
                                    (gx#expander-context-id _type-t13729_)))
                               (gx#stx-identifier
                                _type-t13729_
                                _mid13739_
                                '"#"
                                _type-t13729_)))))))
                (let ((_g1282212849_
                       (lambda (_g1282312845_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1282312845_))))
                  (let ((_g1282113725_
                         (lambda (_g1282312853_)
                           (if (gx#stx-pair? _g1282312853_)
                               (let ((_e1282912856_
                                      (gx#syntax-e _g1282312853_)))
                                 (let ((_hd1283012860_ (##car _e1282912856_))
                                       (_tl1283112863_ (##cdr _e1282912856_)))
                                   (if (gx#stx-pair? _tl1283112863_)
                                       (let ((_e1283212866_
                                              (gx#syntax-e _tl1283112863_)))
                                         (let ((_hd1283312870_
                                                (##car _e1283212866_))
                                               (_tl1283412873_
                                                (##cdr _e1283212866_)))
                                           (if (gx#stx-pair? _tl1283412873_)
                                               (let ((_e1283512876_
                                                      (gx#syntax-e
                                                       _tl1283412873_)))
                                                 (let ((_hd1283612880_
                                                        (##car _e1283512876_))
                                                       (_tl1283712883_
                                                        (##cdr _e1283512876_)))
                                                   (if (gx#stx-pair?
                                                        _tl1283712883_)
                                                       (let ((_e1283812886_
                                                              (gx#syntax-e
                                                               _tl1283712883_)))
                                                         (let ((_hd1283912890_
                                                                (##car _e1283812886_))
                                                               (_tl1284012893_
                                                                (##cdr _e1283812886_)))
                                                           (if (gx#stx-pair?
                                                                _tl1284012893_)
                                                               (let ((_e1284112896_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl1284012893_)))
                         (let ((_hd1284212900_ (##car _e1284112896_))
                               (_tl1284312903_ (##cdr _e1284112896_)))
                           ((lambda (_L12906_
                                     _L12908_
                                     _L12909_
                                     _L12910_
                                     _L12911_)
                              (if (if (gx#identifier? _L12911_)
                                      (if (let ((_$e12937_
                                                 (gx#identifier? _L12909_)))
                                            (if _$e12937_
                                                _$e12937_
                                                (gx#stx-false? _L12909_)))
                                          (if (gx#identifier? _L12908_)
                                              (gx#stx-plist?
                                               _L12906_
                                               (if _struct?12813_
                                                   _struct-opt?12818_
                                                   _class-opt?12819_))
                                              '#f)
                                          '#f)
                                      '#f)
                                  (let ((_els12945_
                                         (let ((_$e12941_
                                                (gx#stx-getq
                                                 (if _struct?12813_
                                                     'fields:
                                                     'slots:)
                                                 _L12906_)))
                                           (if _$e12941_ _$e12941_ '()))))
                                    (let ((_g1294812971_
                                           (lambda (_g1294912967_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1294912967_))))
                                      (let ((_g1294713721_
                                             (lambda (_g1294912975_)
                                               (if (gx#stx-pair? _g1294912975_)
                                                   (let ((_e1295412978_
                                                          (gx#syntax-e
                                                           _g1294912975_)))
                                                     (let ((_hd1295512982_
                                                            (##car _e1295412978_))
                                                           (_tl1295612985_
                                                            (##cdr _e1295412978_)))
                                                       (if (gx#stx-pair?
                                                            _tl1295612985_)
                                                           (let ((_e1295712988_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl1295612985_)))
                     (let ((_hd1295812992_ (##car _e1295712988_))
                           (_tl1295912995_ (##cdr _e1295712988_)))
                       (if (gx#stx-pair? _tl1295912995_)
                           (let ((_e1296012998_ (gx#syntax-e _tl1295912995_)))
                             (let ((_hd1296113002_ (##car _e1296012998_))
                                   (_tl1296213005_ (##cdr _e1296012998_)))
                               (if (gx#stx-pair? _tl1296213005_)
                                   (let ((_e1296313008_
                                          (gx#syntax-e _tl1296213005_)))
                                     (let ((_hd1296413012_
                                            (##car _e1296313008_))
                                           (_tl1296513015_
                                            (##cdr _e1296313008_)))
                                       (if (gx#stx-null? _tl1296513015_)
                                           ((lambda (_L13018_
                                                     _L13020_
                                                     _L13021_
                                                     _L13022_)
                                              (let ()
                                                (let ((_g1304513053_
                                                       (lambda (_g1304613049_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1304613049_))))
                                                  (let ((_g1304413713_
                                                         (lambda (_g1304613057_)
                                                           ((lambda (_L13060_)
                                                              (let ()
                                                                (let ((_g1307313081_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g1307413077_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1307413077_))))
                          (let ((_g1307213705_
                                 (lambda (_g1307413085_)
                                   ((lambda (_L13088_)
                                      (let ()
                                        (let ((_g1310113109_
                                               (lambda (_g1310213105_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1310213105_))))
                                          (let ((_g1310013697_
                                                 (lambda (_g1310213113_)
                                                   ((lambda (_L13116_)
                                                      (let ()
                                                        (let ((_g1312913137_
                                                               (lambda (_g1313013133_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1313013133_))))
                  (let ((_g1312813693_
                         (lambda (_g1313013141_)
                           ((lambda (_L13144_)
                              (let ()
                                (let ((_g1315713165_
                                       (lambda (_g1315813161_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1315813161_))))
                                  (let ((_g1315613493_
                                         (lambda (_g1315813169_)
                                           ((lambda (_L13172_)
                                              (let ()
                                                (let ((_g1318513193_
                                                       (lambda (_g1318613189_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1318613189_))))
                                                  (let ((_g1318413489_
                                                         (lambda (_g1318613197_)
                                                           ((lambda (_L13200_)
                                                              (let ()
                                                                (let ((_g1321313221_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g1321413217_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1321413217_))))
                          (let ((_g1321213485_
                                 (lambda (_g1321413225_)
                                   ((lambda (_L13228_)
                                      (let ()
                                        (let ((_g1324113249_
                                               (lambda (_g1324213245_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1324213245_))))
                                          (let ((_g1324013481_
                                                 (lambda (_g1324213253_)
                                                   ((lambda (_L13256_)
                                                      (let ()
                                                        (let ((_g1326913295_
                                                               (lambda (_g1327013291_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1327013291_))))
                  (let ((_g1326813393_
                         (lambda (_g1327013299_)
                           (if (gx#stx-pair/null? _g1327013299_)
                               (if (fx>= (gx#stx-length _g1327013299_) '0)
                                   (let ((_g28079_
                                          (gx#syntax-split-splice
                                           _g1327013299_
                                           '0)))
                                     (begin
                                       (let ((_g28080_
                                              (values-count _g28079_)))
                                         (if (not (fx= _g28080_ 2))
                                             (error "Context expects 2 values"
                                                    _g28080_)))
                                       (let ((_target1327313302_
                                              (values-ref _g28079_ 0))
                                             (_tl1327513305_
                                              (values-ref _g28079_ 1)))
                                         (if (gx#stx-null? _tl1327513305_)
                                             (letrec ((_loop1327613308_
                                                       (lambda (_hd1327413312_
                                                                _def-setf1328013315_
                                                                _def-getf1328113317_)
                                                         (if (gx#stx-pair?
                                                              _hd1327413312_)
                                                             (let ((_e1327713320_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _hd1327413312_)))
                       (let ((_lp-hd1327813324_ (##car _e1327713320_))
                             (_lp-tl1327913327_ (##cdr _e1327713320_)))
                         (if (gx#stx-pair? _lp-hd1327813324_)
                             (let ((_e1328413330_
                                    (gx#syntax-e _lp-hd1327813324_)))
                               (let ((_hd1328513334_ (##car _e1328413330_))
                                     (_tl1328613337_ (##cdr _e1328413330_)))
                                 (if (gx#stx-pair? _tl1328613337_)
                                     (let ((_e1328713340_
                                            (gx#syntax-e _tl1328613337_)))
                                       (let ((_hd1328813344_
                                              (##car _e1328713340_))
                                             (_tl1328913347_
                                              (##cdr _e1328713340_)))
                                         (if (gx#stx-null? _tl1328913347_)
                                             (_loop1327613308_
                                              _lp-tl1327913327_
                                              (cons _hd1328813344_
                                                    _def-setf1328013315_)
                                              (cons _hd1328513334_
                                                    _def-getf1328113317_))
                                             (_g1326913295_ _g1327013299_))))
                                     (_g1326913295_ _g1327013299_))))
                             (_g1326913295_ _g1327013299_))))
                     (let ((_def-setf1328213350_
                            (reverse _def-setf1328013315_))
                           (_def-getf1328313353_
                            (reverse _def-getf1328113317_)))
                       ((lambda (_L13356_ _L13358_)
                          (let ()
                            (let ()
                              (_wrap12815_
                               (cons (gx#datum->syntax '#f 'begin)
                                     (cons _L13200_
                                           (cons _L13256_
                                                 (cons _L13228_
                                                       (begin
                                                         '#!void
                                                         (foldr (lambda (_g1337613381_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g1337713384_)
                          (cons _g1337613381_ _g1337713384_))
                        (begin
                          '#!void
                          (foldr (lambda (_g1337813387_ _g1337913390_)
                                   (cons _g1337813387_ _g1337913390_))
                                 '()
                                 _L13356_))
                        _L13358_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        _def-setf1328213350_
                        _def-getf1328313353_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop1327613308_
                                                _target1327313302_
                                                '()
                                                '()))
                                             (_g1326913295_ _g1327013299_)))))
                                   (_g1326913295_ _g1327013299_))
                               (_g1326913295_ _g1327013299_)))))
                    (_g1326813393_
                     (gx#stx-map
                      (lambda (_ref13397_)
                        (let ((_g1340013419_
                               (lambda (_g1340113415_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1340113415_))))
                          (let ((_g1339913477_
                                 (lambda (_g1340113423_)
                                   (if (gx#stx-pair? _g1340113423_)
                                       (let ((_e1340513426_
                                              (gx#syntax-e _g1340113423_)))
                                         (let ((_hd1340613430_
                                                (##car _e1340513426_))
                                               (_tl1340713433_
                                                (##cdr _e1340513426_)))
                                           (if (gx#stx-pair? _tl1340713433_)
                                               (let ((_e1340813436_
                                                      (gx#syntax-e
                                                       _tl1340713433_)))
                                                 (let ((_hd1340913440_
                                                        (##car _e1340813436_))
                                                       (_tl1341013443_
                                                        (##cdr _e1340813436_)))
                                                   (if (gx#stx-pair?
                                                        _tl1341013443_)
                                                       (let ((_e1341113446_
                                                              (gx#syntax-e
                                                               _tl1341013443_)))
                                                         (let ((_hd1341213450_
                                                                (##car _e1341113446_))
                                                               (_tl1341313453_
                                                                (##cdr _e1341113446_)))
                                                           (if (gx#stx-null?
                                                                _tl1341313453_)
                                                               ((lambda (_L13456_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L13458_
                                 _L13459_)
                          (cons (_wrap12815_
                                 (cons (gx#datum->syntax '#f 'def)
                                       (cons _L13458_
                                             (cons (cons _L13020_
                                                         (cons _L12911_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'quote)
                                   (cons _L13459_ '()))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                                (cons (_wrap12815_
                                       (cons (gx#datum->syntax '#f 'def)
                                             (cons _L13456_
                                                   (cons (cons _L13018_
                                                               (cons _L12911_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'quote)
                                         (cons _L13459_ '()))
                                   '())))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                        _hd1341213450_
                        _hd1340913440_
                        _hd1340613430_)
                       (_g1340013419_ _g1340113423_))))
               (_g1340013419_ _g1340113423_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1340013419_ _g1340113423_))))
                                       (_g1340013419_ _g1340113423_)))))
                            (_g1339913477_ _ref13397_))))
                      (if _struct?12813_
                          (gx#stx-map
                           _slotify12817_
                           _els12945_
                           (iota (gx#stx-length _els12945_)))
                          _els12945_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1324213253_))))
                                            (_g1324013481_
                                             (_wrap12815_
                                              (cons (gx#datum->syntax '#f 'def)
                                                    (cons _L12908_
                                                          (cons (cons _L13021_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _L12911_ '()))
                        '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _g1321413225_))))
                            (_g1321213485_
                             (if (gx#stx-false? _L12909_)
                                 (cons (gx#datum->syntax '#f 'begin) '())
                                 (_wrap12815_
                                  (cons (gx#datum->syntax '#f 'def)
                                        (cons (cons _L12909_
                                                    (gx#datum->syntax
                                                     '#f
                                                     '$args))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'apply)
                                                          (cons _L13022_
                                                                (cons _L12911_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#datum->syntax '#f '$args) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))))))
                    _g1318613197_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1318413489_
                                                     (_wrap12815_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'def)
                                                            (cons _L12911_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L13172_ '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g1315813169_))))
                                    (_g1315613493_
                                     (if _struct?12813_
                                         (let ((_g1349713505_
                                                (lambda (_g1349813501_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1349813501_))))
                                           (let ((_g1349613524_
                                                  (lambda (_g1349813509_)
                                                    ((lambda (_L13512_)
                                                       (let ()
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'make-struct-type)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'quote)
                                   (cons _L13060_ '()))
                             (cons _L12910_
                                   (cons _L13512_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _L13088_ '()))
                                               (cons _L13116_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _L13144_ '()))
                   '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1349813509_))))
                                             (_g1349613524_
                                              (gx#stx-length _els12945_))))
                                         (let ((_g1352813561_
                                                (lambda (_g1352913557_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1352913557_))))
                                           (let ((_g1352713689_
                                                  (lambda (_g1352913565_)
                                                    (if (gx#stx-pair?
                                                         _g1352913565_)
                                                        (let ((_e1353213568_
                                                               (gx#syntax-e
                                                                _g1352913565_)))
                                                          (let ((_hd1353313572_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1353213568_))
                        (_tl1353413575_ (##cdr _e1353213568_)))
                    (if (gx#stx-pair/null? _hd1353313572_)
                        (if (fx>= (gx#stx-length _hd1353313572_) '0)
                            (let ((_g28081_
                                   (gx#syntax-split-splice _hd1353313572_ '0)))
                              (begin
                                (let ((_g28082_ (values-count _g28081_)))
                                  (if (not (fx= _g28082_ 2))
                                      (error "Context expects 2 values"
                                             _g28082_)))
                                (let ((_target1353513578_
                                       (values-ref _g28081_ 0))
                                      (_tl1353713581_ (values-ref _g28081_ 1)))
                                  (if (gx#stx-null? _tl1353713581_)
                                      (letrec ((_loop1353813584_
                                                (lambda (_hd1353613588_
                                                         _super1354213591_)
                                                  (if (gx#stx-pair?
                                                       _hd1353613588_)
                                                      (let ((_e1353913594_
                                                             (gx#syntax-e
                                                              _hd1353613588_)))
                                                        (let ((_lp-hd1354013598_
                                                               (##car _e1353913594_))
                                                              (_lp-tl1354113601_
                                                               (##cdr _e1353913594_)))
                                                          (_loop1353813584_
                                                           _lp-tl1354113601_
                                                           (cons _lp-hd1354013598_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _super1354213591_))))
              (let ((_super1354313604_ (reverse _super1354213591_)))
                (if (gx#stx-pair? _tl1353413575_)
                    (let ((_e1354413608_ (gx#syntax-e _tl1353413575_)))
                      (let ((_hd1354513612_ (##car _e1354413608_))
                            (_tl1354613615_ (##cdr _e1354413608_)))
                        (if (gx#stx-pair/null? _hd1354513612_)
                            (if (fx>= (gx#stx-length _hd1354513612_) '0)
                                (let ((_g28083_
                                       (gx#syntax-split-splice
                                        _hd1354513612_
                                        '0)))
                                  (begin
                                    (let ((_g28084_ (values-count _g28083_)))
                                      (if (not (fx= _g28084_ 2))
                                          (error "Context expects 2 values"
                                                 _g28084_)))
                                    (let ((_target1354713618_
                                           (values-ref _g28083_ 0))
                                          (_tl1354913621_
                                           (values-ref _g28083_ 1)))
                                      (if (gx#stx-null? _tl1354913621_)
                                          (letrec ((_loop1355013624_
                                                    (lambda (_hd1354813628_
                                                             _slot1355413631_)
                                                      (if (gx#stx-pair?
                                                           _hd1354813628_)
                                                          (let ((_e1355113634_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _hd1354813628_)))
                    (let ((_lp-hd1355213638_ (##car _e1355113634_))
                          (_lp-tl1355313641_ (##cdr _e1355113634_)))
                      (_loop1355013624_
                       _lp-tl1355313641_
                       (cons _lp-hd1355213638_ _slot1355413631_))))
                  (let ((_slot1355513644_ (reverse _slot1355413631_)))
                    (if (gx#stx-null? _tl1354613615_)
                        ((lambda (_L13648_ _L13650_)
                           (let ()
                             (cons (gx#datum->syntax '#f 'make-class-type)
                                   (cons (cons (gx#datum->syntax '#f 'quote)
                                               (cons _L13060_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '@list)
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g1367213677_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1367313680_)
                        (cons _g1367213677_ _g1367313680_))
                      '()
                      _L13650_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#!void
                           (foldr (lambda (_g1367413683_ _g1367513686_)
                                    (cons _g1367413683_ _g1367513686_))
                                  '()
                                  _L13648_))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _L13088_ '()))
                   (cons _L13116_
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _L13144_ '()))
                               '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         _slot1355513644_
                         _super1354313604_)
                        (_g1352813561_ _g1352913565_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1355013624_
                                             _target1354713618_
                                             '()))
                                          (_g1352813561_ _g1352913565_)))))
                                (_g1352813561_ _g1352913565_))
                            (_g1352813561_ _g1352913565_))))
                    (_g1352813561_ _g1352913565_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1353813584_
                                         _target1353513578_
                                         '()))
                                      (_g1352813561_ _g1352913565_)))))
                            (_g1352813561_ _g1352913565_))
                        (_g1352813561_ _g1352913565_))))
                (_g1352813561_ _g1352913565_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1352713689_
                                              (list _L12910_
                                                    (gx#stx-map
                                                     gx#stx-car
                                                     _els12945_)))))))))))
                            _g1313013141_))))
                    (_g1312813693_ (gx#stx-getq 'constructor: _L12906_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1310213113_))))
                                            (_g1310013697_
                                             (let ((_$e13701_
                                                    (gx#stx-getq
                                                     'plist:
                                                     _L12906_)))
                                               (if _$e13701_
                                                   _$e13701_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '@list)
                                                         '()))))))))
                                    _g1307413085_))))
                            (_g1307213705_
                             (let ((_$e13709_ (gx#stx-getq 'name: _L12906_)))
                               (if _$e13709_ _$e13709_ _L12911_)))))))
                    _g1304613057_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1304413713_
                                                     (let ((_$e13717_
                                                            (gx#stx-getq
                                                             'id:
                                                             _L12906_)))
                                                       (if _$e13717_
                                                           _$e13717_
                                                           (if (gx#module-context?
                                                                (gx#current-expander-context))
                                                               (_module-type-id12820_
                                                                _L12911_)
                                                               (gensym (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _L12911_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _hd1296413012_
                                            _hd1296113002_
                                            _hd1295812992_
                                            _hd1295512982_)
                                           (_g1294812971_ _g1294912975_))))
                                   (_g1294812971_ _g1294912975_))))
                           (_g1294812971_ _g1294912975_))))
                   (_g1294812971_ _g1294912975_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1294812971_
                                                    _g1294912975_)))))
                                        (_g1294713721_
                                         (if _struct?12813_
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
                                  (_g1282212849_ _g1282312853_)))
                            _tl1284312903_
                            _hd1284212900_
                            _hd1283912890_
                            _hd1283612880_
                            _hd1283312870_)))
                       (_g1282212849_ _g1282312853_))))
               (_g1282212849_ _g1282312853_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1282212849_ _g1282312853_))))
                                       (_g1282212849_ _g1282312853_))))
                               (_g1282212849_ _g1282312853_)))))
                    (_g1282113725_ _stx12811_))))))))))
  (define |gerbil/core::<MOP>::<MOP:1>[:0:]#defstruct-type|
    (lambda (_stx13820_)
      (|gerbil/core::<MOP>::<MOP:1>[1]#generate-typedef| _stx13820_ '#t)))
  (define |gerbil/core::<MOP>::<MOP:1>[:0:]#defclass-type|
    (lambda (_stx13823_)
      (|gerbil/core::<MOP>::<MOP:1>[1]#generate-typedef| _stx13823_ '#f))))
