(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<MOP>$<MOP:1>[1]#module-type-id|
    (lambda (_type-t19216_)
      (let ((_$e19219_ (gx#module-context-ns (gx#current-expander-context))))
        (if _$e19219_
            ((lambda (_ns19223_)
               (gx#stx-identifier
                _type-t19216_
                _ns19223_
                '"#"
                _type-t19216_
                '"::t"))
             _$e19219_)
            (let ((_mid19226_
                   (gx#expander-context-id (gx#current-expander-context))))
              (gx#stx-identifier
               _type-t19216_
               _mid19226_
               '"#"
               _type-t19216_
               '"::t"))))))
  (define |gerbil/core$<MOP>$<MOP:1>[1]#make-class-type-id|
    (lambda (_type-t19213_)
      (if (gx#module-context? (gx#current-expander-context))
          (let ()
            (declare (not safe))
            (|gerbil/core$<MOP>$<MOP:1>[1]#module-type-id| _type-t19213_))
          (make-symbol '"__" (gensym (gx#stx-e _type-t19213_)) '"::t"))))
  (define |gerbil/core$<MOP>$<MOP:1>[1]#generate-typedef|
    (lambda (_stx17796_ _struct?17798_)
      (letrec ((_wrap17800_
                (lambda (_e-stx19210_)
                  (gx#stx-wrap-source
                   _e-stx19210_
                   (gx#stx-source _stx17796_))))
               (_slot-name17802_
                (lambda (_slot-spec19127_)
                  (let* ((_g1913019149_
                          (lambda (_g1913119145_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g1913119145_)))
                         (_g1912919206_
                          (lambda (_g1913119153_)
                            (if (gx#stx-pair? _g1913119153_)
                                (let ((_e1913719156_
                                       (gx#syntax-e _g1913119153_)))
                                  (let ((_hd1913619160_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1913719156_)))
                                        (_tl1913519163_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1913719156_))))
                                    (if (gx#stx-pair? _tl1913519163_)
                                        (let ((_e1914019166_
                                               (gx#syntax-e _tl1913519163_)))
                                          (let ((_hd1913919170_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1914019166_)))
                                                (_tl1913819173_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1914019166_))))
                                            (if (gx#stx-pair? _tl1913819173_)
                                                (let ((_e1914319176_
                                                       (gx#syntax-e
                                                        _tl1913819173_)))
                                                  (let ((_hd1914219180_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1914319176_)))
                                                        (_tl1914119183_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1914319176_))))
                                                    (if (gx#stx-null?
                                                         _tl1914119183_)
                                                        ((lambda (_L19186_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L19188_
                          _L19189_)
                   _L19189_)
                 _hd1914219180_
                 _hd1913919170_
                 _hd1913619160_)
                (let () (declare (not safe)) (_g1913019149_ _g1913119153_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g1913019149_
                                                   _g1913119153_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g1913019149_ _g1913119153_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g1913019149_ _g1913119153_))))))
                    (declare (not safe))
                    (_g1912919206_ _slot-spec19127_))))
               (_class-opt?17803_
                (lambda (_key19124_)
                  (memq (gx#stx-e _key19124_)
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
               (_g1780419120_
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
                         (let* ((_slots17928_
                                 (let ((_$e17924_
                                        (gx#stx-getq 'slots: _L17889_)))
                                   (if _$e17924_ _$e17924_ '())))
                                (_mixin-slots17935_
                                 (let ((_$e17931_
                                        (gx#stx-getq 'mixin: _L17889_)))
                                   (if _$e17931_ _$e17931_ '())))
                                (_accessible-slots17938_
                                 (append (gx#syntax->list _slots17928_)
                                         (gx#syntax->list _mixin-slots17935_)))
                                (_g1794117958_
                                 (lambda (_g1794217954_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _g1794217954_)))
                                (_g1794019116_
                                 (lambda (_g1794217962_)
                                   (if (gx#stx-pair/null? _g1794217962_)
                                       (let ((_g48974_
                                              (gx#syntax-split-splice
                                               _g1794217962_
                                               '0)))
                                         (begin
                                           (let ((_g48975_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g48974_)
                                                        (##vector-length
                                                         _g48974_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g48975_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g48975_)))
                                           (let ((_target1794417965_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g48974_ 0)))
                                                 (_tl1794617968_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g48974_
                                                     1))))
                                             (if (gx#stx-null? _tl1794617968_)
                                                 (letrec ((_loop1794717971_
                                                           (lambda (_hd1794517975_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _slot1795117978_)
                     (if (gx#stx-pair? _hd1794517975_)
                         (let ((_e1794817981_ (gx#syntax-e _hd1794517975_)))
                           (let ((_lp-hd1794917985_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e1794817981_)))
                                 (_lp-tl1795017988_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e1794817981_))))
                             (let ((__tmp49193
                                    (let ()
                                      (declare (not safe))
                                      (cons _lp-hd1794917985_
                                            _slot1795117978_))))
                               (declare (not safe))
                               (_loop1794717971_
                                _lp-tl1795017988_
                                __tmp49193))))
                         (let ((_slot1795217991_ (reverse _slot1795117978_)))
                           ((lambda (_L17995_)
                              (let ()
                                (let* ((_properties-struct?18014_
                                        (if (gx#stx-getq 'struct: _L17889_)
                                            '#t
                                            '#f))
                                       (_type-struct?18021_
                                        (let ((_$e18017_ _struct?17798_))
                                          (if _$e18017_
                                              _$e18017_
                                              _properties-struct?18014_)))
                                       (_g1802418032_
                                        (lambda (_g1802518028_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g1802518028_)))
                                       (_g1802319112_
                                        (lambda (_g1802518036_)
                                          ((lambda (_L18039_)
                                             (let ()
                                               (let* ((_g1805418062_
                                                       (lambda (_g1805518058_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g1805518058_)))
                                                      (_g1805319108_
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
                             (_g1808119104_
                              (lambda (_g1808318094_)
                                ((lambda (_L18097_)
                                   (let ()
                                     (let* ((_g1811018118_
                                             (lambda (_g1811118114_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g1811118114_)))
                                            (_g1810919096_
                                             (lambda (_g1811118122_)
                                               ((lambda (_L18125_)
                                                  (let ()
                                                    (let* ((_g1813818146_
                                                            (lambda (_g1813918142_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g1813918142_)))
                                                           (_g1813719088_
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
                                  (_g1816519084_
                                   (lambda (_g1816718178_)
                                     ((lambda (_L18181_)
                                        (let ()
                                          (let* ((_g1819418202_
                                                  (lambda (_g1819518198_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g1819518198_)))
                                                 (_g1819319080_
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
                        (_g1822119076_
                         (lambda (_g1822318234_)
                           ((lambda (_L18237_)
                              (let ()
                                (let* ((_g1825018258_
                                        (lambda (_g1825118254_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g1825118254_)))
                                       (_g1824919072_
                                        (lambda (_g1825118262_)
                                          ((lambda (_L18265_)
                                             (let ()
                                               (let* ((_g1827818286_
                                                       (lambda (_g1827918282_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g1827918282_)))
                                                      (_g1827719068_
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
                             (_g1830519060_
                              (lambda (_g1830718318_)
                                ((lambda (_L18321_)
                                   (let ()
                                     (let* ((_g1833418342_
                                             (lambda (_g1833518338_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g1833518338_)))
                                            (_g1833319056_
                                             (lambda (_g1833518346_)
                                               ((lambda (_L18349_)
                                                  (let ()
                                                    (let* ((_g1836218370_
                                                            (lambda (_g1836318366_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g1836318366_)))
                                                           (_g1836119052_
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
                                  (_g1838919048_
                                   (lambda (_g1839118402_)
                                     ((lambda (_L18405_)
                                        (let ()
                                          (let* ((_g1841818426_
                                                  (lambda (_g1841918422_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g1841918422_)))
                                                 (_g1841719036_
                                                  (lambda (_g1841918430_)
                                                    ((lambda (_L18433_)
                                                       (let ()
                                                         (let* ((_g1844618454_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1844718450_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g1844718450_)))
                        (_g1844519024_
                         (lambda (_g1844718458_)
                           ((lambda (_L18461_)
                              (let ()
                                (let* ((_g1847418482_
                                        (lambda (_g1847518478_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g1847518478_)))
                                       (_g1847319020_
                                        (lambda (_g1847518486_)
                                          ((lambda (_L18489_)
                                             (let ()
                                               (let* ((_g1850218510_
                                                       (lambda (_g1850318506_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g1850318506_)))
                                                      (_g1850119016_
                                                       (lambda (_g1850318514_)
                                                         ((lambda (_L18517_)
                                                            (let ()
                                                              (let* ((_g1853018556_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g1853118552_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g1853118552_)))
                             (_g1852918928_
                              (lambda (_g1853118560_)
                                (if (gx#stx-pair/null? _g1853118560_)
                                    (let ((_g48976_
                                           (gx#syntax-split-splice
                                            _g1853118560_
                                            '0)))
                                      (begin
                                        (let ((_g48977_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g48976_)
                                                     (##vector-length _g48976_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g48977_ 2)))
                                              (error "Context expects 2 values"
                                                     _g48977_)))
                                        (let ((_target1853418563_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g48976_ 0)))
                                              (_tl1853618566_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g48976_ 1))))
                                          (if (gx#stx-null? _tl1853618566_)
                                              (letrec ((_loop1853718569_
                                                        (lambda (_hd1853518573_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _def-setf1854118576_
                         _def-getf1854218578_)
                  (if (gx#stx-pair? _hd1853518573_)
                      (let ((_e1853818581_ (gx#syntax-e _hd1853518573_)))
                        (let ((_lp-hd1853918585_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1853818581_)))
                              (_lp-tl1854018588_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1853818581_))))
                          (if (gx#stx-pair? _lp-hd1853918585_)
                              (let ((_e1854718591_
                                     (gx#syntax-e _lp-hd1853918585_)))
                                (let ((_hd1854618595_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1854718591_)))
                                      (_tl1854518598_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1854718591_))))
                                  (if (gx#stx-pair? _tl1854518598_)
                                      (let ((_e1855018601_
                                             (gx#syntax-e _tl1854518598_)))
                                        (let ((_hd1854918605_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1855018601_)))
                                              (_tl1854818608_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1855018601_))))
                                          (if (gx#stx-null? _tl1854818608_)
                                              (let ((__tmp49041
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd1854918605_
                                                             _def-setf1854118576_)))
                                                    (__tmp49040
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd1854618595_
                                                             _def-getf1854218578_))))
                                                (declare (not safe))
                                                (_loop1853718569_
                                                 _lp-tl1854018588_
                                                 __tmp49041
                                                 __tmp49040))
                                              (let ()
                                                (declare (not safe))
                                                (_g1853018556_
                                                 _g1853118560_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1853018556_ _g1853118560_)))))
                              (let ()
                                (declare (not safe))
                                (_g1853018556_ _g1853118560_)))))
                      (let ((_def-setf1854318611_
                             (reverse _def-setf1854118576_))
                            (_def-getf1854418614_
                             (reverse _def-getf1854218578_)))
                        ((lambda (_L18617_ _L18619_)
                           (let ()
                             (let* ((_g1863618662_
                                     (lambda (_g1863718658_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g1863718658_)))
                                    (_g1863518776_
                                     (lambda (_g1863718666_)
                                       (if (gx#stx-pair/null? _g1863718666_)
                                           (let ((_g48978_
                                                  (gx#syntax-split-splice
                                                   _g1863718666_
                                                   '0)))
                                             (begin
                                               (let ((_g48979_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g48978_)
                                                            (##vector-length
                                                             _g48978_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g48979_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g48979_)))
                                               (let ((_target1864018669_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g48978_
                                                         0)))
                                                     (_tl1864218672_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _g48978_
                                                         1))))
                                                 (if (gx#stx-null?
                                                      _tl1864218672_)
                                                     (letrec ((_loop1864318675_
                                                               (lambda (_hd1864118679_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _def-usetf1864718682_
                                _def-ugetf1864818684_)
                         (if (gx#stx-pair? _hd1864118679_)
                             (let ((_e1864418687_
                                    (gx#syntax-e _hd1864118679_)))
                               (let ((_lp-hd1864518691_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e1864418687_)))
                                     (_lp-tl1864618694_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e1864418687_))))
                                 (if (gx#stx-pair? _lp-hd1864518691_)
                                     (let ((_e1865318697_
                                            (gx#syntax-e _lp-hd1864518691_)))
                                       (let ((_hd1865218701_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e1865318697_)))
                                             (_tl1865118704_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e1865318697_))))
                                         (if (gx#stx-pair? _tl1865118704_)
                                             (let ((_e1865618707_
                                                    (gx#syntax-e
                                                     _tl1865118704_)))
                                               (let ((_hd1865518711_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e1865618707_)))
                                                     (_tl1865418714_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e1865618707_))))
                                                 (if (gx#stx-null?
                                                      _tl1865418714_)
                                                     (let ((__tmp48994
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _hd1865518711_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _def-usetf1864718682_)))
                   (__tmp48993
                    (let ()
                      (declare (not safe))
                      (cons _hd1865218701_ _def-ugetf1864818684_))))
               (declare (not safe))
               (_loop1864318675_ _lp-tl1864618694_ __tmp48994 __tmp48993))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g1863618662_
                                                        _g1863718666_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g1863618662_
                                                _g1863718666_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_g1863618662_ _g1863718666_)))))
                             (let ((_def-usetf1864918717_
                                    (reverse _def-usetf1864718682_))
                                   (_def-ugetf1865018720_
                                    (reverse _def-ugetf1864818684_)))
                               ((lambda (_L18723_ _L18725_)
                                  (let ()
                                    (let ()
                                      (let ((__tmp48980
                                             (let ((__tmp48992
                                                    (gx#datum->syntax
                                                     '#f
                                                     'begin))
                                                   (__tmp48981
                                                    (let ((__tmp48982
                                                           (let ((__tmp48983
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp48984
                                 (let ((__tmp48991
                                        (lambda (_g1874318752_ _g1874418755_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g1874318752_
                                                  _g1874418755_))))
                                       (__tmp48985
                                        (let ((__tmp48990
                                               (lambda (_g1874518758_
                                                        _g1874618761_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g1874518758_
                                                         _g1874618761_))))
                                              (__tmp48986
                                               (let ((__tmp48989
                                                      (lambda (_g1874718764_
                                                               _g1874818767_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g1874718764_
                                                                _g1874818767_))))
                                                     (__tmp48987
                                                      (let ((__tmp48988
                                                             (lambda (_g1874918770_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1875018773_)
                       (let ()
                         (declare (not safe))
                         (cons _g1874918770_ _g1875018773_)))))
                (declare (not safe))
                (foldr1 __tmp48988 '() _L18723_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr1 __tmp48989
                                                         __tmp48987
                                                         _L18725_))))
                                          (declare (not safe))
                                          (foldr1 __tmp48990
                                                  __tmp48986
                                                  _L18617_))))
                                   (declare (not safe))
                                   (foldr1 __tmp48991 __tmp48985 _L18619_))))
                            (declare (not safe))
                            (cons _L18489_ __tmp48984))))
                     (declare (not safe))
                     (cons _L18517_ __tmp48983))))
              (declare (not safe))
              (cons _L18461_ __tmp48982))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp48992 __tmp48981))))
                                        (declare (not safe))
                                        (_wrap17800_ __tmp48980)))))
                                _def-usetf1864918717_
                                _def-ugetf1865018720_))))))
               (let ()
                 (declare (not safe))
                 (_loop1864318675_ _target1864018669_ '() '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g1863618662_
                                                        _g1863718666_))))))
                                           (let ()
                                             (declare (not safe))
                                             (_g1863618662_ _g1863718666_)))))
                                    (__tmp48995
                                     (gx#stx-map
                                      (lambda (_ref18780_)
                                        (let* ((_g1878318802_
                                                (lambda (_g1878418798_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _g1878418798_)))
                                               (_g1878218924_
                                                (lambda (_g1878418806_)
                                                  (if (gx#stx-pair?
                                                       _g1878418806_)
                                                      (let ((_e1879018809_
                                                             (gx#syntax-e
                                                              _g1878418806_)))
                                                        (let ((_hd1878918813_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e1879018809_)))
                      (_tl1878818816_
                       (let () (declare (not safe)) (##cdr _e1879018809_))))
                  (if (gx#stx-pair? _tl1878818816_)
                      (let ((_e1879318819_ (gx#syntax-e _tl1878818816_)))
                        (let ((_hd1879218823_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1879318819_)))
                              (_tl1879118826_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1879318819_))))
                          (if (gx#stx-pair? _tl1879118826_)
                              (let ((_e1879618829_
                                     (gx#syntax-e _tl1879118826_)))
                                (let ((_hd1879518833_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1879618829_)))
                                      (_tl1879418836_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1879618829_))))
                                  (if (gx#stx-null? _tl1879418836_)
                                      ((lambda (_L18839_ _L18841_ _L18842_)
                                         (let* ((_g1886018875_
                                                 (lambda (_g1886118871_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _g1886118871_)))
                                                (_g1885918920_
                                                 (lambda (_g1886118879_)
                                                   (if (gx#stx-pair?
                                                        _g1886118879_)
                                                       (let ((_e1886618882_
                                                              (gx#syntax-e
                                                               _g1886118879_)))
                                                         (let ((_hd1886518886_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e1886618882_)))
                       (_tl1886418889_
                        (let () (declare (not safe)) (##cdr _e1886618882_))))
                   (if (gx#stx-pair? _tl1886418889_)
                       (let ((_e1886918892_ (gx#syntax-e _tl1886418889_)))
                         (let ((_hd1886818896_
                                (let ()
                                  (declare (not safe))
                                  (##car _e1886918892_)))
                               (_tl1886718899_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e1886918892_))))
                           (if (gx#stx-null? _tl1886718899_)
                               ((lambda (_L18902_ _L18904_)
                                  (let ()
                                    (let ((__tmp49018
                                           (let ((__tmp49019
                                                  (let ((__tmp49038
                                                         (gx#datum->syntax
                                                          '#f
                                                          'def))
                                                        (__tmp49020
                                                         (let ((__tmp49021
                                                                (let ((__tmp49022
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp49037
                                      (gx#datum->syntax '#f 'begin-annotation))
                                     (__tmp49023
                                      (let ((__tmp49032
                                             (let ((__tmp49036
                                                    (gx#datum->syntax
                                                     '#f
                                                     '@mop.accessor))
                                                   (__tmp49033
                                                    (let ((__tmp49034
                                                           (let ((__tmp49035
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons '#f '()))))
                     (declare (not safe))
                     (cons _L18842_ __tmp49035))))
              (declare (not safe))
              (cons _L18209_ __tmp49034))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp49036 __tmp49033)))
                                            (__tmp49024
                                             (let ((__tmp49025
                                                    (let ((__tmp49031
                                                           (gx#datum->syntax
                                                            '#f
                                                            'make-class-slot-unchecked-accessor))
                                                          (__tmp49026
                                                           (let ((__tmp49027
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp49028
                                 (let ((__tmp49030
                                        (gx#datum->syntax '#f 'quote))
                                       (__tmp49029
                                        (let ()
                                          (declare (not safe))
                                          (cons _L18842_ '()))))
                                   (declare (not safe))
                                   (cons __tmp49030 __tmp49029))))
                            (declare (not safe))
                            (cons __tmp49028 '()))))
                     (declare (not safe))
                     (cons _L17894_ __tmp49027))))
              (declare (not safe))
              (cons __tmp49031 __tmp49026))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp49025 '()))))
                                        (declare (not safe))
                                        (cons __tmp49032 __tmp49024))))
                                 (declare (not safe))
                                 (cons __tmp49037 __tmp49023))))
                          (declare (not safe))
                          (cons __tmp49022 '()))))
                   (declare (not safe))
                   (cons _L18904_ __tmp49021))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp49038
                                                          __tmp49020))))
                                             (declare (not safe))
                                             (_wrap17800_ __tmp49019)))
                                          (__tmp48996
                                           (let ((__tmp48997
                                                  (let ((__tmp48998
                                                         (let ((__tmp49017
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'def))
                       (__tmp48999
                        (let ((__tmp49000
                               (let ((__tmp49001
                                      (let ((__tmp49016
                                             (gx#datum->syntax
                                              '#f
                                              'begin-annotation))
                                            (__tmp49002
                                             (let ((__tmp49011
                                                    (let ((__tmp49015
                                                           (gx#datum->syntax
                                                            '#f
                                                            '@mop.mutator))
                                                          (__tmp49012
                                                           (let ((__tmp49013
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp49014
                                 (let () (declare (not safe)) (cons '#f '()))))
                            (declare (not safe))
                            (cons _L18842_ __tmp49014))))
                     (declare (not safe))
                     (cons _L18209_ __tmp49013))))
              (declare (not safe))
              (cons __tmp49015 __tmp49012)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp49003
                                                    (let ((__tmp49004
                                                           (let ((__tmp49010
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax
                           '#f
                           'make-class-slot-unchecked-mutator))
                         (__tmp49005
                          (let ((__tmp49006
                                 (let ((__tmp49007
                                        (let ((__tmp49009
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp49008
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L18842_ '()))))
                                          (declare (not safe))
                                          (cons __tmp49009 __tmp49008))))
                                   (declare (not safe))
                                   (cons __tmp49007 '()))))
                            (declare (not safe))
                            (cons _L17894_ __tmp49006))))
                     (declare (not safe))
                     (cons __tmp49010 __tmp49005))))
              (declare (not safe))
              (cons __tmp49004 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp49011 __tmp49003))))
                                        (declare (not safe))
                                        (cons __tmp49016 __tmp49002))))
                                 (declare (not safe))
                                 (cons __tmp49001 '()))))
                          (declare (not safe))
                          (cons _L18902_ __tmp49000))))
                   (declare (not safe))
                   (cons __tmp49017 __tmp48999))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_wrap17800_ __tmp48998))))
                                             (declare (not safe))
                                             (cons __tmp48997 '()))))
                                      (declare (not safe))
                                      (cons __tmp49018 __tmp48996))))
                                _hd1886818896_
                                _hd1886518886_)
                               (let ()
                                 (declare (not safe))
                                 (_g1886018875_ _g1886118879_)))))
                       (let ()
                         (declare (not safe))
                         (_g1886018875_ _g1886118879_)))))
               (let () (declare (not safe)) (_g1886018875_ _g1886118879_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp49039
                                                 (list (gx#stx-identifier
                                                        _L18841_
                                                        '"&"
                                                        _L18841_)
                                                       (gx#stx-identifier
                                                        _L18839_
                                                        '"&"
                                                        _L18839_))))
                                           (declare (not safe))
                                           (_g1885918920_ __tmp49039)))
                                       _hd1879518833_
                                       _hd1879218823_
                                       _hd1878918813_)
                                      (let ()
                                        (declare (not safe))
                                        (_g1878318802_ _g1878418806_)))))
                              (let ()
                                (declare (not safe))
                                (_g1878318802_ _g1878418806_)))))
                      (let ()
                        (declare (not safe))
                        (_g1878318802_ _g1878418806_)))))
              (let () (declare (not safe)) (_g1878318802_ _g1878418806_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (_g1878218924_ _ref18780_)))
                                      _accessible-slots17938_)))
                               (declare (not safe))
                               (_g1863518776_ __tmp48995))))
                         _def-setf1854318611_
                         _def-getf1854418614_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop1853718569_
                                                   _target1853418563_
                                                   '()
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g1853018556_
                                                 _g1853118560_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_g1853018556_ _g1853118560_)))))
                             (__tmp49042
                              (gx#stx-map
                               (lambda (_ref18932_)
                                 (let* ((_g1893518954_
                                         (lambda (_g1893618950_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g1893618950_)))
                                        (_g1893419012_
                                         (lambda (_g1893618958_)
                                           (if (gx#stx-pair? _g1893618958_)
                                               (let ((_e1894218961_
                                                      (gx#syntax-e
                                                       _g1893618958_)))
                                                 (let ((_hd1894118965_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e1894218961_)))
                                                       (_tl1894018968_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e1894218961_))))
                                                   (if (gx#stx-pair?
                                                        _tl1894018968_)
                                                       (let ((_e1894518971_
                                                              (gx#syntax-e
                                                               _tl1894018968_)))
                                                         (let ((_hd1894418975_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e1894518971_)))
                       (_tl1894318978_
                        (let () (declare (not safe)) (##cdr _e1894518971_))))
                   (if (gx#stx-pair? _tl1894318978_)
                       (let ((_e1894818981_ (gx#syntax-e _tl1894318978_)))
                         (let ((_hd1894718985_
                                (let ()
                                  (declare (not safe))
                                  (##car _e1894818981_)))
                               (_tl1894618988_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e1894818981_))))
                           (if (gx#stx-null? _tl1894618988_)
                               ((lambda (_L18991_ _L18993_ _L18994_)
                                  (let ((__tmp49065
                                         (let ((__tmp49066
                                                (let ((__tmp49085
                                                       (gx#datum->syntax
                                                        '#f
                                                        'def))
                                                      (__tmp49067
                                                       (let ((__tmp49068
                                                              (let ((__tmp49069
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp49084
                                    (gx#datum->syntax '#f 'begin-annotation))
                                   (__tmp49070
                                    (let ((__tmp49079
                                           (let ((__tmp49083
                                                  (gx#datum->syntax
                                                   '#f
                                                   '@mop.accessor))
                                                 (__tmp49080
                                                  (let ((__tmp49081
                                                         (let ((__tmp49082
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons '#t '()))))
                   (declare (not safe))
                   (cons _L18994_ __tmp49082))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L18209_
                                                          __tmp49081))))
                                             (declare (not safe))
                                             (cons __tmp49083 __tmp49080)))
                                          (__tmp49071
                                           (let ((__tmp49072
                                                  (let ((__tmp49078
                                                         (gx#datum->syntax
                                                          '#f
                                                          'make-class-slot-accessor))
                                                        (__tmp49073
                                                         (let ((__tmp49074
                                                                (let ((__tmp49075
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp49077 (gx#datum->syntax '#f 'quote))
                                     (__tmp49076
                                      (let ()
                                        (declare (not safe))
                                        (cons _L18994_ '()))))
                                 (declare (not safe))
                                 (cons __tmp49077 __tmp49076))))
                          (declare (not safe))
                          (cons __tmp49075 '()))))
                   (declare (not safe))
                   (cons _L17894_ __tmp49074))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp49078
                                                          __tmp49073))))
                                             (declare (not safe))
                                             (cons __tmp49072 '()))))
                                      (declare (not safe))
                                      (cons __tmp49079 __tmp49071))))
                               (declare (not safe))
                               (cons __tmp49084 __tmp49070))))
                        (declare (not safe))
                        (cons __tmp49069 '()))))
                 (declare (not safe))
                 (cons _L18993_ __tmp49068))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp49085
                                                        __tmp49067))))
                                           (declare (not safe))
                                           (_wrap17800_ __tmp49066)))
                                        (__tmp49043
                                         (let ((__tmp49044
                                                (let ((__tmp49045
                                                       (let ((__tmp49064
                                                              (gx#datum->syntax
                                                               '#f
                                                               'def))
                                                             (__tmp49046
                                                              (let ((__tmp49047
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp49048
                                    (let ((__tmp49063
                                           (gx#datum->syntax
                                            '#f
                                            'begin-annotation))
                                          (__tmp49049
                                           (let ((__tmp49058
                                                  (let ((__tmp49062
                                                         (gx#datum->syntax
                                                          '#f
                                                          '@mop.mutator))
                                                        (__tmp49059
                                                         (let ((__tmp49060
                                                                (let ((__tmp49061
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let () (declare (not safe)) (cons '#t '()))))
                          (declare (not safe))
                          (cons _L18994_ __tmp49061))))
                   (declare (not safe))
                   (cons _L18209_ __tmp49060))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp49062
                                                          __tmp49059)))
                                                 (__tmp49050
                                                  (let ((__tmp49051
                                                         (let ((__tmp49057
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'make-class-slot-mutator))
                       (__tmp49052
                        (let ((__tmp49053
                               (let ((__tmp49054
                                      (let ((__tmp49056
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp49055
                                             (let ()
                                               (declare (not safe))
                                               (cons _L18994_ '()))))
                                        (declare (not safe))
                                        (cons __tmp49056 __tmp49055))))
                                 (declare (not safe))
                                 (cons __tmp49054 '()))))
                          (declare (not safe))
                          (cons _L17894_ __tmp49053))))
                   (declare (not safe))
                   (cons __tmp49057 __tmp49052))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp49051 '()))))
                                             (declare (not safe))
                                             (cons __tmp49058 __tmp49050))))
                                      (declare (not safe))
                                      (cons __tmp49063 __tmp49049))))
                               (declare (not safe))
                               (cons __tmp49048 '()))))
                        (declare (not safe))
                        (cons _L18991_ __tmp49047))))
                 (declare (not safe))
                 (cons __tmp49064 __tmp49046))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_wrap17800_ __tmp49045))))
                                           (declare (not safe))
                                           (cons __tmp49044 '()))))
                                    (declare (not safe))
                                    (cons __tmp49065 __tmp49043)))
                                _hd1894718985_
                                _hd1894418975_
                                _hd1894118965_)
                               (let ()
                                 (declare (not safe))
                                 (_g1893518954_ _g1893618958_)))))
                       (let ()
                         (declare (not safe))
                         (_g1893518954_ _g1893618958_)))))
               (let () (declare (not safe)) (_g1893518954_ _g1893618958_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g1893518954_
                                                  _g1893618958_))))))
                                   (declare (not safe))
                                   (_g1893419012_ _ref18932_)))
                               _accessible-slots17938_)))
                        (declare (not safe))
                        (_g1852918928_ __tmp49042))))
                  _g1850318514_)))
              (__tmp49086
               (let ((__tmp49087
                      (let ((__tmp49099 (gx#datum->syntax '#f 'def))
                            (__tmp49088
                             (let ((__tmp49089
                                    (let ((__tmp49090
                                           (let ((__tmp49098
                                                  (gx#datum->syntax
                                                   '#f
                                                   'begin-annotation))
                                                 (__tmp49091
                                                  (let ((__tmp49095
                                                         (let ((__tmp49097
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@mop.predicate))
                       (__tmp49096
                        (let () (declare (not safe)) (cons _L18209_ '()))))
                   (declare (not safe))
                   (cons __tmp49097 __tmp49096)))
                (__tmp49092
                 (let ((__tmp49093
                        (let ((__tmp49094
                               (let ()
                                 (declare (not safe))
                                 (cons _L17894_ '()))))
                          (declare (not safe))
                          (cons _L18097_ __tmp49094))))
                   (declare (not safe))
                   (cons __tmp49093 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp49095
                                                          __tmp49092))))
                                             (declare (not safe))
                                             (cons __tmp49098 __tmp49091))))
                                      (declare (not safe))
                                      (cons __tmp49090 '()))))
                               (declare (not safe))
                               (cons _L17891_ __tmp49089))))
                        (declare (not safe))
                        (cons __tmp49099 __tmp49088))))
                 (declare (not safe))
                 (_wrap17800_ __tmp49087))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g1850119016_ __tmp49086))))
                                           _g1847518486_)))
                                       (__tmp49100
                                        (if (gx#stx-false? _L17892_)
                                            (let ((__tmp49123
                                                   (gx#datum->syntax
                                                    '#f
                                                    'begin)))
                                              (declare (not safe))
                                              (cons __tmp49123 '()))
                                            (let ((__tmp49101
                                                   (let ((__tmp49122
                                                          (gx#datum->syntax
                                                           '#f
                                                           'def))
                                                         (__tmp49102
                                                          (let ((__tmp49103
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp49104
                                (let ((__tmp49121
                                       (gx#datum->syntax
                                        '#f
                                        'begin-annotation))
                                      (__tmp49105
                                       (let ((__tmp49118
                                              (let ((__tmp49120
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@mop.constructor))
                                                    (__tmp49119
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L18209_ '()))))
                                                (declare (not safe))
                                                (cons __tmp49120 __tmp49119)))
                                             (__tmp49106
                                              (let ((__tmp49107
                                                     (let ((__tmp49117
                                                            (gx#datum->syntax
                                                             '#f
                                                             'lambda))
                                                           (__tmp49108
                                                            (let ((__tmp49116
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '$args))
                          (__tmp49109
                           (let ((__tmp49110
                                  (let ((__tmp49115
                                         (gx#datum->syntax '#f 'apply))
                                        (__tmp49111
                                         (let ((__tmp49112
                                                (let ((__tmp49113
                                                       (let ((__tmp49114
                                                              (gx#datum->syntax
                                                               '#f
                                                               '$args)))
                                                         (declare (not safe))
                                                         (cons __tmp49114
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons _L17894_ __tmp49113))))
                                           (declare (not safe))
                                           (cons _L18069_ __tmp49112))))
                                    (declare (not safe))
                                    (cons __tmp49115 __tmp49111))))
                             (declare (not safe))
                             (cons __tmp49110 '()))))
                      (declare (not safe))
                      (cons __tmp49116 __tmp49109))))
               (declare (not safe))
               (cons __tmp49117 __tmp49108))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp49107 '()))))
                                         (declare (not safe))
                                         (cons __tmp49118 __tmp49106))))
                                  (declare (not safe))
                                  (cons __tmp49121 __tmp49105))))
                           (declare (not safe))
                           (cons __tmp49104 '()))))
                    (declare (not safe))
                    (cons _L17892_ __tmp49103))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp49122
                                                           __tmp49102))))
                                              (declare (not safe))
                                              (_wrap17800_ __tmp49101)))))
                                  (declare (not safe))
                                  (_g1847319020_ __tmp49100))))
                            _g1844718458_)))
                        (__tmp49124
                         (let ((__tmp49125
                                (let ((__tmp49142 (gx#datum->syntax '#f 'def))
                                      (__tmp49126
                                       (let ((__tmp49127
                                              (let ((__tmp49128
                                                     (let ((__tmp49141
                                                            (gx#datum->syntax
                                                             '#f
                                                             'begin-annotation))
                                                           (__tmp49129
                                                            (let ((__tmp49131
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp49140
                                  (gx#datum->syntax '#f '@mop.class))
                                 (__tmp49132
                                  (let ((__tmp49133
                                         (let ((__tmp49134
                                                (let ((__tmp49138
                                                       (let ((__tmp49139
                                                              (lambda (_g1902719030_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1902819033_)
                        (let ()
                          (declare (not safe))
                          (cons _g1902719030_ _g1902819033_)))))
                 (declare (not safe))
                 (foldr1 __tmp49139 '() _L17995_)))
              (__tmp49135
               (let ((__tmp49136
                      (let ((__tmp49137
                             (let ()
                               (declare (not safe))
                               (cons _L18293_ '()))))
                        (declare (not safe))
                        (cons _L18265_ __tmp49137))))
                 (declare (not safe))
                 (cons _L18181_ __tmp49136))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp49138
                                                        __tmp49135))))
                                           (declare (not safe))
                                           (cons _L18237_ __tmp49134))))
                                    (declare (not safe))
                                    (cons _L18125_ __tmp49133))))
                             (declare (not safe))
                             (cons __tmp49140 __tmp49132)))
                          (__tmp49130
                           (let () (declare (not safe)) (cons _L18433_ '()))))
                      (declare (not safe))
                      (cons __tmp49131 __tmp49130))))
               (declare (not safe))
               (cons __tmp49141 __tmp49129))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp49128 '()))))
                                         (declare (not safe))
                                         (cons _L17894_ __tmp49127))))
                                  (declare (not safe))
                                  (cons __tmp49142 __tmp49126))))
                           (declare (not safe))
                           (_wrap17800_ __tmp49125))))
                   (declare (not safe))
                   (_g1844519024_ __tmp49124))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1841918430_)))
                                                 (__tmp49143
                                                  (let ((__tmp49144
                                                         (let ((__tmp49161
                                                                (let ((__tmp49163
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'quote))
                              (__tmp49162
                               (let ()
                                 (declare (not safe))
                                 (cons _L18125_ '()))))
                          (declare (not safe))
                          (cons __tmp49163 __tmp49162)))
                       (__tmp49145
                        (let ((__tmp49158
                               (let ((__tmp49160 (gx#datum->syntax '#f 'quote))
                                     (__tmp49159
                                      (let ()
                                        (declare (not safe))
                                        (cons _L18153_ '()))))
                                 (declare (not safe))
                                 (cons __tmp49160 __tmp49159)))
                              (__tmp49146
                               (let ((__tmp49147
                                      (let ((__tmp49153
                                             (let ((__tmp49157
                                                    (gx#datum->syntax
                                                     '#f
                                                     'quote))
                                                   (__tmp49154
                                                    (let ((__tmp49155
                                                           (let ((__tmp49156
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g1903919042_ _g1904019045_)
                            (let ()
                              (declare (not safe))
                              (cons _g1903919042_ _g1904019045_)))))
                     (declare (not safe))
                     (foldr1 __tmp49156 '() _L17995_))))
              (declare (not safe))
              (cons __tmp49155 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp49157 __tmp49154)))
                                            (__tmp49148
                                             (let ((__tmp49149
                                                    (let ((__tmp49150
                                                           (let ((__tmp49152
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'quote))
                         (__tmp49151
                          (let () (declare (not safe)) (cons _L18181_ '()))))
                     (declare (not safe))
                     (cons __tmp49152 __tmp49151))))
              (declare (not safe))
              (cons __tmp49150 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L18377_ __tmp49149))))
                                        (declare (not safe))
                                        (cons __tmp49153 __tmp49148))))
                                 (declare (not safe))
                                 (cons _L18405_ __tmp49147))))
                          (declare (not safe))
                          (cons __tmp49158 __tmp49146))))
                   (declare (not safe))
                   (cons __tmp49161 __tmp49145))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L18039_
                                                          __tmp49144))))
                                            (declare (not safe))
                                            (_g1841719036_ __tmp49143))))
                                      _g1839118402_)))
                                  (__tmp49164
                                   (let ((__tmp49165
                                          (gx#datum->syntax '#f 'list)))
                                     (declare (not safe))
                                     (cons __tmp49165 _L17893_))))
                             (declare (not safe))
                             (_g1838919048_ __tmp49164))))
                       _g1836318374_)))
                   (__tmp49166
                    (if (and _struct?17798_
                             (let ()
                               (declare (not safe))
                               (not _properties-struct?18014_)))
                        (let ((__tmp49173 (gx#datum->syntax '#f '@list))
                              (__tmp49167
                               (let ((__tmp49170
                                      (let ((__tmp49172
                                             (gx#datum->syntax '#f '@list))
                                            (__tmp49171
                                             (let ()
                                               (declare (not safe))
                                               (cons 'struct: '#t))))
                                        (declare (not safe))
                                        (cons __tmp49172 __tmp49171)))
                                     (__tmp49168
                                      (let ((__tmp49169
                                             (let ()
                                               (declare (not safe))
                                               (cons _L18349_ '()))))
                                        (declare (not safe))
                                        (cons ':: __tmp49169))))
                                 (declare (not safe))
                                 (cons __tmp49170 __tmp49168))))
                          (declare (not safe))
                          (cons __tmp49173 __tmp49167))
                        _L18349_)))
              (declare (not safe))
              (_g1836119052_ __tmp49166))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1833518346_)))
                                            (__tmp49174
                                             (if (gx#stx-e _L18293_)
                                                 (let ((__tmp49181
                                                        (gx#datum->syntax
                                                         '#f
                                                         '@list))
                                                       (__tmp49175
                                                        (let ((__tmp49178
                                                               (let ((__tmp49180
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f '@list))
                             (__tmp49179
                              (let ()
                                (declare (not safe))
                                (cons 'final: '#t))))
                         (declare (not safe))
                         (cons __tmp49180 __tmp49179)))
                      (__tmp49176
                       (let ((__tmp49177
                              (let ()
                                (declare (not safe))
                                (cons _L18321_ '()))))
                         (declare (not safe))
                         (cons ':: __tmp49177))))
                  (declare (not safe))
                  (cons __tmp49178 __tmp49176))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp49181
                                                         __tmp49175))
                                                 _L18321_)))
                                       (declare (not safe))
                                       (_g1833319056_ __tmp49174))))
                                 _g1830718318_)))
                             (__tmp49182
                              (let ((_$e19064_
                                     (gx#stx-getq 'properties: _L17889_)))
                                (if _$e19064_
                                    _$e19064_
                                    (let ((__tmp49183
                                           (gx#datum->syntax '#f '@list)))
                                      (declare (not safe))
                                      (cons __tmp49183 '()))))))
                        (declare (not safe))
                        (_g1830519060_ __tmp49182))))
                  _g1827918290_)))
              (__tmp49184 (gx#stx-getq 'final: _L17889_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g1827719068_ __tmp49184))))
                                           _g1825118262_))))
                                  (declare (not safe))
                                  (_g1824919072_ _type-struct?18021_))))
                            _g1822318234_)))
                        (__tmp49185
                         (gx#stx-map gx#core-quote-syntax _L17893_)))
                   (declare (not safe))
                   (_g1822119076_ __tmp49185))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1819518206_)))
                                                 (__tmp49186
                                                  (gx#core-quote-syntax
                                                   _L17894_)))
                                            (declare (not safe))
                                            (_g1819319080_ __tmp49186))))
                                      _g1816718178_)))
                                  (__tmp49187
                                   (gx#stx-getq 'constructor: _L17889_)))
                             (declare (not safe))
                             (_g1816519084_ __tmp49187))))
                       _g1813918150_)))
                   (__tmp49188
                    (let ((_$e19092_ (gx#stx-getq 'name: _L17889_)))
                      (if _$e19092_ _$e19092_ _L17894_))))
              (declare (not safe))
              (_g1813719088_ __tmp49188))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1811118122_)))
                                            (__tmp49189
                                             (let ((_$e19100_
                                                    (gx#stx-getq
                                                     'id:
                                                     _L17889_)))
                                               (if _$e19100_
                                                   _$e19100_
                                                   (let ()
                                                     (declare (not safe))
                                                     (|gerbil/core$<MOP>$<MOP:1>[1]#make-class-type-id|
                                                      _L17894_))))))
                                       (declare (not safe))
                                       (_g1810919096_ __tmp49189))))
                                 _g1808318094_)))
                             (__tmp49190
                              (if _type-struct?18021_
                                  (gx#datum->syntax '#f 'make-struct-predicate)
                                  (gx#datum->syntax
                                   '#f
                                   'make-class-predicate))))
                        (declare (not safe))
                        (_g1808119104_ __tmp49190))))
                  _g1805518066_)))
              (__tmp49191
               (if _type-struct?18021_
                   (gx#datum->syntax '#f 'make-struct-instance)
                   (gx#datum->syntax '#f 'make-class-instance))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g1805319108_ __tmp49191))))
                                           _g1802518036_)))
                                       (__tmp49192
                                        (if _type-struct?18021_
                                            (gx#datum->syntax
                                             '#f
                                             'make-struct-type)
                                            (gx#datum->syntax
                                             '#f
                                             'make-class-type))))
                                  (declare (not safe))
                                  (_g1802319112_ __tmp49192))))
                            _slot1795217991_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_loop1794717971_
                                                      _target1794417965_
                                                      '())))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g1794117958_
                                                    _g1794217962_))))))
                                       (let ()
                                         (declare (not safe))
                                         (_g1794117958_ _g1794217962_)))))
                                (__tmp49194
                                 (gx#stx-map _slot-name17802_ _slots17928_)))
                           (declare (not safe))
                           (_g1794019116_ __tmp49194))
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
          (_g1780419120_ _stx17796_)))))
  (define |gerbil/core$<MOP>$<MOP:1>[:0:]#defstruct-type|
    (lambda (_stx19232_)
      (let ()
        (declare (not safe))
        (|gerbil/core$<MOP>$<MOP:1>[1]#generate-typedef| _stx19232_ '#t))))
  (define |gerbil/core$<MOP>$<MOP:1>[:0:]#defclass-type|
    (lambda (_stx19235_)
      (let ()
        (declare (not safe))
        (|gerbil/core$<MOP>$<MOP:1>[1]#generate-typedef| _stx19235_ '#f)))))
