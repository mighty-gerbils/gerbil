(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<MOP>$<MOP:1>[1]#generate-typedef|
    (lambda (_stx17217_ _struct?17219_)
      (letrec ((_wrap17221_
                (lambda (_e-stx18822_)
                  (gx#stx-wrap-source
                   _e-stx18822_
                   (gx#stx-source _stx17217_))))
               (_slotify17223_
                (lambda (_field18687_ _off18689_)
                  (let* ((_g1869218719_
                          (lambda (_g1869318715_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1869318715_)))
                         (_g1869118776_
                          (lambda (_g1869318723_)
                            (if (gx#stx-pair? _g1869318723_)
                                (let ((_e1870518726_
                                       (gx#syntax-e _g1869318723_)))
                                  (let ((_hd1870618730_ (##car _e1870518726_))
                                        (_tl1870718733_ (##cdr _e1870518726_)))
                                    (if (gx#stx-pair? _tl1870718733_)
                                        (let ((_e1870818736_
                                               (gx#syntax-e _tl1870718733_)))
                                          (let ((_hd1870918740_
                                                 (##car _e1870818736_))
                                                (_tl1871018743_
                                                 (##cdr _e1870818736_)))
                                            (if (gx#stx-pair? _tl1871018743_)
                                                (let ((_e1871118746_
                                                       (gx#syntax-e
                                                        _tl1871018743_)))
                                                  (let ((_hd1871218750_
                                                         (##car _e1871118746_))
                                                        (_tl1871318753_
                                                         (##cdr _e1871118746_)))
                                                    (if (gx#stx-null?
                                                         _tl1871318753_)
                                                        ((lambda (_L18756_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L18758_
                          _L18759_)
                   (cons _off18689_ (cons _L18758_ (cons _L18756_ '()))))
                 _hd1871218750_
                 _hd1870918740_
                 _hd1870618730_)
                (_g1869218719_ _g1869318723_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1869218719_
                                                 _g1869318723_))))
                                        (_g1869218719_ _g1869318723_))))
                                (_g1869218719_ _g1869318723_))))
                         (_g1869018818_
                          (lambda (_g1869318780_)
                            (if (gx#stx-pair? _g1869318780_)
                                (let ((_e1869618783_
                                       (gx#syntax-e _g1869318780_)))
                                  (let ((_hd1869718787_ (##car _e1869618783_))
                                        (_tl1869818790_ (##cdr _e1869618783_)))
                                    (if (gx#stx-pair? _tl1869818790_)
                                        (let ((_e1869918793_
                                               (gx#syntax-e _tl1869818790_)))
                                          (let ((_hd1870018797_
                                                 (##car _e1869918793_))
                                                (_tl1870118800_
                                                 (##cdr _e1869918793_)))
                                            (if (gx#stx-null? _tl1870118800_)
                                                ((lambda (_L18803_ _L18805_)
                                                   (cons _off18689_
                                                         (cons _L18805_
                                                               (cons _L18803_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1870018797_
                                                 _hd1869718787_)
                                                (_g1869118776_
                                                 _g1869318780_))))
                                        (_g1869118776_ _g1869318780_))))
                                (_g1869118776_ _g1869318780_)))))
                    (_g1869018818_ _field18687_))))
               (_field-id17224_
                (lambda (_field18553_)
                  (let* ((_g1855718584_
                          (lambda (_g1855818580_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1855818580_)))
                         (_g1855618641_
                          (lambda (_g1855818588_)
                            (if (gx#stx-pair? _g1855818588_)
                                (let ((_e1857018591_
                                       (gx#syntax-e _g1855818588_)))
                                  (let ((_hd1857118595_ (##car _e1857018591_))
                                        (_tl1857218598_ (##cdr _e1857018591_)))
                                    (if (gx#stx-pair? _tl1857218598_)
                                        (let ((_e1857318601_
                                               (gx#syntax-e _tl1857218598_)))
                                          (let ((_hd1857418605_
                                                 (##car _e1857318601_))
                                                (_tl1857518608_
                                                 (##cdr _e1857318601_)))
                                            (if (gx#stx-pair? _tl1857518608_)
                                                (let ((_e1857618611_
                                                       (gx#syntax-e
                                                        _tl1857518608_)))
                                                  (let ((_hd1857718615_
                                                         (##car _e1857618611_))
                                                        (_tl1857818618_
                                                         (##cdr _e1857618611_)))
                                                    (if (gx#stx-null?
                                                         _tl1857818618_)
                                                        ((lambda (_L18621_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L18623_
                          _L18624_)
                   _L18624_)
                 _hd1857718615_
                 _hd1857418605_
                 _hd1857118595_)
                (_g1855718584_ _g1855818588_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1855718584_
                                                 _g1855818588_))))
                                        (_g1855718584_ _g1855818588_))))
                                (_g1855718584_ _g1855818588_))))
                         (_g1855518683_
                          (lambda (_g1855818645_)
                            (if (gx#stx-pair? _g1855818645_)
                                (let ((_e1856118648_
                                       (gx#syntax-e _g1855818645_)))
                                  (let ((_hd1856218652_ (##car _e1856118648_))
                                        (_tl1856318655_ (##cdr _e1856118648_)))
                                    (if (gx#stx-pair? _tl1856318655_)
                                        (let ((_e1856418658_
                                               (gx#syntax-e _tl1856318655_)))
                                          (let ((_hd1856518662_
                                                 (##car _e1856418658_))
                                                (_tl1856618665_
                                                 (##cdr _e1856418658_)))
                                            (if (gx#stx-null? _tl1856618665_)
                                                ((lambda (_L18668_ _L18670_)
                                                   ':)
                                                 _hd1856518662_
                                                 _hd1856218652_)
                                                (_g1855618641_
                                                 _g1855818645_))))
                                        (_g1855618641_ _g1855818645_))))
                                (_g1855618641_ _g1855818645_)))))
                    (_g1855518683_ _field18553_))))
               (_struct-opt?17225_
                (lambda (_key18550_)
                  (memq (gx#stx-e _key18550_)
                        '(fields: id: name: plist: constructor: unchecked:))))
               (_class-opt?17226_
                (lambda (_key18547_)
                  (memq (gx#stx-e _key18547_)
                        '(slots: id: name: plist: constructor: unchecked:))))
               (_module-type-id17227_
                (lambda (_type-t18534_)
                  (let ((_$e18537_
                         (gx#module-context-ns (gx#current-expander-context))))
                    (if _$e18537_
                        ((lambda (_ns18541_)
                           (gx#stx-identifier
                            _type-t18534_
                            _ns18541_
                            '"#"
                            _type-t18534_))
                         _$e18537_)
                        (let ((_mid18544_
                               (gx#expander-context-id
                                (gx#current-expander-context))))
                          (gx#stx-identifier
                           _type-t18534_
                           _mid18544_
                           '"#"
                           _type-t18534_)))))))
        (let* ((_g1722917256_
                (lambda (_g1723017252_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1723017252_)))
               (_g1722818530_
                (lambda (_g1723017260_)
                  (if (gx#stx-pair? _g1723017260_)
                      (let ((_e1723617263_ (gx#syntax-e _g1723017260_)))
                        (let ((_hd1723717267_ (##car _e1723617263_))
                              (_tl1723817270_ (##cdr _e1723617263_)))
                          (if (gx#stx-pair? _tl1723817270_)
                              (let ((_e1723917273_
                                     (gx#syntax-e _tl1723817270_)))
                                (let ((_hd1724017277_ (##car _e1723917273_))
                                      (_tl1724117280_ (##cdr _e1723917273_)))
                                  (if (gx#stx-pair? _tl1724117280_)
                                      (let ((_e1724217283_
                                             (gx#syntax-e _tl1724117280_)))
                                        (let ((_hd1724317287_
                                               (##car _e1724217283_))
                                              (_tl1724417290_
                                               (##cdr _e1724217283_)))
                                          (if (gx#stx-pair? _tl1724417290_)
                                              (let ((_e1724517293_
                                                     (gx#syntax-e
                                                      _tl1724417290_)))
                                                (let ((_hd1724617297_
                                                       (##car _e1724517293_))
                                                      (_tl1724717300_
                                                       (##cdr _e1724517293_)))
                                                  (if (gx#stx-pair?
                                                       _tl1724717300_)
                                                      (let ((_e1724817303_
                                                             (gx#syntax-e
                                                              _tl1724717300_)))
                                                        (let ((_hd1724917307_
                                                               (##car _e1724817303_))
                                                              (_tl1725017310_
                                                               (##cdr _e1724817303_)))
                                                          ((lambda (_L17313_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L17315_
                            _L17316_
                            _L17317_
                            _L17318_)
                     (if (if (gx#identifier? _L17318_)
                             (if (let ((_$e17344_ (gx#identifier? _L17316_)))
                                   (if _$e17344_
                                       _$e17344_
                                       (gx#stx-false? _L17316_)))
                                 (if (gx#identifier? _L17315_)
                                     (gx#stx-plist?
                                      _L17313_
                                      (if _struct?17219_
                                          _struct-opt?17225_
                                          _class-opt?17226_))
                                     '#f)
                                 '#f)
                             '#f)
                         (let* ((_els17352_
                                 (let ((_$e17348_
                                        (gx#stx-getq
                                         (if _struct?17219_ 'fields: 'slots:)
                                         _L17313_)))
                                   (if _$e17348_ _$e17348_ '())))
                                (_g1735517386_
                                 (lambda (_g1735617382_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1735617382_)))
                                (_g1735418526_
                                 (lambda (_g1735617390_)
                                   (if (gx#stx-pair? _g1735617390_)
                                       (let ((_e1736317393_
                                              (gx#syntax-e _g1735617390_)))
                                         (let ((_hd1736417397_
                                                (##car _e1736317393_))
                                               (_tl1736517400_
                                                (##cdr _e1736317393_)))
                                           (if (gx#stx-pair? _tl1736517400_)
                                               (let ((_e1736617403_
                                                      (gx#syntax-e
                                                       _tl1736517400_)))
                                                 (let ((_hd1736717407_
                                                        (##car _e1736617403_))
                                                       (_tl1736817410_
                                                        (##cdr _e1736617403_)))
                                                   (if (gx#stx-pair?
                                                        _tl1736817410_)
                                                       (let ((_e1736917413_
                                                              (gx#syntax-e
                                                               _tl1736817410_)))
                                                         (let ((_hd1737017417_
                                                                (##car _e1736917413_))
                                                               (_tl1737117420_
                                                                (##cdr _e1736917413_)))
                                                           (if (gx#stx-pair?
                                                                _tl1737117420_)
                                                               (let ((_e1737217423_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl1737117420_)))
                         (let ((_hd1737317427_ (##car _e1737217423_))
                               (_tl1737417430_ (##cdr _e1737217423_)))
                           (if (gx#stx-pair? _tl1737417430_)
                               (let ((_e1737517433_
                                      (gx#syntax-e _tl1737417430_)))
                                 (let ((_hd1737617437_ (##car _e1737517433_))
                                       (_tl1737717440_ (##cdr _e1737517433_)))
                                   (if (gx#stx-pair? _tl1737717440_)
                                       (let ((_e1737817443_
                                              (gx#syntax-e _tl1737717440_)))
                                         (let ((_hd1737917447_
                                                (##car _e1737817443_))
                                               (_tl1738017450_
                                                (##cdr _e1737817443_)))
                                           (if (gx#stx-null? _tl1738017450_)
                                               ((lambda (_L17453_
                                                         _L17455_
                                                         _L17456_
                                                         _L17457_
                                                         _L17458_
                                                         _L17459_)
                                                  (let ()
                                                    (let* ((_g1748817496_
                                                            (lambda (_g1748917492_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g1748917492_)))
                                                           (_g1748718518_
                                                            (lambda (_g1748917500_)
                                                              ((lambda (_L17503_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g1751617524_
                                   (lambda (_g1751717520_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1751717520_)))
                                  (_g1751518510_
                                   (lambda (_g1751717528_)
                                     ((lambda (_L17531_)
                                        (let ()
                                          (let* ((_g1754417552_
                                                  (lambda (_g1754517548_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1754517548_)))
                                                 (_g1754318502_
                                                  (lambda (_g1754517556_)
                                                    ((lambda (_L17559_)
                                                       (let ()
                                                         (let* ((_g1757217580_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1757317576_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1757317576_)))
                        (_g1757118498_
                         (lambda (_g1757317584_)
                           ((lambda (_L17587_)
                              (let ()
                                (let* ((_g1760017608_
                                        (lambda (_g1760117604_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g1760117604_)))
                                       (_g1759918214_
                                        (lambda (_g1760117612_)
                                          ((lambda (_L17615_)
                                             (let ()
                                               (let* ((_g1762817636_
                                                       (lambda (_g1762917632_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1762917632_)))
                                                      (_g1762718210_
                                                       (lambda (_g1762917640_)
                                                         ((lambda (_L17643_)
                                                            (let ()
                                                              (let* ((_g1765617664_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g1765717660_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1765717660_)))
                             (_g1765518206_
                              (lambda (_g1765717668_)
                                ((lambda (_L17671_)
                                   (let ()
                                     (let* ((_g1768417692_
                                             (lambda (_g1768517688_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1768517688_)))
                                            (_g1768318202_
                                             (lambda (_g1768517696_)
                                               ((lambda (_L17699_)
                                                  (let ()
                                                    (let* ((_attrs17712_
                                                            (if _struct?17219_
                                                                (gx#stx-map
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _slotify17223_
                         _els17352_
                         (iota (gx#stx-length _els17352_)))
                        _els17352_))
                   (_g1771517741_
                    (lambda (_g1771617737_)
                      (gx#raise-syntax-error '#f '"Bad syntax" _g1771617737_)))
                   (_g1771418114_
                    (lambda (_g1771617745_)
                      (if (gx#stx-pair/null? _g1771617745_)
                          (if (fx>= (gx#stx-length _g1771617745_) '0)
                              (let ((_g35546_
                                     (gx#syntax-split-splice
                                      _g1771617745_
                                      '0)))
                                (begin
                                  (let ((_g35547_
                                         (if (##values? _g35546_)
                                             (##vector-length _g35546_)
                                             1)))
                                    (if (not (##fx= _g35547_ 2))
                                        (error "Context expects 2 values"
                                               _g35547_)))
                                  (let ((_target1771917748_
                                         (##vector-ref _g35546_ 0))
                                        (_tl1772117751_
                                         (##vector-ref _g35546_ 1)))
                                    (if (gx#stx-null? _tl1772117751_)
                                        (letrec ((_loop1772217754_
                                                  (lambda (_hd1772017758_
                                                           _def-setf1772617761_
                                                           _def-getf1772717763_)
                                                    (if (gx#stx-pair?
                                                         _hd1772017758_)
                                                        (let ((_e1772317766_
                                                               (gx#syntax-e
                                                                _hd1772017758_)))
                                                          (let ((_lp-hd1772417770_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1772317766_))
                        (_lp-tl1772517773_ (##cdr _e1772317766_)))
                    (if (gx#stx-pair? _lp-hd1772417770_)
                        (let ((_e1773017776_ (gx#syntax-e _lp-hd1772417770_)))
                          (let ((_hd1773117780_ (##car _e1773017776_))
                                (_tl1773217783_ (##cdr _e1773017776_)))
                            (if (gx#stx-pair? _tl1773217783_)
                                (let ((_e1773317786_
                                       (gx#syntax-e _tl1773217783_)))
                                  (let ((_hd1773417790_ (##car _e1773317786_))
                                        (_tl1773517793_ (##cdr _e1773317786_)))
                                    (if (gx#stx-null? _tl1773517793_)
                                        (_loop1772217754_
                                         _lp-tl1772517773_
                                         (cons _hd1773417790_
                                               _def-setf1772617761_)
                                         (cons _hd1773117780_
                                               _def-getf1772717763_))
                                        (_g1771517741_ _g1771617745_))))
                                (_g1771517741_ _g1771617745_))))
                        (_g1771517741_ _g1771617745_))))
                (let ((_def-setf1772817796_ (reverse _def-setf1772617761_))
                      (_def-getf1772917799_ (reverse _def-getf1772717763_)))
                  ((lambda (_L17802_ _L17804_)
                     (let ()
                       (let* ((_g1782217848_
                               (lambda (_g1782317844_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1782317844_)))
                              (_g1782117962_
                               (lambda (_g1782317852_)
                                 (if (gx#stx-pair/null? _g1782317852_)
                                     (if (fx>= (gx#stx-length _g1782317852_)
                                               '0)
                                         (let ((_g35548_
                                                (gx#syntax-split-splice
                                                 _g1782317852_
                                                 '0)))
                                           (begin
                                             (let ((_g35549_
                                                    (if (##values? _g35548_)
                                                        (##vector-length
                                                         _g35548_)
                                                        1)))
                                               (if (not (##fx= _g35549_ 2))
                                                   (error "Context expects 2 values"
                                                          _g35549_)))
                                             (let ((_target1782617855_
                                                    (##vector-ref _g35548_ 0))
                                                   (_tl1782817858_
                                                    (##vector-ref _g35548_ 1)))
                                               (if (gx#stx-null?
                                                    _tl1782817858_)
                                                   (letrec ((_loop1782917861_
                                                             (lambda (_hd1782717865_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _def-usetf1783317868_
                              _def-ugetf1783417870_)
                       (if (gx#stx-pair? _hd1782717865_)
                           (let ((_e1783017873_ (gx#syntax-e _hd1782717865_)))
                             (let ((_lp-hd1783117877_ (##car _e1783017873_))
                                   (_lp-tl1783217880_ (##cdr _e1783017873_)))
                               (if (gx#stx-pair? _lp-hd1783117877_)
                                   (let ((_e1783717883_
                                          (gx#syntax-e _lp-hd1783117877_)))
                                     (let ((_hd1783817887_
                                            (##car _e1783717883_))
                                           (_tl1783917890_
                                            (##cdr _e1783717883_)))
                                       (if (gx#stx-pair? _tl1783917890_)
                                           (let ((_e1784017893_
                                                  (gx#syntax-e
                                                   _tl1783917890_)))
                                             (let ((_hd1784117897_
                                                    (##car _e1784017893_))
                                                   (_tl1784217900_
                                                    (##cdr _e1784017893_)))
                                               (if (gx#stx-null?
                                                    _tl1784217900_)
                                                   (_loop1782917861_
                                                    _lp-tl1783217880_
                                                    (cons _hd1784117897_
                                                          _def-usetf1783317868_)
                                                    (cons _hd1783817887_
                                                          _def-ugetf1783417870_))
                                                   (_g1782217848_
                                                    _g1782317852_))))
                                           (_g1782217848_ _g1782317852_))))
                                   (_g1782217848_ _g1782317852_))))
                           (let ((_def-usetf1783517903_
                                  (reverse _def-usetf1783317868_))
                                 (_def-ugetf1783617906_
                                  (reverse _def-ugetf1783417870_)))
                             ((lambda (_L17909_ _L17911_)
                                (let ()
                                  (let ()
                                    (_wrap17221_
                                     (cons (gx#datum->syntax '#f 'begin)
                                           (cons _L17643_
                                                 (cons _L17699_
                                                       (cons _L17671_
                                                             (begin
                                                               '#!void
                                                               (foldr (lambda (_g1792917938_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1793017941_)
                                (cons _g1792917938_ _g1793017941_))
                              (begin
                                '#!void
                                (foldr (lambda (_g1793117944_ _g1793217947_)
                                         (cons _g1793117944_ _g1793217947_))
                                       (begin
                                         '#!void
                                         (foldr (lambda (_g1793317950_
                                                         _g1793417953_)
                                                  (cons _g1793317950_
                                                        _g1793417953_))
                                                (begin
                                                  '#!void
                                                  (foldr (lambda (_g1793517956_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1793617959_)
                   (cons _g1793517956_ _g1793617959_))
                 '()
                 _L17909_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _L17911_))
                                       _L17802_))
                              _L17804_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              _def-usetf1783517903_
                              _def-ugetf1783617906_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1782917861_
                                                      _target1782617855_
                                                      '()
                                                      '()))
                                                   (_g1782217848_
                                                    _g1782317852_)))))
                                         (_g1782217848_ _g1782317852_))
                                     (_g1782217848_ _g1782317852_)))))
                         (_g1782117962_
                          (if (gx#stx-e (gx#stx-getq 'unchecked: _L17313_))
                              (gx#stx-map
                               (lambda (_ref17966_)
                                 (let* ((_g1796917988_
                                         (lambda (_g1797017984_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g1797017984_)))
                                        (_g1796818110_
                                         (lambda (_g1797017992_)
                                           (if (gx#stx-pair? _g1797017992_)
                                               (let ((_e1797417995_
                                                      (gx#syntax-e
                                                       _g1797017992_)))
                                                 (let ((_hd1797517999_
                                                        (##car _e1797417995_))
                                                       (_tl1797618002_
                                                        (##cdr _e1797417995_)))
                                                   (if (gx#stx-pair?
                                                        _tl1797618002_)
                                                       (let ((_e1797718005_
                                                              (gx#syntax-e
                                                               _tl1797618002_)))
                                                         (let ((_hd1797818009_
                                                                (##car _e1797718005_))
                                                               (_tl1797918012_
                                                                (##cdr _e1797718005_)))
                                                           (if (gx#stx-pair?
                                                                _tl1797918012_)
                                                               (let ((_e1798018015_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl1797918012_)))
                         (let ((_hd1798118019_ (##car _e1798018015_))
                               (_tl1798218022_ (##cdr _e1798018015_)))
                           (if (gx#stx-null? _tl1798218022_)
                               ((lambda (_L18025_ _L18027_ _L18028_)
                                  (let* ((_g1804618061_
                                          (lambda (_g1804718057_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g1804718057_)))
                                         (_g1804518106_
                                          (lambda (_g1804718065_)
                                            (if (gx#stx-pair? _g1804718065_)
                                                (let ((_e1805018068_
                                                       (gx#syntax-e
                                                        _g1804718065_)))
                                                  (let ((_hd1805118072_
                                                         (##car _e1805018068_))
                                                        (_tl1805218075_
                                                         (##cdr _e1805018068_)))
                                                    (if (gx#stx-pair?
                                                         _tl1805218075_)
                                                        (let ((_e1805318078_
                                                               (gx#syntax-e
                                                                _tl1805218075_)))
                                                          (let ((_hd1805418082_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1805318078_))
                        (_tl1805518085_ (##cdr _e1805318078_)))
                    (if (gx#stx-null? _tl1805518085_)
                        ((lambda (_L18088_ _L18090_)
                           (let ()
                             (cons (_wrap17221_
                                    (cons (gx#datum->syntax '#f 'def)
                                          (cons _L18090_
                                                (cons (cons _L17455_
                                                            (cons _L17318_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _L18028_ '()))
                                '())))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (cons (_wrap17221_
                                          (cons (gx#datum->syntax '#f 'def)
                                                (cons _L18088_
                                                      (cons (cons _L17453_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L17318_
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _L18028_ '()))
                                      '())))
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                         _hd1805418082_
                         _hd1805118072_)
                        (_g1804618061_ _g1804718065_))))
                (_g1804618061_ _g1804718065_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1804618061_
                                                 _g1804718065_)))))
                                    (_g1804518106_
                                     (list (gx#stx-identifier
                                            _L18027_
                                            '"&"
                                            _L18027_)
                                           (gx#stx-identifier
                                            _L18025_
                                            '"&"
                                            _L18025_)))))
                                _hd1798118019_
                                _hd1797818009_
                                _hd1797517999_)
                               (_g1796917988_ _g1797017992_))))
                       (_g1796917988_ _g1797017992_))))
               (_g1796917988_ _g1797017992_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1796917988_
                                                _g1797017992_)))))
                                   (_g1796818110_ _ref17966_)))
                               _attrs17712_)
                              '())))))
                   _def-setf1772817796_
                   _def-getf1772917799_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop1772217754_
                                           _target1771917748_
                                           '()
                                           '()))
                                        (_g1771517741_ _g1771617745_)))))
                              (_g1771517741_ _g1771617745_))
                          (_g1771517741_ _g1771617745_)))))
              (_g1771418114_
               (gx#stx-map
                (lambda (_ref18118_)
                  (let* ((_g1812118140_
                          (lambda (_g1812218136_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1812218136_)))
                         (_g1812018198_
                          (lambda (_g1812218144_)
                            (if (gx#stx-pair? _g1812218144_)
                                (let ((_e1812618147_
                                       (gx#syntax-e _g1812218144_)))
                                  (let ((_hd1812718151_ (##car _e1812618147_))
                                        (_tl1812818154_ (##cdr _e1812618147_)))
                                    (if (gx#stx-pair? _tl1812818154_)
                                        (let ((_e1812918157_
                                               (gx#syntax-e _tl1812818154_)))
                                          (let ((_hd1813018161_
                                                 (##car _e1812918157_))
                                                (_tl1813118164_
                                                 (##cdr _e1812918157_)))
                                            (if (gx#stx-pair? _tl1813118164_)
                                                (let ((_e1813218167_
                                                       (gx#syntax-e
                                                        _tl1813118164_)))
                                                  (let ((_hd1813318171_
                                                         (##car _e1813218167_))
                                                        (_tl1813418174_
                                                         (##cdr _e1813218167_)))
                                                    (if (gx#stx-null?
                                                         _tl1813418174_)
                                                        ((lambda (_L18177_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L18179_
                          _L18180_)
                   (cons (_wrap17221_
                          (cons (gx#datum->syntax '#f 'def)
                                (cons _L18179_
                                      (cons (cons _L17457_
                                                  (cons _L17318_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons _L18180_ '()))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '()))))
                         (cons (_wrap17221_
                                (cons (gx#datum->syntax '#f 'def)
                                      (cons _L18177_
                                            (cons (cons _L17456_
                                                        (cons _L17318_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _L18180_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))
                               '())))
                 _hd1813318171_
                 _hd1813018161_
                 _hd1812718151_)
                (_g1812118140_ _g1812218144_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1812118140_
                                                 _g1812218144_))))
                                        (_g1812118140_ _g1812218144_))))
                                (_g1812118140_ _g1812218144_)))))
                    (_g1812018198_ _ref18118_)))
                _attrs17712_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1768517696_))))
                                       (_g1768318202_
                                        (_wrap17221_
                                         (cons (gx#datum->syntax '#f 'def)
                                               (cons _L17315_
                                                     (cons (cons _L17458_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L17318_ '()))
                   '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _g1765717668_))))
                        (_g1765518206_
                         (if (gx#stx-false? _L17316_)
                             (cons (gx#datum->syntax '#f 'begin) '())
                             (_wrap17221_
                              (cons (gx#datum->syntax '#f 'def)
                                    (cons (cons _L17316_
                                                (gx#datum->syntax '#f '$args))
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'apply)
                                                      (cons _L17459_
                                                            (cons _L17318_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f '$args) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))))))))
                  _g1762917640_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1762718210_
                                                  (_wrap17221_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'def)
                                                         (cons _L17318_
                                                               (cons _L17615_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _g1760117612_))))
                                  (_g1759918214_
                                   (if _struct?17219_
                                       (let* ((_g1821818242_
                                               (lambda (_g1821918238_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1821918238_)))
                                              (_g1821718329_
                                               (lambda (_g1821918246_)
                                                 (if (gx#stx-pair?
                                                      _g1821918246_)
                                                     (let ((_e1822218249_
                                                            (gx#syntax-e
                                                             _g1821918246_)))
                                                       (let ((_hd1822318253_
                                                              (##car _e1822218249_))
                                                             (_tl1822418256_
                                                              (##cdr _e1822218249_)))
                                                         (if (gx#stx-pair?
                                                              _tl1822418256_)
                                                             (let ((_e1822518259_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl1822418256_)))
                       (let ((_hd1822618263_ (##car _e1822518259_))
                             (_tl1822718266_ (##cdr _e1822518259_)))
                         (if (gx#stx-pair/null? _hd1822618263_)
                             (if (fx>= (gx#stx-length _hd1822618263_) '0)
                                 (let ((_g35550_
                                        (gx#syntax-split-splice
                                         _hd1822618263_
                                         '0)))
                                   (begin
                                     (let ((_g35551_
                                            (if (##values? _g35550_)
                                                (##vector-length _g35550_)
                                                1)))
                                       (if (not (##fx= _g35551_ 2))
                                           (error "Context expects 2 values"
                                                  _g35551_)))
                                     (let ((_target1822818269_
                                            (##vector-ref _g35550_ 0))
                                           (_tl1823018272_
                                            (##vector-ref _g35550_ 1)))
                                       (if (gx#stx-null? _tl1823018272_)
                                           (letrec ((_loop1823118275_
                                                     (lambda (_hd1822918279_
                                                              _field-id1823518282_)
                                                       (if (gx#stx-pair?
                                                            _hd1822918279_)
                                                           (let ((_e1823218285_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd1822918279_)))
                     (let ((_lp-hd1823318289_ (##car _e1823218285_))
                           (_lp-tl1823418292_ (##cdr _e1823218285_)))
                       (_loop1823118275_
                        _lp-tl1823418292_
                        (cons _lp-hd1823318289_ _field-id1823518282_))))
                   (let ((_field-id1823618295_ (reverse _field-id1823518282_)))
                     (if (gx#stx-null? _tl1822718266_)
                         ((lambda (_L18299_ _L18301_)
                            (let ()
                              (cons (gx#datum->syntax '#f 'make-struct-type)
                                    (cons (cons (gx#datum->syntax '#f 'quote)
                                                (cons _L17503_ '()))
                                          (cons _L17317_
                                                (cons _L18301_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons _L17531_ '()))
                    (cons _L17559_
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _L17587_ '()))
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons (begin
                                                    '#!void
                                                    (foldr (lambda (_g1832018323_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1832118326_)
                     (cons _g1832018323_ _g1832118326_))
                   '()
                   _L18299_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          _field-id1823618295_
                          _hd1822318253_)
                         (_g1821818242_ _g1821918246_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop1823118275_
                                              _target1822818269_
                                              '()))
                                           (_g1821818242_ _g1821918246_)))))
                                 (_g1821818242_ _g1821918246_))
                             (_g1821818242_ _g1821918246_))))
                     (_g1821818242_ _g1821918246_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1821818242_
                                                      _g1821918246_)))))
                                         (_g1821718329_
                                          (list (gx#stx-length _els17352_)
                                                (gx#stx-map
                                                 _field-id17224_
                                                 _els17352_))))
                                       (let* ((_g1833318366_
                                               (lambda (_g1833418362_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1833418362_)))
                                              (_g1833218494_
                                               (lambda (_g1833418370_)
                                                 (if (gx#stx-pair?
                                                      _g1833418370_)
                                                     (let ((_e1833718373_
                                                            (gx#syntax-e
                                                             _g1833418370_)))
                                                       (let ((_hd1833818377_
                                                              (##car _e1833718373_))
                                                             (_tl1833918380_
                                                              (##cdr _e1833718373_)))
                                                         (if (gx#stx-pair/null?
                                                              _hd1833818377_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _hd1833818377_)
                               '0)
                         (let ((_g35552_
                                (gx#syntax-split-splice _hd1833818377_ '0)))
                           (begin
                             (let ((_g35553_
                                    (if (##values? _g35552_)
                                        (##vector-length _g35552_)
                                        1)))
                               (if (not (##fx= _g35553_ 2))
                                   (error "Context expects 2 values"
                                          _g35553_)))
                             (let ((_target1834018383_
                                    (##vector-ref _g35552_ 0))
                                   (_tl1834218386_ (##vector-ref _g35552_ 1)))
                               (if (gx#stx-null? _tl1834218386_)
                                   (letrec ((_loop1834318389_
                                             (lambda (_hd1834118393_
                                                      _super1834718396_)
                                               (if (gx#stx-pair?
                                                    _hd1834118393_)
                                                   (let ((_e1834418399_
                                                          (gx#syntax-e
                                                           _hd1834118393_)))
                                                     (let ((_lp-hd1834518403_
                                                            (##car _e1834418399_))
                                                           (_lp-tl1834618406_
                                                            (##cdr _e1834418399_)))
                                                       (_loop1834318389_
                                                        _lp-tl1834618406_
                                                        (cons _lp-hd1834518403_
                                                              _super1834718396_))))
                                                   (let ((_super1834818409_
                                                          (reverse _super1834718396_)))
                                                     (if (gx#stx-pair?
                                                          _tl1833918380_)
                                                         (let ((_e1834918413_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1833918380_)))
                   (let ((_hd1835018417_ (##car _e1834918413_))
                         (_tl1835118420_ (##cdr _e1834918413_)))
                     (if (gx#stx-pair/null? _hd1835018417_)
                         (if (fx>= (gx#stx-length _hd1835018417_) '0)
                             (let ((_g35554_
                                    (gx#syntax-split-splice
                                     _hd1835018417_
                                     '0)))
                               (begin
                                 (let ((_g35555_
                                        (if (##values? _g35554_)
                                            (##vector-length _g35554_)
                                            1)))
                                   (if (not (##fx= _g35555_ 2))
                                       (error "Context expects 2 values"
                                              _g35555_)))
                                 (let ((_target1835218423_
                                        (##vector-ref _g35554_ 0))
                                       (_tl1835418426_
                                        (##vector-ref _g35554_ 1)))
                                   (if (gx#stx-null? _tl1835418426_)
                                       (letrec ((_loop1835518429_
                                                 (lambda (_hd1835318433_
                                                          _slot1835918436_)
                                                   (if (gx#stx-pair?
                                                        _hd1835318433_)
                                                       (let ((_e1835618439_
                                                              (gx#syntax-e
                                                               _hd1835318433_)))
                                                         (let ((_lp-hd1835718443_
                                                                (##car _e1835618439_))
                                                               (_lp-tl1835818446_
                                                                (##cdr _e1835618439_)))
                                                           (_loop1835518429_
                                                            _lp-tl1835818446_
                                                            (cons _lp-hd1835718443_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _slot1835918436_))))
               (let ((_slot1836018449_ (reverse _slot1835918436_)))
                 (if (gx#stx-null? _tl1835118420_)
                     ((lambda (_L18453_ _L18455_)
                        (let ()
                          (cons (gx#datum->syntax '#f 'make-class-type)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _L17503_ '()))
                                      (cons (cons (gx#datum->syntax '#f '@list)
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g1847718482_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1847818485_)
                     (cons _g1847718482_ _g1847818485_))
                   '()
                   _L18455_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'quote)
                                                        (cons (begin
                                                                '#!void
                                                                (foldr (lambda (_g1847918488_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g1848018491_)
                                 (cons _g1847918488_ _g1848018491_))
                               '()
                               _L18453_))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'quote)
                                                              (cons _L17531_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _L17559_
                      (cons (cons (gx#datum->syntax '#f 'quote)
                                  (cons _L17587_ '()))
                            '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      _slot1836018449_
                      _super1834818409_)
                     (_g1833318366_ _g1833418370_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop1835518429_
                                          _target1835218423_
                                          '()))
                                       (_g1833318366_ _g1833418370_)))))
                             (_g1833318366_ _g1833418370_))
                         (_g1833318366_ _g1833418370_))))
                 (_g1833318366_ _g1833418370_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop1834318389_ _target1834018383_ '()))
                                   (_g1833318366_ _g1833418370_)))))
                         (_g1833318366_ _g1833418370_))
                     (_g1833318366_ _g1833418370_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1833318366_
                                                      _g1833418370_)))))
                                         (_g1833218494_
                                          (list _L17317_
                                                (gx#stx-map
                                                 gx#stx-car
                                                 _els17352_)))))))))
                            _g1757317584_))))
                   (_g1757118498_ (gx#stx-getq 'constructor: _L17313_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1754517556_))))
                                            (_g1754318502_
                                             (let ((_$e18506_
                                                    (gx#stx-getq
                                                     'plist:
                                                     _L17313_)))
                                               (if _$e18506_
                                                   _$e18506_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '@list)
                                                         '())))))))
                                      _g1751717528_))))
                             (_g1751518510_
                              (let ((_$e18514_ (gx#stx-getq 'name: _L17313_)))
                                (if _$e18514_ _$e18514_ _L17318_))))))
                       _g1748917500_))))
              (_g1748718518_
               (let ((_$e18522_ (gx#stx-getq 'id: _L17313_)))
                 (if _$e18522_
                     _$e18522_
                     (if (gx#module-context? (gx#current-expander-context))
                         (_module-type-id17227_ _L17318_)
                         (gx#genident _L17318_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1737917447_
                                                _hd1737617437_
                                                _hd1737317427_
                                                _hd1737017417_
                                                _hd1736717407_
                                                _hd1736417397_)
                                               (_g1735517386_ _g1735617390_))))
                                       (_g1735517386_ _g1735617390_))))
                               (_g1735517386_ _g1735617390_))))
                       (_g1735517386_ _g1735617390_))))
               (_g1735517386_ _g1735617390_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1735517386_ _g1735617390_))))
                                       (_g1735517386_ _g1735617390_)))))
                           (_g1735418526_
                            (if _struct?17219_
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
                         (_g1722917256_ _g1723017260_)))
                   _tl1725017310_
                   _hd1724917307_
                   _hd1724617297_
                   _hd1724317287_
                   _hd1724017277_)))
              (_g1722917256_ _g1723017260_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1722917256_ _g1723017260_))))
                                      (_g1722917256_ _g1723017260_))))
                              (_g1722917256_ _g1723017260_))))
                      (_g1722917256_ _g1723017260_)))))
          (_g1722818530_ _stx17217_)))))
  (define |gerbil/core$<MOP>$<MOP:1>[:0:]#defstruct-type|
    (lambda (_stx18830_)
      (|gerbil/core$<MOP>$<MOP:1>[1]#generate-typedef| _stx18830_ '#t)))
  (define |gerbil/core$<MOP>$<MOP:1>[:0:]#defclass-type|
    (lambda (_stx18833_)
      (|gerbil/core$<MOP>$<MOP:1>[1]#generate-typedef| _stx18833_ '#f))))
