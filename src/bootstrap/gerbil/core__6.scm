(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<MOP>$<MOP:1>[1]#generate-typedef|
    (lambda (_stx17329_ _struct?17331_)
      (letrec ((_wrap17333_
                (lambda (_e-stx18934_)
                  (gx#stx-wrap-source
                   _e-stx18934_
                   (gx#stx-source _stx17329_))))
               (_slotify17335_
                (lambda (_field18799_ _off18801_)
                  (let* ((___stx3819138192_ _field18799_)
                         (_g1880418831_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx3819138192_))))
                    (let ((___kont3819438195_
                           (lambda (_L18915_ _L18917_)
                             (cons _off18801_
                                   (cons _L18917_ (cons _L18915_ '())))))
                          (___kont3819638197_
                           (lambda (_L18868_ _L18870_ _L18871_)
                             (cons _off18801_
                                   (cons _L18870_ (cons _L18868_ '()))))))
                      (if (gx#stx-pair? ___stx3819138192_)
                          (let ((_e1880818895_
                                 (gx#syntax-e ___stx3819138192_)))
                            (let ((_tl1881018902_ (##cdr _e1880818895_))
                                  (_hd1880918899_ (##car _e1880818895_)))
                              (if (gx#stx-pair? _tl1881018902_)
                                  (let ((_e1881118905_
                                         (gx#syntax-e _tl1881018902_)))
                                    (let ((_tl1881318912_
                                           (##cdr _e1881118905_))
                                          (_hd1881218909_
                                           (##car _e1881118905_)))
                                      (if (gx#stx-null? _tl1881318912_)
                                          (___kont3819438195_
                                           _hd1881218909_
                                           _hd1880918899_)
                                          (if (gx#stx-pair? _tl1881318912_)
                                              (let ((_e1882318858_
                                                     (gx#syntax-e
                                                      _tl1881318912_)))
                                                (let ((_tl1882518865_
                                                       (##cdr _e1882318858_))
                                                      (_hd1882418862_
                                                       (##car _e1882318858_)))
                                                  (if (gx#stx-null?
                                                       _tl1882518865_)
                                                      (___kont3819638197_
                                                       _hd1882418862_
                                                       _hd1881218909_
                                                       _hd1880918899_)
                                                      (_g1880418831_))))
                                              (_g1880418831_)))))
                                  (_g1880418831_))))
                          (_g1880418831_))))))
               (_field-id17336_
                (lambda (_field18665_)
                  (let* ((___stx3823538236_ _field18665_)
                         (_g1866918696_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx3823538236_))))
                    (let ((___kont3823838239_ (lambda (_L18780_ _L18782_) ':))
                          (___kont3824038241_
                           (lambda (_L18733_ _L18735_ _L18736_) _L18736_)))
                      (if (gx#stx-pair? ___stx3823538236_)
                          (let ((_e1867318760_
                                 (gx#syntax-e ___stx3823538236_)))
                            (let ((_tl1867518767_ (##cdr _e1867318760_))
                                  (_hd1867418764_ (##car _e1867318760_)))
                              (if (gx#stx-pair? _tl1867518767_)
                                  (let ((_e1867618770_
                                         (gx#syntax-e _tl1867518767_)))
                                    (let ((_tl1867818777_
                                           (##cdr _e1867618770_))
                                          (_hd1867718774_
                                           (##car _e1867618770_)))
                                      (if (gx#stx-null? _tl1867818777_)
                                          (___kont3823838239_
                                           _hd1867718774_
                                           _hd1867418764_)
                                          (if (gx#stx-pair? _tl1867818777_)
                                              (let ((_e1868818723_
                                                     (gx#syntax-e
                                                      _tl1867818777_)))
                                                (let ((_tl1869018730_
                                                       (##cdr _e1868818723_))
                                                      (_hd1868918727_
                                                       (##car _e1868818723_)))
                                                  (if (gx#stx-null?
                                                       _tl1869018730_)
                                                      (___kont3824038241_
                                                       _hd1868918727_
                                                       _hd1867718774_
                                                       _hd1867418764_)
                                                      (_g1866918696_))))
                                              (_g1866918696_)))))
                                  (_g1866918696_))))
                          (_g1866918696_))))))
               (_struct-opt?17337_
                (lambda (_key18662_)
                  (memq (gx#stx-e _key18662_)
                        '(fields: id: name: plist: constructor: unchecked:))))
               (_class-opt?17338_
                (lambda (_key18659_)
                  (memq (gx#stx-e _key18659_)
                        '(slots: id: name: plist: constructor: unchecked:))))
               (_module-type-id17339_
                (lambda (_type-t18646_)
                  (let ((_$e18649_
                         (gx#module-context-ns (gx#current-expander-context))))
                    (if _$e18649_
                        ((lambda (_ns18653_)
                           (gx#stx-identifier
                            _type-t18646_
                            _ns18653_
                            '"#"
                            _type-t18646_))
                         _$e18649_)
                        (let ((_mid18656_
                               (gx#expander-context-id
                                (gx#current-expander-context))))
                          (gx#stx-identifier
                           _type-t18646_
                           _mid18656_
                           '"#"
                           _type-t18646_)))))))
        (let* ((_g1734117368_
                (lambda (_g1734217364_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1734217364_)))
               (_g1734018642_
                (lambda (_g1734217372_)
                  (if (gx#stx-pair? _g1734217372_)
                      (let ((_e1734817375_ (gx#syntax-e _g1734217372_)))
                        (let ((_hd1734917379_ (##car _e1734817375_))
                              (_tl1735017382_ (##cdr _e1734817375_)))
                          (if (gx#stx-pair? _tl1735017382_)
                              (let ((_e1735117385_
                                     (gx#syntax-e _tl1735017382_)))
                                (let ((_hd1735217389_ (##car _e1735117385_))
                                      (_tl1735317392_ (##cdr _e1735117385_)))
                                  (if (gx#stx-pair? _tl1735317392_)
                                      (let ((_e1735417395_
                                             (gx#syntax-e _tl1735317392_)))
                                        (let ((_hd1735517399_
                                               (##car _e1735417395_))
                                              (_tl1735617402_
                                               (##cdr _e1735417395_)))
                                          (if (gx#stx-pair? _tl1735617402_)
                                              (let ((_e1735717405_
                                                     (gx#syntax-e
                                                      _tl1735617402_)))
                                                (let ((_hd1735817409_
                                                       (##car _e1735717405_))
                                                      (_tl1735917412_
                                                       (##cdr _e1735717405_)))
                                                  (if (gx#stx-pair?
                                                       _tl1735917412_)
                                                      (let ((_e1736017415_
                                                             (gx#syntax-e
                                                              _tl1735917412_)))
                                                        (let ((_hd1736117419_
                                                               (##car _e1736017415_))
                                                              (_tl1736217422_
                                                               (##cdr _e1736017415_)))
                                                          ((lambda (_L17425_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L17427_
                            _L17428_
                            _L17429_
                            _L17430_)
                     (if (if (gx#identifier? _L17430_)
                             (if (let ((_$e17456_ (gx#identifier? _L17428_)))
                                   (if _$e17456_
                                       _$e17456_
                                       (gx#stx-false? _L17428_)))
                                 (if (gx#identifier? _L17427_)
                                     (gx#stx-plist?
                                      _L17425_
                                      (if _struct?17331_
                                          _struct-opt?17337_
                                          _class-opt?17338_))
                                     '#f)
                                 '#f)
                             '#f)
                         (let* ((_els17464_
                                 (let ((_$e17460_
                                        (gx#stx-getq
                                         (if _struct?17331_ 'fields: 'slots:)
                                         _L17425_)))
                                   (if _$e17460_ _$e17460_ '())))
                                (_g1746717498_
                                 (lambda (_g1746817494_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1746817494_)))
                                (_g1746618638_
                                 (lambda (_g1746817502_)
                                   (if (gx#stx-pair? _g1746817502_)
                                       (let ((_e1747517505_
                                              (gx#syntax-e _g1746817502_)))
                                         (let ((_hd1747617509_
                                                (##car _e1747517505_))
                                               (_tl1747717512_
                                                (##cdr _e1747517505_)))
                                           (if (gx#stx-pair? _tl1747717512_)
                                               (let ((_e1747817515_
                                                      (gx#syntax-e
                                                       _tl1747717512_)))
                                                 (let ((_hd1747917519_
                                                        (##car _e1747817515_))
                                                       (_tl1748017522_
                                                        (##cdr _e1747817515_)))
                                                   (if (gx#stx-pair?
                                                        _tl1748017522_)
                                                       (let ((_e1748117525_
                                                              (gx#syntax-e
                                                               _tl1748017522_)))
                                                         (let ((_hd1748217529_
                                                                (##car _e1748117525_))
                                                               (_tl1748317532_
                                                                (##cdr _e1748117525_)))
                                                           (if (gx#stx-pair?
                                                                _tl1748317532_)
                                                               (let ((_e1748417535_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl1748317532_)))
                         (let ((_hd1748517539_ (##car _e1748417535_))
                               (_tl1748617542_ (##cdr _e1748417535_)))
                           (if (gx#stx-pair? _tl1748617542_)
                               (let ((_e1748717545_
                                      (gx#syntax-e _tl1748617542_)))
                                 (let ((_hd1748817549_ (##car _e1748717545_))
                                       (_tl1748917552_ (##cdr _e1748717545_)))
                                   (if (gx#stx-pair? _tl1748917552_)
                                       (let ((_e1749017555_
                                              (gx#syntax-e _tl1748917552_)))
                                         (let ((_hd1749117559_
                                                (##car _e1749017555_))
                                               (_tl1749217562_
                                                (##cdr _e1749017555_)))
                                           (if (gx#stx-null? _tl1749217562_)
                                               ((lambda (_L17565_
                                                         _L17567_
                                                         _L17568_
                                                         _L17569_
                                                         _L17570_
                                                         _L17571_)
                                                  (let ()
                                                    (let* ((_g1760017608_
                                                            (lambda (_g1760117604_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g1760117604_)))
                                                           (_g1759918630_
                                                            (lambda (_g1760117612_)
                                                              ((lambda (_L17615_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g1762817636_
                                   (lambda (_g1762917632_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1762917632_)))
                                  (_g1762718622_
                                   (lambda (_g1762917640_)
                                     ((lambda (_L17643_)
                                        (let ()
                                          (let* ((_g1765617664_
                                                  (lambda (_g1765717660_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1765717660_)))
                                                 (_g1765518614_
                                                  (lambda (_g1765717668_)
                                                    ((lambda (_L17671_)
                                                       (let ()
                                                         (let* ((_g1768417692_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1768517688_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1768517688_)))
                        (_g1768318610_
                         (lambda (_g1768517696_)
                           ((lambda (_L17699_)
                              (let ()
                                (let* ((_g1771217720_
                                        (lambda (_g1771317716_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g1771317716_)))
                                       (_g1771118326_
                                        (lambda (_g1771317724_)
                                          ((lambda (_L17727_)
                                             (let ()
                                               (let* ((_g1774017748_
                                                       (lambda (_g1774117744_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1774117744_)))
                                                      (_g1773918322_
                                                       (lambda (_g1774117752_)
                                                         ((lambda (_L17755_)
                                                            (let ()
                                                              (let* ((_g1776817776_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g1776917772_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1776917772_)))
                             (_g1776718318_
                              (lambda (_g1776917780_)
                                ((lambda (_L17783_)
                                   (let ()
                                     (let* ((_g1779617804_
                                             (lambda (_g1779717800_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1779717800_)))
                                            (_g1779518314_
                                             (lambda (_g1779717808_)
                                               ((lambda (_L17811_)
                                                  (let ()
                                                    (let* ((_attrs17824_
                                                            (if _struct?17331_
                                                                (gx#stx-map
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _slotify17335_
                         _els17464_
                         (iota (gx#stx-length _els17464_)))
                        _els17464_))
                   (_g1782717853_
                    (lambda (_g1782817849_)
                      (gx#raise-syntax-error '#f '"Bad syntax" _g1782817849_)))
                   (_g1782618226_
                    (lambda (_g1782817857_)
                      (if (gx#stx-pair/null? _g1782817857_)
                          (let ((_g41326_
                                 (gx#syntax-split-splice _g1782817857_ '0)))
                            (begin
                              (let ((_g41327_
                                     (if (##values? _g41326_)
                                         (##vector-length _g41326_)
                                         1)))
                                (if (not (##fx= _g41327_ 2))
                                    (error "Context expects 2 values"
                                           _g41327_)))
                              (let ((_target1783117860_
                                     (##vector-ref _g41326_ 0))
                                    (_tl1783317863_ (##vector-ref _g41326_ 1)))
                                (if (gx#stx-null? _tl1783317863_)
                                    (letrec ((_loop1783417866_
                                              (lambda (_hd1783217870_
                                                       _def-setf1783817873_
                                                       _def-getf1783917875_)
                                                (if (gx#stx-pair?
                                                     _hd1783217870_)
                                                    (let ((_e1783517878_
                                                           (gx#syntax-e
                                                            _hd1783217870_)))
                                                      (let ((_lp-hd1783617882_
                                                             (##car _e1783517878_))
                                                            (_lp-tl1783717885_
                                                             (##cdr _e1783517878_)))
                                                        (if (gx#stx-pair?
                                                             _lp-hd1783617882_)
                                                            (let ((_e1784217888_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _lp-hd1783617882_)))
                      (let ((_hd1784317892_ (##car _e1784217888_))
                            (_tl1784417895_ (##cdr _e1784217888_)))
                        (if (gx#stx-pair? _tl1784417895_)
                            (let ((_e1784517898_ (gx#syntax-e _tl1784417895_)))
                              (let ((_hd1784617902_ (##car _e1784517898_))
                                    (_tl1784717905_ (##cdr _e1784517898_)))
                                (if (gx#stx-null? _tl1784717905_)
                                    (_loop1783417866_
                                     _lp-tl1783717885_
                                     (cons _hd1784617902_ _def-setf1783817873_)
                                     (cons _hd1784317892_
                                           _def-getf1783917875_))
                                    (_g1782717853_ _g1782817857_))))
                            (_g1782717853_ _g1782817857_))))
                    (_g1782717853_ _g1782817857_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_def-setf1784017908_
                                                           (reverse _def-setf1783817873_))
                                                          (_def-getf1784117911_
                                                           (reverse _def-getf1783917875_)))
                                                      ((lambda (_L17914_
                                                                _L17916_)
                                                         (let ()
                                                           (let* ((_g1793417960_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g1793517956_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1793517956_)))
                          (_g1793318074_
                           (lambda (_g1793517964_)
                             (if (gx#stx-pair/null? _g1793517964_)
                                 (let ((_g41328_
                                        (gx#syntax-split-splice
                                         _g1793517964_
                                         '0)))
                                   (begin
                                     (let ((_g41329_
                                            (if (##values? _g41328_)
                                                (##vector-length _g41328_)
                                                1)))
                                       (if (not (##fx= _g41329_ 2))
                                           (error "Context expects 2 values"
                                                  _g41329_)))
                                     (let ((_target1793817967_
                                            (##vector-ref _g41328_ 0))
                                           (_tl1794017970_
                                            (##vector-ref _g41328_ 1)))
                                       (if (gx#stx-null? _tl1794017970_)
                                           (letrec ((_loop1794117973_
                                                     (lambda (_hd1793917977_
                                                              _def-usetf1794517980_
                                                              _def-ugetf1794617982_)
                                                       (if (gx#stx-pair?
                                                            _hd1793917977_)
                                                           (let ((_e1794217985_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd1793917977_)))
                     (let ((_lp-hd1794317989_ (##car _e1794217985_))
                           (_lp-tl1794417992_ (##cdr _e1794217985_)))
                       (if (gx#stx-pair? _lp-hd1794317989_)
                           (let ((_e1794917995_
                                  (gx#syntax-e _lp-hd1794317989_)))
                             (let ((_hd1795017999_ (##car _e1794917995_))
                                   (_tl1795118002_ (##cdr _e1794917995_)))
                               (if (gx#stx-pair? _tl1795118002_)
                                   (let ((_e1795218005_
                                          (gx#syntax-e _tl1795118002_)))
                                     (let ((_hd1795318009_
                                            (##car _e1795218005_))
                                           (_tl1795418012_
                                            (##cdr _e1795218005_)))
                                       (if (gx#stx-null? _tl1795418012_)
                                           (_loop1794117973_
                                            _lp-tl1794417992_
                                            (cons _hd1795318009_
                                                  _def-usetf1794517980_)
                                            (cons _hd1795017999_
                                                  _def-ugetf1794617982_))
                                           (_g1793417960_ _g1793517964_))))
                                   (_g1793417960_ _g1793517964_))))
                           (_g1793417960_ _g1793517964_))))
                   (let ((_def-usetf1794718015_
                          (reverse _def-usetf1794517980_))
                         (_def-ugetf1794818018_
                          (reverse _def-ugetf1794617982_)))
                     ((lambda (_L18021_ _L18023_)
                        (let ()
                          (let ()
                            (_wrap17333_
                             (cons (gx#datum->syntax '#f 'begin)
                                   (cons _L17755_
                                         (cons _L17811_
                                               (cons _L17783_
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g1804118050_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1804218053_)
                        (cons _g1804118050_ _g1804218053_))
                      (begin
                        '#!void
                        (foldr (lambda (_g1804318056_ _g1804418059_)
                                 (cons _g1804318056_ _g1804418059_))
                               (begin
                                 '#!void
                                 (foldr (lambda (_g1804518062_ _g1804618065_)
                                          (cons _g1804518062_ _g1804618065_))
                                        (begin
                                          '#!void
                                          (foldr (lambda (_g1804718068_
                                                          _g1804818071_)
                                                   (cons _g1804718068_
                                                         _g1804818071_))
                                                 '()
                                                 _L18021_))
                                        _L18023_))
                               _L17914_))
                      _L17916_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      _def-usetf1794718015_
                      _def-ugetf1794818018_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop1794117973_
                                              _target1793817967_
                                              '()
                                              '()))
                                           (_g1793417960_ _g1793517964_)))))
                                 (_g1793417960_ _g1793517964_)))))
                     (_g1793318074_
                      (if (gx#stx-e (gx#stx-getq 'unchecked: _L17425_))
                          (gx#stx-map
                           (lambda (_ref18078_)
                             (let* ((_g1808118100_
                                     (lambda (_g1808218096_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1808218096_)))
                                    (_g1808018222_
                                     (lambda (_g1808218104_)
                                       (if (gx#stx-pair? _g1808218104_)
                                           (let ((_e1808618107_
                                                  (gx#syntax-e _g1808218104_)))
                                             (let ((_hd1808718111_
                                                    (##car _e1808618107_))
                                                   (_tl1808818114_
                                                    (##cdr _e1808618107_)))
                                               (if (gx#stx-pair?
                                                    _tl1808818114_)
                                                   (let ((_e1808918117_
                                                          (gx#syntax-e
                                                           _tl1808818114_)))
                                                     (let ((_hd1809018121_
                                                            (##car _e1808918117_))
                                                           (_tl1809118124_
                                                            (##cdr _e1808918117_)))
                                                       (if (gx#stx-pair?
                                                            _tl1809118124_)
                                                           (let ((_e1809218127_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl1809118124_)))
                     (let ((_hd1809318131_ (##car _e1809218127_))
                           (_tl1809418134_ (##cdr _e1809218127_)))
                       (if (gx#stx-null? _tl1809418134_)
                           ((lambda (_L18137_ _L18139_ _L18140_)
                              (let* ((_g1815818173_
                                      (lambda (_g1815918169_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g1815918169_)))
                                     (_g1815718218_
                                      (lambda (_g1815918177_)
                                        (if (gx#stx-pair? _g1815918177_)
                                            (let ((_e1816218180_
                                                   (gx#syntax-e
                                                    _g1815918177_)))
                                              (let ((_hd1816318184_
                                                     (##car _e1816218180_))
                                                    (_tl1816418187_
                                                     (##cdr _e1816218180_)))
                                                (if (gx#stx-pair?
                                                     _tl1816418187_)
                                                    (let ((_e1816518190_
                                                           (gx#syntax-e
                                                            _tl1816418187_)))
                                                      (let ((_hd1816618194_
                                                             (##car _e1816518190_))
                                                            (_tl1816718197_
                                                             (##cdr _e1816518190_)))
                                                        (if (gx#stx-null?
                                                             _tl1816718197_)
                                                            ((lambda (_L18200_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L18202_)
                       (let ()
                         (cons (_wrap17333_
                                (cons (gx#datum->syntax '#f 'def)
                                      (cons _L18202_
                                            (cons (cons _L17567_
                                                        (cons _L17430_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _L18140_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))
                               (cons (_wrap17333_
                                      (cons (gx#datum->syntax '#f 'def)
                                            (cons _L18200_
                                                  (cons (cons _L17565_
                                                              (cons _L17430_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f 'quote)
                                        (cons _L18140_ '()))
                                  '())))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))
                     _hd1816618194_
                     _hd1816318184_)
                    (_g1815818173_ _g1815918177_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1815818173_
                                                     _g1815918177_))))
                                            (_g1815818173_ _g1815918177_)))))
                                (_g1815718218_
                                 (list (gx#stx-identifier
                                        _L18139_
                                        '"&"
                                        _L18139_)
                                       (gx#stx-identifier
                                        _L18137_
                                        '"&"
                                        _L18137_)))))
                            _hd1809318131_
                            _hd1809018121_
                            _hd1808718111_)
                           (_g1808118100_ _g1808218104_))))
                   (_g1808118100_ _g1808218104_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1808118100_
                                                    _g1808218104_))))
                                           (_g1808118100_ _g1808218104_)))))
                               (_g1808018222_ _ref18078_)))
                           _attrs17824_)
                          '())))))
               _def-setf1784017908_
               _def-getf1784117911_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop1783417866_
                                       _target1783117860_
                                       '()
                                       '()))
                                    (_g1782717853_ _g1782817857_)))))
                          (_g1782717853_ _g1782817857_)))))
              (_g1782618226_
               (gx#stx-map
                (lambda (_ref18230_)
                  (let* ((_g1823318252_
                          (lambda (_g1823418248_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1823418248_)))
                         (_g1823218310_
                          (lambda (_g1823418256_)
                            (if (gx#stx-pair? _g1823418256_)
                                (let ((_e1823818259_
                                       (gx#syntax-e _g1823418256_)))
                                  (let ((_hd1823918263_ (##car _e1823818259_))
                                        (_tl1824018266_ (##cdr _e1823818259_)))
                                    (if (gx#stx-pair? _tl1824018266_)
                                        (let ((_e1824118269_
                                               (gx#syntax-e _tl1824018266_)))
                                          (let ((_hd1824218273_
                                                 (##car _e1824118269_))
                                                (_tl1824318276_
                                                 (##cdr _e1824118269_)))
                                            (if (gx#stx-pair? _tl1824318276_)
                                                (let ((_e1824418279_
                                                       (gx#syntax-e
                                                        _tl1824318276_)))
                                                  (let ((_hd1824518283_
                                                         (##car _e1824418279_))
                                                        (_tl1824618286_
                                                         (##cdr _e1824418279_)))
                                                    (if (gx#stx-null?
                                                         _tl1824618286_)
                                                        ((lambda (_L18289_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L18291_
                          _L18292_)
                   (cons (_wrap17333_
                          (cons (gx#datum->syntax '#f 'def)
                                (cons _L18291_
                                      (cons (cons _L17569_
                                                  (cons _L17430_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons _L18292_ '()))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '()))))
                         (cons (_wrap17333_
                                (cons (gx#datum->syntax '#f 'def)
                                      (cons _L18289_
                                            (cons (cons _L17568_
                                                        (cons _L17430_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _L18292_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))
                               '())))
                 _hd1824518283_
                 _hd1824218273_
                 _hd1823918263_)
                (_g1823318252_ _g1823418256_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1823318252_
                                                 _g1823418256_))))
                                        (_g1823318252_ _g1823418256_))))
                                (_g1823318252_ _g1823418256_)))))
                    (_g1823218310_ _ref18230_)))
                _attrs17824_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1779717808_))))
                                       (_g1779518314_
                                        (_wrap17333_
                                         (cons (gx#datum->syntax '#f 'def)
                                               (cons _L17427_
                                                     (cons (cons _L17570_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L17430_ '()))
                   '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _g1776917780_))))
                        (_g1776718318_
                         (if (gx#stx-false? _L17428_)
                             (cons (gx#datum->syntax '#f 'begin) '())
                             (_wrap17333_
                              (cons (gx#datum->syntax '#f 'def)
                                    (cons (cons _L17428_
                                                (gx#datum->syntax '#f '$args))
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'apply)
                                                      (cons _L17571_
                                                            (cons _L17430_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f '$args) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))))))))
                  _g1774117752_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1773918322_
                                                  (_wrap17333_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'def)
                                                         (cons _L17430_
                                                               (cons _L17727_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _g1771317724_))))
                                  (_g1771118326_
                                   (if _struct?17331_
                                       (let* ((_g1833018354_
                                               (lambda (_g1833118350_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1833118350_)))
                                              (_g1832918441_
                                               (lambda (_g1833118358_)
                                                 (if (gx#stx-pair?
                                                      _g1833118358_)
                                                     (let ((_e1833418361_
                                                            (gx#syntax-e
                                                             _g1833118358_)))
                                                       (let ((_hd1833518365_
                                                              (##car _e1833418361_))
                                                             (_tl1833618368_
                                                              (##cdr _e1833418361_)))
                                                         (if (gx#stx-pair?
                                                              _tl1833618368_)
                                                             (let ((_e1833718371_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl1833618368_)))
                       (let ((_hd1833818375_ (##car _e1833718371_))
                             (_tl1833918378_ (##cdr _e1833718371_)))
                         (if (gx#stx-pair/null? _hd1833818375_)
                             (let ((_g41330_
                                    (gx#syntax-split-splice
                                     _hd1833818375_
                                     '0)))
                               (begin
                                 (let ((_g41331_
                                        (if (##values? _g41330_)
                                            (##vector-length _g41330_)
                                            1)))
                                   (if (not (##fx= _g41331_ 2))
                                       (error "Context expects 2 values"
                                              _g41331_)))
                                 (let ((_target1834018381_
                                        (##vector-ref _g41330_ 0))
                                       (_tl1834218384_
                                        (##vector-ref _g41330_ 1)))
                                   (if (gx#stx-null? _tl1834218384_)
                                       (letrec ((_loop1834318387_
                                                 (lambda (_hd1834118391_
                                                          _field-id1834718394_)
                                                   (if (gx#stx-pair?
                                                        _hd1834118391_)
                                                       (let ((_e1834418397_
                                                              (gx#syntax-e
                                                               _hd1834118391_)))
                                                         (let ((_lp-hd1834518401_
                                                                (##car _e1834418397_))
                                                               (_lp-tl1834618404_
                                                                (##cdr _e1834418397_)))
                                                           (_loop1834318387_
                                                            _lp-tl1834618404_
                                                            (cons _lp-hd1834518401_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _field-id1834718394_))))
               (let ((_field-id1834818407_ (reverse _field-id1834718394_)))
                 (if (gx#stx-null? _tl1833918378_)
                     ((lambda (_L18411_ _L18413_)
                        (let ()
                          (cons (gx#datum->syntax '#f 'make-struct-type)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _L17615_ '()))
                                      (cons _L17429_
                                            (cons _L18413_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'quote)
                                                              (cons _L17643_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _L17671_
                      (cons (cons (gx#datum->syntax '#f 'quote)
                                  (cons _L17699_ '()))
                            (cons (cons (gx#datum->syntax '#f 'quote)
                                        (cons (begin
                                                '#!void
                                                (foldr (lambda (_g1843218435_
                                                                _g1843318438_)
                                                         (cons _g1843218435_
                                                               _g1843318438_))
                                                       '()
                                                       _L18411_))
                                              '()))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      _field-id1834818407_
                      _hd1833518365_)
                     (_g1833018354_ _g1833118358_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop1834318387_
                                          _target1834018381_
                                          '()))
                                       (_g1833018354_ _g1833118358_)))))
                             (_g1833018354_ _g1833118358_))))
                     (_g1833018354_ _g1833118358_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1833018354_
                                                      _g1833118358_)))))
                                         (_g1832918441_
                                          (list (gx#stx-length _els17464_)
                                                (gx#stx-map
                                                 _field-id17336_
                                                 _els17464_))))
                                       (let* ((_g1844518478_
                                               (lambda (_g1844618474_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1844618474_)))
                                              (_g1844418606_
                                               (lambda (_g1844618482_)
                                                 (if (gx#stx-pair?
                                                      _g1844618482_)
                                                     (let ((_e1844918485_
                                                            (gx#syntax-e
                                                             _g1844618482_)))
                                                       (let ((_hd1845018489_
                                                              (##car _e1844918485_))
                                                             (_tl1845118492_
                                                              (##cdr _e1844918485_)))
                                                         (if (gx#stx-pair/null?
                                                              _hd1845018489_)
                                                             (let ((_g41332_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _hd1845018489_ '0)))
                       (begin
                         (let ((_g41333_
                                (if (##values? _g41332_)
                                    (##vector-length _g41332_)
                                    1)))
                           (if (not (##fx= _g41333_ 2))
                               (error "Context expects 2 values" _g41333_)))
                         (let ((_target1845218495_ (##vector-ref _g41332_ 0))
                               (_tl1845418498_ (##vector-ref _g41332_ 1)))
                           (if (gx#stx-null? _tl1845418498_)
                               (letrec ((_loop1845518501_
                                         (lambda (_hd1845318505_
                                                  _super1845918508_)
                                           (if (gx#stx-pair? _hd1845318505_)
                                               (let ((_e1845618511_
                                                      (gx#syntax-e
                                                       _hd1845318505_)))
                                                 (let ((_lp-hd1845718515_
                                                        (##car _e1845618511_))
                                                       (_lp-tl1845818518_
                                                        (##cdr _e1845618511_)))
                                                   (_loop1845518501_
                                                    _lp-tl1845818518_
                                                    (cons _lp-hd1845718515_
                                                          _super1845918508_))))
                                               (let ((_super1846018521_
                                                      (reverse _super1845918508_)))
                                                 (if (gx#stx-pair?
                                                      _tl1845118492_)
                                                     (let ((_e1846118525_
                                                            (gx#syntax-e
                                                             _tl1845118492_)))
                                                       (let ((_hd1846218529_
                                                              (##car _e1846118525_))
                                                             (_tl1846318532_
                                                              (##cdr _e1846118525_)))
                                                         (if (gx#stx-pair/null?
                                                              _hd1846218529_)
                                                             (let ((_g41334_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _hd1846218529_ '0)))
                       (begin
                         (let ((_g41335_
                                (if (##values? _g41334_)
                                    (##vector-length _g41334_)
                                    1)))
                           (if (not (##fx= _g41335_ 2))
                               (error "Context expects 2 values" _g41335_)))
                         (let ((_target1846418535_ (##vector-ref _g41334_ 0))
                               (_tl1846618538_ (##vector-ref _g41334_ 1)))
                           (if (gx#stx-null? _tl1846618538_)
                               (letrec ((_loop1846718541_
                                         (lambda (_hd1846518545_
                                                  _slot1847118548_)
                                           (if (gx#stx-pair? _hd1846518545_)
                                               (let ((_e1846818551_
                                                      (gx#syntax-e
                                                       _hd1846518545_)))
                                                 (let ((_lp-hd1846918555_
                                                        (##car _e1846818551_))
                                                       (_lp-tl1847018558_
                                                        (##cdr _e1846818551_)))
                                                   (_loop1846718541_
                                                    _lp-tl1847018558_
                                                    (cons _lp-hd1846918555_
                                                          _slot1847118548_))))
                                               (let ((_slot1847218561_
                                                      (reverse _slot1847118548_)))
                                                 (if (gx#stx-null?
                                                      _tl1846318532_)
                                                     ((lambda (_L18565_
                                                               _L18567_)
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'make-class-type)
                        (cons (cons (gx#datum->syntax '#f 'quote)
                                    (cons _L17615_ '()))
                              (cons (cons (gx#datum->syntax '#f '@list)
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g1858918594_
                                                            _g1859018597_)
                                                     (cons _g1858918594_
                                                           _g1859018597_))
                                                   '()
                                                   _L18567_)))
                                    (cons (cons (gx#datum->syntax '#f 'quote)
                                                (cons (begin
                                                        '#!void
                                                        (foldr (lambda (_g1859118600_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1859218603_)
                         (cons _g1859118600_ _g1859218603_))
                       '()
                       _L18565_))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons _L17643_ '()))
                                                (cons _L17671_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons _L17699_ '()))
                    '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              _slot1847218561_
              _super1846018521_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1844518478_
                                                      _g1844618482_)))))))
                                 (_loop1846718541_ _target1846418535_ '()))
                               (_g1844518478_ _g1844618482_)))))
                     (_g1844518478_ _g1844618482_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1844518478_
                                                      _g1844618482_)))))))
                                 (_loop1845518501_ _target1845218495_ '()))
                               (_g1844518478_ _g1844618482_)))))
                     (_g1844518478_ _g1844618482_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1844518478_
                                                      _g1844618482_)))))
                                         (_g1844418606_
                                          (list _L17429_
                                                (gx#stx-map
                                                 gx#stx-car
                                                 _els17464_)))))))))
                            _g1768517696_))))
                   (_g1768318610_ (gx#stx-getq 'constructor: _L17425_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1765717668_))))
                                            (_g1765518614_
                                             (let ((_$e18618_
                                                    (gx#stx-getq
                                                     'plist:
                                                     _L17425_)))
                                               (if _$e18618_
                                                   _$e18618_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '@list)
                                                         '())))))))
                                      _g1762917640_))))
                             (_g1762718622_
                              (let ((_$e18626_ (gx#stx-getq 'name: _L17425_)))
                                (if _$e18626_ _$e18626_ _L17430_))))))
                       _g1760117612_))))
              (_g1759918630_
               (let ((_$e18634_ (gx#stx-getq 'id: _L17425_)))
                 (if _$e18634_
                     _$e18634_
                     (if (gx#module-context? (gx#current-expander-context))
                         (_module-type-id17339_ _L17430_)
                         (gx#genident _L17430_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1749117559_
                                                _hd1748817549_
                                                _hd1748517539_
                                                _hd1748217529_
                                                _hd1747917519_
                                                _hd1747617509_)
                                               (_g1746717498_ _g1746817502_))))
                                       (_g1746717498_ _g1746817502_))))
                               (_g1746717498_ _g1746817502_))))
                       (_g1746717498_ _g1746817502_))))
               (_g1746717498_ _g1746817502_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1746717498_ _g1746817502_))))
                                       (_g1746717498_ _g1746817502_)))))
                           (_g1746618638_
                            (if _struct?17331_
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
                         (_g1734117368_ _g1734217372_)))
                   _tl1736217422_
                   _hd1736117419_
                   _hd1735817409_
                   _hd1735517399_
                   _hd1735217389_)))
              (_g1734117368_ _g1734217372_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1734117368_ _g1734217372_))))
                                      (_g1734117368_ _g1734217372_))))
                              (_g1734117368_ _g1734217372_))))
                      (_g1734117368_ _g1734217372_)))))
          (_g1734018642_ _stx17329_)))))
  (define |gerbil/core$<MOP>$<MOP:1>[:0:]#defstruct-type|
    (lambda (_stx18942_)
      (|gerbil/core$<MOP>$<MOP:1>[1]#generate-typedef| _stx18942_ '#t)))
  (define |gerbil/core$<MOP>$<MOP:1>[:0:]#defclass-type|
    (lambda (_stx18945_)
      (|gerbil/core$<MOP>$<MOP:1>[1]#generate-typedef| _stx18945_ '#f))))
