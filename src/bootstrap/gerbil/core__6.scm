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
                                       (let ((_g49160_
                                              (gx#syntax-split-splice
                                               _g1795617976_
                                               '0)))
                                         (begin
                                           (let ((_g49161_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g49160_)
                                                        (##vector-length
                                                         _g49160_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g49161_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g49161_)))
                                           (let ((_target1795817979_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g49160_ 0)))
                                                 (_tl1796017982_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g49160_
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
                             (let ((__tmp49391
                                    (let ()
                                      (declare (not safe))
                                      (cons _lp-hd1796317999_
                                            _slot1796517992_))))
                               (declare (not safe))
                               (_loop1796117985_
                                _lp-tl1796418002_
                                __tmp49391))))
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
                                                             (let ((_g49162_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _g1850718536_ '0)))
                       (begin
                         (let ((_g49163_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g49162_)
                                      (##vector-length _g49162_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g49163_ 2)))
                               (error "Context expects 2 values" _g49163_)))
                         (let ((_target1851018539_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g49162_ 0)))
                               (_tl1851218542_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g49162_ 1))))
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
                               (let ((__tmp49227
                                      (let ()
                                        (declare (not safe))
                                        (cons _hd1852518581_
                                              _def-setf1851718552_)))
                                     (__tmp49226
                                      (let ()
                                        (declare (not safe))
                                        (cons _hd1852218571_
                                              _def-getf1851818554_))))
                                 (declare (not safe))
                                 (_loop1851318545_
                                  _lp-tl1851618564_
                                  __tmp49227
                                  __tmp49226))
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
                            (let ((_g49164_
                                   (gx#syntax-split-splice _g1861318642_ '0)))
                              (begin
                                (let ((_g49165_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g49164_)
                                             (##vector-length _g49164_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g49165_ 2)))
                                      (error "Context expects 2 values"
                                             _g49165_)))
                                (let ((_target1861618645_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g49164_ 0)))
                                      (_tl1861818648_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g49164_ 1))))
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
                                      (let ((__tmp49180
                                             (let ()
                                               (declare (not safe))
                                               (cons _hd1863118687_
                                                     _def-usetf1862318658_)))
                                            (__tmp49179
                                             (let ()
                                               (declare (not safe))
                                               (cons _hd1862818677_
                                                     _def-ugetf1862418660_))))
                                        (declare (not safe))
                                        (_loop1861918651_
                                         _lp-tl1862218670_
                                         __tmp49180
                                         __tmp49179))
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
                       (let ((__tmp49166
                              (let ((__tmp49178 (gx#datum->syntax '#f 'begin))
                                    (__tmp49167
                                     (let ((__tmp49168
                                            (let ((__tmp49169
                                                   (let ((__tmp49170
                                                          (let ((__tmp49177
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1871918728_ _g1872018731_)
                           (let ()
                             (declare (not safe))
                             (cons _g1871918728_ _g1872018731_))))
                        (__tmp49171
                         (let ((__tmp49176
                                (lambda (_g1872118734_ _g1872218737_)
                                  (let ()
                                    (declare (not safe))
                                    (cons _g1872118734_ _g1872218737_))))
                               (__tmp49172
                                (let ((__tmp49175
                                       (lambda (_g1872318740_ _g1872418743_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g1872318740_
                                                 _g1872418743_))))
                                      (__tmp49173
                                       (let ((__tmp49174
                                              (lambda (_g1872518746_
                                                       _g1872618749_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g1872518746_
                                                        _g1872618749_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp49174 '() _L18699_))))
                                  (declare (not safe))
                                  (foldr1 __tmp49175 __tmp49173 _L18701_))))
                           (declare (not safe))
                           (foldr1 __tmp49176 __tmp49172 _L18593_))))
                    (declare (not safe))
                    (foldr1 __tmp49177 __tmp49171 _L18595_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L18465_
                                                           __tmp49170))))
                                              (declare (not safe))
                                              (cons _L18493_ __tmp49169))))
                                       (declare (not safe))
                                       (cons _L18437_ __tmp49168))))
                                (declare (not safe))
                                (cons __tmp49178 __tmp49167))))
                         (declare (not safe))
                         (_wrap17800_ __tmp49166)))))
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
                     (__tmp49181
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
                     (let ((__tmp49204
                            (let ((__tmp49205
                                   (let ((__tmp49224
                                          (gx#datum->syntax '#f 'def))
                                         (__tmp49206
                                          (let ((__tmp49207
                                                 (let ((__tmp49208
                                                        (let ((__tmp49223
                                                               (gx#datum->syntax
                                                                '#f
                                                                'begin-annotation))
                                                              (__tmp49209
                                                               (let ((__tmp49218
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp49222
                                     (gx#datum->syntax '#f '@mop.accessor))
                                    (__tmp49219
                                     (let ((__tmp49220
                                            (let ((__tmp49221
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#f '()))))
                                              (declare (not safe))
                                              (cons _L18818_ __tmp49221))))
                                       (declare (not safe))
                                       (cons _L18129_ __tmp49220))))
                                (declare (not safe))
                                (cons __tmp49222 __tmp49219)))
                             (__tmp49210
                              (let ((__tmp49211
                                     (let ((__tmp49217
                                            (gx#datum->syntax
                                             '#f
                                             'make-class-slot-unchecked-accessor))
                                           (__tmp49212
                                            (let ((__tmp49213
                                                   (let ((__tmp49214
                                                          (let ((__tmp49216
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'quote))
                        (__tmp49215
                         (let () (declare (not safe)) (cons _L18818_ '()))))
                    (declare (not safe))
                    (cons __tmp49216 __tmp49215))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp49214 '()))))
                                              (declare (not safe))
                                              (cons _L17894_ __tmp49213))))
                                       (declare (not safe))
                                       (cons __tmp49217 __tmp49212))))
                                (declare (not safe))
                                (cons __tmp49211 '()))))
                         (declare (not safe))
                         (cons __tmp49218 __tmp49210))))
                  (declare (not safe))
                  (cons __tmp49223 __tmp49209))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp49208 '()))))
                                            (declare (not safe))
                                            (cons _L18880_ __tmp49207))))
                                     (declare (not safe))
                                     (cons __tmp49224 __tmp49206))))
                              (declare (not safe))
                              (_wrap17800_ __tmp49205)))
                           (__tmp49182
                            (let ((__tmp49183
                                   (let ((__tmp49184
                                          (let ((__tmp49203
                                                 (gx#datum->syntax '#f 'def))
                                                (__tmp49185
                                                 (let ((__tmp49186
                                                        (let ((__tmp49187
                                                               (let ((__tmp49202
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'begin-annotation))
                             (__tmp49188
                              (let ((__tmp49197
                                     (let ((__tmp49201
                                            (gx#datum->syntax
                                             '#f
                                             '@mop.mutator))
                                           (__tmp49198
                                            (let ((__tmp49199
                                                   (let ((__tmp49200
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '#f '()))))
                                                     (declare (not safe))
                                                     (cons _L18818_
                                                           __tmp49200))))
                                              (declare (not safe))
                                              (cons _L18129_ __tmp49199))))
                                       (declare (not safe))
                                       (cons __tmp49201 __tmp49198)))
                                    (__tmp49189
                                     (let ((__tmp49190
                                            (let ((__tmp49196
                                                   (gx#datum->syntax
                                                    '#f
                                                    'make-class-slot-unchecked-mutator))
                                                  (__tmp49191
                                                   (let ((__tmp49192
                                                          (let ((__tmp49193
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp49195 (gx#datum->syntax '#f 'quote))
                               (__tmp49194
                                (let ()
                                  (declare (not safe))
                                  (cons _L18818_ '()))))
                           (declare (not safe))
                           (cons __tmp49195 __tmp49194))))
                    (declare (not safe))
                    (cons __tmp49193 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L17894_
                                                           __tmp49192))))
                                              (declare (not safe))
                                              (cons __tmp49196 __tmp49191))))
                                       (declare (not safe))
                                       (cons __tmp49190 '()))))
                                (declare (not safe))
                                (cons __tmp49197 __tmp49189))))
                         (declare (not safe))
                         (cons __tmp49202 __tmp49188))))
                  (declare (not safe))
                  (cons __tmp49187 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L18878_
                                                         __tmp49186))))
                                            (declare (not safe))
                                            (cons __tmp49203 __tmp49185))))
                                     (declare (not safe))
                                     (_wrap17800_ __tmp49184))))
                              (declare (not safe))
                              (cons __tmp49183 '()))))
                       (declare (not safe))
                       (cons __tmp49204 __tmp49182))))
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
                                 (__tmp49225
                                  (list (gx#stx-identifier
                                         _L18817_
                                         '"&"
                                         _L18817_)
                                        (gx#stx-identifier
                                         _L18815_
                                         '"&"
                                         _L18815_))))
                            (declare (not safe))
                            (_g1883518896_ __tmp49225)))
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
                (_g1861118752_ __tmp49181))))
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
              (__tmp49228
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
                   (let ((__tmp49251
                          (let ((__tmp49252
                                 (let ((__tmp49271 (gx#datum->syntax '#f 'def))
                                       (__tmp49253
                                        (let ((__tmp49254
                                               (let ((__tmp49255
                                                      (let ((__tmp49270
                                                             (gx#datum->syntax
                                                              '#f
                                                              'begin-annotation))
                                                            (__tmp49256
                                                             (let ((__tmp49265
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp49269
                                   (gx#datum->syntax '#f '@mop.accessor))
                                  (__tmp49266
                                   (let ((__tmp49267
                                          (let ((__tmp49268
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons '#t '()))))
                                            (declare (not safe))
                                            (cons _L18970_ __tmp49268))))
                                     (declare (not safe))
                                     (cons _L18129_ __tmp49267))))
                              (declare (not safe))
                              (cons __tmp49269 __tmp49266)))
                           (__tmp49257
                            (let ((__tmp49258
                                   (let ((__tmp49264
                                          (gx#datum->syntax
                                           '#f
                                           'make-class-slot-accessor))
                                         (__tmp49259
                                          (let ((__tmp49260
                                                 (let ((__tmp49261
                                                        (let ((__tmp49263
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp49262
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L18970_ '()))))
                  (declare (not safe))
                  (cons __tmp49263 __tmp49262))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp49261 '()))))
                                            (declare (not safe))
                                            (cons _L17894_ __tmp49260))))
                                     (declare (not safe))
                                     (cons __tmp49264 __tmp49259))))
                              (declare (not safe))
                              (cons __tmp49258 '()))))
                       (declare (not safe))
                       (cons __tmp49265 __tmp49257))))
                (declare (not safe))
                (cons __tmp49270 __tmp49256))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp49255 '()))))
                                          (declare (not safe))
                                          (cons _L18969_ __tmp49254))))
                                   (declare (not safe))
                                   (cons __tmp49271 __tmp49253))))
                            (declare (not safe))
                            (_wrap17800_ __tmp49252)))
                         (__tmp49229
                          (let ((__tmp49230
                                 (let ((__tmp49231
                                        (let ((__tmp49250
                                               (gx#datum->syntax '#f 'def))
                                              (__tmp49232
                                               (let ((__tmp49233
                                                      (let ((__tmp49234
                                                             (let ((__tmp49249
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'begin-annotation))
                           (__tmp49235
                            (let ((__tmp49244
                                   (let ((__tmp49248
                                          (gx#datum->syntax '#f '@mop.mutator))
                                         (__tmp49245
                                          (let ((__tmp49246
                                                 (let ((__tmp49247
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons '#t '()))))
                                                   (declare (not safe))
                                                   (cons _L18970_
                                                         __tmp49247))))
                                            (declare (not safe))
                                            (cons _L18129_ __tmp49246))))
                                     (declare (not safe))
                                     (cons __tmp49248 __tmp49245)))
                                  (__tmp49236
                                   (let ((__tmp49237
                                          (let ((__tmp49243
                                                 (gx#datum->syntax
                                                  '#f
                                                  'make-class-slot-mutator))
                                                (__tmp49238
                                                 (let ((__tmp49239
                                                        (let ((__tmp49240
                                                               (let ((__tmp49242
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'quote))
                             (__tmp49241
                              (let ()
                                (declare (not safe))
                                (cons _L18970_ '()))))
                         (declare (not safe))
                         (cons __tmp49242 __tmp49241))))
                  (declare (not safe))
                  (cons __tmp49240 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L17894_
                                                         __tmp49239))))
                                            (declare (not safe))
                                            (cons __tmp49243 __tmp49238))))
                                     (declare (not safe))
                                     (cons __tmp49237 '()))))
                              (declare (not safe))
                              (cons __tmp49244 __tmp49236))))
                       (declare (not safe))
                       (cons __tmp49249 __tmp49235))))
                (declare (not safe))
                (cons __tmp49234 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L18967_ __tmp49233))))
                                          (declare (not safe))
                                          (cons __tmp49250 __tmp49232))))
                                   (declare (not safe))
                                   (_wrap17800_ __tmp49231))))
                            (declare (not safe))
                            (cons __tmp49230 '()))))
                     (declare (not safe))
                     (cons __tmp49251 __tmp49229)))
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
                                                 (_g1850518904_ __tmp49228))))
                                           _g1847918490_)))
                                       (__tmp49272
                                        (let ((__tmp49273
                                               (let ((__tmp49286
                                                      (gx#datum->syntax
                                                       '#f
                                                       'def))
                                                     (__tmp49274
                                                      (let ((__tmp49275
                                                             (let ((__tmp49276
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp49285
                                   (gx#datum->syntax '#f 'begin-annotation))
                                  (__tmp49277
                                   (let ((__tmp49282
                                          (let ((__tmp49284
                                                 (gx#datum->syntax
                                                  '#f
                                                  '@mop.predicate))
                                                (__tmp49283
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L18129_ '()))))
                                            (declare (not safe))
                                            (cons __tmp49284 __tmp49283)))
                                         (__tmp49278
                                          (let ((__tmp49279
                                                 (let ((__tmp49281
                                                        (gx#datum->syntax
                                                         '#f
                                                         'make-class-predicate))
                                                       (__tmp49280
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L17894_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp49281
                                                         __tmp49280))))
                                            (declare (not safe))
                                            (cons __tmp49279 '()))))
                                     (declare (not safe))
                                     (cons __tmp49282 __tmp49278))))
                              (declare (not safe))
                              (cons __tmp49285 __tmp49277))))
                       (declare (not safe))
                       (cons __tmp49276 '()))))
                (declare (not safe))
                (cons _L17891_ __tmp49275))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp49286
                                                       __tmp49274))))
                                          (declare (not safe))
                                          (_wrap17800_ __tmp49273))))
                                  (declare (not safe))
                                  (_g1847718992_ __tmp49272))))
                            _g1845118462_)))
                        (__tmp49287
                         (if (gx#stx-false? _L17892_)
                             (let ((__tmp49311 (gx#datum->syntax '#f 'begin)))
                               (declare (not safe))
                               (cons __tmp49311 '()))
                             (let ((__tmp49288
                                    (let ((__tmp49310
                                           (gx#datum->syntax '#f 'def))
                                          (__tmp49289
                                           (let ((__tmp49290
                                                  (let ((__tmp49291
                                                         (let ((__tmp49309
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'begin-annotation))
                       (__tmp49292
                        (let ((__tmp49306
                               (let ((__tmp49308
                                      (gx#datum->syntax '#f '@mop.constructor))
                                     (__tmp49307
                                      (let ()
                                        (declare (not safe))
                                        (cons _L18129_ '()))))
                                 (declare (not safe))
                                 (cons __tmp49308 __tmp49307)))
                              (__tmp49293
                               (let ((__tmp49294
                                      (let ((__tmp49305
                                             (gx#datum->syntax '#f 'lambda))
                                            (__tmp49295
                                             (let ((__tmp49304
                                                    (gx#datum->syntax
                                                     '#f
                                                     '$args))
                                                   (__tmp49296
                                                    (let ((__tmp49297
                                                           (let ((__tmp49303
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'apply))
                         (__tmp49298
                          (let ((__tmp49302
                                 (gx#datum->syntax '#f 'make-instance))
                                (__tmp49299
                                 (let ((__tmp49300
                                        (let ((__tmp49301
                                               (gx#datum->syntax '#f '$args)))
                                          (declare (not safe))
                                          (cons __tmp49301 '()))))
                                   (declare (not safe))
                                   (cons _L17894_ __tmp49300))))
                            (declare (not safe))
                            (cons __tmp49302 __tmp49299))))
                     (declare (not safe))
                     (cons __tmp49303 __tmp49298))))
              (declare (not safe))
              (cons __tmp49297 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp49304 __tmp49296))))
                                        (declare (not safe))
                                        (cons __tmp49305 __tmp49295))))
                                 (declare (not safe))
                                 (cons __tmp49294 '()))))
                          (declare (not safe))
                          (cons __tmp49306 __tmp49293))))
                   (declare (not safe))
                   (cons __tmp49309 __tmp49292))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp49291 '()))))
                                             (declare (not safe))
                                             (cons _L17892_ __tmp49290))))
                                      (declare (not safe))
                                      (cons __tmp49310 __tmp49289))))
                               (declare (not safe))
                               (_wrap17800_ __tmp49288)))))
                   (declare (not safe))
                   (_g1844918996_ __tmp49287))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1842318434_)))
                                                 (__tmp49312
                                                  (let ((__tmp49313
                                                         (let ((__tmp49331
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'def))
                       (__tmp49314
                        (let ((__tmp49315
                               (let ((__tmp49316
                                      (let ((__tmp49330
                                             (gx#datum->syntax
                                              '#f
                                              'begin-annotation))
                                            (__tmp49317
                                             (let ((__tmp49319
                                                    (let ((__tmp49329
                                                           (gx#datum->syntax
                                                            '#f
                                                            '@mop.class))
                                                          (__tmp49320
                                                           (let ((__tmp49321
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp49322
                                 (let ((__tmp49327
                                        (let ((__tmp49328
                                               (lambda (_g1900319006_
                                                        _g1900419009_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g1900319006_
                                                         _g1900419009_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp49328 '() _L18009_)))
                                       (__tmp49323
                                        (let ((__tmp49324
                                               (let ((__tmp49325
                                                      (let ((__tmp49326
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L18241_ '()))))
                (declare (not safe))
                (cons _L18213_ __tmp49326))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L18185_ __tmp49325))))
                                          (declare (not safe))
                                          (cons _L18101_ __tmp49324))))
                                   (declare (not safe))
                                   (cons __tmp49327 __tmp49323))))
                            (declare (not safe))
                            (cons _L18157_ __tmp49322))))
                     (declare (not safe))
                     (cons _L18045_ __tmp49321))))
              (declare (not safe))
              (cons __tmp49329 __tmp49320)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp49318
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L18409_ '()))))
                                               (declare (not safe))
                                               (cons __tmp49319 __tmp49318))))
                                        (declare (not safe))
                                        (cons __tmp49330 __tmp49317))))
                                 (declare (not safe))
                                 (cons __tmp49316 '()))))
                          (declare (not safe))
                          (cons _L17894_ __tmp49315))))
                   (declare (not safe))
                   (cons __tmp49331 __tmp49314))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_wrap17800_ __tmp49313))))
                                            (declare (not safe))
                                            (_g1842119000_ __tmp49312))))
                                      _g1839518406_)))
                                  (__tmp49332
                                   (let ((__tmp49353
                                          (gx#datum->syntax
                                           '#f
                                           'make-class-type))
                                         (__tmp49333
                                          (let ((__tmp49350
                                                 (let ((__tmp49352
                                                        (gx#datum->syntax
                                                         '#f
                                                         'quote))
                                                       (__tmp49351
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L18045_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp49352
                                                         __tmp49351)))
                                                (__tmp49334
                                                 (let ((__tmp49347
                                                        (let ((__tmp49349
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp49348
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L18073_ '()))))
                  (declare (not safe))
                  (cons __tmp49349 __tmp49348)))
               (__tmp49335
                (let ((__tmp49336
                       (let ((__tmp49342
                              (let ((__tmp49346 (gx#datum->syntax '#f 'quote))
                                    (__tmp49343
                                     (let ((__tmp49344
                                            (let ((__tmp49345
                                                   (lambda (_g1901519018_
                                                            _g1901619021_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g1901519018_
                                                             _g1901619021_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp49345
                                                      '()
                                                      _L18009_))))
                                       (declare (not safe))
                                       (cons __tmp49344 '()))))
                                (declare (not safe))
                                (cons __tmp49346 __tmp49343)))
                             (__tmp49337
                              (let ((__tmp49338
                                     (let ((__tmp49339
                                            (let ((__tmp49341
                                                   (gx#datum->syntax
                                                    '#f
                                                    'quote))
                                                  (__tmp49340
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L18101_ '()))))
                                              (declare (not safe))
                                              (cons __tmp49341 __tmp49340))))
                                       (declare (not safe))
                                       (cons __tmp49339 '()))))
                                (declare (not safe))
                                (cons _L18353_ __tmp49338))))
                         (declare (not safe))
                         (cons __tmp49342 __tmp49337))))
                  (declare (not safe))
                  (cons _L18381_ __tmp49336))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp49347
                                                         __tmp49335))))
                                            (declare (not safe))
                                            (cons __tmp49350 __tmp49334))))
                                     (declare (not safe))
                                     (cons __tmp49353 __tmp49333))))
                             (declare (not safe))
                             (_g1839319012_ __tmp49332))))
                       _g1836718378_)))
                   (__tmp49354
                    (let ((__tmp49355 (gx#datum->syntax '#f 'list)))
                      (declare (not safe))
                      (cons __tmp49355 _L17893_))))
              (declare (not safe))
              (_g1836519024_ __tmp49354))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1833918350_)))
                                            (__tmp49356
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
                                                                (let ((__tmp49365
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '@list))
                              (__tmp49357
                               (let ((__tmp49360
                                      (let ((__tmp49364
                                             (gx#datum->syntax '#f '@list))
                                            (__tmp49361
                                             (let ((__tmp49362
                                                    (let ((__tmp49363
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L19047_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons ':: __tmp49363))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'metaclass: __tmp49362))))
                                        (declare (not safe))
                                        (cons __tmp49364 __tmp49361)))
                                     (__tmp49358
                                      (let ((__tmp49359
                                             (let ()
                                               (declare (not safe))
                                               (cons _L18325_ '()))))
                                        (declare (not safe))
                                        (cons ':: __tmp49359))))
                                 (declare (not safe))
                                 (cons __tmp49360 __tmp49358))))
                          (declare (not safe))
                          (cons __tmp49365 __tmp49357))))
                    _g1903319044_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_g1903119059_
                                                    _metaclass17952_))
                                                 _L18325_)))
                                       (declare (not safe))
                                       (_g1833719028_ __tmp49356))))
                                 _g1831118322_)))
                             (__tmp49366
                              (if _struct?17932_
                                  (let ((__tmp49373
                                         (gx#datum->syntax '#f '@list))
                                        (__tmp49367
                                         (let ((__tmp49370
                                                (let ((__tmp49372
                                                       (gx#datum->syntax
                                                        '#f
                                                        '@list))
                                                      (__tmp49371
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'struct: '#t))))
                                                  (declare (not safe))
                                                  (cons __tmp49372
                                                        __tmp49371)))
                                               (__tmp49368
                                                (let ((__tmp49369
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L18297_ '()))))
                                                  (declare (not safe))
                                                  (cons ':: __tmp49369))))
                                           (declare (not safe))
                                           (cons __tmp49370 __tmp49368))))
                                    (declare (not safe))
                                    (cons __tmp49373 __tmp49367))
                                  _L18297_)))
                        (declare (not safe))
                        (_g1830919063_ __tmp49366))))
                  _g1828318294_)))
              (__tmp49374
               (if (gx#stx-e _L18213_)
                   (let ((__tmp49381 (gx#datum->syntax '#f '@list))
                         (__tmp49375
                          (let ((__tmp49378
                                 (let ((__tmp49380
                                        (gx#datum->syntax '#f '@list))
                                       (__tmp49379
                                        (let ()
                                          (declare (not safe))
                                          (cons 'final: '#t))))
                                   (declare (not safe))
                                   (cons __tmp49380 __tmp49379)))
                                (__tmp49376
                                 (let ((__tmp49377
                                        (let ()
                                          (declare (not safe))
                                          (cons _L18269_ '()))))
                                   (declare (not safe))
                                   (cons ':: __tmp49377))))
                            (declare (not safe))
                            (cons __tmp49378 __tmp49376))))
                     (declare (not safe))
                     (cons __tmp49381 __tmp49375))
                   _L18269_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g1828119067_ __tmp49374))))
                                           _g1825518266_)))
                                       (__tmp49382
                                        (let ((_$e19075_
                                               (gx#stx-getq
                                                'properties:
                                                _L17889_)))
                                          (if _$e19075_
                                              _$e19075_
                                              (let ((__tmp49383
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list)))
                                                (declare (not safe))
                                                (cons __tmp49383 '()))))))
                                  (declare (not safe))
                                  (_g1825319071_ __tmp49382))))
                            _g1822718238_)))
                        (__tmp49384
                         (if (gx#stx-e _metaclass17952_)
                             (gx#core-quote-syntax _metaclass17952_)
                             '#f)))
                   (declare (not safe))
                   (_g1822519079_ __tmp49384))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1819918210_)))
                                                 (__tmp49385
                                                  (gx#stx-getq
                                                   'final:
                                                   _L17889_)))
                                            (declare (not safe))
                                            (_g1819719083_ __tmp49385))))
                                      _g1817118182_))))
                             (declare (not safe))
                             (_g1816919087_ _struct?17932_))))
                       _g1814318154_)))
                   (__tmp49386 (gx#stx-map gx#core-quote-syntax _L17893_)))
              (declare (not safe))
              (_g1814119091_ __tmp49386))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1811518126_)))
                                            (__tmp49387
                                             (gx#core-quote-syntax _L17894_)))
                                       (declare (not safe))
                                       (_g1811319095_ __tmp49387))))
                                 _g1808718098_)))
                             (__tmp49388 (gx#stx-getq 'constructor: _L17889_)))
                        (declare (not safe))
                        (_g1808519099_ __tmp49388))))
                  _g1805918070_)))
              (__tmp49389
               (let ((_$e19107_ (gx#stx-getq 'name: _L17889_)))
                 (if _$e19107_ _$e19107_ _L17894_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g1805719103_ __tmp49389))))
                                           _g1803118042_)))
                                       (__tmp49390
                                        (let ((_$e19115_
                                               (gx#stx-getq 'id: _L17889_)))
                                          (if _$e19115_
                                              _$e19115_
                                              (let ()
                                                (declare (not safe))
                                                (|gerbil/core$<MOP>$<MOP:1>[1]#make-class-type-id|
                                                 _L17894_))))))
                                  (declare (not safe))
                                  (_g1802919111_ __tmp49390))))
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
                                (__tmp49392
                                 (gx#stx-map _slot-name17802_ _slots17939_)))
                           (declare (not safe))
                           (_g1795419119_ __tmp49392))
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
