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
                                       (let ((_g48976_
                                              (gx#syntax-split-splice
                                               _g1795617976_
                                               '0)))
                                         (begin
                                           (let ((_g48977_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g48976_)
                                                        (##vector-length
                                                         _g48976_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g48977_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g48977_)))
                                           (let ((_target1795817979_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g48976_ 0)))
                                                 (_tl1796017982_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g48976_
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
                             (let ((__tmp48978
                                    (let ()
                                      (declare (not safe))
                                      (cons _lp-hd1796317999_
                                            _slot1796517992_))))
                               (declare (not safe))
                               (_loop1796117985_
                                _lp-tl1796418002_
                                __tmp48978))))
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
                                                             (let ((_g48979_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _g1850718536_ '0)))
                       (begin
                         (let ((_g48980_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g48979_)
                                      (##vector-length _g48979_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g48980_ 2)))
                               (error "Context expects 2 values" _g48980_)))
                         (let ((_target1851018539_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g48979_ 0)))
                               (_tl1851218542_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g48979_ 1))))
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
                               (let ((__tmp48982
                                      (let ()
                                        (declare (not safe))
                                        (cons _hd1852518581_
                                              _def-setf1851718552_)))
                                     (__tmp48981
                                      (let ()
                                        (declare (not safe))
                                        (cons _hd1852218571_
                                              _def-getf1851818554_))))
                                 (declare (not safe))
                                 (_loop1851318545_
                                  _lp-tl1851618564_
                                  __tmp48982
                                  __tmp48981))
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
                            (let ((_g48983_
                                   (gx#syntax-split-splice _g1861318642_ '0)))
                              (begin
                                (let ((_g48984_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g48983_)
                                             (##vector-length _g48983_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g48984_ 2)))
                                      (error "Context expects 2 values"
                                             _g48984_)))
                                (let ((_target1861618645_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g48983_ 0)))
                                      (_tl1861818648_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g48983_ 1))))
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
                                      (let ((__tmp48986
                                             (let ()
                                               (declare (not safe))
                                               (cons _hd1863118687_
                                                     _def-usetf1862318658_)))
                                            (__tmp48985
                                             (let ()
                                               (declare (not safe))
                                               (cons _hd1862818677_
                                                     _def-ugetf1862418660_))))
                                        (declare (not safe))
                                        (_loop1861918651_
                                         _lp-tl1862218670_
                                         __tmp48986
                                         __tmp48985))
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
                       (let ((__tmp48987
                              (let ((__tmp48999 (gx#datum->syntax '#f 'begin))
                                    (__tmp48988
                                     (let ((__tmp48989
                                            (let ((__tmp48990
                                                   (let ((__tmp48991
                                                          (let ((__tmp48998
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1871918728_ _g1872018731_)
                           (let ()
                             (declare (not safe))
                             (cons _g1871918728_ _g1872018731_))))
                        (__tmp48992
                         (let ((__tmp48997
                                (lambda (_g1872118734_ _g1872218737_)
                                  (let ()
                                    (declare (not safe))
                                    (cons _g1872118734_ _g1872218737_))))
                               (__tmp48993
                                (let ((__tmp48996
                                       (lambda (_g1872318740_ _g1872418743_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g1872318740_
                                                 _g1872418743_))))
                                      (__tmp48994
                                       (let ((__tmp48995
                                              (lambda (_g1872518746_
                                                       _g1872618749_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g1872518746_
                                                        _g1872618749_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp48995 '() _L18699_))))
                                  (declare (not safe))
                                  (foldr1 __tmp48996 __tmp48994 _L18701_))))
                           (declare (not safe))
                           (foldr1 __tmp48997 __tmp48993 _L18593_))))
                    (declare (not safe))
                    (foldr1 __tmp48998 __tmp48992 _L18595_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L18465_
                                                           __tmp48991))))
                                              (declare (not safe))
                                              (cons _L18493_ __tmp48990))))
                                       (declare (not safe))
                                       (cons _L18437_ __tmp48989))))
                                (declare (not safe))
                                (cons __tmp48999 __tmp48988))))
                         (declare (not safe))
                         (_wrap17800_ __tmp48987)))))
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
                     (__tmp49000
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
                     (let ((__tmp49023
                            (let ((__tmp49024
                                   (let ((__tmp49043
                                          (gx#datum->syntax '#f 'def))
                                         (__tmp49025
                                          (let ((__tmp49026
                                                 (let ((__tmp49027
                                                        (let ((__tmp49042
                                                               (gx#datum->syntax
                                                                '#f
                                                                'begin-annotation))
                                                              (__tmp49028
                                                               (let ((__tmp49037
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp49041
                                     (gx#datum->syntax '#f '@mop.accessor))
                                    (__tmp49038
                                     (let ((__tmp49039
                                            (let ((__tmp49040
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#f '()))))
                                              (declare (not safe))
                                              (cons _L18818_ __tmp49040))))
                                       (declare (not safe))
                                       (cons _L18129_ __tmp49039))))
                                (declare (not safe))
                                (cons __tmp49041 __tmp49038)))
                             (__tmp49029
                              (let ((__tmp49030
                                     (let ((__tmp49036
                                            (gx#datum->syntax
                                             '#f
                                             'make-class-slot-unchecked-accessor))
                                           (__tmp49031
                                            (let ((__tmp49032
                                                   (let ((__tmp49033
                                                          (let ((__tmp49035
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'quote))
                        (__tmp49034
                         (let () (declare (not safe)) (cons _L18818_ '()))))
                    (declare (not safe))
                    (cons __tmp49035 __tmp49034))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp49033 '()))))
                                              (declare (not safe))
                                              (cons _L17894_ __tmp49032))))
                                       (declare (not safe))
                                       (cons __tmp49036 __tmp49031))))
                                (declare (not safe))
                                (cons __tmp49030 '()))))
                         (declare (not safe))
                         (cons __tmp49037 __tmp49029))))
                  (declare (not safe))
                  (cons __tmp49042 __tmp49028))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp49027 '()))))
                                            (declare (not safe))
                                            (cons _L18880_ __tmp49026))))
                                     (declare (not safe))
                                     (cons __tmp49043 __tmp49025))))
                              (declare (not safe))
                              (_wrap17800_ __tmp49024)))
                           (__tmp49001
                            (let ((__tmp49002
                                   (let ((__tmp49003
                                          (let ((__tmp49022
                                                 (gx#datum->syntax '#f 'def))
                                                (__tmp49004
                                                 (let ((__tmp49005
                                                        (let ((__tmp49006
                                                               (let ((__tmp49021
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'begin-annotation))
                             (__tmp49007
                              (let ((__tmp49016
                                     (let ((__tmp49020
                                            (gx#datum->syntax
                                             '#f
                                             '@mop.mutator))
                                           (__tmp49017
                                            (let ((__tmp49018
                                                   (let ((__tmp49019
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '#f '()))))
                                                     (declare (not safe))
                                                     (cons _L18818_
                                                           __tmp49019))))
                                              (declare (not safe))
                                              (cons _L18129_ __tmp49018))))
                                       (declare (not safe))
                                       (cons __tmp49020 __tmp49017)))
                                    (__tmp49008
                                     (let ((__tmp49009
                                            (let ((__tmp49015
                                                   (gx#datum->syntax
                                                    '#f
                                                    'make-class-slot-unchecked-mutator))
                                                  (__tmp49010
                                                   (let ((__tmp49011
                                                          (let ((__tmp49012
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp49014 (gx#datum->syntax '#f 'quote))
                               (__tmp49013
                                (let ()
                                  (declare (not safe))
                                  (cons _L18818_ '()))))
                           (declare (not safe))
                           (cons __tmp49014 __tmp49013))))
                    (declare (not safe))
                    (cons __tmp49012 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L17894_
                                                           __tmp49011))))
                                              (declare (not safe))
                                              (cons __tmp49015 __tmp49010))))
                                       (declare (not safe))
                                       (cons __tmp49009 '()))))
                                (declare (not safe))
                                (cons __tmp49016 __tmp49008))))
                         (declare (not safe))
                         (cons __tmp49021 __tmp49007))))
                  (declare (not safe))
                  (cons __tmp49006 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L18878_
                                                         __tmp49005))))
                                            (declare (not safe))
                                            (cons __tmp49022 __tmp49004))))
                                     (declare (not safe))
                                     (_wrap17800_ __tmp49003))))
                              (declare (not safe))
                              (cons __tmp49002 '()))))
                       (declare (not safe))
                       (cons __tmp49023 __tmp49001))))
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
                                 (__tmp49044
                                  (list (gx#stx-identifier
                                         _L18817_
                                         '"&"
                                         _L18817_)
                                        (gx#stx-identifier
                                         _L18815_
                                         '"&"
                                         _L18815_))))
                            (declare (not safe))
                            (_g1883518896_ __tmp49044)))
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
                (_g1861118752_ __tmp49000))))
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
              (__tmp49045
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
                   (let ((__tmp49068
                          (let ((__tmp49069
                                 (let ((__tmp49088 (gx#datum->syntax '#f 'def))
                                       (__tmp49070
                                        (let ((__tmp49071
                                               (let ((__tmp49072
                                                      (let ((__tmp49087
                                                             (gx#datum->syntax
                                                              '#f
                                                              'begin-annotation))
                                                            (__tmp49073
                                                             (let ((__tmp49082
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp49086
                                   (gx#datum->syntax '#f '@mop.accessor))
                                  (__tmp49083
                                   (let ((__tmp49084
                                          (let ((__tmp49085
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons '#t '()))))
                                            (declare (not safe))
                                            (cons _L18970_ __tmp49085))))
                                     (declare (not safe))
                                     (cons _L18129_ __tmp49084))))
                              (declare (not safe))
                              (cons __tmp49086 __tmp49083)))
                           (__tmp49074
                            (let ((__tmp49075
                                   (let ((__tmp49081
                                          (gx#datum->syntax
                                           '#f
                                           'make-class-slot-accessor))
                                         (__tmp49076
                                          (let ((__tmp49077
                                                 (let ((__tmp49078
                                                        (let ((__tmp49080
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp49079
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L18970_ '()))))
                  (declare (not safe))
                  (cons __tmp49080 __tmp49079))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp49078 '()))))
                                            (declare (not safe))
                                            (cons _L17894_ __tmp49077))))
                                     (declare (not safe))
                                     (cons __tmp49081 __tmp49076))))
                              (declare (not safe))
                              (cons __tmp49075 '()))))
                       (declare (not safe))
                       (cons __tmp49082 __tmp49074))))
                (declare (not safe))
                (cons __tmp49087 __tmp49073))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp49072 '()))))
                                          (declare (not safe))
                                          (cons _L18969_ __tmp49071))))
                                   (declare (not safe))
                                   (cons __tmp49088 __tmp49070))))
                            (declare (not safe))
                            (_wrap17800_ __tmp49069)))
                         (__tmp49046
                          (let ((__tmp49047
                                 (let ((__tmp49048
                                        (let ((__tmp49067
                                               (gx#datum->syntax '#f 'def))
                                              (__tmp49049
                                               (let ((__tmp49050
                                                      (let ((__tmp49051
                                                             (let ((__tmp49066
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'begin-annotation))
                           (__tmp49052
                            (let ((__tmp49061
                                   (let ((__tmp49065
                                          (gx#datum->syntax '#f '@mop.mutator))
                                         (__tmp49062
                                          (let ((__tmp49063
                                                 (let ((__tmp49064
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons '#t '()))))
                                                   (declare (not safe))
                                                   (cons _L18970_
                                                         __tmp49064))))
                                            (declare (not safe))
                                            (cons _L18129_ __tmp49063))))
                                     (declare (not safe))
                                     (cons __tmp49065 __tmp49062)))
                                  (__tmp49053
                                   (let ((__tmp49054
                                          (let ((__tmp49060
                                                 (gx#datum->syntax
                                                  '#f
                                                  'make-class-slot-mutator))
                                                (__tmp49055
                                                 (let ((__tmp49056
                                                        (let ((__tmp49057
                                                               (let ((__tmp49059
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'quote))
                             (__tmp49058
                              (let ()
                                (declare (not safe))
                                (cons _L18970_ '()))))
                         (declare (not safe))
                         (cons __tmp49059 __tmp49058))))
                  (declare (not safe))
                  (cons __tmp49057 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L17894_
                                                         __tmp49056))))
                                            (declare (not safe))
                                            (cons __tmp49060 __tmp49055))))
                                     (declare (not safe))
                                     (cons __tmp49054 '()))))
                              (declare (not safe))
                              (cons __tmp49061 __tmp49053))))
                       (declare (not safe))
                       (cons __tmp49066 __tmp49052))))
                (declare (not safe))
                (cons __tmp49051 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L18967_ __tmp49050))))
                                          (declare (not safe))
                                          (cons __tmp49067 __tmp49049))))
                                   (declare (not safe))
                                   (_wrap17800_ __tmp49048))))
                            (declare (not safe))
                            (cons __tmp49047 '()))))
                     (declare (not safe))
                     (cons __tmp49068 __tmp49046)))
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
                                                 (_g1850518904_ __tmp49045))))
                                           _g1847918490_)))
                                       (__tmp49089
                                        (let ((__tmp49090
                                               (let ((__tmp49103
                                                      (gx#datum->syntax
                                                       '#f
                                                       'def))
                                                     (__tmp49091
                                                      (let ((__tmp49092
                                                             (let ((__tmp49093
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp49102
                                   (gx#datum->syntax '#f 'begin-annotation))
                                  (__tmp49094
                                   (let ((__tmp49099
                                          (let ((__tmp49101
                                                 (gx#datum->syntax
                                                  '#f
                                                  '@mop.predicate))
                                                (__tmp49100
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L18129_ '()))))
                                            (declare (not safe))
                                            (cons __tmp49101 __tmp49100)))
                                         (__tmp49095
                                          (let ((__tmp49096
                                                 (let ((__tmp49098
                                                        (gx#datum->syntax
                                                         '#f
                                                         'make-class-predicate))
                                                       (__tmp49097
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L17894_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp49098
                                                         __tmp49097))))
                                            (declare (not safe))
                                            (cons __tmp49096 '()))))
                                     (declare (not safe))
                                     (cons __tmp49099 __tmp49095))))
                              (declare (not safe))
                              (cons __tmp49102 __tmp49094))))
                       (declare (not safe))
                       (cons __tmp49093 '()))))
                (declare (not safe))
                (cons _L17891_ __tmp49092))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp49103
                                                       __tmp49091))))
                                          (declare (not safe))
                                          (_wrap17800_ __tmp49090))))
                                  (declare (not safe))
                                  (_g1847718992_ __tmp49089))))
                            _g1845118462_)))
                        (__tmp49104
                         (if (gx#stx-false? _L17892_)
                             (let ((__tmp49105 (gx#datum->syntax '#f 'begin)))
                               (declare (not safe))
                               (cons __tmp49105 '()))
                             (let ((__tmp49106
                                    (let ((__tmp49128
                                           (gx#datum->syntax '#f 'def))
                                          (__tmp49107
                                           (let ((__tmp49108
                                                  (let ((__tmp49109
                                                         (let ((__tmp49127
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'begin-annotation))
                       (__tmp49110
                        (let ((__tmp49124
                               (let ((__tmp49126
                                      (gx#datum->syntax '#f '@mop.constructor))
                                     (__tmp49125
                                      (let ()
                                        (declare (not safe))
                                        (cons _L18129_ '()))))
                                 (declare (not safe))
                                 (cons __tmp49126 __tmp49125)))
                              (__tmp49111
                               (let ((__tmp49112
                                      (let ((__tmp49123
                                             (gx#datum->syntax '#f 'lambda))
                                            (__tmp49113
                                             (let ((__tmp49122
                                                    (gx#datum->syntax
                                                     '#f
                                                     '$args))
                                                   (__tmp49114
                                                    (let ((__tmp49115
                                                           (let ((__tmp49121
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'apply))
                         (__tmp49116
                          (let ((__tmp49120
                                 (gx#datum->syntax '#f 'make-instance))
                                (__tmp49117
                                 (let ((__tmp49118
                                        (let ((__tmp49119
                                               (gx#datum->syntax '#f '$args)))
                                          (declare (not safe))
                                          (cons __tmp49119 '()))))
                                   (declare (not safe))
                                   (cons _L17894_ __tmp49118))))
                            (declare (not safe))
                            (cons __tmp49120 __tmp49117))))
                     (declare (not safe))
                     (cons __tmp49121 __tmp49116))))
              (declare (not safe))
              (cons __tmp49115 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp49122 __tmp49114))))
                                        (declare (not safe))
                                        (cons __tmp49123 __tmp49113))))
                                 (declare (not safe))
                                 (cons __tmp49112 '()))))
                          (declare (not safe))
                          (cons __tmp49124 __tmp49111))))
                   (declare (not safe))
                   (cons __tmp49127 __tmp49110))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp49109 '()))))
                                             (declare (not safe))
                                             (cons _L17892_ __tmp49108))))
                                      (declare (not safe))
                                      (cons __tmp49128 __tmp49107))))
                               (declare (not safe))
                               (_wrap17800_ __tmp49106)))))
                   (declare (not safe))
                   (_g1844918996_ __tmp49104))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1842318434_)))
                                                 (__tmp49129
                                                  (let ((__tmp49130
                                                         (let ((__tmp49148
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'def))
                       (__tmp49131
                        (let ((__tmp49132
                               (let ((__tmp49133
                                      (let ((__tmp49147
                                             (gx#datum->syntax
                                              '#f
                                              'begin-annotation))
                                            (__tmp49134
                                             (let ((__tmp49136
                                                    (let ((__tmp49146
                                                           (gx#datum->syntax
                                                            '#f
                                                            '@mop.class))
                                                          (__tmp49137
                                                           (let ((__tmp49138
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp49139
                                 (let ((__tmp49144
                                        (let ((__tmp49145
                                               (lambda (_g1900319006_
                                                        _g1900419009_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g1900319006_
                                                         _g1900419009_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp49145 '() _L18009_)))
                                       (__tmp49140
                                        (let ((__tmp49141
                                               (let ((__tmp49142
                                                      (let ((__tmp49143
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L18241_ '()))))
                (declare (not safe))
                (cons _L18213_ __tmp49143))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L18185_ __tmp49142))))
                                          (declare (not safe))
                                          (cons _L18101_ __tmp49141))))
                                   (declare (not safe))
                                   (cons __tmp49144 __tmp49140))))
                            (declare (not safe))
                            (cons _L18157_ __tmp49139))))
                     (declare (not safe))
                     (cons _L18045_ __tmp49138))))
              (declare (not safe))
              (cons __tmp49146 __tmp49137)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp49135
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L18409_ '()))))
                                               (declare (not safe))
                                               (cons __tmp49136 __tmp49135))))
                                        (declare (not safe))
                                        (cons __tmp49147 __tmp49134))))
                                 (declare (not safe))
                                 (cons __tmp49133 '()))))
                          (declare (not safe))
                          (cons _L17894_ __tmp49132))))
                   (declare (not safe))
                   (cons __tmp49148 __tmp49131))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_wrap17800_ __tmp49130))))
                                            (declare (not safe))
                                            (_g1842119000_ __tmp49129))))
                                      _g1839518406_)))
                                  (__tmp49149
                                   (let ((__tmp49170
                                          (gx#datum->syntax
                                           '#f
                                           'make-class-type))
                                         (__tmp49150
                                          (let ((__tmp49167
                                                 (let ((__tmp49169
                                                        (gx#datum->syntax
                                                         '#f
                                                         'quote))
                                                       (__tmp49168
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L18045_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp49169
                                                         __tmp49168)))
                                                (__tmp49151
                                                 (let ((__tmp49164
                                                        (let ((__tmp49166
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp49165
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L18073_ '()))))
                  (declare (not safe))
                  (cons __tmp49166 __tmp49165)))
               (__tmp49152
                (let ((__tmp49153
                       (let ((__tmp49159
                              (let ((__tmp49163 (gx#datum->syntax '#f 'quote))
                                    (__tmp49160
                                     (let ((__tmp49161
                                            (let ((__tmp49162
                                                   (lambda (_g1901519018_
                                                            _g1901619021_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g1901519018_
                                                             _g1901619021_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp49162
                                                      '()
                                                      _L18009_))))
                                       (declare (not safe))
                                       (cons __tmp49161 '()))))
                                (declare (not safe))
                                (cons __tmp49163 __tmp49160)))
                             (__tmp49154
                              (let ((__tmp49155
                                     (let ((__tmp49156
                                            (let ((__tmp49158
                                                   (gx#datum->syntax
                                                    '#f
                                                    'quote))
                                                  (__tmp49157
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L18101_ '()))))
                                              (declare (not safe))
                                              (cons __tmp49158 __tmp49157))))
                                       (declare (not safe))
                                       (cons __tmp49156 '()))))
                                (declare (not safe))
                                (cons _L18353_ __tmp49155))))
                         (declare (not safe))
                         (cons __tmp49159 __tmp49154))))
                  (declare (not safe))
                  (cons _L18381_ __tmp49153))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp49164
                                                         __tmp49152))))
                                            (declare (not safe))
                                            (cons __tmp49167 __tmp49151))))
                                     (declare (not safe))
                                     (cons __tmp49170 __tmp49150))))
                             (declare (not safe))
                             (_g1839319012_ __tmp49149))))
                       _g1836718378_)))
                   (__tmp49171
                    (let ((__tmp49172 (gx#datum->syntax '#f 'list)))
                      (declare (not safe))
                      (cons __tmp49172 _L17893_))))
              (declare (not safe))
              (_g1836519024_ __tmp49171))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1833918350_)))
                                            (__tmp49173
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
                                                                (let ((__tmp49182
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '@list))
                              (__tmp49174
                               (let ((__tmp49177
                                      (let ((__tmp49181
                                             (gx#datum->syntax '#f '@list))
                                            (__tmp49178
                                             (let ((__tmp49179
                                                    (let ((__tmp49180
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L19047_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons ':: __tmp49180))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'metaclass: __tmp49179))))
                                        (declare (not safe))
                                        (cons __tmp49181 __tmp49178)))
                                     (__tmp49175
                                      (let ((__tmp49176
                                             (let ()
                                               (declare (not safe))
                                               (cons _L18325_ '()))))
                                        (declare (not safe))
                                        (cons ':: __tmp49176))))
                                 (declare (not safe))
                                 (cons __tmp49177 __tmp49175))))
                          (declare (not safe))
                          (cons __tmp49182 __tmp49174))))
                    _g1903319044_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_g1903119059_
                                                    _metaclass17952_))
                                                 _L18325_)))
                                       (declare (not safe))
                                       (_g1833719028_ __tmp49173))))
                                 _g1831118322_)))
                             (__tmp49183
                              (if _struct?17932_
                                  (let ((__tmp49190
                                         (gx#datum->syntax '#f '@list))
                                        (__tmp49184
                                         (let ((__tmp49187
                                                (let ((__tmp49189
                                                       (gx#datum->syntax
                                                        '#f
                                                        '@list))
                                                      (__tmp49188
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'struct: '#t))))
                                                  (declare (not safe))
                                                  (cons __tmp49189
                                                        __tmp49188)))
                                               (__tmp49185
                                                (let ((__tmp49186
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L18297_ '()))))
                                                  (declare (not safe))
                                                  (cons ':: __tmp49186))))
                                           (declare (not safe))
                                           (cons __tmp49187 __tmp49185))))
                                    (declare (not safe))
                                    (cons __tmp49190 __tmp49184))
                                  _L18297_)))
                        (declare (not safe))
                        (_g1830919063_ __tmp49183))))
                  _g1828318294_)))
              (__tmp49191
               (if (gx#stx-e _L18213_)
                   (let ((__tmp49198 (gx#datum->syntax '#f '@list))
                         (__tmp49192
                          (let ((__tmp49195
                                 (let ((__tmp49197
                                        (gx#datum->syntax '#f '@list))
                                       (__tmp49196
                                        (let ()
                                          (declare (not safe))
                                          (cons 'final: '#t))))
                                   (declare (not safe))
                                   (cons __tmp49197 __tmp49196)))
                                (__tmp49193
                                 (let ((__tmp49194
                                        (let ()
                                          (declare (not safe))
                                          (cons _L18269_ '()))))
                                   (declare (not safe))
                                   (cons ':: __tmp49194))))
                            (declare (not safe))
                            (cons __tmp49195 __tmp49193))))
                     (declare (not safe))
                     (cons __tmp49198 __tmp49192))
                   _L18269_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g1828119067_ __tmp49191))))
                                           _g1825518266_)))
                                       (__tmp49199
                                        (let ((_$e19075_
                                               (gx#stx-getq
                                                'properties:
                                                _L17889_)))
                                          (if _$e19075_
                                              _$e19075_
                                              (let ((__tmp49200
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list)))
                                                (declare (not safe))
                                                (cons __tmp49200 '()))))))
                                  (declare (not safe))
                                  (_g1825319071_ __tmp49199))))
                            _g1822718238_)))
                        (__tmp49201
                         (if _metaclass17952_
                             (gx#core-quote-syntax _metaclass17952_)
                             '#f)))
                   (declare (not safe))
                   (_g1822519079_ __tmp49201))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1819918210_)))
                                                 (__tmp49202
                                                  (gx#stx-getq
                                                   'final:
                                                   _L17889_)))
                                            (declare (not safe))
                                            (_g1819719083_ __tmp49202))))
                                      _g1817118182_))))
                             (declare (not safe))
                             (_g1816919087_ _struct?17932_))))
                       _g1814318154_)))
                   (__tmp49203 (gx#stx-map gx#core-quote-syntax _L17893_)))
              (declare (not safe))
              (_g1814119091_ __tmp49203))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1811518126_)))
                                            (__tmp49204
                                             (gx#core-quote-syntax _L17894_)))
                                       (declare (not safe))
                                       (_g1811319095_ __tmp49204))))
                                 _g1808718098_)))
                             (__tmp49205 (gx#stx-getq 'constructor: _L17889_)))
                        (declare (not safe))
                        (_g1808519099_ __tmp49205))))
                  _g1805918070_)))
              (__tmp49206
               (let ((_$e19107_ (gx#stx-getq 'name: _L17889_)))
                 (if _$e19107_ _$e19107_ _L17894_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g1805719103_ __tmp49206))))
                                           _g1803118042_)))
                                       (__tmp49207
                                        (let ((_$e19115_
                                               (gx#stx-getq 'id: _L17889_)))
                                          (if _$e19115_
                                              _$e19115_
                                              (let ()
                                                (declare (not safe))
                                                (|gerbil/core$<MOP>$<MOP:1>[1]#make-class-type-id|
                                                 _L17894_))))))
                                  (declare (not safe))
                                  (_g1802919111_ __tmp49207))))
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
                                (__tmp49208
                                 (gx#stx-map _slot-name17802_ _slots17939_)))
                           (declare (not safe))
                           (_g1795419119_ __tmp49208))
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
