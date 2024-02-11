(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<MOP>$<MOP:1>[1]#module-type-id|
    (lambda (_type-t19120_)
      (let ((_$e19123_ (gx#module-context-ns (gx#current-expander-context))))
        (if _$e19123_
            ((lambda (_ns19127_)
               (gx#stx-identifier
                _type-t19120_
                _ns19127_
                '"#"
                _type-t19120_
                '"::t"))
             _$e19123_)
            (let ((_mid19130_
                   (gx#expander-context-id (gx#current-expander-context))))
              (gx#stx-identifier
               _type-t19120_
               _mid19130_
               '"#"
               _type-t19120_
               '"::t"))))))
  (define |gerbil/core$<MOP>$<MOP:1>[1]#make-class-type-id|
    (lambda (_type-t19117_)
      (if (gx#module-context? (gx#current-expander-context))
          (let ()
            (declare (not safe))
            (|gerbil/core$<MOP>$<MOP:1>[1]#module-type-id| _type-t19117_))
          (make-symbol '"__" (gensym (gx#stx-e _type-t19117_)) '"::t"))))
  (define |gerbil/core$<MOP>$<MOP:1>[1]#generate-typedef|
    (lambda (_stx17796_ _struct?17798_)
      (letrec ((_wrap17800_
                (lambda (_e-stx19114_)
                  (gx#stx-wrap-source
                   _e-stx19114_
                   (gx#stx-source _stx17796_))))
               (_slot-name17802_
                (lambda (_slot-spec19031_)
                  (let* ((_g1903419053_
                          (lambda (_g1903519049_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g1903519049_)))
                         (_g1903319110_
                          (lambda (_g1903519057_)
                            (if (gx#stx-pair? _g1903519057_)
                                (let ((_e1904119060_
                                       (gx#syntax-e _g1903519057_)))
                                  (let ((_hd1904019064_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1904119060_)))
                                        (_tl1903919067_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1904119060_))))
                                    (if (gx#stx-pair? _tl1903919067_)
                                        (let ((_e1904419070_
                                               (gx#syntax-e _tl1903919067_)))
                                          (let ((_hd1904319074_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1904419070_)))
                                                (_tl1904219077_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1904419070_))))
                                            (if (gx#stx-pair? _tl1904219077_)
                                                (let ((_e1904719080_
                                                       (gx#syntax-e
                                                        _tl1904219077_)))
                                                  (let ((_hd1904619084_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1904719080_)))
                                                        (_tl1904519087_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1904719080_))))
                                                    (if (gx#stx-null?
                                                         _tl1904519087_)
                                                        ((lambda (_L19090_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L19092_
                          _L19093_)
                   _L19093_)
                 _hd1904619084_
                 _hd1904319074_
                 _hd1904019064_)
                (let () (declare (not safe)) (_g1903419053_ _g1903519057_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g1903419053_
                                                   _g1903519057_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g1903419053_ _g1903519057_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g1903419053_ _g1903519057_))))))
                    (declare (not safe))
                    (_g1903319110_ _slot-spec19031_))))
               (_class-opt?17803_
                (lambda (_key19028_)
                  (memq (gx#stx-e _key19028_)
                        '(struct:
                          slots:
                          id:
                          name:
                          properties:
                          constructor:
                          final:
                          mixin:)))))
        (let* ((_g1780517832_
                (lambda (_g1780617828_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1780617828_)))
               (_g1780419024_
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
                                (_g1795217969_
                                 (lambda (_g1795317965_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _g1795317965_)))
                                (_g1795119020_
                                 (lambda (_g1795317973_)
                                   (if (gx#stx-pair/null? _g1795317973_)
                                       (let ((_g48638_
                                              (gx#syntax-split-splice
                                               _g1795317973_
                                               '0)))
                                         (begin
                                           (let ((_g48639_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g48638_)
                                                        (##vector-length
                                                         _g48638_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g48639_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g48639_)))
                                           (let ((_target1795517976_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g48638_ 0)))
                                                 (_tl1795717979_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g48638_
                                                     1))))
                                             (if (gx#stx-null? _tl1795717979_)
                                                 (letrec ((_loop1795817982_
                                                           (lambda (_hd1795617986_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _slot1796217989_)
                     (if (gx#stx-pair? _hd1795617986_)
                         (let ((_e1795917992_ (gx#syntax-e _hd1795617986_)))
                           (let ((_lp-hd1796017996_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e1795917992_)))
                                 (_lp-tl1796117999_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e1795917992_))))
                             (let ((__tmp48857
                                    (let ()
                                      (declare (not safe))
                                      (cons _lp-hd1796017996_
                                            _slot1796217989_))))
                               (declare (not safe))
                               (_loop1795817982_
                                _lp-tl1796117999_
                                __tmp48857))))
                         (let ((_slot1796318002_ (reverse _slot1796217989_)))
                           ((lambda (_L18006_)
                              (let ()
                                (let* ((_g1802618034_
                                        (lambda (_g1802718030_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g1802718030_)))
                                       (_g1802519012_
                                        (lambda (_g1802718038_)
                                          ((lambda (_L18041_)
                                             (let ()
                                               (let* ((_g1805418062_
                                                       (lambda (_g1805518058_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g1805518058_)))
                                                      (_g1805319004_
                                                       (lambda (_g1805518066_)
                                                         ((lambda (_L18069_)
                                                            (let ()
                                                              (let* ((_g1808218090_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g1808318086_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g1808318086_)))
                             (_g1808119000_
                              (lambda (_g1808318094_)
                                ((lambda (_L18097_)
                                   (let ()
                                     (let* ((_g1811018118_
                                             (lambda (_g1811118114_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g1811118114_)))
                                            (_g1810918996_
                                             (lambda (_g1811118122_)
                                               ((lambda (_L18125_)
                                                  (let ()
                                                    (let* ((_g1813818146_
                                                            (lambda (_g1813918142_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g1813918142_)))
                                                           (_g1813718992_
                                                            (lambda (_g1813918150_)
                                                              ((lambda (_L18153_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g1816618174_
                                   (lambda (_g1816718170_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g1816718170_)))
                                  (_g1816518988_
                                   (lambda (_g1816718178_)
                                     ((lambda (_L18181_)
                                        (let ()
                                          (let* ((_g1819418202_
                                                  (lambda (_g1819518198_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g1819518198_)))
                                                 (_g1819318984_
                                                  (lambda (_g1819518206_)
                                                    ((lambda (_L18209_)
                                                       (let ()
                                                         (let* ((_g1822218230_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1822318226_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g1822318226_)))
                        (_g1822118976_
                         (lambda (_g1822318234_)
                           ((lambda (_L18237_)
                              (let ()
                                (let* ((_g1825018258_
                                        (lambda (_g1825118254_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g1825118254_)))
                                       (_g1824918972_
                                        (lambda (_g1825118262_)
                                          ((lambda (_L18265_)
                                             (let ()
                                               (let* ((_g1827818286_
                                                       (lambda (_g1827918282_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g1827918282_)))
                                                      (_g1827718968_
                                                       (lambda (_g1827918290_)
                                                         ((lambda (_L18293_)
                                                            (let ()
                                                              (let* ((_g1830618314_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g1830718310_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g1830718310_)))
                             (_g1830518964_
                              (lambda (_g1830718318_)
                                ((lambda (_L18321_)
                                   (let ()
                                     (let* ((_g1833418342_
                                             (lambda (_g1833518338_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g1833518338_)))
                                            (_g1833318952_
                                             (lambda (_g1833518346_)
                                               ((lambda (_L18349_)
                                                  (let ()
                                                    (let* ((_g1836218370_
                                                            (lambda (_g1836318366_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g1836318366_)))
                                                           (_g1836118940_
                                                            (lambda (_g1836318374_)
                                                              ((lambda (_L18377_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g1839018398_
                                   (lambda (_g1839118394_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g1839118394_)))
                                  (_g1838918936_
                                   (lambda (_g1839118402_)
                                     ((lambda (_L18405_)
                                        (let ()
                                          (let* ((_g1841818426_
                                                  (lambda (_g1841918422_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g1841918422_)))
                                                 (_g1841718932_
                                                  (lambda (_g1841918430_)
                                                    ((lambda (_L18433_)
                                                       (let ()
                                                         (let* ((_g1844618472_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1844718468_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g1844718468_)))
                        (_g1844518844_
                         (lambda (_g1844718476_)
                           (if (gx#stx-pair/null? _g1844718476_)
                               (let ((_g48640_
                                      (gx#syntax-split-splice
                                       _g1844718476_
                                       '0)))
                                 (begin
                                   (let ((_g48641_
                                          (let ()
                                            (declare (not safe))
                                            (if (##values? _g48640_)
                                                (##vector-length _g48640_)
                                                1))))
                                     (if (not (let ()
                                                (declare (not safe))
                                                (##fx= _g48641_ 2)))
                                         (error "Context expects 2 values"
                                                _g48641_)))
                                   (let ((_target1845018479_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g48640_ 0)))
                                         (_tl1845218482_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g48640_ 1))))
                                     (if (gx#stx-null? _tl1845218482_)
                                         (letrec ((_loop1845318485_
                                                   (lambda (_hd1845118489_
                                                            _def-setf1845718492_
                                                            _def-getf1845818494_)
                                                     (if (gx#stx-pair?
                                                          _hd1845118489_)
                                                         (let ((_e1845418497_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1845118489_)))
                   (let ((_lp-hd1845518501_
                          (let () (declare (not safe)) (##car _e1845418497_)))
                         (_lp-tl1845618504_
                          (let () (declare (not safe)) (##cdr _e1845418497_))))
                     (if (gx#stx-pair? _lp-hd1845518501_)
                         (let ((_e1846318507_ (gx#syntax-e _lp-hd1845518501_)))
                           (let ((_hd1846218511_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e1846318507_)))
                                 (_tl1846118514_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e1846318507_))))
                             (if (gx#stx-pair? _tl1846118514_)
                                 (let ((_e1846618517_
                                        (gx#syntax-e _tl1846118514_)))
                                   (let ((_hd1846518521_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e1846618517_)))
                                         (_tl1846418524_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e1846618517_))))
                                     (if (gx#stx-null? _tl1846418524_)
                                         (let ((__tmp48705
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _hd1846518521_
                                                        _def-setf1845718492_)))
                                               (__tmp48704
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _hd1846218511_
                                                        _def-getf1845818494_))))
                                           (declare (not safe))
                                           (_loop1845318485_
                                            _lp-tl1845618504_
                                            __tmp48705
                                            __tmp48704))
                                         (let ()
                                           (declare (not safe))
                                           (_g1844618472_ _g1844718476_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g1844618472_ _g1844718476_)))))
                         (let ()
                           (declare (not safe))
                           (_g1844618472_ _g1844718476_)))))
                 (let ((_def-setf1845918527_ (reverse _def-setf1845718492_))
                       (_def-getf1846018530_ (reverse _def-getf1845818494_)))
                   ((lambda (_L18533_ _L18535_)
                      (let ()
                        (let* ((_g1855218578_
                                (lambda (_g1855318574_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g1855318574_)))
                               (_g1855118692_
                                (lambda (_g1855318582_)
                                  (if (gx#stx-pair/null? _g1855318582_)
                                      (let ((_g48642_
                                             (gx#syntax-split-splice
                                              _g1855318582_
                                              '0)))
                                        (begin
                                          (let ((_g48643_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g48642_)
                                                       (##vector-length
                                                        _g48642_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g48643_ 2)))
                                                (error "Context expects 2 values"
                                                       _g48643_)))
                                          (let ((_target1855618585_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g48642_ 0)))
                                                (_tl1855818588_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g48642_ 1))))
                                            (if (gx#stx-null? _tl1855818588_)
                                                (letrec ((_loop1855918591_
                                                          (lambda (_hd1855718595_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _def-usetf1856318598_
                           _def-ugetf1856418600_)
                    (if (gx#stx-pair? _hd1855718595_)
                        (let ((_e1856018603_ (gx#syntax-e _hd1855718595_)))
                          (let ((_lp-hd1856118607_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1856018603_)))
                                (_lp-tl1856218610_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1856018603_))))
                            (if (gx#stx-pair? _lp-hd1856118607_)
                                (let ((_e1856918613_
                                       (gx#syntax-e _lp-hd1856118607_)))
                                  (let ((_hd1856818617_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1856918613_)))
                                        (_tl1856718620_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1856918613_))))
                                    (if (gx#stx-pair? _tl1856718620_)
                                        (let ((_e1857218623_
                                               (gx#syntax-e _tl1856718620_)))
                                          (let ((_hd1857118627_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1857218623_)))
                                                (_tl1857018630_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1857218623_))))
                                            (if (gx#stx-null? _tl1857018630_)
                                                (let ((__tmp48658
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd1857118627_
                                                               _def-usetf1856318598_)))
                                                      (__tmp48657
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd1856818617_
                                                               _def-ugetf1856418600_))))
                                                  (declare (not safe))
                                                  (_loop1855918591_
                                                   _lp-tl1856218610_
                                                   __tmp48658
                                                   __tmp48657))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g1855218578_
                                                   _g1855318582_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g1855218578_ _g1855318582_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g1855218578_ _g1855318582_)))))
                        (let ((_def-usetf1856518633_
                               (reverse _def-usetf1856318598_))
                              (_def-ugetf1856618636_
                               (reverse _def-ugetf1856418600_)))
                          ((lambda (_L18639_ _L18641_)
                             (let ()
                               (let ()
                                 (let ((__tmp48644
                                        (let ((__tmp48656
                                               (gx#datum->syntax '#f 'begin))
                                              (__tmp48645
                                               (let ((__tmp48646
                                                      (let ((__tmp48647
                                                             (let ((__tmp48648
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp48655
                                   (lambda (_g1865918668_ _g1866018671_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g1865918668_ _g1866018671_))))
                                  (__tmp48649
                                   (let ((__tmp48654
                                          (lambda (_g1866118674_ _g1866218677_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g1866118674_
                                                    _g1866218677_))))
                                         (__tmp48650
                                          (let ((__tmp48653
                                                 (lambda (_g1866318680_
                                                          _g1866418683_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g1866318680_
                                                           _g1866418683_))))
                                                (__tmp48651
                                                 (let ((__tmp48652
                                                        (lambda (_g1866518686_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1866618689_)
                  (let ()
                    (declare (not safe))
                    (cons _g1866518686_ _g1866618689_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 __tmp48652
                                                           '()
                                                           _L18639_))))
                                            (declare (not safe))
                                            (foldr1 __tmp48653
                                                    __tmp48651
                                                    _L18641_))))
                                     (declare (not safe))
                                     (foldr1 __tmp48654 __tmp48650 _L18533_))))
                              (declare (not safe))
                              (foldr1 __tmp48655 __tmp48649 _L18535_))))
                       (declare (not safe))
                       (cons _L18405_ __tmp48648))))
                (declare (not safe))
                (cons _L18433_ __tmp48647))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L18377_ __tmp48646))))
                                          (declare (not safe))
                                          (cons __tmp48656 __tmp48645))))
                                   (declare (not safe))
                                   (_wrap17800_ __tmp48644)))))
                           _def-usetf1856518633_
                           _def-ugetf1856618636_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop1855918591_
                                                     _target1855618585_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g1855218578_
                                                   _g1855318582_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1855218578_ _g1855318582_)))))
                               (__tmp48659
                                (gx#stx-map
                                 (lambda (_ref18696_)
                                   (let* ((_g1869918718_
                                           (lambda (_g1870018714_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g1870018714_)))
                                          (_g1869818840_
                                           (lambda (_g1870018722_)
                                             (if (gx#stx-pair? _g1870018722_)
                                                 (let ((_e1870618725_
                                                        (gx#syntax-e
                                                         _g1870018722_)))
                                                   (let ((_hd1870518729_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e1870618725_)))
                                                         (_tl1870418732_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e1870618725_))))
                                                     (if (gx#stx-pair?
                                                          _tl1870418732_)
                                                         (let ((_e1870918735_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1870418732_)))
                   (let ((_hd1870818739_
                          (let () (declare (not safe)) (##car _e1870918735_)))
                         (_tl1870718742_
                          (let () (declare (not safe)) (##cdr _e1870918735_))))
                     (if (gx#stx-pair? _tl1870718742_)
                         (let ((_e1871218745_ (gx#syntax-e _tl1870718742_)))
                           (let ((_hd1871118749_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e1871218745_)))
                                 (_tl1871018752_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e1871218745_))))
                             (if (gx#stx-null? _tl1871018752_)
                                 ((lambda (_L18755_ _L18757_ _L18758_)
                                    (let* ((_g1877618791_
                                            (lambda (_g1877718787_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _g1877718787_)))
                                           (_g1877518836_
                                            (lambda (_g1877718795_)
                                              (if (gx#stx-pair? _g1877718795_)
                                                  (let ((_e1878218798_
                                                         (gx#syntax-e
                                                          _g1877718795_)))
                                                    (let ((_hd1878118802_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1878218798_)))
                                                          (_tl1878018805_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1878218798_))))
                                                      (if (gx#stx-pair?
                                                           _tl1878018805_)
                                                          (let ((_e1878518808_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1878018805_)))
                    (let ((_hd1878418812_
                           (let () (declare (not safe)) (##car _e1878518808_)))
                          (_tl1878318815_
                           (let ()
                             (declare (not safe))
                             (##cdr _e1878518808_))))
                      (if (gx#stx-null? _tl1878318815_)
                          ((lambda (_L18818_ _L18820_)
                             (let ()
                               (let ((__tmp48682
                                      (let ((__tmp48683
                                             (let ((__tmp48702
                                                    (gx#datum->syntax
                                                     '#f
                                                     'def))
                                                   (__tmp48684
                                                    (let ((__tmp48685
                                                           (let ((__tmp48686
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp48701
                                 (gx#datum->syntax '#f 'begin-annotation))
                                (__tmp48687
                                 (let ((__tmp48696
                                        (let ((__tmp48700
                                               (gx#datum->syntax
                                                '#f
                                                '@mop.accessor))
                                              (__tmp48697
                                               (let ((__tmp48698
                                                      (let ((__tmp48699
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons '#f '()))))
                (declare (not safe))
                (cons _L18758_ __tmp48699))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L18125_ __tmp48698))))
                                          (declare (not safe))
                                          (cons __tmp48700 __tmp48697)))
                                       (__tmp48688
                                        (let ((__tmp48689
                                               (let ((__tmp48695
                                                      (gx#datum->syntax
                                                       '#f
                                                       'make-class-slot-unchecked-accessor))
                                                     (__tmp48690
                                                      (let ((__tmp48691
                                                             (let ((__tmp48692
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp48694 (gx#datum->syntax '#f 'quote))
                                  (__tmp48693
                                   (let ()
                                     (declare (not safe))
                                     (cons _L18758_ '()))))
                              (declare (not safe))
                              (cons __tmp48694 __tmp48693))))
                       (declare (not safe))
                       (cons __tmp48692 '()))))
                (declare (not safe))
                (cons _L17894_ __tmp48691))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp48695
                                                       __tmp48690))))
                                          (declare (not safe))
                                          (cons __tmp48689 '()))))
                                   (declare (not safe))
                                   (cons __tmp48696 __tmp48688))))
                            (declare (not safe))
                            (cons __tmp48701 __tmp48687))))
                     (declare (not safe))
                     (cons __tmp48686 '()))))
              (declare (not safe))
              (cons _L18820_ __tmp48685))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp48702 __tmp48684))))
                                        (declare (not safe))
                                        (_wrap17800_ __tmp48683)))
                                     (__tmp48660
                                      (let ((__tmp48661
                                             (let ((__tmp48662
                                                    (let ((__tmp48681
                                                           (gx#datum->syntax
                                                            '#f
                                                            'def))
                                                          (__tmp48663
                                                           (let ((__tmp48664
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp48665
                                 (let ((__tmp48680
                                        (gx#datum->syntax
                                         '#f
                                         'begin-annotation))
                                       (__tmp48666
                                        (let ((__tmp48675
                                               (let ((__tmp48679
                                                      (gx#datum->syntax
                                                       '#f
                                                       '@mop.mutator))
                                                     (__tmp48676
                                                      (let ((__tmp48677
                                                             (let ((__tmp48678
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _L18758_ __tmp48678))))
                (declare (not safe))
                (cons _L18125_ __tmp48677))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp48679 __tmp48676)))
                                              (__tmp48667
                                               (let ((__tmp48668
                                                      (let ((__tmp48674
                                                             (gx#datum->syntax
                                                              '#f
                                                              'make-class-slot-unchecked-mutator))
                                                            (__tmp48669
                                                             (let ((__tmp48670
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp48671
                                   (let ((__tmp48673
                                          (gx#datum->syntax '#f 'quote))
                                         (__tmp48672
                                          (let ()
                                            (declare (not safe))
                                            (cons _L18758_ '()))))
                                     (declare (not safe))
                                     (cons __tmp48673 __tmp48672))))
                              (declare (not safe))
                              (cons __tmp48671 '()))))
                       (declare (not safe))
                       (cons _L17894_ __tmp48670))))
                (declare (not safe))
                (cons __tmp48674 __tmp48669))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp48668 '()))))
                                          (declare (not safe))
                                          (cons __tmp48675 __tmp48667))))
                                   (declare (not safe))
                                   (cons __tmp48680 __tmp48666))))
                            (declare (not safe))
                            (cons __tmp48665 '()))))
                     (declare (not safe))
                     (cons _L18818_ __tmp48664))))
              (declare (not safe))
              (cons __tmp48681 __tmp48663))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_wrap17800_ __tmp48662))))
                                        (declare (not safe))
                                        (cons __tmp48661 '()))))
                                 (declare (not safe))
                                 (cons __tmp48682 __tmp48660))))
                           _hd1878418812_
                           _hd1878118802_)
                          (let ()
                            (declare (not safe))
                            (_g1877618791_ _g1877718795_)))))
                  (let ()
                    (declare (not safe))
                    (_g1877618791_ _g1877718795_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g1877618791_
                                                     _g1877718795_)))))
                                           (__tmp48703
                                            (list (gx#stx-identifier
                                                   _L18757_
                                                   '"&"
                                                   _L18757_)
                                                  (gx#stx-identifier
                                                   _L18755_
                                                   '"&"
                                                   _L18755_))))
                                      (declare (not safe))
                                      (_g1877518836_ __tmp48703)))
                                  _hd1871118749_
                                  _hd1870818739_
                                  _hd1870518729_)
                                 (let ()
                                   (declare (not safe))
                                   (_g1869918718_ _g1870018722_)))))
                         (let ()
                           (declare (not safe))
                           (_g1869918718_ _g1870018722_)))))
                 (let () (declare (not safe)) (_g1869918718_ _g1870018722_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g1869918718_
                                                    _g1870018722_))))))
                                     (declare (not safe))
                                     (_g1869818840_ _ref18696_)))
                                 _accessible-slots17949_)))
                          (declare (not safe))
                          (_g1855118692_ __tmp48659))))
                    _def-setf1845918527_
                    _def-getf1846018530_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_loop1845318485_
                                              _target1845018479_
                                              '()
                                              '())))
                                         (let ()
                                           (declare (not safe))
                                           (_g1844618472_ _g1844718476_))))))
                               (let ()
                                 (declare (not safe))
                                 (_g1844618472_ _g1844718476_)))))
                        (__tmp48706
                         (gx#stx-map
                          (lambda (_ref18848_)
                            (let* ((_g1885118870_
                                    (lambda (_g1885218866_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _g1885218866_)))
                                   (_g1885018928_
                                    (lambda (_g1885218874_)
                                      (if (gx#stx-pair? _g1885218874_)
                                          (let ((_e1885818877_
                                                 (gx#syntax-e _g1885218874_)))
                                            (let ((_hd1885718881_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1885818877_)))
                                                  (_tl1885618884_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1885818877_))))
                                              (if (gx#stx-pair? _tl1885618884_)
                                                  (let ((_e1886118887_
                                                         (gx#syntax-e
                                                          _tl1885618884_)))
                                                    (let ((_hd1886018891_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1886118887_)))
                                                          (_tl1885918894_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1886118887_))))
                                                      (if (gx#stx-pair?
                                                           _tl1885918894_)
                                                          (let ((_e1886418897_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1885918894_)))
                    (let ((_hd1886318901_
                           (let () (declare (not safe)) (##car _e1886418897_)))
                          (_tl1886218904_
                           (let ()
                             (declare (not safe))
                             (##cdr _e1886418897_))))
                      (if (gx#stx-null? _tl1886218904_)
                          ((lambda (_L18907_ _L18909_ _L18910_)
                             (let ((__tmp48729
                                    (let ((__tmp48730
                                           (let ((__tmp48749
                                                  (gx#datum->syntax '#f 'def))
                                                 (__tmp48731
                                                  (let ((__tmp48732
                                                         (let ((__tmp48733
                                                                (let ((__tmp48748
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'begin-annotation))
                              (__tmp48734
                               (let ((__tmp48743
                                      (let ((__tmp48747
                                             (gx#datum->syntax
                                              '#f
                                              '@mop.accessor))
                                            (__tmp48744
                                             (let ((__tmp48745
                                                    (let ((__tmp48746
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '#t '()))))
                                                      (declare (not safe))
                                                      (cons _L18910_
                                                            __tmp48746))))
                                               (declare (not safe))
                                               (cons _L18125_ __tmp48745))))
                                        (declare (not safe))
                                        (cons __tmp48747 __tmp48744)))
                                     (__tmp48735
                                      (let ((__tmp48736
                                             (let ((__tmp48742
                                                    (gx#datum->syntax
                                                     '#f
                                                     'make-class-slot-accessor))
                                                   (__tmp48737
                                                    (let ((__tmp48738
                                                           (let ((__tmp48739
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp48741 (gx#datum->syntax '#f 'quote))
                                (__tmp48740
                                 (let ()
                                   (declare (not safe))
                                   (cons _L18910_ '()))))
                            (declare (not safe))
                            (cons __tmp48741 __tmp48740))))
                     (declare (not safe))
                     (cons __tmp48739 '()))))
              (declare (not safe))
              (cons _L17894_ __tmp48738))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp48742 __tmp48737))))
                                        (declare (not safe))
                                        (cons __tmp48736 '()))))
                                 (declare (not safe))
                                 (cons __tmp48743 __tmp48735))))
                          (declare (not safe))
                          (cons __tmp48748 __tmp48734))))
                   (declare (not safe))
                   (cons __tmp48733 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L18909_
                                                          __tmp48732))))
                                             (declare (not safe))
                                             (cons __tmp48749 __tmp48731))))
                                      (declare (not safe))
                                      (_wrap17800_ __tmp48730)))
                                   (__tmp48707
                                    (let ((__tmp48708
                                           (let ((__tmp48709
                                                  (let ((__tmp48728
                                                         (gx#datum->syntax
                                                          '#f
                                                          'def))
                                                        (__tmp48710
                                                         (let ((__tmp48711
                                                                (let ((__tmp48712
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp48727
                                      (gx#datum->syntax '#f 'begin-annotation))
                                     (__tmp48713
                                      (let ((__tmp48722
                                             (let ((__tmp48726
                                                    (gx#datum->syntax
                                                     '#f
                                                     '@mop.mutator))
                                                   (__tmp48723
                                                    (let ((__tmp48724
                                                           (let ((__tmp48725
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons '#t '()))))
                     (declare (not safe))
                     (cons _L18910_ __tmp48725))))
              (declare (not safe))
              (cons _L18125_ __tmp48724))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp48726 __tmp48723)))
                                            (__tmp48714
                                             (let ((__tmp48715
                                                    (let ((__tmp48721
                                                           (gx#datum->syntax
                                                            '#f
                                                            'make-class-slot-mutator))
                                                          (__tmp48716
                                                           (let ((__tmp48717
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp48718
                                 (let ((__tmp48720
                                        (gx#datum->syntax '#f 'quote))
                                       (__tmp48719
                                        (let ()
                                          (declare (not safe))
                                          (cons _L18910_ '()))))
                                   (declare (not safe))
                                   (cons __tmp48720 __tmp48719))))
                            (declare (not safe))
                            (cons __tmp48718 '()))))
                     (declare (not safe))
                     (cons _L17894_ __tmp48717))))
              (declare (not safe))
              (cons __tmp48721 __tmp48716))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp48715 '()))))
                                        (declare (not safe))
                                        (cons __tmp48722 __tmp48714))))
                                 (declare (not safe))
                                 (cons __tmp48727 __tmp48713))))
                          (declare (not safe))
                          (cons __tmp48712 '()))))
                   (declare (not safe))
                   (cons _L18907_ __tmp48711))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp48728
                                                          __tmp48710))))
                                             (declare (not safe))
                                             (_wrap17800_ __tmp48709))))
                                      (declare (not safe))
                                      (cons __tmp48708 '()))))
                               (declare (not safe))
                               (cons __tmp48729 __tmp48707)))
                           _hd1886318901_
                           _hd1886018891_
                           _hd1885718881_)
                          (let ()
                            (declare (not safe))
                            (_g1885118870_ _g1885218874_)))))
                  (let ()
                    (declare (not safe))
                    (_g1885118870_ _g1885218874_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g1885118870_
                                                     _g1885218874_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g1885118870_ _g1885218874_))))))
                              (declare (not safe))
                              (_g1885018928_ _ref18848_)))
                          _accessible-slots17949_)))
                   (declare (not safe))
                   (_g1844518844_ __tmp48706))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1841918430_)))
                                                 (__tmp48750
                                                  (let ((__tmp48751
                                                         (let ((__tmp48764
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'def))
                       (__tmp48752
                        (let ((__tmp48753
                               (let ((__tmp48754
                                      (let ((__tmp48763
                                             (gx#datum->syntax
                                              '#f
                                              'begin-annotation))
                                            (__tmp48755
                                             (let ((__tmp48760
                                                    (let ((__tmp48762
                                                           (gx#datum->syntax
                                                            '#f
                                                            '@mop.predicate))
                                                          (__tmp48761
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L18125_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp48762 __tmp48761)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp48756
                                                    (let ((__tmp48757
                                                           (let ((__tmp48759
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'make-class-predicate))
                         (__tmp48758
                          (let () (declare (not safe)) (cons _L17894_ '()))))
                     (declare (not safe))
                     (cons __tmp48759 __tmp48758))))
              (declare (not safe))
              (cons __tmp48757 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp48760 __tmp48756))))
                                        (declare (not safe))
                                        (cons __tmp48763 __tmp48755))))
                                 (declare (not safe))
                                 (cons __tmp48754 '()))))
                          (declare (not safe))
                          (cons _L17891_ __tmp48753))))
                   (declare (not safe))
                   (cons __tmp48764 __tmp48752))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_wrap17800_ __tmp48751))))
                                            (declare (not safe))
                                            (_g1841718932_ __tmp48750))))
                                      _g1839118402_)))
                                  (__tmp48765
                                   (if (gx#stx-false? _L17892_)
                                       (let ((__tmp48789
                                              (gx#datum->syntax '#f 'begin)))
                                         (declare (not safe))
                                         (cons __tmp48789 '()))
                                       (let ((__tmp48766
                                              (let ((__tmp48788
                                                     (gx#datum->syntax
                                                      '#f
                                                      'def))
                                                    (__tmp48767
                                                     (let ((__tmp48768
                                                            (let ((__tmp48769
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp48787
                                  (gx#datum->syntax '#f 'begin-annotation))
                                 (__tmp48770
                                  (let ((__tmp48784
                                         (let ((__tmp48786
                                                (gx#datum->syntax
                                                 '#f
                                                 '@mop.constructor))
                                               (__tmp48785
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L18125_ '()))))
                                           (declare (not safe))
                                           (cons __tmp48786 __tmp48785)))
                                        (__tmp48771
                                         (let ((__tmp48772
                                                (let ((__tmp48783
                                                       (gx#datum->syntax
                                                        '#f
                                                        'lambda))
                                                      (__tmp48773
                                                       (let ((__tmp48782
                                                              (gx#datum->syntax
                                                               '#f
                                                               '$args))
                                                             (__tmp48774
                                                              (let ((__tmp48775
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp48781 (gx#datum->syntax '#f 'apply))
                                   (__tmp48776
                                    (let ((__tmp48780
                                           (gx#datum->syntax
                                            '#f
                                            'make-instance))
                                          (__tmp48777
                                           (let ((__tmp48778
                                                  (let ((__tmp48779
                                                         (gx#datum->syntax
                                                          '#f
                                                          '$args)))
                                                    (declare (not safe))
                                                    (cons __tmp48779 '()))))
                                             (declare (not safe))
                                             (cons _L17894_ __tmp48778))))
                                      (declare (not safe))
                                      (cons __tmp48780 __tmp48777))))
                               (declare (not safe))
                               (cons __tmp48781 __tmp48776))))
                        (declare (not safe))
                        (cons __tmp48775 '()))))
                 (declare (not safe))
                 (cons __tmp48782 __tmp48774))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp48783
                                                        __tmp48773))))
                                           (declare (not safe))
                                           (cons __tmp48772 '()))))
                                    (declare (not safe))
                                    (cons __tmp48784 __tmp48771))))
                             (declare (not safe))
                             (cons __tmp48787 __tmp48770))))
                      (declare (not safe))
                      (cons __tmp48769 '()))))
               (declare (not safe))
               (cons _L17892_ __tmp48768))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp48788 __tmp48767))))
                                         (declare (not safe))
                                         (_wrap17800_ __tmp48766)))))
                             (declare (not safe))
                             (_g1838918936_ __tmp48765))))
                       _g1836318374_)))
                   (__tmp48790
                    (let ((__tmp48791
                           (let ((__tmp48808 (gx#datum->syntax '#f 'def))
                                 (__tmp48792
                                  (let ((__tmp48793
                                         (let ((__tmp48794
                                                (let ((__tmp48807
                                                       (gx#datum->syntax
                                                        '#f
                                                        'begin-annotation))
                                                      (__tmp48795
                                                       (let ((__tmp48797
                                                              (let ((__tmp48806
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f '@mop.class))
                            (__tmp48798
                             (let ((__tmp48799
                                    (let ((__tmp48800
                                           (let ((__tmp48804
                                                  (let ((__tmp48805
                                                         (lambda (_g1894318946_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1894418949_)
                   (let ()
                     (declare (not safe))
                     (cons _g1894318946_ _g1894418949_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp48805
                                                            '()
                                                            _L18006_)))
                                                 (__tmp48801
                                                  (let ((__tmp48802
                                                         (let ((__tmp48803
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _L18209_ '()))))
                   (declare (not safe))
                   (cons _L18181_ __tmp48803))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L18097_
                                                          __tmp48802))))
                                             (declare (not safe))
                                             (cons __tmp48804 __tmp48801))))
                                      (declare (not safe))
                                      (cons _L18153_ __tmp48800))))
                               (declare (not safe))
                               (cons _L18041_ __tmp48799))))
                        (declare (not safe))
                        (cons __tmp48806 __tmp48798)))
                     (__tmp48796
                      (let () (declare (not safe)) (cons _L18349_ '()))))
                 (declare (not safe))
                 (cons __tmp48797 __tmp48796))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp48807
                                                        __tmp48795))))
                                           (declare (not safe))
                                           (cons __tmp48794 '()))))
                                    (declare (not safe))
                                    (cons _L17894_ __tmp48793))))
                             (declare (not safe))
                             (cons __tmp48808 __tmp48792))))
                      (declare (not safe))
                      (_wrap17800_ __tmp48791))))
              (declare (not safe))
              (_g1836118940_ __tmp48790))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1833518346_)))
                                            (__tmp48809
                                             (let ((__tmp48830
                                                    (gx#datum->syntax
                                                     '#f
                                                     'make-class-type))
                                                   (__tmp48810
                                                    (let ((__tmp48827
                                                           (let ((__tmp48829
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'quote))
                         (__tmp48828
                          (let () (declare (not safe)) (cons _L18041_ '()))))
                     (declare (not safe))
                     (cons __tmp48829 __tmp48828)))
                  (__tmp48811
                   (let ((__tmp48824
                          (let ((__tmp48826 (gx#datum->syntax '#f 'quote))
                                (__tmp48825
                                 (let ()
                                   (declare (not safe))
                                   (cons _L18069_ '()))))
                            (declare (not safe))
                            (cons __tmp48826 __tmp48825)))
                         (__tmp48812
                          (let ((__tmp48813
                                 (let ((__tmp48819
                                        (let ((__tmp48823
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp48820
                                               (let ((__tmp48821
                                                      (let ((__tmp48822
                                                             (lambda (_g1895518958_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1895618961_)
                       (let ()
                         (declare (not safe))
                         (cons _g1895518958_ _g1895618961_)))))
                (declare (not safe))
                (foldr1 __tmp48822 '() _L18006_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp48821 '()))))
                                          (declare (not safe))
                                          (cons __tmp48823 __tmp48820)))
                                       (__tmp48814
                                        (let ((__tmp48815
                                               (let ((__tmp48816
                                                      (let ((__tmp48818
                                                             (gx#datum->syntax
                                                              '#f
                                                              'quote))
                                                            (__tmp48817
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L18097_ '()))))
                (declare (not safe))
                (cons __tmp48818 __tmp48817))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp48816 '()))))
                                          (declare (not safe))
                                          (cons _L18293_ __tmp48815))))
                                   (declare (not safe))
                                   (cons __tmp48819 __tmp48814))))
                            (declare (not safe))
                            (cons _L18321_ __tmp48813))))
                     (declare (not safe))
                     (cons __tmp48824 __tmp48812))))
              (declare (not safe))
              (cons __tmp48827 __tmp48811))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp48830 __tmp48810))))
                                       (declare (not safe))
                                       (_g1833318952_ __tmp48809))))
                                 _g1830718318_)))
                             (__tmp48831
                              (let ((__tmp48832 (gx#datum->syntax '#f 'list)))
                                (declare (not safe))
                                (cons __tmp48832 _L17893_))))
                        (declare (not safe))
                        (_g1830518964_ __tmp48831))))
                  _g1827918290_)))
              (__tmp48833
               (if _struct?17932_
                   (let ((__tmp48840 (gx#datum->syntax '#f '@list))
                         (__tmp48834
                          (let ((__tmp48837
                                 (let ((__tmp48839
                                        (gx#datum->syntax '#f '@list))
                                       (__tmp48838
                                        (let ()
                                          (declare (not safe))
                                          (cons 'struct: '#t))))
                                   (declare (not safe))
                                   (cons __tmp48839 __tmp48838)))
                                (__tmp48835
                                 (let ((__tmp48836
                                        (let ()
                                          (declare (not safe))
                                          (cons _L18265_ '()))))
                                   (declare (not safe))
                                   (cons ':: __tmp48836))))
                            (declare (not safe))
                            (cons __tmp48837 __tmp48835))))
                     (declare (not safe))
                     (cons __tmp48840 __tmp48834))
                   _L18265_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g1827718968_ __tmp48833))))
                                           _g1825118262_)))
                                       (__tmp48841
                                        (if (gx#stx-e _L18209_)
                                            (let ((__tmp48848
                                                   (gx#datum->syntax
                                                    '#f
                                                    '@list))
                                                  (__tmp48842
                                                   (let ((__tmp48845
                                                          (let ((__tmp48847
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f '@list))
                        (__tmp48846
                         (let () (declare (not safe)) (cons 'final: '#t))))
                    (declare (not safe))
                    (cons __tmp48847 __tmp48846)))
                 (__tmp48843
                  (let ((__tmp48844
                         (let () (declare (not safe)) (cons _L18237_ '()))))
                    (declare (not safe))
                    (cons ':: __tmp48844))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp48845
                                                           __tmp48843))))
                                              (declare (not safe))
                                              (cons __tmp48848 __tmp48842))
                                            _L18237_)))
                                  (declare (not safe))
                                  (_g1824918972_ __tmp48841))))
                            _g1822318234_)))
                        (__tmp48849
                         (let ((_$e18980_ (gx#stx-getq 'properties: _L17889_)))
                           (if _$e18980_
                               _$e18980_
                               (let ((__tmp48850
                                      (gx#datum->syntax '#f '@list)))
                                 (declare (not safe))
                                 (cons __tmp48850 '()))))))
                   (declare (not safe))
                   (_g1822118976_ __tmp48849))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1819518206_)))
                                                 (__tmp48851
                                                  (gx#stx-getq
                                                   'final:
                                                   _L17889_)))
                                            (declare (not safe))
                                            (_g1819318984_ __tmp48851))))
                                      _g1816718178_))))
                             (declare (not safe))
                             (_g1816518988_ _struct?17932_))))
                       _g1813918150_)))
                   (__tmp48852 (gx#stx-map gx#core-quote-syntax _L17893_)))
              (declare (not safe))
              (_g1813718992_ __tmp48852))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1811118122_)))
                                            (__tmp48853
                                             (gx#core-quote-syntax _L17894_)))
                                       (declare (not safe))
                                       (_g1810918996_ __tmp48853))))
                                 _g1808318094_)))
                             (__tmp48854 (gx#stx-getq 'constructor: _L17889_)))
                        (declare (not safe))
                        (_g1808119000_ __tmp48854))))
                  _g1805518066_)))
              (__tmp48855
               (let ((_$e19008_ (gx#stx-getq 'name: _L17889_)))
                 (if _$e19008_ _$e19008_ _L17894_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g1805319004_ __tmp48855))))
                                           _g1802718038_)))
                                       (__tmp48856
                                        (let ((_$e19016_
                                               (gx#stx-getq 'id: _L17889_)))
                                          (if _$e19016_
                                              _$e19016_
                                              (let ()
                                                (declare (not safe))
                                                (|gerbil/core$<MOP>$<MOP:1>[1]#make-class-type-id|
                                                 _L17894_))))))
                                  (declare (not safe))
                                  (_g1802519012_ __tmp48856))))
                            _slot1796318002_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_loop1795817982_
                                                      _target1795517976_
                                                      '())))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g1795217969_
                                                    _g1795317973_))))))
                                       (let ()
                                         (declare (not safe))
                                         (_g1795217969_ _g1795317973_)))))
                                (__tmp48858
                                 (gx#stx-map _slot-name17802_ _slots17939_)))
                           (declare (not safe))
                           (_g1795119020_ __tmp48858))
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
          (_g1780419024_ _stx17796_)))))
  (define |gerbil/core$<MOP>$<MOP:1>[:0:]#defstruct-type|
    (lambda (_stx19136_)
      (let ()
        (declare (not safe))
        (|gerbil/core$<MOP>$<MOP:1>[1]#generate-typedef| _stx19136_ '#t))))
  (define |gerbil/core$<MOP>$<MOP:1>[:0:]#defclass-type|
    (lambda (_stx19139_)
      (let ()
        (declare (not safe))
        (|gerbil/core$<MOP>$<MOP:1>[1]#generate-typedef| _stx19139_ '#f)))))
