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
                                       (let ((_g48448_
                                              (gx#syntax-split-splice
                                               _g1795617976_
                                               '0)))
                                         (begin
                                           (let ((_g48449_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g48448_)
                                                        (##vector-length
                                                         _g48448_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g48449_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g48449_)))
                                           (let ((_target1795817979_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g48448_ 0)))
                                                 (_tl1796017982_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g48448_
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
                             (let ((__tmp48670
                                    (let ()
                                      (declare (not safe))
                                      (cons _lp-hd1796317999_
                                            _slot1796517992_))))
                               (declare (not safe))
                               (_loop1796117985_
                                _lp-tl1796418002_
                                __tmp48670))))
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
                                                             (let ((_g48450_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _g1850718536_ '0)))
                       (begin
                         (let ((_g48451_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g48450_)
                                      (##vector-length _g48450_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g48451_ 2)))
                               (error "Context expects 2 values" _g48451_)))
                         (let ((_target1851018539_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g48450_ 0)))
                               (_tl1851218542_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g48450_ 1))))
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
                               (let ((__tmp48508
                                      (let ()
                                        (declare (not safe))
                                        (cons _hd1852518581_
                                              _def-setf1851718552_)))
                                     (__tmp48507
                                      (let ()
                                        (declare (not safe))
                                        (cons _hd1852218571_
                                              _def-getf1851818554_))))
                                 (declare (not safe))
                                 (_loop1851318545_
                                  _lp-tl1851618564_
                                  __tmp48508
                                  __tmp48507))
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
                            (let ((_g48452_
                                   (gx#syntax-split-splice _g1861318642_ '0)))
                              (begin
                                (let ((_g48453_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g48452_)
                                             (##vector-length _g48452_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g48453_ 2)))
                                      (error "Context expects 2 values"
                                             _g48453_)))
                                (let ((_target1861618645_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g48452_ 0)))
                                      (_tl1861818648_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g48452_ 1))))
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
                                      (let ((__tmp48461
                                             (let ()
                                               (declare (not safe))
                                               (cons _hd1863118687_
                                                     _def-usetf1862318658_)))
                                            (__tmp48460
                                             (let ()
                                               (declare (not safe))
                                               (cons _hd1862818677_
                                                     _def-ugetf1862418660_))))
                                        (declare (not safe))
                                        (_loop1861918651_
                                         _lp-tl1862218670_
                                         __tmp48461
                                         __tmp48460))
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
                       (let ((__tmp48454
                              (let ((__tmp48459 (gx#datum->syntax '#f 'begin))
                                    (__tmp48455
                                     (let ((__tmp48456
                                            (let ((__tmp48457
                                                   (let ((__tmp48458
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
                                                           __tmp48458))))
                                              (declare (not safe))
                                              (cons _L18493_ __tmp48457))))
                                       (declare (not safe))
                                       (cons _L18437_ __tmp48456))))
                                (declare (not safe))
                                (cons __tmp48459 __tmp48455))))
                         (declare (not safe))
                         (_wrap17800_ __tmp48454)))))
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
                     (__tmp48462
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
                     (let ((__tmp48485
                            (let ((__tmp48486
                                   (let ((__tmp48505
                                          (gx#datum->syntax '#f 'def))
                                         (__tmp48487
                                          (let ((__tmp48488
                                                 (let ((__tmp48489
                                                        (let ((__tmp48504
                                                               (gx#datum->syntax
                                                                '#f
                                                                'begin-annotation))
                                                              (__tmp48490
                                                               (let ((__tmp48499
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp48503
                                     (gx#datum->syntax '#f '@mop.accessor))
                                    (__tmp48500
                                     (let ((__tmp48501
                                            (let ((__tmp48502
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#f '()))))
                                              (declare (not safe))
                                              (cons _L18818_ __tmp48502))))
                                       (declare (not safe))
                                       (cons _L18129_ __tmp48501))))
                                (declare (not safe))
                                (cons __tmp48503 __tmp48500)))
                             (__tmp48491
                              (let ((__tmp48492
                                     (let ((__tmp48498
                                            (gx#datum->syntax
                                             '#f
                                             'make-class-slot-unchecked-accessor))
                                           (__tmp48493
                                            (let ((__tmp48494
                                                   (let ((__tmp48495
                                                          (let ((__tmp48497
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'quote))
                        (__tmp48496
                         (let () (declare (not safe)) (cons _L18818_ '()))))
                    (declare (not safe))
                    (cons __tmp48497 __tmp48496))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp48495 '()))))
                                              (declare (not safe))
                                              (cons _L17894_ __tmp48494))))
                                       (declare (not safe))
                                       (cons __tmp48498 __tmp48493))))
                                (declare (not safe))
                                (cons __tmp48492 '()))))
                         (declare (not safe))
                         (cons __tmp48499 __tmp48491))))
                  (declare (not safe))
                  (cons __tmp48504 __tmp48490))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp48489 '()))))
                                            (declare (not safe))
                                            (cons _L18880_ __tmp48488))))
                                     (declare (not safe))
                                     (cons __tmp48505 __tmp48487))))
                              (declare (not safe))
                              (_wrap17800_ __tmp48486)))
                           (__tmp48463
                            (let ((__tmp48464
                                   (let ((__tmp48465
                                          (let ((__tmp48484
                                                 (gx#datum->syntax '#f 'def))
                                                (__tmp48466
                                                 (let ((__tmp48467
                                                        (let ((__tmp48468
                                                               (let ((__tmp48483
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'begin-annotation))
                             (__tmp48469
                              (let ((__tmp48478
                                     (let ((__tmp48482
                                            (gx#datum->syntax
                                             '#f
                                             '@mop.mutator))
                                           (__tmp48479
                                            (let ((__tmp48480
                                                   (let ((__tmp48481
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '#f '()))))
                                                     (declare (not safe))
                                                     (cons _L18818_
                                                           __tmp48481))))
                                              (declare (not safe))
                                              (cons _L18129_ __tmp48480))))
                                       (declare (not safe))
                                       (cons __tmp48482 __tmp48479)))
                                    (__tmp48470
                                     (let ((__tmp48471
                                            (let ((__tmp48477
                                                   (gx#datum->syntax
                                                    '#f
                                                    'make-class-slot-unchecked-mutator))
                                                  (__tmp48472
                                                   (let ((__tmp48473
                                                          (let ((__tmp48474
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp48476 (gx#datum->syntax '#f 'quote))
                               (__tmp48475
                                (let ()
                                  (declare (not safe))
                                  (cons _L18818_ '()))))
                           (declare (not safe))
                           (cons __tmp48476 __tmp48475))))
                    (declare (not safe))
                    (cons __tmp48474 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L17894_
                                                           __tmp48473))))
                                              (declare (not safe))
                                              (cons __tmp48477 __tmp48472))))
                                       (declare (not safe))
                                       (cons __tmp48471 '()))))
                                (declare (not safe))
                                (cons __tmp48478 __tmp48470))))
                         (declare (not safe))
                         (cons __tmp48483 __tmp48469))))
                  (declare (not safe))
                  (cons __tmp48468 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L18878_
                                                         __tmp48467))))
                                            (declare (not safe))
                                            (cons __tmp48484 __tmp48466))))
                                     (declare (not safe))
                                     (_wrap17800_ __tmp48465))))
                              (declare (not safe))
                              (cons __tmp48464 '()))))
                       (declare (not safe))
                       (cons __tmp48485 __tmp48463))))
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
                                 (__tmp48506
                                  (list (gx#stx-identifier
                                         _L18817_
                                         '"&"
                                         _L18817_)
                                        (gx#stx-identifier
                                         _L18815_
                                         '"&"
                                         _L18815_))))
                            (declare (not safe))
                            (_g1883518896_ __tmp48506)))
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
                (_g1861118752_ __tmp48462))))
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
              (__tmp48509
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
                   (let ((__tmp48532
                          (let ((__tmp48533
                                 (let ((__tmp48552 (gx#datum->syntax '#f 'def))
                                       (__tmp48534
                                        (let ((__tmp48535
                                               (let ((__tmp48536
                                                      (let ((__tmp48551
                                                             (gx#datum->syntax
                                                              '#f
                                                              'begin-annotation))
                                                            (__tmp48537
                                                             (let ((__tmp48546
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp48550
                                   (gx#datum->syntax '#f '@mop.accessor))
                                  (__tmp48547
                                   (let ((__tmp48548
                                          (let ((__tmp48549
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons '#t '()))))
                                            (declare (not safe))
                                            (cons _L18970_ __tmp48549))))
                                     (declare (not safe))
                                     (cons _L18129_ __tmp48548))))
                              (declare (not safe))
                              (cons __tmp48550 __tmp48547)))
                           (__tmp48538
                            (let ((__tmp48539
                                   (let ((__tmp48545
                                          (gx#datum->syntax
                                           '#f
                                           'make-class-slot-accessor))
                                         (__tmp48540
                                          (let ((__tmp48541
                                                 (let ((__tmp48542
                                                        (let ((__tmp48544
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp48543
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L18970_ '()))))
                  (declare (not safe))
                  (cons __tmp48544 __tmp48543))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp48542 '()))))
                                            (declare (not safe))
                                            (cons _L17894_ __tmp48541))))
                                     (declare (not safe))
                                     (cons __tmp48545 __tmp48540))))
                              (declare (not safe))
                              (cons __tmp48539 '()))))
                       (declare (not safe))
                       (cons __tmp48546 __tmp48538))))
                (declare (not safe))
                (cons __tmp48551 __tmp48537))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp48536 '()))))
                                          (declare (not safe))
                                          (cons _L18969_ __tmp48535))))
                                   (declare (not safe))
                                   (cons __tmp48552 __tmp48534))))
                            (declare (not safe))
                            (_wrap17800_ __tmp48533)))
                         (__tmp48510
                          (let ((__tmp48511
                                 (let ((__tmp48512
                                        (let ((__tmp48531
                                               (gx#datum->syntax '#f 'def))
                                              (__tmp48513
                                               (let ((__tmp48514
                                                      (let ((__tmp48515
                                                             (let ((__tmp48530
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'begin-annotation))
                           (__tmp48516
                            (let ((__tmp48525
                                   (let ((__tmp48529
                                          (gx#datum->syntax '#f '@mop.mutator))
                                         (__tmp48526
                                          (let ((__tmp48527
                                                 (let ((__tmp48528
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons '#t '()))))
                                                   (declare (not safe))
                                                   (cons _L18970_
                                                         __tmp48528))))
                                            (declare (not safe))
                                            (cons _L18129_ __tmp48527))))
                                     (declare (not safe))
                                     (cons __tmp48529 __tmp48526)))
                                  (__tmp48517
                                   (let ((__tmp48518
                                          (let ((__tmp48524
                                                 (gx#datum->syntax
                                                  '#f
                                                  'make-class-slot-mutator))
                                                (__tmp48519
                                                 (let ((__tmp48520
                                                        (let ((__tmp48521
                                                               (let ((__tmp48523
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'quote))
                             (__tmp48522
                              (let ()
                                (declare (not safe))
                                (cons _L18970_ '()))))
                         (declare (not safe))
                         (cons __tmp48523 __tmp48522))))
                  (declare (not safe))
                  (cons __tmp48521 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L17894_
                                                         __tmp48520))))
                                            (declare (not safe))
                                            (cons __tmp48524 __tmp48519))))
                                     (declare (not safe))
                                     (cons __tmp48518 '()))))
                              (declare (not safe))
                              (cons __tmp48525 __tmp48517))))
                       (declare (not safe))
                       (cons __tmp48530 __tmp48516))))
                (declare (not safe))
                (cons __tmp48515 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L18967_ __tmp48514))))
                                          (declare (not safe))
                                          (cons __tmp48531 __tmp48513))))
                                   (declare (not safe))
                                   (_wrap17800_ __tmp48512))))
                            (declare (not safe))
                            (cons __tmp48511 '()))))
                     (declare (not safe))
                     (cons __tmp48532 __tmp48510)))
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
                                                 (_g1850518904_ __tmp48509))))
                                           _g1847918490_)))
                                       (__tmp48553
                                        (let ((__tmp48554
                                               (let ((__tmp48567
                                                      (gx#datum->syntax
                                                       '#f
                                                       'def))
                                                     (__tmp48555
                                                      (let ((__tmp48556
                                                             (let ((__tmp48557
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp48566
                                   (gx#datum->syntax '#f 'begin-annotation))
                                  (__tmp48558
                                   (let ((__tmp48563
                                          (let ((__tmp48565
                                                 (gx#datum->syntax
                                                  '#f
                                                  '@mop.predicate))
                                                (__tmp48564
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L18129_ '()))))
                                            (declare (not safe))
                                            (cons __tmp48565 __tmp48564)))
                                         (__tmp48559
                                          (let ((__tmp48560
                                                 (let ((__tmp48562
                                                        (gx#datum->syntax
                                                         '#f
                                                         'make-class-predicate))
                                                       (__tmp48561
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L17894_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp48562
                                                         __tmp48561))))
                                            (declare (not safe))
                                            (cons __tmp48560 '()))))
                                     (declare (not safe))
                                     (cons __tmp48563 __tmp48559))))
                              (declare (not safe))
                              (cons __tmp48566 __tmp48558))))
                       (declare (not safe))
                       (cons __tmp48557 '()))))
                (declare (not safe))
                (cons _L17891_ __tmp48556))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp48567
                                                       __tmp48555))))
                                          (declare (not safe))
                                          (_wrap17800_ __tmp48554))))
                                  (declare (not safe))
                                  (_g1847718992_ __tmp48553))))
                            _g1845118462_)))
                        (__tmp48568
                         (if (gx#stx-false? _L17892_)
                             (let ((__tmp48592 (gx#datum->syntax '#f 'begin)))
                               (declare (not safe))
                               (cons __tmp48592 '()))
                             (let ((__tmp48569
                                    (let ((__tmp48591
                                           (gx#datum->syntax '#f 'def))
                                          (__tmp48570
                                           (let ((__tmp48571
                                                  (let ((__tmp48572
                                                         (let ((__tmp48590
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'begin-annotation))
                       (__tmp48573
                        (let ((__tmp48587
                               (let ((__tmp48589
                                      (gx#datum->syntax '#f '@mop.constructor))
                                     (__tmp48588
                                      (let ()
                                        (declare (not safe))
                                        (cons _L18129_ '()))))
                                 (declare (not safe))
                                 (cons __tmp48589 __tmp48588)))
                              (__tmp48574
                               (let ((__tmp48575
                                      (let ((__tmp48586
                                             (gx#datum->syntax '#f 'lambda))
                                            (__tmp48576
                                             (let ((__tmp48585
                                                    (gx#datum->syntax
                                                     '#f
                                                     '$args))
                                                   (__tmp48577
                                                    (let ((__tmp48578
                                                           (let ((__tmp48584
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'apply))
                         (__tmp48579
                          (let ((__tmp48583
                                 (gx#datum->syntax '#f 'make-instance))
                                (__tmp48580
                                 (let ((__tmp48581
                                        (let ((__tmp48582
                                               (gx#datum->syntax '#f '$args)))
                                          (declare (not safe))
                                          (cons __tmp48582 '()))))
                                   (declare (not safe))
                                   (cons _L17894_ __tmp48581))))
                            (declare (not safe))
                            (cons __tmp48583 __tmp48580))))
                     (declare (not safe))
                     (cons __tmp48584 __tmp48579))))
              (declare (not safe))
              (cons __tmp48578 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp48585 __tmp48577))))
                                        (declare (not safe))
                                        (cons __tmp48586 __tmp48576))))
                                 (declare (not safe))
                                 (cons __tmp48575 '()))))
                          (declare (not safe))
                          (cons __tmp48587 __tmp48574))))
                   (declare (not safe))
                   (cons __tmp48590 __tmp48573))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp48572 '()))))
                                             (declare (not safe))
                                             (cons _L17892_ __tmp48571))))
                                      (declare (not safe))
                                      (cons __tmp48591 __tmp48570))))
                               (declare (not safe))
                               (_wrap17800_ __tmp48569)))))
                   (declare (not safe))
                   (_g1844918996_ __tmp48568))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1842318434_)))
                                                 (__tmp48593
                                                  (let ((__tmp48594
                                                         (let ((__tmp48611
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'def))
                       (__tmp48595
                        (let ((__tmp48596
                               (let ((__tmp48597
                                      (let ((__tmp48610
                                             (gx#datum->syntax
                                              '#f
                                              'begin-annotation))
                                            (__tmp48598
                                             (let ((__tmp48600
                                                    (let ((__tmp48609
                                                           (gx#datum->syntax
                                                            '#f
                                                            '@mop.class))
                                                          (__tmp48601
                                                           (let ((__tmp48602
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp48603
                                 (let ((__tmp48608
                                        (foldr (lambda (_g1900319006_
                                                        _g1900419009_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g1900319006_
                                                         _g1900419009_)))
                                               '()
                                               _L18009_))
                                       (__tmp48604
                                        (let ((__tmp48605
                                               (let ((__tmp48606
                                                      (let ((__tmp48607
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L18241_ '()))))
                (declare (not safe))
                (cons _L18213_ __tmp48607))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L18185_ __tmp48606))))
                                          (declare (not safe))
                                          (cons _L18101_ __tmp48605))))
                                   (declare (not safe))
                                   (cons __tmp48608 __tmp48604))))
                            (declare (not safe))
                            (cons _L18157_ __tmp48603))))
                     (declare (not safe))
                     (cons _L18045_ __tmp48602))))
              (declare (not safe))
              (cons __tmp48609 __tmp48601)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp48599
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L18409_ '()))))
                                               (declare (not safe))
                                               (cons __tmp48600 __tmp48599))))
                                        (declare (not safe))
                                        (cons __tmp48610 __tmp48598))))
                                 (declare (not safe))
                                 (cons __tmp48597 '()))))
                          (declare (not safe))
                          (cons _L17894_ __tmp48596))))
                   (declare (not safe))
                   (cons __tmp48611 __tmp48595))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_wrap17800_ __tmp48594))))
                                            (declare (not safe))
                                            (_g1842119000_ __tmp48593))))
                                      _g1839518406_)))
                                  (__tmp48612
                                   (let ((__tmp48632
                                          (gx#datum->syntax
                                           '#f
                                           'make-class-type))
                                         (__tmp48613
                                          (let ((__tmp48629
                                                 (let ((__tmp48631
                                                        (gx#datum->syntax
                                                         '#f
                                                         'quote))
                                                       (__tmp48630
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L18045_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp48631
                                                         __tmp48630)))
                                                (__tmp48614
                                                 (let ((__tmp48626
                                                        (let ((__tmp48628
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp48627
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L18073_ '()))))
                  (declare (not safe))
                  (cons __tmp48628 __tmp48627)))
               (__tmp48615
                (let ((__tmp48616
                       (let ((__tmp48622
                              (let ((__tmp48625 (gx#datum->syntax '#f 'quote))
                                    (__tmp48623
                                     (let ((__tmp48624
                                            (foldr (lambda (_g1901519018_
                                                            _g1901619021_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g1901519018_
                                                             _g1901619021_)))
                                                   '()
                                                   _L18009_)))
                                       (declare (not safe))
                                       (cons __tmp48624 '()))))
                                (declare (not safe))
                                (cons __tmp48625 __tmp48623)))
                             (__tmp48617
                              (let ((__tmp48618
                                     (let ((__tmp48619
                                            (let ((__tmp48621
                                                   (gx#datum->syntax
                                                    '#f
                                                    'quote))
                                                  (__tmp48620
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L18101_ '()))))
                                              (declare (not safe))
                                              (cons __tmp48621 __tmp48620))))
                                       (declare (not safe))
                                       (cons __tmp48619 '()))))
                                (declare (not safe))
                                (cons _L18353_ __tmp48618))))
                         (declare (not safe))
                         (cons __tmp48622 __tmp48617))))
                  (declare (not safe))
                  (cons _L18381_ __tmp48616))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp48626
                                                         __tmp48615))))
                                            (declare (not safe))
                                            (cons __tmp48629 __tmp48614))))
                                     (declare (not safe))
                                     (cons __tmp48632 __tmp48613))))
                             (declare (not safe))
                             (_g1839319012_ __tmp48612))))
                       _g1836718378_)))
                   (__tmp48633
                    (let ((__tmp48634 (gx#datum->syntax '#f 'list)))
                      (declare (not safe))
                      (cons __tmp48634 _L17893_))))
              (declare (not safe))
              (_g1836519024_ __tmp48633))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1833918350_)))
                                            (__tmp48635
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
                                                                (let ((__tmp48644
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '@list))
                              (__tmp48636
                               (let ((__tmp48639
                                      (let ((__tmp48643
                                             (gx#datum->syntax '#f '@list))
                                            (__tmp48640
                                             (let ((__tmp48641
                                                    (let ((__tmp48642
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L19047_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons ':: __tmp48642))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'metaclass: __tmp48641))))
                                        (declare (not safe))
                                        (cons __tmp48643 __tmp48640)))
                                     (__tmp48637
                                      (let ((__tmp48638
                                             (let ()
                                               (declare (not safe))
                                               (cons _L18325_ '()))))
                                        (declare (not safe))
                                        (cons ':: __tmp48638))))
                                 (declare (not safe))
                                 (cons __tmp48639 __tmp48637))))
                          (declare (not safe))
                          (cons __tmp48644 __tmp48636))))
                    _g1903319044_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_g1903119059_
                                                    _metaclass17952_))
                                                 _L18325_)))
                                       (declare (not safe))
                                       (_g1833719028_ __tmp48635))))
                                 _g1831118322_)))
                             (__tmp48645
                              (if _struct?17932_
                                  (let ((__tmp48652
                                         (gx#datum->syntax '#f '@list))
                                        (__tmp48646
                                         (let ((__tmp48649
                                                (let ((__tmp48651
                                                       (gx#datum->syntax
                                                        '#f
                                                        '@list))
                                                      (__tmp48650
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'struct: '#t))))
                                                  (declare (not safe))
                                                  (cons __tmp48651
                                                        __tmp48650)))
                                               (__tmp48647
                                                (let ((__tmp48648
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L18297_ '()))))
                                                  (declare (not safe))
                                                  (cons ':: __tmp48648))))
                                           (declare (not safe))
                                           (cons __tmp48649 __tmp48647))))
                                    (declare (not safe))
                                    (cons __tmp48652 __tmp48646))
                                  _L18297_)))
                        (declare (not safe))
                        (_g1830919063_ __tmp48645))))
                  _g1828318294_)))
              (__tmp48653
               (if (gx#stx-e _L18213_)
                   (let ((__tmp48660 (gx#datum->syntax '#f '@list))
                         (__tmp48654
                          (let ((__tmp48657
                                 (let ((__tmp48659
                                        (gx#datum->syntax '#f '@list))
                                       (__tmp48658
                                        (let ()
                                          (declare (not safe))
                                          (cons 'final: '#t))))
                                   (declare (not safe))
                                   (cons __tmp48659 __tmp48658)))
                                (__tmp48655
                                 (let ((__tmp48656
                                        (let ()
                                          (declare (not safe))
                                          (cons _L18269_ '()))))
                                   (declare (not safe))
                                   (cons ':: __tmp48656))))
                            (declare (not safe))
                            (cons __tmp48657 __tmp48655))))
                     (declare (not safe))
                     (cons __tmp48660 __tmp48654))
                   _L18269_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g1828119067_ __tmp48653))))
                                           _g1825518266_)))
                                       (__tmp48661
                                        (let ((_$e19075_
                                               (gx#stx-getq
                                                'properties:
                                                _L17889_)))
                                          (if _$e19075_
                                              _$e19075_
                                              (let ((__tmp48662
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list)))
                                                (declare (not safe))
                                                (cons __tmp48662 '()))))))
                                  (declare (not safe))
                                  (_g1825319071_ __tmp48661))))
                            _g1822718238_)))
                        (__tmp48663
                         (if (gx#stx-e _metaclass17952_)
                             (gx#core-quote-syntax _metaclass17952_)
                             '#f)))
                   (declare (not safe))
                   (_g1822519079_ __tmp48663))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1819918210_)))
                                                 (__tmp48664
                                                  (gx#stx-getq
                                                   'final:
                                                   _L17889_)))
                                            (declare (not safe))
                                            (_g1819719083_ __tmp48664))))
                                      _g1817118182_))))
                             (declare (not safe))
                             (_g1816919087_ _struct?17932_))))
                       _g1814318154_)))
                   (__tmp48665 (gx#stx-map gx#core-quote-syntax _L17893_)))
              (declare (not safe))
              (_g1814119091_ __tmp48665))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1811518126_)))
                                            (__tmp48666
                                             (gx#core-quote-syntax _L17894_)))
                                       (declare (not safe))
                                       (_g1811319095_ __tmp48666))))
                                 _g1808718098_)))
                             (__tmp48667 (gx#stx-getq 'constructor: _L17889_)))
                        (declare (not safe))
                        (_g1808519099_ __tmp48667))))
                  _g1805918070_)))
              (__tmp48668
               (let ((_$e19107_ (gx#stx-getq 'name: _L17889_)))
                 (if _$e19107_ _$e19107_ _L17894_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g1805719103_ __tmp48668))))
                                           _g1803118042_)))
                                       (__tmp48669
                                        (let ((_$e19115_
                                               (gx#stx-getq 'id: _L17889_)))
                                          (if _$e19115_
                                              _$e19115_
                                              (let ()
                                                (declare (not safe))
                                                (|gerbil/core$<MOP>$<MOP:1>[1]#make-class-type-id|
                                                 _L17894_))))))
                                  (declare (not safe))
                                  (_g1802919111_ __tmp48669))))
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
                                (__tmp48671
                                 (gx#stx-map _slot-name17802_ _slots17939_)))
                           (declare (not safe))
                           (_g1795419119_ __tmp48671))
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
