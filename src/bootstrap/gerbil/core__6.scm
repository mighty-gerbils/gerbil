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
                                (let ((_e1914019159_
                                       (gx#syntax-e _g1913419156_)))
                                  (let ((_hd1913919163_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1914019159_)))
                                        (_tl1913819166_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1914019159_))))
                                    (if (gx#stx-pair? _tl1913819166_)
                                        (let ((_e1914319169_
                                               (gx#syntax-e _tl1913819166_)))
                                          (let ((_hd1914219173_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1914319169_)))
                                                (_tl1914119176_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1914319169_))))
                                            (if (gx#stx-pair? _tl1914119176_)
                                                (let ((_e1914619179_
                                                       (gx#syntax-e
                                                        _tl1914119176_)))
                                                  (let ((_hd1914519183_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1914619179_)))
                                                        (_tl1914419186_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1914619179_))))
                                                    (if (gx#stx-null?
                                                         _tl1914419186_)
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
                      (let ((_e1781417839_ (gx#syntax-e _g1780617836_)))
                        (let ((_hd1781317843_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1781417839_)))
                              (_tl1781217846_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1781417839_))))
                          (if (gx#stx-pair? _tl1781217846_)
                              (let ((_e1781717849_
                                     (gx#syntax-e _tl1781217846_)))
                                (let ((_hd1781617853_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1781717849_)))
                                      (_tl1781517856_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1781717849_))))
                                  (if (gx#stx-pair? _tl1781517856_)
                                      (let ((_e1782017859_
                                             (gx#syntax-e _tl1781517856_)))
                                        (let ((_hd1781917863_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1782017859_)))
                                              (_tl1781817866_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1782017859_))))
                                          (if (gx#stx-pair? _tl1781817866_)
                                              (let ((_e1782317869_
                                                     (gx#syntax-e
                                                      _tl1781817866_)))
                                                (let ((_hd1782217873_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1782317869_)))
                                                      (_tl1782117876_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1782317869_))))
                                                  (if (gx#stx-pair?
                                                       _tl1782117876_)
                                                      (let ((_e1782617879_
                                                             (gx#syntax-e
                                                              _tl1782117876_)))
                                                        (let ((_hd1782517883_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e1782617879_)))
                      (_tl1782417886_
                       (let () (declare (not safe)) (##cdr _e1782617879_))))
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
                                       (let ((_g50951_
                                              (gx#syntax-split-splice
                                               _g1795617976_
                                               '0)))
                                         (begin
                                           (let ((_g50952_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g50951_)
                                                        (##vector-length
                                                         _g50951_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g50952_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g50952_)))
                                           (let ((_target1795817979_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g50951_ 0)))
                                                 (_tl1796017982_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g50951_
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
                             (let ((__tmp51173
                                    (let ()
                                      (declare (not safe))
                                      (cons _lp-hd1796317999_
                                            _slot1796517992_))))
                               (declare (not safe))
                               (_loop1796117985_
                                _lp-tl1796418002_
                                __tmp51173))))
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
                                                             (let ((_g50953_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _g1850718536_ '0)))
                       (begin
                         (let ((_g50954_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g50953_)
                                      (##vector-length _g50953_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g50954_ 2)))
                               (error "Context expects 2 values" _g50954_)))
                         (let ((_target1851018539_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g50953_ 0)))
                               (_tl1851218542_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g50953_ 1))))
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
                                                       (let ((_e1852318567_
                                                              (gx#syntax-e
                                                               _lp-hd1851518561_)))
                                                         (let ((_hd1852218571_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e1852318567_)))
                       (_tl1852118574_
                        (let () (declare (not safe)) (##cdr _e1852318567_))))
                   (if (gx#stx-pair? _tl1852118574_)
                       (let ((_e1852618577_ (gx#syntax-e _tl1852118574_)))
                         (let ((_hd1852518581_
                                (let ()
                                  (declare (not safe))
                                  (##car _e1852618577_)))
                               (_tl1852418584_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e1852618577_))))
                           (if (gx#stx-null? _tl1852418584_)
                               (let ((__tmp51011
                                      (let ()
                                        (declare (not safe))
                                        (cons _hd1852518581_
                                              _def-setf1851718552_)))
                                     (__tmp51010
                                      (let ()
                                        (declare (not safe))
                                        (cons _hd1852218571_
                                              _def-getf1851818554_))))
                                 (declare (not safe))
                                 (_loop1851318545_
                                  _lp-tl1851618564_
                                  __tmp51011
                                  __tmp51010))
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
                            (let ((_g50955_
                                   (gx#syntax-split-splice _g1861318642_ '0)))
                              (begin
                                (let ((_g50956_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g50955_)
                                             (##vector-length _g50955_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g50956_ 2)))
                                      (error "Context expects 2 values"
                                             _g50956_)))
                                (let ((_target1861618645_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g50955_ 0)))
                                      (_tl1861818648_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g50955_ 1))))
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
                      (let ((_e1862918673_ (gx#syntax-e _lp-hd1862118667_)))
                        (let ((_hd1862818677_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1862918673_)))
                              (_tl1862718680_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1862918673_))))
                          (if (gx#stx-pair? _tl1862718680_)
                              (let ((_e1863218683_
                                     (gx#syntax-e _tl1862718680_)))
                                (let ((_hd1863118687_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1863218683_)))
                                      (_tl1863018690_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1863218683_))))
                                  (if (gx#stx-null? _tl1863018690_)
                                      (let ((__tmp50964
                                             (let ()
                                               (declare (not safe))
                                               (cons _hd1863118687_
                                                     _def-usetf1862318658_)))
                                            (__tmp50963
                                             (let ()
                                               (declare (not safe))
                                               (cons _hd1862818677_
                                                     _def-ugetf1862418660_))))
                                        (declare (not safe))
                                        (_loop1861918651_
                                         _lp-tl1862218670_
                                         __tmp50964
                                         __tmp50963))
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
                       (let ((__tmp50957
                              (let ((__tmp50962 (gx#datum->syntax '#f 'begin))
                                    (__tmp50958
                                     (let ((__tmp50959
                                            (let ((__tmp50960
                                                   (let ((__tmp50961
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
                                                           __tmp50961))))
                                              (declare (not safe))
                                              (cons _L18493_ __tmp50960))))
                                       (declare (not safe))
                                       (cons _L18437_ __tmp50959))))
                                (declare (not safe))
                                (cons __tmp50962 __tmp50958))))
                         (declare (not safe))
                         (_wrap17800_ __tmp50957)))))
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
                     (__tmp50965
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
                                       (let ((_e1876618785_
                                              (gx#syntax-e _g1876018782_)))
                                         (let ((_hd1876518789_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e1876618785_)))
                                               (_tl1876418792_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e1876618785_))))
                                           (if (gx#stx-pair? _tl1876418792_)
                                               (let ((_e1876918795_
                                                      (gx#syntax-e
                                                       _tl1876418792_)))
                                                 (let ((_hd1876818799_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e1876918795_)))
                                                       (_tl1876718802_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e1876918795_))))
                                                   (if (gx#stx-pair?
                                                        _tl1876718802_)
                                                       (let ((_e1877218805_
                                                              (gx#syntax-e
                                                               _tl1876718802_)))
                                                         (let ((_hd1877118809_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e1877218805_)))
                       (_tl1877018812_
                        (let () (declare (not safe)) (##cdr _e1877218805_))))
                   (if (gx#stx-null? _tl1877018812_)
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
                                        (let ((_e1884218858_
                                               (gx#syntax-e _g1883718855_)))
                                          (let ((_hd1884118862_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1884218858_)))
                                                (_tl1884018865_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1884218858_))))
                                            (if (gx#stx-pair? _tl1884018865_)
                                                (let ((_e1884518868_
                                                       (gx#syntax-e
                                                        _tl1884018865_)))
                                                  (let ((_hd1884418872_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1884518868_)))
                                                        (_tl1884318875_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1884518868_))))
                                                    (if (gx#stx-null?
                                                         _tl1884318875_)
                                                        ((lambda (_L18878_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L18880_)
                   (let ()
                     (let ((__tmp50988
                            (let ((__tmp50989
                                   (let ((__tmp51008
                                          (gx#datum->syntax '#f 'def))
                                         (__tmp50990
                                          (let ((__tmp50991
                                                 (let ((__tmp50992
                                                        (let ((__tmp51007
                                                               (gx#datum->syntax
                                                                '#f
                                                                'begin-annotation))
                                                              (__tmp50993
                                                               (let ((__tmp51002
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp51006
                                     (gx#datum->syntax '#f '@mop.accessor))
                                    (__tmp51003
                                     (let ((__tmp51004
                                            (let ((__tmp51005
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#f '()))))
                                              (declare (not safe))
                                              (cons _L18818_ __tmp51005))))
                                       (declare (not safe))
                                       (cons _L18129_ __tmp51004))))
                                (declare (not safe))
                                (cons __tmp51006 __tmp51003)))
                             (__tmp50994
                              (let ((__tmp50995
                                     (let ((__tmp51001
                                            (gx#datum->syntax
                                             '#f
                                             'make-class-slot-unchecked-accessor))
                                           (__tmp50996
                                            (let ((__tmp50997
                                                   (let ((__tmp50998
                                                          (let ((__tmp51000
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'quote))
                        (__tmp50999
                         (let () (declare (not safe)) (cons _L18818_ '()))))
                    (declare (not safe))
                    (cons __tmp51000 __tmp50999))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp50998 '()))))
                                              (declare (not safe))
                                              (cons _L17894_ __tmp50997))))
                                       (declare (not safe))
                                       (cons __tmp51001 __tmp50996))))
                                (declare (not safe))
                                (cons __tmp50995 '()))))
                         (declare (not safe))
                         (cons __tmp51002 __tmp50994))))
                  (declare (not safe))
                  (cons __tmp51007 __tmp50993))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp50992 '()))))
                                            (declare (not safe))
                                            (cons _L18880_ __tmp50991))))
                                     (declare (not safe))
                                     (cons __tmp51008 __tmp50990))))
                              (declare (not safe))
                              (_wrap17800_ __tmp50989)))
                           (__tmp50966
                            (let ((__tmp50967
                                   (let ((__tmp50968
                                          (let ((__tmp50987
                                                 (gx#datum->syntax '#f 'def))
                                                (__tmp50969
                                                 (let ((__tmp50970
                                                        (let ((__tmp50971
                                                               (let ((__tmp50986
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'begin-annotation))
                             (__tmp50972
                              (let ((__tmp50981
                                     (let ((__tmp50985
                                            (gx#datum->syntax
                                             '#f
                                             '@mop.mutator))
                                           (__tmp50982
                                            (let ((__tmp50983
                                                   (let ((__tmp50984
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '#f '()))))
                                                     (declare (not safe))
                                                     (cons _L18818_
                                                           __tmp50984))))
                                              (declare (not safe))
                                              (cons _L18129_ __tmp50983))))
                                       (declare (not safe))
                                       (cons __tmp50985 __tmp50982)))
                                    (__tmp50973
                                     (let ((__tmp50974
                                            (let ((__tmp50980
                                                   (gx#datum->syntax
                                                    '#f
                                                    'make-class-slot-unchecked-mutator))
                                                  (__tmp50975
                                                   (let ((__tmp50976
                                                          (let ((__tmp50977
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp50979 (gx#datum->syntax '#f 'quote))
                               (__tmp50978
                                (let ()
                                  (declare (not safe))
                                  (cons _L18818_ '()))))
                           (declare (not safe))
                           (cons __tmp50979 __tmp50978))))
                    (declare (not safe))
                    (cons __tmp50977 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L17894_
                                                           __tmp50976))))
                                              (declare (not safe))
                                              (cons __tmp50980 __tmp50975))))
                                       (declare (not safe))
                                       (cons __tmp50974 '()))))
                                (declare (not safe))
                                (cons __tmp50981 __tmp50973))))
                         (declare (not safe))
                         (cons __tmp50986 __tmp50972))))
                  (declare (not safe))
                  (cons __tmp50971 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L18878_
                                                         __tmp50970))))
                                            (declare (not safe))
                                            (cons __tmp50987 __tmp50969))))
                                     (declare (not safe))
                                     (_wrap17800_ __tmp50968))))
                              (declare (not safe))
                              (cons __tmp50967 '()))))
                       (declare (not safe))
                       (cons __tmp50988 __tmp50966))))
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
                                 (__tmp51009
                                  (list (gx#stx-identifier
                                         _L18817_
                                         '"&"
                                         _L18817_)
                                        (gx#stx-identifier
                                         _L18815_
                                         '"&"
                                         _L18815_))))
                            (declare (not safe))
                            (_g1883518896_ __tmp51009)))
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
                (_g1861118752_ __tmp50965))))
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
              (__tmp51012
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
                                (let ((_e1891818937_
                                       (gx#syntax-e _g1891218934_)))
                                  (let ((_hd1891718941_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1891818937_)))
                                        (_tl1891618944_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1891818937_))))
                                    (if (gx#stx-pair? _tl1891618944_)
                                        (let ((_e1892118947_
                                               (gx#syntax-e _tl1891618944_)))
                                          (let ((_hd1892018951_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1892118947_)))
                                                (_tl1891918954_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1892118947_))))
                                            (if (gx#stx-pair? _tl1891918954_)
                                                (let ((_e1892418957_
                                                       (gx#syntax-e
                                                        _tl1891918954_)))
                                                  (let ((_hd1892318961_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1892418957_)))
                                                        (_tl1892218964_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1892418957_))))
                                                    (if (gx#stx-null?
                                                         _tl1892218964_)
                                                        ((lambda (_L18967_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L18969_
                          _L18970_)
                   (let ((__tmp51035
                          (let ((__tmp51036
                                 (let ((__tmp51055 (gx#datum->syntax '#f 'def))
                                       (__tmp51037
                                        (let ((__tmp51038
                                               (let ((__tmp51039
                                                      (let ((__tmp51054
                                                             (gx#datum->syntax
                                                              '#f
                                                              'begin-annotation))
                                                            (__tmp51040
                                                             (let ((__tmp51049
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp51053
                                   (gx#datum->syntax '#f '@mop.accessor))
                                  (__tmp51050
                                   (let ((__tmp51051
                                          (let ((__tmp51052
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons '#t '()))))
                                            (declare (not safe))
                                            (cons _L18970_ __tmp51052))))
                                     (declare (not safe))
                                     (cons _L18129_ __tmp51051))))
                              (declare (not safe))
                              (cons __tmp51053 __tmp51050)))
                           (__tmp51041
                            (let ((__tmp51042
                                   (let ((__tmp51048
                                          (gx#datum->syntax
                                           '#f
                                           'make-class-slot-accessor))
                                         (__tmp51043
                                          (let ((__tmp51044
                                                 (let ((__tmp51045
                                                        (let ((__tmp51047
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp51046
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L18970_ '()))))
                  (declare (not safe))
                  (cons __tmp51047 __tmp51046))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp51045 '()))))
                                            (declare (not safe))
                                            (cons _L17894_ __tmp51044))))
                                     (declare (not safe))
                                     (cons __tmp51048 __tmp51043))))
                              (declare (not safe))
                              (cons __tmp51042 '()))))
                       (declare (not safe))
                       (cons __tmp51049 __tmp51041))))
                (declare (not safe))
                (cons __tmp51054 __tmp51040))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp51039 '()))))
                                          (declare (not safe))
                                          (cons _L18969_ __tmp51038))))
                                   (declare (not safe))
                                   (cons __tmp51055 __tmp51037))))
                            (declare (not safe))
                            (_wrap17800_ __tmp51036)))
                         (__tmp51013
                          (let ((__tmp51014
                                 (let ((__tmp51015
                                        (let ((__tmp51034
                                               (gx#datum->syntax '#f 'def))
                                              (__tmp51016
                                               (let ((__tmp51017
                                                      (let ((__tmp51018
                                                             (let ((__tmp51033
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'begin-annotation))
                           (__tmp51019
                            (let ((__tmp51028
                                   (let ((__tmp51032
                                          (gx#datum->syntax '#f '@mop.mutator))
                                         (__tmp51029
                                          (let ((__tmp51030
                                                 (let ((__tmp51031
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons '#t '()))))
                                                   (declare (not safe))
                                                   (cons _L18970_
                                                         __tmp51031))))
                                            (declare (not safe))
                                            (cons _L18129_ __tmp51030))))
                                     (declare (not safe))
                                     (cons __tmp51032 __tmp51029)))
                                  (__tmp51020
                                   (let ((__tmp51021
                                          (let ((__tmp51027
                                                 (gx#datum->syntax
                                                  '#f
                                                  'make-class-slot-mutator))
                                                (__tmp51022
                                                 (let ((__tmp51023
                                                        (let ((__tmp51024
                                                               (let ((__tmp51026
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'quote))
                             (__tmp51025
                              (let ()
                                (declare (not safe))
                                (cons _L18970_ '()))))
                         (declare (not safe))
                         (cons __tmp51026 __tmp51025))))
                  (declare (not safe))
                  (cons __tmp51024 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L17894_
                                                         __tmp51023))))
                                            (declare (not safe))
                                            (cons __tmp51027 __tmp51022))))
                                     (declare (not safe))
                                     (cons __tmp51021 '()))))
                              (declare (not safe))
                              (cons __tmp51028 __tmp51020))))
                       (declare (not safe))
                       (cons __tmp51033 __tmp51019))))
                (declare (not safe))
                (cons __tmp51018 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L18967_ __tmp51017))))
                                          (declare (not safe))
                                          (cons __tmp51034 __tmp51016))))
                                   (declare (not safe))
                                   (_wrap17800_ __tmp51015))))
                            (declare (not safe))
                            (cons __tmp51014 '()))))
                     (declare (not safe))
                     (cons __tmp51035 __tmp51013)))
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
                                                 (_g1850518904_ __tmp51012))))
                                           _g1847918490_)))
                                       (__tmp51056
                                        (let ((__tmp51057
                                               (let ((__tmp51070
                                                      (gx#datum->syntax
                                                       '#f
                                                       'def))
                                                     (__tmp51058
                                                      (let ((__tmp51059
                                                             (let ((__tmp51060
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp51069
                                   (gx#datum->syntax '#f 'begin-annotation))
                                  (__tmp51061
                                   (let ((__tmp51066
                                          (let ((__tmp51068
                                                 (gx#datum->syntax
                                                  '#f
                                                  '@mop.predicate))
                                                (__tmp51067
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L18129_ '()))))
                                            (declare (not safe))
                                            (cons __tmp51068 __tmp51067)))
                                         (__tmp51062
                                          (let ((__tmp51063
                                                 (let ((__tmp51065
                                                        (gx#datum->syntax
                                                         '#f
                                                         'make-class-predicate))
                                                       (__tmp51064
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L17894_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp51065
                                                         __tmp51064))))
                                            (declare (not safe))
                                            (cons __tmp51063 '()))))
                                     (declare (not safe))
                                     (cons __tmp51066 __tmp51062))))
                              (declare (not safe))
                              (cons __tmp51069 __tmp51061))))
                       (declare (not safe))
                       (cons __tmp51060 '()))))
                (declare (not safe))
                (cons _L17891_ __tmp51059))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp51070
                                                       __tmp51058))))
                                          (declare (not safe))
                                          (_wrap17800_ __tmp51057))))
                                  (declare (not safe))
                                  (_g1847718992_ __tmp51056))))
                            _g1845118462_)))
                        (__tmp51071
                         (if (gx#stx-false? _L17892_)
                             (let ((__tmp51095 (gx#datum->syntax '#f 'begin)))
                               (declare (not safe))
                               (cons __tmp51095 '()))
                             (let ((__tmp51072
                                    (let ((__tmp51094
                                           (gx#datum->syntax '#f 'def))
                                          (__tmp51073
                                           (let ((__tmp51074
                                                  (let ((__tmp51075
                                                         (let ((__tmp51093
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'begin-annotation))
                       (__tmp51076
                        (let ((__tmp51090
                               (let ((__tmp51092
                                      (gx#datum->syntax '#f '@mop.constructor))
                                     (__tmp51091
                                      (let ()
                                        (declare (not safe))
                                        (cons _L18129_ '()))))
                                 (declare (not safe))
                                 (cons __tmp51092 __tmp51091)))
                              (__tmp51077
                               (let ((__tmp51078
                                      (let ((__tmp51089
                                             (gx#datum->syntax '#f 'lambda))
                                            (__tmp51079
                                             (let ((__tmp51088
                                                    (gx#datum->syntax
                                                     '#f
                                                     '$args))
                                                   (__tmp51080
                                                    (let ((__tmp51081
                                                           (let ((__tmp51087
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'apply))
                         (__tmp51082
                          (let ((__tmp51086
                                 (gx#datum->syntax '#f 'make-instance))
                                (__tmp51083
                                 (let ((__tmp51084
                                        (let ((__tmp51085
                                               (gx#datum->syntax '#f '$args)))
                                          (declare (not safe))
                                          (cons __tmp51085 '()))))
                                   (declare (not safe))
                                   (cons _L17894_ __tmp51084))))
                            (declare (not safe))
                            (cons __tmp51086 __tmp51083))))
                     (declare (not safe))
                     (cons __tmp51087 __tmp51082))))
              (declare (not safe))
              (cons __tmp51081 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp51088 __tmp51080))))
                                        (declare (not safe))
                                        (cons __tmp51089 __tmp51079))))
                                 (declare (not safe))
                                 (cons __tmp51078 '()))))
                          (declare (not safe))
                          (cons __tmp51090 __tmp51077))))
                   (declare (not safe))
                   (cons __tmp51093 __tmp51076))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp51075 '()))))
                                             (declare (not safe))
                                             (cons _L17892_ __tmp51074))))
                                      (declare (not safe))
                                      (cons __tmp51094 __tmp51073))))
                               (declare (not safe))
                               (_wrap17800_ __tmp51072)))))
                   (declare (not safe))
                   (_g1844918996_ __tmp51071))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1842318434_)))
                                                 (__tmp51096
                                                  (let ((__tmp51097
                                                         (let ((__tmp51114
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'def))
                       (__tmp51098
                        (let ((__tmp51099
                               (let ((__tmp51100
                                      (let ((__tmp51113
                                             (gx#datum->syntax
                                              '#f
                                              'begin-annotation))
                                            (__tmp51101
                                             (let ((__tmp51103
                                                    (let ((__tmp51112
                                                           (gx#datum->syntax
                                                            '#f
                                                            '@mop.class))
                                                          (__tmp51104
                                                           (let ((__tmp51105
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp51106
                                 (let ((__tmp51111
                                        (foldr (lambda (_g1900319006_
                                                        _g1900419009_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g1900319006_
                                                         _g1900419009_)))
                                               '()
                                               _L18009_))
                                       (__tmp51107
                                        (let ((__tmp51108
                                               (let ((__tmp51109
                                                      (let ((__tmp51110
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L18241_ '()))))
                (declare (not safe))
                (cons _L18213_ __tmp51110))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L18185_ __tmp51109))))
                                          (declare (not safe))
                                          (cons _L18101_ __tmp51108))))
                                   (declare (not safe))
                                   (cons __tmp51111 __tmp51107))))
                            (declare (not safe))
                            (cons _L18157_ __tmp51106))))
                     (declare (not safe))
                     (cons _L18045_ __tmp51105))))
              (declare (not safe))
              (cons __tmp51112 __tmp51104)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp51102
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L18409_ '()))))
                                               (declare (not safe))
                                               (cons __tmp51103 __tmp51102))))
                                        (declare (not safe))
                                        (cons __tmp51113 __tmp51101))))
                                 (declare (not safe))
                                 (cons __tmp51100 '()))))
                          (declare (not safe))
                          (cons _L17894_ __tmp51099))))
                   (declare (not safe))
                   (cons __tmp51114 __tmp51098))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_wrap17800_ __tmp51097))))
                                            (declare (not safe))
                                            (_g1842119000_ __tmp51096))))
                                      _g1839518406_)))
                                  (__tmp51115
                                   (let ((__tmp51135
                                          (gx#datum->syntax
                                           '#f
                                           'make-class-type))
                                         (__tmp51116
                                          (let ((__tmp51132
                                                 (let ((__tmp51134
                                                        (gx#datum->syntax
                                                         '#f
                                                         'quote))
                                                       (__tmp51133
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L18045_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp51134
                                                         __tmp51133)))
                                                (__tmp51117
                                                 (let ((__tmp51129
                                                        (let ((__tmp51131
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp51130
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L18073_ '()))))
                  (declare (not safe))
                  (cons __tmp51131 __tmp51130)))
               (__tmp51118
                (let ((__tmp51119
                       (let ((__tmp51125
                              (let ((__tmp51128 (gx#datum->syntax '#f 'quote))
                                    (__tmp51126
                                     (let ((__tmp51127
                                            (foldr (lambda (_g1901519018_
                                                            _g1901619021_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g1901519018_
                                                             _g1901619021_)))
                                                   '()
                                                   _L18009_)))
                                       (declare (not safe))
                                       (cons __tmp51127 '()))))
                                (declare (not safe))
                                (cons __tmp51128 __tmp51126)))
                             (__tmp51120
                              (let ((__tmp51121
                                     (let ((__tmp51122
                                            (let ((__tmp51124
                                                   (gx#datum->syntax
                                                    '#f
                                                    'quote))
                                                  (__tmp51123
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L18101_ '()))))
                                              (declare (not safe))
                                              (cons __tmp51124 __tmp51123))))
                                       (declare (not safe))
                                       (cons __tmp51122 '()))))
                                (declare (not safe))
                                (cons _L18353_ __tmp51121))))
                         (declare (not safe))
                         (cons __tmp51125 __tmp51120))))
                  (declare (not safe))
                  (cons _L18381_ __tmp51119))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp51129
                                                         __tmp51118))))
                                            (declare (not safe))
                                            (cons __tmp51132 __tmp51117))))
                                     (declare (not safe))
                                     (cons __tmp51135 __tmp51116))))
                             (declare (not safe))
                             (_g1839319012_ __tmp51115))))
                       _g1836718378_)))
                   (__tmp51136
                    (let ((__tmp51137 (gx#datum->syntax '#f 'list)))
                      (declare (not safe))
                      (cons __tmp51137 _L17893_))))
              (declare (not safe))
              (_g1836519024_ __tmp51136))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1833918350_)))
                                            (__tmp51138
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
                                                                (let ((__tmp51147
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '@list))
                              (__tmp51139
                               (let ((__tmp51142
                                      (let ((__tmp51146
                                             (gx#datum->syntax '#f '@list))
                                            (__tmp51143
                                             (let ((__tmp51144
                                                    (let ((__tmp51145
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L19047_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons ':: __tmp51145))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'metaclass: __tmp51144))))
                                        (declare (not safe))
                                        (cons __tmp51146 __tmp51143)))
                                     (__tmp51140
                                      (let ((__tmp51141
                                             (let ()
                                               (declare (not safe))
                                               (cons _L18325_ '()))))
                                        (declare (not safe))
                                        (cons ':: __tmp51141))))
                                 (declare (not safe))
                                 (cons __tmp51142 __tmp51140))))
                          (declare (not safe))
                          (cons __tmp51147 __tmp51139))))
                    _g1903319044_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_g1903119059_
                                                    _metaclass17952_))
                                                 _L18325_)))
                                       (declare (not safe))
                                       (_g1833719028_ __tmp51138))))
                                 _g1831118322_)))
                             (__tmp51148
                              (if _struct?17932_
                                  (let ((__tmp51155
                                         (gx#datum->syntax '#f '@list))
                                        (__tmp51149
                                         (let ((__tmp51152
                                                (let ((__tmp51154
                                                       (gx#datum->syntax
                                                        '#f
                                                        '@list))
                                                      (__tmp51153
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'struct: '#t))))
                                                  (declare (not safe))
                                                  (cons __tmp51154
                                                        __tmp51153)))
                                               (__tmp51150
                                                (let ((__tmp51151
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L18297_ '()))))
                                                  (declare (not safe))
                                                  (cons ':: __tmp51151))))
                                           (declare (not safe))
                                           (cons __tmp51152 __tmp51150))))
                                    (declare (not safe))
                                    (cons __tmp51155 __tmp51149))
                                  _L18297_)))
                        (declare (not safe))
                        (_g1830919063_ __tmp51148))))
                  _g1828318294_)))
              (__tmp51156
               (if (gx#stx-e _L18213_)
                   (let ((__tmp51163 (gx#datum->syntax '#f '@list))
                         (__tmp51157
                          (let ((__tmp51160
                                 (let ((__tmp51162
                                        (gx#datum->syntax '#f '@list))
                                       (__tmp51161
                                        (let ()
                                          (declare (not safe))
                                          (cons 'final: '#t))))
                                   (declare (not safe))
                                   (cons __tmp51162 __tmp51161)))
                                (__tmp51158
                                 (let ((__tmp51159
                                        (let ()
                                          (declare (not safe))
                                          (cons _L18269_ '()))))
                                   (declare (not safe))
                                   (cons ':: __tmp51159))))
                            (declare (not safe))
                            (cons __tmp51160 __tmp51158))))
                     (declare (not safe))
                     (cons __tmp51163 __tmp51157))
                   _L18269_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g1828119067_ __tmp51156))))
                                           _g1825518266_)))
                                       (__tmp51164
                                        (let ((_$e19075_
                                               (gx#stx-getq
                                                'properties:
                                                _L17889_)))
                                          (if _$e19075_
                                              _$e19075_
                                              (let ((__tmp51165
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list)))
                                                (declare (not safe))
                                                (cons __tmp51165 '()))))))
                                  (declare (not safe))
                                  (_g1825319071_ __tmp51164))))
                            _g1822718238_)))
                        (__tmp51166
                         (if (gx#stx-e _metaclass17952_)
                             (gx#core-quote-syntax _metaclass17952_)
                             '#f)))
                   (declare (not safe))
                   (_g1822519079_ __tmp51166))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1819918210_)))
                                                 (__tmp51167
                                                  (gx#stx-getq
                                                   'final:
                                                   _L17889_)))
                                            (declare (not safe))
                                            (_g1819719083_ __tmp51167))))
                                      _g1817118182_))))
                             (declare (not safe))
                             (_g1816919087_ _struct?17932_))))
                       _g1814318154_)))
                   (__tmp51168 (gx#stx-map gx#core-quote-syntax _L17893_)))
              (declare (not safe))
              (_g1814119091_ __tmp51168))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1811518126_)))
                                            (__tmp51169
                                             (gx#core-quote-syntax _L17894_)))
                                       (declare (not safe))
                                       (_g1811319095_ __tmp51169))))
                                 _g1808718098_)))
                             (__tmp51170 (gx#stx-getq 'constructor: _L17889_)))
                        (declare (not safe))
                        (_g1808519099_ __tmp51170))))
                  _g1805918070_)))
              (__tmp51171
               (let ((_$e19107_ (gx#stx-getq 'name: _L17889_)))
                 (if _$e19107_ _$e19107_ _L17894_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g1805719103_ __tmp51171))))
                                           _g1803118042_)))
                                       (__tmp51172
                                        (let ((_$e19115_
                                               (gx#stx-getq 'id: _L17889_)))
                                          (if _$e19115_
                                              _$e19115_
                                              (let ()
                                                (declare (not safe))
                                                (|gerbil/core$<MOP>$<MOP:1>[1]#make-class-type-id|
                                                 _L17894_))))))
                                  (declare (not safe))
                                  (_g1802919111_ __tmp51172))))
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
                                (__tmp51174
                                 (gx#stx-map _slot-name17802_ _slots17939_)))
                           (declare (not safe))
                           (_g1795419119_ __tmp51174))
                         (let ()
                           (declare (not safe))
                           (_g1780517832_ _g1780617836_))))
                   _tl1782417886_
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
