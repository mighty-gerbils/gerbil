(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 100))
(begin
  (define |gerbil/core$<MOP>$<MOP:1>[1]#generate-typedef|
    (lambda (_stx17235_ _struct?17237_)
      (letrec ((_wrap17239_
                (lambda (_e-stx18840_)
                  (gx#stx-wrap-source
                   _e-stx18840_
                   (gx#stx-source _stx17235_))))
               (_slotify17241_
                (lambda (_field18705_ _off18707_)
                  (let* ((___stx3806738068_ _field18705_)
                         (_g1871018737_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx3806738068_))))
                    (let ((___kont3807038071_
                           (lambda (_L18821_ _L18823_)
                             (cons _off18707_
                                   (cons _L18823_ (cons _L18821_ '())))))
                          (___kont3807238073_
                           (lambda (_L18774_ _L18776_ _L18777_)
                             (cons _off18707_
                                   (cons _L18776_ (cons _L18774_ '()))))))
                      (if (gx#stx-pair? ___stx3806738068_)
                          (let ((_e1871418801_
                                 (gx#syntax-e ___stx3806738068_)))
                            (let ((_tl1871618808_ (##cdr _e1871418801_))
                                  (_hd1871518805_ (##car _e1871418801_)))
                              (if (gx#stx-pair? _tl1871618808_)
                                  (let ((_e1871718811_
                                         (gx#syntax-e _tl1871618808_)))
                                    (let ((_tl1871918818_
                                           (##cdr _e1871718811_))
                                          (_hd1871818815_
                                           (##car _e1871718811_)))
                                      (if (gx#stx-null? _tl1871918818_)
                                          (___kont3807038071_
                                           _hd1871818815_
                                           _hd1871518805_)
                                          (if (gx#stx-pair? _tl1871918818_)
                                              (let ((_e1872918764_
                                                     (gx#syntax-e
                                                      _tl1871918818_)))
                                                (let ((_tl1873118771_
                                                       (##cdr _e1872918764_))
                                                      (_hd1873018768_
                                                       (##car _e1872918764_)))
                                                  (if (gx#stx-null?
                                                       _tl1873118771_)
                                                      (___kont3807238073_
                                                       _hd1873018768_
                                                       _hd1871818815_
                                                       _hd1871518805_)
                                                      (_g1871018737_))))
                                              (_g1871018737_)))))
                                  (_g1871018737_))))
                          (_g1871018737_))))))
               (_field-id17242_
                (lambda (_field18571_)
                  (let* ((___stx3811138112_ _field18571_)
                         (_g1857518602_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx3811138112_))))
                    (let ((___kont3811438115_ (lambda (_L18686_ _L18688_) ':))
                          (___kont3811638117_
                           (lambda (_L18639_ _L18641_ _L18642_) _L18642_)))
                      (if (gx#stx-pair? ___stx3811138112_)
                          (let ((_e1857918666_
                                 (gx#syntax-e ___stx3811138112_)))
                            (let ((_tl1858118673_ (##cdr _e1857918666_))
                                  (_hd1858018670_ (##car _e1857918666_)))
                              (if (gx#stx-pair? _tl1858118673_)
                                  (let ((_e1858218676_
                                         (gx#syntax-e _tl1858118673_)))
                                    (let ((_tl1858418683_
                                           (##cdr _e1858218676_))
                                          (_hd1858318680_
                                           (##car _e1858218676_)))
                                      (if (gx#stx-null? _tl1858418683_)
                                          (___kont3811438115_
                                           _hd1858318680_
                                           _hd1858018670_)
                                          (if (gx#stx-pair? _tl1858418683_)
                                              (let ((_e1859418629_
                                                     (gx#syntax-e
                                                      _tl1858418683_)))
                                                (let ((_tl1859618636_
                                                       (##cdr _e1859418629_))
                                                      (_hd1859518633_
                                                       (##car _e1859418629_)))
                                                  (if (gx#stx-null?
                                                       _tl1859618636_)
                                                      (___kont3811638117_
                                                       _hd1859518633_
                                                       _hd1858318680_
                                                       _hd1858018670_)
                                                      (_g1857518602_))))
                                              (_g1857518602_)))))
                                  (_g1857518602_))))
                          (_g1857518602_))))))
               (_struct-opt?17243_
                (lambda (_key18568_)
                  (memq (gx#stx-e _key18568_)
                        '(fields: id: name: plist: constructor: unchecked:))))
               (_class-opt?17244_
                (lambda (_key18565_)
                  (memq (gx#stx-e _key18565_)
                        '(slots: id: name: plist: constructor: unchecked:))))
               (_module-type-id17245_
                (lambda (_type-t18552_)
                  (let ((_$e18555_
                         (gx#module-context-ns (gx#current-expander-context))))
                    (if _$e18555_
                        ((lambda (_ns18559_)
                           (gx#stx-identifier
                            _type-t18552_
                            _ns18559_
                            '"#"
                            _type-t18552_))
                         _$e18555_)
                        (let ((_mid18562_
                               (gx#expander-context-id
                                (gx#current-expander-context))))
                          (gx#stx-identifier
                           _type-t18552_
                           _mid18562_
                           '"#"
                           _type-t18552_)))))))
        (let* ((_g1724717274_
                (lambda (_g1724817270_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1724817270_)))
               (_g1724618548_
                (lambda (_g1724817278_)
                  (if (gx#stx-pair? _g1724817278_)
                      (let ((_e1725417281_ (gx#syntax-e _g1724817278_)))
                        (let ((_hd1725517285_ (##car _e1725417281_))
                              (_tl1725617288_ (##cdr _e1725417281_)))
                          (if (gx#stx-pair? _tl1725617288_)
                              (let ((_e1725717291_
                                     (gx#syntax-e _tl1725617288_)))
                                (let ((_hd1725817295_ (##car _e1725717291_))
                                      (_tl1725917298_ (##cdr _e1725717291_)))
                                  (if (gx#stx-pair? _tl1725917298_)
                                      (let ((_e1726017301_
                                             (gx#syntax-e _tl1725917298_)))
                                        (let ((_hd1726117305_
                                               (##car _e1726017301_))
                                              (_tl1726217308_
                                               (##cdr _e1726017301_)))
                                          (if (gx#stx-pair? _tl1726217308_)
                                              (let ((_e1726317311_
                                                     (gx#syntax-e
                                                      _tl1726217308_)))
                                                (let ((_hd1726417315_
                                                       (##car _e1726317311_))
                                                      (_tl1726517318_
                                                       (##cdr _e1726317311_)))
                                                  (if (gx#stx-pair?
                                                       _tl1726517318_)
                                                      (let ((_e1726617321_
                                                             (gx#syntax-e
                                                              _tl1726517318_)))
                                                        (let ((_hd1726717325_
                                                               (##car _e1726617321_))
                                                              (_tl1726817328_
                                                               (##cdr _e1726617321_)))
                                                          ((lambda (_L17331_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L17333_
                            _L17334_
                            _L17335_
                            _L17336_)
                     (if (if (gx#identifier? _L17336_)
                             (if (if (gx#identifier? _L17334_)
                                     '#t
                                     (gx#stx-false? _L17334_))
                                 (if (gx#identifier? _L17333_)
                                     (gx#stx-plist?
                                      _L17331_
                                      (if _struct?17237_
                                          _struct-opt?17243_
                                          _class-opt?17244_))
                                     '#f)
                                 '#f)
                             '#f)
                         (let* ((_els17370_
                                 (let ((_$e17366_
                                        (gx#stx-getq
                                         (if _struct?17237_ 'fields: 'slots:)
                                         _L17331_)))
                                   (if _$e17366_ _$e17366_ '())))
                                (_g1737317404_
                                 (lambda (_g1737417400_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1737417400_)))
                                (_g1737218544_
                                 (lambda (_g1737417408_)
                                   (if (gx#stx-pair? _g1737417408_)
                                       (let ((_e1738117411_
                                              (gx#syntax-e _g1737417408_)))
                                         (let ((_hd1738217415_
                                                (##car _e1738117411_))
                                               (_tl1738317418_
                                                (##cdr _e1738117411_)))
                                           (if (gx#stx-pair? _tl1738317418_)
                                               (let ((_e1738417421_
                                                      (gx#syntax-e
                                                       _tl1738317418_)))
                                                 (let ((_hd1738517425_
                                                        (##car _e1738417421_))
                                                       (_tl1738617428_
                                                        (##cdr _e1738417421_)))
                                                   (if (gx#stx-pair?
                                                        _tl1738617428_)
                                                       (let ((_e1738717431_
                                                              (gx#syntax-e
                                                               _tl1738617428_)))
                                                         (let ((_hd1738817435_
                                                                (##car _e1738717431_))
                                                               (_tl1738917438_
                                                                (##cdr _e1738717431_)))
                                                           (if (gx#stx-pair?
                                                                _tl1738917438_)
                                                               (let ((_e1739017441_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl1738917438_)))
                         (let ((_hd1739117445_ (##car _e1739017441_))
                               (_tl1739217448_ (##cdr _e1739017441_)))
                           (if (gx#stx-pair? _tl1739217448_)
                               (let ((_e1739317451_
                                      (gx#syntax-e _tl1739217448_)))
                                 (let ((_hd1739417455_ (##car _e1739317451_))
                                       (_tl1739517458_ (##cdr _e1739317451_)))
                                   (if (gx#stx-pair? _tl1739517458_)
                                       (let ((_e1739617461_
                                              (gx#syntax-e _tl1739517458_)))
                                         (let ((_hd1739717465_
                                                (##car _e1739617461_))
                                               (_tl1739817468_
                                                (##cdr _e1739617461_)))
                                           (if (gx#stx-null? _tl1739817468_)
                                               ((lambda (_L17471_
                                                         _L17473_
                                                         _L17474_
                                                         _L17475_
                                                         _L17476_
                                                         _L17477_)
                                                  (let ()
                                                    (let* ((_g1750617514_
                                                            (lambda (_g1750717510_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g1750717510_)))
                                                           (_g1750518536_
                                                            (lambda (_g1750717518_)
                                                              ((lambda (_L17521_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g1753417542_
                                   (lambda (_g1753517538_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1753517538_)))
                                  (_g1753318528_
                                   (lambda (_g1753517546_)
                                     ((lambda (_L17549_)
                                        (let ()
                                          (let* ((_g1756217570_
                                                  (lambda (_g1756317566_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1756317566_)))
                                                 (_g1756118520_
                                                  (lambda (_g1756317574_)
                                                    ((lambda (_L17577_)
                                                       (let ()
                                                         (let* ((_g1759017598_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1759117594_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1759117594_)))
                        (_g1758918516_
                         (lambda (_g1759117602_)
                           ((lambda (_L17605_)
                              (let ()
                                (let* ((_g1761817626_
                                        (lambda (_g1761917622_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g1761917622_)))
                                       (_g1761718232_
                                        (lambda (_g1761917630_)
                                          ((lambda (_L17633_)
                                             (let ()
                                               (let* ((_g1764617654_
                                                       (lambda (_g1764717650_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1764717650_)))
                                                      (_g1764518228_
                                                       (lambda (_g1764717658_)
                                                         ((lambda (_L17661_)
                                                            (let ()
                                                              (let* ((_g1767417682_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g1767517678_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1767517678_)))
                             (_g1767318224_
                              (lambda (_g1767517686_)
                                ((lambda (_L17689_)
                                   (let ()
                                     (let* ((_g1770217710_
                                             (lambda (_g1770317706_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1770317706_)))
                                            (_g1770118220_
                                             (lambda (_g1770317714_)
                                               ((lambda (_L17717_)
                                                  (let ()
                                                    (let* ((_attrs17730_
                                                            (if _struct?17237_
                                                                (gx#stx-map
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _slotify17241_
                         _els17370_
                         (iota (gx#stx-length _els17370_)))
                        _els17370_))
                   (_g1773317759_
                    (lambda (_g1773417755_)
                      (gx#raise-syntax-error '#f '"Bad syntax" _g1773417755_)))
                   (_g1773218132_
                    (lambda (_g1773417763_)
                      (if (gx#stx-pair/null? _g1773417763_)
                          (let ((_g41201_
                                 (gx#syntax-split-splice _g1773417763_ '0)))
                            (begin
                              (let ((_g41202_
                                     (if (##values? _g41201_)
                                         (##vector-length _g41201_)
                                         1)))
                                (if (not (##fx= _g41202_ 2))
                                    (error "Context expects 2 values"
                                           _g41202_)))
                              (let ((_target1773717766_
                                     (##vector-ref _g41201_ 0))
                                    (_tl1773917769_ (##vector-ref _g41201_ 1)))
                                (if (gx#stx-null? _tl1773917769_)
                                    (letrec ((_loop1774017772_
                                              (lambda (_hd1773817776_
                                                       _def-setf1774417779_
                                                       _def-getf1774517781_)
                                                (if (gx#stx-pair?
                                                     _hd1773817776_)
                                                    (let ((_e1774117784_
                                                           (gx#syntax-e
                                                            _hd1773817776_)))
                                                      (let ((_lp-hd1774217788_
                                                             (##car _e1774117784_))
                                                            (_lp-tl1774317791_
                                                             (##cdr _e1774117784_)))
                                                        (if (gx#stx-pair?
                                                             _lp-hd1774217788_)
                                                            (let ((_e1774817794_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _lp-hd1774217788_)))
                      (let ((_hd1774917798_ (##car _e1774817794_))
                            (_tl1775017801_ (##cdr _e1774817794_)))
                        (if (gx#stx-pair? _tl1775017801_)
                            (let ((_e1775117804_ (gx#syntax-e _tl1775017801_)))
                              (let ((_hd1775217808_ (##car _e1775117804_))
                                    (_tl1775317811_ (##cdr _e1775117804_)))
                                (if (gx#stx-null? _tl1775317811_)
                                    (_loop1774017772_
                                     _lp-tl1774317791_
                                     (cons _hd1775217808_ _def-setf1774417779_)
                                     (cons _hd1774917798_
                                           _def-getf1774517781_))
                                    (_g1773317759_ _g1773417763_))))
                            (_g1773317759_ _g1773417763_))))
                    (_g1773317759_ _g1773417763_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_def-setf1774617814_
                                                           (reverse _def-setf1774417779_))
                                                          (_def-getf1774717817_
                                                           (reverse _def-getf1774517781_)))
                                                      ((lambda (_L17820_
                                                                _L17822_)
                                                         (let ()
                                                           (let* ((_g1784017866_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g1784117862_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1784117862_)))
                          (_g1783917980_
                           (lambda (_g1784117870_)
                             (if (gx#stx-pair/null? _g1784117870_)
                                 (let ((_g41203_
                                        (gx#syntax-split-splice
                                         _g1784117870_
                                         '0)))
                                   (begin
                                     (let ((_g41204_
                                            (if (##values? _g41203_)
                                                (##vector-length _g41203_)
                                                1)))
                                       (if (not (##fx= _g41204_ 2))
                                           (error "Context expects 2 values"
                                                  _g41204_)))
                                     (let ((_target1784417873_
                                            (##vector-ref _g41203_ 0))
                                           (_tl1784617876_
                                            (##vector-ref _g41203_ 1)))
                                       (if (gx#stx-null? _tl1784617876_)
                                           (letrec ((_loop1784717879_
                                                     (lambda (_hd1784517883_
                                                              _def-usetf1785117886_
                                                              _def-ugetf1785217888_)
                                                       (if (gx#stx-pair?
                                                            _hd1784517883_)
                                                           (let ((_e1784817891_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd1784517883_)))
                     (let ((_lp-hd1784917895_ (##car _e1784817891_))
                           (_lp-tl1785017898_ (##cdr _e1784817891_)))
                       (if (gx#stx-pair? _lp-hd1784917895_)
                           (let ((_e1785517901_
                                  (gx#syntax-e _lp-hd1784917895_)))
                             (let ((_hd1785617905_ (##car _e1785517901_))
                                   (_tl1785717908_ (##cdr _e1785517901_)))
                               (if (gx#stx-pair? _tl1785717908_)
                                   (let ((_e1785817911_
                                          (gx#syntax-e _tl1785717908_)))
                                     (let ((_hd1785917915_
                                            (##car _e1785817911_))
                                           (_tl1786017918_
                                            (##cdr _e1785817911_)))
                                       (if (gx#stx-null? _tl1786017918_)
                                           (_loop1784717879_
                                            _lp-tl1785017898_
                                            (cons _hd1785917915_
                                                  _def-usetf1785117886_)
                                            (cons _hd1785617905_
                                                  _def-ugetf1785217888_))
                                           (_g1784017866_ _g1784117870_))))
                                   (_g1784017866_ _g1784117870_))))
                           (_g1784017866_ _g1784117870_))))
                   (let ((_def-usetf1785317921_
                          (reverse _def-usetf1785117886_))
                         (_def-ugetf1785417924_
                          (reverse _def-ugetf1785217888_)))
                     ((lambda (_L17927_ _L17929_)
                        (let ()
                          (let ()
                            (_wrap17239_
                             (cons (gx#datum->syntax '#f 'begin)
                                   (cons _L17661_
                                         (cons _L17717_
                                               (cons _L17689_
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g1794717956_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1794817959_)
                        (cons _g1794717956_ _g1794817959_))
                      (begin
                        '#!void
                        (foldr (lambda (_g1794917962_ _g1795017965_)
                                 (cons _g1794917962_ _g1795017965_))
                               (begin
                                 '#!void
                                 (foldr (lambda (_g1795117968_ _g1795217971_)
                                          (cons _g1795117968_ _g1795217971_))
                                        (begin
                                          '#!void
                                          (foldr (lambda (_g1795317974_
                                                          _g1795417977_)
                                                   (cons _g1795317974_
                                                         _g1795417977_))
                                                 '()
                                                 _L17927_))
                                        _L17929_))
                               _L17820_))
                      _L17822_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      _def-usetf1785317921_
                      _def-ugetf1785417924_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop1784717879_
                                              _target1784417873_
                                              '()
                                              '()))
                                           (_g1784017866_ _g1784117870_)))))
                                 (_g1784017866_ _g1784117870_)))))
                     (_g1783917980_
                      (if (gx#stx-e (gx#stx-getq 'unchecked: _L17331_))
                          (gx#stx-map
                           (lambda (_ref17984_)
                             (let* ((_g1798718006_
                                     (lambda (_g1798818002_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1798818002_)))
                                    (_g1798618128_
                                     (lambda (_g1798818010_)
                                       (if (gx#stx-pair? _g1798818010_)
                                           (let ((_e1799218013_
                                                  (gx#syntax-e _g1798818010_)))
                                             (let ((_hd1799318017_
                                                    (##car _e1799218013_))
                                                   (_tl1799418020_
                                                    (##cdr _e1799218013_)))
                                               (if (gx#stx-pair?
                                                    _tl1799418020_)
                                                   (let ((_e1799518023_
                                                          (gx#syntax-e
                                                           _tl1799418020_)))
                                                     (let ((_hd1799618027_
                                                            (##car _e1799518023_))
                                                           (_tl1799718030_
                                                            (##cdr _e1799518023_)))
                                                       (if (gx#stx-pair?
                                                            _tl1799718030_)
                                                           (let ((_e1799818033_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl1799718030_)))
                     (let ((_hd1799918037_ (##car _e1799818033_))
                           (_tl1800018040_ (##cdr _e1799818033_)))
                       (if (gx#stx-null? _tl1800018040_)
                           ((lambda (_L18043_ _L18045_ _L18046_)
                              (let* ((_g1806418079_
                                      (lambda (_g1806518075_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g1806518075_)))
                                     (_g1806318124_
                                      (lambda (_g1806518083_)
                                        (if (gx#stx-pair? _g1806518083_)
                                            (let ((_e1806818086_
                                                   (gx#syntax-e
                                                    _g1806518083_)))
                                              (let ((_hd1806918090_
                                                     (##car _e1806818086_))
                                                    (_tl1807018093_
                                                     (##cdr _e1806818086_)))
                                                (if (gx#stx-pair?
                                                     _tl1807018093_)
                                                    (let ((_e1807118096_
                                                           (gx#syntax-e
                                                            _tl1807018093_)))
                                                      (let ((_hd1807218100_
                                                             (##car _e1807118096_))
                                                            (_tl1807318103_
                                                             (##cdr _e1807118096_)))
                                                        (if (gx#stx-null?
                                                             _tl1807318103_)
                                                            ((lambda (_L18106_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L18108_)
                       (let ()
                         (cons (_wrap17239_
                                (cons (gx#datum->syntax '#f 'def)
                                      (cons _L18108_
                                            (cons (cons _L17473_
                                                        (cons _L17336_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _L18046_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))
                               (cons (_wrap17239_
                                      (cons (gx#datum->syntax '#f 'def)
                                            (cons _L18106_
                                                  (cons (cons _L17471_
                                                              (cons _L17336_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f 'quote)
                                        (cons _L18046_ '()))
                                  '())))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))
                     _hd1807218100_
                     _hd1806918090_)
                    (_g1806418079_ _g1806518083_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1806418079_
                                                     _g1806518083_))))
                                            (_g1806418079_ _g1806518083_)))))
                                (_g1806318124_
                                 (list (gx#stx-identifier
                                        _L18045_
                                        '"&"
                                        _L18045_)
                                       (gx#stx-identifier
                                        _L18043_
                                        '"&"
                                        _L18043_)))))
                            _hd1799918037_
                            _hd1799618027_
                            _hd1799318017_)
                           (_g1798718006_ _g1798818010_))))
                   (_g1798718006_ _g1798818010_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1798718006_
                                                    _g1798818010_))))
                                           (_g1798718006_ _g1798818010_)))))
                               (_g1798618128_ _ref17984_)))
                           _attrs17730_)
                          '())))))
               _def-setf1774617814_
               _def-getf1774717817_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop1774017772_
                                       _target1773717766_
                                       '()
                                       '()))
                                    (_g1773317759_ _g1773417763_)))))
                          (_g1773317759_ _g1773417763_)))))
              (_g1773218132_
               (gx#stx-map
                (lambda (_ref18136_)
                  (let* ((_g1813918158_
                          (lambda (_g1814018154_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1814018154_)))
                         (_g1813818216_
                          (lambda (_g1814018162_)
                            (if (gx#stx-pair? _g1814018162_)
                                (let ((_e1814418165_
                                       (gx#syntax-e _g1814018162_)))
                                  (let ((_hd1814518169_ (##car _e1814418165_))
                                        (_tl1814618172_ (##cdr _e1814418165_)))
                                    (if (gx#stx-pair? _tl1814618172_)
                                        (let ((_e1814718175_
                                               (gx#syntax-e _tl1814618172_)))
                                          (let ((_hd1814818179_
                                                 (##car _e1814718175_))
                                                (_tl1814918182_
                                                 (##cdr _e1814718175_)))
                                            (if (gx#stx-pair? _tl1814918182_)
                                                (let ((_e1815018185_
                                                       (gx#syntax-e
                                                        _tl1814918182_)))
                                                  (let ((_hd1815118189_
                                                         (##car _e1815018185_))
                                                        (_tl1815218192_
                                                         (##cdr _e1815018185_)))
                                                    (if (gx#stx-null?
                                                         _tl1815218192_)
                                                        ((lambda (_L18195_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L18197_
                          _L18198_)
                   (cons (_wrap17239_
                          (cons (gx#datum->syntax '#f 'def)
                                (cons _L18197_
                                      (cons (cons _L17475_
                                                  (cons _L17336_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons _L18198_ '()))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '()))))
                         (cons (_wrap17239_
                                (cons (gx#datum->syntax '#f 'def)
                                      (cons _L18195_
                                            (cons (cons _L17474_
                                                        (cons _L17336_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _L18198_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))
                               '())))
                 _hd1815118189_
                 _hd1814818179_
                 _hd1814518169_)
                (_g1813918158_ _g1814018162_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1813918158_
                                                 _g1814018162_))))
                                        (_g1813918158_ _g1814018162_))))
                                (_g1813918158_ _g1814018162_)))))
                    (_g1813818216_ _ref18136_)))
                _attrs17730_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1770317714_))))
                                       (_g1770118220_
                                        (_wrap17239_
                                         (cons (gx#datum->syntax '#f 'def)
                                               (cons _L17333_
                                                     (cons (cons _L17476_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L17336_ '()))
                   '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _g1767517686_))))
                        (_g1767318224_
                         (if (gx#stx-false? _L17334_)
                             (cons (gx#datum->syntax '#f 'begin) '())
                             (_wrap17239_
                              (cons (gx#datum->syntax '#f 'def)
                                    (cons (cons _L17334_
                                                (gx#datum->syntax '#f '$args))
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'apply)
                                                      (cons _L17477_
                                                            (cons _L17336_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f '$args) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))))))))
                  _g1764717658_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1764518228_
                                                  (_wrap17239_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'def)
                                                         (cons _L17336_
                                                               (cons _L17633_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _g1761917630_))))
                                  (_g1761718232_
                                   (if _struct?17237_
                                       (let* ((_g1823618260_
                                               (lambda (_g1823718256_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1823718256_)))
                                              (_g1823518347_
                                               (lambda (_g1823718264_)
                                                 (if (gx#stx-pair?
                                                      _g1823718264_)
                                                     (let ((_e1824018267_
                                                            (gx#syntax-e
                                                             _g1823718264_)))
                                                       (let ((_hd1824118271_
                                                              (##car _e1824018267_))
                                                             (_tl1824218274_
                                                              (##cdr _e1824018267_)))
                                                         (if (gx#stx-pair?
                                                              _tl1824218274_)
                                                             (let ((_e1824318277_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl1824218274_)))
                       (let ((_hd1824418281_ (##car _e1824318277_))
                             (_tl1824518284_ (##cdr _e1824318277_)))
                         (if (gx#stx-pair/null? _hd1824418281_)
                             (let ((_g41209_
                                    (gx#syntax-split-splice
                                     _hd1824418281_
                                     '0)))
                               (begin
                                 (let ((_g41210_
                                        (if (##values? _g41209_)
                                            (##vector-length _g41209_)
                                            1)))
                                   (if (not (##fx= _g41210_ 2))
                                       (error "Context expects 2 values"
                                              _g41210_)))
                                 (let ((_target1824618287_
                                        (##vector-ref _g41209_ 0))
                                       (_tl1824818290_
                                        (##vector-ref _g41209_ 1)))
                                   (if (gx#stx-null? _tl1824818290_)
                                       (letrec ((_loop1824918293_
                                                 (lambda (_hd1824718297_
                                                          _field-id1825318300_)
                                                   (if (gx#stx-pair?
                                                        _hd1824718297_)
                                                       (let ((_e1825018303_
                                                              (gx#syntax-e
                                                               _hd1824718297_)))
                                                         (let ((_lp-hd1825118307_
                                                                (##car _e1825018303_))
                                                               (_lp-tl1825218310_
                                                                (##cdr _e1825018303_)))
                                                           (_loop1824918293_
                                                            _lp-tl1825218310_
                                                            (cons _lp-hd1825118307_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _field-id1825318300_))))
               (let ((_field-id1825418313_ (reverse _field-id1825318300_)))
                 (if (gx#stx-null? _tl1824518284_)
                     ((lambda (_L18317_ _L18319_)
                        (let ()
                          (cons (gx#datum->syntax '#f 'make-struct-type)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _L17521_ '()))
                                      (cons _L17335_
                                            (cons _L18319_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'quote)
                                                              (cons _L17549_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _L17577_
                      (cons (cons (gx#datum->syntax '#f 'quote)
                                  (cons _L17605_ '()))
                            (cons (cons (gx#datum->syntax '#f 'quote)
                                        (cons (begin
                                                '#!void
                                                (foldr (lambda (_g1833818341_
                                                                _g1833918344_)
                                                         (cons _g1833818341_
                                                               _g1833918344_))
                                                       '()
                                                       _L18317_))
                                              '()))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      _field-id1825418313_
                      _hd1824118271_)
                     (_g1823618260_ _g1823718264_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop1824918293_
                                          _target1824618287_
                                          '()))
                                       (_g1823618260_ _g1823718264_)))))
                             (_g1823618260_ _g1823718264_))))
                     (_g1823618260_ _g1823718264_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1823618260_
                                                      _g1823718264_)))))
                                         (_g1823518347_
                                          (list (gx#stx-length _els17370_)
                                                (gx#stx-map
                                                 _field-id17242_
                                                 _els17370_))))
                                       (let* ((_g1835118384_
                                               (lambda (_g1835218380_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1835218380_)))
                                              (_g1835018512_
                                               (lambda (_g1835218388_)
                                                 (if (gx#stx-pair?
                                                      _g1835218388_)
                                                     (let ((_e1835518391_
                                                            (gx#syntax-e
                                                             _g1835218388_)))
                                                       (let ((_hd1835618395_
                                                              (##car _e1835518391_))
                                                             (_tl1835718398_
                                                              (##cdr _e1835518391_)))
                                                         (if (gx#stx-pair/null?
                                                              _hd1835618395_)
                                                             (let ((_g41205_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _hd1835618395_ '0)))
                       (begin
                         (let ((_g41206_
                                (if (##values? _g41205_)
                                    (##vector-length _g41205_)
                                    1)))
                           (if (not (##fx= _g41206_ 2))
                               (error "Context expects 2 values" _g41206_)))
                         (let ((_target1835818401_ (##vector-ref _g41205_ 0))
                               (_tl1836018404_ (##vector-ref _g41205_ 1)))
                           (if (gx#stx-null? _tl1836018404_)
                               (letrec ((_loop1836118407_
                                         (lambda (_hd1835918411_
                                                  _super1836518414_)
                                           (if (gx#stx-pair? _hd1835918411_)
                                               (let ((_e1836218417_
                                                      (gx#syntax-e
                                                       _hd1835918411_)))
                                                 (let ((_lp-hd1836318421_
                                                        (##car _e1836218417_))
                                                       (_lp-tl1836418424_
                                                        (##cdr _e1836218417_)))
                                                   (_loop1836118407_
                                                    _lp-tl1836418424_
                                                    (cons _lp-hd1836318421_
                                                          _super1836518414_))))
                                               (let ((_super1836618427_
                                                      (reverse _super1836518414_)))
                                                 (if (gx#stx-pair?
                                                      _tl1835718398_)
                                                     (let ((_e1836718431_
                                                            (gx#syntax-e
                                                             _tl1835718398_)))
                                                       (let ((_hd1836818435_
                                                              (##car _e1836718431_))
                                                             (_tl1836918438_
                                                              (##cdr _e1836718431_)))
                                                         (if (gx#stx-pair/null?
                                                              _hd1836818435_)
                                                             (let ((_g41207_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _hd1836818435_ '0)))
                       (begin
                         (let ((_g41208_
                                (if (##values? _g41207_)
                                    (##vector-length _g41207_)
                                    1)))
                           (if (not (##fx= _g41208_ 2))
                               (error "Context expects 2 values" _g41208_)))
                         (let ((_target1837018441_ (##vector-ref _g41207_ 0))
                               (_tl1837218444_ (##vector-ref _g41207_ 1)))
                           (if (gx#stx-null? _tl1837218444_)
                               (letrec ((_loop1837318447_
                                         (lambda (_hd1837118451_
                                                  _slot1837718454_)
                                           (if (gx#stx-pair? _hd1837118451_)
                                               (let ((_e1837418457_
                                                      (gx#syntax-e
                                                       _hd1837118451_)))
                                                 (let ((_lp-hd1837518461_
                                                        (##car _e1837418457_))
                                                       (_lp-tl1837618464_
                                                        (##cdr _e1837418457_)))
                                                   (_loop1837318447_
                                                    _lp-tl1837618464_
                                                    (cons _lp-hd1837518461_
                                                          _slot1837718454_))))
                                               (let ((_slot1837818467_
                                                      (reverse _slot1837718454_)))
                                                 (if (gx#stx-null?
                                                      _tl1836918438_)
                                                     ((lambda (_L18471_
                                                               _L18473_)
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'make-class-type)
                        (cons (cons (gx#datum->syntax '#f 'quote)
                                    (cons _L17521_ '()))
                              (cons (cons (gx#datum->syntax '#f '@list)
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g1849518500_
                                                            _g1849618503_)
                                                     (cons _g1849518500_
                                                           _g1849618503_))
                                                   '()
                                                   _L18473_)))
                                    (cons (cons (gx#datum->syntax '#f 'quote)
                                                (cons (begin
                                                        '#!void
                                                        (foldr (lambda (_g1849718506_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1849818509_)
                         (cons _g1849718506_ _g1849818509_))
                       '()
                       _L18471_))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons _L17549_ '()))
                                                (cons _L17577_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons _L17605_ '()))
                    '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              _slot1837818467_
              _super1836618427_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1835118384_
                                                      _g1835218388_)))))))
                                 (_loop1837318447_ _target1837018441_ '()))
                               (_g1835118384_ _g1835218388_)))))
                     (_g1835118384_ _g1835218388_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1835118384_
                                                      _g1835218388_)))))))
                                 (_loop1836118407_ _target1835818401_ '()))
                               (_g1835118384_ _g1835218388_)))))
                     (_g1835118384_ _g1835218388_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1835118384_
                                                      _g1835218388_)))))
                                         (_g1835018512_
                                          (list _L17335_
                                                (gx#stx-map
                                                 gx#stx-car
                                                 _els17370_)))))))))
                            _g1759117602_))))
                   (_g1758918516_ (gx#stx-getq 'constructor: _L17331_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1756317574_))))
                                            (_g1756118520_
                                             (let ((_$e18524_
                                                    (gx#stx-getq
                                                     'plist:
                                                     _L17331_)))
                                               (if _$e18524_
                                                   _$e18524_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '@list)
                                                         '())))))))
                                      _g1753517546_))))
                             (_g1753318528_
                              (let ((_$e18532_ (gx#stx-getq 'name: _L17331_)))
                                (if _$e18532_ _$e18532_ _L17336_))))))
                       _g1750717518_))))
              (_g1750518536_
               (let ((_$e18540_ (gx#stx-getq 'id: _L17331_)))
                 (if _$e18540_
                     _$e18540_
                     (if (gx#module-context? (gx#current-expander-context))
                         (_module-type-id17245_ _L17336_)
                         (gx#genident _L17336_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1739717465_
                                                _hd1739417455_
                                                _hd1739117445_
                                                _hd1738817435_
                                                _hd1738517425_
                                                _hd1738217415_)
                                               (_g1737317404_ _g1737417408_))))
                                       (_g1737317404_ _g1737417408_))))
                               (_g1737317404_ _g1737417408_))))
                       (_g1737317404_ _g1737417408_))))
               (_g1737317404_ _g1737417408_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1737317404_ _g1737417408_))))
                                       (_g1737317404_ _g1737417408_)))))
                           (_g1737218544_
                            (if _struct?17237_
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
                         (_g1724717274_ _g1724817278_)))
                   _tl1726817328_
                   _hd1726717325_
                   _hd1726417315_
                   _hd1726117305_
                   _hd1725817295_)))
              (_g1724717274_ _g1724817278_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1724717274_ _g1724817278_))))
                                      (_g1724717274_ _g1724817278_))))
                              (_g1724717274_ _g1724817278_))))
                      (_g1724717274_ _g1724817278_)))))
          (_g1724618548_ _stx17235_)))))
  (define |gerbil/core$<MOP>$<MOP:1>[:0:]#defstruct-type|
    (lambda (_stx18848_)
      (|gerbil/core$<MOP>$<MOP:1>[1]#generate-typedef| _stx18848_ '#t)))
  (define |gerbil/core$<MOP>$<MOP:1>[:0:]#defclass-type|
    (lambda (_stx18851_)
      (|gerbil/core$<MOP>$<MOP:1>[1]#generate-typedef| _stx18851_ '#f))))
