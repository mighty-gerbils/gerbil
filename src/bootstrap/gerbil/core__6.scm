(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<MOP>$<MOP:1>[1]#module-type-id|
    (lambda (_type-t19219_)
      (let ((_$e19222_ (gx#module-context-ns (gx#current-expander-context))))
        (if _$e19222_
            ((lambda (_ns19226_)
               (gx#stx-identifier
                _type-t19219_
                _ns19226_
                '"#"
                _type-t19219_
                '"::t"))
             _$e19222_)
            (let ((_mid19229_
                   (gx#expander-context-id (gx#current-expander-context))))
              (gx#stx-identifier
               _type-t19219_
               _mid19229_
               '"#"
               _type-t19219_
               '"::t"))))))
  (define |gerbil/core$<MOP>$<MOP:1>[1]#make-class-type-id|
    (lambda (_type-t19216_)
      (if (gx#module-context? (gx#current-expander-context))
          (let ()
            (declare (not safe))
            (|gerbil/core$<MOP>$<MOP:1>[1]#module-type-id| _type-t19216_))
          (make-symbol '"__" (gensym (gx#stx-e _type-t19216_)) '"::t"))))
  (define |gerbil/core$<MOP>$<MOP:1>[1]#generate-typedef|
    (lambda (_stx17796_ _struct?17798_)
      (letrec ((_wrap17800_
                (lambda (_e-stx19213_)
                  (gx#stx-wrap-source
                   _e-stx19213_
                   (gx#stx-source _stx17796_))))
               (_slot-name17802_
                (lambda (_slot-spec19130_)
                  (let* ((_g1913319152_
                          (lambda (_g1913419148_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g1913419148_)))
                         (_g1913219209_
                          (lambda (_g1913419156_)
                            (if (gx#stx-pair? _g1913419156_)
                                (let ((_e1913819159_
                                       (gx#syntax-e _g1913419156_)))
                                  (let ((_hd1913919163_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1913819159_)))
                                        (_tl1914019166_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1913819159_))))
                                    (if (gx#stx-pair? _tl1914019166_)
                                        (let ((_e1914119169_
                                               (gx#syntax-e _tl1914019166_)))
                                          (let ((_hd1914219173_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1914119169_)))
                                                (_tl1914319176_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1914119169_))))
                                            (if (gx#stx-pair? _tl1914319176_)
                                                (let ((_e1914419179_
                                                       (gx#syntax-e
                                                        _tl1914319176_)))
                                                  (let ((_hd1914519183_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1914419179_)))
                                                        (_tl1914619186_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1914419179_))))
                                                    (if (gx#stx-null?
                                                         _tl1914619186_)
                                                        ((lambda (_L19189_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L19191_
                          _L19192_)
                   _L19192_)
                 _hd1914519183_
                 _hd1914219173_
                 _hd1913919163_)
                (let () (declare (not safe)) (_g1913319152_ _g1913419156_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g1913319152_
                                                   _g1913419156_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g1913319152_ _g1913419156_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g1913319152_ _g1913419156_))))))
                    (declare (not safe))
                    (_g1913219209_ _slot-spec19130_))))
               (_class-opt?17803_
                (lambda (_key19127_)
                  (memq (gx#stx-e _key19127_)
                        '(struct:
                          slots:
                          id:
                          name:
                          properties:
                          constructor:
                          final:
                          mixin:
                          metaclass:)))))
        (let* ((_g1780517832_
                (lambda (_g1780617828_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1780617828_)))
               (_g1780419123_
                (lambda (_g1780617836_)
                  (if (gx#stx-pair? _g1780617836_)
                      (let ((_e1781217839_ (gx#syntax-e _g1780617836_)))
                        (let ((_hd1781317843_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1781217839_)))
                              (_tl1781417846_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1781217839_))))
                          (if (gx#stx-pair? _tl1781417846_)
                              (let ((_e1781517849_
                                     (gx#syntax-e _tl1781417846_)))
                                (let ((_hd1781617853_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1781517849_)))
                                      (_tl1781717856_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1781517849_))))
                                  (if (gx#stx-pair? _tl1781717856_)
                                      (let ((_e1781817859_
                                             (gx#syntax-e _tl1781717856_)))
                                        (let ((_hd1781917863_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1781817859_)))
                                              (_tl1782017866_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1781817859_))))
                                          (if (gx#stx-pair? _tl1782017866_)
                                              (let ((_e1782117869_
                                                     (gx#syntax-e
                                                      _tl1782017866_)))
                                                (let ((_hd1782217873_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1782117869_)))
                                                      (_tl1782317876_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1782117869_))))
                                                  (if (gx#stx-pair?
                                                       _tl1782317876_)
                                                      (let ((_e1782417879_
                                                             (gx#syntax-e
                                                              _tl1782317876_)))
                                                        (let ((_hd1782517883_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e1782417879_)))
                      (_tl1782617886_
                       (let () (declare (not safe)) (##cdr _e1782417879_))))
                  ((lambda (_L17889_ _L17891_ _L17892_ _L17893_ _L17894_)
                     (if (and (gx#identifier? _L17894_)
                              (gx#identifier-list? _L17893_)
                              (or (gx#identifier? _L17892_)
                                  (gx#stx-false? _L17892_))
                              (gx#identifier? _L17891_)
                              (gx#stx-plist? _L17889_ _class-opt?17803_))
                         (let* ((_struct?17932_
                                 (let ((_$e17924_ _struct?17798_))
                                   (if _$e17924_
                                       _$e17924_
                                       (let ((_$e17928_
                                              (gx#stx-getq 'struct: _L17889_)))
                                         (if _$e17928_
                                             (gx#stx-e _$e17928_)
                                             '#f)))))
                                (_slots17939_
                                 (let ((_$e17935_
                                        (gx#stx-getq 'slots: _L17889_)))
                                   (if _$e17935_ _$e17935_ '())))
                                (_mixin-slots17946_
                                 (let ((_$e17942_
                                        (gx#stx-getq 'mixin: _L17889_)))
                                   (if _$e17942_ _$e17942_ '())))
                                (_accessible-slots17949_
                                 (append (gx#syntax->list _slots17939_)
                                         (gx#syntax->list _mixin-slots17946_)))
                                (_metaclass17952_
                                 (gx#stx-getq 'metaclass: _L17889_))
                                (_g1795517972_
                                 (lambda (_g1795617968_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _g1795617968_)))
                                (_g1795419119_
                                 (lambda (_g1795617976_)
                                   (if (gx#stx-pair/null? _g1795617976_)
                                       (let ((_g48659_
                                              (gx#syntax-split-splice
                                               _g1795617976_
                                               '0)))
                                         (begin
                                           (let ((_g48660_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g48659_)
                                                        (##vector-length
                                                         _g48659_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g48660_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g48660_)))
                                           (let ((_target1795817979_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g48659_ 0)))
                                                 (_tl1796017982_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g48659_
                                                     1))))
                                             (if (gx#stx-null? _tl1796017982_)
                                                 (letrec ((_loop1796117985_
                                                           (lambda (_hd1795917989_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _slot1796517992_)
                     (if (gx#stx-pair? _hd1795917989_)
                         (let ((_e1796217995_ (gx#syntax-e _hd1795917989_)))
                           (let ((_lp-hd1796317999_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e1796217995_)))
                                 (_lp-tl1796418002_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e1796217995_))))
                             (let ((__tmp48661
                                    (let ()
                                      (declare (not safe))
                                      (cons _lp-hd1796317999_
                                            _slot1796517992_))))
                               (declare (not safe))
                               (_loop1796117985_
                                _lp-tl1796418002_
                                __tmp48661))))
                         (let ((_slot1796618005_ (reverse _slot1796517992_)))
                           ((lambda (_L18009_)
                              (let ()
                                (let* ((_g1803018038_
                                        (lambda (_g1803118034_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g1803118034_)))
                                       (_g1802919111_
                                        (lambda (_g1803118042_)
                                          ((lambda (_L18045_)
                                             (let ()
                                               (let* ((_g1805818066_
                                                       (lambda (_g1805918062_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g1805918062_)))
                                                      (_g1805719103_
                                                       (lambda (_g1805918070_)
                                                         ((lambda (_L18073_)
                                                            (let ()
                                                              (let* ((_g1808618094_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g1808718090_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g1808718090_)))
                             (_g1808519099_
                              (lambda (_g1808718098_)
                                ((lambda (_L18101_)
                                   (let ()
                                     (let* ((_g1811418122_
                                             (lambda (_g1811518118_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g1811518118_)))
                                            (_g1811319095_
                                             (lambda (_g1811518126_)
                                               ((lambda (_L18129_)
                                                  (let ()
                                                    (let* ((_g1814218150_
                                                            (lambda (_g1814318146_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g1814318146_)))
                                                           (_g1814119091_
                                                            (lambda (_g1814318154_)
                                                              ((lambda (_L18157_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g1817018178_
                                   (lambda (_g1817118174_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g1817118174_)))
                                  (_g1816919087_
                                   (lambda (_g1817118182_)
                                     ((lambda (_L18185_)
                                        (let ()
                                          (let* ((_g1819818206_
                                                  (lambda (_g1819918202_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g1819918202_)))
                                                 (_g1819719083_
                                                  (lambda (_g1819918210_)
                                                    ((lambda (_L18213_)
                                                       (let ()
                                                         (let* ((_g1822618234_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1822718230_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g1822718230_)))
                        (_g1822519079_
                         (lambda (_g1822718238_)
                           ((lambda (_L18241_)
                              (let ()
                                (let* ((_g1825418262_
                                        (lambda (_g1825518258_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g1825518258_)))
                                       (_g1825319071_
                                        (lambda (_g1825518266_)
                                          ((lambda (_L18269_)
                                             (let ()
                                               (let* ((_g1828218290_
                                                       (lambda (_g1828318286_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g1828318286_)))
                                                      (_g1828119067_
                                                       (lambda (_g1828318294_)
                                                         ((lambda (_L18297_)
                                                            (let ()
                                                              (let* ((_g1831018318_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g1831118314_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g1831118314_)))
                             (_g1830919063_
                              (lambda (_g1831118322_)
                                ((lambda (_L18325_)
                                   (let ()
                                     (let* ((_g1833818346_
                                             (lambda (_g1833918342_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g1833918342_)))
                                            (_g1833719028_
                                             (lambda (_g1833918350_)
                                               ((lambda (_L18353_)
                                                  (let ()
                                                    (let* ((_g1836618374_
                                                            (lambda (_g1836718370_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g1836718370_)))
                                                           (_g1836519024_
                                                            (lambda (_g1836718378_)
                                                              ((lambda (_L18381_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g1839418402_
                                   (lambda (_g1839518398_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g1839518398_)))
                                  (_g1839319012_
                                   (lambda (_g1839518406_)
                                     ((lambda (_L18409_)
                                        (let ()
                                          (let* ((_g1842218430_
                                                  (lambda (_g1842318426_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g1842318426_)))
                                                 (_g1842119000_
                                                  (lambda (_g1842318434_)
                                                    ((lambda (_L18437_)
                                                       (let ()
                                                         (let* ((_g1845018458_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1845118454_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g1845118454_)))
                        (_g1844918996_
                         (lambda (_g1845118462_)
                           ((lambda (_L18465_)
                              (let ()
                                (let* ((_g1847818486_
                                        (lambda (_g1847918482_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g1847918482_)))
                                       (_g1847718992_
                                        (lambda (_g1847918490_)
                                          ((lambda (_L18493_)
                                             (let ()
                                               (let* ((_g1850618532_
                                                       (lambda (_g1850718528_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g1850718528_)))
                                                      (_g1850518904_
                                                       (lambda (_g1850718536_)
                                                         (if (gx#stx-pair/null?
                                                              _g1850718536_)
                                                             (let ((_g48662_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _g1850718536_ '0)))
                       (begin
                         (let ((_g48663_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g48662_)
                                      (##vector-length _g48662_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g48663_ 2)))
                               (error "Context expects 2 values" _g48663_)))
                         (let ((_target1851018539_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g48662_ 0)))
                               (_tl1851218542_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g48662_ 1))))
                           (if (gx#stx-null? _tl1851218542_)
                               (letrec ((_loop1851318545_
                                         (lambda (_hd1851118549_
                                                  _def-setf1851718552_
                                                  _def-getf1851818554_)
                                           (if (gx#stx-pair? _hd1851118549_)
                                               (let ((_e1851418557_
                                                      (gx#syntax-e
                                                       _hd1851118549_)))
                                                 (let ((_lp-hd1851518561_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e1851418557_)))
                                                       (_lp-tl1851618564_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e1851418557_))))
                                                   (if (gx#stx-pair?
                                                        _lp-hd1851518561_)
                                                       (let ((_e1852118567_
                                                              (gx#syntax-e
                                                               _lp-hd1851518561_)))
                                                         (let ((_hd1852218571_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e1852118567_)))
                       (_tl1852318574_
                        (let () (declare (not safe)) (##cdr _e1852118567_))))
                   (if (gx#stx-pair? _tl1852318574_)
                       (let ((_e1852418577_ (gx#syntax-e _tl1852318574_)))
                         (let ((_hd1852518581_
                                (let ()
                                  (declare (not safe))
                                  (##car _e1852418577_)))
                               (_tl1852618584_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e1852418577_))))
                           (if (gx#stx-null? _tl1852618584_)
                               (let ((__tmp48665
                                      (let ()
                                        (declare (not safe))
                                        (cons _hd1852518581_
                                              _def-setf1851718552_)))
                                     (__tmp48664
                                      (let ()
                                        (declare (not safe))
                                        (cons _hd1852218571_
                                              _def-getf1851818554_))))
                                 (declare (not safe))
                                 (_loop1851318545_
                                  _lp-tl1851618564_
                                  __tmp48665
                                  __tmp48664))
                               (let ()
                                 (declare (not safe))
                                 (_g1850618532_ _g1850718536_)))))
                       (let ()
                         (declare (not safe))
                         (_g1850618532_ _g1850718536_)))))
               (let () (declare (not safe)) (_g1850618532_ _g1850718536_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_def-setf1851918587_
                                                      (reverse _def-setf1851718552_))
                                                     (_def-getf1852018590_
                                                      (reverse _def-getf1851818554_)))
                                                 ((lambda (_L18593_ _L18595_)
                                                    (let ()
                                                      (let* ((_g1861218638_
                                                              (lambda (_g1861318634_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _g1861318634_)))
                     (_g1861118752_
                      (lambda (_g1861318642_)
                        (if (gx#stx-pair/null? _g1861318642_)
                            (let ((_g48666_
                                   (gx#syntax-split-splice _g1861318642_ '0)))
                              (begin
                                (let ((_g48667_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g48666_)
                                             (##vector-length _g48666_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g48667_ 2)))
                                      (error "Context expects 2 values"
                                             _g48667_)))
                                (let ((_target1861618645_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g48666_ 0)))
                                      (_tl1861818648_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g48666_ 1))))
                                  (if (gx#stx-null? _tl1861818648_)
                                      (letrec ((_loop1861918651_
                                                (lambda (_hd1861718655_
                                                         _def-usetf1862318658_
                                                         _def-ugetf1862418660_)
                                                  (if (gx#stx-pair?
                                                       _hd1861718655_)
                                                      (let ((_e1862018663_
                                                             (gx#syntax-e
                                                              _hd1861718655_)))
                                                        (let ((_lp-hd1862118667_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e1862018663_)))
                      (_lp-tl1862218670_
                       (let () (declare (not safe)) (##cdr _e1862018663_))))
                  (if (gx#stx-pair? _lp-hd1862118667_)
                      (let ((_e1862718673_ (gx#syntax-e _lp-hd1862118667_)))
                        (let ((_hd1862818677_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1862718673_)))
                              (_tl1862918680_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1862718673_))))
                          (if (gx#stx-pair? _tl1862918680_)
                              (let ((_e1863018683_
                                     (gx#syntax-e _tl1862918680_)))
                                (let ((_hd1863118687_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1863018683_)))
                                      (_tl1863218690_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1863018683_))))
                                  (if (gx#stx-null? _tl1863218690_)
                                      (let ((__tmp48669
                                             (let ()
                                               (declare (not safe))
                                               (cons _hd1863118687_
                                                     _def-usetf1862318658_)))
                                            (__tmp48668
                                             (let ()
                                               (declare (not safe))
                                               (cons _hd1862818677_
                                                     _def-ugetf1862418660_))))
                                        (declare (not safe))
                                        (_loop1861918651_
                                         _lp-tl1862218670_
                                         __tmp48669
                                         __tmp48668))
                                      (let ()
                                        (declare (not safe))
                                        (_g1861218638_ _g1861318642_)))))
                              (let ()
                                (declare (not safe))
                                (_g1861218638_ _g1861318642_)))))
                      (let ()
                        (declare (not safe))
                        (_g1861218638_ _g1861318642_)))))
              (let ((_def-usetf1862518693_ (reverse _def-usetf1862318658_))
                    (_def-ugetf1862618696_ (reverse _def-ugetf1862418660_)))
                ((lambda (_L18699_ _L18701_)
                   (let ()
                     (let ()
                       (let ((__tmp48670
                              (let ((__tmp48682 (gx#datum->syntax '#f 'begin))
                                    (__tmp48671
                                     (let ((__tmp48672
                                            (let ((__tmp48673
                                                   (let ((__tmp48674
                                                          (let ((__tmp48681
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1871918728_ _g1872018731_)
                           (let ()
                             (declare (not safe))
                             (cons _g1871918728_ _g1872018731_))))
                        (__tmp48675
                         (let ((__tmp48680
                                (lambda (_g1872118734_ _g1872218737_)
                                  (let ()
                                    (declare (not safe))
                                    (cons _g1872118734_ _g1872218737_))))
                               (__tmp48676
                                (let ((__tmp48679
                                       (lambda (_g1872318740_ _g1872418743_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g1872318740_
                                                 _g1872418743_))))
                                      (__tmp48677
                                       (let ((__tmp48678
                                              (lambda (_g1872518746_
                                                       _g1872618749_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g1872518746_
                                                        _g1872618749_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp48678 '() _L18699_))))
                                  (declare (not safe))
                                  (foldr1 __tmp48679 __tmp48677 _L18701_))))
                           (declare (not safe))
                           (foldr1 __tmp48680 __tmp48676 _L18593_))))
                    (declare (not safe))
                    (foldr1 __tmp48681 __tmp48675 _L18595_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L18465_
                                                           __tmp48674))))
                                              (declare (not safe))
                                              (cons _L18493_ __tmp48673))))
                                       (declare (not safe))
                                       (cons _L18437_ __tmp48672))))
                                (declare (not safe))
                                (cons __tmp48682 __tmp48671))))
                         (declare (not safe))
                         (_wrap17800_ __tmp48670)))))
                 _def-usetf1862518693_
                 _def-ugetf1862618696_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop1861918651_
                                           _target1861618645_
                                           '()
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g1861218638_ _g1861318642_))))))
                            (let ()
                              (declare (not safe))
                              (_g1861218638_ _g1861318642_)))))
                     (__tmp48683
                      (gx#stx-map
                       (lambda (_ref18756_)
                         (let* ((_g1875918778_
                                 (lambda (_g1876018774_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _g1876018774_)))
                                (_g1875818900_
                                 (lambda (_g1876018782_)
                                   (if (gx#stx-pair? _g1876018782_)
                                       (let ((_e1876418785_
                                              (gx#syntax-e _g1876018782_)))
                                         (let ((_hd1876518789_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e1876418785_)))
                                               (_tl1876618792_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e1876418785_))))
                                           (if (gx#stx-pair? _tl1876618792_)
                                               (let ((_e1876718795_
                                                      (gx#syntax-e
                                                       _tl1876618792_)))
                                                 (let ((_hd1876818799_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e1876718795_)))
                                                       (_tl1876918802_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e1876718795_))))
                                                   (if (gx#stx-pair?
                                                        _tl1876918802_)
                                                       (let ((_e1877018805_
                                                              (gx#syntax-e
                                                               _tl1876918802_)))
                                                         (let ((_hd1877118809_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e1877018805_)))
                       (_tl1877218812_
                        (let () (declare (not safe)) (##cdr _e1877018805_))))
                   (if (gx#stx-null? _tl1877218812_)
                       ((lambda (_L18815_ _L18817_ _L18818_)
                          (let* ((_g1883618851_
                                  (lambda (_g1883718847_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g1883718847_)))
                                 (_g1883518896_
                                  (lambda (_g1883718855_)
                                    (if (gx#stx-pair? _g1883718855_)
                                        (let ((_e1884018858_
                                               (gx#syntax-e _g1883718855_)))
                                          (let ((_hd1884118862_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1884018858_)))
                                                (_tl1884218865_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1884018858_))))
                                            (if (gx#stx-pair? _tl1884218865_)
                                                (let ((_e1884318868_
                                                       (gx#syntax-e
                                                        _tl1884218865_)))
                                                  (let ((_hd1884418872_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1884318868_)))
                                                        (_tl1884518875_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1884318868_))))
                                                    (if (gx#stx-null?
                                                         _tl1884518875_)
                                                        ((lambda (_L18878_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L18880_)
                   (let ()
                     (let ((__tmp48706
                            (let ((__tmp48707
                                   (let ((__tmp48726
                                          (gx#datum->syntax '#f 'def))
                                         (__tmp48708
                                          (let ((__tmp48709
                                                 (let ((__tmp48710
                                                        (let ((__tmp48725
                                                               (gx#datum->syntax
                                                                '#f
                                                                'begin-annotation))
                                                              (__tmp48711
                                                               (let ((__tmp48720
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp48724
                                     (gx#datum->syntax '#f '@mop.accessor))
                                    (__tmp48721
                                     (let ((__tmp48722
                                            (let ((__tmp48723
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#f '()))))
                                              (declare (not safe))
                                              (cons _L18818_ __tmp48723))))
                                       (declare (not safe))
                                       (cons _L18129_ __tmp48722))))
                                (declare (not safe))
                                (cons __tmp48724 __tmp48721)))
                             (__tmp48712
                              (let ((__tmp48713
                                     (let ((__tmp48719
                                            (gx#datum->syntax
                                             '#f
                                             'make-class-slot-unchecked-accessor))
                                           (__tmp48714
                                            (let ((__tmp48715
                                                   (let ((__tmp48716
                                                          (let ((__tmp48718
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'quote))
                        (__tmp48717
                         (let () (declare (not safe)) (cons _L18818_ '()))))
                    (declare (not safe))
                    (cons __tmp48718 __tmp48717))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp48716 '()))))
                                              (declare (not safe))
                                              (cons _L17894_ __tmp48715))))
                                       (declare (not safe))
                                       (cons __tmp48719 __tmp48714))))
                                (declare (not safe))
                                (cons __tmp48713 '()))))
                         (declare (not safe))
                         (cons __tmp48720 __tmp48712))))
                  (declare (not safe))
                  (cons __tmp48725 __tmp48711))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp48710 '()))))
                                            (declare (not safe))
                                            (cons _L18880_ __tmp48709))))
                                     (declare (not safe))
                                     (cons __tmp48726 __tmp48708))))
                              (declare (not safe))
                              (_wrap17800_ __tmp48707)))
                           (__tmp48684
                            (let ((__tmp48685
                                   (let ((__tmp48686
                                          (let ((__tmp48705
                                                 (gx#datum->syntax '#f 'def))
                                                (__tmp48687
                                                 (let ((__tmp48688
                                                        (let ((__tmp48689
                                                               (let ((__tmp48704
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'begin-annotation))
                             (__tmp48690
                              (let ((__tmp48699
                                     (let ((__tmp48703
                                            (gx#datum->syntax
                                             '#f
                                             '@mop.mutator))
                                           (__tmp48700
                                            (let ((__tmp48701
                                                   (let ((__tmp48702
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '#f '()))))
                                                     (declare (not safe))
                                                     (cons _L18818_
                                                           __tmp48702))))
                                              (declare (not safe))
                                              (cons _L18129_ __tmp48701))))
                                       (declare (not safe))
                                       (cons __tmp48703 __tmp48700)))
                                    (__tmp48691
                                     (let ((__tmp48692
                                            (let ((__tmp48698
                                                   (gx#datum->syntax
                                                    '#f
                                                    'make-class-slot-unchecked-mutator))
                                                  (__tmp48693
                                                   (let ((__tmp48694
                                                          (let ((__tmp48695
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp48697 (gx#datum->syntax '#f 'quote))
                               (__tmp48696
                                (let ()
                                  (declare (not safe))
                                  (cons _L18818_ '()))))
                           (declare (not safe))
                           (cons __tmp48697 __tmp48696))))
                    (declare (not safe))
                    (cons __tmp48695 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L17894_
                                                           __tmp48694))))
                                              (declare (not safe))
                                              (cons __tmp48698 __tmp48693))))
                                       (declare (not safe))
                                       (cons __tmp48692 '()))))
                                (declare (not safe))
                                (cons __tmp48699 __tmp48691))))
                         (declare (not safe))
                         (cons __tmp48704 __tmp48690))))
                  (declare (not safe))
                  (cons __tmp48689 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L18878_
                                                         __tmp48688))))
                                            (declare (not safe))
                                            (cons __tmp48705 __tmp48687))))
                                     (declare (not safe))
                                     (_wrap17800_ __tmp48686))))
                              (declare (not safe))
                              (cons __tmp48685 '()))))
                       (declare (not safe))
                       (cons __tmp48706 __tmp48684))))
                 _hd1884418872_
                 _hd1884118862_)
                (let () (declare (not safe)) (_g1883618851_ _g1883718855_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g1883618851_
                                                   _g1883718855_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g1883618851_ _g1883718855_)))))
                                 (__tmp48727
                                  (list (gx#stx-identifier
                                         _L18817_
                                         '"&"
                                         _L18817_)
                                        (gx#stx-identifier
                                         _L18815_
                                         '"&"
                                         _L18815_))))
                            (declare (not safe))
                            (_g1883518896_ __tmp48727)))
                        _hd1877118809_
                        _hd1876818799_
                        _hd1876518789_)
                       (let ()
                         (declare (not safe))
                         (_g1875918778_ _g1876018782_)))))
               (let () (declare (not safe)) (_g1875918778_ _g1876018782_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g1875918778_
                                                  _g1876018782_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g1875918778_ _g1876018782_))))))
                           (declare (not safe))
                           (_g1875818900_ _ref18756_)))
                       _accessible-slots17949_)))
                (declare (not safe))
                (_g1861118752_ __tmp48683))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _def-setf1851918587_
                                                  _def-getf1852018590_))))))
                                 (let ()
                                   (declare (not safe))
                                   (_loop1851318545_
                                    _target1851018539_
                                    '()
                                    '())))
                               (let ()
                                 (declare (not safe))
                                 (_g1850618532_ _g1850718536_))))))
                     (let ()
                       (declare (not safe))
                       (_g1850618532_ _g1850718536_)))))
              (__tmp48728
               (gx#stx-map
                (lambda (_ref18908_)
                  (let* ((_g1891118930_
                          (lambda (_g1891218926_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g1891218926_)))
                         (_g1891018988_
                          (lambda (_g1891218934_)
                            (if (gx#stx-pair? _g1891218934_)
                                (let ((_e1891618937_
                                       (gx#syntax-e _g1891218934_)))
                                  (let ((_hd1891718941_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1891618937_)))
                                        (_tl1891818944_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1891618937_))))
                                    (if (gx#stx-pair? _tl1891818944_)
                                        (let ((_e1891918947_
                                               (gx#syntax-e _tl1891818944_)))
                                          (let ((_hd1892018951_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1891918947_)))
                                                (_tl1892118954_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1891918947_))))
                                            (if (gx#stx-pair? _tl1892118954_)
                                                (let ((_e1892218957_
                                                       (gx#syntax-e
                                                        _tl1892118954_)))
                                                  (let ((_hd1892318961_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1892218957_)))
                                                        (_tl1892418964_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1892218957_))))
                                                    (if (gx#stx-null?
                                                         _tl1892418964_)
                                                        ((lambda (_L18967_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L18969_
                          _L18970_)
                   (let ((__tmp48751
                          (let ((__tmp48752
                                 (let ((__tmp48771 (gx#datum->syntax '#f 'def))
                                       (__tmp48753
                                        (let ((__tmp48754
                                               (let ((__tmp48755
                                                      (let ((__tmp48770
                                                             (gx#datum->syntax
                                                              '#f
                                                              'begin-annotation))
                                                            (__tmp48756
                                                             (let ((__tmp48765
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp48769
                                   (gx#datum->syntax '#f '@mop.accessor))
                                  (__tmp48766
                                   (let ((__tmp48767
                                          (let ((__tmp48768
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons '#t '()))))
                                            (declare (not safe))
                                            (cons _L18970_ __tmp48768))))
                                     (declare (not safe))
                                     (cons _L18129_ __tmp48767))))
                              (declare (not safe))
                              (cons __tmp48769 __tmp48766)))
                           (__tmp48757
                            (let ((__tmp48758
                                   (let ((__tmp48764
                                          (gx#datum->syntax
                                           '#f
                                           'make-class-slot-accessor))
                                         (__tmp48759
                                          (let ((__tmp48760
                                                 (let ((__tmp48761
                                                        (let ((__tmp48763
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp48762
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L18970_ '()))))
                  (declare (not safe))
                  (cons __tmp48763 __tmp48762))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp48761 '()))))
                                            (declare (not safe))
                                            (cons _L17894_ __tmp48760))))
                                     (declare (not safe))
                                     (cons __tmp48764 __tmp48759))))
                              (declare (not safe))
                              (cons __tmp48758 '()))))
                       (declare (not safe))
                       (cons __tmp48765 __tmp48757))))
                (declare (not safe))
                (cons __tmp48770 __tmp48756))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp48755 '()))))
                                          (declare (not safe))
                                          (cons _L18969_ __tmp48754))))
                                   (declare (not safe))
                                   (cons __tmp48771 __tmp48753))))
                            (declare (not safe))
                            (_wrap17800_ __tmp48752)))
                         (__tmp48729
                          (let ((__tmp48730
                                 (let ((__tmp48731
                                        (let ((__tmp48750
                                               (gx#datum->syntax '#f 'def))
                                              (__tmp48732
                                               (let ((__tmp48733
                                                      (let ((__tmp48734
                                                             (let ((__tmp48749
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'begin-annotation))
                           (__tmp48735
                            (let ((__tmp48744
                                   (let ((__tmp48748
                                          (gx#datum->syntax '#f '@mop.mutator))
                                         (__tmp48745
                                          (let ((__tmp48746
                                                 (let ((__tmp48747
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons '#t '()))))
                                                   (declare (not safe))
                                                   (cons _L18970_
                                                         __tmp48747))))
                                            (declare (not safe))
                                            (cons _L18129_ __tmp48746))))
                                     (declare (not safe))
                                     (cons __tmp48748 __tmp48745)))
                                  (__tmp48736
                                   (let ((__tmp48737
                                          (let ((__tmp48743
                                                 (gx#datum->syntax
                                                  '#f
                                                  'make-class-slot-mutator))
                                                (__tmp48738
                                                 (let ((__tmp48739
                                                        (let ((__tmp48740
                                                               (let ((__tmp48742
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'quote))
                             (__tmp48741
                              (let ()
                                (declare (not safe))
                                (cons _L18970_ '()))))
                         (declare (not safe))
                         (cons __tmp48742 __tmp48741))))
                  (declare (not safe))
                  (cons __tmp48740 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L17894_
                                                         __tmp48739))))
                                            (declare (not safe))
                                            (cons __tmp48743 __tmp48738))))
                                     (declare (not safe))
                                     (cons __tmp48737 '()))))
                              (declare (not safe))
                              (cons __tmp48744 __tmp48736))))
                       (declare (not safe))
                       (cons __tmp48749 __tmp48735))))
                (declare (not safe))
                (cons __tmp48734 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L18967_ __tmp48733))))
                                          (declare (not safe))
                                          (cons __tmp48750 __tmp48732))))
                                   (declare (not safe))
                                   (_wrap17800_ __tmp48731))))
                            (declare (not safe))
                            (cons __tmp48730 '()))))
                     (declare (not safe))
                     (cons __tmp48751 __tmp48729)))
                 _hd1892318961_
                 _hd1892018951_
                 _hd1891718941_)
                (let () (declare (not safe)) (_g1891118930_ _g1891218934_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g1891118930_
                                                   _g1891218934_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g1891118930_ _g1891218934_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g1891118930_ _g1891218934_))))))
                    (declare (not safe))
                    (_g1891018988_ _ref18908_)))
                _accessible-slots17949_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g1850518904_ __tmp48728))))
                                           _g1847918490_)))
                                       (__tmp48772
                                        (let ((__tmp48773
                                               (let ((__tmp48786
                                                      (gx#datum->syntax
                                                       '#f
                                                       'def))
                                                     (__tmp48774
                                                      (let ((__tmp48775
                                                             (let ((__tmp48776
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp48785
                                   (gx#datum->syntax '#f 'begin-annotation))
                                  (__tmp48777
                                   (let ((__tmp48782
                                          (let ((__tmp48784
                                                 (gx#datum->syntax
                                                  '#f
                                                  '@mop.predicate))
                                                (__tmp48783
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L18129_ '()))))
                                            (declare (not safe))
                                            (cons __tmp48784 __tmp48783)))
                                         (__tmp48778
                                          (let ((__tmp48779
                                                 (let ((__tmp48781
                                                        (gx#datum->syntax
                                                         '#f
                                                         'make-class-predicate))
                                                       (__tmp48780
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L17894_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp48781
                                                         __tmp48780))))
                                            (declare (not safe))
                                            (cons __tmp48779 '()))))
                                     (declare (not safe))
                                     (cons __tmp48782 __tmp48778))))
                              (declare (not safe))
                              (cons __tmp48785 __tmp48777))))
                       (declare (not safe))
                       (cons __tmp48776 '()))))
                (declare (not safe))
                (cons _L17891_ __tmp48775))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp48786
                                                       __tmp48774))))
                                          (declare (not safe))
                                          (_wrap17800_ __tmp48773))))
                                  (declare (not safe))
                                  (_g1847718992_ __tmp48772))))
                            _g1845118462_)))
                        (__tmp48787
                         (if (gx#stx-false? _L17892_)
                             (let ((__tmp48788 (gx#datum->syntax '#f 'begin)))
                               (declare (not safe))
                               (cons __tmp48788 '()))
                             (let ((__tmp48789
                                    (let ((__tmp48811
                                           (gx#datum->syntax '#f 'def))
                                          (__tmp48790
                                           (let ((__tmp48791
                                                  (let ((__tmp48792
                                                         (let ((__tmp48810
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'begin-annotation))
                       (__tmp48793
                        (let ((__tmp48807
                               (let ((__tmp48809
                                      (gx#datum->syntax '#f '@mop.constructor))
                                     (__tmp48808
                                      (let ()
                                        (declare (not safe))
                                        (cons _L18129_ '()))))
                                 (declare (not safe))
                                 (cons __tmp48809 __tmp48808)))
                              (__tmp48794
                               (let ((__tmp48795
                                      (let ((__tmp48806
                                             (gx#datum->syntax '#f 'lambda))
                                            (__tmp48796
                                             (let ((__tmp48805
                                                    (gx#datum->syntax
                                                     '#f
                                                     '$args))
                                                   (__tmp48797
                                                    (let ((__tmp48798
                                                           (let ((__tmp48804
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'apply))
                         (__tmp48799
                          (let ((__tmp48803
                                 (gx#datum->syntax '#f 'make-instance))
                                (__tmp48800
                                 (let ((__tmp48801
                                        (let ((__tmp48802
                                               (gx#datum->syntax '#f '$args)))
                                          (declare (not safe))
                                          (cons __tmp48802 '()))))
                                   (declare (not safe))
                                   (cons _L17894_ __tmp48801))))
                            (declare (not safe))
                            (cons __tmp48803 __tmp48800))))
                     (declare (not safe))
                     (cons __tmp48804 __tmp48799))))
              (declare (not safe))
              (cons __tmp48798 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp48805 __tmp48797))))
                                        (declare (not safe))
                                        (cons __tmp48806 __tmp48796))))
                                 (declare (not safe))
                                 (cons __tmp48795 '()))))
                          (declare (not safe))
                          (cons __tmp48807 __tmp48794))))
                   (declare (not safe))
                   (cons __tmp48810 __tmp48793))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp48792 '()))))
                                             (declare (not safe))
                                             (cons _L17892_ __tmp48791))))
                                      (declare (not safe))
                                      (cons __tmp48811 __tmp48790))))
                               (declare (not safe))
                               (_wrap17800_ __tmp48789)))))
                   (declare (not safe))
                   (_g1844918996_ __tmp48787))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1842318434_)))
                                                 (__tmp48812
                                                  (let ((__tmp48813
                                                         (let ((__tmp48831
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'def))
                       (__tmp48814
                        (let ((__tmp48815
                               (let ((__tmp48816
                                      (let ((__tmp48830
                                             (gx#datum->syntax
                                              '#f
                                              'begin-annotation))
                                            (__tmp48817
                                             (let ((__tmp48819
                                                    (let ((__tmp48829
                                                           (gx#datum->syntax
                                                            '#f
                                                            '@mop.class))
                                                          (__tmp48820
                                                           (let ((__tmp48821
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp48822
                                 (let ((__tmp48827
                                        (let ((__tmp48828
                                               (lambda (_g1900319006_
                                                        _g1900419009_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g1900319006_
                                                         _g1900419009_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp48828 '() _L18009_)))
                                       (__tmp48823
                                        (let ((__tmp48824
                                               (let ((__tmp48825
                                                      (let ((__tmp48826
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L18241_ '()))))
                (declare (not safe))
                (cons _L18213_ __tmp48826))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L18185_ __tmp48825))))
                                          (declare (not safe))
                                          (cons _L18101_ __tmp48824))))
                                   (declare (not safe))
                                   (cons __tmp48827 __tmp48823))))
                            (declare (not safe))
                            (cons _L18157_ __tmp48822))))
                     (declare (not safe))
                     (cons _L18045_ __tmp48821))))
              (declare (not safe))
              (cons __tmp48829 __tmp48820)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp48818
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L18409_ '()))))
                                               (declare (not safe))
                                               (cons __tmp48819 __tmp48818))))
                                        (declare (not safe))
                                        (cons __tmp48830 __tmp48817))))
                                 (declare (not safe))
                                 (cons __tmp48816 '()))))
                          (declare (not safe))
                          (cons _L17894_ __tmp48815))))
                   (declare (not safe))
                   (cons __tmp48831 __tmp48814))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_wrap17800_ __tmp48813))))
                                            (declare (not safe))
                                            (_g1842119000_ __tmp48812))))
                                      _g1839518406_)))
                                  (__tmp48832
                                   (let ((__tmp48853
                                          (gx#datum->syntax
                                           '#f
                                           'make-class-type))
                                         (__tmp48833
                                          (let ((__tmp48850
                                                 (let ((__tmp48852
                                                        (gx#datum->syntax
                                                         '#f
                                                         'quote))
                                                       (__tmp48851
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L18045_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp48852
                                                         __tmp48851)))
                                                (__tmp48834
                                                 (let ((__tmp48847
                                                        (let ((__tmp48849
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp48848
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L18073_ '()))))
                  (declare (not safe))
                  (cons __tmp48849 __tmp48848)))
               (__tmp48835
                (let ((__tmp48836
                       (let ((__tmp48842
                              (let ((__tmp48846 (gx#datum->syntax '#f 'quote))
                                    (__tmp48843
                                     (let ((__tmp48844
                                            (let ((__tmp48845
                                                   (lambda (_g1901519018_
                                                            _g1901619021_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g1901519018_
                                                             _g1901619021_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp48845
                                                      '()
                                                      _L18009_))))
                                       (declare (not safe))
                                       (cons __tmp48844 '()))))
                                (declare (not safe))
                                (cons __tmp48846 __tmp48843)))
                             (__tmp48837
                              (let ((__tmp48838
                                     (let ((__tmp48839
                                            (let ((__tmp48841
                                                   (gx#datum->syntax
                                                    '#f
                                                    'quote))
                                                  (__tmp48840
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L18101_ '()))))
                                              (declare (not safe))
                                              (cons __tmp48841 __tmp48840))))
                                       (declare (not safe))
                                       (cons __tmp48839 '()))))
                                (declare (not safe))
                                (cons _L18353_ __tmp48838))))
                         (declare (not safe))
                         (cons __tmp48842 __tmp48837))))
                  (declare (not safe))
                  (cons _L18381_ __tmp48836))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp48847
                                                         __tmp48835))))
                                            (declare (not safe))
                                            (cons __tmp48850 __tmp48834))))
                                     (declare (not safe))
                                     (cons __tmp48853 __tmp48833))))
                             (declare (not safe))
                             (_g1839319012_ __tmp48832))))
                       _g1836718378_)))
                   (__tmp48854
                    (let ((__tmp48855 (gx#datum->syntax '#f 'list)))
                      (declare (not safe))
                      (cons __tmp48855 _L17893_))))
              (declare (not safe))
              (_g1836519024_ __tmp48854))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1833918350_)))
                                            (__tmp48856
                                             (if (gx#stx-e _metaclass17952_)
                                                 (let* ((_g1903219040_
                                                         (lambda (_g1903319036_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _g1903319036_)))
                                                        (_g1903119059_
                                                         (lambda (_g1903319044_)
                                                           ((lambda (_L19047_)
                                                              (let ()
                                                                (let ((__tmp48865
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '@list))
                              (__tmp48857
                               (let ((__tmp48860
                                      (let ((__tmp48864
                                             (gx#datum->syntax '#f '@list))
                                            (__tmp48861
                                             (let ((__tmp48862
                                                    (let ((__tmp48863
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L19047_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons ':: __tmp48863))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'metaclass: __tmp48862))))
                                        (declare (not safe))
                                        (cons __tmp48864 __tmp48861)))
                                     (__tmp48858
                                      (let ((__tmp48859
                                             (let ()
                                               (declare (not safe))
                                               (cons _L18325_ '()))))
                                        (declare (not safe))
                                        (cons ':: __tmp48859))))
                                 (declare (not safe))
                                 (cons __tmp48860 __tmp48858))))
                          (declare (not safe))
                          (cons __tmp48865 __tmp48857))))
                    _g1903319044_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_g1903119059_
                                                    _metaclass17952_))
                                                 _L18325_)))
                                       (declare (not safe))
                                       (_g1833719028_ __tmp48856))))
                                 _g1831118322_)))
                             (__tmp48866
                              (if _struct?17932_
                                  (let ((__tmp48873
                                         (gx#datum->syntax '#f '@list))
                                        (__tmp48867
                                         (let ((__tmp48870
                                                (let ((__tmp48872
                                                       (gx#datum->syntax
                                                        '#f
                                                        '@list))
                                                      (__tmp48871
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'struct: '#t))))
                                                  (declare (not safe))
                                                  (cons __tmp48872
                                                        __tmp48871)))
                                               (__tmp48868
                                                (let ((__tmp48869
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L18297_ '()))))
                                                  (declare (not safe))
                                                  (cons ':: __tmp48869))))
                                           (declare (not safe))
                                           (cons __tmp48870 __tmp48868))))
                                    (declare (not safe))
                                    (cons __tmp48873 __tmp48867))
                                  _L18297_)))
                        (declare (not safe))
                        (_g1830919063_ __tmp48866))))
                  _g1828318294_)))
              (__tmp48874
               (if (gx#stx-e _L18213_)
                   (let ((__tmp48881 (gx#datum->syntax '#f '@list))
                         (__tmp48875
                          (let ((__tmp48878
                                 (let ((__tmp48880
                                        (gx#datum->syntax '#f '@list))
                                       (__tmp48879
                                        (let ()
                                          (declare (not safe))
                                          (cons 'final: '#t))))
                                   (declare (not safe))
                                   (cons __tmp48880 __tmp48879)))
                                (__tmp48876
                                 (let ((__tmp48877
                                        (let ()
                                          (declare (not safe))
                                          (cons _L18269_ '()))))
                                   (declare (not safe))
                                   (cons ':: __tmp48877))))
                            (declare (not safe))
                            (cons __tmp48878 __tmp48876))))
                     (declare (not safe))
                     (cons __tmp48881 __tmp48875))
                   _L18269_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g1828119067_ __tmp48874))))
                                           _g1825518266_)))
                                       (__tmp48882
                                        (let ((_$e19075_
                                               (gx#stx-getq
                                                'properties:
                                                _L17889_)))
                                          (if _$e19075_
                                              _$e19075_
                                              (let ((__tmp48883
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list)))
                                                (declare (not safe))
                                                (cons __tmp48883 '()))))))
                                  (declare (not safe))
                                  (_g1825319071_ __tmp48882))))
                            _g1822718238_)))
                        (__tmp48884
                         (if (gx#stx-e _metaclass17952_)
                             (gx#core-quote-syntax _metaclass17952_)
                             '#f)))
                   (declare (not safe))
                   (_g1822519079_ __tmp48884))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1819918210_)))
                                                 (__tmp48885
                                                  (gx#stx-getq
                                                   'final:
                                                   _L17889_)))
                                            (declare (not safe))
                                            (_g1819719083_ __tmp48885))))
                                      _g1817118182_))))
                             (declare (not safe))
                             (_g1816919087_ _struct?17932_))))
                       _g1814318154_)))
                   (__tmp48886 (gx#stx-map gx#core-quote-syntax _L17893_)))
              (declare (not safe))
              (_g1814119091_ __tmp48886))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1811518126_)))
                                            (__tmp48887
                                             (gx#core-quote-syntax _L17894_)))
                                       (declare (not safe))
                                       (_g1811319095_ __tmp48887))))
                                 _g1808718098_)))
                             (__tmp48888 (gx#stx-getq 'constructor: _L17889_)))
                        (declare (not safe))
                        (_g1808519099_ __tmp48888))))
                  _g1805918070_)))
              (__tmp48889
               (let ((_$e19107_ (gx#stx-getq 'name: _L17889_)))
                 (if _$e19107_ _$e19107_ _L17894_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g1805719103_ __tmp48889))))
                                           _g1803118042_)))
                                       (__tmp48890
                                        (let ((_$e19115_
                                               (gx#stx-getq 'id: _L17889_)))
                                          (if _$e19115_
                                              _$e19115_
                                              (let ()
                                                (declare (not safe))
                                                (|gerbil/core$<MOP>$<MOP:1>[1]#make-class-type-id|
                                                 _L17894_))))))
                                  (declare (not safe))
                                  (_g1802919111_ __tmp48890))))
                            _slot1796618005_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_loop1796117985_
                                                      _target1795817979_
                                                      '())))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g1795517972_
                                                    _g1795617976_))))))
                                       (let ()
                                         (declare (not safe))
                                         (_g1795517972_ _g1795617976_)))))
                                (__tmp48891
                                 (gx#stx-map _slot-name17802_ _slots17939_)))
                           (declare (not safe))
                           (_g1795419119_ __tmp48891))
                         (let ()
                           (declare (not safe))
                           (_g1780517832_ _g1780617836_))))
                   _tl1782617886_
                   _hd1782517883_
                   _hd1782217873_
                   _hd1781917863_
                   _hd1781617853_)))
              (let () (declare (not safe)) (_g1780517832_ _g1780617836_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g1780517832_
                                                 _g1780617836_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1780517832_ _g1780617836_)))))
                              (let ()
                                (declare (not safe))
                                (_g1780517832_ _g1780617836_)))))
                      (let ()
                        (declare (not safe))
                        (_g1780517832_ _g1780617836_))))))
          (declare (not safe))
          (_g1780419123_ _stx17796_)))))
  (define |gerbil/core$<MOP>$<MOP:1>[:0:]#defstruct-type|
    (lambda (_stx19235_)
      (let ()
        (declare (not safe))
        (|gerbil/core$<MOP>$<MOP:1>[1]#generate-typedef| _stx19235_ '#t))))
  (define |gerbil/core$<MOP>$<MOP:1>[:0:]#defclass-type|
    (lambda (_stx19238_)
      (let ()
        (declare (not safe))
        (|gerbil/core$<MOP>$<MOP:1>[1]#generate-typedef| _stx19238_ '#f)))))
