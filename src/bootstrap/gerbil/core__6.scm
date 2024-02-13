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
                                       (let ((_g48892_
                                              (gx#syntax-split-splice
                                               _g1795617976_
                                               '0)))
                                         (begin
                                           (let ((_g48893_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g48892_)
                                                        (##vector-length
                                                         _g48892_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g48893_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g48893_)))
                                           (let ((_target1795817979_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g48892_ 0)))
                                                 (_tl1796017982_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g48892_
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
                             (let ((__tmp48894
                                    (let ()
                                      (declare (not safe))
                                      (cons _lp-hd1796317999_
                                            _slot1796517992_))))
                               (declare (not safe))
                               (_loop1796117985_
                                _lp-tl1796418002_
                                __tmp48894))))
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
                                                             (let ((_g48895_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _g1850718536_ '0)))
                       (begin
                         (let ((_g48896_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g48895_)
                                      (##vector-length _g48895_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g48896_ 2)))
                               (error "Context expects 2 values" _g48896_)))
                         (let ((_target1851018539_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g48895_ 0)))
                               (_tl1851218542_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g48895_ 1))))
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
                               (let ((__tmp48898
                                      (let ()
                                        (declare (not safe))
                                        (cons _hd1852518581_
                                              _def-setf1851718552_)))
                                     (__tmp48897
                                      (let ()
                                        (declare (not safe))
                                        (cons _hd1852218571_
                                              _def-getf1851818554_))))
                                 (declare (not safe))
                                 (_loop1851318545_
                                  _lp-tl1851618564_
                                  __tmp48898
                                  __tmp48897))
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
                            (let ((_g48899_
                                   (gx#syntax-split-splice _g1861318642_ '0)))
                              (begin
                                (let ((_g48900_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g48899_)
                                             (##vector-length _g48899_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g48900_ 2)))
                                      (error "Context expects 2 values"
                                             _g48900_)))
                                (let ((_target1861618645_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g48899_ 0)))
                                      (_tl1861818648_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g48899_ 1))))
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
                                      (let ((__tmp48902
                                             (let ()
                                               (declare (not safe))
                                               (cons _hd1863118687_
                                                     _def-usetf1862318658_)))
                                            (__tmp48901
                                             (let ()
                                               (declare (not safe))
                                               (cons _hd1862818677_
                                                     _def-ugetf1862418660_))))
                                        (declare (not safe))
                                        (_loop1861918651_
                                         _lp-tl1862218670_
                                         __tmp48902
                                         __tmp48901))
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
                       (let ((__tmp48903
                              (let ((__tmp48915 (gx#datum->syntax '#f 'begin))
                                    (__tmp48904
                                     (let ((__tmp48905
                                            (let ((__tmp48906
                                                   (let ((__tmp48907
                                                          (let ((__tmp48914
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1871918728_ _g1872018731_)
                           (let ()
                             (declare (not safe))
                             (cons _g1871918728_ _g1872018731_))))
                        (__tmp48908
                         (let ((__tmp48913
                                (lambda (_g1872118734_ _g1872218737_)
                                  (let ()
                                    (declare (not safe))
                                    (cons _g1872118734_ _g1872218737_))))
                               (__tmp48909
                                (let ((__tmp48912
                                       (lambda (_g1872318740_ _g1872418743_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g1872318740_
                                                 _g1872418743_))))
                                      (__tmp48910
                                       (let ((__tmp48911
                                              (lambda (_g1872518746_
                                                       _g1872618749_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g1872518746_
                                                        _g1872618749_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp48911 '() _L18699_))))
                                  (declare (not safe))
                                  (foldr1 __tmp48912 __tmp48910 _L18701_))))
                           (declare (not safe))
                           (foldr1 __tmp48913 __tmp48909 _L18593_))))
                    (declare (not safe))
                    (foldr1 __tmp48914 __tmp48908 _L18595_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L18465_
                                                           __tmp48907))))
                                              (declare (not safe))
                                              (cons _L18493_ __tmp48906))))
                                       (declare (not safe))
                                       (cons _L18437_ __tmp48905))))
                                (declare (not safe))
                                (cons __tmp48915 __tmp48904))))
                         (declare (not safe))
                         (_wrap17800_ __tmp48903)))))
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
                     (__tmp48916
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
                     (let ((__tmp48939
                            (let ((__tmp48940
                                   (let ((__tmp48959
                                          (gx#datum->syntax '#f 'def))
                                         (__tmp48941
                                          (let ((__tmp48942
                                                 (let ((__tmp48943
                                                        (let ((__tmp48958
                                                               (gx#datum->syntax
                                                                '#f
                                                                'begin-annotation))
                                                              (__tmp48944
                                                               (let ((__tmp48953
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp48957
                                     (gx#datum->syntax '#f '@mop.accessor))
                                    (__tmp48954
                                     (let ((__tmp48955
                                            (let ((__tmp48956
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#f '()))))
                                              (declare (not safe))
                                              (cons _L18818_ __tmp48956))))
                                       (declare (not safe))
                                       (cons _L18129_ __tmp48955))))
                                (declare (not safe))
                                (cons __tmp48957 __tmp48954)))
                             (__tmp48945
                              (let ((__tmp48946
                                     (let ((__tmp48952
                                            (gx#datum->syntax
                                             '#f
                                             'make-class-slot-unchecked-accessor))
                                           (__tmp48947
                                            (let ((__tmp48948
                                                   (let ((__tmp48949
                                                          (let ((__tmp48951
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'quote))
                        (__tmp48950
                         (let () (declare (not safe)) (cons _L18818_ '()))))
                    (declare (not safe))
                    (cons __tmp48951 __tmp48950))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp48949 '()))))
                                              (declare (not safe))
                                              (cons _L17894_ __tmp48948))))
                                       (declare (not safe))
                                       (cons __tmp48952 __tmp48947))))
                                (declare (not safe))
                                (cons __tmp48946 '()))))
                         (declare (not safe))
                         (cons __tmp48953 __tmp48945))))
                  (declare (not safe))
                  (cons __tmp48958 __tmp48944))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp48943 '()))))
                                            (declare (not safe))
                                            (cons _L18880_ __tmp48942))))
                                     (declare (not safe))
                                     (cons __tmp48959 __tmp48941))))
                              (declare (not safe))
                              (_wrap17800_ __tmp48940)))
                           (__tmp48917
                            (let ((__tmp48918
                                   (let ((__tmp48919
                                          (let ((__tmp48938
                                                 (gx#datum->syntax '#f 'def))
                                                (__tmp48920
                                                 (let ((__tmp48921
                                                        (let ((__tmp48922
                                                               (let ((__tmp48937
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'begin-annotation))
                             (__tmp48923
                              (let ((__tmp48932
                                     (let ((__tmp48936
                                            (gx#datum->syntax
                                             '#f
                                             '@mop.mutator))
                                           (__tmp48933
                                            (let ((__tmp48934
                                                   (let ((__tmp48935
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '#f '()))))
                                                     (declare (not safe))
                                                     (cons _L18818_
                                                           __tmp48935))))
                                              (declare (not safe))
                                              (cons _L18129_ __tmp48934))))
                                       (declare (not safe))
                                       (cons __tmp48936 __tmp48933)))
                                    (__tmp48924
                                     (let ((__tmp48925
                                            (let ((__tmp48931
                                                   (gx#datum->syntax
                                                    '#f
                                                    'make-class-slot-unchecked-mutator))
                                                  (__tmp48926
                                                   (let ((__tmp48927
                                                          (let ((__tmp48928
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp48930 (gx#datum->syntax '#f 'quote))
                               (__tmp48929
                                (let ()
                                  (declare (not safe))
                                  (cons _L18818_ '()))))
                           (declare (not safe))
                           (cons __tmp48930 __tmp48929))))
                    (declare (not safe))
                    (cons __tmp48928 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L17894_
                                                           __tmp48927))))
                                              (declare (not safe))
                                              (cons __tmp48931 __tmp48926))))
                                       (declare (not safe))
                                       (cons __tmp48925 '()))))
                                (declare (not safe))
                                (cons __tmp48932 __tmp48924))))
                         (declare (not safe))
                         (cons __tmp48937 __tmp48923))))
                  (declare (not safe))
                  (cons __tmp48922 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L18878_
                                                         __tmp48921))))
                                            (declare (not safe))
                                            (cons __tmp48938 __tmp48920))))
                                     (declare (not safe))
                                     (_wrap17800_ __tmp48919))))
                              (declare (not safe))
                              (cons __tmp48918 '()))))
                       (declare (not safe))
                       (cons __tmp48939 __tmp48917))))
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
                                 (__tmp48960
                                  (list (gx#stx-identifier
                                         _L18817_
                                         '"&"
                                         _L18817_)
                                        (gx#stx-identifier
                                         _L18815_
                                         '"&"
                                         _L18815_))))
                            (declare (not safe))
                            (_g1883518896_ __tmp48960)))
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
                (_g1861118752_ __tmp48916))))
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
              (__tmp48961
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
                   (let ((__tmp48984
                          (let ((__tmp48985
                                 (let ((__tmp49004 (gx#datum->syntax '#f 'def))
                                       (__tmp48986
                                        (let ((__tmp48987
                                               (let ((__tmp48988
                                                      (let ((__tmp49003
                                                             (gx#datum->syntax
                                                              '#f
                                                              'begin-annotation))
                                                            (__tmp48989
                                                             (let ((__tmp48998
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp49002
                                   (gx#datum->syntax '#f '@mop.accessor))
                                  (__tmp48999
                                   (let ((__tmp49000
                                          (let ((__tmp49001
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons '#t '()))))
                                            (declare (not safe))
                                            (cons _L18970_ __tmp49001))))
                                     (declare (not safe))
                                     (cons _L18129_ __tmp49000))))
                              (declare (not safe))
                              (cons __tmp49002 __tmp48999)))
                           (__tmp48990
                            (let ((__tmp48991
                                   (let ((__tmp48997
                                          (gx#datum->syntax
                                           '#f
                                           'make-class-slot-accessor))
                                         (__tmp48992
                                          (let ((__tmp48993
                                                 (let ((__tmp48994
                                                        (let ((__tmp48996
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp48995
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L18970_ '()))))
                  (declare (not safe))
                  (cons __tmp48996 __tmp48995))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp48994 '()))))
                                            (declare (not safe))
                                            (cons _L17894_ __tmp48993))))
                                     (declare (not safe))
                                     (cons __tmp48997 __tmp48992))))
                              (declare (not safe))
                              (cons __tmp48991 '()))))
                       (declare (not safe))
                       (cons __tmp48998 __tmp48990))))
                (declare (not safe))
                (cons __tmp49003 __tmp48989))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp48988 '()))))
                                          (declare (not safe))
                                          (cons _L18969_ __tmp48987))))
                                   (declare (not safe))
                                   (cons __tmp49004 __tmp48986))))
                            (declare (not safe))
                            (_wrap17800_ __tmp48985)))
                         (__tmp48962
                          (let ((__tmp48963
                                 (let ((__tmp48964
                                        (let ((__tmp48983
                                               (gx#datum->syntax '#f 'def))
                                              (__tmp48965
                                               (let ((__tmp48966
                                                      (let ((__tmp48967
                                                             (let ((__tmp48982
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'begin-annotation))
                           (__tmp48968
                            (let ((__tmp48977
                                   (let ((__tmp48981
                                          (gx#datum->syntax '#f '@mop.mutator))
                                         (__tmp48978
                                          (let ((__tmp48979
                                                 (let ((__tmp48980
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons '#t '()))))
                                                   (declare (not safe))
                                                   (cons _L18970_
                                                         __tmp48980))))
                                            (declare (not safe))
                                            (cons _L18129_ __tmp48979))))
                                     (declare (not safe))
                                     (cons __tmp48981 __tmp48978)))
                                  (__tmp48969
                                   (let ((__tmp48970
                                          (let ((__tmp48976
                                                 (gx#datum->syntax
                                                  '#f
                                                  'make-class-slot-mutator))
                                                (__tmp48971
                                                 (let ((__tmp48972
                                                        (let ((__tmp48973
                                                               (let ((__tmp48975
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'quote))
                             (__tmp48974
                              (let ()
                                (declare (not safe))
                                (cons _L18970_ '()))))
                         (declare (not safe))
                         (cons __tmp48975 __tmp48974))))
                  (declare (not safe))
                  (cons __tmp48973 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L17894_
                                                         __tmp48972))))
                                            (declare (not safe))
                                            (cons __tmp48976 __tmp48971))))
                                     (declare (not safe))
                                     (cons __tmp48970 '()))))
                              (declare (not safe))
                              (cons __tmp48977 __tmp48969))))
                       (declare (not safe))
                       (cons __tmp48982 __tmp48968))))
                (declare (not safe))
                (cons __tmp48967 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L18967_ __tmp48966))))
                                          (declare (not safe))
                                          (cons __tmp48983 __tmp48965))))
                                   (declare (not safe))
                                   (_wrap17800_ __tmp48964))))
                            (declare (not safe))
                            (cons __tmp48963 '()))))
                     (declare (not safe))
                     (cons __tmp48984 __tmp48962)))
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
                                                 (_g1850518904_ __tmp48961))))
                                           _g1847918490_)))
                                       (__tmp49005
                                        (let ((__tmp49006
                                               (let ((__tmp49019
                                                      (gx#datum->syntax
                                                       '#f
                                                       'def))
                                                     (__tmp49007
                                                      (let ((__tmp49008
                                                             (let ((__tmp49009
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp49018
                                   (gx#datum->syntax '#f 'begin-annotation))
                                  (__tmp49010
                                   (let ((__tmp49015
                                          (let ((__tmp49017
                                                 (gx#datum->syntax
                                                  '#f
                                                  '@mop.predicate))
                                                (__tmp49016
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L18129_ '()))))
                                            (declare (not safe))
                                            (cons __tmp49017 __tmp49016)))
                                         (__tmp49011
                                          (let ((__tmp49012
                                                 (let ((__tmp49014
                                                        (gx#datum->syntax
                                                         '#f
                                                         'make-class-predicate))
                                                       (__tmp49013
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L17894_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp49014
                                                         __tmp49013))))
                                            (declare (not safe))
                                            (cons __tmp49012 '()))))
                                     (declare (not safe))
                                     (cons __tmp49015 __tmp49011))))
                              (declare (not safe))
                              (cons __tmp49018 __tmp49010))))
                       (declare (not safe))
                       (cons __tmp49009 '()))))
                (declare (not safe))
                (cons _L17891_ __tmp49008))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp49019
                                                       __tmp49007))))
                                          (declare (not safe))
                                          (_wrap17800_ __tmp49006))))
                                  (declare (not safe))
                                  (_g1847718992_ __tmp49005))))
                            _g1845118462_)))
                        (__tmp49020
                         (if (gx#stx-false? _L17892_)
                             (let ((__tmp49021 (gx#datum->syntax '#f 'begin)))
                               (declare (not safe))
                               (cons __tmp49021 '()))
                             (let ((__tmp49022
                                    (let ((__tmp49044
                                           (gx#datum->syntax '#f 'def))
                                          (__tmp49023
                                           (let ((__tmp49024
                                                  (let ((__tmp49025
                                                         (let ((__tmp49043
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'begin-annotation))
                       (__tmp49026
                        (let ((__tmp49040
                               (let ((__tmp49042
                                      (gx#datum->syntax '#f '@mop.constructor))
                                     (__tmp49041
                                      (let ()
                                        (declare (not safe))
                                        (cons _L18129_ '()))))
                                 (declare (not safe))
                                 (cons __tmp49042 __tmp49041)))
                              (__tmp49027
                               (let ((__tmp49028
                                      (let ((__tmp49039
                                             (gx#datum->syntax '#f 'lambda))
                                            (__tmp49029
                                             (let ((__tmp49038
                                                    (gx#datum->syntax
                                                     '#f
                                                     '$args))
                                                   (__tmp49030
                                                    (let ((__tmp49031
                                                           (let ((__tmp49037
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'apply))
                         (__tmp49032
                          (let ((__tmp49036
                                 (gx#datum->syntax '#f 'make-instance))
                                (__tmp49033
                                 (let ((__tmp49034
                                        (let ((__tmp49035
                                               (gx#datum->syntax '#f '$args)))
                                          (declare (not safe))
                                          (cons __tmp49035 '()))))
                                   (declare (not safe))
                                   (cons _L17894_ __tmp49034))))
                            (declare (not safe))
                            (cons __tmp49036 __tmp49033))))
                     (declare (not safe))
                     (cons __tmp49037 __tmp49032))))
              (declare (not safe))
              (cons __tmp49031 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp49038 __tmp49030))))
                                        (declare (not safe))
                                        (cons __tmp49039 __tmp49029))))
                                 (declare (not safe))
                                 (cons __tmp49028 '()))))
                          (declare (not safe))
                          (cons __tmp49040 __tmp49027))))
                   (declare (not safe))
                   (cons __tmp49043 __tmp49026))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp49025 '()))))
                                             (declare (not safe))
                                             (cons _L17892_ __tmp49024))))
                                      (declare (not safe))
                                      (cons __tmp49044 __tmp49023))))
                               (declare (not safe))
                               (_wrap17800_ __tmp49022)))))
                   (declare (not safe))
                   (_g1844918996_ __tmp49020))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1842318434_)))
                                                 (__tmp49045
                                                  (let ((__tmp49046
                                                         (let ((__tmp49064
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'def))
                       (__tmp49047
                        (let ((__tmp49048
                               (let ((__tmp49049
                                      (let ((__tmp49063
                                             (gx#datum->syntax
                                              '#f
                                              'begin-annotation))
                                            (__tmp49050
                                             (let ((__tmp49052
                                                    (let ((__tmp49062
                                                           (gx#datum->syntax
                                                            '#f
                                                            '@mop.class))
                                                          (__tmp49053
                                                           (let ((__tmp49054
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp49055
                                 (let ((__tmp49060
                                        (let ((__tmp49061
                                               (lambda (_g1900319006_
                                                        _g1900419009_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g1900319006_
                                                         _g1900419009_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp49061 '() _L18009_)))
                                       (__tmp49056
                                        (let ((__tmp49057
                                               (let ((__tmp49058
                                                      (let ((__tmp49059
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L18241_ '()))))
                (declare (not safe))
                (cons _L18213_ __tmp49059))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L18185_ __tmp49058))))
                                          (declare (not safe))
                                          (cons _L18101_ __tmp49057))))
                                   (declare (not safe))
                                   (cons __tmp49060 __tmp49056))))
                            (declare (not safe))
                            (cons _L18157_ __tmp49055))))
                     (declare (not safe))
                     (cons _L18045_ __tmp49054))))
              (declare (not safe))
              (cons __tmp49062 __tmp49053)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp49051
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L18409_ '()))))
                                               (declare (not safe))
                                               (cons __tmp49052 __tmp49051))))
                                        (declare (not safe))
                                        (cons __tmp49063 __tmp49050))))
                                 (declare (not safe))
                                 (cons __tmp49049 '()))))
                          (declare (not safe))
                          (cons _L17894_ __tmp49048))))
                   (declare (not safe))
                   (cons __tmp49064 __tmp49047))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_wrap17800_ __tmp49046))))
                                            (declare (not safe))
                                            (_g1842119000_ __tmp49045))))
                                      _g1839518406_)))
                                  (__tmp49065
                                   (let ((__tmp49086
                                          (gx#datum->syntax
                                           '#f
                                           'make-class-type))
                                         (__tmp49066
                                          (let ((__tmp49083
                                                 (let ((__tmp49085
                                                        (gx#datum->syntax
                                                         '#f
                                                         'quote))
                                                       (__tmp49084
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L18045_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp49085
                                                         __tmp49084)))
                                                (__tmp49067
                                                 (let ((__tmp49080
                                                        (let ((__tmp49082
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp49081
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L18073_ '()))))
                  (declare (not safe))
                  (cons __tmp49082 __tmp49081)))
               (__tmp49068
                (let ((__tmp49069
                       (let ((__tmp49075
                              (let ((__tmp49079 (gx#datum->syntax '#f 'quote))
                                    (__tmp49076
                                     (let ((__tmp49077
                                            (let ((__tmp49078
                                                   (lambda (_g1901519018_
                                                            _g1901619021_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g1901519018_
                                                             _g1901619021_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp49078
                                                      '()
                                                      _L18009_))))
                                       (declare (not safe))
                                       (cons __tmp49077 '()))))
                                (declare (not safe))
                                (cons __tmp49079 __tmp49076)))
                             (__tmp49070
                              (let ((__tmp49071
                                     (let ((__tmp49072
                                            (let ((__tmp49074
                                                   (gx#datum->syntax
                                                    '#f
                                                    'quote))
                                                  (__tmp49073
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L18101_ '()))))
                                              (declare (not safe))
                                              (cons __tmp49074 __tmp49073))))
                                       (declare (not safe))
                                       (cons __tmp49072 '()))))
                                (declare (not safe))
                                (cons _L18353_ __tmp49071))))
                         (declare (not safe))
                         (cons __tmp49075 __tmp49070))))
                  (declare (not safe))
                  (cons _L18381_ __tmp49069))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp49080
                                                         __tmp49068))))
                                            (declare (not safe))
                                            (cons __tmp49083 __tmp49067))))
                                     (declare (not safe))
                                     (cons __tmp49086 __tmp49066))))
                             (declare (not safe))
                             (_g1839319012_ __tmp49065))))
                       _g1836718378_)))
                   (__tmp49087
                    (let ((__tmp49088 (gx#datum->syntax '#f 'list)))
                      (declare (not safe))
                      (cons __tmp49088 _L17893_))))
              (declare (not safe))
              (_g1836519024_ __tmp49087))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1833918350_)))
                                            (__tmp49089
                                             (if _metaclass17952_
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
                                                                (let ((__tmp49098
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '@list))
                              (__tmp49090
                               (let ((__tmp49093
                                      (let ((__tmp49097
                                             (gx#datum->syntax '#f '@list))
                                            (__tmp49094
                                             (let ((__tmp49095
                                                    (let ((__tmp49096
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L19047_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons ':: __tmp49096))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'metaclass: __tmp49095))))
                                        (declare (not safe))
                                        (cons __tmp49097 __tmp49094)))
                                     (__tmp49091
                                      (let ((__tmp49092
                                             (let ()
                                               (declare (not safe))
                                               (cons _L18325_ '()))))
                                        (declare (not safe))
                                        (cons ':: __tmp49092))))
                                 (declare (not safe))
                                 (cons __tmp49093 __tmp49091))))
                          (declare (not safe))
                          (cons __tmp49098 __tmp49090))))
                    _g1903319044_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_g1903119059_
                                                    _metaclass17952_))
                                                 _L18325_)))
                                       (declare (not safe))
                                       (_g1833719028_ __tmp49089))))
                                 _g1831118322_)))
                             (__tmp49099
                              (if _struct?17932_
                                  (let ((__tmp49106
                                         (gx#datum->syntax '#f '@list))
                                        (__tmp49100
                                         (let ((__tmp49103
                                                (let ((__tmp49105
                                                       (gx#datum->syntax
                                                        '#f
                                                        '@list))
                                                      (__tmp49104
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'struct: '#t))))
                                                  (declare (not safe))
                                                  (cons __tmp49105
                                                        __tmp49104)))
                                               (__tmp49101
                                                (let ((__tmp49102
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L18297_ '()))))
                                                  (declare (not safe))
                                                  (cons ':: __tmp49102))))
                                           (declare (not safe))
                                           (cons __tmp49103 __tmp49101))))
                                    (declare (not safe))
                                    (cons __tmp49106 __tmp49100))
                                  _L18297_)))
                        (declare (not safe))
                        (_g1830919063_ __tmp49099))))
                  _g1828318294_)))
              (__tmp49107
               (if (gx#stx-e _L18213_)
                   (let ((__tmp49114 (gx#datum->syntax '#f '@list))
                         (__tmp49108
                          (let ((__tmp49111
                                 (let ((__tmp49113
                                        (gx#datum->syntax '#f '@list))
                                       (__tmp49112
                                        (let ()
                                          (declare (not safe))
                                          (cons 'final: '#t))))
                                   (declare (not safe))
                                   (cons __tmp49113 __tmp49112)))
                                (__tmp49109
                                 (let ((__tmp49110
                                        (let ()
                                          (declare (not safe))
                                          (cons _L18269_ '()))))
                                   (declare (not safe))
                                   (cons ':: __tmp49110))))
                            (declare (not safe))
                            (cons __tmp49111 __tmp49109))))
                     (declare (not safe))
                     (cons __tmp49114 __tmp49108))
                   _L18269_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g1828119067_ __tmp49107))))
                                           _g1825518266_)))
                                       (__tmp49115
                                        (let ((_$e19075_
                                               (gx#stx-getq
                                                'properties:
                                                _L17889_)))
                                          (if _$e19075_
                                              _$e19075_
                                              (let ((__tmp49116
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list)))
                                                (declare (not safe))
                                                (cons __tmp49116 '()))))))
                                  (declare (not safe))
                                  (_g1825319071_ __tmp49115))))
                            _g1822718238_)))
                        (__tmp49117
                         (if _metaclass17952_
                             (gx#core-quote-syntax _metaclass17952_)
                             '#f)))
                   (declare (not safe))
                   (_g1822519079_ __tmp49117))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1819918210_)))
                                                 (__tmp49118
                                                  (gx#stx-getq
                                                   'final:
                                                   _L17889_)))
                                            (declare (not safe))
                                            (_g1819719083_ __tmp49118))))
                                      _g1817118182_))))
                             (declare (not safe))
                             (_g1816919087_ _struct?17932_))))
                       _g1814318154_)))
                   (__tmp49119 (gx#stx-map gx#core-quote-syntax _L17893_)))
              (declare (not safe))
              (_g1814119091_ __tmp49119))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1811518126_)))
                                            (__tmp49120
                                             (gx#core-quote-syntax _L17894_)))
                                       (declare (not safe))
                                       (_g1811319095_ __tmp49120))))
                                 _g1808718098_)))
                             (__tmp49121 (gx#stx-getq 'constructor: _L17889_)))
                        (declare (not safe))
                        (_g1808519099_ __tmp49121))))
                  _g1805918070_)))
              (__tmp49122
               (let ((_$e19107_ (gx#stx-getq 'name: _L17889_)))
                 (if _$e19107_ _$e19107_ _L17894_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g1805719103_ __tmp49122))))
                                           _g1803118042_)))
                                       (__tmp49123
                                        (let ((_$e19115_
                                               (gx#stx-getq 'id: _L17889_)))
                                          (if _$e19115_
                                              _$e19115_
                                              (let ()
                                                (declare (not safe))
                                                (|gerbil/core$<MOP>$<MOP:1>[1]#make-class-type-id|
                                                 _L17894_))))))
                                  (declare (not safe))
                                  (_g1802919111_ __tmp49123))))
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
                                (__tmp49124
                                 (gx#stx-map _slot-name17802_ _slots17939_)))
                           (declare (not safe))
                           (_g1795419119_ __tmp49124))
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
