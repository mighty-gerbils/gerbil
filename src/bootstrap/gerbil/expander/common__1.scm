(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gx[1]#_g12219_| (gx#core-quote-syntax 'error::t))
  (define |gx[1]#_g12220_| (gx#core-quote-syntax 'AST::t))
  (define |gx[1]#_g12223_| (gx#core-quote-syntax 'else))
  (begin
    (define |gx[:0:]#<error>|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-info|
       'runtime-identifier:
       |gx[1]#_g12219_|))
    (define |gx[:0:]#AST|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-info|
       'runtime-identifier:
       |gx[1]#_g12220_|))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx131_)
        (let ((_generate134_
               (lambda (_tgt286_ _kws288_ _clauses289_)
                 (let ((_generate1293_
                        (lambda (_where679_
                                 _hd681_
                                 _fender682_
                                 _body683_
                                 _E684_)
                          (letrec ((_recur686_
                                    (lambda (_hd689_ _tgt691_ _K692_)
                                      (let ((_g695707_
                                             (lambda (_g696703_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g696703_))))
                                        (let ((_g694974_
                                               (lambda (_g696711_)
                                                 ((lambda ()
                                                    (if (gx#identifier?
                                                         _hd689_)
                                                        (if (gx#underscore?
                                                             _hd689_)
                                                            _K692_
                                                            (if (find (lambda (_g717719_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (gx#bound-identifier=? _g717719_ _hd689_))
                              _kws288_)
                        (let ((_g723738_
                               (lambda (_g724734_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g724734_))))
                          (let ((_g722789_
                                 (lambda (_g724742_)
                                   (if (gx#stx-pair? _g724742_)
                                       (let ((_e727745_
                                              (gx#syntax-e _g724742_)))
                                         (let ((_hd728749_ (##car _e727745_))
                                               (_tl729752_ (##cdr _e727745_)))
                                           (if (gx#stx-pair? _tl729752_)
                                               (let ((_e730755_
                                                      (gx#syntax-e
                                                       _tl729752_)))
                                                 (let ((_hd731759_
                                                        (##car _e730755_))
                                                       (_tl732762_
                                                        (##cdr _e730755_)))
                                                   (if (gx#stx-null?
                                                        _tl732762_)
                                                       ((lambda (_L765_ _L767_)
                                                          (let ()
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'if)
                          (cons (cons (gx#datum->syntax '#f 'and)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'identifier?)
                                                  (cons _L767_ '()))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'core-identifier=?)
                                                        (cons _L767_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _L765_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (cons _K692_ (cons _E684_ '()))))))
                _hd731759_
                _hd728749_)
               (_g723738_ _g724742_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g723738_ _g724742_))))
                                       (_g723738_ _g724742_)))))
                            (_g722789_ (list _tgt691_ _hd689_))))
                        (let ((_g793808_
                               (lambda (_g794804_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g794804_))))
                          (let ((_g792852_
                                 (lambda (_g794812_)
                                   (if (gx#stx-pair? _g794812_)
                                       (let ((_e797815_
                                              (gx#syntax-e _g794812_)))
                                         (let ((_hd798819_ (##car _e797815_))
                                               (_tl799822_ (##cdr _e797815_)))
                                           (if (gx#stx-pair? _tl799822_)
                                               (let ((_e800825_
                                                      (gx#syntax-e
                                                       _tl799822_)))
                                                 (let ((_hd801829_
                                                        (##car _e800825_))
                                                       (_tl802832_
                                                        (##cdr _e800825_)))
                                                   (if (gx#stx-null?
                                                        _tl802832_)
                                                       ((lambda (_L835_ _L837_)
                                                          (let ()
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'let)
                          (cons (cons (cons _L835_ (cons _L837_ '())) '())
                                (cons _K692_ '())))))
                _hd801829_
                _hd798819_)
               (_g793808_ _g794812_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g793808_ _g794812_))))
                                       (_g793808_ _g794812_)))))
                            (_g792852_ (list _tgt691_ _hd689_))))))
                (if (gx#stx-null? _hd689_)
                    (let ((_g856864_
                           (lambda (_g857860_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g857860_))))
                      (let ((_g855882_
                             (lambda (_g857868_)
                               ((lambda (_L871_)
                                  (let ()
                                    (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'stx-null?)
                                                      (cons _L871_ '()))
                                                (cons _K692_
                                                      (cons _E684_ '()))))))
                                _g857868_))))
                        (_g855882_ _tgt691_)))
                    (if (gx#stx-datum? _hd689_)
                        (let ((_g886905_
                               (lambda (_g887901_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g887901_))))
                          (let ((_g885963_
                                 (lambda (_g887909_)
                                   (if (gx#stx-pair? _g887909_)
                                       (let ((_e891912_
                                              (gx#syntax-e _g887909_)))
                                         (let ((_hd892916_ (##car _e891912_))
                                               (_tl893919_ (##cdr _e891912_)))
                                           (if (gx#stx-pair? _tl893919_)
                                               (let ((_e894922_
                                                      (gx#syntax-e
                                                       _tl893919_)))
                                                 (let ((_hd895926_
                                                        (##car _e894922_))
                                                       (_tl896929_
                                                        (##cdr _e894922_)))
                                                   (if (gx#stx-pair?
                                                        _tl896929_)
                                                       (let ((_e897932_
                                                              (gx#syntax-e
                                                               _tl896929_)))
                                                         (let ((_hd898936_
                                                                (##car _e897932_))
                                                               (_tl899939_
                                                                (##cdr _e897932_)))
                                                           (if (gx#stx-null?
                                                                _tl899939_)
                                                               ((lambda (_L942_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L944_
                                 _L945_)
                          (let ()
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons _L942_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-e)
                                                          (cons _L945_ '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _L944_ '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons _K692_ (cons _E684_ '()))))))
                        _hd898936_
                        _hd895926_
                        _hd892916_)
                       (_g886905_ _g887909_))))
               (_g886905_ _g887909_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g886905_ _g887909_))))
                                       (_g886905_ _g887909_)))))
                            (_g885963_
                             (list _tgt691_
                                   _hd689_
                                   (let ((_e967_ (gx#stx-e _hd689_)))
                                     (if (let ((_$e970_ (keyword? _e967_)))
                                           (if _$e970_
                                               _$e970_
                                               (immediate? _e967_)))
                                         (gx#datum->syntax '#f 'eq?)
                                         (if (number? _e967_)
                                             (gx#datum->syntax '#f 'eqv?)
                                             (gx#datum->syntax
                                              '#f
                                              'equal?))))))))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _stx131_
                         _where679_
                         _hd689_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ((_g6931197_
                                                 (lambda (_g696978_)
                                                   (if (gx#stx-pair? _g696978_)
                                                       (let ((_e699981_
                                                              (gx#syntax-e
                                                               _g696978_)))
                                                         (let ((_hd700985_
                                                                (##car _e699981_))
                                                               (_tl701988_
                                                                (##cdr _e699981_)))
                                                           ((lambda (_L991_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L993_)
                      (let ((_g10041012_
                             (lambda (_g10051008_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g10051008_))))
                        (let ((_g10031193_
                               (lambda (_g10051016_)
                                 ((lambda (_L1019_)
                                    (let ()
                                      (let ((_g10311039_
                                             (lambda (_g10321035_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g10321035_))))
                                        (let ((_g10301189_
                                               (lambda (_g10321043_)
                                                 ((lambda (_L1046_)
                                                    (let ()
                                                      (let ((_g10591067_
                                                             (lambda (_g10601063_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g10601063_))))
                                                        (let ((_g10581185_
                                                               (lambda (_g10601071_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda (_L1074_)
                            (let ()
                              (let ((_g10871095_
                                     (lambda (_g10881091_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g10881091_))))
                                (let ((_g10861181_
                                       (lambda (_g10881099_)
                                         ((lambda (_L1102_)
                                            (let ()
                                              (let ((_g11151123_
                                                     (lambda (_g11161119_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g11161119_))))
                                                (let ((_g11141177_
                                                       (lambda (_g11161127_)
                                                         ((lambda (_L1130_)
                                                            (let ()
                                                              (let ((_g11431151_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g11441147_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g11441147_))))
                        (let ((_g11421173_
                               (lambda (_g11441155_)
                                 ((lambda (_L1158_)
                                    (let ()
                                      (let ()
                                        (cons (gx#datum->syntax '#f 'if)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-pair?)
                                                          (cons _L1019_ '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'let)
                        (cons (cons (cons _L1046_
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'syntax-e)
                                                      (cons _L1019_ '()))
                                                '()))
                                    '())
                              (cons (cons (gx#datum->syntax '#f 'let)
                                          (cons (cons (cons _L1074_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 '##car)
                                (cons _L1046_ '()))
                          '()))
              (cons (cons _L1102_
                          (cons (cons (gx#datum->syntax '#f '##cdr)
                                      (cons _L1046_ '()))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _L1130_ '())))
                                    '())))
                  (cons _L1158_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _g11441155_))))
                          (_g11421173_ _E684_)))))
                  _g11161127_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g11141177_
                                                   (_recur686_
                                                    _L993_
                                                    _L1074_
                                                    (_recur686_
                                                     _L991_
                                                     _L1102_
                                                     _K692_)))))))
                                          _g10881099_))))
                                  (_g10861181_ (gx#genident 'tl))))))
                          _g10601071_))))
                  (_g10581185_ (gx#genident 'hd))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g10321043_))))
                                          (_g10301189_ (gx#genident 'e))))))
                                  _g10051016_))))
                          (_g10031193_ _tgt691_))))
                    _tl701988_
                    _hd700985_)))
               (_g694974_ _g696978_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g6931197_ _hd689_)))))))
                            (_recur686_
                             _hd681_
                             _tgt286_
                             (cons (gx#datum->syntax '#f 'if)
                                   (cons _fender682_
                                         (cons _body683_
                                               (cons _E684_ '())))))))))
                   (let ((_generate-clause291_
                          (lambda (_hd1201_ _E1203_)
                            (let ((_g12071234_
                                   (lambda (_g12081230_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g12081230_))))
                              (let ((_g12061245_
                                     (lambda (_g12081238_)
                                       ((lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _stx131_
                                           _hd1201_))))))
                                (let ((_g12051303_
                                       (lambda (_g12081249_)
                                         (if (gx#stx-pair? _g12081249_)
                                             (let ((_e12201252_
                                                    (gx#syntax-e _g12081249_)))
                                               (let ((_hd12211256_
                                                      (##car _e12201252_))
                                                     (_tl12221259_
                                                      (##cdr _e12201252_)))
                                                 (if (gx#stx-pair?
                                                      _tl12221259_)
                                                     (let ((_e12231262_
                                                            (gx#syntax-e
                                                             _tl12221259_)))
                                                       (let ((_hd12241266_
                                                              (##car _e12231262_))
                                                             (_tl12251269_
                                                              (##cdr _e12231262_)))
                                                         (if (gx#stx-pair?
                                                              _tl12251269_)
                                                             (let ((_e12261272_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl12251269_)))
                       (let ((_hd12271276_ (##car _e12261272_))
                             (_tl12281279_ (##cdr _e12261272_)))
                         (if (gx#stx-null? _tl12281279_)
                             ((lambda (_L1282_ _L1284_ _L1285_)
                                (_generate1293_
                                 _hd1201_
                                 _L1285_
                                 _L1284_
                                 _L1282_
                                 _E1203_))
                              _hd12271276_
                              _hd12241266_
                              _hd12211256_)
                             (_g12061245_ _g12081249_))))
                     (_g12061245_ _g12081249_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g12061245_
                                                      _g12081249_))))
                                             (_g12061245_ _g12081249_)))))
                                  (let ((_g12041345_
                                         (lambda (_g12081307_)
                                           (if (gx#stx-pair? _g12081307_)
                                               (let ((_e12111310_
                                                      (gx#syntax-e
                                                       _g12081307_)))
                                                 (let ((_hd12121314_
                                                        (##car _e12111310_))
                                                       (_tl12131317_
                                                        (##cdr _e12111310_)))
                                                   (if (gx#stx-pair?
                                                        _tl12131317_)
                                                       (let ((_e12141320_
                                                              (gx#syntax-e
                                                               _tl12131317_)))
                                                         (let ((_hd12151324_
                                                                (##car _e12141320_))
                                                               (_tl12161327_
                                                                (##cdr _e12141320_)))
                                                           (if (gx#stx-null?
                                                                _tl12161327_)
                                                               ((lambda (_L1330_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L1332_)
                          (_generate1293_
                           _hd1201_
                           _L1332_
                           '#t
                           _L1330_
                           _E1203_))
                        _hd12151324_
                        _hd12121314_)
                       (_g12051303_ _g12081307_))))
               (_g12051303_ _g12081307_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g12051303_ _g12081307_)))))
                                    (_g12041345_ _hd1201_))))))))
                     (let ((_generate-clauses294_
                            (lambda (_clauses417_)
                              ((letrec ((_lp420_ (lambda (_rest423_
                                                          _E425_
                                                          _r426_)
                                                   (let ((_g429441_
                                                          (lambda (_g430437_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g430437_))))
                                                     (let ((_g428489_
                                                            (lambda (_g430445_)
                                                              ((lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((_g452460_
                                (lambda (_g453456_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g453456_))))
                           (let ((_g451485_
                                  (lambda (_g453464_)
                                    ((lambda (_L467_)
                                       (let ()
                                         (cons (cons _E425_
                                                     (cons (gx#stx-wrap-source
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'lambda)
                          (cons '()
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'raise-syntax-error)
                                            (cons '#f
                                                  (cons '"Bad syntax"
                                                        (cons _L467_ '()))))
                                      '())))
                    (gx#stx-source _stx131_))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _r426_)))
                                     _g453464_))))
                             (_g451485_ _tgt286_))))))))
               (let ((_g427675_
                      (lambda (_g430493_)
                        (if (gx#stx-pair? _g430493_)
                            (let ((_e433496_ (gx#syntax-e _g430493_)))
                              (let ((_hd434500_ (##car _e433496_))
                                    (_tl435503_ (##cdr _e433496_)))
                                ((lambda (_L506_ _L508_)
                                   (let ((_g520531_
                                          (lambda (_g521527_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g521527_))))
                                     (let ((_g519643_
                                            (lambda (_g521535_)
                                              ((lambda ()
                                                 (let ((_g542550_
                                                        (lambda (_g543546_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g543546_))))
                                                   (let ((_g541639_
                                                          (lambda (_g543554_)
                                                            ((lambda (_L557_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((_g573581_
                                (lambda (_g574577_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g574577_))))
                           (let ((_g572635_
                                  (lambda (_g574585_)
                                    ((lambda (_L588_)
                                       (let ()
                                         (let ((_g601609_
                                                (lambda (_g602605_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g602605_))))
                                           (let ((_g600631_
                                                  (lambda (_g602613_)
                                                    ((lambda (_L616_)
                                                       (let ()
                                                         (let ()
                                                           (_lp420_ _L506_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L557_
                            (cons (cons _E425_ (cons _L616_ '())) _r426_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g602613_))))
                                             (_g600631_
                                              (gx#stx-wrap-source
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons '()
                                                           (cons _L588_ '())))
                                               (gx#stx-source _L508_)))))))
                                     _g574585_))))
                             (_g572635_
                              (_generate-clause291_
                               _L508_
                               (cons _L557_ '())))))))
                     _g543554_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g541639_
                                                      (gx#genident 'E)))))))))
                                       (let ((_g518671_
                                              (lambda (_g521647_)
                                                (if (gx#stx-pair? _g521647_)
                                                    (let ((_e523650_
                                                           (gx#syntax-e
                                                            _g521647_)))
                                                      (let ((_hd524654_
                                                             (##car _e523650_))
                                                            (_tl525657_
                                                             (##cdr _e523650_)))
                                                        (if (gx#identifier?
                                                             _hd524654_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gx[1]#_g12223_|
                         _hd524654_)
                        ((lambda (_L660_)
                           (if (gx#stx-null? _L506_)
                               (if (if (gx#stx-list? _L660_)
                                       (not (gx#stx-null? _L660_))
                                       '#f)
                                   (cons (cons _E425_
                                               (cons (gx#stx-wrap-source
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'lambda)
                                                            (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'begin) _L660_)
                                '())))
              (gx#stx-source _L508_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         _r426_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _stx131_
                                    _L508_))
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; misplaced else"
                                _stx131_
                                _L508_)))
                         _tl525657_)
                        (_g519643_ _g521647_))
                    (_g519643_ _g521647_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g519643_ _g521647_)))))
                                         (_g518671_ _L508_)))))
                                 _tl435503_
                                 _hd434500_)))
                            (_g428489_ _g430493_)))))
                 (_g427675_ _rest423_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _lp420_)
                               _clauses417_
                               (gx#genident 'E)
                               '()))))
                       (let ((_bind296_ (_generate-clauses294_ _clauses289_)))
                         (let ((_g299316_
                                (lambda (_g300312_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g300312_))))
                           (let ((_g298413_
                                  (lambda (_g300320_)
                                    (if (gx#stx-pair/null? _g300320_)
                                        (if (fx>= (gx#stx-length _g300320_) '0)
                                            (let ((_g12221_
                                                   (gx#syntax-split-splice
                                                    _g300320_
                                                    '0)))
                                              (begin
                                                (let ((_g12222_
                                                       (values-count
                                                        _g12221_)))
                                                  (if (not (fx= _g12222_ 2))
                                                      (error "Context expects 2 values"
                                                             _g12222_)))
                                                (let ((_target302323_
                                                       (values-ref _g12221_ 0))
                                                      (_tl304326_
                                                       (values-ref
                                                        _g12221_
                                                        1)))
                                                  (if (gx#stx-null? _tl304326_)
                                                      (letrec ((_loop305329_
                                                                (lambda (_hd303333_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _bind-try309336_)
                          (if (gx#stx-pair? _hd303333_)
                              (let ((_e306339_ (gx#syntax-e _hd303333_)))
                                (let ((_lp-hd307343_ (##car _e306339_))
                                      (_lp-tl308346_ (##cdr _e306339_)))
                                  (_loop305329_
                                   _lp-tl308346_
                                   (cons _lp-hd307343_ _bind-try309336_))))
                              (let ((_bind-try310349_
                                     (reverse _bind-try309336_)))
                                ((lambda (_L353_)
                                   (let ()
                                     (let ((_g371379_
                                            (lambda (_g372375_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g372375_))))
                                       (let ((_g370409_
                                              (lambda (_g372383_)
                                                ((lambda (_L386_)
                                                   (let ()
                                                     (let ()
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let*)
                                                             (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#!void
                             (foldr (lambda (_g400403_ _g401406_)
                                      (cons _g400403_ _g401406_))
                                    '()
                                    _L353_))
                           (cons (cons _L386_ '()) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _g372383_))))
                                         (_g370409_ (car (last _bind296_)))))))
                                 _bind-try310349_))))))
                (_loop305329_ _target302323_ '()))
              (_g299316_ _g300320_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g299316_ _g300320_))
                                        (_g299316_ _g300320_)))))
                             (_g298413_ _bind296_))))))))))
          (let ((_g137156_
                 (lambda (_g138152_)
                   (gx#raise-syntax-error '#f '"Bad syntax" _g138152_))))
            (let ((_g136282_
                   (lambda (_g138160_)
                     (if (gx#stx-pair? _g138160_)
                         (let ((_e142163_ (gx#syntax-e _g138160_)))
                           (let ((_hd143167_ (##car _e142163_))
                                 (_tl144170_ (##cdr _e142163_)))
                             (if (gx#stx-pair? _tl144170_)
                                 (let ((_e145173_ (gx#syntax-e _tl144170_)))
                                   (let ((_hd146177_ (##car _e145173_))
                                         (_tl147180_ (##cdr _e145173_)))
                                     (if (gx#stx-pair? _tl147180_)
                                         (let ((_e148183_
                                                (gx#syntax-e _tl147180_)))
                                           (let ((_hd149187_ (##car _e148183_))
                                                 (_tl150190_
                                                  (##cdr _e148183_)))
                                             ((lambda (_L193_ _L195_ _L196_)
                                                (if (if (gx#identifier-list?
                                                         _L195_)
                                                        (gx#stx-list? _L193_)
                                                        '#f)
                                                    (let ((_g217225_
                                                           (lambda (_g218221_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g218221_))))
                                                      (let ((_g216278_
                                                             (lambda (_g218229_)
                                                               ((lambda (_L232_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let ((_g244252_
                                   (lambda (_g245248_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g245248_))))
                              (let ((_g243274_
                                     (lambda (_g245256_)
                                       ((lambda (_L259_)
                                          (let ()
                                            (let ()
                                              (cons (gx#datum->syntax '#f 'let)
                                                    (cons (cons (cons _L232_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _L196_ '()))
                        '())
                  (cons _L259_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _g245256_))))
                                (_g243274_
                                 (_generate134_
                                  _L232_
                                  (gx#syntax->list _L195_)
                                  _L193_))))))
                        _g218229_))))
                (_g216278_ (gx#genident 'e))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g137156_ _g138160_)))
                                              _tl150190_
                                              _hd149187_
                                              _hd146177_)))
                                         (_g137156_ _g138160_))))
                                 (_g137156_ _g138160_))))
                         (_g137156_ _g138160_)))))
              (_g136282_ _stx131_))))))))
