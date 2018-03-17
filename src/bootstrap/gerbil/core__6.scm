(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<MOP>$<MOP:1>[1]#generate-typedef|
    (lambda (_stx17036_ _struct?17038_)
      (letrec ((_wrap17040_
                (lambda (_e-stx18641_)
                  (gx#stx-wrap-source
                   _e-stx18641_
                   (gx#stx-source _stx17036_))))
               (_slotify17042_
                (lambda (_field18506_ _off18508_)
                  (let* ((_g1851118538_
                          (lambda (_g1851218534_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1851218534_)))
                         (_g1851018595_
                          (lambda (_g1851218542_)
                            (if (gx#stx-pair? _g1851218542_)
                                (let ((_e1852418545_
                                       (gx#syntax-e _g1851218542_)))
                                  (let ((_hd1852518549_ (##car _e1852418545_))
                                        (_tl1852618552_ (##cdr _e1852418545_)))
                                    (if (gx#stx-pair? _tl1852618552_)
                                        (let ((_e1852718555_
                                               (gx#syntax-e _tl1852618552_)))
                                          (let ((_hd1852818559_
                                                 (##car _e1852718555_))
                                                (_tl1852918562_
                                                 (##cdr _e1852718555_)))
                                            (if (gx#stx-pair? _tl1852918562_)
                                                (let ((_e1853018565_
                                                       (gx#syntax-e
                                                        _tl1852918562_)))
                                                  (let ((_hd1853118569_
                                                         (##car _e1853018565_))
                                                        (_tl1853218572_
                                                         (##cdr _e1853018565_)))
                                                    (if (gx#stx-null?
                                                         _tl1853218572_)
                                                        ((lambda (_L18575_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L18577_
                          _L18578_)
                   (cons _off18508_ (cons _L18577_ (cons _L18575_ '()))))
                 _hd1853118569_
                 _hd1852818559_
                 _hd1852518549_)
                (_g1851118538_ _g1851218542_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1851118538_
                                                 _g1851218542_))))
                                        (_g1851118538_ _g1851218542_))))
                                (_g1851118538_ _g1851218542_))))
                         (_g1850918637_
                          (lambda (_g1851218599_)
                            (if (gx#stx-pair? _g1851218599_)
                                (let ((_e1851518602_
                                       (gx#syntax-e _g1851218599_)))
                                  (let ((_hd1851618606_ (##car _e1851518602_))
                                        (_tl1851718609_ (##cdr _e1851518602_)))
                                    (if (gx#stx-pair? _tl1851718609_)
                                        (let ((_e1851818612_
                                               (gx#syntax-e _tl1851718609_)))
                                          (let ((_hd1851918616_
                                                 (##car _e1851818612_))
                                                (_tl1852018619_
                                                 (##cdr _e1851818612_)))
                                            (if (gx#stx-null? _tl1852018619_)
                                                ((lambda (_L18622_ _L18624_)
                                                   (cons _off18508_
                                                         (cons _L18624_
                                                               (cons _L18622_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1851918616_
                                                 _hd1851618606_)
                                                (_g1851018595_
                                                 _g1851218599_))))
                                        (_g1851018595_ _g1851218599_))))
                                (_g1851018595_ _g1851218599_)))))
                    (_g1850918637_ _field18506_))))
               (_field-id17043_
                (lambda (_field18372_)
                  (let* ((_g1837618403_
                          (lambda (_g1837718399_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1837718399_)))
                         (_g1837518460_
                          (lambda (_g1837718407_)
                            (if (gx#stx-pair? _g1837718407_)
                                (let ((_e1838918410_
                                       (gx#syntax-e _g1837718407_)))
                                  (let ((_hd1839018414_ (##car _e1838918410_))
                                        (_tl1839118417_ (##cdr _e1838918410_)))
                                    (if (gx#stx-pair? _tl1839118417_)
                                        (let ((_e1839218420_
                                               (gx#syntax-e _tl1839118417_)))
                                          (let ((_hd1839318424_
                                                 (##car _e1839218420_))
                                                (_tl1839418427_
                                                 (##cdr _e1839218420_)))
                                            (if (gx#stx-pair? _tl1839418427_)
                                                (let ((_e1839518430_
                                                       (gx#syntax-e
                                                        _tl1839418427_)))
                                                  (let ((_hd1839618434_
                                                         (##car _e1839518430_))
                                                        (_tl1839718437_
                                                         (##cdr _e1839518430_)))
                                                    (if (gx#stx-null?
                                                         _tl1839718437_)
                                                        ((lambda (_L18440_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L18442_
                          _L18443_)
                   _L18443_)
                 _hd1839618434_
                 _hd1839318424_
                 _hd1839018414_)
                (_g1837618403_ _g1837718407_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1837618403_
                                                 _g1837718407_))))
                                        (_g1837618403_ _g1837718407_))))
                                (_g1837618403_ _g1837718407_))))
                         (_g1837418502_
                          (lambda (_g1837718464_)
                            (if (gx#stx-pair? _g1837718464_)
                                (let ((_e1838018467_
                                       (gx#syntax-e _g1837718464_)))
                                  (let ((_hd1838118471_ (##car _e1838018467_))
                                        (_tl1838218474_ (##cdr _e1838018467_)))
                                    (if (gx#stx-pair? _tl1838218474_)
                                        (let ((_e1838318477_
                                               (gx#syntax-e _tl1838218474_)))
                                          (let ((_hd1838418481_
                                                 (##car _e1838318477_))
                                                (_tl1838518484_
                                                 (##cdr _e1838318477_)))
                                            (if (gx#stx-null? _tl1838518484_)
                                                ((lambda (_L18487_ _L18489_)
                                                   ':)
                                                 _hd1838418481_
                                                 _hd1838118471_)
                                                (_g1837518460_
                                                 _g1837718464_))))
                                        (_g1837518460_ _g1837718464_))))
                                (_g1837518460_ _g1837718464_)))))
                    (_g1837418502_ _field18372_))))
               (_struct-opt?17044_
                (lambda (_key18369_)
                  (memq (gx#stx-e _key18369_)
                        '(fields: id: name: plist: constructor: unchecked:))))
               (_class-opt?17045_
                (lambda (_key18366_)
                  (memq (gx#stx-e _key18366_)
                        '(slots: id: name: plist: constructor: unchecked:))))
               (_module-type-id17046_
                (lambda (_type-t18353_)
                  (let ((_$e18356_
                         (gx#module-context-ns (gx#current-expander-context))))
                    (if _$e18356_
                        ((lambda (_ns18360_)
                           (gx#stx-identifier
                            _type-t18353_
                            _ns18360_
                            '"#"
                            _type-t18353_))
                         _$e18356_)
                        (let ((_mid18363_
                               (gx#expander-context-id
                                (gx#current-expander-context))))
                          (gx#stx-identifier
                           _type-t18353_
                           _mid18363_
                           '"#"
                           _type-t18353_)))))))
        (let* ((_g1704817075_
                (lambda (_g1704917071_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1704917071_)))
               (_g1704718349_
                (lambda (_g1704917079_)
                  (if (gx#stx-pair? _g1704917079_)
                      (let ((_e1705517082_ (gx#syntax-e _g1704917079_)))
                        (let ((_hd1705617086_ (##car _e1705517082_))
                              (_tl1705717089_ (##cdr _e1705517082_)))
                          (if (gx#stx-pair? _tl1705717089_)
                              (let ((_e1705817092_
                                     (gx#syntax-e _tl1705717089_)))
                                (let ((_hd1705917096_ (##car _e1705817092_))
                                      (_tl1706017099_ (##cdr _e1705817092_)))
                                  (if (gx#stx-pair? _tl1706017099_)
                                      (let ((_e1706117102_
                                             (gx#syntax-e _tl1706017099_)))
                                        (let ((_hd1706217106_
                                               (##car _e1706117102_))
                                              (_tl1706317109_
                                               (##cdr _e1706117102_)))
                                          (if (gx#stx-pair? _tl1706317109_)
                                              (let ((_e1706417112_
                                                     (gx#syntax-e
                                                      _tl1706317109_)))
                                                (let ((_hd1706517116_
                                                       (##car _e1706417112_))
                                                      (_tl1706617119_
                                                       (##cdr _e1706417112_)))
                                                  (if (gx#stx-pair?
                                                       _tl1706617119_)
                                                      (let ((_e1706717122_
                                                             (gx#syntax-e
                                                              _tl1706617119_)))
                                                        (let ((_hd1706817126_
                                                               (##car _e1706717122_))
                                                              (_tl1706917129_
                                                               (##cdr _e1706717122_)))
                                                          ((lambda (_L17132_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L17134_
                            _L17135_
                            _L17136_
                            _L17137_)
                     (if (if (gx#identifier? _L17137_)
                             (if (let ((_$e17163_ (gx#identifier? _L17135_)))
                                   (if _$e17163_
                                       _$e17163_
                                       (gx#stx-false? _L17135_)))
                                 (if (gx#identifier? _L17134_)
                                     (gx#stx-plist?
                                      _L17132_
                                      (if _struct?17038_
                                          _struct-opt?17044_
                                          _class-opt?17045_))
                                     '#f)
                                 '#f)
                             '#f)
                         (let* ((_els17171_
                                 (let ((_$e17167_
                                        (gx#stx-getq
                                         (if _struct?17038_ 'fields: 'slots:)
                                         _L17132_)))
                                   (if _$e17167_ _$e17167_ '())))
                                (_g1717417205_
                                 (lambda (_g1717517201_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1717517201_)))
                                (_g1717318345_
                                 (lambda (_g1717517209_)
                                   (if (gx#stx-pair? _g1717517209_)
                                       (let ((_e1718217212_
                                              (gx#syntax-e _g1717517209_)))
                                         (let ((_hd1718317216_
                                                (##car _e1718217212_))
                                               (_tl1718417219_
                                                (##cdr _e1718217212_)))
                                           (if (gx#stx-pair? _tl1718417219_)
                                               (let ((_e1718517222_
                                                      (gx#syntax-e
                                                       _tl1718417219_)))
                                                 (let ((_hd1718617226_
                                                        (##car _e1718517222_))
                                                       (_tl1718717229_
                                                        (##cdr _e1718517222_)))
                                                   (if (gx#stx-pair?
                                                        _tl1718717229_)
                                                       (let ((_e1718817232_
                                                              (gx#syntax-e
                                                               _tl1718717229_)))
                                                         (let ((_hd1718917236_
                                                                (##car _e1718817232_))
                                                               (_tl1719017239_
                                                                (##cdr _e1718817232_)))
                                                           (if (gx#stx-pair?
                                                                _tl1719017239_)
                                                               (let ((_e1719117242_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl1719017239_)))
                         (let ((_hd1719217246_ (##car _e1719117242_))
                               (_tl1719317249_ (##cdr _e1719117242_)))
                           (if (gx#stx-pair? _tl1719317249_)
                               (let ((_e1719417252_
                                      (gx#syntax-e _tl1719317249_)))
                                 (let ((_hd1719517256_ (##car _e1719417252_))
                                       (_tl1719617259_ (##cdr _e1719417252_)))
                                   (if (gx#stx-pair? _tl1719617259_)
                                       (let ((_e1719717262_
                                              (gx#syntax-e _tl1719617259_)))
                                         (let ((_hd1719817266_
                                                (##car _e1719717262_))
                                               (_tl1719917269_
                                                (##cdr _e1719717262_)))
                                           (if (gx#stx-null? _tl1719917269_)
                                               ((lambda (_L17272_
                                                         _L17274_
                                                         _L17275_
                                                         _L17276_
                                                         _L17277_
                                                         _L17278_)
                                                  (let ()
                                                    (let* ((_g1730717315_
                                                            (lambda (_g1730817311_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g1730817311_)))
                                                           (_g1730618337_
                                                            (lambda (_g1730817319_)
                                                              ((lambda (_L17322_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g1733517343_
                                   (lambda (_g1733617339_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1733617339_)))
                                  (_g1733418329_
                                   (lambda (_g1733617347_)
                                     ((lambda (_L17350_)
                                        (let ()
                                          (let* ((_g1736317371_
                                                  (lambda (_g1736417367_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1736417367_)))
                                                 (_g1736218321_
                                                  (lambda (_g1736417375_)
                                                    ((lambda (_L17378_)
                                                       (let ()
                                                         (let* ((_g1739117399_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1739217395_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1739217395_)))
                        (_g1739018317_
                         (lambda (_g1739217403_)
                           ((lambda (_L17406_)
                              (let ()
                                (let* ((_g1741917427_
                                        (lambda (_g1742017423_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g1742017423_)))
                                       (_g1741818033_
                                        (lambda (_g1742017431_)
                                          ((lambda (_L17434_)
                                             (let ()
                                               (let* ((_g1744717455_
                                                       (lambda (_g1744817451_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1744817451_)))
                                                      (_g1744618029_
                                                       (lambda (_g1744817459_)
                                                         ((lambda (_L17462_)
                                                            (let ()
                                                              (let* ((_g1747517483_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g1747617479_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1747617479_)))
                             (_g1747418025_
                              (lambda (_g1747617487_)
                                ((lambda (_L17490_)
                                   (let ()
                                     (let* ((_g1750317511_
                                             (lambda (_g1750417507_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1750417507_)))
                                            (_g1750218021_
                                             (lambda (_g1750417515_)
                                               ((lambda (_L17518_)
                                                  (let ()
                                                    (let* ((_attrs17531_
                                                            (if _struct?17038_
                                                                (gx#stx-map
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _slotify17042_
                         _els17171_
                         (iota (gx#stx-length _els17171_)))
                        _els17171_))
                   (_g1753417560_
                    (lambda (_g1753517556_)
                      (gx#raise-syntax-error '#f '"Bad syntax" _g1753517556_)))
                   (_g1753317933_
                    (lambda (_g1753517564_)
                      (if (gx#stx-pair/null? _g1753517564_)
                          (if (fx>= (gx#stx-length _g1753517564_) '0)
                              (let ((_g35363_
                                     (gx#syntax-split-splice
                                      _g1753517564_
                                      '0)))
                                (begin
                                  (let ((_g35364_
                                         (if (##values? _g35363_)
                                             (##vector-length _g35363_)
                                             1)))
                                    (if (not (##fx= _g35364_ 2))
                                        (error "Context expects 2 values"
                                               _g35364_)))
                                  (let ((_target1753817567_
                                         (##vector-ref _g35363_ 0))
                                        (_tl1754017570_
                                         (##vector-ref _g35363_ 1)))
                                    (if (gx#stx-null? _tl1754017570_)
                                        (letrec ((_loop1754117573_
                                                  (lambda (_hd1753917577_
                                                           _def-setf1754517580_
                                                           _def-getf1754617582_)
                                                    (if (gx#stx-pair?
                                                         _hd1753917577_)
                                                        (let ((_e1754217585_
                                                               (gx#syntax-e
                                                                _hd1753917577_)))
                                                          (let ((_lp-hd1754317589_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1754217585_))
                        (_lp-tl1754417592_ (##cdr _e1754217585_)))
                    (if (gx#stx-pair? _lp-hd1754317589_)
                        (let ((_e1754917595_ (gx#syntax-e _lp-hd1754317589_)))
                          (let ((_hd1755017599_ (##car _e1754917595_))
                                (_tl1755117602_ (##cdr _e1754917595_)))
                            (if (gx#stx-pair? _tl1755117602_)
                                (let ((_e1755217605_
                                       (gx#syntax-e _tl1755117602_)))
                                  (let ((_hd1755317609_ (##car _e1755217605_))
                                        (_tl1755417612_ (##cdr _e1755217605_)))
                                    (if (gx#stx-null? _tl1755417612_)
                                        (_loop1754117573_
                                         _lp-tl1754417592_
                                         (cons _hd1755317609_
                                               _def-setf1754517580_)
                                         (cons _hd1755017599_
                                               _def-getf1754617582_))
                                        (_g1753417560_ _g1753517564_))))
                                (_g1753417560_ _g1753517564_))))
                        (_g1753417560_ _g1753517564_))))
                (let ((_def-setf1754717615_ (reverse _def-setf1754517580_))
                      (_def-getf1754817618_ (reverse _def-getf1754617582_)))
                  ((lambda (_L17621_ _L17623_)
                     (let ()
                       (let* ((_g1764117667_
                               (lambda (_g1764217663_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1764217663_)))
                              (_g1764017781_
                               (lambda (_g1764217671_)
                                 (if (gx#stx-pair/null? _g1764217671_)
                                     (if (fx>= (gx#stx-length _g1764217671_)
                                               '0)
                                         (let ((_g35365_
                                                (gx#syntax-split-splice
                                                 _g1764217671_
                                                 '0)))
                                           (begin
                                             (let ((_g35366_
                                                    (if (##values? _g35365_)
                                                        (##vector-length
                                                         _g35365_)
                                                        1)))
                                               (if (not (##fx= _g35366_ 2))
                                                   (error "Context expects 2 values"
                                                          _g35366_)))
                                             (let ((_target1764517674_
                                                    (##vector-ref _g35365_ 0))
                                                   (_tl1764717677_
                                                    (##vector-ref _g35365_ 1)))
                                               (if (gx#stx-null?
                                                    _tl1764717677_)
                                                   (letrec ((_loop1764817680_
                                                             (lambda (_hd1764617684_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _def-usetf1765217687_
                              _def-ugetf1765317689_)
                       (if (gx#stx-pair? _hd1764617684_)
                           (let ((_e1764917692_ (gx#syntax-e _hd1764617684_)))
                             (let ((_lp-hd1765017696_ (##car _e1764917692_))
                                   (_lp-tl1765117699_ (##cdr _e1764917692_)))
                               (if (gx#stx-pair? _lp-hd1765017696_)
                                   (let ((_e1765617702_
                                          (gx#syntax-e _lp-hd1765017696_)))
                                     (let ((_hd1765717706_
                                            (##car _e1765617702_))
                                           (_tl1765817709_
                                            (##cdr _e1765617702_)))
                                       (if (gx#stx-pair? _tl1765817709_)
                                           (let ((_e1765917712_
                                                  (gx#syntax-e
                                                   _tl1765817709_)))
                                             (let ((_hd1766017716_
                                                    (##car _e1765917712_))
                                                   (_tl1766117719_
                                                    (##cdr _e1765917712_)))
                                               (if (gx#stx-null?
                                                    _tl1766117719_)
                                                   (_loop1764817680_
                                                    _lp-tl1765117699_
                                                    (cons _hd1766017716_
                                                          _def-usetf1765217687_)
                                                    (cons _hd1765717706_
                                                          _def-ugetf1765317689_))
                                                   (_g1764117667_
                                                    _g1764217671_))))
                                           (_g1764117667_ _g1764217671_))))
                                   (_g1764117667_ _g1764217671_))))
                           (let ((_def-usetf1765417722_
                                  (reverse _def-usetf1765217687_))
                                 (_def-ugetf1765517725_
                                  (reverse _def-ugetf1765317689_)))
                             ((lambda (_L17728_ _L17730_)
                                (let ()
                                  (let ()
                                    (_wrap17040_
                                     (cons (gx#datum->syntax '#f 'begin)
                                           (cons _L17462_
                                                 (cons _L17518_
                                                       (cons _L17490_
                                                             (begin
                                                               '#!void
                                                               (foldr (lambda (_g1774817757_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1774917760_)
                                (cons _g1774817757_ _g1774917760_))
                              (begin
                                '#!void
                                (foldr (lambda (_g1775017763_ _g1775117766_)
                                         (cons _g1775017763_ _g1775117766_))
                                       (begin
                                         '#!void
                                         (foldr (lambda (_g1775217769_
                                                         _g1775317772_)
                                                  (cons _g1775217769_
                                                        _g1775317772_))
                                                (begin
                                                  '#!void
                                                  (foldr (lambda (_g1775417775_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1775517778_)
                   (cons _g1775417775_ _g1775517778_))
                 '()
                 _L17728_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _L17730_))
                                       _L17621_))
                              _L17623_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              _def-usetf1765417722_
                              _def-ugetf1765517725_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1764817680_
                                                      _target1764517674_
                                                      '()
                                                      '()))
                                                   (_g1764117667_
                                                    _g1764217671_)))))
                                         (_g1764117667_ _g1764217671_))
                                     (_g1764117667_ _g1764217671_)))))
                         (_g1764017781_
                          (if (gx#stx-e (gx#stx-getq 'unchecked: _L17132_))
                              (gx#stx-map
                               (lambda (_ref17785_)
                                 (let* ((_g1778817807_
                                         (lambda (_g1778917803_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g1778917803_)))
                                        (_g1778717929_
                                         (lambda (_g1778917811_)
                                           (if (gx#stx-pair? _g1778917811_)
                                               (let ((_e1779317814_
                                                      (gx#syntax-e
                                                       _g1778917811_)))
                                                 (let ((_hd1779417818_
                                                        (##car _e1779317814_))
                                                       (_tl1779517821_
                                                        (##cdr _e1779317814_)))
                                                   (if (gx#stx-pair?
                                                        _tl1779517821_)
                                                       (let ((_e1779617824_
                                                              (gx#syntax-e
                                                               _tl1779517821_)))
                                                         (let ((_hd1779717828_
                                                                (##car _e1779617824_))
                                                               (_tl1779817831_
                                                                (##cdr _e1779617824_)))
                                                           (if (gx#stx-pair?
                                                                _tl1779817831_)
                                                               (let ((_e1779917834_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl1779817831_)))
                         (let ((_hd1780017838_ (##car _e1779917834_))
                               (_tl1780117841_ (##cdr _e1779917834_)))
                           (if (gx#stx-null? _tl1780117841_)
                               ((lambda (_L17844_ _L17846_ _L17847_)
                                  (let* ((_g1786517880_
                                          (lambda (_g1786617876_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g1786617876_)))
                                         (_g1786417925_
                                          (lambda (_g1786617884_)
                                            (if (gx#stx-pair? _g1786617884_)
                                                (let ((_e1786917887_
                                                       (gx#syntax-e
                                                        _g1786617884_)))
                                                  (let ((_hd1787017891_
                                                         (##car _e1786917887_))
                                                        (_tl1787117894_
                                                         (##cdr _e1786917887_)))
                                                    (if (gx#stx-pair?
                                                         _tl1787117894_)
                                                        (let ((_e1787217897_
                                                               (gx#syntax-e
                                                                _tl1787117894_)))
                                                          (let ((_hd1787317901_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1787217897_))
                        (_tl1787417904_ (##cdr _e1787217897_)))
                    (if (gx#stx-null? _tl1787417904_)
                        ((lambda (_L17907_ _L17909_)
                           (let ()
                             (cons (_wrap17040_
                                    (cons (gx#datum->syntax '#f 'def)
                                          (cons _L17909_
                                                (cons (cons _L17274_
                                                            (cons _L17137_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _L17847_ '()))
                                '())))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (cons (_wrap17040_
                                          (cons (gx#datum->syntax '#f 'def)
                                                (cons _L17907_
                                                      (cons (cons _L17272_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L17137_
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _L17847_ '()))
                                      '())))
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                         _hd1787317901_
                         _hd1787017891_)
                        (_g1786517880_ _g1786617884_))))
                (_g1786517880_ _g1786617884_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1786517880_
                                                 _g1786617884_)))))
                                    (_g1786417925_
                                     (list (gx#stx-identifier
                                            _L17846_
                                            '"&"
                                            _L17846_)
                                           (gx#stx-identifier
                                            _L17844_
                                            '"&"
                                            _L17844_)))))
                                _hd1780017838_
                                _hd1779717828_
                                _hd1779417818_)
                               (_g1778817807_ _g1778917811_))))
                       (_g1778817807_ _g1778917811_))))
               (_g1778817807_ _g1778917811_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1778817807_
                                                _g1778917811_)))))
                                   (_g1778717929_ _ref17785_)))
                               _attrs17531_)
                              '())))))
                   _def-setf1754717615_
                   _def-getf1754817618_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop1754117573_
                                           _target1753817567_
                                           '()
                                           '()))
                                        (_g1753417560_ _g1753517564_)))))
                              (_g1753417560_ _g1753517564_))
                          (_g1753417560_ _g1753517564_)))))
              (_g1753317933_
               (gx#stx-map
                (lambda (_ref17937_)
                  (let* ((_g1794017959_
                          (lambda (_g1794117955_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1794117955_)))
                         (_g1793918017_
                          (lambda (_g1794117963_)
                            (if (gx#stx-pair? _g1794117963_)
                                (let ((_e1794517966_
                                       (gx#syntax-e _g1794117963_)))
                                  (let ((_hd1794617970_ (##car _e1794517966_))
                                        (_tl1794717973_ (##cdr _e1794517966_)))
                                    (if (gx#stx-pair? _tl1794717973_)
                                        (let ((_e1794817976_
                                               (gx#syntax-e _tl1794717973_)))
                                          (let ((_hd1794917980_
                                                 (##car _e1794817976_))
                                                (_tl1795017983_
                                                 (##cdr _e1794817976_)))
                                            (if (gx#stx-pair? _tl1795017983_)
                                                (let ((_e1795117986_
                                                       (gx#syntax-e
                                                        _tl1795017983_)))
                                                  (let ((_hd1795217990_
                                                         (##car _e1795117986_))
                                                        (_tl1795317993_
                                                         (##cdr _e1795117986_)))
                                                    (if (gx#stx-null?
                                                         _tl1795317993_)
                                                        ((lambda (_L17996_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L17998_
                          _L17999_)
                   (cons (_wrap17040_
                          (cons (gx#datum->syntax '#f 'def)
                                (cons _L17998_
                                      (cons (cons _L17276_
                                                  (cons _L17137_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons _L17999_ '()))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '()))))
                         (cons (_wrap17040_
                                (cons (gx#datum->syntax '#f 'def)
                                      (cons _L17996_
                                            (cons (cons _L17275_
                                                        (cons _L17137_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _L17999_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))
                               '())))
                 _hd1795217990_
                 _hd1794917980_
                 _hd1794617970_)
                (_g1794017959_ _g1794117963_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1794017959_
                                                 _g1794117963_))))
                                        (_g1794017959_ _g1794117963_))))
                                (_g1794017959_ _g1794117963_)))))
                    (_g1793918017_ _ref17937_)))
                _attrs17531_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1750417515_))))
                                       (_g1750218021_
                                        (_wrap17040_
                                         (cons (gx#datum->syntax '#f 'def)
                                               (cons _L17134_
                                                     (cons (cons _L17277_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L17137_ '()))
                   '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _g1747617487_))))
                        (_g1747418025_
                         (if (gx#stx-false? _L17135_)
                             (cons (gx#datum->syntax '#f 'begin) '())
                             (_wrap17040_
                              (cons (gx#datum->syntax '#f 'def)
                                    (cons (cons _L17135_
                                                (gx#datum->syntax '#f '$args))
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'apply)
                                                      (cons _L17278_
                                                            (cons _L17137_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f '$args) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))))))))
                  _g1744817459_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1744618029_
                                                  (_wrap17040_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'def)
                                                         (cons _L17137_
                                                               (cons _L17434_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _g1742017431_))))
                                  (_g1741818033_
                                   (if _struct?17038_
                                       (let* ((_g1803718061_
                                               (lambda (_g1803818057_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1803818057_)))
                                              (_g1803618148_
                                               (lambda (_g1803818065_)
                                                 (if (gx#stx-pair?
                                                      _g1803818065_)
                                                     (let ((_e1804118068_
                                                            (gx#syntax-e
                                                             _g1803818065_)))
                                                       (let ((_hd1804218072_
                                                              (##car _e1804118068_))
                                                             (_tl1804318075_
                                                              (##cdr _e1804118068_)))
                                                         (if (gx#stx-pair?
                                                              _tl1804318075_)
                                                             (let ((_e1804418078_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl1804318075_)))
                       (let ((_hd1804518082_ (##car _e1804418078_))
                             (_tl1804618085_ (##cdr _e1804418078_)))
                         (if (gx#stx-pair/null? _hd1804518082_)
                             (if (fx>= (gx#stx-length _hd1804518082_) '0)
                                 (let ((_g35367_
                                        (gx#syntax-split-splice
                                         _hd1804518082_
                                         '0)))
                                   (begin
                                     (let ((_g35368_
                                            (if (##values? _g35367_)
                                                (##vector-length _g35367_)
                                                1)))
                                       (if (not (##fx= _g35368_ 2))
                                           (error "Context expects 2 values"
                                                  _g35368_)))
                                     (let ((_target1804718088_
                                            (##vector-ref _g35367_ 0))
                                           (_tl1804918091_
                                            (##vector-ref _g35367_ 1)))
                                       (if (gx#stx-null? _tl1804918091_)
                                           (letrec ((_loop1805018094_
                                                     (lambda (_hd1804818098_
                                                              _field-id1805418101_)
                                                       (if (gx#stx-pair?
                                                            _hd1804818098_)
                                                           (let ((_e1805118104_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd1804818098_)))
                     (let ((_lp-hd1805218108_ (##car _e1805118104_))
                           (_lp-tl1805318111_ (##cdr _e1805118104_)))
                       (_loop1805018094_
                        _lp-tl1805318111_
                        (cons _lp-hd1805218108_ _field-id1805418101_))))
                   (let ((_field-id1805518114_ (reverse _field-id1805418101_)))
                     (if (gx#stx-null? _tl1804618085_)
                         ((lambda (_L18118_ _L18120_)
                            (let ()
                              (cons (gx#datum->syntax '#f 'make-struct-type)
                                    (cons (cons (gx#datum->syntax '#f 'quote)
                                                (cons _L17322_ '()))
                                          (cons _L17136_
                                                (cons _L18120_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons _L17350_ '()))
                    (cons _L17378_
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _L17406_ '()))
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons (begin
                                                    '#!void
                                                    (foldr (lambda (_g1813918142_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1814018145_)
                     (cons _g1813918142_ _g1814018145_))
                   '()
                   _L18118_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          _field-id1805518114_
                          _hd1804218072_)
                         (_g1803718061_ _g1803818065_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop1805018094_
                                              _target1804718088_
                                              '()))
                                           (_g1803718061_ _g1803818065_)))))
                                 (_g1803718061_ _g1803818065_))
                             (_g1803718061_ _g1803818065_))))
                     (_g1803718061_ _g1803818065_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1803718061_
                                                      _g1803818065_)))))
                                         (_g1803618148_
                                          (list (gx#stx-length _els17171_)
                                                (gx#stx-map
                                                 _field-id17043_
                                                 _els17171_))))
                                       (let* ((_g1815218185_
                                               (lambda (_g1815318181_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1815318181_)))
                                              (_g1815118313_
                                               (lambda (_g1815318189_)
                                                 (if (gx#stx-pair?
                                                      _g1815318189_)
                                                     (let ((_e1815618192_
                                                            (gx#syntax-e
                                                             _g1815318189_)))
                                                       (let ((_hd1815718196_
                                                              (##car _e1815618192_))
                                                             (_tl1815818199_
                                                              (##cdr _e1815618192_)))
                                                         (if (gx#stx-pair/null?
                                                              _hd1815718196_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _hd1815718196_)
                               '0)
                         (let ((_g35369_
                                (gx#syntax-split-splice _hd1815718196_ '0)))
                           (begin
                             (let ((_g35370_
                                    (if (##values? _g35369_)
                                        (##vector-length _g35369_)
                                        1)))
                               (if (not (##fx= _g35370_ 2))
                                   (error "Context expects 2 values"
                                          _g35370_)))
                             (let ((_target1815918202_
                                    (##vector-ref _g35369_ 0))
                                   (_tl1816118205_ (##vector-ref _g35369_ 1)))
                               (if (gx#stx-null? _tl1816118205_)
                                   (letrec ((_loop1816218208_
                                             (lambda (_hd1816018212_
                                                      _super1816618215_)
                                               (if (gx#stx-pair?
                                                    _hd1816018212_)
                                                   (let ((_e1816318218_
                                                          (gx#syntax-e
                                                           _hd1816018212_)))
                                                     (let ((_lp-hd1816418222_
                                                            (##car _e1816318218_))
                                                           (_lp-tl1816518225_
                                                            (##cdr _e1816318218_)))
                                                       (_loop1816218208_
                                                        _lp-tl1816518225_
                                                        (cons _lp-hd1816418222_
                                                              _super1816618215_))))
                                                   (let ((_super1816718228_
                                                          (reverse _super1816618215_)))
                                                     (if (gx#stx-pair?
                                                          _tl1815818199_)
                                                         (let ((_e1816818232_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1815818199_)))
                   (let ((_hd1816918236_ (##car _e1816818232_))
                         (_tl1817018239_ (##cdr _e1816818232_)))
                     (if (gx#stx-pair/null? _hd1816918236_)
                         (if (fx>= (gx#stx-length _hd1816918236_) '0)
                             (let ((_g35371_
                                    (gx#syntax-split-splice
                                     _hd1816918236_
                                     '0)))
                               (begin
                                 (let ((_g35372_
                                        (if (##values? _g35371_)
                                            (##vector-length _g35371_)
                                            1)))
                                   (if (not (##fx= _g35372_ 2))
                                       (error "Context expects 2 values"
                                              _g35372_)))
                                 (let ((_target1817118242_
                                        (##vector-ref _g35371_ 0))
                                       (_tl1817318245_
                                        (##vector-ref _g35371_ 1)))
                                   (if (gx#stx-null? _tl1817318245_)
                                       (letrec ((_loop1817418248_
                                                 (lambda (_hd1817218252_
                                                          _slot1817818255_)
                                                   (if (gx#stx-pair?
                                                        _hd1817218252_)
                                                       (let ((_e1817518258_
                                                              (gx#syntax-e
                                                               _hd1817218252_)))
                                                         (let ((_lp-hd1817618262_
                                                                (##car _e1817518258_))
                                                               (_lp-tl1817718265_
                                                                (##cdr _e1817518258_)))
                                                           (_loop1817418248_
                                                            _lp-tl1817718265_
                                                            (cons _lp-hd1817618262_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _slot1817818255_))))
               (let ((_slot1817918268_ (reverse _slot1817818255_)))
                 (if (gx#stx-null? _tl1817018239_)
                     ((lambda (_L18272_ _L18274_)
                        (let ()
                          (cons (gx#datum->syntax '#f 'make-class-type)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _L17322_ '()))
                                      (cons (cons (gx#datum->syntax '#f '@list)
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g1829618301_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1829718304_)
                     (cons _g1829618301_ _g1829718304_))
                   '()
                   _L18274_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'quote)
                                                        (cons (begin
                                                                '#!void
                                                                (foldr (lambda (_g1829818307_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g1829918310_)
                                 (cons _g1829818307_ _g1829918310_))
                               '()
                               _L18272_))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'quote)
                                                              (cons _L17350_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _L17378_
                      (cons (cons (gx#datum->syntax '#f 'quote)
                                  (cons _L17406_ '()))
                            '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      _slot1817918268_
                      _super1816718228_)
                     (_g1815218185_ _g1815318189_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop1817418248_
                                          _target1817118242_
                                          '()))
                                       (_g1815218185_ _g1815318189_)))))
                             (_g1815218185_ _g1815318189_))
                         (_g1815218185_ _g1815318189_))))
                 (_g1815218185_ _g1815318189_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop1816218208_ _target1815918202_ '()))
                                   (_g1815218185_ _g1815318189_)))))
                         (_g1815218185_ _g1815318189_))
                     (_g1815218185_ _g1815318189_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1815218185_
                                                      _g1815318189_)))))
                                         (_g1815118313_
                                          (list _L17136_
                                                (gx#stx-map
                                                 gx#stx-car
                                                 _els17171_)))))))))
                            _g1739217403_))))
                   (_g1739018317_ (gx#stx-getq 'constructor: _L17132_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1736417375_))))
                                            (_g1736218321_
                                             (let ((_$e18325_
                                                    (gx#stx-getq
                                                     'plist:
                                                     _L17132_)))
                                               (if _$e18325_
                                                   _$e18325_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '@list)
                                                         '())))))))
                                      _g1733617347_))))
                             (_g1733418329_
                              (let ((_$e18333_ (gx#stx-getq 'name: _L17132_)))
                                (if _$e18333_ _$e18333_ _L17137_))))))
                       _g1730817319_))))
              (_g1730618337_
               (let ((_$e18341_ (gx#stx-getq 'id: _L17132_)))
                 (if _$e18341_
                     _$e18341_
                     (if (gx#module-context? (gx#current-expander-context))
                         (_module-type-id17046_ _L17137_)
                         (gx#genident _L17137_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1719817266_
                                                _hd1719517256_
                                                _hd1719217246_
                                                _hd1718917236_
                                                _hd1718617226_
                                                _hd1718317216_)
                                               (_g1717417205_ _g1717517209_))))
                                       (_g1717417205_ _g1717517209_))))
                               (_g1717417205_ _g1717517209_))))
                       (_g1717417205_ _g1717517209_))))
               (_g1717417205_ _g1717517209_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1717417205_ _g1717517209_))))
                                       (_g1717417205_ _g1717517209_)))))
                           (_g1717318345_
                            (if _struct?17038_
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
                         (_g1704817075_ _g1704917079_)))
                   _tl1706917129_
                   _hd1706817126_
                   _hd1706517116_
                   _hd1706217106_
                   _hd1705917096_)))
              (_g1704817075_ _g1704917079_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1704817075_ _g1704917079_))))
                                      (_g1704817075_ _g1704917079_))))
                              (_g1704817075_ _g1704917079_))))
                      (_g1704817075_ _g1704917079_)))))
          (_g1704718349_ _stx17036_)))))
  (define |gerbil/core$<MOP>$<MOP:1>[:0:]#defstruct-type|
    (lambda (_stx18649_)
      (|gerbil/core$<MOP>$<MOP:1>[1]#generate-typedef| _stx18649_ '#t)))
  (define |gerbil/core$<MOP>$<MOP:1>[:0:]#defclass-type|
    (lambda (_stx18652_)
      (|gerbil/core$<MOP>$<MOP:1>[1]#generate-typedef| _stx18652_ '#f))))
