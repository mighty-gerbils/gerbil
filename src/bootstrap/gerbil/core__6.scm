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
                                       (let ((_g48204_
                                              (gx#syntax-split-splice
                                               _g1795617976_
                                               '0)))
                                         (begin
                                           (let ((_g48205_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g48204_)
                                                        (##vector-length
                                                         _g48204_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g48205_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g48205_)))
                                           (let ((_target1795817979_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g48204_ 0)))
                                                 (_tl1796017982_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g48204_
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
                             (let ((__tmp48206
                                    (let ()
                                      (declare (not safe))
                                      (cons _lp-hd1796317999_
                                            _slot1796517992_))))
                               (declare (not safe))
                               (_loop1796117985_
                                _lp-tl1796418002_
                                __tmp48206))))
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
                                                             (let ((_g48207_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _g1850718536_ '0)))
                       (begin
                         (let ((_g48208_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g48207_)
                                      (##vector-length _g48207_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g48208_ 2)))
                               (error "Context expects 2 values" _g48208_)))
                         (let ((_target1851018539_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g48207_ 0)))
                               (_tl1851218542_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g48207_ 1))))
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
                               (let ((__tmp48210
                                      (let ()
                                        (declare (not safe))
                                        (cons _hd1852518581_
                                              _def-setf1851718552_)))
                                     (__tmp48209
                                      (let ()
                                        (declare (not safe))
                                        (cons _hd1852218571_
                                              _def-getf1851818554_))))
                                 (declare (not safe))
                                 (_loop1851318545_
                                  _lp-tl1851618564_
                                  __tmp48210
                                  __tmp48209))
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
                            (let ((_g48211_
                                   (gx#syntax-split-splice _g1861318642_ '0)))
                              (begin
                                (let ((_g48212_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g48211_)
                                             (##vector-length _g48211_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g48212_ 2)))
                                      (error "Context expects 2 values"
                                             _g48212_)))
                                (let ((_target1861618645_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g48211_ 0)))
                                      (_tl1861818648_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g48211_ 1))))
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
                                      (let ((__tmp48214
                                             (let ()
                                               (declare (not safe))
                                               (cons _hd1863118687_
                                                     _def-usetf1862318658_)))
                                            (__tmp48213
                                             (let ()
                                               (declare (not safe))
                                               (cons _hd1862818677_
                                                     _def-ugetf1862418660_))))
                                        (declare (not safe))
                                        (_loop1861918651_
                                         _lp-tl1862218670_
                                         __tmp48214
                                         __tmp48213))
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
                       (let ((__tmp48215
                              (let ((__tmp48220 (gx#datum->syntax '#f 'begin))
                                    (__tmp48216
                                     (let ((__tmp48217
                                            (let ((__tmp48218
                                                   (let ((__tmp48219
                                                          (foldr (lambda (_g1871918728_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g1872018731_)
                           (let ()
                             (declare (not safe))
                             (cons _g1871918728_ _g1872018731_)))
                         (foldr (lambda (_g1872118734_ _g1872218737_)
                                  (let ()
                                    (declare (not safe))
                                    (cons _g1872118734_ _g1872218737_)))
                                (foldr (lambda (_g1872318740_ _g1872418743_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g1872318740_ _g1872418743_)))
                                       (foldr (lambda (_g1872518746_
                                                       _g1872618749_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g1872518746_
                                                        _g1872618749_)))
                                              '()
                                              _L18699_)
                                       _L18701_)
                                _L18593_)
                         _L18595_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L18465_
                                                           __tmp48219))))
                                              (declare (not safe))
                                              (cons _L18493_ __tmp48218))))
                                       (declare (not safe))
                                       (cons _L18437_ __tmp48217))))
                                (declare (not safe))
                                (cons __tmp48220 __tmp48216))))
                         (declare (not safe))
                         (_wrap17800_ __tmp48215)))))
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
                     (__tmp48221
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
                     (let ((__tmp48244
                            (let ((__tmp48245
                                   (let ((__tmp48264
                                          (gx#datum->syntax '#f 'def))
                                         (__tmp48246
                                          (let ((__tmp48247
                                                 (let ((__tmp48248
                                                        (let ((__tmp48263
                                                               (gx#datum->syntax
                                                                '#f
                                                                'begin-annotation))
                                                              (__tmp48249
                                                               (let ((__tmp48258
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp48262
                                     (gx#datum->syntax '#f '@mop.accessor))
                                    (__tmp48259
                                     (let ((__tmp48260
                                            (let ((__tmp48261
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#f '()))))
                                              (declare (not safe))
                                              (cons _L18818_ __tmp48261))))
                                       (declare (not safe))
                                       (cons _L18129_ __tmp48260))))
                                (declare (not safe))
                                (cons __tmp48262 __tmp48259)))
                             (__tmp48250
                              (let ((__tmp48251
                                     (let ((__tmp48257
                                            (gx#datum->syntax
                                             '#f
                                             'make-class-slot-unchecked-accessor))
                                           (__tmp48252
                                            (let ((__tmp48253
                                                   (let ((__tmp48254
                                                          (let ((__tmp48256
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'quote))
                        (__tmp48255
                         (let () (declare (not safe)) (cons _L18818_ '()))))
                    (declare (not safe))
                    (cons __tmp48256 __tmp48255))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp48254 '()))))
                                              (declare (not safe))
                                              (cons _L17894_ __tmp48253))))
                                       (declare (not safe))
                                       (cons __tmp48257 __tmp48252))))
                                (declare (not safe))
                                (cons __tmp48251 '()))))
                         (declare (not safe))
                         (cons __tmp48258 __tmp48250))))
                  (declare (not safe))
                  (cons __tmp48263 __tmp48249))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp48248 '()))))
                                            (declare (not safe))
                                            (cons _L18880_ __tmp48247))))
                                     (declare (not safe))
                                     (cons __tmp48264 __tmp48246))))
                              (declare (not safe))
                              (_wrap17800_ __tmp48245)))
                           (__tmp48222
                            (let ((__tmp48223
                                   (let ((__tmp48224
                                          (let ((__tmp48243
                                                 (gx#datum->syntax '#f 'def))
                                                (__tmp48225
                                                 (let ((__tmp48226
                                                        (let ((__tmp48227
                                                               (let ((__tmp48242
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'begin-annotation))
                             (__tmp48228
                              (let ((__tmp48237
                                     (let ((__tmp48241
                                            (gx#datum->syntax
                                             '#f
                                             '@mop.mutator))
                                           (__tmp48238
                                            (let ((__tmp48239
                                                   (let ((__tmp48240
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '#f '()))))
                                                     (declare (not safe))
                                                     (cons _L18818_
                                                           __tmp48240))))
                                              (declare (not safe))
                                              (cons _L18129_ __tmp48239))))
                                       (declare (not safe))
                                       (cons __tmp48241 __tmp48238)))
                                    (__tmp48229
                                     (let ((__tmp48230
                                            (let ((__tmp48236
                                                   (gx#datum->syntax
                                                    '#f
                                                    'make-class-slot-unchecked-mutator))
                                                  (__tmp48231
                                                   (let ((__tmp48232
                                                          (let ((__tmp48233
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp48235 (gx#datum->syntax '#f 'quote))
                               (__tmp48234
                                (let ()
                                  (declare (not safe))
                                  (cons _L18818_ '()))))
                           (declare (not safe))
                           (cons __tmp48235 __tmp48234))))
                    (declare (not safe))
                    (cons __tmp48233 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L17894_
                                                           __tmp48232))))
                                              (declare (not safe))
                                              (cons __tmp48236 __tmp48231))))
                                       (declare (not safe))
                                       (cons __tmp48230 '()))))
                                (declare (not safe))
                                (cons __tmp48237 __tmp48229))))
                         (declare (not safe))
                         (cons __tmp48242 __tmp48228))))
                  (declare (not safe))
                  (cons __tmp48227 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L18878_
                                                         __tmp48226))))
                                            (declare (not safe))
                                            (cons __tmp48243 __tmp48225))))
                                     (declare (not safe))
                                     (_wrap17800_ __tmp48224))))
                              (declare (not safe))
                              (cons __tmp48223 '()))))
                       (declare (not safe))
                       (cons __tmp48244 __tmp48222))))
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
                                 (__tmp48265
                                  (list (gx#stx-identifier
                                         _L18817_
                                         '"&"
                                         _L18817_)
                                        (gx#stx-identifier
                                         _L18815_
                                         '"&"
                                         _L18815_))))
                            (declare (not safe))
                            (_g1883518896_ __tmp48265)))
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
                (_g1861118752_ __tmp48221))))
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
              (__tmp48266
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
                   (let ((__tmp48289
                          (let ((__tmp48290
                                 (let ((__tmp48309 (gx#datum->syntax '#f 'def))
                                       (__tmp48291
                                        (let ((__tmp48292
                                               (let ((__tmp48293
                                                      (let ((__tmp48308
                                                             (gx#datum->syntax
                                                              '#f
                                                              'begin-annotation))
                                                            (__tmp48294
                                                             (let ((__tmp48303
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp48307
                                   (gx#datum->syntax '#f '@mop.accessor))
                                  (__tmp48304
                                   (let ((__tmp48305
                                          (let ((__tmp48306
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons '#t '()))))
                                            (declare (not safe))
                                            (cons _L18970_ __tmp48306))))
                                     (declare (not safe))
                                     (cons _L18129_ __tmp48305))))
                              (declare (not safe))
                              (cons __tmp48307 __tmp48304)))
                           (__tmp48295
                            (let ((__tmp48296
                                   (let ((__tmp48302
                                          (gx#datum->syntax
                                           '#f
                                           'make-class-slot-accessor))
                                         (__tmp48297
                                          (let ((__tmp48298
                                                 (let ((__tmp48299
                                                        (let ((__tmp48301
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp48300
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L18970_ '()))))
                  (declare (not safe))
                  (cons __tmp48301 __tmp48300))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp48299 '()))))
                                            (declare (not safe))
                                            (cons _L17894_ __tmp48298))))
                                     (declare (not safe))
                                     (cons __tmp48302 __tmp48297))))
                              (declare (not safe))
                              (cons __tmp48296 '()))))
                       (declare (not safe))
                       (cons __tmp48303 __tmp48295))))
                (declare (not safe))
                (cons __tmp48308 __tmp48294))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp48293 '()))))
                                          (declare (not safe))
                                          (cons _L18969_ __tmp48292))))
                                   (declare (not safe))
                                   (cons __tmp48309 __tmp48291))))
                            (declare (not safe))
                            (_wrap17800_ __tmp48290)))
                         (__tmp48267
                          (let ((__tmp48268
                                 (let ((__tmp48269
                                        (let ((__tmp48288
                                               (gx#datum->syntax '#f 'def))
                                              (__tmp48270
                                               (let ((__tmp48271
                                                      (let ((__tmp48272
                                                             (let ((__tmp48287
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'begin-annotation))
                           (__tmp48273
                            (let ((__tmp48282
                                   (let ((__tmp48286
                                          (gx#datum->syntax '#f '@mop.mutator))
                                         (__tmp48283
                                          (let ((__tmp48284
                                                 (let ((__tmp48285
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons '#t '()))))
                                                   (declare (not safe))
                                                   (cons _L18970_
                                                         __tmp48285))))
                                            (declare (not safe))
                                            (cons _L18129_ __tmp48284))))
                                     (declare (not safe))
                                     (cons __tmp48286 __tmp48283)))
                                  (__tmp48274
                                   (let ((__tmp48275
                                          (let ((__tmp48281
                                                 (gx#datum->syntax
                                                  '#f
                                                  'make-class-slot-mutator))
                                                (__tmp48276
                                                 (let ((__tmp48277
                                                        (let ((__tmp48278
                                                               (let ((__tmp48280
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'quote))
                             (__tmp48279
                              (let ()
                                (declare (not safe))
                                (cons _L18970_ '()))))
                         (declare (not safe))
                         (cons __tmp48280 __tmp48279))))
                  (declare (not safe))
                  (cons __tmp48278 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L17894_
                                                         __tmp48277))))
                                            (declare (not safe))
                                            (cons __tmp48281 __tmp48276))))
                                     (declare (not safe))
                                     (cons __tmp48275 '()))))
                              (declare (not safe))
                              (cons __tmp48282 __tmp48274))))
                       (declare (not safe))
                       (cons __tmp48287 __tmp48273))))
                (declare (not safe))
                (cons __tmp48272 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L18967_ __tmp48271))))
                                          (declare (not safe))
                                          (cons __tmp48288 __tmp48270))))
                                   (declare (not safe))
                                   (_wrap17800_ __tmp48269))))
                            (declare (not safe))
                            (cons __tmp48268 '()))))
                     (declare (not safe))
                     (cons __tmp48289 __tmp48267)))
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
                                                 (_g1850518904_ __tmp48266))))
                                           _g1847918490_)))
                                       (__tmp48310
                                        (let ((__tmp48311
                                               (let ((__tmp48324
                                                      (gx#datum->syntax
                                                       '#f
                                                       'def))
                                                     (__tmp48312
                                                      (let ((__tmp48313
                                                             (let ((__tmp48314
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp48323
                                   (gx#datum->syntax '#f 'begin-annotation))
                                  (__tmp48315
                                   (let ((__tmp48320
                                          (let ((__tmp48322
                                                 (gx#datum->syntax
                                                  '#f
                                                  '@mop.predicate))
                                                (__tmp48321
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L18129_ '()))))
                                            (declare (not safe))
                                            (cons __tmp48322 __tmp48321)))
                                         (__tmp48316
                                          (let ((__tmp48317
                                                 (let ((__tmp48319
                                                        (gx#datum->syntax
                                                         '#f
                                                         'make-class-predicate))
                                                       (__tmp48318
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L17894_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp48319
                                                         __tmp48318))))
                                            (declare (not safe))
                                            (cons __tmp48317 '()))))
                                     (declare (not safe))
                                     (cons __tmp48320 __tmp48316))))
                              (declare (not safe))
                              (cons __tmp48323 __tmp48315))))
                       (declare (not safe))
                       (cons __tmp48314 '()))))
                (declare (not safe))
                (cons _L17891_ __tmp48313))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp48324
                                                       __tmp48312))))
                                          (declare (not safe))
                                          (_wrap17800_ __tmp48311))))
                                  (declare (not safe))
                                  (_g1847718992_ __tmp48310))))
                            _g1845118462_)))
                        (__tmp48325
                         (if (gx#stx-false? _L17892_)
                             (let ((__tmp48326 (gx#datum->syntax '#f 'begin)))
                               (declare (not safe))
                               (cons __tmp48326 '()))
                             (let ((__tmp48327
                                    (let ((__tmp48349
                                           (gx#datum->syntax '#f 'def))
                                          (__tmp48328
                                           (let ((__tmp48329
                                                  (let ((__tmp48330
                                                         (let ((__tmp48348
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'begin-annotation))
                       (__tmp48331
                        (let ((__tmp48345
                               (let ((__tmp48347
                                      (gx#datum->syntax '#f '@mop.constructor))
                                     (__tmp48346
                                      (let ()
                                        (declare (not safe))
                                        (cons _L18129_ '()))))
                                 (declare (not safe))
                                 (cons __tmp48347 __tmp48346)))
                              (__tmp48332
                               (let ((__tmp48333
                                      (let ((__tmp48344
                                             (gx#datum->syntax '#f 'lambda))
                                            (__tmp48334
                                             (let ((__tmp48343
                                                    (gx#datum->syntax
                                                     '#f
                                                     '$args))
                                                   (__tmp48335
                                                    (let ((__tmp48336
                                                           (let ((__tmp48342
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'apply))
                         (__tmp48337
                          (let ((__tmp48341
                                 (gx#datum->syntax '#f 'make-instance))
                                (__tmp48338
                                 (let ((__tmp48339
                                        (let ((__tmp48340
                                               (gx#datum->syntax '#f '$args)))
                                          (declare (not safe))
                                          (cons __tmp48340 '()))))
                                   (declare (not safe))
                                   (cons _L17894_ __tmp48339))))
                            (declare (not safe))
                            (cons __tmp48341 __tmp48338))))
                     (declare (not safe))
                     (cons __tmp48342 __tmp48337))))
              (declare (not safe))
              (cons __tmp48336 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp48343 __tmp48335))))
                                        (declare (not safe))
                                        (cons __tmp48344 __tmp48334))))
                                 (declare (not safe))
                                 (cons __tmp48333 '()))))
                          (declare (not safe))
                          (cons __tmp48345 __tmp48332))))
                   (declare (not safe))
                   (cons __tmp48348 __tmp48331))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp48330 '()))))
                                             (declare (not safe))
                                             (cons _L17892_ __tmp48329))))
                                      (declare (not safe))
                                      (cons __tmp48349 __tmp48328))))
                               (declare (not safe))
                               (_wrap17800_ __tmp48327)))))
                   (declare (not safe))
                   (_g1844918996_ __tmp48325))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1842318434_)))
                                                 (__tmp48350
                                                  (let ((__tmp48351
                                                         (let ((__tmp48368
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'def))
                       (__tmp48352
                        (let ((__tmp48353
                               (let ((__tmp48354
                                      (let ((__tmp48367
                                             (gx#datum->syntax
                                              '#f
                                              'begin-annotation))
                                            (__tmp48355
                                             (let ((__tmp48357
                                                    (let ((__tmp48366
                                                           (gx#datum->syntax
                                                            '#f
                                                            '@mop.class))
                                                          (__tmp48358
                                                           (let ((__tmp48359
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp48360
                                 (let ((__tmp48365
                                        (foldr (lambda (_g1900319006_
                                                        _g1900419009_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g1900319006_
                                                         _g1900419009_)))
                                               '()
                                               _L18009_))
                                       (__tmp48361
                                        (let ((__tmp48362
                                               (let ((__tmp48363
                                                      (let ((__tmp48364
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L18241_ '()))))
                (declare (not safe))
                (cons _L18213_ __tmp48364))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L18185_ __tmp48363))))
                                          (declare (not safe))
                                          (cons _L18101_ __tmp48362))))
                                   (declare (not safe))
                                   (cons __tmp48365 __tmp48361))))
                            (declare (not safe))
                            (cons _L18157_ __tmp48360))))
                     (declare (not safe))
                     (cons _L18045_ __tmp48359))))
              (declare (not safe))
              (cons __tmp48366 __tmp48358)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp48356
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L18409_ '()))))
                                               (declare (not safe))
                                               (cons __tmp48357 __tmp48356))))
                                        (declare (not safe))
                                        (cons __tmp48367 __tmp48355))))
                                 (declare (not safe))
                                 (cons __tmp48354 '()))))
                          (declare (not safe))
                          (cons _L17894_ __tmp48353))))
                   (declare (not safe))
                   (cons __tmp48368 __tmp48352))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_wrap17800_ __tmp48351))))
                                            (declare (not safe))
                                            (_g1842119000_ __tmp48350))))
                                      _g1839518406_)))
                                  (__tmp48369
                                   (let ((__tmp48389
                                          (gx#datum->syntax
                                           '#f
                                           'make-class-type))
                                         (__tmp48370
                                          (let ((__tmp48386
                                                 (let ((__tmp48388
                                                        (gx#datum->syntax
                                                         '#f
                                                         'quote))
                                                       (__tmp48387
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L18045_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp48388
                                                         __tmp48387)))
                                                (__tmp48371
                                                 (let ((__tmp48383
                                                        (let ((__tmp48385
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp48384
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L18073_ '()))))
                  (declare (not safe))
                  (cons __tmp48385 __tmp48384)))
               (__tmp48372
                (let ((__tmp48373
                       (let ((__tmp48379
                              (let ((__tmp48382 (gx#datum->syntax '#f 'quote))
                                    (__tmp48380
                                     (let ((__tmp48381
                                            (foldr (lambda (_g1901519018_
                                                            _g1901619021_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g1901519018_
                                                             _g1901619021_)))
                                                   '()
                                                   _L18009_)))
                                       (declare (not safe))
                                       (cons __tmp48381 '()))))
                                (declare (not safe))
                                (cons __tmp48382 __tmp48380)))
                             (__tmp48374
                              (let ((__tmp48375
                                     (let ((__tmp48376
                                            (let ((__tmp48378
                                                   (gx#datum->syntax
                                                    '#f
                                                    'quote))
                                                  (__tmp48377
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L18101_ '()))))
                                              (declare (not safe))
                                              (cons __tmp48378 __tmp48377))))
                                       (declare (not safe))
                                       (cons __tmp48376 '()))))
                                (declare (not safe))
                                (cons _L18353_ __tmp48375))))
                         (declare (not safe))
                         (cons __tmp48379 __tmp48374))))
                  (declare (not safe))
                  (cons _L18381_ __tmp48373))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp48383
                                                         __tmp48372))))
                                            (declare (not safe))
                                            (cons __tmp48386 __tmp48371))))
                                     (declare (not safe))
                                     (cons __tmp48389 __tmp48370))))
                             (declare (not safe))
                             (_g1839319012_ __tmp48369))))
                       _g1836718378_)))
                   (__tmp48390
                    (let ((__tmp48391 (gx#datum->syntax '#f 'list)))
                      (declare (not safe))
                      (cons __tmp48391 _L17893_))))
              (declare (not safe))
              (_g1836519024_ __tmp48390))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1833918350_)))
                                            (__tmp48392
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
                                                                (let ((__tmp48401
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '@list))
                              (__tmp48393
                               (let ((__tmp48396
                                      (let ((__tmp48400
                                             (gx#datum->syntax '#f '@list))
                                            (__tmp48397
                                             (let ((__tmp48398
                                                    (let ((__tmp48399
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L19047_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons ':: __tmp48399))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'metaclass: __tmp48398))))
                                        (declare (not safe))
                                        (cons __tmp48400 __tmp48397)))
                                     (__tmp48394
                                      (let ((__tmp48395
                                             (let ()
                                               (declare (not safe))
                                               (cons _L18325_ '()))))
                                        (declare (not safe))
                                        (cons ':: __tmp48395))))
                                 (declare (not safe))
                                 (cons __tmp48396 __tmp48394))))
                          (declare (not safe))
                          (cons __tmp48401 __tmp48393))))
                    _g1903319044_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_g1903119059_
                                                    _metaclass17952_))
                                                 _L18325_)))
                                       (declare (not safe))
                                       (_g1833719028_ __tmp48392))))
                                 _g1831118322_)))
                             (__tmp48402
                              (if _struct?17932_
                                  (let ((__tmp48409
                                         (gx#datum->syntax '#f '@list))
                                        (__tmp48403
                                         (let ((__tmp48406
                                                (let ((__tmp48408
                                                       (gx#datum->syntax
                                                        '#f
                                                        '@list))
                                                      (__tmp48407
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'struct: '#t))))
                                                  (declare (not safe))
                                                  (cons __tmp48408
                                                        __tmp48407)))
                                               (__tmp48404
                                                (let ((__tmp48405
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L18297_ '()))))
                                                  (declare (not safe))
                                                  (cons ':: __tmp48405))))
                                           (declare (not safe))
                                           (cons __tmp48406 __tmp48404))))
                                    (declare (not safe))
                                    (cons __tmp48409 __tmp48403))
                                  _L18297_)))
                        (declare (not safe))
                        (_g1830919063_ __tmp48402))))
                  _g1828318294_)))
              (__tmp48410
               (if (gx#stx-e _L18213_)
                   (let ((__tmp48417 (gx#datum->syntax '#f '@list))
                         (__tmp48411
                          (let ((__tmp48414
                                 (let ((__tmp48416
                                        (gx#datum->syntax '#f '@list))
                                       (__tmp48415
                                        (let ()
                                          (declare (not safe))
                                          (cons 'final: '#t))))
                                   (declare (not safe))
                                   (cons __tmp48416 __tmp48415)))
                                (__tmp48412
                                 (let ((__tmp48413
                                        (let ()
                                          (declare (not safe))
                                          (cons _L18269_ '()))))
                                   (declare (not safe))
                                   (cons ':: __tmp48413))))
                            (declare (not safe))
                            (cons __tmp48414 __tmp48412))))
                     (declare (not safe))
                     (cons __tmp48417 __tmp48411))
                   _L18269_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g1828119067_ __tmp48410))))
                                           _g1825518266_)))
                                       (__tmp48418
                                        (let ((_$e19075_
                                               (gx#stx-getq
                                                'properties:
                                                _L17889_)))
                                          (if _$e19075_
                                              _$e19075_
                                              (let ((__tmp48419
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list)))
                                                (declare (not safe))
                                                (cons __tmp48419 '()))))))
                                  (declare (not safe))
                                  (_g1825319071_ __tmp48418))))
                            _g1822718238_)))
                        (__tmp48420
                         (if (gx#stx-e _metaclass17952_)
                             (gx#core-quote-syntax _metaclass17952_)
                             '#f)))
                   (declare (not safe))
                   (_g1822519079_ __tmp48420))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1819918210_)))
                                                 (__tmp48421
                                                  (gx#stx-getq
                                                   'final:
                                                   _L17889_)))
                                            (declare (not safe))
                                            (_g1819719083_ __tmp48421))))
                                      _g1817118182_))))
                             (declare (not safe))
                             (_g1816919087_ _struct?17932_))))
                       _g1814318154_)))
                   (__tmp48422 (gx#stx-map gx#core-quote-syntax _L17893_)))
              (declare (not safe))
              (_g1814119091_ __tmp48422))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1811518126_)))
                                            (__tmp48423
                                             (gx#core-quote-syntax _L17894_)))
                                       (declare (not safe))
                                       (_g1811319095_ __tmp48423))))
                                 _g1808718098_)))
                             (__tmp48424 (gx#stx-getq 'constructor: _L17889_)))
                        (declare (not safe))
                        (_g1808519099_ __tmp48424))))
                  _g1805918070_)))
              (__tmp48425
               (let ((_$e19107_ (gx#stx-getq 'name: _L17889_)))
                 (if _$e19107_ _$e19107_ _L17894_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g1805719103_ __tmp48425))))
                                           _g1803118042_)))
                                       (__tmp48426
                                        (let ((_$e19115_
                                               (gx#stx-getq 'id: _L17889_)))
                                          (if _$e19115_
                                              _$e19115_
                                              (let ()
                                                (declare (not safe))
                                                (|gerbil/core$<MOP>$<MOP:1>[1]#make-class-type-id|
                                                 _L17894_))))))
                                  (declare (not safe))
                                  (_g1802919111_ __tmp48426))))
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
                                (__tmp48427
                                 (gx#stx-map _slot-name17802_ _slots17939_)))
                           (declare (not safe))
                           (_g1795419119_ __tmp48427))
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
