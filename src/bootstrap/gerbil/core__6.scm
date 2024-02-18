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
                                       (let ((_g47983_
                                              (gx#syntax-split-splice
                                               _g1795617976_
                                               '0)))
                                         (begin
                                           (let ((_g47984_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g47983_)
                                                        (##vector-length
                                                         _g47983_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g47984_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g47984_)))
                                           (let ((_target1795817979_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g47983_ 0)))
                                                 (_tl1796017982_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g47983_
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
                             (let ((__tmp47985
                                    (let ()
                                      (declare (not safe))
                                      (cons _lp-hd1796317999_
                                            _slot1796517992_))))
                               (declare (not safe))
                               (_loop1796117985_
                                _lp-tl1796418002_
                                __tmp47985))))
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
                                                             (let ((_g47986_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _g1850718536_ '0)))
                       (begin
                         (let ((_g47987_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g47986_)
                                      (##vector-length _g47986_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g47987_ 2)))
                               (error "Context expects 2 values" _g47987_)))
                         (let ((_target1851018539_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g47986_ 0)))
                               (_tl1851218542_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g47986_ 1))))
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
                               (let ((__tmp47989
                                      (let ()
                                        (declare (not safe))
                                        (cons _hd1852518581_
                                              _def-setf1851718552_)))
                                     (__tmp47988
                                      (let ()
                                        (declare (not safe))
                                        (cons _hd1852218571_
                                              _def-getf1851818554_))))
                                 (declare (not safe))
                                 (_loop1851318545_
                                  _lp-tl1851618564_
                                  __tmp47989
                                  __tmp47988))
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
                            (let ((_g47990_
                                   (gx#syntax-split-splice _g1861318642_ '0)))
                              (begin
                                (let ((_g47991_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g47990_)
                                             (##vector-length _g47990_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g47991_ 2)))
                                      (error "Context expects 2 values"
                                             _g47991_)))
                                (let ((_target1861618645_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g47990_ 0)))
                                      (_tl1861818648_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g47990_ 1))))
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
                                      (let ((__tmp47993
                                             (let ()
                                               (declare (not safe))
                                               (cons _hd1863118687_
                                                     _def-usetf1862318658_)))
                                            (__tmp47992
                                             (let ()
                                               (declare (not safe))
                                               (cons _hd1862818677_
                                                     _def-ugetf1862418660_))))
                                        (declare (not safe))
                                        (_loop1861918651_
                                         _lp-tl1862218670_
                                         __tmp47993
                                         __tmp47992))
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
                       (let ((__tmp47994
                              (let ((__tmp48006 (gx#datum->syntax '#f 'begin))
                                    (__tmp47995
                                     (let ((__tmp47996
                                            (let ((__tmp47997
                                                   (let ((__tmp47998
                                                          (let ((__tmp48005
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1871918728_ _g1872018731_)
                           (let ()
                             (declare (not safe))
                             (cons _g1871918728_ _g1872018731_))))
                        (__tmp47999
                         (let ((__tmp48004
                                (lambda (_g1872118734_ _g1872218737_)
                                  (let ()
                                    (declare (not safe))
                                    (cons _g1872118734_ _g1872218737_))))
                               (__tmp48000
                                (let ((__tmp48003
                                       (lambda (_g1872318740_ _g1872418743_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g1872318740_
                                                 _g1872418743_))))
                                      (__tmp48001
                                       (let ((__tmp48002
                                              (lambda (_g1872518746_
                                                       _g1872618749_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g1872518746_
                                                        _g1872618749_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp48002 '() _L18699_))))
                                  (declare (not safe))
                                  (foldr1 __tmp48003 __tmp48001 _L18701_))))
                           (declare (not safe))
                           (foldr1 __tmp48004 __tmp48000 _L18593_))))
                    (declare (not safe))
                    (foldr1 __tmp48005 __tmp47999 _L18595_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L18465_
                                                           __tmp47998))))
                                              (declare (not safe))
                                              (cons _L18493_ __tmp47997))))
                                       (declare (not safe))
                                       (cons _L18437_ __tmp47996))))
                                (declare (not safe))
                                (cons __tmp48006 __tmp47995))))
                         (declare (not safe))
                         (_wrap17800_ __tmp47994)))))
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
                     (__tmp48007
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
                     (let ((__tmp48030
                            (let ((__tmp48031
                                   (let ((__tmp48050
                                          (gx#datum->syntax '#f 'def))
                                         (__tmp48032
                                          (let ((__tmp48033
                                                 (let ((__tmp48034
                                                        (let ((__tmp48049
                                                               (gx#datum->syntax
                                                                '#f
                                                                'begin-annotation))
                                                              (__tmp48035
                                                               (let ((__tmp48044
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp48048
                                     (gx#datum->syntax '#f '@mop.accessor))
                                    (__tmp48045
                                     (let ((__tmp48046
                                            (let ((__tmp48047
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#f '()))))
                                              (declare (not safe))
                                              (cons _L18818_ __tmp48047))))
                                       (declare (not safe))
                                       (cons _L18129_ __tmp48046))))
                                (declare (not safe))
                                (cons __tmp48048 __tmp48045)))
                             (__tmp48036
                              (let ((__tmp48037
                                     (let ((__tmp48043
                                            (gx#datum->syntax
                                             '#f
                                             'make-class-slot-unchecked-accessor))
                                           (__tmp48038
                                            (let ((__tmp48039
                                                   (let ((__tmp48040
                                                          (let ((__tmp48042
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'quote))
                        (__tmp48041
                         (let () (declare (not safe)) (cons _L18818_ '()))))
                    (declare (not safe))
                    (cons __tmp48042 __tmp48041))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp48040 '()))))
                                              (declare (not safe))
                                              (cons _L17894_ __tmp48039))))
                                       (declare (not safe))
                                       (cons __tmp48043 __tmp48038))))
                                (declare (not safe))
                                (cons __tmp48037 '()))))
                         (declare (not safe))
                         (cons __tmp48044 __tmp48036))))
                  (declare (not safe))
                  (cons __tmp48049 __tmp48035))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp48034 '()))))
                                            (declare (not safe))
                                            (cons _L18880_ __tmp48033))))
                                     (declare (not safe))
                                     (cons __tmp48050 __tmp48032))))
                              (declare (not safe))
                              (_wrap17800_ __tmp48031)))
                           (__tmp48008
                            (let ((__tmp48009
                                   (let ((__tmp48010
                                          (let ((__tmp48029
                                                 (gx#datum->syntax '#f 'def))
                                                (__tmp48011
                                                 (let ((__tmp48012
                                                        (let ((__tmp48013
                                                               (let ((__tmp48028
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'begin-annotation))
                             (__tmp48014
                              (let ((__tmp48023
                                     (let ((__tmp48027
                                            (gx#datum->syntax
                                             '#f
                                             '@mop.mutator))
                                           (__tmp48024
                                            (let ((__tmp48025
                                                   (let ((__tmp48026
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '#f '()))))
                                                     (declare (not safe))
                                                     (cons _L18818_
                                                           __tmp48026))))
                                              (declare (not safe))
                                              (cons _L18129_ __tmp48025))))
                                       (declare (not safe))
                                       (cons __tmp48027 __tmp48024)))
                                    (__tmp48015
                                     (let ((__tmp48016
                                            (let ((__tmp48022
                                                   (gx#datum->syntax
                                                    '#f
                                                    'make-class-slot-unchecked-mutator))
                                                  (__tmp48017
                                                   (let ((__tmp48018
                                                          (let ((__tmp48019
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp48021 (gx#datum->syntax '#f 'quote))
                               (__tmp48020
                                (let ()
                                  (declare (not safe))
                                  (cons _L18818_ '()))))
                           (declare (not safe))
                           (cons __tmp48021 __tmp48020))))
                    (declare (not safe))
                    (cons __tmp48019 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L17894_
                                                           __tmp48018))))
                                              (declare (not safe))
                                              (cons __tmp48022 __tmp48017))))
                                       (declare (not safe))
                                       (cons __tmp48016 '()))))
                                (declare (not safe))
                                (cons __tmp48023 __tmp48015))))
                         (declare (not safe))
                         (cons __tmp48028 __tmp48014))))
                  (declare (not safe))
                  (cons __tmp48013 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L18878_
                                                         __tmp48012))))
                                            (declare (not safe))
                                            (cons __tmp48029 __tmp48011))))
                                     (declare (not safe))
                                     (_wrap17800_ __tmp48010))))
                              (declare (not safe))
                              (cons __tmp48009 '()))))
                       (declare (not safe))
                       (cons __tmp48030 __tmp48008))))
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
                                 (__tmp48051
                                  (list (gx#stx-identifier
                                         _L18817_
                                         '"&"
                                         _L18817_)
                                        (gx#stx-identifier
                                         _L18815_
                                         '"&"
                                         _L18815_))))
                            (declare (not safe))
                            (_g1883518896_ __tmp48051)))
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
                (_g1861118752_ __tmp48007))))
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
              (__tmp48052
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
                   (let ((__tmp48075
                          (let ((__tmp48076
                                 (let ((__tmp48095 (gx#datum->syntax '#f 'def))
                                       (__tmp48077
                                        (let ((__tmp48078
                                               (let ((__tmp48079
                                                      (let ((__tmp48094
                                                             (gx#datum->syntax
                                                              '#f
                                                              'begin-annotation))
                                                            (__tmp48080
                                                             (let ((__tmp48089
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp48093
                                   (gx#datum->syntax '#f '@mop.accessor))
                                  (__tmp48090
                                   (let ((__tmp48091
                                          (let ((__tmp48092
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons '#t '()))))
                                            (declare (not safe))
                                            (cons _L18970_ __tmp48092))))
                                     (declare (not safe))
                                     (cons _L18129_ __tmp48091))))
                              (declare (not safe))
                              (cons __tmp48093 __tmp48090)))
                           (__tmp48081
                            (let ((__tmp48082
                                   (let ((__tmp48088
                                          (gx#datum->syntax
                                           '#f
                                           'make-class-slot-accessor))
                                         (__tmp48083
                                          (let ((__tmp48084
                                                 (let ((__tmp48085
                                                        (let ((__tmp48087
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp48086
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L18970_ '()))))
                  (declare (not safe))
                  (cons __tmp48087 __tmp48086))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp48085 '()))))
                                            (declare (not safe))
                                            (cons _L17894_ __tmp48084))))
                                     (declare (not safe))
                                     (cons __tmp48088 __tmp48083))))
                              (declare (not safe))
                              (cons __tmp48082 '()))))
                       (declare (not safe))
                       (cons __tmp48089 __tmp48081))))
                (declare (not safe))
                (cons __tmp48094 __tmp48080))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp48079 '()))))
                                          (declare (not safe))
                                          (cons _L18969_ __tmp48078))))
                                   (declare (not safe))
                                   (cons __tmp48095 __tmp48077))))
                            (declare (not safe))
                            (_wrap17800_ __tmp48076)))
                         (__tmp48053
                          (let ((__tmp48054
                                 (let ((__tmp48055
                                        (let ((__tmp48074
                                               (gx#datum->syntax '#f 'def))
                                              (__tmp48056
                                               (let ((__tmp48057
                                                      (let ((__tmp48058
                                                             (let ((__tmp48073
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'begin-annotation))
                           (__tmp48059
                            (let ((__tmp48068
                                   (let ((__tmp48072
                                          (gx#datum->syntax '#f '@mop.mutator))
                                         (__tmp48069
                                          (let ((__tmp48070
                                                 (let ((__tmp48071
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons '#t '()))))
                                                   (declare (not safe))
                                                   (cons _L18970_
                                                         __tmp48071))))
                                            (declare (not safe))
                                            (cons _L18129_ __tmp48070))))
                                     (declare (not safe))
                                     (cons __tmp48072 __tmp48069)))
                                  (__tmp48060
                                   (let ((__tmp48061
                                          (let ((__tmp48067
                                                 (gx#datum->syntax
                                                  '#f
                                                  'make-class-slot-mutator))
                                                (__tmp48062
                                                 (let ((__tmp48063
                                                        (let ((__tmp48064
                                                               (let ((__tmp48066
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'quote))
                             (__tmp48065
                              (let ()
                                (declare (not safe))
                                (cons _L18970_ '()))))
                         (declare (not safe))
                         (cons __tmp48066 __tmp48065))))
                  (declare (not safe))
                  (cons __tmp48064 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L17894_
                                                         __tmp48063))))
                                            (declare (not safe))
                                            (cons __tmp48067 __tmp48062))))
                                     (declare (not safe))
                                     (cons __tmp48061 '()))))
                              (declare (not safe))
                              (cons __tmp48068 __tmp48060))))
                       (declare (not safe))
                       (cons __tmp48073 __tmp48059))))
                (declare (not safe))
                (cons __tmp48058 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L18967_ __tmp48057))))
                                          (declare (not safe))
                                          (cons __tmp48074 __tmp48056))))
                                   (declare (not safe))
                                   (_wrap17800_ __tmp48055))))
                            (declare (not safe))
                            (cons __tmp48054 '()))))
                     (declare (not safe))
                     (cons __tmp48075 __tmp48053)))
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
                                                 (_g1850518904_ __tmp48052))))
                                           _g1847918490_)))
                                       (__tmp48096
                                        (let ((__tmp48097
                                               (let ((__tmp48110
                                                      (gx#datum->syntax
                                                       '#f
                                                       'def))
                                                     (__tmp48098
                                                      (let ((__tmp48099
                                                             (let ((__tmp48100
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp48109
                                   (gx#datum->syntax '#f 'begin-annotation))
                                  (__tmp48101
                                   (let ((__tmp48106
                                          (let ((__tmp48108
                                                 (gx#datum->syntax
                                                  '#f
                                                  '@mop.predicate))
                                                (__tmp48107
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L18129_ '()))))
                                            (declare (not safe))
                                            (cons __tmp48108 __tmp48107)))
                                         (__tmp48102
                                          (let ((__tmp48103
                                                 (let ((__tmp48105
                                                        (gx#datum->syntax
                                                         '#f
                                                         'make-class-predicate))
                                                       (__tmp48104
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L17894_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp48105
                                                         __tmp48104))))
                                            (declare (not safe))
                                            (cons __tmp48103 '()))))
                                     (declare (not safe))
                                     (cons __tmp48106 __tmp48102))))
                              (declare (not safe))
                              (cons __tmp48109 __tmp48101))))
                       (declare (not safe))
                       (cons __tmp48100 '()))))
                (declare (not safe))
                (cons _L17891_ __tmp48099))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp48110
                                                       __tmp48098))))
                                          (declare (not safe))
                                          (_wrap17800_ __tmp48097))))
                                  (declare (not safe))
                                  (_g1847718992_ __tmp48096))))
                            _g1845118462_)))
                        (__tmp48111
                         (if (gx#stx-false? _L17892_)
                             (let ((__tmp48112 (gx#datum->syntax '#f 'begin)))
                               (declare (not safe))
                               (cons __tmp48112 '()))
                             (let ((__tmp48113
                                    (let ((__tmp48135
                                           (gx#datum->syntax '#f 'def))
                                          (__tmp48114
                                           (let ((__tmp48115
                                                  (let ((__tmp48116
                                                         (let ((__tmp48134
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'begin-annotation))
                       (__tmp48117
                        (let ((__tmp48131
                               (let ((__tmp48133
                                      (gx#datum->syntax '#f '@mop.constructor))
                                     (__tmp48132
                                      (let ()
                                        (declare (not safe))
                                        (cons _L18129_ '()))))
                                 (declare (not safe))
                                 (cons __tmp48133 __tmp48132)))
                              (__tmp48118
                               (let ((__tmp48119
                                      (let ((__tmp48130
                                             (gx#datum->syntax '#f 'lambda))
                                            (__tmp48120
                                             (let ((__tmp48129
                                                    (gx#datum->syntax
                                                     '#f
                                                     '$args))
                                                   (__tmp48121
                                                    (let ((__tmp48122
                                                           (let ((__tmp48128
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'apply))
                         (__tmp48123
                          (let ((__tmp48127
                                 (gx#datum->syntax '#f 'make-instance))
                                (__tmp48124
                                 (let ((__tmp48125
                                        (let ((__tmp48126
                                               (gx#datum->syntax '#f '$args)))
                                          (declare (not safe))
                                          (cons __tmp48126 '()))))
                                   (declare (not safe))
                                   (cons _L17894_ __tmp48125))))
                            (declare (not safe))
                            (cons __tmp48127 __tmp48124))))
                     (declare (not safe))
                     (cons __tmp48128 __tmp48123))))
              (declare (not safe))
              (cons __tmp48122 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp48129 __tmp48121))))
                                        (declare (not safe))
                                        (cons __tmp48130 __tmp48120))))
                                 (declare (not safe))
                                 (cons __tmp48119 '()))))
                          (declare (not safe))
                          (cons __tmp48131 __tmp48118))))
                   (declare (not safe))
                   (cons __tmp48134 __tmp48117))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp48116 '()))))
                                             (declare (not safe))
                                             (cons _L17892_ __tmp48115))))
                                      (declare (not safe))
                                      (cons __tmp48135 __tmp48114))))
                               (declare (not safe))
                               (_wrap17800_ __tmp48113)))))
                   (declare (not safe))
                   (_g1844918996_ __tmp48111))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1842318434_)))
                                                 (__tmp48136
                                                  (let ((__tmp48137
                                                         (let ((__tmp48155
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'def))
                       (__tmp48138
                        (let ((__tmp48139
                               (let ((__tmp48140
                                      (let ((__tmp48154
                                             (gx#datum->syntax
                                              '#f
                                              'begin-annotation))
                                            (__tmp48141
                                             (let ((__tmp48143
                                                    (let ((__tmp48153
                                                           (gx#datum->syntax
                                                            '#f
                                                            '@mop.class))
                                                          (__tmp48144
                                                           (let ((__tmp48145
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp48146
                                 (let ((__tmp48151
                                        (let ((__tmp48152
                                               (lambda (_g1900319006_
                                                        _g1900419009_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g1900319006_
                                                         _g1900419009_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp48152 '() _L18009_)))
                                       (__tmp48147
                                        (let ((__tmp48148
                                               (let ((__tmp48149
                                                      (let ((__tmp48150
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L18241_ '()))))
                (declare (not safe))
                (cons _L18213_ __tmp48150))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L18185_ __tmp48149))))
                                          (declare (not safe))
                                          (cons _L18101_ __tmp48148))))
                                   (declare (not safe))
                                   (cons __tmp48151 __tmp48147))))
                            (declare (not safe))
                            (cons _L18157_ __tmp48146))))
                     (declare (not safe))
                     (cons _L18045_ __tmp48145))))
              (declare (not safe))
              (cons __tmp48153 __tmp48144)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp48142
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L18409_ '()))))
                                               (declare (not safe))
                                               (cons __tmp48143 __tmp48142))))
                                        (declare (not safe))
                                        (cons __tmp48154 __tmp48141))))
                                 (declare (not safe))
                                 (cons __tmp48140 '()))))
                          (declare (not safe))
                          (cons _L17894_ __tmp48139))))
                   (declare (not safe))
                   (cons __tmp48155 __tmp48138))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_wrap17800_ __tmp48137))))
                                            (declare (not safe))
                                            (_g1842119000_ __tmp48136))))
                                      _g1839518406_)))
                                  (__tmp48156
                                   (let ((__tmp48177
                                          (gx#datum->syntax
                                           '#f
                                           'make-class-type))
                                         (__tmp48157
                                          (let ((__tmp48174
                                                 (let ((__tmp48176
                                                        (gx#datum->syntax
                                                         '#f
                                                         'quote))
                                                       (__tmp48175
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L18045_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp48176
                                                         __tmp48175)))
                                                (__tmp48158
                                                 (let ((__tmp48171
                                                        (let ((__tmp48173
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp48172
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L18073_ '()))))
                  (declare (not safe))
                  (cons __tmp48173 __tmp48172)))
               (__tmp48159
                (let ((__tmp48160
                       (let ((__tmp48166
                              (let ((__tmp48170 (gx#datum->syntax '#f 'quote))
                                    (__tmp48167
                                     (let ((__tmp48168
                                            (let ((__tmp48169
                                                   (lambda (_g1901519018_
                                                            _g1901619021_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g1901519018_
                                                             _g1901619021_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp48169
                                                      '()
                                                      _L18009_))))
                                       (declare (not safe))
                                       (cons __tmp48168 '()))))
                                (declare (not safe))
                                (cons __tmp48170 __tmp48167)))
                             (__tmp48161
                              (let ((__tmp48162
                                     (let ((__tmp48163
                                            (let ((__tmp48165
                                                   (gx#datum->syntax
                                                    '#f
                                                    'quote))
                                                  (__tmp48164
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L18101_ '()))))
                                              (declare (not safe))
                                              (cons __tmp48165 __tmp48164))))
                                       (declare (not safe))
                                       (cons __tmp48163 '()))))
                                (declare (not safe))
                                (cons _L18353_ __tmp48162))))
                         (declare (not safe))
                         (cons __tmp48166 __tmp48161))))
                  (declare (not safe))
                  (cons _L18381_ __tmp48160))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp48171
                                                         __tmp48159))))
                                            (declare (not safe))
                                            (cons __tmp48174 __tmp48158))))
                                     (declare (not safe))
                                     (cons __tmp48177 __tmp48157))))
                             (declare (not safe))
                             (_g1839319012_ __tmp48156))))
                       _g1836718378_)))
                   (__tmp48178
                    (let ((__tmp48179 (gx#datum->syntax '#f 'list)))
                      (declare (not safe))
                      (cons __tmp48179 _L17893_))))
              (declare (not safe))
              (_g1836519024_ __tmp48178))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1833918350_)))
                                            (__tmp48180
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
                                                                (let ((__tmp48189
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '@list))
                              (__tmp48181
                               (let ((__tmp48184
                                      (let ((__tmp48188
                                             (gx#datum->syntax '#f '@list))
                                            (__tmp48185
                                             (let ((__tmp48186
                                                    (let ((__tmp48187
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L19047_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons ':: __tmp48187))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'metaclass: __tmp48186))))
                                        (declare (not safe))
                                        (cons __tmp48188 __tmp48185)))
                                     (__tmp48182
                                      (let ((__tmp48183
                                             (let ()
                                               (declare (not safe))
                                               (cons _L18325_ '()))))
                                        (declare (not safe))
                                        (cons ':: __tmp48183))))
                                 (declare (not safe))
                                 (cons __tmp48184 __tmp48182))))
                          (declare (not safe))
                          (cons __tmp48189 __tmp48181))))
                    _g1903319044_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_g1903119059_
                                                    _metaclass17952_))
                                                 _L18325_)))
                                       (declare (not safe))
                                       (_g1833719028_ __tmp48180))))
                                 _g1831118322_)))
                             (__tmp48190
                              (if _struct?17932_
                                  (let ((__tmp48197
                                         (gx#datum->syntax '#f '@list))
                                        (__tmp48191
                                         (let ((__tmp48194
                                                (let ((__tmp48196
                                                       (gx#datum->syntax
                                                        '#f
                                                        '@list))
                                                      (__tmp48195
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'struct: '#t))))
                                                  (declare (not safe))
                                                  (cons __tmp48196
                                                        __tmp48195)))
                                               (__tmp48192
                                                (let ((__tmp48193
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L18297_ '()))))
                                                  (declare (not safe))
                                                  (cons ':: __tmp48193))))
                                           (declare (not safe))
                                           (cons __tmp48194 __tmp48192))))
                                    (declare (not safe))
                                    (cons __tmp48197 __tmp48191))
                                  _L18297_)))
                        (declare (not safe))
                        (_g1830919063_ __tmp48190))))
                  _g1828318294_)))
              (__tmp48198
               (if (gx#stx-e _L18213_)
                   (let ((__tmp48205 (gx#datum->syntax '#f '@list))
                         (__tmp48199
                          (let ((__tmp48202
                                 (let ((__tmp48204
                                        (gx#datum->syntax '#f '@list))
                                       (__tmp48203
                                        (let ()
                                          (declare (not safe))
                                          (cons 'final: '#t))))
                                   (declare (not safe))
                                   (cons __tmp48204 __tmp48203)))
                                (__tmp48200
                                 (let ((__tmp48201
                                        (let ()
                                          (declare (not safe))
                                          (cons _L18269_ '()))))
                                   (declare (not safe))
                                   (cons ':: __tmp48201))))
                            (declare (not safe))
                            (cons __tmp48202 __tmp48200))))
                     (declare (not safe))
                     (cons __tmp48205 __tmp48199))
                   _L18269_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g1828119067_ __tmp48198))))
                                           _g1825518266_)))
                                       (__tmp48206
                                        (let ((_$e19075_
                                               (gx#stx-getq
                                                'properties:
                                                _L17889_)))
                                          (if _$e19075_
                                              _$e19075_
                                              (let ((__tmp48207
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list)))
                                                (declare (not safe))
                                                (cons __tmp48207 '()))))))
                                  (declare (not safe))
                                  (_g1825319071_ __tmp48206))))
                            _g1822718238_)))
                        (__tmp48208
                         (if (gx#stx-e _metaclass17952_)
                             (gx#core-quote-syntax _metaclass17952_)
                             '#f)))
                   (declare (not safe))
                   (_g1822519079_ __tmp48208))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1819918210_)))
                                                 (__tmp48209
                                                  (gx#stx-getq
                                                   'final:
                                                   _L17889_)))
                                            (declare (not safe))
                                            (_g1819719083_ __tmp48209))))
                                      _g1817118182_))))
                             (declare (not safe))
                             (_g1816919087_ _struct?17932_))))
                       _g1814318154_)))
                   (__tmp48210 (gx#stx-map gx#core-quote-syntax _L17893_)))
              (declare (not safe))
              (_g1814119091_ __tmp48210))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1811518126_)))
                                            (__tmp48211
                                             (gx#core-quote-syntax _L17894_)))
                                       (declare (not safe))
                                       (_g1811319095_ __tmp48211))))
                                 _g1808718098_)))
                             (__tmp48212 (gx#stx-getq 'constructor: _L17889_)))
                        (declare (not safe))
                        (_g1808519099_ __tmp48212))))
                  _g1805918070_)))
              (__tmp48213
               (let ((_$e19107_ (gx#stx-getq 'name: _L17889_)))
                 (if _$e19107_ _$e19107_ _L17894_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g1805719103_ __tmp48213))))
                                           _g1803118042_)))
                                       (__tmp48214
                                        (let ((_$e19115_
                                               (gx#stx-getq 'id: _L17889_)))
                                          (if _$e19115_
                                              _$e19115_
                                              (let ()
                                                (declare (not safe))
                                                (|gerbil/core$<MOP>$<MOP:1>[1]#make-class-type-id|
                                                 _L17894_))))))
                                  (declare (not safe))
                                  (_g1802919111_ __tmp48214))))
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
                                (__tmp48215
                                 (gx#stx-map _slot-name17802_ _slots17939_)))
                           (declare (not safe))
                           (_g1795419119_ __tmp48215))
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
