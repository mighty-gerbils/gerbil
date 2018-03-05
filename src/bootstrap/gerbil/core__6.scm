(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<MOP>$<MOP:1>[1]#generate-typedef|
    (lambda (_stx16591_ _struct?16593_)
      (letrec ((_wrap16595_
                (lambda (_e-stx18196_)
                  (gx#stx-wrap-source
                   _e-stx18196_
                   (gx#stx-source _stx16591_))))
               (_slotify16597_
                (lambda (_field18061_ _off18063_)
                  (let* ((_g1806618093_
                          (lambda (_g1806718089_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1806718089_)))
                         (_g1806518150_
                          (lambda (_g1806718097_)
                            (if (gx#stx-pair? _g1806718097_)
                                (let ((_e1807918100_
                                       (gx#syntax-e _g1806718097_)))
                                  (let ((_hd1808018104_ (##car _e1807918100_))
                                        (_tl1808118107_ (##cdr _e1807918100_)))
                                    (if (gx#stx-pair? _tl1808118107_)
                                        (let ((_e1808218110_
                                               (gx#syntax-e _tl1808118107_)))
                                          (let ((_hd1808318114_
                                                 (##car _e1808218110_))
                                                (_tl1808418117_
                                                 (##cdr _e1808218110_)))
                                            (if (gx#stx-pair? _tl1808418117_)
                                                (let ((_e1808518120_
                                                       (gx#syntax-e
                                                        _tl1808418117_)))
                                                  (let ((_hd1808618124_
                                                         (##car _e1808518120_))
                                                        (_tl1808718127_
                                                         (##cdr _e1808518120_)))
                                                    (if (gx#stx-null?
                                                         _tl1808718127_)
                                                        ((lambda (_L18130_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L18132_
                          _L18133_)
                   (cons _off18063_ (cons _L18132_ (cons _L18130_ '()))))
                 _hd1808618124_
                 _hd1808318114_
                 _hd1808018104_)
                (_g1806618093_ _g1806718097_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1806618093_
                                                 _g1806718097_))))
                                        (_g1806618093_ _g1806718097_))))
                                (_g1806618093_ _g1806718097_))))
                         (_g1806418192_
                          (lambda (_g1806718154_)
                            (if (gx#stx-pair? _g1806718154_)
                                (let ((_e1807018157_
                                       (gx#syntax-e _g1806718154_)))
                                  (let ((_hd1807118161_ (##car _e1807018157_))
                                        (_tl1807218164_ (##cdr _e1807018157_)))
                                    (if (gx#stx-pair? _tl1807218164_)
                                        (let ((_e1807318167_
                                               (gx#syntax-e _tl1807218164_)))
                                          (let ((_hd1807418171_
                                                 (##car _e1807318167_))
                                                (_tl1807518174_
                                                 (##cdr _e1807318167_)))
                                            (if (gx#stx-null? _tl1807518174_)
                                                ((lambda (_L18177_ _L18179_)
                                                   (cons _off18063_
                                                         (cons _L18179_
                                                               (cons _L18177_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1807418171_
                                                 _hd1807118161_)
                                                (_g1806518150_
                                                 _g1806718154_))))
                                        (_g1806518150_ _g1806718154_))))
                                (_g1806518150_ _g1806718154_)))))
                    (_g1806418192_ _field18061_))))
               (_field-id16598_
                (lambda (_field17927_)
                  (let* ((_g1793117958_
                          (lambda (_g1793217954_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1793217954_)))
                         (_g1793018015_
                          (lambda (_g1793217962_)
                            (if (gx#stx-pair? _g1793217962_)
                                (let ((_e1794417965_
                                       (gx#syntax-e _g1793217962_)))
                                  (let ((_hd1794517969_ (##car _e1794417965_))
                                        (_tl1794617972_ (##cdr _e1794417965_)))
                                    (if (gx#stx-pair? _tl1794617972_)
                                        (let ((_e1794717975_
                                               (gx#syntax-e _tl1794617972_)))
                                          (let ((_hd1794817979_
                                                 (##car _e1794717975_))
                                                (_tl1794917982_
                                                 (##cdr _e1794717975_)))
                                            (if (gx#stx-pair? _tl1794917982_)
                                                (let ((_e1795017985_
                                                       (gx#syntax-e
                                                        _tl1794917982_)))
                                                  (let ((_hd1795117989_
                                                         (##car _e1795017985_))
                                                        (_tl1795217992_
                                                         (##cdr _e1795017985_)))
                                                    (if (gx#stx-null?
                                                         _tl1795217992_)
                                                        ((lambda (_L17995_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L17997_
                          _L17998_)
                   _L17998_)
                 _hd1795117989_
                 _hd1794817979_
                 _hd1794517969_)
                (_g1793117958_ _g1793217962_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1793117958_
                                                 _g1793217962_))))
                                        (_g1793117958_ _g1793217962_))))
                                (_g1793117958_ _g1793217962_))))
                         (_g1792918057_
                          (lambda (_g1793218019_)
                            (if (gx#stx-pair? _g1793218019_)
                                (let ((_e1793518022_
                                       (gx#syntax-e _g1793218019_)))
                                  (let ((_hd1793618026_ (##car _e1793518022_))
                                        (_tl1793718029_ (##cdr _e1793518022_)))
                                    (if (gx#stx-pair? _tl1793718029_)
                                        (let ((_e1793818032_
                                               (gx#syntax-e _tl1793718029_)))
                                          (let ((_hd1793918036_
                                                 (##car _e1793818032_))
                                                (_tl1794018039_
                                                 (##cdr _e1793818032_)))
                                            (if (gx#stx-null? _tl1794018039_)
                                                ((lambda (_L18042_ _L18044_)
                                                   ':)
                                                 _hd1793918036_
                                                 _hd1793618026_)
                                                (_g1793018015_
                                                 _g1793218019_))))
                                        (_g1793018015_ _g1793218019_))))
                                (_g1793018015_ _g1793218019_)))))
                    (_g1792918057_ _field17927_))))
               (_struct-opt?16599_
                (lambda (_key17924_)
                  (memq (gx#stx-e _key17924_)
                        '(fields: id: name: plist: constructor: unchecked:))))
               (_class-opt?16600_
                (lambda (_key17921_)
                  (memq (gx#stx-e _key17921_)
                        '(slots: id: name: plist: constructor: unchecked:))))
               (_module-type-id16601_
                (lambda (_type-t17908_)
                  (let ((_$e17911_
                         (gx#module-context-ns (gx#current-expander-context))))
                    (if _$e17911_
                        ((lambda (_ns17915_)
                           (gx#stx-identifier
                            _type-t17908_
                            _ns17915_
                            '"#"
                            _type-t17908_))
                         _$e17911_)
                        (let ((_mid17918_
                               (gx#expander-context-id
                                (gx#current-expander-context))))
                          (gx#stx-identifier
                           _type-t17908_
                           _mid17918_
                           '"#"
                           _type-t17908_)))))))
        (let* ((_g1660316630_
                (lambda (_g1660416626_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1660416626_)))
               (_g1660217904_
                (lambda (_g1660416634_)
                  (if (gx#stx-pair? _g1660416634_)
                      (let ((_e1661016637_ (gx#syntax-e _g1660416634_)))
                        (let ((_hd1661116641_ (##car _e1661016637_))
                              (_tl1661216644_ (##cdr _e1661016637_)))
                          (if (gx#stx-pair? _tl1661216644_)
                              (let ((_e1661316647_
                                     (gx#syntax-e _tl1661216644_)))
                                (let ((_hd1661416651_ (##car _e1661316647_))
                                      (_tl1661516654_ (##cdr _e1661316647_)))
                                  (if (gx#stx-pair? _tl1661516654_)
                                      (let ((_e1661616657_
                                             (gx#syntax-e _tl1661516654_)))
                                        (let ((_hd1661716661_
                                               (##car _e1661616657_))
                                              (_tl1661816664_
                                               (##cdr _e1661616657_)))
                                          (if (gx#stx-pair? _tl1661816664_)
                                              (let ((_e1661916667_
                                                     (gx#syntax-e
                                                      _tl1661816664_)))
                                                (let ((_hd1662016671_
                                                       (##car _e1661916667_))
                                                      (_tl1662116674_
                                                       (##cdr _e1661916667_)))
                                                  (if (gx#stx-pair?
                                                       _tl1662116674_)
                                                      (let ((_e1662216677_
                                                             (gx#syntax-e
                                                              _tl1662116674_)))
                                                        (let ((_hd1662316681_
                                                               (##car _e1662216677_))
                                                              (_tl1662416684_
                                                               (##cdr _e1662216677_)))
                                                          ((lambda (_L16687_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L16689_
                            _L16690_
                            _L16691_
                            _L16692_)
                     (if (if (gx#identifier? _L16692_)
                             (if (let ((_$e16718_ (gx#identifier? _L16690_)))
                                   (if _$e16718_
                                       _$e16718_
                                       (gx#stx-false? _L16690_)))
                                 (if (gx#identifier? _L16689_)
                                     (gx#stx-plist?
                                      _L16687_
                                      (if _struct?16593_
                                          _struct-opt?16599_
                                          _class-opt?16600_))
                                     '#f)
                                 '#f)
                             '#f)
                         (let* ((_els16726_
                                 (let ((_$e16722_
                                        (gx#stx-getq
                                         (if _struct?16593_ 'fields: 'slots:)
                                         _L16687_)))
                                   (if _$e16722_ _$e16722_ '())))
                                (_g1672916760_
                                 (lambda (_g1673016756_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1673016756_)))
                                (_g1672817900_
                                 (lambda (_g1673016764_)
                                   (if (gx#stx-pair? _g1673016764_)
                                       (let ((_e1673716767_
                                              (gx#syntax-e _g1673016764_)))
                                         (let ((_hd1673816771_
                                                (##car _e1673716767_))
                                               (_tl1673916774_
                                                (##cdr _e1673716767_)))
                                           (if (gx#stx-pair? _tl1673916774_)
                                               (let ((_e1674016777_
                                                      (gx#syntax-e
                                                       _tl1673916774_)))
                                                 (let ((_hd1674116781_
                                                        (##car _e1674016777_))
                                                       (_tl1674216784_
                                                        (##cdr _e1674016777_)))
                                                   (if (gx#stx-pair?
                                                        _tl1674216784_)
                                                       (let ((_e1674316787_
                                                              (gx#syntax-e
                                                               _tl1674216784_)))
                                                         (let ((_hd1674416791_
                                                                (##car _e1674316787_))
                                                               (_tl1674516794_
                                                                (##cdr _e1674316787_)))
                                                           (if (gx#stx-pair?
                                                                _tl1674516794_)
                                                               (let ((_e1674616797_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl1674516794_)))
                         (let ((_hd1674716801_ (##car _e1674616797_))
                               (_tl1674816804_ (##cdr _e1674616797_)))
                           (if (gx#stx-pair? _tl1674816804_)
                               (let ((_e1674916807_
                                      (gx#syntax-e _tl1674816804_)))
                                 (let ((_hd1675016811_ (##car _e1674916807_))
                                       (_tl1675116814_ (##cdr _e1674916807_)))
                                   (if (gx#stx-pair? _tl1675116814_)
                                       (let ((_e1675216817_
                                              (gx#syntax-e _tl1675116814_)))
                                         (let ((_hd1675316821_
                                                (##car _e1675216817_))
                                               (_tl1675416824_
                                                (##cdr _e1675216817_)))
                                           (if (gx#stx-null? _tl1675416824_)
                                               ((lambda (_L16827_
                                                         _L16829_
                                                         _L16830_
                                                         _L16831_
                                                         _L16832_
                                                         _L16833_)
                                                  (let ()
                                                    (let* ((_g1686216870_
                                                            (lambda (_g1686316866_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g1686316866_)))
                                                           (_g1686117892_
                                                            (lambda (_g1686316874_)
                                                              ((lambda (_L16877_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g1689016898_
                                   (lambda (_g1689116894_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1689116894_)))
                                  (_g1688917884_
                                   (lambda (_g1689116902_)
                                     ((lambda (_L16905_)
                                        (let ()
                                          (let* ((_g1691816926_
                                                  (lambda (_g1691916922_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1691916922_)))
                                                 (_g1691717876_
                                                  (lambda (_g1691916930_)
                                                    ((lambda (_L16933_)
                                                       (let ()
                                                         (let* ((_g1694616954_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1694716950_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1694716950_)))
                        (_g1694517872_
                         (lambda (_g1694716958_)
                           ((lambda (_L16961_)
                              (let ()
                                (let* ((_g1697416982_
                                        (lambda (_g1697516978_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g1697516978_)))
                                       (_g1697317588_
                                        (lambda (_g1697516986_)
                                          ((lambda (_L16989_)
                                             (let ()
                                               (let* ((_g1700217010_
                                                       (lambda (_g1700317006_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1700317006_)))
                                                      (_g1700117584_
                                                       (lambda (_g1700317014_)
                                                         ((lambda (_L17017_)
                                                            (let ()
                                                              (let* ((_g1703017038_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g1703117034_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1703117034_)))
                             (_g1702917580_
                              (lambda (_g1703117042_)
                                ((lambda (_L17045_)
                                   (let ()
                                     (let* ((_g1705817066_
                                             (lambda (_g1705917062_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1705917062_)))
                                            (_g1705717576_
                                             (lambda (_g1705917070_)
                                               ((lambda (_L17073_)
                                                  (let ()
                                                    (let* ((_attrs17086_
                                                            (if _struct?16593_
                                                                (gx#stx-map
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _slotify16597_
                         _els16726_
                         (iota (gx#stx-length _els16726_)))
                        _els16726_))
                   (_g1708917115_
                    (lambda (_g1709017111_)
                      (gx#raise-syntax-error '#f '"Bad syntax" _g1709017111_)))
                   (_g1708817488_
                    (lambda (_g1709017119_)
                      (if (gx#stx-pair/null? _g1709017119_)
                          (if (fx>= (gx#stx-length _g1709017119_) '0)
                              (let ((_g34787_
                                     (gx#syntax-split-splice
                                      _g1709017119_
                                      '0)))
                                (begin
                                  (let ((_g34788_ (values-count _g34787_)))
                                    (if (not (fx= _g34788_ 2))
                                        (error "Context expects 2 values"
                                               _g34788_)))
                                  (let ((_target1709317122_
                                         (values-ref _g34787_ 0))
                                        (_tl1709517125_
                                         (values-ref _g34787_ 1)))
                                    (if (gx#stx-null? _tl1709517125_)
                                        (letrec ((_loop1709617128_
                                                  (lambda (_hd1709417132_
                                                           _def-setf1710017135_
                                                           _def-getf1710117137_)
                                                    (if (gx#stx-pair?
                                                         _hd1709417132_)
                                                        (let ((_e1709717140_
                                                               (gx#syntax-e
                                                                _hd1709417132_)))
                                                          (let ((_lp-hd1709817144_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1709717140_))
                        (_lp-tl1709917147_ (##cdr _e1709717140_)))
                    (if (gx#stx-pair? _lp-hd1709817144_)
                        (let ((_e1710417150_ (gx#syntax-e _lp-hd1709817144_)))
                          (let ((_hd1710517154_ (##car _e1710417150_))
                                (_tl1710617157_ (##cdr _e1710417150_)))
                            (if (gx#stx-pair? _tl1710617157_)
                                (let ((_e1710717160_
                                       (gx#syntax-e _tl1710617157_)))
                                  (let ((_hd1710817164_ (##car _e1710717160_))
                                        (_tl1710917167_ (##cdr _e1710717160_)))
                                    (if (gx#stx-null? _tl1710917167_)
                                        (_loop1709617128_
                                         _lp-tl1709917147_
                                         (cons _hd1710817164_
                                               _def-setf1710017135_)
                                         (cons _hd1710517154_
                                               _def-getf1710117137_))
                                        (_g1708917115_ _g1709017119_))))
                                (_g1708917115_ _g1709017119_))))
                        (_g1708917115_ _g1709017119_))))
                (let ((_def-setf1710217170_ (reverse _def-setf1710017135_))
                      (_def-getf1710317173_ (reverse _def-getf1710117137_)))
                  ((lambda (_L17176_ _L17178_)
                     (let ()
                       (let* ((_g1719617222_
                               (lambda (_g1719717218_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1719717218_)))
                              (_g1719517336_
                               (lambda (_g1719717226_)
                                 (if (gx#stx-pair/null? _g1719717226_)
                                     (if (fx>= (gx#stx-length _g1719717226_)
                                               '0)
                                         (let ((_g34789_
                                                (gx#syntax-split-splice
                                                 _g1719717226_
                                                 '0)))
                                           (begin
                                             (let ((_g34790_
                                                    (values-count _g34789_)))
                                               (if (not (fx= _g34790_ 2))
                                                   (error "Context expects 2 values"
                                                          _g34790_)))
                                             (let ((_target1720017229_
                                                    (values-ref _g34789_ 0))
                                                   (_tl1720217232_
                                                    (values-ref _g34789_ 1)))
                                               (if (gx#stx-null?
                                                    _tl1720217232_)
                                                   (letrec ((_loop1720317235_
                                                             (lambda (_hd1720117239_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _def-usetf1720717242_
                              _def-ugetf1720817244_)
                       (if (gx#stx-pair? _hd1720117239_)
                           (let ((_e1720417247_ (gx#syntax-e _hd1720117239_)))
                             (let ((_lp-hd1720517251_ (##car _e1720417247_))
                                   (_lp-tl1720617254_ (##cdr _e1720417247_)))
                               (if (gx#stx-pair? _lp-hd1720517251_)
                                   (let ((_e1721117257_
                                          (gx#syntax-e _lp-hd1720517251_)))
                                     (let ((_hd1721217261_
                                            (##car _e1721117257_))
                                           (_tl1721317264_
                                            (##cdr _e1721117257_)))
                                       (if (gx#stx-pair? _tl1721317264_)
                                           (let ((_e1721417267_
                                                  (gx#syntax-e
                                                   _tl1721317264_)))
                                             (let ((_hd1721517271_
                                                    (##car _e1721417267_))
                                                   (_tl1721617274_
                                                    (##cdr _e1721417267_)))
                                               (if (gx#stx-null?
                                                    _tl1721617274_)
                                                   (_loop1720317235_
                                                    _lp-tl1720617254_
                                                    (cons _hd1721517271_
                                                          _def-usetf1720717242_)
                                                    (cons _hd1721217261_
                                                          _def-ugetf1720817244_))
                                                   (_g1719617222_
                                                    _g1719717226_))))
                                           (_g1719617222_ _g1719717226_))))
                                   (_g1719617222_ _g1719717226_))))
                           (let ((_def-usetf1720917277_
                                  (reverse _def-usetf1720717242_))
                                 (_def-ugetf1721017280_
                                  (reverse _def-ugetf1720817244_)))
                             ((lambda (_L17283_ _L17285_)
                                (let ()
                                  (let ()
                                    (_wrap16595_
                                     (cons (gx#datum->syntax '#f 'begin)
                                           (cons _L17017_
                                                 (cons _L17073_
                                                       (cons _L17045_
                                                             (begin
                                                               '#!void
                                                               (foldr (lambda (_g1730317312_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1730417315_)
                                (cons _g1730317312_ _g1730417315_))
                              (begin
                                '#!void
                                (foldr (lambda (_g1730517318_ _g1730617321_)
                                         (cons _g1730517318_ _g1730617321_))
                                       (begin
                                         '#!void
                                         (foldr (lambda (_g1730717324_
                                                         _g1730817327_)
                                                  (cons _g1730717324_
                                                        _g1730817327_))
                                                (begin
                                                  '#!void
                                                  (foldr (lambda (_g1730917330_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1731017333_)
                   (cons _g1730917330_ _g1731017333_))
                 '()
                 _L17283_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _L17285_))
                                       _L17176_))
                              _L17178_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              _def-usetf1720917277_
                              _def-ugetf1721017280_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1720317235_
                                                      _target1720017229_
                                                      '()
                                                      '()))
                                                   (_g1719617222_
                                                    _g1719717226_)))))
                                         (_g1719617222_ _g1719717226_))
                                     (_g1719617222_ _g1719717226_)))))
                         (_g1719517336_
                          (if (gx#stx-e (gx#stx-getq 'unchecked: _L16687_))
                              (gx#stx-map
                               (lambda (_ref17340_)
                                 (let* ((_g1734317362_
                                         (lambda (_g1734417358_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g1734417358_)))
                                        (_g1734217484_
                                         (lambda (_g1734417366_)
                                           (if (gx#stx-pair? _g1734417366_)
                                               (let ((_e1734817369_
                                                      (gx#syntax-e
                                                       _g1734417366_)))
                                                 (let ((_hd1734917373_
                                                        (##car _e1734817369_))
                                                       (_tl1735017376_
                                                        (##cdr _e1734817369_)))
                                                   (if (gx#stx-pair?
                                                        _tl1735017376_)
                                                       (let ((_e1735117379_
                                                              (gx#syntax-e
                                                               _tl1735017376_)))
                                                         (let ((_hd1735217383_
                                                                (##car _e1735117379_))
                                                               (_tl1735317386_
                                                                (##cdr _e1735117379_)))
                                                           (if (gx#stx-pair?
                                                                _tl1735317386_)
                                                               (let ((_e1735417389_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl1735317386_)))
                         (let ((_hd1735517393_ (##car _e1735417389_))
                               (_tl1735617396_ (##cdr _e1735417389_)))
                           (if (gx#stx-null? _tl1735617396_)
                               ((lambda (_L17399_ _L17401_ _L17402_)
                                  (let* ((_g1742017435_
                                          (lambda (_g1742117431_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g1742117431_)))
                                         (_g1741917480_
                                          (lambda (_g1742117439_)
                                            (if (gx#stx-pair? _g1742117439_)
                                                (let ((_e1742417442_
                                                       (gx#syntax-e
                                                        _g1742117439_)))
                                                  (let ((_hd1742517446_
                                                         (##car _e1742417442_))
                                                        (_tl1742617449_
                                                         (##cdr _e1742417442_)))
                                                    (if (gx#stx-pair?
                                                         _tl1742617449_)
                                                        (let ((_e1742717452_
                                                               (gx#syntax-e
                                                                _tl1742617449_)))
                                                          (let ((_hd1742817456_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1742717452_))
                        (_tl1742917459_ (##cdr _e1742717452_)))
                    (if (gx#stx-null? _tl1742917459_)
                        ((lambda (_L17462_ _L17464_)
                           (let ()
                             (cons (_wrap16595_
                                    (cons (gx#datum->syntax '#f 'def)
                                          (cons _L17464_
                                                (cons (cons _L16829_
                                                            (cons _L16692_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _L17402_ '()))
                                '())))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (cons (_wrap16595_
                                          (cons (gx#datum->syntax '#f 'def)
                                                (cons _L17462_
                                                      (cons (cons _L16827_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L16692_
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _L17402_ '()))
                                      '())))
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                         _hd1742817456_
                         _hd1742517446_)
                        (_g1742017435_ _g1742117439_))))
                (_g1742017435_ _g1742117439_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1742017435_
                                                 _g1742117439_)))))
                                    (_g1741917480_
                                     (list (gx#stx-identifier
                                            _L17401_
                                            '"&"
                                            _L17401_)
                                           (gx#stx-identifier
                                            _L17399_
                                            '"&"
                                            _L17399_)))))
                                _hd1735517393_
                                _hd1735217383_
                                _hd1734917373_)
                               (_g1734317362_ _g1734417366_))))
                       (_g1734317362_ _g1734417366_))))
               (_g1734317362_ _g1734417366_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1734317362_
                                                _g1734417366_)))))
                                   (_g1734217484_ _ref17340_)))
                               _attrs17086_)
                              '())))))
                   _def-setf1710217170_
                   _def-getf1710317173_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop1709617128_
                                           _target1709317122_
                                           '()
                                           '()))
                                        (_g1708917115_ _g1709017119_)))))
                              (_g1708917115_ _g1709017119_))
                          (_g1708917115_ _g1709017119_)))))
              (_g1708817488_
               (gx#stx-map
                (lambda (_ref17492_)
                  (let* ((_g1749517514_
                          (lambda (_g1749617510_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1749617510_)))
                         (_g1749417572_
                          (lambda (_g1749617518_)
                            (if (gx#stx-pair? _g1749617518_)
                                (let ((_e1750017521_
                                       (gx#syntax-e _g1749617518_)))
                                  (let ((_hd1750117525_ (##car _e1750017521_))
                                        (_tl1750217528_ (##cdr _e1750017521_)))
                                    (if (gx#stx-pair? _tl1750217528_)
                                        (let ((_e1750317531_
                                               (gx#syntax-e _tl1750217528_)))
                                          (let ((_hd1750417535_
                                                 (##car _e1750317531_))
                                                (_tl1750517538_
                                                 (##cdr _e1750317531_)))
                                            (if (gx#stx-pair? _tl1750517538_)
                                                (let ((_e1750617541_
                                                       (gx#syntax-e
                                                        _tl1750517538_)))
                                                  (let ((_hd1750717545_
                                                         (##car _e1750617541_))
                                                        (_tl1750817548_
                                                         (##cdr _e1750617541_)))
                                                    (if (gx#stx-null?
                                                         _tl1750817548_)
                                                        ((lambda (_L17551_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L17553_
                          _L17554_)
                   (cons (_wrap16595_
                          (cons (gx#datum->syntax '#f 'def)
                                (cons _L17553_
                                      (cons (cons _L16831_
                                                  (cons _L16692_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons _L17554_ '()))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '()))))
                         (cons (_wrap16595_
                                (cons (gx#datum->syntax '#f 'def)
                                      (cons _L17551_
                                            (cons (cons _L16830_
                                                        (cons _L16692_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _L17554_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))
                               '())))
                 _hd1750717545_
                 _hd1750417535_
                 _hd1750117525_)
                (_g1749517514_ _g1749617518_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1749517514_
                                                 _g1749617518_))))
                                        (_g1749517514_ _g1749617518_))))
                                (_g1749517514_ _g1749617518_)))))
                    (_g1749417572_ _ref17492_)))
                _attrs17086_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1705917070_))))
                                       (_g1705717576_
                                        (_wrap16595_
                                         (cons (gx#datum->syntax '#f 'def)
                                               (cons _L16689_
                                                     (cons (cons _L16832_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L16692_ '()))
                   '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _g1703117042_))))
                        (_g1702917580_
                         (if (gx#stx-false? _L16690_)
                             (cons (gx#datum->syntax '#f 'begin) '())
                             (_wrap16595_
                              (cons (gx#datum->syntax '#f 'def)
                                    (cons (cons _L16690_
                                                (gx#datum->syntax '#f '$args))
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'apply)
                                                      (cons _L16833_
                                                            (cons _L16692_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f '$args) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))))))))
                  _g1700317014_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1700117584_
                                                  (_wrap16595_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'def)
                                                         (cons _L16692_
                                                               (cons _L16989_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _g1697516986_))))
                                  (_g1697317588_
                                   (if _struct?16593_
                                       (let* ((_g1759217616_
                                               (lambda (_g1759317612_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1759317612_)))
                                              (_g1759117703_
                                               (lambda (_g1759317620_)
                                                 (if (gx#stx-pair?
                                                      _g1759317620_)
                                                     (let ((_e1759617623_
                                                            (gx#syntax-e
                                                             _g1759317620_)))
                                                       (let ((_hd1759717627_
                                                              (##car _e1759617623_))
                                                             (_tl1759817630_
                                                              (##cdr _e1759617623_)))
                                                         (if (gx#stx-pair?
                                                              _tl1759817630_)
                                                             (let ((_e1759917633_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl1759817630_)))
                       (let ((_hd1760017637_ (##car _e1759917633_))
                             (_tl1760117640_ (##cdr _e1759917633_)))
                         (if (gx#stx-pair/null? _hd1760017637_)
                             (if (fx>= (gx#stx-length _hd1760017637_) '0)
                                 (let ((_g34791_
                                        (gx#syntax-split-splice
                                         _hd1760017637_
                                         '0)))
                                   (begin
                                     (let ((_g34792_ (values-count _g34791_)))
                                       (if (not (fx= _g34792_ 2))
                                           (error "Context expects 2 values"
                                                  _g34792_)))
                                     (let ((_target1760217643_
                                            (values-ref _g34791_ 0))
                                           (_tl1760417646_
                                            (values-ref _g34791_ 1)))
                                       (if (gx#stx-null? _tl1760417646_)
                                           (letrec ((_loop1760517649_
                                                     (lambda (_hd1760317653_
                                                              _field-id1760917656_)
                                                       (if (gx#stx-pair?
                                                            _hd1760317653_)
                                                           (let ((_e1760617659_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd1760317653_)))
                     (let ((_lp-hd1760717663_ (##car _e1760617659_))
                           (_lp-tl1760817666_ (##cdr _e1760617659_)))
                       (_loop1760517649_
                        _lp-tl1760817666_
                        (cons _lp-hd1760717663_ _field-id1760917656_))))
                   (let ((_field-id1761017669_ (reverse _field-id1760917656_)))
                     (if (gx#stx-null? _tl1760117640_)
                         ((lambda (_L17673_ _L17675_)
                            (let ()
                              (cons (gx#datum->syntax '#f 'make-struct-type)
                                    (cons (cons (gx#datum->syntax '#f 'quote)
                                                (cons _L16877_ '()))
                                          (cons _L16691_
                                                (cons _L17675_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons _L16905_ '()))
                    (cons _L16933_
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _L16961_ '()))
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons (begin
                                                    '#!void
                                                    (foldr (lambda (_g1769417697_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1769517700_)
                     (cons _g1769417697_ _g1769517700_))
                   '()
                   _L17673_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          _field-id1761017669_
                          _hd1759717627_)
                         (_g1759217616_ _g1759317620_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop1760517649_
                                              _target1760217643_
                                              '()))
                                           (_g1759217616_ _g1759317620_)))))
                                 (_g1759217616_ _g1759317620_))
                             (_g1759217616_ _g1759317620_))))
                     (_g1759217616_ _g1759317620_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1759217616_
                                                      _g1759317620_)))))
                                         (_g1759117703_
                                          (list (gx#stx-length _els16726_)
                                                (gx#stx-map
                                                 _field-id16598_
                                                 _els16726_))))
                                       (let* ((_g1770717740_
                                               (lambda (_g1770817736_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1770817736_)))
                                              (_g1770617868_
                                               (lambda (_g1770817744_)
                                                 (if (gx#stx-pair?
                                                      _g1770817744_)
                                                     (let ((_e1771117747_
                                                            (gx#syntax-e
                                                             _g1770817744_)))
                                                       (let ((_hd1771217751_
                                                              (##car _e1771117747_))
                                                             (_tl1771317754_
                                                              (##cdr _e1771117747_)))
                                                         (if (gx#stx-pair/null?
                                                              _hd1771217751_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _hd1771217751_)
                               '0)
                         (let ((_g34793_
                                (gx#syntax-split-splice _hd1771217751_ '0)))
                           (begin
                             (let ((_g34794_ (values-count _g34793_)))
                               (if (not (fx= _g34794_ 2))
                                   (error "Context expects 2 values"
                                          _g34794_)))
                             (let ((_target1771417757_ (values-ref _g34793_ 0))
                                   (_tl1771617760_ (values-ref _g34793_ 1)))
                               (if (gx#stx-null? _tl1771617760_)
                                   (letrec ((_loop1771717763_
                                             (lambda (_hd1771517767_
                                                      _super1772117770_)
                                               (if (gx#stx-pair?
                                                    _hd1771517767_)
                                                   (let ((_e1771817773_
                                                          (gx#syntax-e
                                                           _hd1771517767_)))
                                                     (let ((_lp-hd1771917777_
                                                            (##car _e1771817773_))
                                                           (_lp-tl1772017780_
                                                            (##cdr _e1771817773_)))
                                                       (_loop1771717763_
                                                        _lp-tl1772017780_
                                                        (cons _lp-hd1771917777_
                                                              _super1772117770_))))
                                                   (let ((_super1772217783_
                                                          (reverse _super1772117770_)))
                                                     (if (gx#stx-pair?
                                                          _tl1771317754_)
                                                         (let ((_e1772317787_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1771317754_)))
                   (let ((_hd1772417791_ (##car _e1772317787_))
                         (_tl1772517794_ (##cdr _e1772317787_)))
                     (if (gx#stx-pair/null? _hd1772417791_)
                         (if (fx>= (gx#stx-length _hd1772417791_) '0)
                             (let ((_g34795_
                                    (gx#syntax-split-splice
                                     _hd1772417791_
                                     '0)))
                               (begin
                                 (let ((_g34796_ (values-count _g34795_)))
                                   (if (not (fx= _g34796_ 2))
                                       (error "Context expects 2 values"
                                              _g34796_)))
                                 (let ((_target1772617797_
                                        (values-ref _g34795_ 0))
                                       (_tl1772817800_
                                        (values-ref _g34795_ 1)))
                                   (if (gx#stx-null? _tl1772817800_)
                                       (letrec ((_loop1772917803_
                                                 (lambda (_hd1772717807_
                                                          _slot1773317810_)
                                                   (if (gx#stx-pair?
                                                        _hd1772717807_)
                                                       (let ((_e1773017813_
                                                              (gx#syntax-e
                                                               _hd1772717807_)))
                                                         (let ((_lp-hd1773117817_
                                                                (##car _e1773017813_))
                                                               (_lp-tl1773217820_
                                                                (##cdr _e1773017813_)))
                                                           (_loop1772917803_
                                                            _lp-tl1773217820_
                                                            (cons _lp-hd1773117817_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _slot1773317810_))))
               (let ((_slot1773417823_ (reverse _slot1773317810_)))
                 (if (gx#stx-null? _tl1772517794_)
                     ((lambda (_L17827_ _L17829_)
                        (let ()
                          (cons (gx#datum->syntax '#f 'make-class-type)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _L16877_ '()))
                                      (cons (cons (gx#datum->syntax '#f '@list)
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g1785117856_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1785217859_)
                     (cons _g1785117856_ _g1785217859_))
                   '()
                   _L17829_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'quote)
                                                        (cons (begin
                                                                '#!void
                                                                (foldr (lambda (_g1785317862_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g1785417865_)
                                 (cons _g1785317862_ _g1785417865_))
                               '()
                               _L17827_))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'quote)
                                                              (cons _L16905_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _L16933_
                      (cons (cons (gx#datum->syntax '#f 'quote)
                                  (cons _L16961_ '()))
                            '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      _slot1773417823_
                      _super1772217783_)
                     (_g1770717740_ _g1770817744_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop1772917803_
                                          _target1772617797_
                                          '()))
                                       (_g1770717740_ _g1770817744_)))))
                             (_g1770717740_ _g1770817744_))
                         (_g1770717740_ _g1770817744_))))
                 (_g1770717740_ _g1770817744_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop1771717763_ _target1771417757_ '()))
                                   (_g1770717740_ _g1770817744_)))))
                         (_g1770717740_ _g1770817744_))
                     (_g1770717740_ _g1770817744_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1770717740_
                                                      _g1770817744_)))))
                                         (_g1770617868_
                                          (list _L16691_
                                                (gx#stx-map
                                                 gx#stx-car
                                                 _els16726_)))))))))
                            _g1694716958_))))
                   (_g1694517872_ (gx#stx-getq 'constructor: _L16687_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1691916930_))))
                                            (_g1691717876_
                                             (let ((_$e17880_
                                                    (gx#stx-getq
                                                     'plist:
                                                     _L16687_)))
                                               (if _$e17880_
                                                   _$e17880_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '@list)
                                                         '())))))))
                                      _g1689116902_))))
                             (_g1688917884_
                              (let ((_$e17888_ (gx#stx-getq 'name: _L16687_)))
                                (if _$e17888_ _$e17888_ _L16692_))))))
                       _g1686316874_))))
              (_g1686117892_
               (let ((_$e17896_ (gx#stx-getq 'id: _L16687_)))
                 (if _$e17896_
                     _$e17896_
                     (if (gx#module-context? (gx#current-expander-context))
                         (_module-type-id16601_ _L16692_)
                         (gx#genident _L16692_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1675316821_
                                                _hd1675016811_
                                                _hd1674716801_
                                                _hd1674416791_
                                                _hd1674116781_
                                                _hd1673816771_)
                                               (_g1672916760_ _g1673016764_))))
                                       (_g1672916760_ _g1673016764_))))
                               (_g1672916760_ _g1673016764_))))
                       (_g1672916760_ _g1673016764_))))
               (_g1672916760_ _g1673016764_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1672916760_ _g1673016764_))))
                                       (_g1672916760_ _g1673016764_)))))
                           (_g1672817900_
                            (if _struct?16593_
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
                         (_g1660316630_ _g1660416634_)))
                   _tl1662416684_
                   _hd1662316681_
                   _hd1662016671_
                   _hd1661716661_
                   _hd1661416651_)))
              (_g1660316630_ _g1660416634_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1660316630_ _g1660416634_))))
                                      (_g1660316630_ _g1660416634_))))
                              (_g1660316630_ _g1660416634_))))
                      (_g1660316630_ _g1660416634_)))))
          (_g1660217904_ _stx16591_)))))
  (define |gerbil/core$<MOP>$<MOP:1>[:0:]#defstruct-type|
    (lambda (_stx18204_)
      (|gerbil/core$<MOP>$<MOP:1>[1]#generate-typedef| _stx18204_ '#t)))
  (define |gerbil/core$<MOP>$<MOP:1>[:0:]#defclass-type|
    (lambda (_stx18207_)
      (|gerbil/core$<MOP>$<MOP:1>[1]#generate-typedef| _stx18207_ '#f))))
