(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<MOP>$<MOP:1>[1]#generate-typedef|
    (lambda (_stx13503_ _struct?13505_)
      (letrec ((_wrap13507_
                (lambda (_e-stx15108_)
                  (gx#stx-wrap-source
                   _e-stx15108_
                   (gx#stx-source _stx13503_))))
               (_slotify13509_
                (lambda (_field14973_ _off14975_)
                  (let* ((_g1497815005_
                          (lambda (_g1497915001_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1497915001_)))
                         (_g1497715062_
                          (lambda (_g1497915009_)
                            (if (gx#stx-pair? _g1497915009_)
                                (let ((_e1499115012_
                                       (gx#syntax-e _g1497915009_)))
                                  (let ((_hd1499215016_ (##car _e1499115012_))
                                        (_tl1499315019_ (##cdr _e1499115012_)))
                                    (if (gx#stx-pair? _tl1499315019_)
                                        (let ((_e1499415022_
                                               (gx#syntax-e _tl1499315019_)))
                                          (let ((_hd1499515026_
                                                 (##car _e1499415022_))
                                                (_tl1499615029_
                                                 (##cdr _e1499415022_)))
                                            (if (gx#stx-pair? _tl1499615029_)
                                                (let ((_e1499715032_
                                                       (gx#syntax-e
                                                        _tl1499615029_)))
                                                  (let ((_hd1499815036_
                                                         (##car _e1499715032_))
                                                        (_tl1499915039_
                                                         (##cdr _e1499715032_)))
                                                    (if (gx#stx-null?
                                                         _tl1499915039_)
                                                        ((lambda (_L15042_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L15044_
                          _L15045_)
                   (cons _off14975_ (cons _L15044_ (cons _L15042_ '()))))
                 _hd1499815036_
                 _hd1499515026_
                 _hd1499215016_)
                (_g1497815005_ _g1497915009_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1497815005_
                                                 _g1497915009_))))
                                        (_g1497815005_ _g1497915009_))))
                                (_g1497815005_ _g1497915009_))))
                         (_g1497615104_
                          (lambda (_g1497915066_)
                            (if (gx#stx-pair? _g1497915066_)
                                (let ((_e1498215069_
                                       (gx#syntax-e _g1497915066_)))
                                  (let ((_hd1498315073_ (##car _e1498215069_))
                                        (_tl1498415076_ (##cdr _e1498215069_)))
                                    (if (gx#stx-pair? _tl1498415076_)
                                        (let ((_e1498515079_
                                               (gx#syntax-e _tl1498415076_)))
                                          (let ((_hd1498615083_
                                                 (##car _e1498515079_))
                                                (_tl1498715086_
                                                 (##cdr _e1498515079_)))
                                            (if (gx#stx-null? _tl1498715086_)
                                                ((lambda (_L15089_ _L15091_)
                                                   (cons _off14975_
                                                         (cons _L15091_
                                                               (cons _L15089_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1498615083_
                                                 _hd1498315073_)
                                                (_g1497715062_
                                                 _g1497915066_))))
                                        (_g1497715062_ _g1497915066_))))
                                (_g1497715062_ _g1497915066_)))))
                    (_g1497615104_ _field14973_))))
               (_field-id13510_
                (lambda (_field14839_)
                  (let* ((_g1484314870_
                          (lambda (_g1484414866_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1484414866_)))
                         (_g1484214927_
                          (lambda (_g1484414874_)
                            (if (gx#stx-pair? _g1484414874_)
                                (let ((_e1485614877_
                                       (gx#syntax-e _g1484414874_)))
                                  (let ((_hd1485714881_ (##car _e1485614877_))
                                        (_tl1485814884_ (##cdr _e1485614877_)))
                                    (if (gx#stx-pair? _tl1485814884_)
                                        (let ((_e1485914887_
                                               (gx#syntax-e _tl1485814884_)))
                                          (let ((_hd1486014891_
                                                 (##car _e1485914887_))
                                                (_tl1486114894_
                                                 (##cdr _e1485914887_)))
                                            (if (gx#stx-pair? _tl1486114894_)
                                                (let ((_e1486214897_
                                                       (gx#syntax-e
                                                        _tl1486114894_)))
                                                  (let ((_hd1486314901_
                                                         (##car _e1486214897_))
                                                        (_tl1486414904_
                                                         (##cdr _e1486214897_)))
                                                    (if (gx#stx-null?
                                                         _tl1486414904_)
                                                        ((lambda (_L14907_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L14909_
                          _L14910_)
                   _L14910_)
                 _hd1486314901_
                 _hd1486014891_
                 _hd1485714881_)
                (_g1484314870_ _g1484414874_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1484314870_
                                                 _g1484414874_))))
                                        (_g1484314870_ _g1484414874_))))
                                (_g1484314870_ _g1484414874_))))
                         (_g1484114969_
                          (lambda (_g1484414931_)
                            (if (gx#stx-pair? _g1484414931_)
                                (let ((_e1484714934_
                                       (gx#syntax-e _g1484414931_)))
                                  (let ((_hd1484814938_ (##car _e1484714934_))
                                        (_tl1484914941_ (##cdr _e1484714934_)))
                                    (if (gx#stx-pair? _tl1484914941_)
                                        (let ((_e1485014944_
                                               (gx#syntax-e _tl1484914941_)))
                                          (let ((_hd1485114948_
                                                 (##car _e1485014944_))
                                                (_tl1485214951_
                                                 (##cdr _e1485014944_)))
                                            (if (gx#stx-null? _tl1485214951_)
                                                ((lambda (_L14954_ _L14956_)
                                                   ':)
                                                 _hd1485114948_
                                                 _hd1484814938_)
                                                (_g1484214927_
                                                 _g1484414931_))))
                                        (_g1484214927_ _g1484414931_))))
                                (_g1484214927_ _g1484414931_)))))
                    (_g1484114969_ _field14839_))))
               (_struct-opt?13511_
                (lambda (_key14836_)
                  (memq (gx#stx-e _key14836_)
                        '(fields: id: name: plist: constructor: unchecked:))))
               (_class-opt?13512_
                (lambda (_key14833_)
                  (memq (gx#stx-e _key14833_)
                        '(slots: id: name: plist: constructor: unchecked:))))
               (_module-type-id13513_
                (lambda (_type-t14820_)
                  (let ((_$e14823_
                         (gx#module-context-ns (gx#current-expander-context))))
                    (if _$e14823_
                        ((lambda (_ns14827_)
                           (gx#stx-identifier
                            _type-t14820_
                            _ns14827_
                            '"#"
                            _type-t14820_))
                         _$e14823_)
                        (let ((_mid14830_
                               (gx#expander-context-id
                                (gx#current-expander-context))))
                          (gx#stx-identifier
                           _type-t14820_
                           _mid14830_
                           '"#"
                           _type-t14820_)))))))
        (let* ((_g1351513542_
                (lambda (_g1351613538_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1351613538_)))
               (_g1351414816_
                (lambda (_g1351613546_)
                  (if (gx#stx-pair? _g1351613546_)
                      (let ((_e1352213549_ (gx#syntax-e _g1351613546_)))
                        (let ((_hd1352313553_ (##car _e1352213549_))
                              (_tl1352413556_ (##cdr _e1352213549_)))
                          (if (gx#stx-pair? _tl1352413556_)
                              (let ((_e1352513559_
                                     (gx#syntax-e _tl1352413556_)))
                                (let ((_hd1352613563_ (##car _e1352513559_))
                                      (_tl1352713566_ (##cdr _e1352513559_)))
                                  (if (gx#stx-pair? _tl1352713566_)
                                      (let ((_e1352813569_
                                             (gx#syntax-e _tl1352713566_)))
                                        (let ((_hd1352913573_
                                               (##car _e1352813569_))
                                              (_tl1353013576_
                                               (##cdr _e1352813569_)))
                                          (if (gx#stx-pair? _tl1353013576_)
                                              (let ((_e1353113579_
                                                     (gx#syntax-e
                                                      _tl1353013576_)))
                                                (let ((_hd1353213583_
                                                       (##car _e1353113579_))
                                                      (_tl1353313586_
                                                       (##cdr _e1353113579_)))
                                                  (if (gx#stx-pair?
                                                       _tl1353313586_)
                                                      (let ((_e1353413589_
                                                             (gx#syntax-e
                                                              _tl1353313586_)))
                                                        (let ((_hd1353513593_
                                                               (##car _e1353413589_))
                                                              (_tl1353613596_
                                                               (##cdr _e1353413589_)))
                                                          ((lambda (_L13599_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L13601_
                            _L13602_
                            _L13603_
                            _L13604_)
                     (if (if (gx#identifier? _L13604_)
                             (if (let ((_$e13630_ (gx#identifier? _L13602_)))
                                   (if _$e13630_
                                       _$e13630_
                                       (gx#stx-false? _L13602_)))
                                 (if (gx#identifier? _L13601_)
                                     (gx#stx-plist?
                                      _L13599_
                                      (if _struct?13505_
                                          _struct-opt?13511_
                                          _class-opt?13512_))
                                     '#f)
                                 '#f)
                             '#f)
                         (let* ((_els13638_
                                 (let ((_$e13634_
                                        (gx#stx-getq
                                         (if _struct?13505_ 'fields: 'slots:)
                                         _L13599_)))
                                   (if _$e13634_ _$e13634_ '())))
                                (_g1364113672_
                                 (lambda (_g1364213668_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1364213668_)))
                                (_g1364014812_
                                 (lambda (_g1364213676_)
                                   (if (gx#stx-pair? _g1364213676_)
                                       (let ((_e1364913679_
                                              (gx#syntax-e _g1364213676_)))
                                         (let ((_hd1365013683_
                                                (##car _e1364913679_))
                                               (_tl1365113686_
                                                (##cdr _e1364913679_)))
                                           (if (gx#stx-pair? _tl1365113686_)
                                               (let ((_e1365213689_
                                                      (gx#syntax-e
                                                       _tl1365113686_)))
                                                 (let ((_hd1365313693_
                                                        (##car _e1365213689_))
                                                       (_tl1365413696_
                                                        (##cdr _e1365213689_)))
                                                   (if (gx#stx-pair?
                                                        _tl1365413696_)
                                                       (let ((_e1365513699_
                                                              (gx#syntax-e
                                                               _tl1365413696_)))
                                                         (let ((_hd1365613703_
                                                                (##car _e1365513699_))
                                                               (_tl1365713706_
                                                                (##cdr _e1365513699_)))
                                                           (if (gx#stx-pair?
                                                                _tl1365713706_)
                                                               (let ((_e1365813709_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl1365713706_)))
                         (let ((_hd1365913713_ (##car _e1365813709_))
                               (_tl1366013716_ (##cdr _e1365813709_)))
                           (if (gx#stx-pair? _tl1366013716_)
                               (let ((_e1366113719_
                                      (gx#syntax-e _tl1366013716_)))
                                 (let ((_hd1366213723_ (##car _e1366113719_))
                                       (_tl1366313726_ (##cdr _e1366113719_)))
                                   (if (gx#stx-pair? _tl1366313726_)
                                       (let ((_e1366413729_
                                              (gx#syntax-e _tl1366313726_)))
                                         (let ((_hd1366513733_
                                                (##car _e1366413729_))
                                               (_tl1366613736_
                                                (##cdr _e1366413729_)))
                                           (if (gx#stx-null? _tl1366613736_)
                                               ((lambda (_L13739_
                                                         _L13741_
                                                         _L13742_
                                                         _L13743_
                                                         _L13744_
                                                         _L13745_)
                                                  (let ()
                                                    (let* ((_g1377413782_
                                                            (lambda (_g1377513778_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g1377513778_)))
                                                           (_g1377314804_
                                                            (lambda (_g1377513786_)
                                                              ((lambda (_L13789_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g1380213810_
                                   (lambda (_g1380313806_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1380313806_)))
                                  (_g1380114796_
                                   (lambda (_g1380313814_)
                                     ((lambda (_L13817_)
                                        (let ()
                                          (let* ((_g1383013838_
                                                  (lambda (_g1383113834_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1383113834_)))
                                                 (_g1382914788_
                                                  (lambda (_g1383113842_)
                                                    ((lambda (_L13845_)
                                                       (let ()
                                                         (let* ((_g1385813866_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1385913862_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1385913862_)))
                        (_g1385714784_
                         (lambda (_g1385913870_)
                           ((lambda (_L13873_)
                              (let ()
                                (let* ((_g1388613894_
                                        (lambda (_g1388713890_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g1388713890_)))
                                       (_g1388514500_
                                        (lambda (_g1388713898_)
                                          ((lambda (_L13901_)
                                             (let ()
                                               (let* ((_g1391413922_
                                                       (lambda (_g1391513918_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1391513918_)))
                                                      (_g1391314496_
                                                       (lambda (_g1391513926_)
                                                         ((lambda (_L13929_)
                                                            (let ()
                                                              (let* ((_g1394213950_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g1394313946_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1394313946_)))
                             (_g1394114492_
                              (lambda (_g1394313954_)
                                ((lambda (_L13957_)
                                   (let ()
                                     (let* ((_g1397013978_
                                             (lambda (_g1397113974_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1397113974_)))
                                            (_g1396914488_
                                             (lambda (_g1397113982_)
                                               ((lambda (_L13985_)
                                                  (let ()
                                                    (let* ((_attrs13998_
                                                            (if _struct?13505_
                                                                (gx#stx-map
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _slotify13509_
                         _els13638_
                         (iota (gx#stx-length _els13638_)))
                        _els13638_))
                   (_g1400114027_
                    (lambda (_g1400214023_)
                      (gx#raise-syntax-error '#f '"Bad syntax" _g1400214023_)))
                   (_g1400014400_
                    (lambda (_g1400214031_)
                      (if (gx#stx-pair/null? _g1400214031_)
                          (if (fx>= (gx#stx-length _g1400214031_) '0)
                              (let ((_g31648_
                                     (gx#syntax-split-splice
                                      _g1400214031_
                                      '0)))
                                (begin
                                  (let ((_g31649_ (values-count _g31648_)))
                                    (if (not (fx= _g31649_ 2))
                                        (error "Context expects 2 values"
                                               _g31649_)))
                                  (let ((_target1400514034_
                                         (values-ref _g31648_ 0))
                                        (_tl1400714037_
                                         (values-ref _g31648_ 1)))
                                    (if (gx#stx-null? _tl1400714037_)
                                        (letrec ((_loop1400814040_
                                                  (lambda (_hd1400614044_
                                                           _def-setf1401214047_
                                                           _def-getf1401314049_)
                                                    (if (gx#stx-pair?
                                                         _hd1400614044_)
                                                        (let ((_e1400914052_
                                                               (gx#syntax-e
                                                                _hd1400614044_)))
                                                          (let ((_lp-hd1401014056_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1400914052_))
                        (_lp-tl1401114059_ (##cdr _e1400914052_)))
                    (if (gx#stx-pair? _lp-hd1401014056_)
                        (let ((_e1401614062_ (gx#syntax-e _lp-hd1401014056_)))
                          (let ((_hd1401714066_ (##car _e1401614062_))
                                (_tl1401814069_ (##cdr _e1401614062_)))
                            (if (gx#stx-pair? _tl1401814069_)
                                (let ((_e1401914072_
                                       (gx#syntax-e _tl1401814069_)))
                                  (let ((_hd1402014076_ (##car _e1401914072_))
                                        (_tl1402114079_ (##cdr _e1401914072_)))
                                    (if (gx#stx-null? _tl1402114079_)
                                        (_loop1400814040_
                                         _lp-tl1401114059_
                                         (cons _hd1402014076_
                                               _def-setf1401214047_)
                                         (cons _hd1401714066_
                                               _def-getf1401314049_))
                                        (_g1400114027_ _g1400214031_))))
                                (_g1400114027_ _g1400214031_))))
                        (_g1400114027_ _g1400214031_))))
                (let ((_def-setf1401414082_ (reverse _def-setf1401214047_))
                      (_def-getf1401514085_ (reverse _def-getf1401314049_)))
                  ((lambda (_L14088_ _L14090_)
                     (let ()
                       (let* ((_g1410814134_
                               (lambda (_g1410914130_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1410914130_)))
                              (_g1410714248_
                               (lambda (_g1410914138_)
                                 (if (gx#stx-pair/null? _g1410914138_)
                                     (if (fx>= (gx#stx-length _g1410914138_)
                                               '0)
                                         (let ((_g31650_
                                                (gx#syntax-split-splice
                                                 _g1410914138_
                                                 '0)))
                                           (begin
                                             (let ((_g31651_
                                                    (values-count _g31650_)))
                                               (if (not (fx= _g31651_ 2))
                                                   (error "Context expects 2 values"
                                                          _g31651_)))
                                             (let ((_target1411214141_
                                                    (values-ref _g31650_ 0))
                                                   (_tl1411414144_
                                                    (values-ref _g31650_ 1)))
                                               (if (gx#stx-null?
                                                    _tl1411414144_)
                                                   (letrec ((_loop1411514147_
                                                             (lambda (_hd1411314151_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _def-usetf1411914154_
                              _def-ugetf1412014156_)
                       (if (gx#stx-pair? _hd1411314151_)
                           (let ((_e1411614159_ (gx#syntax-e _hd1411314151_)))
                             (let ((_lp-hd1411714163_ (##car _e1411614159_))
                                   (_lp-tl1411814166_ (##cdr _e1411614159_)))
                               (if (gx#stx-pair? _lp-hd1411714163_)
                                   (let ((_e1412314169_
                                          (gx#syntax-e _lp-hd1411714163_)))
                                     (let ((_hd1412414173_
                                            (##car _e1412314169_))
                                           (_tl1412514176_
                                            (##cdr _e1412314169_)))
                                       (if (gx#stx-pair? _tl1412514176_)
                                           (let ((_e1412614179_
                                                  (gx#syntax-e
                                                   _tl1412514176_)))
                                             (let ((_hd1412714183_
                                                    (##car _e1412614179_))
                                                   (_tl1412814186_
                                                    (##cdr _e1412614179_)))
                                               (if (gx#stx-null?
                                                    _tl1412814186_)
                                                   (_loop1411514147_
                                                    _lp-tl1411814166_
                                                    (cons _hd1412714183_
                                                          _def-usetf1411914154_)
                                                    (cons _hd1412414173_
                                                          _def-ugetf1412014156_))
                                                   (_g1410814134_
                                                    _g1410914138_))))
                                           (_g1410814134_ _g1410914138_))))
                                   (_g1410814134_ _g1410914138_))))
                           (let ((_def-usetf1412114189_
                                  (reverse _def-usetf1411914154_))
                                 (_def-ugetf1412214192_
                                  (reverse _def-ugetf1412014156_)))
                             ((lambda (_L14195_ _L14197_)
                                (let ()
                                  (let ()
                                    (_wrap13507_
                                     (cons (gx#datum->syntax '#f 'begin)
                                           (cons _L13929_
                                                 (cons _L13985_
                                                       (cons _L13957_
                                                             (begin
                                                               '#!void
                                                               (foldr (lambda (_g1421514224_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1421614227_)
                                (cons _g1421514224_ _g1421614227_))
                              (begin
                                '#!void
                                (foldr (lambda (_g1421714230_ _g1421814233_)
                                         (cons _g1421714230_ _g1421814233_))
                                       (begin
                                         '#!void
                                         (foldr (lambda (_g1421914236_
                                                         _g1422014239_)
                                                  (cons _g1421914236_
                                                        _g1422014239_))
                                                (begin
                                                  '#!void
                                                  (foldr (lambda (_g1422114242_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1422214245_)
                   (cons _g1422114242_ _g1422214245_))
                 '()
                 _L14195_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _L14197_))
                                       _L14088_))
                              _L14090_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              _def-usetf1412114189_
                              _def-ugetf1412214192_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1411514147_
                                                      _target1411214141_
                                                      '()
                                                      '()))
                                                   (_g1410814134_
                                                    _g1410914138_)))))
                                         (_g1410814134_ _g1410914138_))
                                     (_g1410814134_ _g1410914138_)))))
                         (_g1410714248_
                          (if (gx#stx-e (gx#stx-getq 'unchecked: _L13599_))
                              (gx#stx-map
                               (lambda (_ref14252_)
                                 (let* ((_g1425514274_
                                         (lambda (_g1425614270_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g1425614270_)))
                                        (_g1425414396_
                                         (lambda (_g1425614278_)
                                           (if (gx#stx-pair? _g1425614278_)
                                               (let ((_e1426014281_
                                                      (gx#syntax-e
                                                       _g1425614278_)))
                                                 (let ((_hd1426114285_
                                                        (##car _e1426014281_))
                                                       (_tl1426214288_
                                                        (##cdr _e1426014281_)))
                                                   (if (gx#stx-pair?
                                                        _tl1426214288_)
                                                       (let ((_e1426314291_
                                                              (gx#syntax-e
                                                               _tl1426214288_)))
                                                         (let ((_hd1426414295_
                                                                (##car _e1426314291_))
                                                               (_tl1426514298_
                                                                (##cdr _e1426314291_)))
                                                           (if (gx#stx-pair?
                                                                _tl1426514298_)
                                                               (let ((_e1426614301_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl1426514298_)))
                         (let ((_hd1426714305_ (##car _e1426614301_))
                               (_tl1426814308_ (##cdr _e1426614301_)))
                           (if (gx#stx-null? _tl1426814308_)
                               ((lambda (_L14311_ _L14313_ _L14314_)
                                  (let* ((_g1433214347_
                                          (lambda (_g1433314343_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g1433314343_)))
                                         (_g1433114392_
                                          (lambda (_g1433314351_)
                                            (if (gx#stx-pair? _g1433314351_)
                                                (let ((_e1433614354_
                                                       (gx#syntax-e
                                                        _g1433314351_)))
                                                  (let ((_hd1433714358_
                                                         (##car _e1433614354_))
                                                        (_tl1433814361_
                                                         (##cdr _e1433614354_)))
                                                    (if (gx#stx-pair?
                                                         _tl1433814361_)
                                                        (let ((_e1433914364_
                                                               (gx#syntax-e
                                                                _tl1433814361_)))
                                                          (let ((_hd1434014368_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1433914364_))
                        (_tl1434114371_ (##cdr _e1433914364_)))
                    (if (gx#stx-null? _tl1434114371_)
                        ((lambda (_L14374_ _L14376_)
                           (let ()
                             (cons (_wrap13507_
                                    (cons (gx#datum->syntax '#f 'def)
                                          (cons _L14376_
                                                (cons (cons _L13741_
                                                            (cons _L13604_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _L14314_ '()))
                                '())))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (cons (_wrap13507_
                                          (cons (gx#datum->syntax '#f 'def)
                                                (cons _L14374_
                                                      (cons (cons _L13739_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L13604_
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _L14314_ '()))
                                      '())))
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                         _hd1434014368_
                         _hd1433714358_)
                        (_g1433214347_ _g1433314351_))))
                (_g1433214347_ _g1433314351_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1433214347_
                                                 _g1433314351_)))))
                                    (_g1433114392_
                                     (list (gx#stx-identifier
                                            _L14313_
                                            '"&"
                                            _L14313_)
                                           (gx#stx-identifier
                                            _L14311_
                                            '"&"
                                            _L14311_)))))
                                _hd1426714305_
                                _hd1426414295_
                                _hd1426114285_)
                               (_g1425514274_ _g1425614278_))))
                       (_g1425514274_ _g1425614278_))))
               (_g1425514274_ _g1425614278_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1425514274_
                                                _g1425614278_)))))
                                   (_g1425414396_ _ref14252_)))
                               _attrs13998_)
                              '())))))
                   _def-setf1401414082_
                   _def-getf1401514085_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop1400814040_
                                           _target1400514034_
                                           '()
                                           '()))
                                        (_g1400114027_ _g1400214031_)))))
                              (_g1400114027_ _g1400214031_))
                          (_g1400114027_ _g1400214031_)))))
              (_g1400014400_
               (gx#stx-map
                (lambda (_ref14404_)
                  (let* ((_g1440714426_
                          (lambda (_g1440814422_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1440814422_)))
                         (_g1440614484_
                          (lambda (_g1440814430_)
                            (if (gx#stx-pair? _g1440814430_)
                                (let ((_e1441214433_
                                       (gx#syntax-e _g1440814430_)))
                                  (let ((_hd1441314437_ (##car _e1441214433_))
                                        (_tl1441414440_ (##cdr _e1441214433_)))
                                    (if (gx#stx-pair? _tl1441414440_)
                                        (let ((_e1441514443_
                                               (gx#syntax-e _tl1441414440_)))
                                          (let ((_hd1441614447_
                                                 (##car _e1441514443_))
                                                (_tl1441714450_
                                                 (##cdr _e1441514443_)))
                                            (if (gx#stx-pair? _tl1441714450_)
                                                (let ((_e1441814453_
                                                       (gx#syntax-e
                                                        _tl1441714450_)))
                                                  (let ((_hd1441914457_
                                                         (##car _e1441814453_))
                                                        (_tl1442014460_
                                                         (##cdr _e1441814453_)))
                                                    (if (gx#stx-null?
                                                         _tl1442014460_)
                                                        ((lambda (_L14463_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L14465_
                          _L14466_)
                   (cons (_wrap13507_
                          (cons (gx#datum->syntax '#f 'def)
                                (cons _L14465_
                                      (cons (cons _L13743_
                                                  (cons _L13604_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons _L14466_ '()))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '()))))
                         (cons (_wrap13507_
                                (cons (gx#datum->syntax '#f 'def)
                                      (cons _L14463_
                                            (cons (cons _L13742_
                                                        (cons _L13604_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _L14466_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))
                               '())))
                 _hd1441914457_
                 _hd1441614447_
                 _hd1441314437_)
                (_g1440714426_ _g1440814430_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1440714426_
                                                 _g1440814430_))))
                                        (_g1440714426_ _g1440814430_))))
                                (_g1440714426_ _g1440814430_)))))
                    (_g1440614484_ _ref14404_)))
                _attrs13998_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1397113982_))))
                                       (_g1396914488_
                                        (_wrap13507_
                                         (cons (gx#datum->syntax '#f 'def)
                                               (cons _L13601_
                                                     (cons (cons _L13744_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L13604_ '()))
                   '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _g1394313954_))))
                        (_g1394114492_
                         (if (gx#stx-false? _L13602_)
                             (cons (gx#datum->syntax '#f 'begin) '())
                             (_wrap13507_
                              (cons (gx#datum->syntax '#f 'def)
                                    (cons (cons _L13602_
                                                (gx#datum->syntax '#f '$args))
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'apply)
                                                      (cons _L13745_
                                                            (cons _L13604_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f '$args) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))))))))
                  _g1391513926_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1391314496_
                                                  (_wrap13507_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'def)
                                                         (cons _L13604_
                                                               (cons _L13901_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _g1388713898_))))
                                  (_g1388514500_
                                   (if _struct?13505_
                                       (let* ((_g1450414528_
                                               (lambda (_g1450514524_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1450514524_)))
                                              (_g1450314615_
                                               (lambda (_g1450514532_)
                                                 (if (gx#stx-pair?
                                                      _g1450514532_)
                                                     (let ((_e1450814535_
                                                            (gx#syntax-e
                                                             _g1450514532_)))
                                                       (let ((_hd1450914539_
                                                              (##car _e1450814535_))
                                                             (_tl1451014542_
                                                              (##cdr _e1450814535_)))
                                                         (if (gx#stx-pair?
                                                              _tl1451014542_)
                                                             (let ((_e1451114545_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl1451014542_)))
                       (let ((_hd1451214549_ (##car _e1451114545_))
                             (_tl1451314552_ (##cdr _e1451114545_)))
                         (if (gx#stx-pair/null? _hd1451214549_)
                             (if (fx>= (gx#stx-length _hd1451214549_) '0)
                                 (let ((_g31652_
                                        (gx#syntax-split-splice
                                         _hd1451214549_
                                         '0)))
                                   (begin
                                     (let ((_g31653_ (values-count _g31652_)))
                                       (if (not (fx= _g31653_ 2))
                                           (error "Context expects 2 values"
                                                  _g31653_)))
                                     (let ((_target1451414555_
                                            (values-ref _g31652_ 0))
                                           (_tl1451614558_
                                            (values-ref _g31652_ 1)))
                                       (if (gx#stx-null? _tl1451614558_)
                                           (letrec ((_loop1451714561_
                                                     (lambda (_hd1451514565_
                                                              _field-id1452114568_)
                                                       (if (gx#stx-pair?
                                                            _hd1451514565_)
                                                           (let ((_e1451814571_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd1451514565_)))
                     (let ((_lp-hd1451914575_ (##car _e1451814571_))
                           (_lp-tl1452014578_ (##cdr _e1451814571_)))
                       (_loop1451714561_
                        _lp-tl1452014578_
                        (cons _lp-hd1451914575_ _field-id1452114568_))))
                   (let ((_field-id1452214581_ (reverse _field-id1452114568_)))
                     (if (gx#stx-null? _tl1451314552_)
                         ((lambda (_L14585_ _L14587_)
                            (let ()
                              (cons (gx#datum->syntax '#f 'make-struct-type)
                                    (cons (cons (gx#datum->syntax '#f 'quote)
                                                (cons _L13789_ '()))
                                          (cons _L13603_
                                                (cons _L14587_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons _L13817_ '()))
                    (cons _L13845_
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _L13873_ '()))
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons (begin
                                                    '#!void
                                                    (foldr (lambda (_g1460614609_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1460714612_)
                     (cons _g1460614609_ _g1460714612_))
                   '()
                   _L14585_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          _field-id1452214581_
                          _hd1450914539_)
                         (_g1450414528_ _g1450514532_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop1451714561_
                                              _target1451414555_
                                              '()))
                                           (_g1450414528_ _g1450514532_)))))
                                 (_g1450414528_ _g1450514532_))
                             (_g1450414528_ _g1450514532_))))
                     (_g1450414528_ _g1450514532_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1450414528_
                                                      _g1450514532_)))))
                                         (_g1450314615_
                                          (list (gx#stx-length _els13638_)
                                                (gx#stx-map
                                                 _field-id13510_
                                                 _els13638_))))
                                       (let* ((_g1461914652_
                                               (lambda (_g1462014648_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1462014648_)))
                                              (_g1461814780_
                                               (lambda (_g1462014656_)
                                                 (if (gx#stx-pair?
                                                      _g1462014656_)
                                                     (let ((_e1462314659_
                                                            (gx#syntax-e
                                                             _g1462014656_)))
                                                       (let ((_hd1462414663_
                                                              (##car _e1462314659_))
                                                             (_tl1462514666_
                                                              (##cdr _e1462314659_)))
                                                         (if (gx#stx-pair/null?
                                                              _hd1462414663_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _hd1462414663_)
                               '0)
                         (let ((_g31654_
                                (gx#syntax-split-splice _hd1462414663_ '0)))
                           (begin
                             (let ((_g31655_ (values-count _g31654_)))
                               (if (not (fx= _g31655_ 2))
                                   (error "Context expects 2 values"
                                          _g31655_)))
                             (let ((_target1462614669_ (values-ref _g31654_ 0))
                                   (_tl1462814672_ (values-ref _g31654_ 1)))
                               (if (gx#stx-null? _tl1462814672_)
                                   (letrec ((_loop1462914675_
                                             (lambda (_hd1462714679_
                                                      _super1463314682_)
                                               (if (gx#stx-pair?
                                                    _hd1462714679_)
                                                   (let ((_e1463014685_
                                                          (gx#syntax-e
                                                           _hd1462714679_)))
                                                     (let ((_lp-hd1463114689_
                                                            (##car _e1463014685_))
                                                           (_lp-tl1463214692_
                                                            (##cdr _e1463014685_)))
                                                       (_loop1462914675_
                                                        _lp-tl1463214692_
                                                        (cons _lp-hd1463114689_
                                                              _super1463314682_))))
                                                   (let ((_super1463414695_
                                                          (reverse _super1463314682_)))
                                                     (if (gx#stx-pair?
                                                          _tl1462514666_)
                                                         (let ((_e1463514699_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1462514666_)))
                   (let ((_hd1463614703_ (##car _e1463514699_))
                         (_tl1463714706_ (##cdr _e1463514699_)))
                     (if (gx#stx-pair/null? _hd1463614703_)
                         (if (fx>= (gx#stx-length _hd1463614703_) '0)
                             (let ((_g31656_
                                    (gx#syntax-split-splice
                                     _hd1463614703_
                                     '0)))
                               (begin
                                 (let ((_g31657_ (values-count _g31656_)))
                                   (if (not (fx= _g31657_ 2))
                                       (error "Context expects 2 values"
                                              _g31657_)))
                                 (let ((_target1463814709_
                                        (values-ref _g31656_ 0))
                                       (_tl1464014712_
                                        (values-ref _g31656_ 1)))
                                   (if (gx#stx-null? _tl1464014712_)
                                       (letrec ((_loop1464114715_
                                                 (lambda (_hd1463914719_
                                                          _slot1464514722_)
                                                   (if (gx#stx-pair?
                                                        _hd1463914719_)
                                                       (let ((_e1464214725_
                                                              (gx#syntax-e
                                                               _hd1463914719_)))
                                                         (let ((_lp-hd1464314729_
                                                                (##car _e1464214725_))
                                                               (_lp-tl1464414732_
                                                                (##cdr _e1464214725_)))
                                                           (_loop1464114715_
                                                            _lp-tl1464414732_
                                                            (cons _lp-hd1464314729_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _slot1464514722_))))
               (let ((_slot1464614735_ (reverse _slot1464514722_)))
                 (if (gx#stx-null? _tl1463714706_)
                     ((lambda (_L14739_ _L14741_)
                        (let ()
                          (cons (gx#datum->syntax '#f 'make-class-type)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _L13789_ '()))
                                      (cons (cons (gx#datum->syntax '#f '@list)
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g1476314768_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1476414771_)
                     (cons _g1476314768_ _g1476414771_))
                   '()
                   _L14741_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'quote)
                                                        (cons (begin
                                                                '#!void
                                                                (foldr (lambda (_g1476514774_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g1476614777_)
                                 (cons _g1476514774_ _g1476614777_))
                               '()
                               _L14739_))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'quote)
                                                              (cons _L13817_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _L13845_
                      (cons (cons (gx#datum->syntax '#f 'quote)
                                  (cons _L13873_ '()))
                            '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      _slot1464614735_
                      _super1463414695_)
                     (_g1461914652_ _g1462014656_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop1464114715_
                                          _target1463814709_
                                          '()))
                                       (_g1461914652_ _g1462014656_)))))
                             (_g1461914652_ _g1462014656_))
                         (_g1461914652_ _g1462014656_))))
                 (_g1461914652_ _g1462014656_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop1462914675_ _target1462614669_ '()))
                                   (_g1461914652_ _g1462014656_)))))
                         (_g1461914652_ _g1462014656_))
                     (_g1461914652_ _g1462014656_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1461914652_
                                                      _g1462014656_)))))
                                         (_g1461814780_
                                          (list _L13603_
                                                (gx#stx-map
                                                 gx#stx-car
                                                 _els13638_)))))))))
                            _g1385913870_))))
                   (_g1385714784_ (gx#stx-getq 'constructor: _L13599_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1383113842_))))
                                            (_g1382914788_
                                             (let ((_$e14792_
                                                    (gx#stx-getq
                                                     'plist:
                                                     _L13599_)))
                                               (if _$e14792_
                                                   _$e14792_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '@list)
                                                         '())))))))
                                      _g1380313814_))))
                             (_g1380114796_
                              (let ((_$e14800_ (gx#stx-getq 'name: _L13599_)))
                                (if _$e14800_ _$e14800_ _L13604_))))))
                       _g1377513786_))))
              (_g1377314804_
               (let ((_$e14808_ (gx#stx-getq 'id: _L13599_)))
                 (if _$e14808_
                     _$e14808_
                     (if (gx#module-context? (gx#current-expander-context))
                         (_module-type-id13513_ _L13604_)
                         (gx#genident _L13604_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1366513733_
                                                _hd1366213723_
                                                _hd1365913713_
                                                _hd1365613703_
                                                _hd1365313693_
                                                _hd1365013683_)
                                               (_g1364113672_ _g1364213676_))))
                                       (_g1364113672_ _g1364213676_))))
                               (_g1364113672_ _g1364213676_))))
                       (_g1364113672_ _g1364213676_))))
               (_g1364113672_ _g1364213676_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1364113672_ _g1364213676_))))
                                       (_g1364113672_ _g1364213676_)))))
                           (_g1364014812_
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
                         (_g1351513542_ _g1351613546_)))
                   _tl1353613596_
                   _hd1353513593_
                   _hd1353213583_
                   _hd1352913573_
                   _hd1352613563_)))
              (_g1351513542_ _g1351613546_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1351513542_ _g1351613546_))))
                                      (_g1351513542_ _g1351613546_))))
                              (_g1351513542_ _g1351613546_))))
                      (_g1351513542_ _g1351613546_)))))
          (_g1351414816_ _stx13503_)))))
  (define |gerbil/core$<MOP>$<MOP:1>[:0:]#defstruct-type|
    (lambda (_stx15116_)
      (|gerbil/core$<MOP>$<MOP:1>[1]#generate-typedef| _stx15116_ '#t)))
  (define |gerbil/core$<MOP>$<MOP:1>[:0:]#defclass-type|
    (lambda (_stx15119_)
      (|gerbil/core$<MOP>$<MOP:1>[1]#generate-typedef| _stx15119_ '#f))))
