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
                                       (let ((_g48881_
                                              (gx#syntax-split-splice
                                               _g1795317973_
                                               '0)))
                                         (begin
                                           (let ((_g48882_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g48881_)
                                                        (##vector-length
                                                         _g48881_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g48882_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g48882_)))
                                           (let ((_target1795517976_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g48881_ 0)))
                                                 (_tl1795717979_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g48881_
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
                             (let ((__tmp49100
                                    (let ()
                                      (declare (not safe))
                                      (cons _lp-hd1796017996_
                                            _slot1796217989_))))
                               (declare (not safe))
                               (_loop1795817982_
                                _lp-tl1796117999_
                                __tmp49100))))
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
                               (let ((_g48883_
                                      (gx#syntax-split-splice
                                       _g1844718476_
                                       '0)))
                                 (begin
                                   (let ((_g48884_
                                          (let ()
                                            (declare (not safe))
                                            (if (##values? _g48883_)
                                                (##vector-length _g48883_)
                                                1))))
                                     (if (not (let ()
                                                (declare (not safe))
                                                (##fx= _g48884_ 2)))
                                         (error "Context expects 2 values"
                                                _g48884_)))
                                   (let ((_target1845018479_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g48883_ 0)))
                                         (_tl1845218482_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g48883_ 1))))
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
                                         (let ((__tmp48948
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _hd1846518521_
                                                        _def-setf1845718492_)))
                                               (__tmp48947
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _hd1846218511_
                                                        _def-getf1845818494_))))
                                           (declare (not safe))
                                           (_loop1845318485_
                                            _lp-tl1845618504_
                                            __tmp48948
                                            __tmp48947))
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
                                      (let ((_g48885_
                                             (gx#syntax-split-splice
                                              _g1855318582_
                                              '0)))
                                        (begin
                                          (let ((_g48886_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g48885_)
                                                       (##vector-length
                                                        _g48885_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g48886_ 2)))
                                                (error "Context expects 2 values"
                                                       _g48886_)))
                                          (let ((_target1855618585_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g48885_ 0)))
                                                (_tl1855818588_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g48885_ 1))))
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
                                                (let ((__tmp48901
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd1857118627_
                                                               _def-usetf1856318598_)))
                                                      (__tmp48900
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd1856818617_
                                                               _def-ugetf1856418600_))))
                                                  (declare (not safe))
                                                  (_loop1855918591_
                                                   _lp-tl1856218610_
                                                   __tmp48901
                                                   __tmp48900))
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
                                 (let ((__tmp48887
                                        (let ((__tmp48899
                                               (gx#datum->syntax '#f 'begin))
                                              (__tmp48888
                                               (let ((__tmp48889
                                                      (let ((__tmp48890
                                                             (let ((__tmp48891
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp48898
                                   (lambda (_g1865918668_ _g1866018671_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g1865918668_ _g1866018671_))))
                                  (__tmp48892
                                   (let ((__tmp48897
                                          (lambda (_g1866118674_ _g1866218677_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g1866118674_
                                                    _g1866218677_))))
                                         (__tmp48893
                                          (let ((__tmp48896
                                                 (lambda (_g1866318680_
                                                          _g1866418683_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g1866318680_
                                                           _g1866418683_))))
                                                (__tmp48894
                                                 (let ((__tmp48895
                                                        (lambda (_g1866518686_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1866618689_)
                  (let ()
                    (declare (not safe))
                    (cons _g1866518686_ _g1866618689_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 __tmp48895
                                                           '()
                                                           _L18639_))))
                                            (declare (not safe))
                                            (foldr1 __tmp48896
                                                    __tmp48894
                                                    _L18641_))))
                                     (declare (not safe))
                                     (foldr1 __tmp48897 __tmp48893 _L18533_))))
                              (declare (not safe))
                              (foldr1 __tmp48898 __tmp48892 _L18535_))))
                       (declare (not safe))
                       (cons _L18405_ __tmp48891))))
                (declare (not safe))
                (cons _L18433_ __tmp48890))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L18377_ __tmp48889))))
                                          (declare (not safe))
                                          (cons __tmp48899 __tmp48888))))
                                   (declare (not safe))
                                   (_wrap17800_ __tmp48887)))))
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
                               (__tmp48902
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
                               (let ((__tmp48925
                                      (let ((__tmp48926
                                             (let ((__tmp48945
                                                    (gx#datum->syntax
                                                     '#f
                                                     'def))
                                                   (__tmp48927
                                                    (let ((__tmp48928
                                                           (let ((__tmp48929
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp48944
                                 (gx#datum->syntax '#f 'begin-annotation))
                                (__tmp48930
                                 (let ((__tmp48939
                                        (let ((__tmp48943
                                               (gx#datum->syntax
                                                '#f
                                                '@mop.accessor))
                                              (__tmp48940
                                               (let ((__tmp48941
                                                      (let ((__tmp48942
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons '#f '()))))
                (declare (not safe))
                (cons _L18758_ __tmp48942))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L18125_ __tmp48941))))
                                          (declare (not safe))
                                          (cons __tmp48943 __tmp48940)))
                                       (__tmp48931
                                        (let ((__tmp48932
                                               (let ((__tmp48938
                                                      (gx#datum->syntax
                                                       '#f
                                                       'make-class-slot-unchecked-accessor))
                                                     (__tmp48933
                                                      (let ((__tmp48934
                                                             (let ((__tmp48935
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp48937 (gx#datum->syntax '#f 'quote))
                                  (__tmp48936
                                   (let ()
                                     (declare (not safe))
                                     (cons _L18758_ '()))))
                              (declare (not safe))
                              (cons __tmp48937 __tmp48936))))
                       (declare (not safe))
                       (cons __tmp48935 '()))))
                (declare (not safe))
                (cons _L17894_ __tmp48934))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp48938
                                                       __tmp48933))))
                                          (declare (not safe))
                                          (cons __tmp48932 '()))))
                                   (declare (not safe))
                                   (cons __tmp48939 __tmp48931))))
                            (declare (not safe))
                            (cons __tmp48944 __tmp48930))))
                     (declare (not safe))
                     (cons __tmp48929 '()))))
              (declare (not safe))
              (cons _L18820_ __tmp48928))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp48945 __tmp48927))))
                                        (declare (not safe))
                                        (_wrap17800_ __tmp48926)))
                                     (__tmp48903
                                      (let ((__tmp48904
                                             (let ((__tmp48905
                                                    (let ((__tmp48924
                                                           (gx#datum->syntax
                                                            '#f
                                                            'def))
                                                          (__tmp48906
                                                           (let ((__tmp48907
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp48908
                                 (let ((__tmp48923
                                        (gx#datum->syntax
                                         '#f
                                         'begin-annotation))
                                       (__tmp48909
                                        (let ((__tmp48918
                                               (let ((__tmp48922
                                                      (gx#datum->syntax
                                                       '#f
                                                       '@mop.mutator))
                                                     (__tmp48919
                                                      (let ((__tmp48920
                                                             (let ((__tmp48921
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _L18758_ __tmp48921))))
                (declare (not safe))
                (cons _L18125_ __tmp48920))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp48922 __tmp48919)))
                                              (__tmp48910
                                               (let ((__tmp48911
                                                      (let ((__tmp48917
                                                             (gx#datum->syntax
                                                              '#f
                                                              'make-class-slot-unchecked-mutator))
                                                            (__tmp48912
                                                             (let ((__tmp48913
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp48914
                                   (let ((__tmp48916
                                          (gx#datum->syntax '#f 'quote))
                                         (__tmp48915
                                          (let ()
                                            (declare (not safe))
                                            (cons _L18758_ '()))))
                                     (declare (not safe))
                                     (cons __tmp48916 __tmp48915))))
                              (declare (not safe))
                              (cons __tmp48914 '()))))
                       (declare (not safe))
                       (cons _L17894_ __tmp48913))))
                (declare (not safe))
                (cons __tmp48917 __tmp48912))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp48911 '()))))
                                          (declare (not safe))
                                          (cons __tmp48918 __tmp48910))))
                                   (declare (not safe))
                                   (cons __tmp48923 __tmp48909))))
                            (declare (not safe))
                            (cons __tmp48908 '()))))
                     (declare (not safe))
                     (cons _L18818_ __tmp48907))))
              (declare (not safe))
              (cons __tmp48924 __tmp48906))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_wrap17800_ __tmp48905))))
                                        (declare (not safe))
                                        (cons __tmp48904 '()))))
                                 (declare (not safe))
                                 (cons __tmp48925 __tmp48903))))
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
                                           (__tmp48946
                                            (list (gx#stx-identifier
                                                   _L18757_
                                                   '"&"
                                                   _L18757_)
                                                  (gx#stx-identifier
                                                   _L18755_
                                                   '"&"
                                                   _L18755_))))
                                      (declare (not safe))
                                      (_g1877518836_ __tmp48946)))
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
                          (_g1855118692_ __tmp48902))))
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
                        (__tmp48949
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
                             (let ((__tmp48972
                                    (let ((__tmp48973
                                           (let ((__tmp48992
                                                  (gx#datum->syntax '#f 'def))
                                                 (__tmp48974
                                                  (let ((__tmp48975
                                                         (let ((__tmp48976
                                                                (let ((__tmp48991
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'begin-annotation))
                              (__tmp48977
                               (let ((__tmp48986
                                      (let ((__tmp48990
                                             (gx#datum->syntax
                                              '#f
                                              '@mop.accessor))
                                            (__tmp48987
                                             (let ((__tmp48988
                                                    (let ((__tmp48989
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '#t '()))))
                                                      (declare (not safe))
                                                      (cons _L18910_
                                                            __tmp48989))))
                                               (declare (not safe))
                                               (cons _L18125_ __tmp48988))))
                                        (declare (not safe))
                                        (cons __tmp48990 __tmp48987)))
                                     (__tmp48978
                                      (let ((__tmp48979
                                             (let ((__tmp48985
                                                    (gx#datum->syntax
                                                     '#f
                                                     'make-class-slot-accessor))
                                                   (__tmp48980
                                                    (let ((__tmp48981
                                                           (let ((__tmp48982
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp48984 (gx#datum->syntax '#f 'quote))
                                (__tmp48983
                                 (let ()
                                   (declare (not safe))
                                   (cons _L18910_ '()))))
                            (declare (not safe))
                            (cons __tmp48984 __tmp48983))))
                     (declare (not safe))
                     (cons __tmp48982 '()))))
              (declare (not safe))
              (cons _L17894_ __tmp48981))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp48985 __tmp48980))))
                                        (declare (not safe))
                                        (cons __tmp48979 '()))))
                                 (declare (not safe))
                                 (cons __tmp48986 __tmp48978))))
                          (declare (not safe))
                          (cons __tmp48991 __tmp48977))))
                   (declare (not safe))
                   (cons __tmp48976 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L18909_
                                                          __tmp48975))))
                                             (declare (not safe))
                                             (cons __tmp48992 __tmp48974))))
                                      (declare (not safe))
                                      (_wrap17800_ __tmp48973)))
                                   (__tmp48950
                                    (let ((__tmp48951
                                           (let ((__tmp48952
                                                  (let ((__tmp48971
                                                         (gx#datum->syntax
                                                          '#f
                                                          'def))
                                                        (__tmp48953
                                                         (let ((__tmp48954
                                                                (let ((__tmp48955
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp48970
                                      (gx#datum->syntax '#f 'begin-annotation))
                                     (__tmp48956
                                      (let ((__tmp48965
                                             (let ((__tmp48969
                                                    (gx#datum->syntax
                                                     '#f
                                                     '@mop.mutator))
                                                   (__tmp48966
                                                    (let ((__tmp48967
                                                           (let ((__tmp48968
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons '#t '()))))
                     (declare (not safe))
                     (cons _L18910_ __tmp48968))))
              (declare (not safe))
              (cons _L18125_ __tmp48967))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp48969 __tmp48966)))
                                            (__tmp48957
                                             (let ((__tmp48958
                                                    (let ((__tmp48964
                                                           (gx#datum->syntax
                                                            '#f
                                                            'make-class-slot-mutator))
                                                          (__tmp48959
                                                           (let ((__tmp48960
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp48961
                                 (let ((__tmp48963
                                        (gx#datum->syntax '#f 'quote))
                                       (__tmp48962
                                        (let ()
                                          (declare (not safe))
                                          (cons _L18910_ '()))))
                                   (declare (not safe))
                                   (cons __tmp48963 __tmp48962))))
                            (declare (not safe))
                            (cons __tmp48961 '()))))
                     (declare (not safe))
                     (cons _L17894_ __tmp48960))))
              (declare (not safe))
              (cons __tmp48964 __tmp48959))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp48958 '()))))
                                        (declare (not safe))
                                        (cons __tmp48965 __tmp48957))))
                                 (declare (not safe))
                                 (cons __tmp48970 __tmp48956))))
                          (declare (not safe))
                          (cons __tmp48955 '()))))
                   (declare (not safe))
                   (cons _L18907_ __tmp48954))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp48971
                                                          __tmp48953))))
                                             (declare (not safe))
                                             (_wrap17800_ __tmp48952))))
                                      (declare (not safe))
                                      (cons __tmp48951 '()))))
                               (declare (not safe))
                               (cons __tmp48972 __tmp48950)))
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
                   (_g1844518844_ __tmp48949))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1841918430_)))
                                                 (__tmp48993
                                                  (let ((__tmp48994
                                                         (let ((__tmp49007
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'def))
                       (__tmp48995
                        (let ((__tmp48996
                               (let ((__tmp48997
                                      (let ((__tmp49006
                                             (gx#datum->syntax
                                              '#f
                                              'begin-annotation))
                                            (__tmp48998
                                             (let ((__tmp49003
                                                    (let ((__tmp49005
                                                           (gx#datum->syntax
                                                            '#f
                                                            '@mop.predicate))
                                                          (__tmp49004
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L18125_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp49005 __tmp49004)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp48999
                                                    (let ((__tmp49000
                                                           (let ((__tmp49002
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'make-class-predicate))
                         (__tmp49001
                          (let () (declare (not safe)) (cons _L17894_ '()))))
                     (declare (not safe))
                     (cons __tmp49002 __tmp49001))))
              (declare (not safe))
              (cons __tmp49000 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp49003 __tmp48999))))
                                        (declare (not safe))
                                        (cons __tmp49006 __tmp48998))))
                                 (declare (not safe))
                                 (cons __tmp48997 '()))))
                          (declare (not safe))
                          (cons _L17891_ __tmp48996))))
                   (declare (not safe))
                   (cons __tmp49007 __tmp48995))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_wrap17800_ __tmp48994))))
                                            (declare (not safe))
                                            (_g1841718932_ __tmp48993))))
                                      _g1839118402_)))
                                  (__tmp49008
                                   (if (gx#stx-false? _L17892_)
                                       (let ((__tmp49032
                                              (gx#datum->syntax '#f 'begin)))
                                         (declare (not safe))
                                         (cons __tmp49032 '()))
                                       (let ((__tmp49009
                                              (let ((__tmp49031
                                                     (gx#datum->syntax
                                                      '#f
                                                      'def))
                                                    (__tmp49010
                                                     (let ((__tmp49011
                                                            (let ((__tmp49012
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp49030
                                  (gx#datum->syntax '#f 'begin-annotation))
                                 (__tmp49013
                                  (let ((__tmp49027
                                         (let ((__tmp49029
                                                (gx#datum->syntax
                                                 '#f
                                                 '@mop.constructor))
                                               (__tmp49028
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L18125_ '()))))
                                           (declare (not safe))
                                           (cons __tmp49029 __tmp49028)))
                                        (__tmp49014
                                         (let ((__tmp49015
                                                (let ((__tmp49026
                                                       (gx#datum->syntax
                                                        '#f
                                                        'lambda))
                                                      (__tmp49016
                                                       (let ((__tmp49025
                                                              (gx#datum->syntax
                                                               '#f
                                                               '$args))
                                                             (__tmp49017
                                                              (let ((__tmp49018
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp49024 (gx#datum->syntax '#f 'apply))
                                   (__tmp49019
                                    (let ((__tmp49023
                                           (gx#datum->syntax
                                            '#f
                                            'make-instance))
                                          (__tmp49020
                                           (let ((__tmp49021
                                                  (let ((__tmp49022
                                                         (gx#datum->syntax
                                                          '#f
                                                          '$args)))
                                                    (declare (not safe))
                                                    (cons __tmp49022 '()))))
                                             (declare (not safe))
                                             (cons _L17894_ __tmp49021))))
                                      (declare (not safe))
                                      (cons __tmp49023 __tmp49020))))
                               (declare (not safe))
                               (cons __tmp49024 __tmp49019))))
                        (declare (not safe))
                        (cons __tmp49018 '()))))
                 (declare (not safe))
                 (cons __tmp49025 __tmp49017))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp49026
                                                        __tmp49016))))
                                           (declare (not safe))
                                           (cons __tmp49015 '()))))
                                    (declare (not safe))
                                    (cons __tmp49027 __tmp49014))))
                             (declare (not safe))
                             (cons __tmp49030 __tmp49013))))
                      (declare (not safe))
                      (cons __tmp49012 '()))))
               (declare (not safe))
               (cons _L17892_ __tmp49011))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp49031 __tmp49010))))
                                         (declare (not safe))
                                         (_wrap17800_ __tmp49009)))))
                             (declare (not safe))
                             (_g1838918936_ __tmp49008))))
                       _g1836318374_)))
                   (__tmp49033
                    (let ((__tmp49034
                           (let ((__tmp49051 (gx#datum->syntax '#f 'def))
                                 (__tmp49035
                                  (let ((__tmp49036
                                         (let ((__tmp49037
                                                (let ((__tmp49050
                                                       (gx#datum->syntax
                                                        '#f
                                                        'begin-annotation))
                                                      (__tmp49038
                                                       (let ((__tmp49040
                                                              (let ((__tmp49049
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f '@mop.class))
                            (__tmp49041
                             (let ((__tmp49042
                                    (let ((__tmp49043
                                           (let ((__tmp49047
                                                  (let ((__tmp49048
                                                         (lambda (_g1894318946_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1894418949_)
                   (let ()
                     (declare (not safe))
                     (cons _g1894318946_ _g1894418949_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp49048
                                                            '()
                                                            _L18006_)))
                                                 (__tmp49044
                                                  (let ((__tmp49045
                                                         (let ((__tmp49046
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _L18209_ '()))))
                   (declare (not safe))
                   (cons _L18181_ __tmp49046))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L18097_
                                                          __tmp49045))))
                                             (declare (not safe))
                                             (cons __tmp49047 __tmp49044))))
                                      (declare (not safe))
                                      (cons _L18153_ __tmp49043))))
                               (declare (not safe))
                               (cons _L18041_ __tmp49042))))
                        (declare (not safe))
                        (cons __tmp49049 __tmp49041)))
                     (__tmp49039
                      (let () (declare (not safe)) (cons _L18349_ '()))))
                 (declare (not safe))
                 (cons __tmp49040 __tmp49039))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp49050
                                                        __tmp49038))))
                                           (declare (not safe))
                                           (cons __tmp49037 '()))))
                                    (declare (not safe))
                                    (cons _L17894_ __tmp49036))))
                             (declare (not safe))
                             (cons __tmp49051 __tmp49035))))
                      (declare (not safe))
                      (_wrap17800_ __tmp49034))))
              (declare (not safe))
              (_g1836118940_ __tmp49033))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1833518346_)))
                                            (__tmp49052
                                             (let ((__tmp49073
                                                    (gx#datum->syntax
                                                     '#f
                                                     'make-class-type))
                                                   (__tmp49053
                                                    (let ((__tmp49070
                                                           (let ((__tmp49072
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'quote))
                         (__tmp49071
                          (let () (declare (not safe)) (cons _L18041_ '()))))
                     (declare (not safe))
                     (cons __tmp49072 __tmp49071)))
                  (__tmp49054
                   (let ((__tmp49067
                          (let ((__tmp49069 (gx#datum->syntax '#f 'quote))
                                (__tmp49068
                                 (let ()
                                   (declare (not safe))
                                   (cons _L18069_ '()))))
                            (declare (not safe))
                            (cons __tmp49069 __tmp49068)))
                         (__tmp49055
                          (let ((__tmp49056
                                 (let ((__tmp49062
                                        (let ((__tmp49066
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp49063
                                               (let ((__tmp49064
                                                      (let ((__tmp49065
                                                             (lambda (_g1895518958_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1895618961_)
                       (let ()
                         (declare (not safe))
                         (cons _g1895518958_ _g1895618961_)))))
                (declare (not safe))
                (foldr1 __tmp49065 '() _L18006_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp49064 '()))))
                                          (declare (not safe))
                                          (cons __tmp49066 __tmp49063)))
                                       (__tmp49057
                                        (let ((__tmp49058
                                               (let ((__tmp49059
                                                      (let ((__tmp49061
                                                             (gx#datum->syntax
                                                              '#f
                                                              'quote))
                                                            (__tmp49060
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L18097_ '()))))
                (declare (not safe))
                (cons __tmp49061 __tmp49060))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp49059 '()))))
                                          (declare (not safe))
                                          (cons _L18293_ __tmp49058))))
                                   (declare (not safe))
                                   (cons __tmp49062 __tmp49057))))
                            (declare (not safe))
                            (cons _L18321_ __tmp49056))))
                     (declare (not safe))
                     (cons __tmp49067 __tmp49055))))
              (declare (not safe))
              (cons __tmp49070 __tmp49054))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp49073 __tmp49053))))
                                       (declare (not safe))
                                       (_g1833318952_ __tmp49052))))
                                 _g1830718318_)))
                             (__tmp49074
                              (let ((__tmp49075 (gx#datum->syntax '#f 'list)))
                                (declare (not safe))
                                (cons __tmp49075 _L17893_))))
                        (declare (not safe))
                        (_g1830518964_ __tmp49074))))
                  _g1827918290_)))
              (__tmp49076
               (if _struct?17932_
                   (let ((__tmp49083 (gx#datum->syntax '#f '@list))
                         (__tmp49077
                          (let ((__tmp49080
                                 (let ((__tmp49082
                                        (gx#datum->syntax '#f '@list))
                                       (__tmp49081
                                        (let ()
                                          (declare (not safe))
                                          (cons 'struct: '#t))))
                                   (declare (not safe))
                                   (cons __tmp49082 __tmp49081)))
                                (__tmp49078
                                 (let ((__tmp49079
                                        (let ()
                                          (declare (not safe))
                                          (cons _L18265_ '()))))
                                   (declare (not safe))
                                   (cons ':: __tmp49079))))
                            (declare (not safe))
                            (cons __tmp49080 __tmp49078))))
                     (declare (not safe))
                     (cons __tmp49083 __tmp49077))
                   _L18265_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g1827718968_ __tmp49076))))
                                           _g1825118262_)))
                                       (__tmp49084
                                        (if (gx#stx-e _L18209_)
                                            (let ((__tmp49091
                                                   (gx#datum->syntax
                                                    '#f
                                                    '@list))
                                                  (__tmp49085
                                                   (let ((__tmp49088
                                                          (let ((__tmp49090
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f '@list))
                        (__tmp49089
                         (let () (declare (not safe)) (cons 'final: '#t))))
                    (declare (not safe))
                    (cons __tmp49090 __tmp49089)))
                 (__tmp49086
                  (let ((__tmp49087
                         (let () (declare (not safe)) (cons _L18237_ '()))))
                    (declare (not safe))
                    (cons ':: __tmp49087))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp49088
                                                           __tmp49086))))
                                              (declare (not safe))
                                              (cons __tmp49091 __tmp49085))
                                            _L18237_)))
                                  (declare (not safe))
                                  (_g1824918972_ __tmp49084))))
                            _g1822318234_)))
                        (__tmp49092
                         (let ((_$e18980_ (gx#stx-getq 'properties: _L17889_)))
                           (if _$e18980_
                               _$e18980_
                               (let ((__tmp49093
                                      (gx#datum->syntax '#f '@list)))
                                 (declare (not safe))
                                 (cons __tmp49093 '()))))))
                   (declare (not safe))
                   (_g1822118976_ __tmp49092))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1819518206_)))
                                                 (__tmp49094
                                                  (gx#stx-getq
                                                   'final:
                                                   _L17889_)))
                                            (declare (not safe))
                                            (_g1819318984_ __tmp49094))))
                                      _g1816718178_))))
                             (declare (not safe))
                             (_g1816518988_ _struct?17932_))))
                       _g1813918150_)))
                   (__tmp49095 (gx#stx-map gx#core-quote-syntax _L17893_)))
              (declare (not safe))
              (_g1813718992_ __tmp49095))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1811118122_)))
                                            (__tmp49096
                                             (gx#core-quote-syntax _L17894_)))
                                       (declare (not safe))
                                       (_g1810918996_ __tmp49096))))
                                 _g1808318094_)))
                             (__tmp49097 (gx#stx-getq 'constructor: _L17889_)))
                        (declare (not safe))
                        (_g1808119000_ __tmp49097))))
                  _g1805518066_)))
              (__tmp49098
               (let ((_$e19008_ (gx#stx-getq 'name: _L17889_)))
                 (if _$e19008_ _$e19008_ _L17894_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g1805319004_ __tmp49098))))
                                           _g1802718038_)))
                                       (__tmp49099
                                        (let ((_$e19016_
                                               (gx#stx-getq 'id: _L17889_)))
                                          (if _$e19016_
                                              _$e19016_
                                              (let ()
                                                (declare (not safe))
                                                (|gerbil/core$<MOP>$<MOP:1>[1]#make-class-type-id|
                                                 _L17894_))))))
                                  (declare (not safe))
                                  (_g1802519012_ __tmp49099))))
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
                                (__tmp49101
                                 (gx#stx-map _slot-name17802_ _slots17939_)))
                           (declare (not safe))
                           (_g1795119020_ __tmp49101))
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
