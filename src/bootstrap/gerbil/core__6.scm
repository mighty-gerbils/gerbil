(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<MOP>$<MOP:1>[1]#generate-typedef|
    (lambda (_stx17790_ _struct?17792_)
      (letrec ((_wrap17794_
                (lambda (_e-stx19263_)
                  (gx#stx-wrap-source
                   _e-stx19263_
                   (gx#stx-source _stx17790_))))
               (_slotify17796_
                (lambda (_field19128_ _off19130_)
                  (let* ((___stx3955639557_ _field19128_)
                         (_g1913319160_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             ___stx3955639557_))))
                    (let ((___kont3955939560_
                           (lambda (_L19244_ _L19246_)
                             (cons _off19130_
                                   (cons _L19246_ (cons _L19244_ '())))))
                          (___kont3956139562_
                           (lambda (_L19197_ _L19199_ _L19200_)
                             (cons _off19130_
                                   (cons _L19199_ (cons _L19197_ '()))))))
                      (if (gx#stx-pair? ___stx3955639557_)
                          (let ((_e1913919224_
                                 (gx#syntax-e ___stx3955639557_)))
                            (let ((_tl1913719231_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1913919224_)))
                                  (_hd1913819228_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1913919224_))))
                              (if (gx#stx-pair? _tl1913719231_)
                                  (let ((_e1914219234_
                                         (gx#syntax-e _tl1913719231_)))
                                    (let ((_tl1914019241_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1914219234_)))
                                          (_hd1914119238_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1914219234_))))
                                      (if (gx#stx-null? _tl1914019241_)
                                          (___kont3955939560_
                                           _hd1914119238_
                                           _hd1913819228_)
                                          (if (gx#stx-pair? _tl1914019241_)
                                              (let ((_e1915419187_
                                                     (gx#syntax-e
                                                      _tl1914019241_)))
                                                (let ((_tl1915219194_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1915419187_)))
                                                      (_hd1915319191_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1915419187_))))
                                                  (if (gx#stx-null?
                                                       _tl1915219194_)
                                                      (___kont3956139562_
                                                       _hd1915319191_
                                                       _hd1914119238_
                                                       _hd1913819228_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g1913319160_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g1913319160_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g1913319160_)))))
                          (let () (declare (not safe)) (_g1913319160_)))))))
               (_slot-name17797_
                (lambda (_slot-spec19045_)
                  (let* ((_g1904819067_
                          (lambda (_g1904919063_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g1904919063_)))
                         (_g1904719124_
                          (lambda (_g1904919071_)
                            (if (gx#stx-pair? _g1904919071_)
                                (let ((_e1905519074_
                                       (gx#syntax-e _g1904919071_)))
                                  (let ((_hd1905419078_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1905519074_)))
                                        (_tl1905319081_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1905519074_))))
                                    (if (gx#stx-pair? _tl1905319081_)
                                        (let ((_e1905819084_
                                               (gx#syntax-e _tl1905319081_)))
                                          (let ((_hd1905719088_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1905819084_)))
                                                (_tl1905619091_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1905819084_))))
                                            (if (gx#stx-pair? _tl1905619091_)
                                                (let ((_e1906119094_
                                                       (gx#syntax-e
                                                        _tl1905619091_)))
                                                  (let ((_hd1906019098_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1906119094_)))
                                                        (_tl1905919101_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1906119094_))))
                                                    (if (gx#stx-null?
                                                         _tl1905919101_)
                                                        ((lambda (_L19104_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L19106_
                          _L19107_)
                   _L19107_)
                 _hd1906019098_
                 _hd1905719088_
                 _hd1905419078_)
                (let () (declare (not safe)) (_g1904819067_ _g1904919071_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g1904819067_
                                                   _g1904919071_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g1904819067_ _g1904919071_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g1904819067_ _g1904919071_))))))
                    (declare (not safe))
                    (_g1904719124_ _slot-spec19045_))))
               (_class-opt?17798_
                (lambda (_key19042_)
                  (memq (gx#stx-e _key19042_)
                        '(slots:
                          id:
                          name:
                          properties:
                          constructor:
                          unchecked:))))
               (_module-type-id17799_
                (lambda (_type-t19029_)
                  (let ((_$e19032_
                         (gx#module-context-ns (gx#current-expander-context))))
                    (if _$e19032_
                        ((lambda (_ns19036_)
                           (gx#stx-identifier
                            _type-t19029_
                            _ns19036_
                            '"#"
                            _type-t19029_))
                         _$e19032_)
                        (let ((_mid19039_
                               (gx#expander-context-id
                                (gx#current-expander-context))))
                          (gx#stx-identifier
                           _type-t19029_
                           _mid19039_
                           '"#"
                           _type-t19029_)))))))
        (let* ((_g1780117828_
                (lambda (_g1780217824_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1780217824_)))
               (_g1780019025_
                (lambda (_g1780217832_)
                  (if (gx#stx-pair? _g1780217832_)
                      (let ((_e1781017835_ (gx#syntax-e _g1780217832_)))
                        (let ((_hd1780917839_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1781017835_)))
                              (_tl1780817842_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1781017835_))))
                          (if (gx#stx-pair? _tl1780817842_)
                              (let ((_e1781317845_
                                     (gx#syntax-e _tl1780817842_)))
                                (let ((_hd1781217849_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1781317845_)))
                                      (_tl1781117852_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1781317845_))))
                                  (if (gx#stx-pair? _tl1781117852_)
                                      (let ((_e1781617855_
                                             (gx#syntax-e _tl1781117852_)))
                                        (let ((_hd1781517859_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1781617855_)))
                                              (_tl1781417862_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1781617855_))))
                                          (if (gx#stx-pair? _tl1781417862_)
                                              (let ((_e1781917865_
                                                     (gx#syntax-e
                                                      _tl1781417862_)))
                                                (let ((_hd1781817869_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1781917865_)))
                                                      (_tl1781717872_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1781917865_))))
                                                  (if (gx#stx-pair?
                                                       _tl1781717872_)
                                                      (let ((_e1782217875_
                                                             (gx#syntax-e
                                                              _tl1781717872_)))
                                                        (let ((_hd1782117879_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e1782217875_)))
                      (_tl1782017882_
                       (let () (declare (not safe)) (##cdr _e1782217875_))))
                  ((lambda (_L17885_ _L17887_ _L17888_ _L17889_ _L17890_)
                     (if (and (gx#identifier? _L17890_)
                              (or (gx#identifier? _L17888_)
                                  (gx#stx-false? _L17888_))
                              (gx#identifier? _L17887_)
                              (gx#stx-plist? _L17885_ _class-opt?17798_))
                         (let* ((_slots17924_
                                 (let ((_$e17920_
                                        (gx#stx-getq 'slots: _L17885_)))
                                   (if _$e17920_ _$e17920_ '())))
                                (_g1792717958_
                                 (lambda (_g1792817954_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _g1792817954_)))
                                (_g1792619021_
                                 (lambda (_g1792817962_)
                                   (if (gx#stx-pair? _g1792817962_)
                                       (let ((_e1793717965_
                                              (gx#syntax-e _g1792817962_)))
                                         (let ((_hd1793617969_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e1793717965_)))
                                               (_tl1793517972_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e1793717965_))))
                                           (if (gx#stx-pair? _tl1793517972_)
                                               (let ((_e1794017975_
                                                      (gx#syntax-e
                                                       _tl1793517972_)))
                                                 (let ((_hd1793917979_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e1794017975_)))
                                                       (_tl1793817982_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e1794017975_))))
                                                   (if (gx#stx-pair?
                                                        _tl1793817982_)
                                                       (let ((_e1794317985_
                                                              (gx#syntax-e
                                                               _tl1793817982_)))
                                                         (let ((_hd1794217989_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e1794317985_)))
                       (_tl1794117992_
                        (let () (declare (not safe)) (##cdr _e1794317985_))))
                   (if (gx#stx-pair? _tl1794117992_)
                       (let ((_e1794617995_ (gx#syntax-e _tl1794117992_)))
                         (let ((_hd1794517999_
                                (let ()
                                  (declare (not safe))
                                  (##car _e1794617995_)))
                               (_tl1794418002_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e1794617995_))))
                           (if (gx#stx-pair? _tl1794418002_)
                               (let ((_e1794918005_
                                      (gx#syntax-e _tl1794418002_)))
                                 (let ((_hd1794818009_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e1794918005_)))
                                       (_tl1794718012_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e1794918005_))))
                                   (if (gx#stx-pair? _tl1794718012_)
                                       (let ((_e1795218015_
                                              (gx#syntax-e _tl1794718012_)))
                                         (let ((_hd1795118019_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e1795218015_)))
                                               (_tl1795018022_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e1795218015_))))
                                           (if (gx#stx-null? _tl1795018022_)
                                               ((lambda (_L18025_
                                                         _L18027_
                                                         _L18028_
                                                         _L18029_
                                                         _L18030_
                                                         _L18031_)
                                                  (let ()
                                                    (let* ((_g1806018068_
                                                            (lambda (_g1806118064_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g1806118064_)))
                                                           (_g1805919013_
                                                            (lambda (_g1806118072_)
                                                              ((lambda (_L18075_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g1808818096_
                                   (lambda (_g1808918092_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g1808918092_)))
                                  (_g1808719005_
                                   (lambda (_g1808918100_)
                                     ((lambda (_L18103_)
                                        (let ()
                                          (let* ((_g1811618124_
                                                  (lambda (_g1811718120_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g1811718120_)))
                                                 (_g1811518997_
                                                  (lambda (_g1811718128_)
                                                    ((lambda (_L18131_)
                                                       (let ()
                                                         (let* ((_g1814418152_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1814518148_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g1814518148_)))
                        (_g1814318993_
                         (lambda (_g1814518156_)
                           ((lambda (_L18159_)
                              (let ()
                                (let* ((_g1817218189_
                                        (lambda (_g1817318185_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g1817318185_)))
                                       (_g1817118989_
                                        (lambda (_g1817318193_)
                                          (if (gx#stx-pair/null? _g1817318193_)
                                              (let ((_g42672_
                                                     (gx#syntax-split-splice
                                                      _g1817318193_
                                                      '0)))
                                                (begin
                                                  (let ((_g42673_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g42672_)
                                                               (##vector-length
                                                                _g42672_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g42673_ 2)))
                (error "Context expects 2 values" _g42673_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target1817518196_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g42672_
                                                            0)))
                                                        (_tl1817718199_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g42672_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _tl1817718199_)
                                                        (letrec ((_loop1817818202_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd1817618206_ _slot1818218209_)
                            (if (gx#stx-pair? _hd1817618206_)
                                (let ((_e1817918212_
                                       (gx#syntax-e _hd1817618206_)))
                                  (let ((_lp-hd1818018216_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1817918212_)))
                                        (_lp-tl1818118219_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1817918212_))))
                                    (let ((__tmp42701
                                           (cons _lp-hd1818018216_
                                                 _slot1818218209_)))
                                      (declare (not safe))
                                      (_loop1817818202_
                                       _lp-tl1818118219_
                                       __tmp42701))))
                                (let ((_slot1818318222_
                                       (reverse _slot1818218209_)))
                                  ((lambda (_L18226_)
                                     (let ()
                                       (let* ((_g1824318251_
                                               (lambda (_g1824418247_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g1824418247_)))
                                              (_g1824218857_
                                               (lambda (_g1824418255_)
                                                 ((lambda (_L18258_)
                                                    (let ()
                                                      (let* ((_g1827118279_
                                                              (lambda (_g1827218275_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _g1827218275_)))
                     (_g1827018853_
                      (lambda (_g1827218283_)
                        ((lambda (_L18286_)
                           (let ()
                             (let* ((_g1829918307_
                                     (lambda (_g1830018303_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g1830018303_)))
                                    (_g1829818849_
                                     (lambda (_g1830018311_)
                                       ((lambda (_L18314_)
                                          (let ()
                                            (let* ((_g1832718335_
                                                    (lambda (_g1832818331_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g1832818331_)))
                                                   (_g1832618845_
                                                    (lambda (_g1832818339_)
                                                      ((lambda (_L18342_)
                                                         (let ()
                                                           (let* ((_attrs18355_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if _struct?17792_
                               (gx#stx-map
                                _slotify17796_
                                _slots17924_
                                (iota (gx#stx-length _slots17924_)))
                               _slots17924_))
                          (_g1835818384_
                           (lambda (_g1835918380_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g1835918380_)))
                          (_g1835718757_
                           (lambda (_g1835918388_)
                             (if (gx#stx-pair/null? _g1835918388_)
                                 (let ((_g42674_
                                        (gx#syntax-split-splice
                                         _g1835918388_
                                         '0)))
                                   (begin
                                     (let ((_g42675_
                                            (let ()
                                              (declare (not safe))
                                              (if (##values? _g42674_)
                                                  (##vector-length _g42674_)
                                                  1))))
                                       (if (not (let ()
                                                  (declare (not safe))
                                                  (##fx= _g42675_ 2)))
                                           (error "Context expects 2 values"
                                                  _g42675_)))
                                     (let ((_target1836218391_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref _g42674_ 0)))
                                           (_tl1836418394_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref _g42674_ 1))))
                                       (if (gx#stx-null? _tl1836418394_)
                                           (letrec ((_loop1836518397_
                                                     (lambda (_hd1836318401_
                                                              _def-setf1836918404_
                                                              _def-getf1837018406_)
                                                       (if (gx#stx-pair?
                                                            _hd1836318401_)
                                                           (let ((_e1836618409_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd1836318401_)))
                     (let ((_lp-hd1836718413_
                            (let ()
                              (declare (not safe))
                              (##car _e1836618409_)))
                           (_lp-tl1836818416_
                            (let ()
                              (declare (not safe))
                              (##cdr _e1836618409_))))
                       (if (gx#stx-pair? _lp-hd1836718413_)
                           (let ((_e1837518419_
                                  (gx#syntax-e _lp-hd1836718413_)))
                             (let ((_hd1837418423_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e1837518419_)))
                                   (_tl1837318426_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e1837518419_))))
                               (if (gx#stx-pair? _tl1837318426_)
                                   (let ((_e1837818429_
                                          (gx#syntax-e _tl1837318426_)))
                                     (let ((_hd1837718433_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e1837818429_)))
                                           (_tl1837618436_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e1837818429_))))
                                       (if (gx#stx-null? _tl1837618436_)
                                           (let ((__tmp42686
                                                  (cons _hd1837718433_
                                                        _def-setf1836918404_))
                                                 (__tmp42685
                                                  (cons _hd1837418423_
                                                        _def-getf1837018406_)))
                                             (declare (not safe))
                                             (_loop1836518397_
                                              _lp-tl1836818416_
                                              __tmp42686
                                              __tmp42685))
                                           (let ()
                                             (declare (not safe))
                                             (_g1835818384_ _g1835918388_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g1835818384_ _g1835918388_)))))
                           (let ()
                             (declare (not safe))
                             (_g1835818384_ _g1835918388_)))))
                   (let ((_def-setf1837118439_ (reverse _def-setf1836918404_))
                         (_def-getf1837218442_ (reverse _def-getf1837018406_)))
                     ((lambda (_L18445_ _L18447_)
                        (let ()
                          (let* ((_g1846518491_
                                  (lambda (_g1846618487_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g1846618487_)))
                                 (_g1846418605_
                                  (lambda (_g1846618495_)
                                    (if (gx#stx-pair/null? _g1846618495_)
                                        (let ((_g42676_
                                               (gx#syntax-split-splice
                                                _g1846618495_
                                                '0)))
                                          (begin
                                            (let ((_g42677_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g42676_)
                                                         (##vector-length
                                                          _g42676_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g42677_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g42677_)))
                                            (let ((_target1846918498_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g42676_
                                                      0)))
                                                  (_tl1847118501_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g42676_
                                                      1))))
                                              (if (gx#stx-null? _tl1847118501_)
                                                  (letrec ((_loop1847218504_
                                                            (lambda (_hd1847018508_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _def-usetf1847618511_
                             _def-ugetf1847718513_)
                      (if (gx#stx-pair? _hd1847018508_)
                          (let ((_e1847318516_ (gx#syntax-e _hd1847018508_)))
                            (let ((_lp-hd1847418520_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1847318516_)))
                                  (_lp-tl1847518523_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1847318516_))))
                              (if (gx#stx-pair? _lp-hd1847418520_)
                                  (let ((_e1848218526_
                                         (gx#syntax-e _lp-hd1847418520_)))
                                    (let ((_hd1848118530_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1848218526_)))
                                          (_tl1848018533_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1848218526_))))
                                      (if (gx#stx-pair? _tl1848018533_)
                                          (let ((_e1848518536_
                                                 (gx#syntax-e _tl1848018533_)))
                                            (let ((_hd1848418540_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1848518536_)))
                                                  (_tl1848318543_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1848518536_))))
                                              (if (gx#stx-null? _tl1848318543_)
                                                  (let ((__tmp42680
                                                         (cons _hd1848418540_
                                                               _def-usetf1847618511_))
                                                        (__tmp42679
                                                         (cons _hd1848118530_
                                                               _def-ugetf1847718513_)))
                                                    (declare (not safe))
                                                    (_loop1847218504_
                                                     _lp-tl1847518523_
                                                     __tmp42680
                                                     __tmp42679))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g1846518491_
                                                     _g1846618495_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g1846518491_ _g1846618495_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g1846518491_ _g1846618495_)))))
                          (let ((_def-usetf1847818546_
                                 (reverse _def-usetf1847618511_))
                                (_def-ugetf1847918549_
                                 (reverse _def-ugetf1847718513_)))
                            ((lambda (_L18552_ _L18554_)
                               (let ()
                                 (let ()
                                   (let ((__tmp42678
                                          (cons (gx#datum->syntax '#f 'begin)
                                                (cons _L18286_
                                                      (cons _L18342_
                                                            (cons _L18314_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (foldr (lambda (_g1857218581_ _g1857318584_)
                                   (cons _g1857218581_ _g1857318584_))
                                 (foldr (lambda (_g1857418587_ _g1857518590_)
                                          (cons _g1857418587_ _g1857518590_))
                                        (foldr (lambda (_g1857618593_
                                                        _g1857718596_)
                                                 (cons _g1857618593_
                                                       _g1857718596_))
                                               (foldr (lambda (_g1857818599_
                                                               _g1857918602_)
                                                        (cons _g1857818599_
                                                              _g1857918602_))
                                                      '()
                                                      _L18552_)
                                               _L18554_)
                                        _L18445_)
                                 _L18447_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (declare (not safe))
                                     (_wrap17794_ __tmp42678)))))
                             _def-usetf1847818546_
                             _def-ugetf1847918549_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop1847218504_
                                                       _target1846918498_
                                                       '()
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g1846518491_
                                                     _g1846618495_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g1846518491_ _g1846618495_)))))
                                 (__tmp42681
                                  (if (gx#stx-e
                                       (gx#stx-getq 'unchecked: _L17885_))
                                      (gx#stx-map
                                       (lambda (_ref18609_)
                                         (let* ((_g1861218631_
                                                 (lambda (_g1861318627_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _g1861318627_)))
                                                (_g1861118753_
                                                 (lambda (_g1861318635_)
                                                   (if (gx#stx-pair?
                                                        _g1861318635_)
                                                       (let ((_e1861918638_
                                                              (gx#syntax-e
                                                               _g1861318635_)))
                                                         (let ((_hd1861818642_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e1861918638_)))
                       (_tl1861718645_
                        (let () (declare (not safe)) (##cdr _e1861918638_))))
                   (if (gx#stx-pair? _tl1861718645_)
                       (let ((_e1862218648_ (gx#syntax-e _tl1861718645_)))
                         (let ((_hd1862118652_
                                (let ()
                                  (declare (not safe))
                                  (##car _e1862218648_)))
                               (_tl1862018655_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e1862218648_))))
                           (if (gx#stx-pair? _tl1862018655_)
                               (let ((_e1862518658_
                                      (gx#syntax-e _tl1862018655_)))
                                 (let ((_hd1862418662_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e1862518658_)))
                                       (_tl1862318665_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e1862518658_))))
                                   (if (gx#stx-null? _tl1862318665_)
                                       ((lambda (_L18668_ _L18670_ _L18671_)
                                          (let* ((_g1868918704_
                                                  (lambda (_g1869018700_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g1869018700_)))
                                                 (_g1868818749_
                                                  (lambda (_g1869018708_)
                                                    (if (gx#stx-pair?
                                                         _g1869018708_)
                                                        (let ((_e1869518711_
                                                               (gx#syntax-e
                                                                _g1869018708_)))
                                                          (let ((_hd1869418715_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e1869518711_)))
                        (_tl1869318718_
                         (let () (declare (not safe)) (##cdr _e1869518711_))))
                    (if (gx#stx-pair? _tl1869318718_)
                        (let ((_e1869818721_ (gx#syntax-e _tl1869318718_)))
                          (let ((_hd1869718725_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1869818721_)))
                                (_tl1869618728_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1869818721_))))
                            (if (gx#stx-null? _tl1869618728_)
                                ((lambda (_L18731_ _L18733_)
                                   (let ()
                                     (cons (let ((__tmp42682
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'def)
                                                        (cons _L18733_
                                                              (cons (cons _L18027_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons _L17890_
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'quote)
                                                    (cons _L18671_ '()))
                                              '())))
                            '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (_wrap17794_ __tmp42682))
                                           (cons (let ((__tmp42683
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'def)
                                                              (cons _L18731_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons _L18025_
                                        (cons _L17890_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'quote)
                                                          (cons _L18671_ '()))
                                                    '())))
                                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_wrap17794_ __tmp42683))
                                                 '()))))
                                 _hd1869718725_
                                 _hd1869418715_)
                                (let ()
                                  (declare (not safe))
                                  (_g1868918704_ _g1869018708_)))))
                        (let ()
                          (declare (not safe))
                          (_g1868918704_ _g1869018708_)))))
                (let () (declare (not safe)) (_g1868918704_ _g1869018708_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (__tmp42684
                                                  (list (gx#stx-identifier
                                                         _L18670_
                                                         '"&"
                                                         _L18670_)
                                                        (gx#stx-identifier
                                                         _L18668_
                                                         '"&"
                                                         _L18668_))))
                                            (declare (not safe))
                                            (_g1868818749_ __tmp42684)))
                                        _hd1862418662_
                                        _hd1862118652_
                                        _hd1861818642_)
                                       (let ()
                                         (declare (not safe))
                                         (_g1861218631_ _g1861318635_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g1861218631_ _g1861318635_)))))
                       (let ()
                         (declare (not safe))
                         (_g1861218631_ _g1861318635_)))))
               (let () (declare (not safe)) (_g1861218631_ _g1861318635_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g1861118753_ _ref18609_)))
                                       _attrs18355_)
                                      '())))
                            (declare (not safe))
                            (_g1846418605_ __tmp42681))))
                      _def-setf1837118439_
                      _def-getf1837218442_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ()
                                               (declare (not safe))
                                               (_loop1836518397_
                                                _target1836218391_
                                                '()
                                                '())))
                                           (let ()
                                             (declare (not safe))
                                             (_g1835818384_ _g1835918388_))))))
                                 (let ()
                                   (declare (not safe))
                                   (_g1835818384_ _g1835918388_)))))
                          (__tmp42687
                           (gx#stx-map
                            (lambda (_ref18761_)
                              (let* ((_g1876418783_
                                      (lambda (_g1876518779_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g1876518779_)))
                                     (_g1876318841_
                                      (lambda (_g1876518787_)
                                        (if (gx#stx-pair? _g1876518787_)
                                            (let ((_e1877118790_
                                                   (gx#syntax-e
                                                    _g1876518787_)))
                                              (let ((_hd1877018794_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1877118790_)))
                                                    (_tl1876918797_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1877118790_))))
                                                (if (gx#stx-pair?
                                                     _tl1876918797_)
                                                    (let ((_e1877418800_
                                                           (gx#syntax-e
                                                            _tl1876918797_)))
                                                      (let ((_hd1877318804_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e1877418800_)))
                    (_tl1877218807_
                     (let () (declare (not safe)) (##cdr _e1877418800_))))
                (if (gx#stx-pair? _tl1877218807_)
                    (let ((_e1877718810_ (gx#syntax-e _tl1877218807_)))
                      (let ((_hd1877618814_
                             (let ()
                               (declare (not safe))
                               (##car _e1877718810_)))
                            (_tl1877518817_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1877718810_))))
                        (if (gx#stx-null? _tl1877518817_)
                            ((lambda (_L18820_ _L18822_ _L18823_)
                               (cons (let ((__tmp42688
                                            (cons (gx#datum->syntax '#f 'def)
                                                  (cons _L18822_
                                                        (cons (cons _L18029_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _L17890_
                                  (cons (cons (gx#datum->syntax '#f 'quote)
                                              (cons _L18823_ '()))
                                        '())))
                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (_wrap17794_ __tmp42688))
                                     (cons (let ((__tmp42689
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'def)
                                                        (cons _L18820_
                                                              (cons (cons _L18028_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons _L17890_
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'quote)
                                                    (cons _L18823_ '()))
                                              '())))
                            '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (_wrap17794_ __tmp42689))
                                           '())))
                             _hd1877618814_
                             _hd1877318804_
                             _hd1877018794_)
                            (let ()
                              (declare (not safe))
                              (_g1876418783_ _g1876518787_)))))
                    (let ()
                      (declare (not safe))
                      (_g1876418783_ _g1876518787_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g1876418783_
                                                       _g1876518787_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g1876418783_
                                               _g1876518787_))))))
                                (declare (not safe))
                                (_g1876318841_ _ref18761_)))
                            _attrs18355_)))
                     (declare (not safe))
                     (_g1835718757_ __tmp42687))))
               _g1832818339_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp42690
                                                    (let ((__tmp42691
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'def)
                         (cons _L17887_
                               (cons (cons _L18030_ (cons _L17890_ '()))
                                     '())))))
              (declare (not safe))
              (_wrap17794_ __tmp42691))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g1832618845_ __tmp42690))))
                                        _g1830018311_)))
                                    (__tmp42692
                                     (if (gx#stx-false? _L17888_)
                                         (cons (gx#datum->syntax '#f 'begin)
                                               '())
                                         (let ((__tmp42693
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'def)
                                                      (cons (cons _L17888_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '$args))
                    (cons (cons (gx#datum->syntax '#f 'apply)
                                (cons _L18031_
                                      (cons _L17890_
                                            (cons (gx#datum->syntax '#f '$args)
                                                  '()))))
                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_wrap17794_ __tmp42693)))))
                               (declare (not safe))
                               (_g1829818849_ __tmp42692))))
                         _g1827218283_)))
                     (__tmp42694
                      (let ((__tmp42695
                             (cons (gx#datum->syntax '#f 'def)
                                   (cons _L17890_ (cons _L18258_ '())))))
                        (declare (not safe))
                        (_wrap17794_ __tmp42695))))
                (declare (not safe))
                (_g1827018853_ __tmp42694))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1824418255_)))
                                              (__tmp42696
                                               (if _struct?17792_
                                                   (let* ((_g1886118869_
                                                           (lambda (_g1886218865_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g1886218865_)))
                                                          (_g1886018896_
                                                           (lambda (_g1886218873_)
                                                             ((lambda (_L18876_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'make-struct-type)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _L18075_ '()))
                                      (cons _L17889_
                                            (cons _L18876_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'quote)
                                                              (cons _L18103_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _L18131_
                      (cons (cons (gx#datum->syntax '#f 'quote)
                                  (cons _L18159_ '()))
                            (cons (cons (gx#datum->syntax '#f 'quote)
                                        (cons (foldr (lambda (_g1888718890_
                                                              _g1888818893_)
                                                       (cons _g1888718890_
                                                             _g1888818893_))
                                                     '()
                                                     _L18226_)
                                              '()))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      _g1886218873_)))
                  (__tmp42700 (gx#stx-length _slots17924_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_g1886018896_
                                                      __tmp42700))
                                                   (let* ((_g1890018917_
                                                           (lambda (_g1890118913_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g1890118913_)))
                                                          (_g1889918985_
                                                           (lambda (_g1890118921_)
                                                             (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1890118921_)
                         (let ((_g42697_
                                (gx#syntax-split-splice _g1890118921_ '0)))
                           (begin
                             (let ((_g42698_
                                    (let ()
                                      (declare (not safe))
                                      (if (##values? _g42697_)
                                          (##vector-length _g42697_)
                                          1))))
                               (if (not (let ()
                                          (declare (not safe))
                                          (##fx= _g42698_ 2)))
                                   (error "Context expects 2 values"
                                          _g42698_)))
                             (let ((_target1890318924_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref _g42697_ 0)))
                                   (_tl1890518927_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref _g42697_ 1))))
                               (if (gx#stx-null? _tl1890518927_)
                                   (letrec ((_loop1890618930_
                                             (lambda (_hd1890418934_
                                                      _super1891018937_)
                                               (if (gx#stx-pair?
                                                    _hd1890418934_)
                                                   (let ((_e1890718940_
                                                          (gx#syntax-e
                                                           _hd1890418934_)))
                                                     (let ((_lp-hd1890818944_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e1890718940_)))
                                                           (_lp-tl1890918947_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e1890718940_))))
                                                       (let ((__tmp42699
                                                              (cons _lp-hd1890818944_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _super1891018937_)))
                 (declare (not safe))
                 (_loop1890618930_ _lp-tl1890918947_ __tmp42699))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_super1891118950_
                                                          (reverse _super1891018937_)))
                                                     ((lambda (_L18954_)
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'make-class-type)
                        (cons (cons (gx#datum->syntax '#f 'quote)
                                    (cons _L18075_ '()))
                              (cons (cons (gx#datum->syntax '#f '@list)
                                          (foldr (lambda (_g1897018973_
                                                          _g1897118976_)
                                                   (cons _g1897018973_
                                                         _g1897118976_))
                                                 '()
                                                 _L18954_))
                                    (cons (cons (gx#datum->syntax '#f 'quote)
                                                (cons (foldr (lambda (_g1896818979_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1896918982_)
                       (cons _g1896818979_ _g1896918982_))
                     '()
                     _L18226_)
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons _L18103_ '()))
                                                (cons _L18131_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons _L18159_ '()))
                    '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              _super1891118950_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ()
                                       (declare (not safe))
                                       (_loop1890618930_
                                        _target1890318924_
                                        '())))
                                   (let ()
                                     (declare (not safe))
                                     (_g1890018917_ _g1890118921_))))))
                         (let ()
                           (declare (not safe))
                           (_g1890018917_ _g1890118921_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_g1889918985_
                                                      _L17889_)))))
                                         (declare (not safe))
                                         (_g1824218857_ __tmp42696))))
                                   _slot1818318222_))))))
                  (let ()
                    (declare (not safe))
                    (_loop1817818202_ _target1817518196_ '())))
                (let () (declare (not safe)) (_g1817218189_ _g1817318193_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g1817218189_
                                                 _g1817318193_)))))
                                       (__tmp42702
                                        (gx#stx-map
                                         _slot-name17797_
                                         _slots17924_)))
                                  (declare (not safe))
                                  (_g1817118989_ __tmp42702))))
                            _g1814518156_)))
                        (__tmp42703 (gx#stx-getq 'constructor: _L17885_)))
                   (declare (not safe))
                   (_g1814318993_ __tmp42703))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1811718128_)))
                                                 (__tmp42704
                                                  (let ((_$e19001_
                                                         (gx#stx-getq
                                                          'properties:
                                                          _L17885_)))
                                                    (if _$e19001_
                                                        _$e19001_
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               '@list)
                                                              '())))))
                                            (declare (not safe))
                                            (_g1811518997_ __tmp42704))))
                                      _g1808918100_)))
                                  (__tmp42705
                                   (let ((_$e19009_
                                          (gx#stx-getq 'name: _L17885_)))
                                     (if _$e19009_ _$e19009_ _L17890_))))
                             (declare (not safe))
                             (_g1808719005_ __tmp42705))))
                       _g1806118072_)))
                   (__tmp42706
                    (let ((_$e19017_ (gx#stx-getq 'id: _L17885_)))
                      (if _$e19017_
                          _$e19017_
                          (if (gx#module-context?
                               (gx#current-expander-context))
                              (let ()
                                (declare (not safe))
                                (_module-type-id17799_ _L17890_))
                              (gx#genident _L17890_))))))
              (declare (not safe))
              (_g1805919013_ __tmp42706))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1795118019_
                                                _hd1794818009_
                                                _hd1794517999_
                                                _hd1794217989_
                                                _hd1793917979_
                                                _hd1793617969_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_g1792717958_
                                                  _g1792817962_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g1792717958_ _g1792817962_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g1792717958_ _g1792817962_)))))
                       (let ()
                         (declare (not safe))
                         (_g1792717958_ _g1792817962_)))))
               (let () (declare (not safe)) (_g1792717958_ _g1792817962_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g1792717958_
                                                  _g1792817962_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g1792717958_ _g1792817962_)))))
                                (__tmp42707
                                 (if _struct?17792_
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
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'make-struct-field-unchecked-accessor)
                           (cons (gx#datum->syntax
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
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'make-class-slot-unchecked-accessor)
                           (cons (gx#datum->syntax
                                  '#f
                                  'make-class-slot-unchecked-mutator)
                                 '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (_g1792619021_ __tmp42707))
                         (let ()
                           (declare (not safe))
                           (_g1780117828_ _g1780217832_))))
                   _tl1782017882_
                   _hd1782117879_
                   _hd1781817869_
                   _hd1781517859_
                   _hd1781217849_)))
              (let () (declare (not safe)) (_g1780117828_ _g1780217832_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g1780117828_
                                                 _g1780217832_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1780117828_ _g1780217832_)))))
                              (let ()
                                (declare (not safe))
                                (_g1780117828_ _g1780217832_)))))
                      (let ()
                        (declare (not safe))
                        (_g1780117828_ _g1780217832_))))))
          (declare (not safe))
          (_g1780019025_ _stx17790_)))))
  (define |gerbil/core$<MOP>$<MOP:1>[:0:]#defstruct-type|
    (lambda (_stx19270_)
      (let ()
        (declare (not safe))
        (|gerbil/core$<MOP>$<MOP:1>[1]#generate-typedef| _stx19270_ '#t))))
  (define |gerbil/core$<MOP>$<MOP:1>[:0:]#defclass-type|
    (lambda (_stx19273_)
      (let ()
        (declare (not safe))
        (|gerbil/core$<MOP>$<MOP:1>[1]#generate-typedef| _stx19273_ '#f)))))
