(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<MOP>$<MOP:1>[1]#generate-typedef|
    (lambda (_stx16396_ _struct?16398_)
      (letrec ((_wrap16400_
                (lambda (_e-stx18001_)
                  (gx#stx-wrap-source
                   _e-stx18001_
                   (gx#stx-source _stx16396_))))
               (_slotify16402_
                (lambda (_field17866_ _off17868_)
                  (let* ((_g1787117898_
                          (lambda (_g1787217894_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1787217894_)))
                         (_g1787017955_
                          (lambda (_g1787217902_)
                            (if (gx#stx-pair? _g1787217902_)
                                (let ((_e1788417905_
                                       (gx#syntax-e _g1787217902_)))
                                  (let ((_hd1788517909_ (##car _e1788417905_))
                                        (_tl1788617912_ (##cdr _e1788417905_)))
                                    (if (gx#stx-pair? _tl1788617912_)
                                        (let ((_e1788717915_
                                               (gx#syntax-e _tl1788617912_)))
                                          (let ((_hd1788817919_
                                                 (##car _e1788717915_))
                                                (_tl1788917922_
                                                 (##cdr _e1788717915_)))
                                            (if (gx#stx-pair? _tl1788917922_)
                                                (let ((_e1789017925_
                                                       (gx#syntax-e
                                                        _tl1788917922_)))
                                                  (let ((_hd1789117929_
                                                         (##car _e1789017925_))
                                                        (_tl1789217932_
                                                         (##cdr _e1789017925_)))
                                                    (if (gx#stx-null?
                                                         _tl1789217932_)
                                                        ((lambda (_L17935_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L17937_
                          _L17938_)
                   (cons _off17868_ (cons _L17937_ (cons _L17935_ '()))))
                 _hd1789117929_
                 _hd1788817919_
                 _hd1788517909_)
                (_g1787117898_ _g1787217902_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1787117898_
                                                 _g1787217902_))))
                                        (_g1787117898_ _g1787217902_))))
                                (_g1787117898_ _g1787217902_))))
                         (_g1786917997_
                          (lambda (_g1787217959_)
                            (if (gx#stx-pair? _g1787217959_)
                                (let ((_e1787517962_
                                       (gx#syntax-e _g1787217959_)))
                                  (let ((_hd1787617966_ (##car _e1787517962_))
                                        (_tl1787717969_ (##cdr _e1787517962_)))
                                    (if (gx#stx-pair? _tl1787717969_)
                                        (let ((_e1787817972_
                                               (gx#syntax-e _tl1787717969_)))
                                          (let ((_hd1787917976_
                                                 (##car _e1787817972_))
                                                (_tl1788017979_
                                                 (##cdr _e1787817972_)))
                                            (if (gx#stx-null? _tl1788017979_)
                                                ((lambda (_L17982_ _L17984_)
                                                   (cons _off17868_
                                                         (cons _L17984_
                                                               (cons _L17982_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1787917976_
                                                 _hd1787617966_)
                                                (_g1787017955_
                                                 _g1787217959_))))
                                        (_g1787017955_ _g1787217959_))))
                                (_g1787017955_ _g1787217959_)))))
                    (_g1786917997_ _field17866_))))
               (_field-id16403_
                (lambda (_field17732_)
                  (let* ((_g1773617763_
                          (lambda (_g1773717759_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1773717759_)))
                         (_g1773517820_
                          (lambda (_g1773717767_)
                            (if (gx#stx-pair? _g1773717767_)
                                (let ((_e1774917770_
                                       (gx#syntax-e _g1773717767_)))
                                  (let ((_hd1775017774_ (##car _e1774917770_))
                                        (_tl1775117777_ (##cdr _e1774917770_)))
                                    (if (gx#stx-pair? _tl1775117777_)
                                        (let ((_e1775217780_
                                               (gx#syntax-e _tl1775117777_)))
                                          (let ((_hd1775317784_
                                                 (##car _e1775217780_))
                                                (_tl1775417787_
                                                 (##cdr _e1775217780_)))
                                            (if (gx#stx-pair? _tl1775417787_)
                                                (let ((_e1775517790_
                                                       (gx#syntax-e
                                                        _tl1775417787_)))
                                                  (let ((_hd1775617794_
                                                         (##car _e1775517790_))
                                                        (_tl1775717797_
                                                         (##cdr _e1775517790_)))
                                                    (if (gx#stx-null?
                                                         _tl1775717797_)
                                                        ((lambda (_L17800_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L17802_
                          _L17803_)
                   _L17803_)
                 _hd1775617794_
                 _hd1775317784_
                 _hd1775017774_)
                (_g1773617763_ _g1773717767_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1773617763_
                                                 _g1773717767_))))
                                        (_g1773617763_ _g1773717767_))))
                                (_g1773617763_ _g1773717767_))))
                         (_g1773417862_
                          (lambda (_g1773717824_)
                            (if (gx#stx-pair? _g1773717824_)
                                (let ((_e1774017827_
                                       (gx#syntax-e _g1773717824_)))
                                  (let ((_hd1774117831_ (##car _e1774017827_))
                                        (_tl1774217834_ (##cdr _e1774017827_)))
                                    (if (gx#stx-pair? _tl1774217834_)
                                        (let ((_e1774317837_
                                               (gx#syntax-e _tl1774217834_)))
                                          (let ((_hd1774417841_
                                                 (##car _e1774317837_))
                                                (_tl1774517844_
                                                 (##cdr _e1774317837_)))
                                            (if (gx#stx-null? _tl1774517844_)
                                                ((lambda (_L17847_ _L17849_)
                                                   ':)
                                                 _hd1774417841_
                                                 _hd1774117831_)
                                                (_g1773517820_
                                                 _g1773717824_))))
                                        (_g1773517820_ _g1773717824_))))
                                (_g1773517820_ _g1773717824_)))))
                    (_g1773417862_ _field17732_))))
               (_struct-opt?16404_
                (lambda (_key17729_)
                  (memq (gx#stx-e _key17729_)
                        '(fields: id: name: plist: constructor: unchecked:))))
               (_class-opt?16405_
                (lambda (_key17726_)
                  (memq (gx#stx-e _key17726_)
                        '(slots: id: name: plist: constructor: unchecked:))))
               (_module-type-id16406_
                (lambda (_type-t17713_)
                  (let ((_$e17716_
                         (gx#module-context-ns (gx#current-expander-context))))
                    (if _$e17716_
                        ((lambda (_ns17720_)
                           (gx#stx-identifier
                            _type-t17713_
                            _ns17720_
                            '"#"
                            _type-t17713_))
                         _$e17716_)
                        (let ((_mid17723_
                               (gx#expander-context-id
                                (gx#current-expander-context))))
                          (gx#stx-identifier
                           _type-t17713_
                           _mid17723_
                           '"#"
                           _type-t17713_)))))))
        (let* ((_g1640816435_
                (lambda (_g1640916431_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1640916431_)))
               (_g1640717709_
                (lambda (_g1640916439_)
                  (if (gx#stx-pair? _g1640916439_)
                      (let ((_e1641516442_ (gx#syntax-e _g1640916439_)))
                        (let ((_hd1641616446_ (##car _e1641516442_))
                              (_tl1641716449_ (##cdr _e1641516442_)))
                          (if (gx#stx-pair? _tl1641716449_)
                              (let ((_e1641816452_
                                     (gx#syntax-e _tl1641716449_)))
                                (let ((_hd1641916456_ (##car _e1641816452_))
                                      (_tl1642016459_ (##cdr _e1641816452_)))
                                  (if (gx#stx-pair? _tl1642016459_)
                                      (let ((_e1642116462_
                                             (gx#syntax-e _tl1642016459_)))
                                        (let ((_hd1642216466_
                                               (##car _e1642116462_))
                                              (_tl1642316469_
                                               (##cdr _e1642116462_)))
                                          (if (gx#stx-pair? _tl1642316469_)
                                              (let ((_e1642416472_
                                                     (gx#syntax-e
                                                      _tl1642316469_)))
                                                (let ((_hd1642516476_
                                                       (##car _e1642416472_))
                                                      (_tl1642616479_
                                                       (##cdr _e1642416472_)))
                                                  (if (gx#stx-pair?
                                                       _tl1642616479_)
                                                      (let ((_e1642716482_
                                                             (gx#syntax-e
                                                              _tl1642616479_)))
                                                        (let ((_hd1642816486_
                                                               (##car _e1642716482_))
                                                              (_tl1642916489_
                                                               (##cdr _e1642716482_)))
                                                          ((lambda (_L16492_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L16494_
                            _L16495_
                            _L16496_
                            _L16497_)
                     (if (if (gx#identifier? _L16497_)
                             (if (let ((_$e16523_ (gx#identifier? _L16495_)))
                                   (if _$e16523_
                                       _$e16523_
                                       (gx#stx-false? _L16495_)))
                                 (if (gx#identifier? _L16494_)
                                     (gx#stx-plist?
                                      _L16492_
                                      (if _struct?16398_
                                          _struct-opt?16404_
                                          _class-opt?16405_))
                                     '#f)
                                 '#f)
                             '#f)
                         (let* ((_els16531_
                                 (let ((_$e16527_
                                        (gx#stx-getq
                                         (if _struct?16398_ 'fields: 'slots:)
                                         _L16492_)))
                                   (if _$e16527_ _$e16527_ '())))
                                (_g1653416565_
                                 (lambda (_g1653516561_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1653516561_)))
                                (_g1653317705_
                                 (lambda (_g1653516569_)
                                   (if (gx#stx-pair? _g1653516569_)
                                       (let ((_e1654216572_
                                              (gx#syntax-e _g1653516569_)))
                                         (let ((_hd1654316576_
                                                (##car _e1654216572_))
                                               (_tl1654416579_
                                                (##cdr _e1654216572_)))
                                           (if (gx#stx-pair? _tl1654416579_)
                                               (let ((_e1654516582_
                                                      (gx#syntax-e
                                                       _tl1654416579_)))
                                                 (let ((_hd1654616586_
                                                        (##car _e1654516582_))
                                                       (_tl1654716589_
                                                        (##cdr _e1654516582_)))
                                                   (if (gx#stx-pair?
                                                        _tl1654716589_)
                                                       (let ((_e1654816592_
                                                              (gx#syntax-e
                                                               _tl1654716589_)))
                                                         (let ((_hd1654916596_
                                                                (##car _e1654816592_))
                                                               (_tl1655016599_
                                                                (##cdr _e1654816592_)))
                                                           (if (gx#stx-pair?
                                                                _tl1655016599_)
                                                               (let ((_e1655116602_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl1655016599_)))
                         (let ((_hd1655216606_ (##car _e1655116602_))
                               (_tl1655316609_ (##cdr _e1655116602_)))
                           (if (gx#stx-pair? _tl1655316609_)
                               (let ((_e1655416612_
                                      (gx#syntax-e _tl1655316609_)))
                                 (let ((_hd1655516616_ (##car _e1655416612_))
                                       (_tl1655616619_ (##cdr _e1655416612_)))
                                   (if (gx#stx-pair? _tl1655616619_)
                                       (let ((_e1655716622_
                                              (gx#syntax-e _tl1655616619_)))
                                         (let ((_hd1655816626_
                                                (##car _e1655716622_))
                                               (_tl1655916629_
                                                (##cdr _e1655716622_)))
                                           (if (gx#stx-null? _tl1655916629_)
                                               ((lambda (_L16632_
                                                         _L16634_
                                                         _L16635_
                                                         _L16636_
                                                         _L16637_
                                                         _L16638_)
                                                  (let ()
                                                    (let* ((_g1666716675_
                                                            (lambda (_g1666816671_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g1666816671_)))
                                                           (_g1666617697_
                                                            (lambda (_g1666816679_)
                                                              ((lambda (_L16682_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g1669516703_
                                   (lambda (_g1669616699_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1669616699_)))
                                  (_g1669417689_
                                   (lambda (_g1669616707_)
                                     ((lambda (_L16710_)
                                        (let ()
                                          (let* ((_g1672316731_
                                                  (lambda (_g1672416727_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1672416727_)))
                                                 (_g1672217681_
                                                  (lambda (_g1672416735_)
                                                    ((lambda (_L16738_)
                                                       (let ()
                                                         (let* ((_g1675116759_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1675216755_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1675216755_)))
                        (_g1675017677_
                         (lambda (_g1675216763_)
                           ((lambda (_L16766_)
                              (let ()
                                (let* ((_g1677916787_
                                        (lambda (_g1678016783_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g1678016783_)))
                                       (_g1677817393_
                                        (lambda (_g1678016791_)
                                          ((lambda (_L16794_)
                                             (let ()
                                               (let* ((_g1680716815_
                                                       (lambda (_g1680816811_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1680816811_)))
                                                      (_g1680617389_
                                                       (lambda (_g1680816819_)
                                                         ((lambda (_L16822_)
                                                            (let ()
                                                              (let* ((_g1683516843_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g1683616839_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1683616839_)))
                             (_g1683417385_
                              (lambda (_g1683616847_)
                                ((lambda (_L16850_)
                                   (let ()
                                     (let* ((_g1686316871_
                                             (lambda (_g1686416867_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1686416867_)))
                                            (_g1686217381_
                                             (lambda (_g1686416875_)
                                               ((lambda (_L16878_)
                                                  (let ()
                                                    (let* ((_attrs16891_
                                                            (if _struct?16398_
                                                                (gx#stx-map
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _slotify16402_
                         _els16531_
                         (iota (gx#stx-length _els16531_)))
                        _els16531_))
                   (_g1689416920_
                    (lambda (_g1689516916_)
                      (gx#raise-syntax-error '#f '"Bad syntax" _g1689516916_)))
                   (_g1689317293_
                    (lambda (_g1689516924_)
                      (if (gx#stx-pair/null? _g1689516924_)
                          (if (fx>= (gx#stx-length _g1689516924_) '0)
                              (let ((_g34592_
                                     (gx#syntax-split-splice
                                      _g1689516924_
                                      '0)))
                                (begin
                                  (let ((_g34593_ (values-count _g34592_)))
                                    (if (not (fx= _g34593_ 2))
                                        (error "Context expects 2 values"
                                               _g34593_)))
                                  (let ((_target1689816927_
                                         (values-ref _g34592_ 0))
                                        (_tl1690016930_
                                         (values-ref _g34592_ 1)))
                                    (if (gx#stx-null? _tl1690016930_)
                                        (letrec ((_loop1690116933_
                                                  (lambda (_hd1689916937_
                                                           _def-setf1690516940_
                                                           _def-getf1690616942_)
                                                    (if (gx#stx-pair?
                                                         _hd1689916937_)
                                                        (let ((_e1690216945_
                                                               (gx#syntax-e
                                                                _hd1689916937_)))
                                                          (let ((_lp-hd1690316949_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1690216945_))
                        (_lp-tl1690416952_ (##cdr _e1690216945_)))
                    (if (gx#stx-pair? _lp-hd1690316949_)
                        (let ((_e1690916955_ (gx#syntax-e _lp-hd1690316949_)))
                          (let ((_hd1691016959_ (##car _e1690916955_))
                                (_tl1691116962_ (##cdr _e1690916955_)))
                            (if (gx#stx-pair? _tl1691116962_)
                                (let ((_e1691216965_
                                       (gx#syntax-e _tl1691116962_)))
                                  (let ((_hd1691316969_ (##car _e1691216965_))
                                        (_tl1691416972_ (##cdr _e1691216965_)))
                                    (if (gx#stx-null? _tl1691416972_)
                                        (_loop1690116933_
                                         _lp-tl1690416952_
                                         (cons _hd1691316969_
                                               _def-setf1690516940_)
                                         (cons _hd1691016959_
                                               _def-getf1690616942_))
                                        (_g1689416920_ _g1689516924_))))
                                (_g1689416920_ _g1689516924_))))
                        (_g1689416920_ _g1689516924_))))
                (let ((_def-setf1690716975_ (reverse _def-setf1690516940_))
                      (_def-getf1690816978_ (reverse _def-getf1690616942_)))
                  ((lambda (_L16981_ _L16983_)
                     (let ()
                       (let* ((_g1700117027_
                               (lambda (_g1700217023_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1700217023_)))
                              (_g1700017141_
                               (lambda (_g1700217031_)
                                 (if (gx#stx-pair/null? _g1700217031_)
                                     (if (fx>= (gx#stx-length _g1700217031_)
                                               '0)
                                         (let ((_g34594_
                                                (gx#syntax-split-splice
                                                 _g1700217031_
                                                 '0)))
                                           (begin
                                             (let ((_g34595_
                                                    (values-count _g34594_)))
                                               (if (not (fx= _g34595_ 2))
                                                   (error "Context expects 2 values"
                                                          _g34595_)))
                                             (let ((_target1700517034_
                                                    (values-ref _g34594_ 0))
                                                   (_tl1700717037_
                                                    (values-ref _g34594_ 1)))
                                               (if (gx#stx-null?
                                                    _tl1700717037_)
                                                   (letrec ((_loop1700817040_
                                                             (lambda (_hd1700617044_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _def-usetf1701217047_
                              _def-ugetf1701317049_)
                       (if (gx#stx-pair? _hd1700617044_)
                           (let ((_e1700917052_ (gx#syntax-e _hd1700617044_)))
                             (let ((_lp-hd1701017056_ (##car _e1700917052_))
                                   (_lp-tl1701117059_ (##cdr _e1700917052_)))
                               (if (gx#stx-pair? _lp-hd1701017056_)
                                   (let ((_e1701617062_
                                          (gx#syntax-e _lp-hd1701017056_)))
                                     (let ((_hd1701717066_
                                            (##car _e1701617062_))
                                           (_tl1701817069_
                                            (##cdr _e1701617062_)))
                                       (if (gx#stx-pair? _tl1701817069_)
                                           (let ((_e1701917072_
                                                  (gx#syntax-e
                                                   _tl1701817069_)))
                                             (let ((_hd1702017076_
                                                    (##car _e1701917072_))
                                                   (_tl1702117079_
                                                    (##cdr _e1701917072_)))
                                               (if (gx#stx-null?
                                                    _tl1702117079_)
                                                   (_loop1700817040_
                                                    _lp-tl1701117059_
                                                    (cons _hd1702017076_
                                                          _def-usetf1701217047_)
                                                    (cons _hd1701717066_
                                                          _def-ugetf1701317049_))
                                                   (_g1700117027_
                                                    _g1700217031_))))
                                           (_g1700117027_ _g1700217031_))))
                                   (_g1700117027_ _g1700217031_))))
                           (let ((_def-usetf1701417082_
                                  (reverse _def-usetf1701217047_))
                                 (_def-ugetf1701517085_
                                  (reverse _def-ugetf1701317049_)))
                             ((lambda (_L17088_ _L17090_)
                                (let ()
                                  (let ()
                                    (_wrap16400_
                                     (cons (gx#datum->syntax '#f 'begin)
                                           (cons _L16822_
                                                 (cons _L16878_
                                                       (cons _L16850_
                                                             (begin
                                                               '#!void
                                                               (foldr (lambda (_g1710817117_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1710917120_)
                                (cons _g1710817117_ _g1710917120_))
                              (begin
                                '#!void
                                (foldr (lambda (_g1711017123_ _g1711117126_)
                                         (cons _g1711017123_ _g1711117126_))
                                       (begin
                                         '#!void
                                         (foldr (lambda (_g1711217129_
                                                         _g1711317132_)
                                                  (cons _g1711217129_
                                                        _g1711317132_))
                                                (begin
                                                  '#!void
                                                  (foldr (lambda (_g1711417135_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1711517138_)
                   (cons _g1711417135_ _g1711517138_))
                 '()
                 _L17088_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _L17090_))
                                       _L16981_))
                              _L16983_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              _def-usetf1701417082_
                              _def-ugetf1701517085_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1700817040_
                                                      _target1700517034_
                                                      '()
                                                      '()))
                                                   (_g1700117027_
                                                    _g1700217031_)))))
                                         (_g1700117027_ _g1700217031_))
                                     (_g1700117027_ _g1700217031_)))))
                         (_g1700017141_
                          (if (gx#stx-e (gx#stx-getq 'unchecked: _L16492_))
                              (gx#stx-map
                               (lambda (_ref17145_)
                                 (let* ((_g1714817167_
                                         (lambda (_g1714917163_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g1714917163_)))
                                        (_g1714717289_
                                         (lambda (_g1714917171_)
                                           (if (gx#stx-pair? _g1714917171_)
                                               (let ((_e1715317174_
                                                      (gx#syntax-e
                                                       _g1714917171_)))
                                                 (let ((_hd1715417178_
                                                        (##car _e1715317174_))
                                                       (_tl1715517181_
                                                        (##cdr _e1715317174_)))
                                                   (if (gx#stx-pair?
                                                        _tl1715517181_)
                                                       (let ((_e1715617184_
                                                              (gx#syntax-e
                                                               _tl1715517181_)))
                                                         (let ((_hd1715717188_
                                                                (##car _e1715617184_))
                                                               (_tl1715817191_
                                                                (##cdr _e1715617184_)))
                                                           (if (gx#stx-pair?
                                                                _tl1715817191_)
                                                               (let ((_e1715917194_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl1715817191_)))
                         (let ((_hd1716017198_ (##car _e1715917194_))
                               (_tl1716117201_ (##cdr _e1715917194_)))
                           (if (gx#stx-null? _tl1716117201_)
                               ((lambda (_L17204_ _L17206_ _L17207_)
                                  (let* ((_g1722517240_
                                          (lambda (_g1722617236_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g1722617236_)))
                                         (_g1722417285_
                                          (lambda (_g1722617244_)
                                            (if (gx#stx-pair? _g1722617244_)
                                                (let ((_e1722917247_
                                                       (gx#syntax-e
                                                        _g1722617244_)))
                                                  (let ((_hd1723017251_
                                                         (##car _e1722917247_))
                                                        (_tl1723117254_
                                                         (##cdr _e1722917247_)))
                                                    (if (gx#stx-pair?
                                                         _tl1723117254_)
                                                        (let ((_e1723217257_
                                                               (gx#syntax-e
                                                                _tl1723117254_)))
                                                          (let ((_hd1723317261_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1723217257_))
                        (_tl1723417264_ (##cdr _e1723217257_)))
                    (if (gx#stx-null? _tl1723417264_)
                        ((lambda (_L17267_ _L17269_)
                           (let ()
                             (cons (_wrap16400_
                                    (cons (gx#datum->syntax '#f 'def)
                                          (cons _L17269_
                                                (cons (cons _L16634_
                                                            (cons _L16497_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _L17207_ '()))
                                '())))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (cons (_wrap16400_
                                          (cons (gx#datum->syntax '#f 'def)
                                                (cons _L17267_
                                                      (cons (cons _L16632_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L16497_
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _L17207_ '()))
                                      '())))
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                         _hd1723317261_
                         _hd1723017251_)
                        (_g1722517240_ _g1722617244_))))
                (_g1722517240_ _g1722617244_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1722517240_
                                                 _g1722617244_)))))
                                    (_g1722417285_
                                     (list (gx#stx-identifier
                                            _L17206_
                                            '"&"
                                            _L17206_)
                                           (gx#stx-identifier
                                            _L17204_
                                            '"&"
                                            _L17204_)))))
                                _hd1716017198_
                                _hd1715717188_
                                _hd1715417178_)
                               (_g1714817167_ _g1714917171_))))
                       (_g1714817167_ _g1714917171_))))
               (_g1714817167_ _g1714917171_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1714817167_
                                                _g1714917171_)))))
                                   (_g1714717289_ _ref17145_)))
                               _attrs16891_)
                              '())))))
                   _def-setf1690716975_
                   _def-getf1690816978_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop1690116933_
                                           _target1689816927_
                                           '()
                                           '()))
                                        (_g1689416920_ _g1689516924_)))))
                              (_g1689416920_ _g1689516924_))
                          (_g1689416920_ _g1689516924_)))))
              (_g1689317293_
               (gx#stx-map
                (lambda (_ref17297_)
                  (let* ((_g1730017319_
                          (lambda (_g1730117315_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1730117315_)))
                         (_g1729917377_
                          (lambda (_g1730117323_)
                            (if (gx#stx-pair? _g1730117323_)
                                (let ((_e1730517326_
                                       (gx#syntax-e _g1730117323_)))
                                  (let ((_hd1730617330_ (##car _e1730517326_))
                                        (_tl1730717333_ (##cdr _e1730517326_)))
                                    (if (gx#stx-pair? _tl1730717333_)
                                        (let ((_e1730817336_
                                               (gx#syntax-e _tl1730717333_)))
                                          (let ((_hd1730917340_
                                                 (##car _e1730817336_))
                                                (_tl1731017343_
                                                 (##cdr _e1730817336_)))
                                            (if (gx#stx-pair? _tl1731017343_)
                                                (let ((_e1731117346_
                                                       (gx#syntax-e
                                                        _tl1731017343_)))
                                                  (let ((_hd1731217350_
                                                         (##car _e1731117346_))
                                                        (_tl1731317353_
                                                         (##cdr _e1731117346_)))
                                                    (if (gx#stx-null?
                                                         _tl1731317353_)
                                                        ((lambda (_L17356_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L17358_
                          _L17359_)
                   (cons (_wrap16400_
                          (cons (gx#datum->syntax '#f 'def)
                                (cons _L17358_
                                      (cons (cons _L16636_
                                                  (cons _L16497_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons _L17359_ '()))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '()))))
                         (cons (_wrap16400_
                                (cons (gx#datum->syntax '#f 'def)
                                      (cons _L17356_
                                            (cons (cons _L16635_
                                                        (cons _L16497_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _L17359_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))
                               '())))
                 _hd1731217350_
                 _hd1730917340_
                 _hd1730617330_)
                (_g1730017319_ _g1730117323_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1730017319_
                                                 _g1730117323_))))
                                        (_g1730017319_ _g1730117323_))))
                                (_g1730017319_ _g1730117323_)))))
                    (_g1729917377_ _ref17297_)))
                _attrs16891_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1686416875_))))
                                       (_g1686217381_
                                        (_wrap16400_
                                         (cons (gx#datum->syntax '#f 'def)
                                               (cons _L16494_
                                                     (cons (cons _L16637_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L16497_ '()))
                   '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _g1683616847_))))
                        (_g1683417385_
                         (if (gx#stx-false? _L16495_)
                             (cons (gx#datum->syntax '#f 'begin) '())
                             (_wrap16400_
                              (cons (gx#datum->syntax '#f 'def)
                                    (cons (cons _L16495_
                                                (gx#datum->syntax '#f '$args))
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'apply)
                                                      (cons _L16638_
                                                            (cons _L16497_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f '$args) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))))))))
                  _g1680816819_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1680617389_
                                                  (_wrap16400_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'def)
                                                         (cons _L16497_
                                                               (cons _L16794_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _g1678016791_))))
                                  (_g1677817393_
                                   (if _struct?16398_
                                       (let* ((_g1739717421_
                                               (lambda (_g1739817417_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1739817417_)))
                                              (_g1739617508_
                                               (lambda (_g1739817425_)
                                                 (if (gx#stx-pair?
                                                      _g1739817425_)
                                                     (let ((_e1740117428_
                                                            (gx#syntax-e
                                                             _g1739817425_)))
                                                       (let ((_hd1740217432_
                                                              (##car _e1740117428_))
                                                             (_tl1740317435_
                                                              (##cdr _e1740117428_)))
                                                         (if (gx#stx-pair?
                                                              _tl1740317435_)
                                                             (let ((_e1740417438_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl1740317435_)))
                       (let ((_hd1740517442_ (##car _e1740417438_))
                             (_tl1740617445_ (##cdr _e1740417438_)))
                         (if (gx#stx-pair/null? _hd1740517442_)
                             (if (fx>= (gx#stx-length _hd1740517442_) '0)
                                 (let ((_g34596_
                                        (gx#syntax-split-splice
                                         _hd1740517442_
                                         '0)))
                                   (begin
                                     (let ((_g34597_ (values-count _g34596_)))
                                       (if (not (fx= _g34597_ 2))
                                           (error "Context expects 2 values"
                                                  _g34597_)))
                                     (let ((_target1740717448_
                                            (values-ref _g34596_ 0))
                                           (_tl1740917451_
                                            (values-ref _g34596_ 1)))
                                       (if (gx#stx-null? _tl1740917451_)
                                           (letrec ((_loop1741017454_
                                                     (lambda (_hd1740817458_
                                                              _field-id1741417461_)
                                                       (if (gx#stx-pair?
                                                            _hd1740817458_)
                                                           (let ((_e1741117464_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd1740817458_)))
                     (let ((_lp-hd1741217468_ (##car _e1741117464_))
                           (_lp-tl1741317471_ (##cdr _e1741117464_)))
                       (_loop1741017454_
                        _lp-tl1741317471_
                        (cons _lp-hd1741217468_ _field-id1741417461_))))
                   (let ((_field-id1741517474_ (reverse _field-id1741417461_)))
                     (if (gx#stx-null? _tl1740617445_)
                         ((lambda (_L17478_ _L17480_)
                            (let ()
                              (cons (gx#datum->syntax '#f 'make-struct-type)
                                    (cons (cons (gx#datum->syntax '#f 'quote)
                                                (cons _L16682_ '()))
                                          (cons _L16496_
                                                (cons _L17480_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons _L16710_ '()))
                    (cons _L16738_
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _L16766_ '()))
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons (begin
                                                    '#!void
                                                    (foldr (lambda (_g1749917502_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1750017505_)
                     (cons _g1749917502_ _g1750017505_))
                   '()
                   _L17478_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          _field-id1741517474_
                          _hd1740217432_)
                         (_g1739717421_ _g1739817425_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop1741017454_
                                              _target1740717448_
                                              '()))
                                           (_g1739717421_ _g1739817425_)))))
                                 (_g1739717421_ _g1739817425_))
                             (_g1739717421_ _g1739817425_))))
                     (_g1739717421_ _g1739817425_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1739717421_
                                                      _g1739817425_)))))
                                         (_g1739617508_
                                          (list (gx#stx-length _els16531_)
                                                (gx#stx-map
                                                 _field-id16403_
                                                 _els16531_))))
                                       (let* ((_g1751217545_
                                               (lambda (_g1751317541_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1751317541_)))
                                              (_g1751117673_
                                               (lambda (_g1751317549_)
                                                 (if (gx#stx-pair?
                                                      _g1751317549_)
                                                     (let ((_e1751617552_
                                                            (gx#syntax-e
                                                             _g1751317549_)))
                                                       (let ((_hd1751717556_
                                                              (##car _e1751617552_))
                                                             (_tl1751817559_
                                                              (##cdr _e1751617552_)))
                                                         (if (gx#stx-pair/null?
                                                              _hd1751717556_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _hd1751717556_)
                               '0)
                         (let ((_g34598_
                                (gx#syntax-split-splice _hd1751717556_ '0)))
                           (begin
                             (let ((_g34599_ (values-count _g34598_)))
                               (if (not (fx= _g34599_ 2))
                                   (error "Context expects 2 values"
                                          _g34599_)))
                             (let ((_target1751917562_ (values-ref _g34598_ 0))
                                   (_tl1752117565_ (values-ref _g34598_ 1)))
                               (if (gx#stx-null? _tl1752117565_)
                                   (letrec ((_loop1752217568_
                                             (lambda (_hd1752017572_
                                                      _super1752617575_)
                                               (if (gx#stx-pair?
                                                    _hd1752017572_)
                                                   (let ((_e1752317578_
                                                          (gx#syntax-e
                                                           _hd1752017572_)))
                                                     (let ((_lp-hd1752417582_
                                                            (##car _e1752317578_))
                                                           (_lp-tl1752517585_
                                                            (##cdr _e1752317578_)))
                                                       (_loop1752217568_
                                                        _lp-tl1752517585_
                                                        (cons _lp-hd1752417582_
                                                              _super1752617575_))))
                                                   (let ((_super1752717588_
                                                          (reverse _super1752617575_)))
                                                     (if (gx#stx-pair?
                                                          _tl1751817559_)
                                                         (let ((_e1752817592_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1751817559_)))
                   (let ((_hd1752917596_ (##car _e1752817592_))
                         (_tl1753017599_ (##cdr _e1752817592_)))
                     (if (gx#stx-pair/null? _hd1752917596_)
                         (if (fx>= (gx#stx-length _hd1752917596_) '0)
                             (let ((_g34600_
                                    (gx#syntax-split-splice
                                     _hd1752917596_
                                     '0)))
                               (begin
                                 (let ((_g34601_ (values-count _g34600_)))
                                   (if (not (fx= _g34601_ 2))
                                       (error "Context expects 2 values"
                                              _g34601_)))
                                 (let ((_target1753117602_
                                        (values-ref _g34600_ 0))
                                       (_tl1753317605_
                                        (values-ref _g34600_ 1)))
                                   (if (gx#stx-null? _tl1753317605_)
                                       (letrec ((_loop1753417608_
                                                 (lambda (_hd1753217612_
                                                          _slot1753817615_)
                                                   (if (gx#stx-pair?
                                                        _hd1753217612_)
                                                       (let ((_e1753517618_
                                                              (gx#syntax-e
                                                               _hd1753217612_)))
                                                         (let ((_lp-hd1753617622_
                                                                (##car _e1753517618_))
                                                               (_lp-tl1753717625_
                                                                (##cdr _e1753517618_)))
                                                           (_loop1753417608_
                                                            _lp-tl1753717625_
                                                            (cons _lp-hd1753617622_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _slot1753817615_))))
               (let ((_slot1753917628_ (reverse _slot1753817615_)))
                 (if (gx#stx-null? _tl1753017599_)
                     ((lambda (_L17632_ _L17634_)
                        (let ()
                          (cons (gx#datum->syntax '#f 'make-class-type)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _L16682_ '()))
                                      (cons (cons (gx#datum->syntax '#f '@list)
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g1765617661_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1765717664_)
                     (cons _g1765617661_ _g1765717664_))
                   '()
                   _L17634_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'quote)
                                                        (cons (begin
                                                                '#!void
                                                                (foldr (lambda (_g1765817667_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g1765917670_)
                                 (cons _g1765817667_ _g1765917670_))
                               '()
                               _L17632_))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'quote)
                                                              (cons _L16710_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _L16738_
                      (cons (cons (gx#datum->syntax '#f 'quote)
                                  (cons _L16766_ '()))
                            '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      _slot1753917628_
                      _super1752717588_)
                     (_g1751217545_ _g1751317549_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop1753417608_
                                          _target1753117602_
                                          '()))
                                       (_g1751217545_ _g1751317549_)))))
                             (_g1751217545_ _g1751317549_))
                         (_g1751217545_ _g1751317549_))))
                 (_g1751217545_ _g1751317549_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop1752217568_ _target1751917562_ '()))
                                   (_g1751217545_ _g1751317549_)))))
                         (_g1751217545_ _g1751317549_))
                     (_g1751217545_ _g1751317549_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1751217545_
                                                      _g1751317549_)))))
                                         (_g1751117673_
                                          (list _L16496_
                                                (gx#stx-map
                                                 gx#stx-car
                                                 _els16531_)))))))))
                            _g1675216763_))))
                   (_g1675017677_ (gx#stx-getq 'constructor: _L16492_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1672416735_))))
                                            (_g1672217681_
                                             (let ((_$e17685_
                                                    (gx#stx-getq
                                                     'plist:
                                                     _L16492_)))
                                               (if _$e17685_
                                                   _$e17685_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '@list)
                                                         '())))))))
                                      _g1669616707_))))
                             (_g1669417689_
                              (let ((_$e17693_ (gx#stx-getq 'name: _L16492_)))
                                (if _$e17693_ _$e17693_ _L16497_))))))
                       _g1666816679_))))
              (_g1666617697_
               (let ((_$e17701_ (gx#stx-getq 'id: _L16492_)))
                 (if _$e17701_
                     _$e17701_
                     (if (gx#module-context? (gx#current-expander-context))
                         (_module-type-id16406_ _L16497_)
                         (gx#genident _L16497_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1655816626_
                                                _hd1655516616_
                                                _hd1655216606_
                                                _hd1654916596_
                                                _hd1654616586_
                                                _hd1654316576_)
                                               (_g1653416565_ _g1653516569_))))
                                       (_g1653416565_ _g1653516569_))))
                               (_g1653416565_ _g1653516569_))))
                       (_g1653416565_ _g1653516569_))))
               (_g1653416565_ _g1653516569_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1653416565_ _g1653516569_))))
                                       (_g1653416565_ _g1653516569_)))))
                           (_g1653317705_
                            (if _struct?16398_
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
                         (_g1640816435_ _g1640916439_)))
                   _tl1642916489_
                   _hd1642816486_
                   _hd1642516476_
                   _hd1642216466_
                   _hd1641916456_)))
              (_g1640816435_ _g1640916439_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1640816435_ _g1640916439_))))
                                      (_g1640816435_ _g1640916439_))))
                              (_g1640816435_ _g1640916439_))))
                      (_g1640816435_ _g1640916439_)))))
          (_g1640717709_ _stx16396_)))))
  (define |gerbil/core$<MOP>$<MOP:1>[:0:]#defstruct-type|
    (lambda (_stx18009_)
      (|gerbil/core$<MOP>$<MOP:1>[1]#generate-typedef| _stx18009_ '#t)))
  (define |gerbil/core$<MOP>$<MOP:1>[:0:]#defclass-type|
    (lambda (_stx18012_)
      (|gerbil/core$<MOP>$<MOP:1>[1]#generate-typedef| _stx18012_ '#f))))
