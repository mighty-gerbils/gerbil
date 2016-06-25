(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<MOP>::<MOP:1>[1]#generate-typedef|
    (lambda (_stx12848_ _struct?12850_)
      (let ((_wrap12852_
             (lambda (_e-stx13851_)
               (gx#stx-wrap-source _e-stx13851_ (gx#stx-source _stx12848_)))))
        (let ((_slotify12854_
               (lambda (_field13785_ _off13787_)
                 (let ((_g1378913804_
                        (lambda (_g1379013800_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1379013800_))))
                   (let ((_g1378813847_
                          (lambda (_g1379013808_)
                            (if (gx#stx-pair? _g1379013808_)
                                (let ((_e1379313811_
                                       (gx#syntax-e _g1379013808_)))
                                  (let ((_hd1379413815_ (##car _e1379313811_))
                                        (_tl1379513818_ (##cdr _e1379313811_)))
                                    (if (gx#stx-pair? _tl1379513818_)
                                        (let ((_e1379613821_
                                               (gx#syntax-e _tl1379513818_)))
                                          (let ((_hd1379713825_
                                                 (##car _e1379613821_))
                                                (_tl1379813828_
                                                 (##cdr _e1379613821_)))
                                            (if (gx#stx-null? _tl1379813828_)
                                                ((lambda (_L13831_ _L13833_)
                                                   (cons _off13787_
                                                         (cons _L13833_
                                                               (cons _L13831_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1379713825_
                                                 _hd1379413815_)
                                                (_g1378913804_
                                                 _g1379013808_))))
                                        (_g1378913804_ _g1379013808_))))
                                (_g1378913804_ _g1379013808_)))))
                     (_g1378813847_ _field13785_))))))
          (let ((_struct-opt?12855_
                 (lambda (_key13782_)
                   (memq (gx#stx-e _key13782_)
                         '(fields: id: name: plist: constructor:)))))
            (let ((_class-opt?12856_
                   (lambda (_key13779_)
                     (memq (gx#stx-e _key13779_)
                           '(slots: id: name: plist: constructor:)))))
              (let ((_module-type-id12857_
                     (lambda (_type-t13766_)
                       (let ((_$e13769_
                              (gx#module-context-ns
                               (gx#current-expander-context))))
                         (if _$e13769_
                             ((lambda (_ns13773_)
                                (gx#stx-identifier
                                 _type-t13766_
                                 _ns13773_
                                 '"#"
                                 _type-t13766_))
                              _$e13769_)
                             (let ((_mid13776_
                                    (gx#expander-context-id
                                     (gx#current-expander-context))))
                               (gx#stx-identifier
                                _type-t13766_
                                _mid13776_
                                '"#"
                                _type-t13766_)))))))
                (let ((_g1285912886_
                       (lambda (_g1286012882_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1286012882_))))
                  (let ((_g1285813762_
                         (lambda (_g1286012890_)
                           (if (gx#stx-pair? _g1286012890_)
                               (let ((_e1286612893_
                                      (gx#syntax-e _g1286012890_)))
                                 (let ((_hd1286712897_ (##car _e1286612893_))
                                       (_tl1286812900_ (##cdr _e1286612893_)))
                                   (if (gx#stx-pair? _tl1286812900_)
                                       (let ((_e1286912903_
                                              (gx#syntax-e _tl1286812900_)))
                                         (let ((_hd1287012907_
                                                (##car _e1286912903_))
                                               (_tl1287112910_
                                                (##cdr _e1286912903_)))
                                           (if (gx#stx-pair? _tl1287112910_)
                                               (let ((_e1287212913_
                                                      (gx#syntax-e
                                                       _tl1287112910_)))
                                                 (let ((_hd1287312917_
                                                        (##car _e1287212913_))
                                                       (_tl1287412920_
                                                        (##cdr _e1287212913_)))
                                                   (if (gx#stx-pair?
                                                        _tl1287412920_)
                                                       (let ((_e1287512923_
                                                              (gx#syntax-e
                                                               _tl1287412920_)))
                                                         (let ((_hd1287612927_
                                                                (##car _e1287512923_))
                                                               (_tl1287712930_
                                                                (##cdr _e1287512923_)))
                                                           (if (gx#stx-pair?
                                                                _tl1287712930_)
                                                               (let ((_e1287812933_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl1287712930_)))
                         (let ((_hd1287912937_ (##car _e1287812933_))
                               (_tl1288012940_ (##cdr _e1287812933_)))
                           ((lambda (_L12943_
                                     _L12945_
                                     _L12946_
                                     _L12947_
                                     _L12948_)
                              (if (if (gx#identifier? _L12948_)
                                      (if (let ((_$e12974_
                                                 (gx#identifier? _L12946_)))
                                            (if _$e12974_
                                                _$e12974_
                                                (gx#stx-false? _L12946_)))
                                          (if (gx#identifier? _L12945_)
                                              (gx#stx-plist?
                                               _L12943_
                                               (if _struct?12850_
                                                   _struct-opt?12855_
                                                   _class-opt?12856_))
                                              '#f)
                                          '#f)
                                      '#f)
                                  (let ((_els12982_
                                         (let ((_$e12978_
                                                (gx#stx-getq
                                                 (if _struct?12850_
                                                     'fields:
                                                     'slots:)
                                                 _L12943_)))
                                           (if _$e12978_ _$e12978_ '()))))
                                    (let ((_g1298513008_
                                           (lambda (_g1298613004_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1298613004_))))
                                      (let ((_g1298413758_
                                             (lambda (_g1298613012_)
                                               (if (gx#stx-pair? _g1298613012_)
                                                   (let ((_e1299113015_
                                                          (gx#syntax-e
                                                           _g1298613012_)))
                                                     (let ((_hd1299213019_
                                                            (##car _e1299113015_))
                                                           (_tl1299313022_
                                                            (##cdr _e1299113015_)))
                                                       (if (gx#stx-pair?
                                                            _tl1299313022_)
                                                           (let ((_e1299413025_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl1299313022_)))
                     (let ((_hd1299513029_ (##car _e1299413025_))
                           (_tl1299613032_ (##cdr _e1299413025_)))
                       (if (gx#stx-pair? _tl1299613032_)
                           (let ((_e1299713035_ (gx#syntax-e _tl1299613032_)))
                             (let ((_hd1299813039_ (##car _e1299713035_))
                                   (_tl1299913042_ (##cdr _e1299713035_)))
                               (if (gx#stx-pair? _tl1299913042_)
                                   (let ((_e1300013045_
                                          (gx#syntax-e _tl1299913042_)))
                                     (let ((_hd1300113049_
                                            (##car _e1300013045_))
                                           (_tl1300213052_
                                            (##cdr _e1300013045_)))
                                       (if (gx#stx-null? _tl1300213052_)
                                           ((lambda (_L13055_
                                                     _L13057_
                                                     _L13058_
                                                     _L13059_)
                                              (let ()
                                                (let ((_g1308213090_
                                                       (lambda (_g1308313086_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1308313086_))))
                                                  (let ((_g1308113750_
                                                         (lambda (_g1308313094_)
                                                           ((lambda (_L13097_)
                                                              (let ()
                                                                (let ((_g1311013118_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g1311113114_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1311113114_))))
                          (let ((_g1310913742_
                                 (lambda (_g1311113122_)
                                   ((lambda (_L13125_)
                                      (let ()
                                        (let ((_g1313813146_
                                               (lambda (_g1313913142_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1313913142_))))
                                          (let ((_g1313713734_
                                                 (lambda (_g1313913150_)
                                                   ((lambda (_L13153_)
                                                      (let ()
                                                        (let ((_g1316613174_
                                                               (lambda (_g1316713170_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1316713170_))))
                  (let ((_g1316513730_
                         (lambda (_g1316713178_)
                           ((lambda (_L13181_)
                              (let ()
                                (let ((_g1319413202_
                                       (lambda (_g1319513198_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1319513198_))))
                                  (let ((_g1319313530_
                                         (lambda (_g1319513206_)
                                           ((lambda (_L13209_)
                                              (let ()
                                                (let ((_g1322213230_
                                                       (lambda (_g1322313226_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1322313226_))))
                                                  (let ((_g1322113526_
                                                         (lambda (_g1322313234_)
                                                           ((lambda (_L13237_)
                                                              (let ()
                                                                (let ((_g1325013258_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g1325113254_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1325113254_))))
                          (let ((_g1324913522_
                                 (lambda (_g1325113262_)
                                   ((lambda (_L13265_)
                                      (let ()
                                        (let ((_g1327813286_
                                               (lambda (_g1327913282_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1327913282_))))
                                          (let ((_g1327713518_
                                                 (lambda (_g1327913290_)
                                                   ((lambda (_L13293_)
                                                      (let ()
                                                        (let ((_g1330613332_
                                                               (lambda (_g1330713328_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1330713328_))))
                  (let ((_g1330513430_
                         (lambda (_g1330713336_)
                           (if (gx#stx-pair/null? _g1330713336_)
                               (if (fx>= (gx#stx-length _g1330713336_) '0)
                                   (let ((_g28375_
                                          (gx#syntax-split-splice
                                           _g1330713336_
                                           '0)))
                                     (begin
                                       (let ((_g28376_
                                              (values-count _g28375_)))
                                         (if (not (fx= _g28376_ 2))
                                             (error "Context expects 2 values"
                                                    _g28376_)))
                                       (let ((_target1331013339_
                                              (values-ref _g28375_ 0))
                                             (_tl1331213342_
                                              (values-ref _g28375_ 1)))
                                         (if (gx#stx-null? _tl1331213342_)
                                             (letrec ((_loop1331313345_
                                                       (lambda (_hd1331113349_
                                                                _def-setf1331713352_
                                                                _def-getf1331813354_)
                                                         (if (gx#stx-pair?
                                                              _hd1331113349_)
                                                             (let ((_e1331413357_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _hd1331113349_)))
                       (let ((_lp-hd1331513361_ (##car _e1331413357_))
                             (_lp-tl1331613364_ (##cdr _e1331413357_)))
                         (if (gx#stx-pair? _lp-hd1331513361_)
                             (let ((_e1332113367_
                                    (gx#syntax-e _lp-hd1331513361_)))
                               (let ((_hd1332213371_ (##car _e1332113367_))
                                     (_tl1332313374_ (##cdr _e1332113367_)))
                                 (if (gx#stx-pair? _tl1332313374_)
                                     (let ((_e1332413377_
                                            (gx#syntax-e _tl1332313374_)))
                                       (let ((_hd1332513381_
                                              (##car _e1332413377_))
                                             (_tl1332613384_
                                              (##cdr _e1332413377_)))
                                         (if (gx#stx-null? _tl1332613384_)
                                             (_loop1331313345_
                                              _lp-tl1331613364_
                                              (cons _hd1332513381_
                                                    _def-setf1331713352_)
                                              (cons _hd1332213371_
                                                    _def-getf1331813354_))
                                             (_g1330613332_ _g1330713336_))))
                                     (_g1330613332_ _g1330713336_))))
                             (_g1330613332_ _g1330713336_))))
                     (let ((_def-setf1331913387_
                            (reverse _def-setf1331713352_))
                           (_def-getf1332013390_
                            (reverse _def-getf1331813354_)))
                       ((lambda (_L13393_ _L13395_)
                          (let ()
                            (let ()
                              (_wrap12852_
                               (cons (gx#datum->syntax '#f 'begin)
                                     (cons _L13237_
                                           (cons _L13293_
                                                 (cons _L13265_
                                                       (begin
                                                         '#!void
                                                         (foldr (lambda (_g1341313418_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g1341413421_)
                          (cons _g1341313418_ _g1341413421_))
                        (begin
                          '#!void
                          (foldr (lambda (_g1341513424_ _g1341613427_)
                                   (cons _g1341513424_ _g1341613427_))
                                 '()
                                 _L13393_))
                        _L13395_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        _def-setf1331913387_
                        _def-getf1332013390_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop1331313345_
                                                _target1331013339_
                                                '()
                                                '()))
                                             (_g1330613332_ _g1330713336_)))))
                                   (_g1330613332_ _g1330713336_))
                               (_g1330613332_ _g1330713336_)))))
                    (_g1330513430_
                     (gx#stx-map
                      (lambda (_ref13434_)
                        (let ((_g1343713456_
                               (lambda (_g1343813452_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1343813452_))))
                          (let ((_g1343613514_
                                 (lambda (_g1343813460_)
                                   (if (gx#stx-pair? _g1343813460_)
                                       (let ((_e1344213463_
                                              (gx#syntax-e _g1343813460_)))
                                         (let ((_hd1344313467_
                                                (##car _e1344213463_))
                                               (_tl1344413470_
                                                (##cdr _e1344213463_)))
                                           (if (gx#stx-pair? _tl1344413470_)
                                               (let ((_e1344513473_
                                                      (gx#syntax-e
                                                       _tl1344413470_)))
                                                 (let ((_hd1344613477_
                                                        (##car _e1344513473_))
                                                       (_tl1344713480_
                                                        (##cdr _e1344513473_)))
                                                   (if (gx#stx-pair?
                                                        _tl1344713480_)
                                                       (let ((_e1344813483_
                                                              (gx#syntax-e
                                                               _tl1344713480_)))
                                                         (let ((_hd1344913487_
                                                                (##car _e1344813483_))
                                                               (_tl1345013490_
                                                                (##cdr _e1344813483_)))
                                                           (if (gx#stx-null?
                                                                _tl1345013490_)
                                                               ((lambda (_L13493_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L13495_
                                 _L13496_)
                          (cons (_wrap12852_
                                 (cons (gx#datum->syntax '#f 'def)
                                       (cons _L13495_
                                             (cons (cons _L13057_
                                                         (cons _L12948_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'quote)
                                   (cons _L13496_ '()))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                                (cons (_wrap12852_
                                       (cons (gx#datum->syntax '#f 'def)
                                             (cons _L13493_
                                                   (cons (cons _L13055_
                                                               (cons _L12948_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'quote)
                                         (cons _L13496_ '()))
                                   '())))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                        _hd1344913487_
                        _hd1344613477_
                        _hd1344313467_)
                       (_g1343713456_ _g1343813460_))))
               (_g1343713456_ _g1343813460_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1343713456_ _g1343813460_))))
                                       (_g1343713456_ _g1343813460_)))))
                            (_g1343613514_ _ref13434_))))
                      (if _struct?12850_
                          (gx#stx-map
                           _slotify12854_
                           _els12982_
                           (iota (gx#stx-length _els12982_)))
                          _els12982_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1327913290_))))
                                            (_g1327713518_
                                             (_wrap12852_
                                              (cons (gx#datum->syntax '#f 'def)
                                                    (cons _L12945_
                                                          (cons (cons _L13058_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _L12948_ '()))
                        '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _g1325113262_))))
                            (_g1324913522_
                             (if (gx#stx-false? _L12946_)
                                 (cons (gx#datum->syntax '#f 'begin) '())
                                 (_wrap12852_
                                  (cons (gx#datum->syntax '#f 'def)
                                        (cons (cons _L12946_
                                                    (gx#datum->syntax
                                                     '#f
                                                     '$args))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'apply)
                                                          (cons _L13059_
                                                                (cons _L12948_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#datum->syntax '#f '$args) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))))))
                    _g1322313234_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1322113526_
                                                     (_wrap12852_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'def)
                                                            (cons _L12948_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L13209_ '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g1319513206_))))
                                    (_g1319313530_
                                     (if _struct?12850_
                                         (let ((_g1353413542_
                                                (lambda (_g1353513538_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1353513538_))))
                                           (let ((_g1353313561_
                                                  (lambda (_g1353513546_)
                                                    ((lambda (_L13549_)
                                                       (let ()
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'make-struct-type)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'quote)
                                   (cons _L13097_ '()))
                             (cons _L12947_
                                   (cons _L13549_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _L13125_ '()))
                                               (cons _L13153_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _L13181_ '()))
                   '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1353513546_))))
                                             (_g1353313561_
                                              (gx#stx-length _els12982_))))
                                         (let ((_g1356513598_
                                                (lambda (_g1356613594_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1356613594_))))
                                           (let ((_g1356413726_
                                                  (lambda (_g1356613602_)
                                                    (if (gx#stx-pair?
                                                         _g1356613602_)
                                                        (let ((_e1356913605_
                                                               (gx#syntax-e
                                                                _g1356613602_)))
                                                          (let ((_hd1357013609_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1356913605_))
                        (_tl1357113612_ (##cdr _e1356913605_)))
                    (if (gx#stx-pair/null? _hd1357013609_)
                        (if (fx>= (gx#stx-length _hd1357013609_) '0)
                            (let ((_g28377_
                                   (gx#syntax-split-splice _hd1357013609_ '0)))
                              (begin
                                (let ((_g28378_ (values-count _g28377_)))
                                  (if (not (fx= _g28378_ 2))
                                      (error "Context expects 2 values"
                                             _g28378_)))
                                (let ((_target1357213615_
                                       (values-ref _g28377_ 0))
                                      (_tl1357413618_ (values-ref _g28377_ 1)))
                                  (if (gx#stx-null? _tl1357413618_)
                                      (letrec ((_loop1357513621_
                                                (lambda (_hd1357313625_
                                                         _super1357913628_)
                                                  (if (gx#stx-pair?
                                                       _hd1357313625_)
                                                      (let ((_e1357613631_
                                                             (gx#syntax-e
                                                              _hd1357313625_)))
                                                        (let ((_lp-hd1357713635_
                                                               (##car _e1357613631_))
                                                              (_lp-tl1357813638_
                                                               (##cdr _e1357613631_)))
                                                          (_loop1357513621_
                                                           _lp-tl1357813638_
                                                           (cons _lp-hd1357713635_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _super1357913628_))))
              (let ((_super1358013641_ (reverse _super1357913628_)))
                (if (gx#stx-pair? _tl1357113612_)
                    (let ((_e1358113645_ (gx#syntax-e _tl1357113612_)))
                      (let ((_hd1358213649_ (##car _e1358113645_))
                            (_tl1358313652_ (##cdr _e1358113645_)))
                        (if (gx#stx-pair/null? _hd1358213649_)
                            (if (fx>= (gx#stx-length _hd1358213649_) '0)
                                (let ((_g28379_
                                       (gx#syntax-split-splice
                                        _hd1358213649_
                                        '0)))
                                  (begin
                                    (let ((_g28380_ (values-count _g28379_)))
                                      (if (not (fx= _g28380_ 2))
                                          (error "Context expects 2 values"
                                                 _g28380_)))
                                    (let ((_target1358413655_
                                           (values-ref _g28379_ 0))
                                          (_tl1358613658_
                                           (values-ref _g28379_ 1)))
                                      (if (gx#stx-null? _tl1358613658_)
                                          (letrec ((_loop1358713661_
                                                    (lambda (_hd1358513665_
                                                             _slot1359113668_)
                                                      (if (gx#stx-pair?
                                                           _hd1358513665_)
                                                          (let ((_e1358813671_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _hd1358513665_)))
                    (let ((_lp-hd1358913675_ (##car _e1358813671_))
                          (_lp-tl1359013678_ (##cdr _e1358813671_)))
                      (_loop1358713661_
                       _lp-tl1359013678_
                       (cons _lp-hd1358913675_ _slot1359113668_))))
                  (let ((_slot1359213681_ (reverse _slot1359113668_)))
                    (if (gx#stx-null? _tl1358313652_)
                        ((lambda (_L13685_ _L13687_)
                           (let ()
                             (cons (gx#datum->syntax '#f 'make-class-type)
                                   (cons (cons (gx#datum->syntax '#f 'quote)
                                               (cons _L13097_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '@list)
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g1370913714_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1371013717_)
                        (cons _g1370913714_ _g1371013717_))
                      '()
                      _L13687_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#!void
                           (foldr (lambda (_g1371113720_ _g1371213723_)
                                    (cons _g1371113720_ _g1371213723_))
                                  '()
                                  _L13685_))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _L13125_ '()))
                   (cons _L13153_
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _L13181_ '()))
                               '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         _slot1359213681_
                         _super1358013641_)
                        (_g1356513598_ _g1356613602_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1358713661_
                                             _target1358413655_
                                             '()))
                                          (_g1356513598_ _g1356613602_)))))
                                (_g1356513598_ _g1356613602_))
                            (_g1356513598_ _g1356613602_))))
                    (_g1356513598_ _g1356613602_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1357513621_
                                         _target1357213615_
                                         '()))
                                      (_g1356513598_ _g1356613602_)))))
                            (_g1356513598_ _g1356613602_))
                        (_g1356513598_ _g1356613602_))))
                (_g1356513598_ _g1356613602_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1356413726_
                                              (list _L12947_
                                                    (gx#stx-map
                                                     gx#stx-car
                                                     _els12982_)))))))))))
                            _g1316713178_))))
                    (_g1316513730_ (gx#stx-getq 'constructor: _L12943_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1313913150_))))
                                            (_g1313713734_
                                             (let ((_$e13738_
                                                    (gx#stx-getq
                                                     'plist:
                                                     _L12943_)))
                                               (if _$e13738_
                                                   _$e13738_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '@list)
                                                         '()))))))))
                                    _g1311113122_))))
                            (_g1310913742_
                             (let ((_$e13746_ (gx#stx-getq 'name: _L12943_)))
                               (if _$e13746_ _$e13746_ _L12948_)))))))
                    _g1308313094_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1308113750_
                                                     (let ((_$e13754_
                                                            (gx#stx-getq
                                                             'id:
                                                             _L12943_)))
                                                       (if _$e13754_
                                                           _$e13754_
                                                           (if (gx#module-context?
                                                                (gx#current-expander-context))
                                                               (_module-type-id12857_
                                                                _L12948_)
                                                               (gx#genident
                                                                _L12948_)))))))))
                                            _hd1300113049_
                                            _hd1299813039_
                                            _hd1299513029_
                                            _hd1299213019_)
                                           (_g1298513008_ _g1298613012_))))
                                   (_g1298513008_ _g1298613012_))))
                           (_g1298513008_ _g1298613012_))))
                   (_g1298513008_ _g1298613012_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1298513008_
                                                    _g1298613012_)))))
                                        (_g1298413758_
                                         (if _struct?12850_
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
                                  (_g1285912886_ _g1286012890_)))
                            _tl1288012940_
                            _hd1287912937_
                            _hd1287612927_
                            _hd1287312917_
                            _hd1287012907_)))
                       (_g1285912886_ _g1286012890_))))
               (_g1285912886_ _g1286012890_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1285912886_ _g1286012890_))))
                                       (_g1285912886_ _g1286012890_))))
                               (_g1285912886_ _g1286012890_)))))
                    (_g1285813762_ _stx12848_))))))))))
  (define |gerbil/core::<MOP>::<MOP:1>[:0:]#defstruct-type|
    (lambda (_stx13857_)
      (|gerbil/core::<MOP>::<MOP:1>[1]#generate-typedef| _stx13857_ '#t)))
  (define |gerbil/core::<MOP>::<MOP:1>[:0:]#defclass-type|
    (lambda (_stx13860_)
      (|gerbil/core::<MOP>::<MOP:1>[1]#generate-typedef| _stx13860_ '#f))))
