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
                                       (let ((_g51136_
                                              (gx#syntax-split-splice
                                               _g1795617976_
                                               '0)))
                                         (begin
                                           (let ((_g51137_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g51136_)
                                                        (##vector-length
                                                         _g51136_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g51137_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g51137_)))
                                           (let ((_target1795817979_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g51136_ 0)))
                                                 (_tl1796017982_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g51136_
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
                             (let ((__tmp51358
                                    (let ()
                                      (declare (not safe))
                                      (cons _lp-hd1796317999_
                                            _slot1796517992_))))
                               (declare (not safe))
                               (_loop1796117985_
                                _lp-tl1796418002_
                                __tmp51358))))
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
                                                             (let ((_g51138_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _g1850718536_ '0)))
                       (begin
                         (let ((_g51139_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g51138_)
                                      (##vector-length _g51138_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g51139_ 2)))
                               (error "Context expects 2 values" _g51139_)))
                         (let ((_target1851018539_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g51138_ 0)))
                               (_tl1851218542_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g51138_ 1))))
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
                               (let ((__tmp51196
                                      (let ()
                                        (declare (not safe))
                                        (cons _hd1852518581_
                                              _def-setf1851718552_)))
                                     (__tmp51195
                                      (let ()
                                        (declare (not safe))
                                        (cons _hd1852218571_
                                              _def-getf1851818554_))))
                                 (declare (not safe))
                                 (_loop1851318545_
                                  _lp-tl1851618564_
                                  __tmp51196
                                  __tmp51195))
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
                            (let ((_g51140_
                                   (gx#syntax-split-splice _g1861318642_ '0)))
                              (begin
                                (let ((_g51141_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g51140_)
                                             (##vector-length _g51140_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g51141_ 2)))
                                      (error "Context expects 2 values"
                                             _g51141_)))
                                (let ((_target1861618645_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g51140_ 0)))
                                      (_tl1861818648_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g51140_ 1))))
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
                                      (let ((__tmp51149
                                             (let ()
                                               (declare (not safe))
                                               (cons _hd1863118687_
                                                     _def-usetf1862318658_)))
                                            (__tmp51148
                                             (let ()
                                               (declare (not safe))
                                               (cons _hd1862818677_
                                                     _def-ugetf1862418660_))))
                                        (declare (not safe))
                                        (_loop1861918651_
                                         _lp-tl1862218670_
                                         __tmp51149
                                         __tmp51148))
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
                       (let ((__tmp51142
                              (let ((__tmp51147 (gx#datum->syntax '#f 'begin))
                                    (__tmp51143
                                     (let ((__tmp51144
                                            (let ((__tmp51145
                                                   (let ((__tmp51146
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
                                                           __tmp51146))))
                                              (declare (not safe))
                                              (cons _L18493_ __tmp51145))))
                                       (declare (not safe))
                                       (cons _L18437_ __tmp51144))))
                                (declare (not safe))
                                (cons __tmp51147 __tmp51143))))
                         (declare (not safe))
                         (_wrap17800_ __tmp51142)))))
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
                     (__tmp51150
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
                     (let ((__tmp51173
                            (let ((__tmp51174
                                   (let ((__tmp51193
                                          (gx#datum->syntax '#f 'def))
                                         (__tmp51175
                                          (let ((__tmp51176
                                                 (let ((__tmp51177
                                                        (let ((__tmp51192
                                                               (gx#datum->syntax
                                                                '#f
                                                                'begin-annotation))
                                                              (__tmp51178
                                                               (let ((__tmp51187
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp51191
                                     (gx#datum->syntax '#f '@mop.accessor))
                                    (__tmp51188
                                     (let ((__tmp51189
                                            (let ((__tmp51190
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#f '()))))
                                              (declare (not safe))
                                              (cons _L18818_ __tmp51190))))
                                       (declare (not safe))
                                       (cons _L18129_ __tmp51189))))
                                (declare (not safe))
                                (cons __tmp51191 __tmp51188)))
                             (__tmp51179
                              (let ((__tmp51180
                                     (let ((__tmp51186
                                            (gx#datum->syntax
                                             '#f
                                             'make-class-slot-unchecked-accessor))
                                           (__tmp51181
                                            (let ((__tmp51182
                                                   (let ((__tmp51183
                                                          (let ((__tmp51185
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'quote))
                        (__tmp51184
                         (let () (declare (not safe)) (cons _L18818_ '()))))
                    (declare (not safe))
                    (cons __tmp51185 __tmp51184))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp51183 '()))))
                                              (declare (not safe))
                                              (cons _L17894_ __tmp51182))))
                                       (declare (not safe))
                                       (cons __tmp51186 __tmp51181))))
                                (declare (not safe))
                                (cons __tmp51180 '()))))
                         (declare (not safe))
                         (cons __tmp51187 __tmp51179))))
                  (declare (not safe))
                  (cons __tmp51192 __tmp51178))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp51177 '()))))
                                            (declare (not safe))
                                            (cons _L18880_ __tmp51176))))
                                     (declare (not safe))
                                     (cons __tmp51193 __tmp51175))))
                              (declare (not safe))
                              (_wrap17800_ __tmp51174)))
                           (__tmp51151
                            (let ((__tmp51152
                                   (let ((__tmp51153
                                          (let ((__tmp51172
                                                 (gx#datum->syntax '#f 'def))
                                                (__tmp51154
                                                 (let ((__tmp51155
                                                        (let ((__tmp51156
                                                               (let ((__tmp51171
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'begin-annotation))
                             (__tmp51157
                              (let ((__tmp51166
                                     (let ((__tmp51170
                                            (gx#datum->syntax
                                             '#f
                                             '@mop.mutator))
                                           (__tmp51167
                                            (let ((__tmp51168
                                                   (let ((__tmp51169
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '#f '()))))
                                                     (declare (not safe))
                                                     (cons _L18818_
                                                           __tmp51169))))
                                              (declare (not safe))
                                              (cons _L18129_ __tmp51168))))
                                       (declare (not safe))
                                       (cons __tmp51170 __tmp51167)))
                                    (__tmp51158
                                     (let ((__tmp51159
                                            (let ((__tmp51165
                                                   (gx#datum->syntax
                                                    '#f
                                                    'make-class-slot-unchecked-mutator))
                                                  (__tmp51160
                                                   (let ((__tmp51161
                                                          (let ((__tmp51162
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp51164 (gx#datum->syntax '#f 'quote))
                               (__tmp51163
                                (let ()
                                  (declare (not safe))
                                  (cons _L18818_ '()))))
                           (declare (not safe))
                           (cons __tmp51164 __tmp51163))))
                    (declare (not safe))
                    (cons __tmp51162 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L17894_
                                                           __tmp51161))))
                                              (declare (not safe))
                                              (cons __tmp51165 __tmp51160))))
                                       (declare (not safe))
                                       (cons __tmp51159 '()))))
                                (declare (not safe))
                                (cons __tmp51166 __tmp51158))))
                         (declare (not safe))
                         (cons __tmp51171 __tmp51157))))
                  (declare (not safe))
                  (cons __tmp51156 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L18878_
                                                         __tmp51155))))
                                            (declare (not safe))
                                            (cons __tmp51172 __tmp51154))))
                                     (declare (not safe))
                                     (_wrap17800_ __tmp51153))))
                              (declare (not safe))
                              (cons __tmp51152 '()))))
                       (declare (not safe))
                       (cons __tmp51173 __tmp51151))))
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
                                 (__tmp51194
                                  (list (gx#stx-identifier
                                         _L18817_
                                         '"&"
                                         _L18817_)
                                        (gx#stx-identifier
                                         _L18815_
                                         '"&"
                                         _L18815_))))
                            (declare (not safe))
                            (_g1883518896_ __tmp51194)))
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
                (_g1861118752_ __tmp51150))))
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
              (__tmp51197
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
                   (let ((__tmp51220
                          (let ((__tmp51221
                                 (let ((__tmp51240 (gx#datum->syntax '#f 'def))
                                       (__tmp51222
                                        (let ((__tmp51223
                                               (let ((__tmp51224
                                                      (let ((__tmp51239
                                                             (gx#datum->syntax
                                                              '#f
                                                              'begin-annotation))
                                                            (__tmp51225
                                                             (let ((__tmp51234
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp51238
                                   (gx#datum->syntax '#f '@mop.accessor))
                                  (__tmp51235
                                   (let ((__tmp51236
                                          (let ((__tmp51237
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons '#t '()))))
                                            (declare (not safe))
                                            (cons _L18970_ __tmp51237))))
                                     (declare (not safe))
                                     (cons _L18129_ __tmp51236))))
                              (declare (not safe))
                              (cons __tmp51238 __tmp51235)))
                           (__tmp51226
                            (let ((__tmp51227
                                   (let ((__tmp51233
                                          (gx#datum->syntax
                                           '#f
                                           'make-class-slot-accessor))
                                         (__tmp51228
                                          (let ((__tmp51229
                                                 (let ((__tmp51230
                                                        (let ((__tmp51232
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp51231
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L18970_ '()))))
                  (declare (not safe))
                  (cons __tmp51232 __tmp51231))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp51230 '()))))
                                            (declare (not safe))
                                            (cons _L17894_ __tmp51229))))
                                     (declare (not safe))
                                     (cons __tmp51233 __tmp51228))))
                              (declare (not safe))
                              (cons __tmp51227 '()))))
                       (declare (not safe))
                       (cons __tmp51234 __tmp51226))))
                (declare (not safe))
                (cons __tmp51239 __tmp51225))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp51224 '()))))
                                          (declare (not safe))
                                          (cons _L18969_ __tmp51223))))
                                   (declare (not safe))
                                   (cons __tmp51240 __tmp51222))))
                            (declare (not safe))
                            (_wrap17800_ __tmp51221)))
                         (__tmp51198
                          (let ((__tmp51199
                                 (let ((__tmp51200
                                        (let ((__tmp51219
                                               (gx#datum->syntax '#f 'def))
                                              (__tmp51201
                                               (let ((__tmp51202
                                                      (let ((__tmp51203
                                                             (let ((__tmp51218
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'begin-annotation))
                           (__tmp51204
                            (let ((__tmp51213
                                   (let ((__tmp51217
                                          (gx#datum->syntax '#f '@mop.mutator))
                                         (__tmp51214
                                          (let ((__tmp51215
                                                 (let ((__tmp51216
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons '#t '()))))
                                                   (declare (not safe))
                                                   (cons _L18970_
                                                         __tmp51216))))
                                            (declare (not safe))
                                            (cons _L18129_ __tmp51215))))
                                     (declare (not safe))
                                     (cons __tmp51217 __tmp51214)))
                                  (__tmp51205
                                   (let ((__tmp51206
                                          (let ((__tmp51212
                                                 (gx#datum->syntax
                                                  '#f
                                                  'make-class-slot-mutator))
                                                (__tmp51207
                                                 (let ((__tmp51208
                                                        (let ((__tmp51209
                                                               (let ((__tmp51211
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'quote))
                             (__tmp51210
                              (let ()
                                (declare (not safe))
                                (cons _L18970_ '()))))
                         (declare (not safe))
                         (cons __tmp51211 __tmp51210))))
                  (declare (not safe))
                  (cons __tmp51209 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L17894_
                                                         __tmp51208))))
                                            (declare (not safe))
                                            (cons __tmp51212 __tmp51207))))
                                     (declare (not safe))
                                     (cons __tmp51206 '()))))
                              (declare (not safe))
                              (cons __tmp51213 __tmp51205))))
                       (declare (not safe))
                       (cons __tmp51218 __tmp51204))))
                (declare (not safe))
                (cons __tmp51203 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L18967_ __tmp51202))))
                                          (declare (not safe))
                                          (cons __tmp51219 __tmp51201))))
                                   (declare (not safe))
                                   (_wrap17800_ __tmp51200))))
                            (declare (not safe))
                            (cons __tmp51199 '()))))
                     (declare (not safe))
                     (cons __tmp51220 __tmp51198)))
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
                                                 (_g1850518904_ __tmp51197))))
                                           _g1847918490_)))
                                       (__tmp51241
                                        (let ((__tmp51242
                                               (let ((__tmp51255
                                                      (gx#datum->syntax
                                                       '#f
                                                       'def))
                                                     (__tmp51243
                                                      (let ((__tmp51244
                                                             (let ((__tmp51245
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp51254
                                   (gx#datum->syntax '#f 'begin-annotation))
                                  (__tmp51246
                                   (let ((__tmp51251
                                          (let ((__tmp51253
                                                 (gx#datum->syntax
                                                  '#f
                                                  '@mop.predicate))
                                                (__tmp51252
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L18129_ '()))))
                                            (declare (not safe))
                                            (cons __tmp51253 __tmp51252)))
                                         (__tmp51247
                                          (let ((__tmp51248
                                                 (let ((__tmp51250
                                                        (gx#datum->syntax
                                                         '#f
                                                         'make-class-predicate))
                                                       (__tmp51249
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L17894_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp51250
                                                         __tmp51249))))
                                            (declare (not safe))
                                            (cons __tmp51248 '()))))
                                     (declare (not safe))
                                     (cons __tmp51251 __tmp51247))))
                              (declare (not safe))
                              (cons __tmp51254 __tmp51246))))
                       (declare (not safe))
                       (cons __tmp51245 '()))))
                (declare (not safe))
                (cons _L17891_ __tmp51244))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp51255
                                                       __tmp51243))))
                                          (declare (not safe))
                                          (_wrap17800_ __tmp51242))))
                                  (declare (not safe))
                                  (_g1847718992_ __tmp51241))))
                            _g1845118462_)))
                        (__tmp51256
                         (if (gx#stx-false? _L17892_)
                             (let ((__tmp51280 (gx#datum->syntax '#f 'begin)))
                               (declare (not safe))
                               (cons __tmp51280 '()))
                             (let ((__tmp51257
                                    (let ((__tmp51279
                                           (gx#datum->syntax '#f 'def))
                                          (__tmp51258
                                           (let ((__tmp51259
                                                  (let ((__tmp51260
                                                         (let ((__tmp51278
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'begin-annotation))
                       (__tmp51261
                        (let ((__tmp51275
                               (let ((__tmp51277
                                      (gx#datum->syntax '#f '@mop.constructor))
                                     (__tmp51276
                                      (let ()
                                        (declare (not safe))
                                        (cons _L18129_ '()))))
                                 (declare (not safe))
                                 (cons __tmp51277 __tmp51276)))
                              (__tmp51262
                               (let ((__tmp51263
                                      (let ((__tmp51274
                                             (gx#datum->syntax '#f 'lambda))
                                            (__tmp51264
                                             (let ((__tmp51273
                                                    (gx#datum->syntax
                                                     '#f
                                                     '$args))
                                                   (__tmp51265
                                                    (let ((__tmp51266
                                                           (let ((__tmp51272
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'apply))
                         (__tmp51267
                          (let ((__tmp51271
                                 (gx#datum->syntax '#f 'make-instance))
                                (__tmp51268
                                 (let ((__tmp51269
                                        (let ((__tmp51270
                                               (gx#datum->syntax '#f '$args)))
                                          (declare (not safe))
                                          (cons __tmp51270 '()))))
                                   (declare (not safe))
                                   (cons _L17894_ __tmp51269))))
                            (declare (not safe))
                            (cons __tmp51271 __tmp51268))))
                     (declare (not safe))
                     (cons __tmp51272 __tmp51267))))
              (declare (not safe))
              (cons __tmp51266 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp51273 __tmp51265))))
                                        (declare (not safe))
                                        (cons __tmp51274 __tmp51264))))
                                 (declare (not safe))
                                 (cons __tmp51263 '()))))
                          (declare (not safe))
                          (cons __tmp51275 __tmp51262))))
                   (declare (not safe))
                   (cons __tmp51278 __tmp51261))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp51260 '()))))
                                             (declare (not safe))
                                             (cons _L17892_ __tmp51259))))
                                      (declare (not safe))
                                      (cons __tmp51279 __tmp51258))))
                               (declare (not safe))
                               (_wrap17800_ __tmp51257)))))
                   (declare (not safe))
                   (_g1844918996_ __tmp51256))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1842318434_)))
                                                 (__tmp51281
                                                  (let ((__tmp51282
                                                         (let ((__tmp51299
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'def))
                       (__tmp51283
                        (let ((__tmp51284
                               (let ((__tmp51285
                                      (let ((__tmp51298
                                             (gx#datum->syntax
                                              '#f
                                              'begin-annotation))
                                            (__tmp51286
                                             (let ((__tmp51288
                                                    (let ((__tmp51297
                                                           (gx#datum->syntax
                                                            '#f
                                                            '@mop.class))
                                                          (__tmp51289
                                                           (let ((__tmp51290
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp51291
                                 (let ((__tmp51296
                                        (foldr (lambda (_g1900319006_
                                                        _g1900419009_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g1900319006_
                                                         _g1900419009_)))
                                               '()
                                               _L18009_))
                                       (__tmp51292
                                        (let ((__tmp51293
                                               (let ((__tmp51294
                                                      (let ((__tmp51295
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L18241_ '()))))
                (declare (not safe))
                (cons _L18213_ __tmp51295))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L18185_ __tmp51294))))
                                          (declare (not safe))
                                          (cons _L18101_ __tmp51293))))
                                   (declare (not safe))
                                   (cons __tmp51296 __tmp51292))))
                            (declare (not safe))
                            (cons _L18157_ __tmp51291))))
                     (declare (not safe))
                     (cons _L18045_ __tmp51290))))
              (declare (not safe))
              (cons __tmp51297 __tmp51289)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp51287
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L18409_ '()))))
                                               (declare (not safe))
                                               (cons __tmp51288 __tmp51287))))
                                        (declare (not safe))
                                        (cons __tmp51298 __tmp51286))))
                                 (declare (not safe))
                                 (cons __tmp51285 '()))))
                          (declare (not safe))
                          (cons _L17894_ __tmp51284))))
                   (declare (not safe))
                   (cons __tmp51299 __tmp51283))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_wrap17800_ __tmp51282))))
                                            (declare (not safe))
                                            (_g1842119000_ __tmp51281))))
                                      _g1839518406_)))
                                  (__tmp51300
                                   (let ((__tmp51320
                                          (gx#datum->syntax
                                           '#f
                                           'make-class-type))
                                         (__tmp51301
                                          (let ((__tmp51317
                                                 (let ((__tmp51319
                                                        (gx#datum->syntax
                                                         '#f
                                                         'quote))
                                                       (__tmp51318
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L18045_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp51319
                                                         __tmp51318)))
                                                (__tmp51302
                                                 (let ((__tmp51314
                                                        (let ((__tmp51316
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp51315
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L18073_ '()))))
                  (declare (not safe))
                  (cons __tmp51316 __tmp51315)))
               (__tmp51303
                (let ((__tmp51304
                       (let ((__tmp51310
                              (let ((__tmp51313 (gx#datum->syntax '#f 'quote))
                                    (__tmp51311
                                     (let ((__tmp51312
                                            (foldr (lambda (_g1901519018_
                                                            _g1901619021_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g1901519018_
                                                             _g1901619021_)))
                                                   '()
                                                   _L18009_)))
                                       (declare (not safe))
                                       (cons __tmp51312 '()))))
                                (declare (not safe))
                                (cons __tmp51313 __tmp51311)))
                             (__tmp51305
                              (let ((__tmp51306
                                     (let ((__tmp51307
                                            (let ((__tmp51309
                                                   (gx#datum->syntax
                                                    '#f
                                                    'quote))
                                                  (__tmp51308
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L18101_ '()))))
                                              (declare (not safe))
                                              (cons __tmp51309 __tmp51308))))
                                       (declare (not safe))
                                       (cons __tmp51307 '()))))
                                (declare (not safe))
                                (cons _L18353_ __tmp51306))))
                         (declare (not safe))
                         (cons __tmp51310 __tmp51305))))
                  (declare (not safe))
                  (cons _L18381_ __tmp51304))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp51314
                                                         __tmp51303))))
                                            (declare (not safe))
                                            (cons __tmp51317 __tmp51302))))
                                     (declare (not safe))
                                     (cons __tmp51320 __tmp51301))))
                             (declare (not safe))
                             (_g1839319012_ __tmp51300))))
                       _g1836718378_)))
                   (__tmp51321
                    (let ((__tmp51322 (gx#datum->syntax '#f 'list)))
                      (declare (not safe))
                      (cons __tmp51322 _L17893_))))
              (declare (not safe))
              (_g1836519024_ __tmp51321))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1833918350_)))
                                            (__tmp51323
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
                                                                (let ((__tmp51332
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '@list))
                              (__tmp51324
                               (let ((__tmp51327
                                      (let ((__tmp51331
                                             (gx#datum->syntax '#f '@list))
                                            (__tmp51328
                                             (let ((__tmp51329
                                                    (let ((__tmp51330
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L19047_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons ':: __tmp51330))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'metaclass: __tmp51329))))
                                        (declare (not safe))
                                        (cons __tmp51331 __tmp51328)))
                                     (__tmp51325
                                      (let ((__tmp51326
                                             (let ()
                                               (declare (not safe))
                                               (cons _L18325_ '()))))
                                        (declare (not safe))
                                        (cons ':: __tmp51326))))
                                 (declare (not safe))
                                 (cons __tmp51327 __tmp51325))))
                          (declare (not safe))
                          (cons __tmp51332 __tmp51324))))
                    _g1903319044_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_g1903119059_
                                                    _metaclass17952_))
                                                 _L18325_)))
                                       (declare (not safe))
                                       (_g1833719028_ __tmp51323))))
                                 _g1831118322_)))
                             (__tmp51333
                              (if _struct?17932_
                                  (let ((__tmp51340
                                         (gx#datum->syntax '#f '@list))
                                        (__tmp51334
                                         (let ((__tmp51337
                                                (let ((__tmp51339
                                                       (gx#datum->syntax
                                                        '#f
                                                        '@list))
                                                      (__tmp51338
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'struct: '#t))))
                                                  (declare (not safe))
                                                  (cons __tmp51339
                                                        __tmp51338)))
                                               (__tmp51335
                                                (let ((__tmp51336
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L18297_ '()))))
                                                  (declare (not safe))
                                                  (cons ':: __tmp51336))))
                                           (declare (not safe))
                                           (cons __tmp51337 __tmp51335))))
                                    (declare (not safe))
                                    (cons __tmp51340 __tmp51334))
                                  _L18297_)))
                        (declare (not safe))
                        (_g1830919063_ __tmp51333))))
                  _g1828318294_)))
              (__tmp51341
               (if (gx#stx-e _L18213_)
                   (let ((__tmp51348 (gx#datum->syntax '#f '@list))
                         (__tmp51342
                          (let ((__tmp51345
                                 (let ((__tmp51347
                                        (gx#datum->syntax '#f '@list))
                                       (__tmp51346
                                        (let ()
                                          (declare (not safe))
                                          (cons 'final: '#t))))
                                   (declare (not safe))
                                   (cons __tmp51347 __tmp51346)))
                                (__tmp51343
                                 (let ((__tmp51344
                                        (let ()
                                          (declare (not safe))
                                          (cons _L18269_ '()))))
                                   (declare (not safe))
                                   (cons ':: __tmp51344))))
                            (declare (not safe))
                            (cons __tmp51345 __tmp51343))))
                     (declare (not safe))
                     (cons __tmp51348 __tmp51342))
                   _L18269_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g1828119067_ __tmp51341))))
                                           _g1825518266_)))
                                       (__tmp51349
                                        (let ((_$e19075_
                                               (gx#stx-getq
                                                'properties:
                                                _L17889_)))
                                          (if _$e19075_
                                              _$e19075_
                                              (let ((__tmp51350
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list)))
                                                (declare (not safe))
                                                (cons __tmp51350 '()))))))
                                  (declare (not safe))
                                  (_g1825319071_ __tmp51349))))
                            _g1822718238_)))
                        (__tmp51351
                         (if (gx#stx-e _metaclass17952_)
                             (gx#core-quote-syntax _metaclass17952_)
                             '#f)))
                   (declare (not safe))
                   (_g1822519079_ __tmp51351))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1819918210_)))
                                                 (__tmp51352
                                                  (gx#stx-getq
                                                   'final:
                                                   _L17889_)))
                                            (declare (not safe))
                                            (_g1819719083_ __tmp51352))))
                                      _g1817118182_))))
                             (declare (not safe))
                             (_g1816919087_ _struct?17932_))))
                       _g1814318154_)))
                   (__tmp51353 (gx#stx-map gx#core-quote-syntax _L17893_)))
              (declare (not safe))
              (_g1814119091_ __tmp51353))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1811518126_)))
                                            (__tmp51354
                                             (gx#core-quote-syntax _L17894_)))
                                       (declare (not safe))
                                       (_g1811319095_ __tmp51354))))
                                 _g1808718098_)))
                             (__tmp51355 (gx#stx-getq 'constructor: _L17889_)))
                        (declare (not safe))
                        (_g1808519099_ __tmp51355))))
                  _g1805918070_)))
              (__tmp51356
               (let ((_$e19107_ (gx#stx-getq 'name: _L17889_)))
                 (if _$e19107_ _$e19107_ _L17894_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g1805719103_ __tmp51356))))
                                           _g1803118042_)))
                                       (__tmp51357
                                        (let ((_$e19115_
                                               (gx#stx-getq 'id: _L17889_)))
                                          (if _$e19115_
                                              _$e19115_
                                              (let ()
                                                (declare (not safe))
                                                (|gerbil/core$<MOP>$<MOP:1>[1]#make-class-type-id|
                                                 _L17894_))))))
                                  (declare (not safe))
                                  (_g1802919111_ __tmp51357))))
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
                                (__tmp51359
                                 (gx#stx-map _slot-name17802_ _slots17939_)))
                           (declare (not safe))
                           (_g1795419119_ __tmp51359))
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
