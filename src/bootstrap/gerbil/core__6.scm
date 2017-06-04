(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<MOP>::<MOP:1>[1]#generate-typedef|
    (lambda (_stx13085_ _struct?13087_)
      (let ((_wrap13089_
             (lambda (_e-stx14088_)
               (gx#stx-wrap-source _e-stx14088_ (gx#stx-source _stx13085_)))))
        (let ((_slotify13091_
               (lambda (_field14022_ _off14024_)
                 (let ((_g1402614041_
                        (lambda (_g1402714037_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1402714037_))))
                   (let ((_g1402514084_
                          (lambda (_g1402714045_)
                            (if (gx#stx-pair? _g1402714045_)
                                (let ((_e1403014048_
                                       (gx#syntax-e _g1402714045_)))
                                  (let ((_hd1403114052_ (##car _e1403014048_))
                                        (_tl1403214055_ (##cdr _e1403014048_)))
                                    (if (gx#stx-pair? _tl1403214055_)
                                        (let ((_e1403314058_
                                               (gx#syntax-e _tl1403214055_)))
                                          (let ((_hd1403414062_
                                                 (##car _e1403314058_))
                                                (_tl1403514065_
                                                 (##cdr _e1403314058_)))
                                            (if (gx#stx-null? _tl1403514065_)
                                                ((lambda (_L14068_ _L14070_)
                                                   (cons _off14024_
                                                         (cons _L14070_
                                                               (cons _L14068_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1403414062_
                                                 _hd1403114052_)
                                                (_g1402614041_
                                                 _g1402714045_))))
                                        (_g1402614041_ _g1402714045_))))
                                (_g1402614041_ _g1402714045_)))))
                     (_g1402514084_ _field14022_))))))
          (let ((_struct-opt?13092_
                 (lambda (_key14019_)
                   (memq (gx#stx-e _key14019_)
                         '(fields: id: name: plist: constructor:)))))
            (let ((_class-opt?13093_
                   (lambda (_key14016_)
                     (memq (gx#stx-e _key14016_)
                           '(slots: id: name: plist: constructor:)))))
              (let ((_module-type-id13094_
                     (lambda (_type-t14003_)
                       (let ((_$e14006_
                              (gx#module-context-ns
                               (gx#current-expander-context))))
                         (if _$e14006_
                             ((lambda (_ns14010_)
                                (gx#stx-identifier
                                 _type-t14003_
                                 _ns14010_
                                 '"#"
                                 _type-t14003_))
                              _$e14006_)
                             (let ((_mid14013_
                                    (gx#expander-context-id
                                     (gx#current-expander-context))))
                               (gx#stx-identifier
                                _type-t14003_
                                _mid14013_
                                '"#"
                                _type-t14003_)))))))
                (let ((_g1309613123_
                       (lambda (_g1309713119_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1309713119_))))
                  (let ((_g1309513999_
                         (lambda (_g1309713127_)
                           (if (gx#stx-pair? _g1309713127_)
                               (let ((_e1310313130_
                                      (gx#syntax-e _g1309713127_)))
                                 (let ((_hd1310413134_ (##car _e1310313130_))
                                       (_tl1310513137_ (##cdr _e1310313130_)))
                                   (if (gx#stx-pair? _tl1310513137_)
                                       (let ((_e1310613140_
                                              (gx#syntax-e _tl1310513137_)))
                                         (let ((_hd1310713144_
                                                (##car _e1310613140_))
                                               (_tl1310813147_
                                                (##cdr _e1310613140_)))
                                           (if (gx#stx-pair? _tl1310813147_)
                                               (let ((_e1310913150_
                                                      (gx#syntax-e
                                                       _tl1310813147_)))
                                                 (let ((_hd1311013154_
                                                        (##car _e1310913150_))
                                                       (_tl1311113157_
                                                        (##cdr _e1310913150_)))
                                                   (if (gx#stx-pair?
                                                        _tl1311113157_)
                                                       (let ((_e1311213160_
                                                              (gx#syntax-e
                                                               _tl1311113157_)))
                                                         (let ((_hd1311313164_
                                                                (##car _e1311213160_))
                                                               (_tl1311413167_
                                                                (##cdr _e1311213160_)))
                                                           (if (gx#stx-pair?
                                                                _tl1311413167_)
                                                               (let ((_e1311513170_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl1311413167_)))
                         (let ((_hd1311613174_ (##car _e1311513170_))
                               (_tl1311713177_ (##cdr _e1311513170_)))
                           ((lambda (_L13180_
                                     _L13182_
                                     _L13183_
                                     _L13184_
                                     _L13185_)
                              (if (if (gx#identifier? _L13185_)
                                      (if (let ((_$e13211_
                                                 (gx#identifier? _L13183_)))
                                            (if _$e13211_
                                                _$e13211_
                                                (gx#stx-false? _L13183_)))
                                          (if (gx#identifier? _L13182_)
                                              (gx#stx-plist?
                                               _L13180_
                                               (if _struct?13087_
                                                   _struct-opt?13092_
                                                   _class-opt?13093_))
                                              '#f)
                                          '#f)
                                      '#f)
                                  (let ((_els13219_
                                         (let ((_$e13215_
                                                (gx#stx-getq
                                                 (if _struct?13087_
                                                     'fields:
                                                     'slots:)
                                                 _L13180_)))
                                           (if _$e13215_ _$e13215_ '()))))
                                    (let ((_g1322213245_
                                           (lambda (_g1322313241_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1322313241_))))
                                      (let ((_g1322113995_
                                             (lambda (_g1322313249_)
                                               (if (gx#stx-pair? _g1322313249_)
                                                   (let ((_e1322813252_
                                                          (gx#syntax-e
                                                           _g1322313249_)))
                                                     (let ((_hd1322913256_
                                                            (##car _e1322813252_))
                                                           (_tl1323013259_
                                                            (##cdr _e1322813252_)))
                                                       (if (gx#stx-pair?
                                                            _tl1323013259_)
                                                           (let ((_e1323113262_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl1323013259_)))
                     (let ((_hd1323213266_ (##car _e1323113262_))
                           (_tl1323313269_ (##cdr _e1323113262_)))
                       (if (gx#stx-pair? _tl1323313269_)
                           (let ((_e1323413272_ (gx#syntax-e _tl1323313269_)))
                             (let ((_hd1323513276_ (##car _e1323413272_))
                                   (_tl1323613279_ (##cdr _e1323413272_)))
                               (if (gx#stx-pair? _tl1323613279_)
                                   (let ((_e1323713282_
                                          (gx#syntax-e _tl1323613279_)))
                                     (let ((_hd1323813286_
                                            (##car _e1323713282_))
                                           (_tl1323913289_
                                            (##cdr _e1323713282_)))
                                       (if (gx#stx-null? _tl1323913289_)
                                           ((lambda (_L13292_
                                                     _L13294_
                                                     _L13295_
                                                     _L13296_)
                                              (let ()
                                                (let ((_g1331913327_
                                                       (lambda (_g1332013323_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1332013323_))))
                                                  (let ((_g1331813987_
                                                         (lambda (_g1332013331_)
                                                           ((lambda (_L13334_)
                                                              (let ()
                                                                (let ((_g1334713355_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g1334813351_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1334813351_))))
                          (let ((_g1334613979_
                                 (lambda (_g1334813359_)
                                   ((lambda (_L13362_)
                                      (let ()
                                        (let ((_g1337513383_
                                               (lambda (_g1337613379_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1337613379_))))
                                          (let ((_g1337413971_
                                                 (lambda (_g1337613387_)
                                                   ((lambda (_L13390_)
                                                      (let ()
                                                        (let ((_g1340313411_
                                                               (lambda (_g1340413407_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1340413407_))))
                  (let ((_g1340213967_
                         (lambda (_g1340413415_)
                           ((lambda (_L13418_)
                              (let ()
                                (let ((_g1343113439_
                                       (lambda (_g1343213435_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1343213435_))))
                                  (let ((_g1343013767_
                                         (lambda (_g1343213443_)
                                           ((lambda (_L13446_)
                                              (let ()
                                                (let ((_g1345913467_
                                                       (lambda (_g1346013463_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1346013463_))))
                                                  (let ((_g1345813763_
                                                         (lambda (_g1346013471_)
                                                           ((lambda (_L13474_)
                                                              (let ()
                                                                (let ((_g1348713495_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g1348813491_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1348813491_))))
                          (let ((_g1348613759_
                                 (lambda (_g1348813499_)
                                   ((lambda (_L13502_)
                                      (let ()
                                        (let ((_g1351513523_
                                               (lambda (_g1351613519_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1351613519_))))
                                          (let ((_g1351413755_
                                                 (lambda (_g1351613527_)
                                                   ((lambda (_L13530_)
                                                      (let ()
                                                        (let ((_g1354313569_
                                                               (lambda (_g1354413565_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1354413565_))))
                  (let ((_g1354213667_
                         (lambda (_g1354413573_)
                           (if (gx#stx-pair/null? _g1354413573_)
                               (if (fx>= (gx#stx-length _g1354413573_) '0)
                                   (let ((_g29492_
                                          (gx#syntax-split-splice
                                           _g1354413573_
                                           '0)))
                                     (begin
                                       (let ((_g29493_
                                              (values-count _g29492_)))
                                         (if (not (fx= _g29493_ 2))
                                             (error "Context expects 2 values"
                                                    _g29493_)))
                                       (let ((_target1354713576_
                                              (values-ref _g29492_ 0))
                                             (_tl1354913579_
                                              (values-ref _g29492_ 1)))
                                         (if (gx#stx-null? _tl1354913579_)
                                             (letrec ((_loop1355013582_
                                                       (lambda (_hd1354813586_
                                                                _def-setf1355413589_
                                                                _def-getf1355513591_)
                                                         (if (gx#stx-pair?
                                                              _hd1354813586_)
                                                             (let ((_e1355113594_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _hd1354813586_)))
                       (let ((_lp-hd1355213598_ (##car _e1355113594_))
                             (_lp-tl1355313601_ (##cdr _e1355113594_)))
                         (if (gx#stx-pair? _lp-hd1355213598_)
                             (let ((_e1355813604_
                                    (gx#syntax-e _lp-hd1355213598_)))
                               (let ((_hd1355913608_ (##car _e1355813604_))
                                     (_tl1356013611_ (##cdr _e1355813604_)))
                                 (if (gx#stx-pair? _tl1356013611_)
                                     (let ((_e1356113614_
                                            (gx#syntax-e _tl1356013611_)))
                                       (let ((_hd1356213618_
                                              (##car _e1356113614_))
                                             (_tl1356313621_
                                              (##cdr _e1356113614_)))
                                         (if (gx#stx-null? _tl1356313621_)
                                             (_loop1355013582_
                                              _lp-tl1355313601_
                                              (cons _hd1356213618_
                                                    _def-setf1355413589_)
                                              (cons _hd1355913608_
                                                    _def-getf1355513591_))
                                             (_g1354313569_ _g1354413573_))))
                                     (_g1354313569_ _g1354413573_))))
                             (_g1354313569_ _g1354413573_))))
                     (let ((_def-setf1355613624_
                            (reverse _def-setf1355413589_))
                           (_def-getf1355713627_
                            (reverse _def-getf1355513591_)))
                       ((lambda (_L13630_ _L13632_)
                          (let ()
                            (let ()
                              (_wrap13089_
                               (cons (gx#datum->syntax '#f 'begin)
                                     (cons _L13474_
                                           (cons _L13530_
                                                 (cons _L13502_
                                                       (begin
                                                         '#!void
                                                         (foldr (lambda (_g1365013655_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g1365113658_)
                          (cons _g1365013655_ _g1365113658_))
                        (begin
                          '#!void
                          (foldr (lambda (_g1365213661_ _g1365313664_)
                                   (cons _g1365213661_ _g1365313664_))
                                 '()
                                 _L13630_))
                        _L13632_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        _def-setf1355613624_
                        _def-getf1355713627_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop1355013582_
                                                _target1354713576_
                                                '()
                                                '()))
                                             (_g1354313569_ _g1354413573_)))))
                                   (_g1354313569_ _g1354413573_))
                               (_g1354313569_ _g1354413573_)))))
                    (_g1354213667_
                     (gx#stx-map
                      (lambda (_ref13671_)
                        (let ((_g1367413693_
                               (lambda (_g1367513689_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1367513689_))))
                          (let ((_g1367313751_
                                 (lambda (_g1367513697_)
                                   (if (gx#stx-pair? _g1367513697_)
                                       (let ((_e1367913700_
                                              (gx#syntax-e _g1367513697_)))
                                         (let ((_hd1368013704_
                                                (##car _e1367913700_))
                                               (_tl1368113707_
                                                (##cdr _e1367913700_)))
                                           (if (gx#stx-pair? _tl1368113707_)
                                               (let ((_e1368213710_
                                                      (gx#syntax-e
                                                       _tl1368113707_)))
                                                 (let ((_hd1368313714_
                                                        (##car _e1368213710_))
                                                       (_tl1368413717_
                                                        (##cdr _e1368213710_)))
                                                   (if (gx#stx-pair?
                                                        _tl1368413717_)
                                                       (let ((_e1368513720_
                                                              (gx#syntax-e
                                                               _tl1368413717_)))
                                                         (let ((_hd1368613724_
                                                                (##car _e1368513720_))
                                                               (_tl1368713727_
                                                                (##cdr _e1368513720_)))
                                                           (if (gx#stx-null?
                                                                _tl1368713727_)
                                                               ((lambda (_L13730_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L13732_
                                 _L13733_)
                          (cons (_wrap13089_
                                 (cons (gx#datum->syntax '#f 'def)
                                       (cons _L13732_
                                             (cons (cons _L13294_
                                                         (cons _L13185_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'quote)
                                   (cons _L13733_ '()))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                                (cons (_wrap13089_
                                       (cons (gx#datum->syntax '#f 'def)
                                             (cons _L13730_
                                                   (cons (cons _L13292_
                                                               (cons _L13185_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'quote)
                                         (cons _L13733_ '()))
                                   '())))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                        _hd1368613724_
                        _hd1368313714_
                        _hd1368013704_)
                       (_g1367413693_ _g1367513697_))))
               (_g1367413693_ _g1367513697_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1367413693_ _g1367513697_))))
                                       (_g1367413693_ _g1367513697_)))))
                            (_g1367313751_ _ref13671_))))
                      (if _struct?13087_
                          (gx#stx-map
                           _slotify13091_
                           _els13219_
                           (iota (gx#stx-length _els13219_)))
                          _els13219_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1351613527_))))
                                            (_g1351413755_
                                             (_wrap13089_
                                              (cons (gx#datum->syntax '#f 'def)
                                                    (cons _L13182_
                                                          (cons (cons _L13295_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _L13185_ '()))
                        '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _g1348813499_))))
                            (_g1348613759_
                             (if (gx#stx-false? _L13183_)
                                 (cons (gx#datum->syntax '#f 'begin) '())
                                 (_wrap13089_
                                  (cons (gx#datum->syntax '#f 'def)
                                        (cons (cons _L13183_
                                                    (gx#datum->syntax
                                                     '#f
                                                     '$args))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'apply)
                                                          (cons _L13296_
                                                                (cons _L13185_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#datum->syntax '#f '$args) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))))))
                    _g1346013471_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1345813763_
                                                     (_wrap13089_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'def)
                                                            (cons _L13185_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L13446_ '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g1343213443_))))
                                    (_g1343013767_
                                     (if _struct?13087_
                                         (let ((_g1377113779_
                                                (lambda (_g1377213775_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1377213775_))))
                                           (let ((_g1377013798_
                                                  (lambda (_g1377213783_)
                                                    ((lambda (_L13786_)
                                                       (let ()
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'make-struct-type)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'quote)
                                   (cons _L13334_ '()))
                             (cons _L13184_
                                   (cons _L13786_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _L13362_ '()))
                                               (cons _L13390_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _L13418_ '()))
                   '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1377213783_))))
                                             (_g1377013798_
                                              (gx#stx-length _els13219_))))
                                         (let ((_g1380213835_
                                                (lambda (_g1380313831_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1380313831_))))
                                           (let ((_g1380113963_
                                                  (lambda (_g1380313839_)
                                                    (if (gx#stx-pair?
                                                         _g1380313839_)
                                                        (let ((_e1380613842_
                                                               (gx#syntax-e
                                                                _g1380313839_)))
                                                          (let ((_hd1380713846_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1380613842_))
                        (_tl1380813849_ (##cdr _e1380613842_)))
                    (if (gx#stx-pair/null? _hd1380713846_)
                        (if (fx>= (gx#stx-length _hd1380713846_) '0)
                            (let ((_g29494_
                                   (gx#syntax-split-splice _hd1380713846_ '0)))
                              (begin
                                (let ((_g29495_ (values-count _g29494_)))
                                  (if (not (fx= _g29495_ 2))
                                      (error "Context expects 2 values"
                                             _g29495_)))
                                (let ((_target1380913852_
                                       (values-ref _g29494_ 0))
                                      (_tl1381113855_ (values-ref _g29494_ 1)))
                                  (if (gx#stx-null? _tl1381113855_)
                                      (letrec ((_loop1381213858_
                                                (lambda (_hd1381013862_
                                                         _super1381613865_)
                                                  (if (gx#stx-pair?
                                                       _hd1381013862_)
                                                      (let ((_e1381313868_
                                                             (gx#syntax-e
                                                              _hd1381013862_)))
                                                        (let ((_lp-hd1381413872_
                                                               (##car _e1381313868_))
                                                              (_lp-tl1381513875_
                                                               (##cdr _e1381313868_)))
                                                          (_loop1381213858_
                                                           _lp-tl1381513875_
                                                           (cons _lp-hd1381413872_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _super1381613865_))))
              (let ((_super1381713878_ (reverse _super1381613865_)))
                (if (gx#stx-pair? _tl1380813849_)
                    (let ((_e1381813882_ (gx#syntax-e _tl1380813849_)))
                      (let ((_hd1381913886_ (##car _e1381813882_))
                            (_tl1382013889_ (##cdr _e1381813882_)))
                        (if (gx#stx-pair/null? _hd1381913886_)
                            (if (fx>= (gx#stx-length _hd1381913886_) '0)
                                (let ((_g29496_
                                       (gx#syntax-split-splice
                                        _hd1381913886_
                                        '0)))
                                  (begin
                                    (let ((_g29497_ (values-count _g29496_)))
                                      (if (not (fx= _g29497_ 2))
                                          (error "Context expects 2 values"
                                                 _g29497_)))
                                    (let ((_target1382113892_
                                           (values-ref _g29496_ 0))
                                          (_tl1382313895_
                                           (values-ref _g29496_ 1)))
                                      (if (gx#stx-null? _tl1382313895_)
                                          (letrec ((_loop1382413898_
                                                    (lambda (_hd1382213902_
                                                             _slot1382813905_)
                                                      (if (gx#stx-pair?
                                                           _hd1382213902_)
                                                          (let ((_e1382513908_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _hd1382213902_)))
                    (let ((_lp-hd1382613912_ (##car _e1382513908_))
                          (_lp-tl1382713915_ (##cdr _e1382513908_)))
                      (_loop1382413898_
                       _lp-tl1382713915_
                       (cons _lp-hd1382613912_ _slot1382813905_))))
                  (let ((_slot1382913918_ (reverse _slot1382813905_)))
                    (if (gx#stx-null? _tl1382013889_)
                        ((lambda (_L13922_ _L13924_)
                           (let ()
                             (cons (gx#datum->syntax '#f 'make-class-type)
                                   (cons (cons (gx#datum->syntax '#f 'quote)
                                               (cons _L13334_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '@list)
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g1394613951_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1394713954_)
                        (cons _g1394613951_ _g1394713954_))
                      '()
                      _L13924_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#!void
                           (foldr (lambda (_g1394813957_ _g1394913960_)
                                    (cons _g1394813957_ _g1394913960_))
                                  '()
                                  _L13922_))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _L13362_ '()))
                   (cons _L13390_
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _L13418_ '()))
                               '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         _slot1382913918_
                         _super1381713878_)
                        (_g1380213835_ _g1380313839_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1382413898_
                                             _target1382113892_
                                             '()))
                                          (_g1380213835_ _g1380313839_)))))
                                (_g1380213835_ _g1380313839_))
                            (_g1380213835_ _g1380313839_))))
                    (_g1380213835_ _g1380313839_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1381213858_
                                         _target1380913852_
                                         '()))
                                      (_g1380213835_ _g1380313839_)))))
                            (_g1380213835_ _g1380313839_))
                        (_g1380213835_ _g1380313839_))))
                (_g1380213835_ _g1380313839_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1380113963_
                                              (list _L13184_
                                                    (gx#stx-map
                                                     gx#stx-car
                                                     _els13219_)))))))))))
                            _g1340413415_))))
                    (_g1340213967_ (gx#stx-getq 'constructor: _L13180_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1337613387_))))
                                            (_g1337413971_
                                             (let ((_$e13975_
                                                    (gx#stx-getq
                                                     'plist:
                                                     _L13180_)))
                                               (if _$e13975_
                                                   _$e13975_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '@list)
                                                         '()))))))))
                                    _g1334813359_))))
                            (_g1334613979_
                             (let ((_$e13983_ (gx#stx-getq 'name: _L13180_)))
                               (if _$e13983_ _$e13983_ _L13185_)))))))
                    _g1332013331_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1331813987_
                                                     (let ((_$e13991_
                                                            (gx#stx-getq
                                                             'id:
                                                             _L13180_)))
                                                       (if _$e13991_
                                                           _$e13991_
                                                           (if (gx#module-context?
                                                                (gx#current-expander-context))
                                                               (_module-type-id13094_
                                                                _L13185_)
                                                               (gx#genident
                                                                _L13185_)))))))))
                                            _hd1323813286_
                                            _hd1323513276_
                                            _hd1323213266_
                                            _hd1322913256_)
                                           (_g1322213245_ _g1322313249_))))
                                   (_g1322213245_ _g1322313249_))))
                           (_g1322213245_ _g1322313249_))))
                   (_g1322213245_ _g1322313249_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1322213245_
                                                    _g1322313249_)))))
                                        (_g1322113995_
                                         (if _struct?13087_
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
                                  (_g1309613123_ _g1309713127_)))
                            _tl1311713177_
                            _hd1311613174_
                            _hd1311313164_
                            _hd1311013154_
                            _hd1310713144_)))
                       (_g1309613123_ _g1309713127_))))
               (_g1309613123_ _g1309713127_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1309613123_ _g1309713127_))))
                                       (_g1309613123_ _g1309713127_))))
                               (_g1309613123_ _g1309713127_)))))
                    (_g1309513999_ _stx13085_))))))))))
  (define |gerbil/core::<MOP>::<MOP:1>[:0:]#defstruct-type|
    (lambda (_stx14094_)
      (|gerbil/core::<MOP>::<MOP:1>[1]#generate-typedef| _stx14094_ '#t)))
  (define |gerbil/core::<MOP>::<MOP:1>[:0:]#defclass-type|
    (lambda (_stx14097_)
      (|gerbil/core::<MOP>::<MOP:1>[1]#generate-typedef| _stx14097_ '#f))))
