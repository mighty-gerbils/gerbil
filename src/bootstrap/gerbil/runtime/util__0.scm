(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1695201399)
  (begin
    (define displayln
      (lambda _args2161_
        (let _lp2163_ ((_rest2165_ _args2161_))
          (let* ((_rest21662174_ _rest2165_)
                 (_E21692178_
                  (lambda () (error '"No clause matching" _rest21662174_)))
                 (_else21682182_ (lambda () (newline)))
                 (_K21702188_
                  (lambda (_rest2185_ _hd2186_)
                    (display _hd2186_)
                    (_lp2163_ _rest2185_))))
            (if (let () (declare (not safe)) (##pair? _rest21662174_))
                (let ((_hd21712191_
                       (let () (declare (not safe)) (##car _rest21662174_)))
                      (_tl21722193_
                       (let () (declare (not safe)) (##cdr _rest21662174_))))
                  (let* ((_hd2196_ _hd21712191_) (_rest2198_ _tl21722193_))
                    (_K21702188_ _rest2198_ _hd2196_)))
                (_else21682182_))))))
    (define display* (lambda _args2159_ (for-each display _args2159_)))
    (define file-newer?
      (lambda (_file12152_ _file22153_)
        (letrec ((_modification-time2155_
                  (lambda (_file2157_)
                    (let ((__tmp2204
                           (file-info-last-modification-time
                            (file-info _file2157_ '#t))))
                      (declare (not safe))
                      (##time->seconds __tmp2204)))))
          (let ((__tmp2206 (_modification-time2155_ _file12152_))
                (__tmp2205 (_modification-time2155_ _file22153_)))
            (declare (not safe))
            (##fl> __tmp2206 __tmp2205)))))
    (define create-directory*
      (let ((_opt-lambda21242142_
             (lambda (_dir2126_ _perms2127_)
               (letrec ((_create12129_
                         (lambda (_path2140_)
                           (if (file-exists? _path2140_)
                               (if (eq? (file-type _path2140_) 'directory)
                                   '#!void
                                   (error '"Path component is not a directory"
                                          _path2140_))
                               (if _perms2127_
                                   (create-directory
                                    (list 'path:
                                          _path2140_
                                          'permissions:
                                          _perms2127_))
                                   (create-directory _path2140_))))))
                 (if (file-exists? _dir2126_)
                     '#!void
                     (let _lp2131_ ((_start2133_ '0))
                       (let ((_$e2135_
                              (string-index _dir2126_ '#\/ _start2133_)))
                         (if _$e2135_
                             ((lambda (_x2138_)
                                (if (let ()
                                      (declare (not safe))
                                      (##fx> _x2138_ '0))
                                    (_create12129_
                                     (substring _dir2126_ '0 _x2138_))
                                    '#!void)
                                (_lp2131_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _x2138_ '1))))
                              _$e2135_)
                             (_create12129_ _dir2126_)))))))))
        (lambda _g2208_
          (let ((_g2207_ (let () (declare (not safe)) (##length _g2208_))))
            (cond ((let () (declare (not safe)) (##fx= _g2207_ 1))
                   (apply (lambda (_dir2145_)
                            (let ((_perms2147_ '493))
                              (_opt-lambda21242142_ _dir2145_ _perms2147_)))
                          _g2208_))
                  ((let () (declare (not safe)) (##fx= _g2207_ 2))
                   (apply _opt-lambda21242142_ _g2208_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    create-directory*
                    _g2208_)))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _g2209_ '#t))
    (define true? (lambda (_obj2122_) (eq? _obj2122_ '#t)))
    (define false (lambda _g2210_ '#f))
    (define void (lambda _g2211_ '#!void))
    (define void? (lambda (_obj2118_) (eq? _obj2118_ '#!void)))
    (define eof-object (lambda _g2212_ '#!eof))
    (define identity (lambda (_obj2115_) _obj2115_))
    (define dssl-object?
      (lambda (_obj2113_)
        (if (memq _obj2113_ '(#!key #!rest #!optional)) '#t '#f)))
    (define dssl-key-object? (lambda (_obj2111_) (eq? _obj2111_ '#!key)))
    (define dssl-rest-object? (lambda (_obj2109_) (eq? _obj2109_ '#!rest)))
    (define dssl-optional-object?
      (lambda (_obj2107_) (eq? _obj2107_ '#!optional)))
    (define immediate?
      (lambda (_obj2103_)
        (let* ((_t2105_ (let () (declare (not safe)) (##type _obj2103_)))
               (__tmp2213 (let () (declare (not safe)) (##fxand _t2105_ '1))))
          (declare (not safe))
          (##fxzero? __tmp2213))))
    (define nonnegative-fixnum?
      (lambda (_obj2101_)
        (if (fixnum? _obj2101_) (not (fxnegative? _obj2101_)) '#f)))
    (define values-count
      (lambda (_obj2099_)
        (if (let () (declare (not safe)) (##values? _obj2099_))
            (let () (declare (not safe)) (##vector-length _obj2099_))
            '1)))
    (define values-ref
      (lambda (_obj2096_ _k2097_)
        (if (let () (declare (not safe)) (##values? _obj2096_))
            (let () (declare (not safe)) (##vector-ref _obj2096_ _k2097_))
            _obj2096_)))
    (define values->list
      (lambda (_obj2094_)
        (if (let () (declare (not safe)) (##values? _obj2094_))
            (let () (declare (not safe)) (##vector->list _obj2094_))
            (list _obj2094_))))
    (define subvector->list
      (let ((_opt-lambda20772084_
             (lambda (_obj2079_ _start2080_)
               (let ((_lst2082_
                      (let ()
                        (declare (not safe))
                        (##vector->list _obj2079_))))
                 (list-tail _lst2082_ _start2080_)))))
        (lambda _g2215_
          (let ((_g2214_ (let () (declare (not safe)) (##length _g2215_))))
            (cond ((let () (declare (not safe)) (##fx= _g2214_ 1))
                   (apply (lambda (_obj2087_)
                            (let ((_start2089_ '0))
                              (_opt-lambda20772084_ _obj2087_ _start2089_)))
                          _g2215_))
                  ((let () (declare (not safe)) (##fx= _g2214_ 2))
                   (apply _opt-lambda20772084_ _g2215_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    subvector->list
                    _g2215_)))))))
    (define make-hash-table make-table)
    (define make-hash-table-eq
      (lambda _args2076_ (apply make-table 'test: eq? _args2076_)))
    (define make-hash-table-eqv
      (lambda _args2074_ (apply make-table 'test: eqv? _args2074_)))
    (define list->hash-table list->table)
    (define list->hash-table-eq
      (lambda (_lst2071_ . _args2072_)
        (apply list->table _lst2071_ 'test: eq? _args2072_)))
    (define list->hash-table-eqv
      (lambda (_lst2068_ . _args2069_)
        (apply list->table _lst2068_ 'test: eqv? _args2069_)))
    (define hash? table?)
    (define hash-table? table?)
    (define hash-length table-length)
    (define hash-ref table-ref)
    (define hash-get
      (lambda (_ht2065_ _k2066_) (table-ref _ht2065_ _k2066_ '#f)))
    (define hash-put!
      (lambda (_ht2061_ _k2062_ _v2063_)
        (table-set! _ht2061_ _k2062_ _v2063_)))
    (define hash-update!
      (let ((_opt-lambda20382047_
             (lambda (_ht2040_ _k2041_ _update2042_ _default2043_)
               (let ((_value2045_ (hash-ref _ht2040_ _k2041_ _default2043_)))
                 (hash-put! _ht2040_ _k2041_ (_update2042_ _value2045_))))))
        (lambda _g2217_
          (let ((_g2216_ (let () (declare (not safe)) (##length _g2217_))))
            (cond ((let () (declare (not safe)) (##fx= _g2216_ 3))
                   (apply (lambda (_ht2050_ _k2051_ _update2052_)
                            (let ((_default2054_ '#!void))
                              (_opt-lambda20382047_
                               _ht2050_
                               _k2051_
                               _update2052_
                               _default2054_)))
                          _g2217_))
                  ((let () (declare (not safe)) (##fx= _g2216_ 4))
                   (apply _opt-lambda20382047_ _g2217_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    hash-update!
                    _g2217_)))))))
    (define hash-remove!
      (lambda (_ht2036_ _k2037_) (table-set! _ht2036_ _k2037_)))
    (define hash->list table->list)
    (define hash->plist (lambda (_ht2034_) (hash-fold cons* '() _ht2034_)))
    (define plist->hash-table
      (let ((_opt-lambda19672024_
             (lambda (_plst1969_ _ht1970_)
               (let _lp1972_ ((_rest1974_ _plst1969_))
                 (let* ((_rest19751986_ _rest1974_)
                        (_E19781990_
                         (lambda ()
                           (error '"No clause matching" _rest19751986_)))
                        (_try-match19771998_
                         (lambda ()
                           (let ((_K19791995_ (lambda () _ht1970_)))
                             (if (let ()
                                   (declare (not safe))
                                   (##eq? _rest19751986_ '()))
                                 (_K19791995_)
                                 (_E19781990_)))))
                        (_K19802005_
                         (lambda (_rest2001_ _v2002_ _k2003_)
                           (hash-put! _ht1970_ _k2003_ _v2002_)
                           (_lp1972_ _rest2001_))))
                   (if (let () (declare (not safe)) (##pair? _rest19751986_))
                       (let ((_hd19812008_
                              (let ()
                                (declare (not safe))
                                (##car _rest19751986_)))
                             (_tl19822010_
                              (let ()
                                (declare (not safe))
                                (##cdr _rest19751986_))))
                         (let ((_k2013_ _hd19812008_))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _tl19822010_))
                               (let ((_hd19832015_
                                      (let ()
                                        (declare (not safe))
                                        (##car _tl19822010_)))
                                     (_tl19842017_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _tl19822010_))))
                                 (let* ((_v2020_ _hd19832015_)
                                        (_rest2022_ _tl19842017_))
                                   (_K19802005_ _rest2022_ _v2020_ _k2013_)))
                               (_try-match19771998_))))
                       (_try-match19771998_)))))))
        (lambda _g2219_
          (let ((_g2218_ (let () (declare (not safe)) (##length _g2219_))))
            (cond ((let () (declare (not safe)) (##fx= _g2218_ 1))
                   (apply (lambda (_plst2027_)
                            (let ((_ht2029_ (make-hash-table)))
                              (_opt-lambda19672024_ _plst2027_ _ht2029_)))
                          _g2219_))
                  ((let () (declare (not safe)) (##fx= _g2218_ 2))
                   (apply _opt-lambda19672024_ _g2219_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    plist->hash-table
                    _g2219_)))))))
    (define plist->hash-table-eq
      (lambda (_plst1966_)
        (plist->hash-table _plst1966_ (make-hash-table-eq))))
    (define plist->hash-table-eqv
      (lambda (_plst1964_)
        (plist->hash-table _plst1964_ (make-hash-table-eqv))))
    (define hash-key?
      (lambda (_ht1961_ _k1962_)
        (not (eq? (hash-ref _ht1961_ _k1962_ absent-value) absent-value))))
    (define hash-for-each table-for-each)
    (define hash-map
      (lambda (_fun1954_ _ht1955_)
        (hash-fold
         (lambda (_k1957_ _v1958_ _r1959_)
           (cons (_fun1954_ _k1957_ _v1958_) _r1959_))
         '()
         _ht1955_)))
    (define hash-fold
      (lambda (_fun1945_ _iv1946_ _ht1947_)
        (let ((_ret1949_ _iv1946_))
          (hash-for-each
           (lambda (_k1951_ _v1952_)
             (set! _ret1949_ (_fun1945_ _k1951_ _v1952_ _ret1949_)))
           _ht1947_)
          _ret1949_)))
    (define hash-find table-search)
    (define hash-keys
      (lambda (_ht1940_)
        (hash-map (lambda (_k1942_ _v1943_) _k1942_) _ht1940_)))
    (define hash-values
      (lambda (_ht1935_)
        (hash-map (lambda (_k1937_ _v1938_) _v1938_) _ht1935_)))
    (define hash-copy
      (lambda (_hd1930_ . _rest1931_)
        (let ((_hd1933_ (table-copy _hd1930_)))
          (if (null? _rest1931_)
              _hd1933_
              (apply hash-copy! _hd1933_ _rest1931_)))))
    (define hash-copy!
      (lambda (_hd1925_ . _rest1926_)
        (for-each
         (lambda (_r1928_) (table-merge! _hd1925_ _r1928_))
         _rest1926_)
        _hd1925_))
    (define hash-merge
      (lambda (_hd1919_ . _rest1920_)
        (foldl (lambda (_tab1922_ _r1923_) (table-merge _r1923_ _tab1922_))
               _hd1919_
               _rest1920_)))
    (define hash-merge!
      (lambda (_hd1913_ . _rest1914_)
        (foldl (lambda (_tab1916_ _r1917_) (table-merge! _r1917_ _tab1916_))
               _hd1913_
               _rest1914_)))
    (define hash-clear!
      (let ((_opt-lambda18961903_
             (lambda (_ht1898_ _size1899_)
               (let ((_gcht1901_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _ht1898_ '5))))
                 (if (not (fixnum? _gcht1901_))
                     (let ()
                       (declare (not safe))
                       (##vector-set! _ht1898_ '5 _size1899_))
                     '#!void)))))
        (lambda _g2221_
          (let ((_g2220_ (let () (declare (not safe)) (##length _g2221_))))
            (cond ((let () (declare (not safe)) (##fx= _g2220_ 1))
                   (apply (lambda (_ht1906_)
                            (let ((_size1908_ '0))
                              (_opt-lambda18961903_ _ht1906_ _size1908_)))
                          _g2221_))
                  ((let () (declare (not safe)) (##fx= _g2220_ 2))
                   (apply _opt-lambda18961903_ _g2221_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    hash-clear!
                    _g2221_)))))))
    (define make-list
      (let ((_opt-lambda18771887_
             (lambda (_k1879_ _val1880_)
               (if (fixnum? _k1879_)
                   '#!void
                   (error '"expected argument 1 to be fixnum" _k1879_))
               (let _lp1882_ ((_n1884_ '0) (_r1885_ '()))
                 (if (let () (declare (not safe)) (##fx< _n1884_ _k1879_))
                     (_lp1882_
                      (let () (declare (not safe)) (##fx+ _n1884_ '1))
                      (cons _val1880_ _r1885_))
                     _r1885_)))))
        (lambda _g2223_
          (let ((_g2222_ (let () (declare (not safe)) (##length _g2223_))))
            (cond ((let () (declare (not safe)) (##fx= _g2222_ 1))
                   (apply (lambda (_k1890_)
                            (let ((_val1892_ '#f))
                              (_opt-lambda18771887_ _k1890_ _val1892_)))
                          _g2223_))
                  ((let () (declare (not safe)) (##fx= _g2222_ 2))
                   (apply _opt-lambda18771887_ _g2223_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    make-list
                    _g2223_)))))))
    (define cons*
      (lambda (_x1869_ _y1870_ . _rest1871_)
        (letrec ((_recur1873_
                  (lambda (_x1875_ _rest1876_)
                    (if (pair? _rest1876_)
                        (cons _x1875_
                              (_recur1873_
                               (let () (declare (not safe)) (##car _rest1876_))
                               (let ()
                                 (declare (not safe))
                                 (##cdr _rest1876_))))
                        _x1875_))))
          (cons _x1869_ (_recur1873_ _y1870_ _rest1871_)))))
    (define foldl1
      (lambda (_f1827_ _iv1828_ _lst1829_)
        (let _lp1831_ ((_rest1833_ _lst1829_) (_r1834_ _iv1828_))
          (let* ((_rest18351843_ _rest1833_)
                 (_E18381847_
                  (lambda () (error '"No clause matching" _rest18351843_)))
                 (_else18371851_ (lambda () _r1834_))
                 (_K18391857_
                  (lambda (_rest1854_ _x1855_)
                    (_lp1831_ _rest1854_ (_f1827_ _x1855_ _r1834_)))))
            (if (let () (declare (not safe)) (##pair? _rest18351843_))
                (let ((_hd18401860_
                       (let () (declare (not safe)) (##car _rest18351843_)))
                      (_tl18411862_
                       (let () (declare (not safe)) (##cdr _rest18351843_))))
                  (let* ((_x1865_ _hd18401860_) (_rest1867_ _tl18411862_))
                    (_K18391857_ _rest1867_ _x1865_)))
                (_else18371851_))))))
    (define foldl2
      (lambda (_f1750_ _iv1751_ _lst11752_ _lst21753_)
        (let _lp1755_ ((_rest11757_ _lst11752_)
                       (_rest21758_ _lst21753_)
                       (_r1759_ _iv1751_))
          (let* ((_rest117601768_ _rest11757_)
                 (_E17631772_
                  (lambda () (error '"No clause matching" _rest117601768_)))
                 (_else17621776_ (lambda () _r1759_))
                 (_K17641815_
                  (lambda (_rest11779_ _x11780_)
                    (let* ((_rest217811789_ _rest21758_)
                           (_E17841793_
                            (lambda ()
                              (error '"No clause matching" _rest217811789_)))
                           (_else17831797_ (lambda () _r1759_))
                           (_K17851803_
                            (lambda (_rest21800_ _x21801_)
                              (_lp1755_
                               _rest11779_
                               _rest21800_
                               (_f1750_ _x11780_ _x21801_ _r1759_)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest217811789_))
                          (let ((_hd17861806_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest217811789_)))
                                (_tl17871808_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest217811789_))))
                            (let* ((_x21811_ _hd17861806_)
                                   (_rest21813_ _tl17871808_))
                              (_K17851803_ _rest21813_ _x21811_)))
                          (_else17831797_))))))
            (if (let () (declare (not safe)) (##pair? _rest117601768_))
                (let ((_hd17651818_
                       (let () (declare (not safe)) (##car _rest117601768_)))
                      (_tl17661820_
                       (let () (declare (not safe)) (##cdr _rest117601768_))))
                  (let* ((_x11823_ _hd17651818_) (_rest11825_ _tl17661820_))
                    (_K17641815_ _rest11825_ _x11823_)))
                (_else17621776_))))))
    (define foldl
      (lambda _g2225_
        (let ((_g2224_ (let () (declare (not safe)) (##length _g2225_))))
          (cond ((let () (declare (not safe)) (##fx= _g2224_ 3))
                 (apply foldl1 _g2225_))
                ((let () (declare (not safe)) (##fx= _g2224_ 4))
                 (apply foldl2 _g2225_))
                ((let () (declare (not safe)) (##fx>= _g2224_ 4))
                 (apply foldl* _g2225_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g2225_))))))
    (define foldl*
      (lambda (_f1723_ _iv1724_ . _rest1725_)
        (let _recur1727_ ((_iv1729_ _iv1724_) (_rest1730_ _rest1725_))
          (if (andmap1 pair? _rest1730_)
              (_recur1727_
               (apply _f1723_
                      (foldr1 (lambda (_xs1732_ _r1733_)
                                (cons (car _xs1732_) _r1733_))
                              (list _iv1729_)
                              _rest1730_))
               (map cdr _rest1730_))
              _iv1729_))))
    (define foldr1
      (lambda (_f1682_ _iv1683_ _lst1684_)
        (let _recur1686_ ((_rest1688_ _lst1684_))
          (let* ((_rest16891697_ _rest1688_)
                 (_E16921701_
                  (lambda () (error '"No clause matching" _rest16891697_)))
                 (_else16911705_ (lambda () _iv1683_))
                 (_K16931711_
                  (lambda (_rest1708_ _x1709_)
                    (_f1682_ _x1709_ (_recur1686_ _rest1708_)))))
            (if (let () (declare (not safe)) (##pair? _rest16891697_))
                (let ((_hd16941714_
                       (let () (declare (not safe)) (##car _rest16891697_)))
                      (_tl16951716_
                       (let () (declare (not safe)) (##cdr _rest16891697_))))
                  (let* ((_x1719_ _hd16941714_) (_rest1721_ _tl16951716_))
                    (_K16931711_ _rest1721_ _x1719_)))
                (_else16911705_))))))
    (define foldr2
      (lambda (_f1606_ _iv1607_ _lst11608_ _lst21609_)
        (let _recur1611_ ((_rest11613_ _lst11608_) (_rest21614_ _lst21609_))
          (let* ((_rest116151623_ _rest11613_)
                 (_E16181627_
                  (lambda () (error '"No clause matching" _rest116151623_)))
                 (_else16171631_ (lambda () _iv1607_))
                 (_K16191670_
                  (lambda (_rest11634_ _x11635_)
                    (let* ((_rest216361644_ _rest21614_)
                           (_E16391648_
                            (lambda ()
                              (error '"No clause matching" _rest216361644_)))
                           (_else16381652_ (lambda () _iv1607_))
                           (_K16401658_
                            (lambda (_rest21655_ _x21656_)
                              (_f1606_ _x11635_
                                       _x21656_
                                       (_recur1611_
                                        _rest11634_
                                        _rest21655_)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest216361644_))
                          (let ((_hd16411661_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest216361644_)))
                                (_tl16421663_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest216361644_))))
                            (let* ((_x21666_ _hd16411661_)
                                   (_rest21668_ _tl16421663_))
                              (_K16401658_ _rest21668_ _x21666_)))
                          (_else16381652_))))))
            (if (let () (declare (not safe)) (##pair? _rest116151623_))
                (let ((_hd16201673_
                       (let () (declare (not safe)) (##car _rest116151623_)))
                      (_tl16211675_
                       (let () (declare (not safe)) (##cdr _rest116151623_))))
                  (let* ((_x11678_ _hd16201673_) (_rest11680_ _tl16211675_))
                    (_K16191670_ _rest11680_ _x11678_)))
                (_else16171631_))))))
    (define foldr
      (lambda _g2227_
        (let ((_g2226_ (let () (declare (not safe)) (##length _g2227_))))
          (cond ((let () (declare (not safe)) (##fx= _g2226_ 3))
                 (apply foldr1 _g2227_))
                ((let () (declare (not safe)) (##fx= _g2226_ 4))
                 (apply foldr2 _g2227_))
                ((let () (declare (not safe)) (##fx>= _g2226_ 4))
                 (apply foldr* _g2227_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g2227_))))))
    (define foldr*
      (lambda (_f1580_ _iv1581_ . _rest1582_)
        (let _recur1584_ ((_rest1586_ _rest1582_))
          (if (andmap1 pair? _rest1586_)
              (apply _f1580_
                     (foldr1 (lambda (_xs1588_ _r1589_)
                               (cons (car _xs1588_) _r1589_))
                             (list (_recur1584_ (map cdr _rest1586_)))
                             _rest1586_))
              _iv1581_))))
    (define andmap1
      (lambda (_f1540_ _lst1541_)
        (let _lp1543_ ((_rest1545_ _lst1541_))
          (let* ((_rest15461554_ _rest1545_)
                 (_E15491558_
                  (lambda () (error '"No clause matching" _rest15461554_)))
                 (_else15481562_ (lambda () '#t))
                 (_K15501568_
                  (lambda (_rest1565_ _x1566_)
                    (if (_f1540_ _x1566_) (_lp1543_ _rest1565_) '#f))))
            (if (let () (declare (not safe)) (##pair? _rest15461554_))
                (let ((_hd15511571_
                       (let () (declare (not safe)) (##car _rest15461554_)))
                      (_tl15521573_
                       (let () (declare (not safe)) (##cdr _rest15461554_))))
                  (let* ((_x1576_ _hd15511571_) (_rest1578_ _tl15521573_))
                    (_K15501568_ _rest1578_ _x1576_)))
                (_else15481562_))))))
    (define andmap2
      (lambda (_f1465_ _lst11466_ _lst21467_)
        (let _lp1469_ ((_rest11471_ _lst11466_) (_rest21472_ _lst21467_))
          (let* ((_rest114731481_ _rest11471_)
                 (_E14761485_
                  (lambda () (error '"No clause matching" _rest114731481_)))
                 (_else14751489_ (lambda () '#t))
                 (_K14771528_
                  (lambda (_rest11492_ _x11493_)
                    (let* ((_rest214941502_ _rest21472_)
                           (_E14971506_
                            (lambda ()
                              (error '"No clause matching" _rest214941502_)))
                           (_else14961510_ (lambda () '#t))
                           (_K14981516_
                            (lambda (_rest21513_ _x21514_)
                              (if (_f1465_ _x11493_ _x21514_)
                                  (_lp1469_ _rest11492_ _rest21513_)
                                  '#f))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest214941502_))
                          (let ((_hd14991519_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest214941502_)))
                                (_tl15001521_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest214941502_))))
                            (let* ((_x21524_ _hd14991519_)
                                   (_rest21526_ _tl15001521_))
                              (_K14981516_ _rest21526_ _x21524_)))
                          (_else14961510_))))))
            (if (let () (declare (not safe)) (##pair? _rest114731481_))
                (let ((_hd14781531_
                       (let () (declare (not safe)) (##car _rest114731481_)))
                      (_tl14791533_
                       (let () (declare (not safe)) (##cdr _rest114731481_))))
                  (let* ((_x11536_ _hd14781531_) (_rest11538_ _tl14791533_))
                    (_K14771528_ _rest11538_ _x11536_)))
                (_else14751489_))))))
    (define andmap
      (lambda _g2229_
        (let ((_g2228_ (let () (declare (not safe)) (##length _g2229_))))
          (cond ((let () (declare (not safe)) (##fx= _g2228_ 2))
                 (apply andmap1 _g2229_))
                ((let () (declare (not safe)) (##fx= _g2228_ 3))
                 (apply andmap2 _g2229_))
                ((let () (declare (not safe)) (##fx>= _g2228_ 3))
                 (apply andmap* _g2229_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g2229_))))))
    (define andmap*
      (lambda (_f1446_ . _rest1447_)
        (let _recur1449_ ((_rest1451_ _rest1447_))
          (if (andmap1 pair? _rest1451_)
              (if (apply _f1446_ (map car _rest1451_))
                  (_recur1449_ (map cdr _rest1451_))
                  '#f)
              '#t))))
    (define ormap1
      (lambda (_f1403_ _lst1404_)
        (let _lp1406_ ((_rest1408_ _lst1404_))
          (let* ((_rest14091417_ _rest1408_)
                 (_E14121421_
                  (lambda () (error '"No clause matching" _rest14091417_)))
                 (_else14111425_ (lambda () '#f))
                 (_K14131434_
                  (lambda (_rest1428_ _x1429_)
                    (let ((_$e1431_ (_f1403_ _x1429_)))
                      (if _$e1431_ _$e1431_ (_lp1406_ _rest1428_))))))
            (if (let () (declare (not safe)) (##pair? _rest14091417_))
                (let ((_hd14141437_
                       (let () (declare (not safe)) (##car _rest14091417_)))
                      (_tl14151439_
                       (let () (declare (not safe)) (##cdr _rest14091417_))))
                  (let* ((_x1442_ _hd14141437_) (_rest1444_ _tl14151439_))
                    (_K14131434_ _rest1444_ _x1442_)))
                (_else14111425_))))))
    (define ormap2
      (lambda (_f1325_ _lst11326_ _lst21327_)
        (let _lp1329_ ((_rest11331_ _lst11326_) (_rest21332_ _lst21327_))
          (let* ((_rest113331341_ _rest11331_)
                 (_E13361345_
                  (lambda () (error '"No clause matching" _rest113331341_)))
                 (_else13351349_ (lambda () '#f))
                 (_K13371391_
                  (lambda (_rest11352_ _x11353_)
                    (let* ((_rest213541362_ _rest21332_)
                           (_E13571366_
                            (lambda ()
                              (error '"No clause matching" _rest213541362_)))
                           (_else13561370_ (lambda () '#f))
                           (_K13581379_
                            (lambda (_rest21373_ _x21374_)
                              (let ((_$e1376_ (_f1325_ _x11353_ _x21374_)))
                                (if _$e1376_
                                    _$e1376_
                                    (_lp1329_ _rest11352_ _rest21373_))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest213541362_))
                          (let ((_hd13591382_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest213541362_)))
                                (_tl13601384_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest213541362_))))
                            (let* ((_x21387_ _hd13591382_)
                                   (_rest21389_ _tl13601384_))
                              (_K13581379_ _rest21389_ _x21387_)))
                          (_else13561370_))))))
            (if (let () (declare (not safe)) (##pair? _rest113331341_))
                (let ((_hd13381394_
                       (let () (declare (not safe)) (##car _rest113331341_)))
                      (_tl13391396_
                       (let () (declare (not safe)) (##cdr _rest113331341_))))
                  (let* ((_x11399_ _hd13381394_) (_rest11401_ _tl13391396_))
                    (_K13371391_ _rest11401_ _x11399_)))
                (_else13351349_))))))
    (define ormap
      (lambda _g2231_
        (let ((_g2230_ (let () (declare (not safe)) (##length _g2231_))))
          (cond ((let () (declare (not safe)) (##fx= _g2230_ 2))
                 (apply ormap1 _g2231_))
                ((let () (declare (not safe)) (##fx= _g2230_ 3))
                 (apply ormap2 _g2231_))
                ((let () (declare (not safe)) (##fx>= _g2230_ 3))
                 (apply ormap* _g2231_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g2231_))))))
    (define ormap*
      (lambda (_f1303_ . _rest1304_)
        (let _recur1306_ ((_rest1308_ _rest1304_))
          (if (andmap1 pair? _rest1308_)
              (let ((_$e1310_ (apply _f1303_ (map car _rest1308_))))
                (if _$e1310_ _$e1310_ (_recur1306_ (map cdr _rest1308_))))
              '#f))))
    (define filter
      (lambda (_f1261_ _lst1262_)
        (let _recur1264_ ((_lst1266_ _lst1262_))
          (let* ((_lst12671275_ _lst1266_)
                 (_E12701279_
                  (lambda () (error '"No clause matching" _lst12671275_)))
                 (_else12691283_ (lambda () '()))
                 (_K12711291_
                  (lambda (_rest1286_ _hd1287_)
                    (if (_f1261_ _hd1287_)
                        (let ((_tail1289_ (_recur1264_ _rest1286_)))
                          (if (eq? _tail1289_ _rest1286_)
                              _lst1266_
                              (cons _hd1287_ _tail1289_)))
                        (_recur1264_ _rest1286_)))))
            (if (let () (declare (not safe)) (##pair? _lst12671275_))
                (let ((_hd12721294_
                       (let () (declare (not safe)) (##car _lst12671275_)))
                      (_tl12731296_
                       (let () (declare (not safe)) (##cdr _lst12671275_))))
                  (let* ((_hd1299_ _hd12721294_) (_rest1301_ _tl12731296_))
                    (_K12711291_ _rest1301_ _hd1299_)))
                (_else12691283_))))))
    (define filter-map1
      (lambda (_f1216_ _lst1217_)
        (let _recur1219_ ((_rest1221_ _lst1217_))
          (let* ((_rest12221230_ _rest1221_)
                 (_E12251234_
                  (lambda () (error '"No clause matching" _rest12221230_)))
                 (_else12241238_ (lambda () '()))
                 (_K12261249_
                  (lambda (_rest1241_ _x1242_)
                    (let ((_$e1244_ (_f1216_ _x1242_)))
                      (if _$e1244_
                          ((lambda (_r1247_)
                             (cons _r1247_ (_recur1219_ _rest1241_)))
                           _$e1244_)
                          (_recur1219_ _rest1241_))))))
            (if (let () (declare (not safe)) (##pair? _rest12221230_))
                (let ((_hd12271252_
                       (let () (declare (not safe)) (##car _rest12221230_)))
                      (_tl12281254_
                       (let () (declare (not safe)) (##cdr _rest12221230_))))
                  (let* ((_x1257_ _hd12271252_) (_rest1259_ _tl12281254_))
                    (_K12261249_ _rest1259_ _x1257_)))
                (_else12241238_))))))
    (define filter-map2
      (lambda (_f1136_ _lst11137_ _lst21138_)
        (let _recur1140_ ((_rest11142_ _lst11137_) (_rest21143_ _lst21138_))
          (let* ((_rest111441152_ _rest11142_)
                 (_E11471156_
                  (lambda () (error '"No clause matching" _rest111441152_)))
                 (_else11461160_ (lambda () '()))
                 (_K11481204_
                  (lambda (_rest11163_ _x11164_)
                    (let* ((_rest211651173_ _rest21143_)
                           (_E11681177_
                            (lambda ()
                              (error '"No clause matching" _rest211651173_)))
                           (_else11671181_ (lambda () '()))
                           (_K11691192_
                            (lambda (_rest21184_ _x21185_)
                              (let ((_$e1187_ (_f1136_ _x11164_ _x21185_)))
                                (if _$e1187_
                                    ((lambda (_r1190_)
                                       (cons _r1190_
                                             (_recur1140_
                                              _rest11163_
                                              _rest21184_)))
                                     _$e1187_)
                                    (_recur1140_ _rest11163_ _rest21184_))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest211651173_))
                          (let ((_hd11701195_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest211651173_)))
                                (_tl11711197_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest211651173_))))
                            (let* ((_x21200_ _hd11701195_)
                                   (_rest21202_ _tl11711197_))
                              (_K11691192_ _rest21202_ _x21200_)))
                          (_else11671181_))))))
            (if (let () (declare (not safe)) (##pair? _rest111441152_))
                (let ((_hd11491207_
                       (let () (declare (not safe)) (##car _rest111441152_)))
                      (_tl11501209_
                       (let () (declare (not safe)) (##cdr _rest111441152_))))
                  (let* ((_x11212_ _hd11491207_) (_rest11214_ _tl11501209_))
                    (_K11481204_ _rest11214_ _x11212_)))
                (_else11461160_))))))
    (define filter-map
      (lambda _g2233_
        (let ((_g2232_ (let () (declare (not safe)) (##length _g2233_))))
          (cond ((let () (declare (not safe)) (##fx= _g2232_ 2))
                 (apply filter-map1 _g2233_))
                ((let () (declare (not safe)) (##fx= _g2232_ 3))
                 (apply filter-map2 _g2233_))
                ((let () (declare (not safe)) (##fx>= _g2232_ 3))
                 (apply filter-map* _g2233_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g2233_))))))
    (define filter-map*
      (lambda (_f1112_ . _rest1113_)
        (let _recur1115_ ((_rest1117_ _rest1113_))
          (if (andmap1 pair? _rest1117_)
              (let ((_$e1119_ (apply _f1112_ (map car _rest1117_))))
                (if _$e1119_
                    ((lambda (_r1122_)
                       (cons _r1122_ (_recur1115_ (map cdr _rest1117_))))
                     _$e1119_)
                    (_recur1115_ (map cdr _rest1117_))))
              '()))))
    (define iota
      (let ((_opt-lambda10781094_
             (lambda (_count1080_ _start1081_ _step1082_)
               (if (fixnum? _count1080_)
                   '#!void
                   (error '"expected fixnum" _count1080_))
               (if (number? _start1081_)
                   '#!void
                   (error '"expected number" _start1081_))
               (if (number? _step1082_)
                   '#!void
                   (error '"expected number" _step1082_))
               (let ((_root1084_ (cons '#f '())))
                 (let _lp1086_ ((_i1088_ '0)
                                (_x1089_ _start1081_)
                                (_tl1090_ _root1084_))
                   (if (let ()
                         (declare (not safe))
                         (##fx< _i1088_ _count1080_))
                       (let ((_tl*1092_ (cons _x1089_ '())))
                         (let ()
                           (declare (not safe))
                           (##set-cdr! _tl1090_ _tl*1092_))
                         (_lp1086_
                          (let () (declare (not safe)) (##fx+ _i1088_ '1))
                          (+ _x1089_ _step1082_)
                          _tl*1092_))
                       (let () (declare (not safe)) (##cdr _root1084_))))))))
        (lambda _g2235_
          (let ((_g2234_ (let () (declare (not safe)) (##length _g2235_))))
            (cond ((let () (declare (not safe)) (##fx= _g2234_ 1))
                   (apply (lambda (_count1097_)
                            (let* ((_start1099_ '0) (_step1101_ '1))
                              (_opt-lambda10781094_
                               _count1097_
                               _start1099_
                               _step1101_)))
                          _g2235_))
                  ((let () (declare (not safe)) (##fx= _g2234_ 2))
                   (apply (lambda (_count1103_ _start1104_)
                            (let ((_step1106_ '1))
                              (_opt-lambda10781094_
                               _count1103_
                               _start1104_
                               _step1106_)))
                          _g2235_))
                  ((let () (declare (not safe)) (##fx= _g2234_ 3))
                   (apply _opt-lambda10781094_ _g2235_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    iota
                    _g2235_)))))))
    (define last-pair
      (lambda (_lst1054_)
        (let* ((_lst10551062_ _lst1054_)
               (_E10571066_
                (lambda () (error '"No clause matching" _lst10551062_)))
               (_K10581071_
                (lambda (_rest1069_)
                  (if (pair? _rest1069_) (last-pair _rest1069_) _lst1054_))))
          (if (let () (declare (not safe)) (##pair? _lst10551062_))
              (let* ((_tl10601074_
                      (let () (declare (not safe)) (##cdr _lst10551062_)))
                     (_rest1077_ _tl10601074_))
                (_K10581071_ _rest1077_))
              (_E10571066_)))))
    (define last (lambda (_lst1052_) (car (last-pair _lst1052_))))
    (define assgetq
      (let ((_opt-lambda10281040_
             (lambda (_key1030_ _lst1032_ _default1034_)
               (let ((_$e1037_
                      (if (pair? _lst1032_) (assq _key1030_ _lst1032_) '#f)))
                 (if _$e1037_
                     (cdr _$e1037_)
                     (if (procedure? _default1034_)
                         (_default1034_ _key1030_)
                         _default1034_))))))
        (lambda _g2237_
          (let ((_g2236_ (let () (declare (not safe)) (##length _g2237_))))
            (cond ((let () (declare (not safe)) (##fx= _g2236_ 2))
                   (apply (lambda (_key1043_ _lst1044_)
                            (let ((_default1046_ '#f))
                              (_opt-lambda10281040_
                               _key1043_
                               _lst1044_
                               _default1046_)))
                          _g2237_))
                  ((let () (declare (not safe)) (##fx= _g2236_ 3))
                   (apply _opt-lambda10281040_ _g2237_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    assgetq
                    _g2237_)))))))
    (define assgetv
      (let ((_opt-lambda10051017_
             (lambda (_key1007_ _lst1009_ _default1011_)
               (let ((_$e1014_
                      (if (pair? _lst1009_) (assv _key1007_ _lst1009_) '#f)))
                 (if _$e1014_
                     (cdr _$e1014_)
                     (if (procedure? _default1011_)
                         (_default1011_ _key1007_)
                         _default1011_))))))
        (lambda _g2239_
          (let ((_g2238_ (let () (declare (not safe)) (##length _g2239_))))
            (cond ((let () (declare (not safe)) (##fx= _g2238_ 2))
                   (apply (lambda (_key1020_ _lst1021_)
                            (let ((_default1023_ '#f))
                              (_opt-lambda10051017_
                               _key1020_
                               _lst1021_
                               _default1023_)))
                          _g2239_))
                  ((let () (declare (not safe)) (##fx= _g2238_ 3))
                   (apply _opt-lambda10051017_ _g2239_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    assgetv
                    _g2239_)))))))
    (define assget
      (let ((_opt-lambda982994_
             (lambda (_key984_ _lst986_ _default988_)
               (let ((_$e991_ (if (pair? _lst986_)
                                  (assoc _key984_ _lst986_)
                                  '#f)))
                 (if _$e991_
                     (cdr _$e991_)
                     (if (procedure? _default988_)
                         (_default988_ _key984_)
                         _default988_))))))
        (lambda _g2241_
          (let ((_g2240_ (let () (declare (not safe)) (##length _g2241_))))
            (cond ((let () (declare (not safe)) (##fx= _g2240_ 2))
                   (apply (lambda (_key997_ _lst998_)
                            (let ((_default1000_ '#f))
                              (_opt-lambda982994_
                               _key997_
                               _lst998_
                               _default1000_)))
                          _g2241_))
                  ((let () (declare (not safe)) (##fx= _g2240_ 3))
                   (apply _opt-lambda982994_ _g2241_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    assget
                    _g2241_)))))))
    (define pgetq
      (let ((_opt-lambda911971_
             (lambda (_key913_ _lst915_ _default917_)
               (let _lp920_ ((_rest923_ _lst915_))
                 (let* ((_rest925935_ _rest923_)
                        (_E928939_
                         (lambda ()
                           (error '"No clause matching" _rest925935_)))
                        (_else927943_
                         (lambda ()
                           (if (procedure? _default917_)
                               (_default917_ _key913_)
                               _default917_)))
                        (_K929952_
                         (lambda (_rest946_ _v947_ _k949_)
                           (if (eq? _k949_ _key913_)
                               _v947_
                               (_lp920_ _rest946_)))))
                   (if (let () (declare (not safe)) (##pair? _rest925935_))
                       (let ((_hd930955_
                              (let ()
                                (declare (not safe))
                                (##car _rest925935_)))
                             (_tl931957_
                              (let ()
                                (declare (not safe))
                                (##cdr _rest925935_))))
                         (let ((_k960_ _hd930955_))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _tl931957_))
                               (let ((_hd932962_
                                      (let ()
                                        (declare (not safe))
                                        (##car _tl931957_)))
                                     (_tl933964_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _tl931957_))))
                                 (let* ((_v967_ _hd932962_)
                                        (_rest969_ _tl933964_))
                                   (_K929952_ _rest969_ _v967_ _k960_)))
                               (_else927943_))))
                       (_else927943_)))))))
        (lambda _g2243_
          (let ((_g2242_ (let () (declare (not safe)) (##length _g2243_))))
            (cond ((let () (declare (not safe)) (##fx= _g2242_ 2))
                   (apply (lambda (_key974_ _lst975_)
                            (let ((_default977_ '#f))
                              (_opt-lambda911971_
                               _key974_
                               _lst975_
                               _default977_)))
                          _g2243_))
                  ((let () (declare (not safe)) (##fx= _g2242_ 3))
                   (apply _opt-lambda911971_ _g2243_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    pgetq
                    _g2243_)))))))
    (define pgetv
      (let ((_opt-lambda840900_
             (lambda (_key842_ _lst844_ _default846_)
               (let _lp849_ ((_rest852_ _lst844_))
                 (let* ((_rest854864_ _rest852_)
                        (_E857868_
                         (lambda ()
                           (error '"No clause matching" _rest854864_)))
                        (_else856872_
                         (lambda ()
                           (if (procedure? _default846_)
                               (_default846_ _key842_)
                               _default846_)))
                        (_K858881_
                         (lambda (_rest875_ _v876_ _k878_)
                           (if (eqv? _k878_ _key842_)
                               _v876_
                               (_lp849_ _rest875_)))))
                   (if (let () (declare (not safe)) (##pair? _rest854864_))
                       (let ((_hd859884_
                              (let ()
                                (declare (not safe))
                                (##car _rest854864_)))
                             (_tl860886_
                              (let ()
                                (declare (not safe))
                                (##cdr _rest854864_))))
                         (let ((_k889_ _hd859884_))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _tl860886_))
                               (let ((_hd861891_
                                      (let ()
                                        (declare (not safe))
                                        (##car _tl860886_)))
                                     (_tl862893_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _tl860886_))))
                                 (let* ((_v896_ _hd861891_)
                                        (_rest898_ _tl862893_))
                                   (_K858881_ _rest898_ _v896_ _k889_)))
                               (_else856872_))))
                       (_else856872_)))))))
        (lambda _g2245_
          (let ((_g2244_ (let () (declare (not safe)) (##length _g2245_))))
            (cond ((let () (declare (not safe)) (##fx= _g2244_ 2))
                   (apply (lambda (_key903_ _lst904_)
                            (let ((_default906_ '#f))
                              (_opt-lambda840900_
                               _key903_
                               _lst904_
                               _default906_)))
                          _g2245_))
                  ((let () (declare (not safe)) (##fx= _g2244_ 3))
                   (apply _opt-lambda840900_ _g2245_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    pgetv
                    _g2245_)))))))
    (define pget
      (let ((_opt-lambda769829_
             (lambda (_key771_ _lst773_ _default775_)
               (let _lp778_ ((_rest781_ _lst773_))
                 (let* ((_rest783793_ _rest781_)
                        (_E786797_
                         (lambda ()
                           (error '"No clause matching" _rest783793_)))
                        (_else785801_
                         (lambda ()
                           (if (procedure? _default775_)
                               (_default775_ _key771_)
                               _default775_)))
                        (_K787810_
                         (lambda (_rest804_ _v805_ _k807_)
                           (if (equal? _k807_ _key771_)
                               _v805_
                               (_lp778_ _rest804_)))))
                   (if (let () (declare (not safe)) (##pair? _rest783793_))
                       (let ((_hd788813_
                              (let ()
                                (declare (not safe))
                                (##car _rest783793_)))
                             (_tl789815_
                              (let ()
                                (declare (not safe))
                                (##cdr _rest783793_))))
                         (let ((_k818_ _hd788813_))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _tl789815_))
                               (let ((_hd790820_
                                      (let ()
                                        (declare (not safe))
                                        (##car _tl789815_)))
                                     (_tl791822_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _tl789815_))))
                                 (let* ((_v825_ _hd790820_)
                                        (_rest827_ _tl791822_))
                                   (_K787810_ _rest827_ _v825_ _k818_)))
                               (_else785801_))))
                       (_else785801_)))))))
        (lambda _g2247_
          (let ((_g2246_ (let () (declare (not safe)) (##length _g2247_))))
            (cond ((let () (declare (not safe)) (##fx= _g2246_ 2))
                   (apply (lambda (_key832_ _lst833_)
                            (let ((_default835_ '#f))
                              (_opt-lambda769829_
                               _key832_
                               _lst833_
                               _default835_)))
                          _g2247_))
                  ((let () (declare (not safe)) (##fx= _g2246_ 3))
                   (apply _opt-lambda769829_ _g2247_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    pget
                    _g2247_)))))))
    (define find
      (lambda (_pred764_ _lst765_)
        (let ((_$e767_ (memf _pred764_ _lst765_)))
          (if _$e767_ (car _$e767_) '#f))))
    (define memf
      (lambda (_proc724_ _lst725_)
        (let _lp727_ ((_rest729_ _lst725_))
          (let* ((_rest730738_ _rest729_)
                 (_E733742_
                  (lambda () (error '"No clause matching" _rest730738_)))
                 (_else732746_ (lambda () '#f))
                 (_K734752_
                  (lambda (_tl749_ _hd750_)
                    (if (_proc724_ _hd750_) _rest729_ (_lp727_ _tl749_)))))
            (if (let () (declare (not safe)) (##pair? _rest730738_))
                (let ((_hd735755_
                       (let () (declare (not safe)) (##car _rest730738_)))
                      (_tl736757_
                       (let () (declare (not safe)) (##cdr _rest730738_))))
                  (let* ((_hd760_ _hd735755_) (_tl762_ _tl736757_))
                    (_K734752_ _tl762_ _hd760_)))
                (_else732746_))))))
    (define remove1
      (lambda (_el677_ _lst679_)
        (let _lp682_ ((_rest685_ _lst679_) (_r687_ '()))
          (let* ((_rest689697_ _rest685_)
                 (_E692701_
                  (lambda () (error '"No clause matching" _rest689697_)))
                 (_else691705_ (lambda () _lst679_))
                 (_K693712_
                  (lambda (_rest708_ _hd709_)
                    (if (equal? _el677_ _hd709_)
                        (foldl1 cons _rest708_ _r687_)
                        (_lp682_ _rest708_ (cons _hd709_ _r687_))))))
            (if (let () (declare (not safe)) (##pair? _rest689697_))
                (let ((_hd694715_
                       (let () (declare (not safe)) (##car _rest689697_)))
                      (_tl695717_
                       (let () (declare (not safe)) (##cdr _rest689697_))))
                  (let* ((_hd720_ _hd694715_) (_rest722_ _tl695717_))
                    (_K693712_ _rest722_ _hd720_)))
                (_else691705_))))))
    (define remv
      (lambda (_el630_ _lst632_)
        (let _lp635_ ((_rest638_ _lst632_) (_r640_ '()))
          (let* ((_rest642650_ _rest638_)
                 (_E645654_
                  (lambda () (error '"No clause matching" _rest642650_)))
                 (_else644658_ (lambda () _lst632_))
                 (_K646665_
                  (lambda (_rest661_ _hd662_)
                    (if (eqv? _el630_ _hd662_)
                        (foldl1 cons _rest661_ _r640_)
                        (_lp635_ _rest661_ (cons _hd662_ _r640_))))))
            (if (let () (declare (not safe)) (##pair? _rest642650_))
                (let ((_hd647668_
                       (let () (declare (not safe)) (##car _rest642650_)))
                      (_tl648670_
                       (let () (declare (not safe)) (##cdr _rest642650_))))
                  (let* ((_hd673_ _hd647668_) (_rest675_ _tl648670_))
                    (_K646665_ _rest675_ _hd673_)))
                (_else644658_))))))
    (define remq
      (lambda (_el583_ _lst585_)
        (let _lp588_ ((_rest591_ _lst585_) (_r593_ '()))
          (let* ((_rest595603_ _rest591_)
                 (_E598607_
                  (lambda () (error '"No clause matching" _rest595603_)))
                 (_else597611_ (lambda () _lst585_))
                 (_K599618_
                  (lambda (_rest614_ _hd615_)
                    (if (eq? _el583_ _hd615_)
                        (foldl1 cons _rest614_ _r593_)
                        (_lp588_ _rest614_ (cons _hd615_ _r593_))))))
            (if (let () (declare (not safe)) (##pair? _rest595603_))
                (let ((_hd600621_
                       (let () (declare (not safe)) (##car _rest595603_)))
                      (_tl601623_
                       (let () (declare (not safe)) (##cdr _rest595603_))))
                  (let* ((_hd626_ _hd600621_) (_rest628_ _tl601623_))
                    (_K599618_ _rest628_ _hd626_)))
                (_else597611_))))))
    (define remf
      (lambda (_proc542_ _lst543_)
        (let _lp545_ ((_rest547_ _lst543_) (_r548_ '()))
          (let* ((_rest549557_ _rest547_)
                 (_E552561_
                  (lambda () (error '"No clause matching" _rest549557_)))
                 (_else551565_ (lambda () _lst543_))
                 (_K553571_
                  (lambda (_rest568_ _hd569_)
                    (if (_proc542_ _hd569_)
                        (foldl1 cons _rest568_ _r548_)
                        (_lp545_ _rest568_ (cons _hd569_ _r548_))))))
            (if (let () (declare (not safe)) (##pair? _rest549557_))
                (let ((_hd554574_
                       (let () (declare (not safe)) (##car _rest549557_)))
                      (_tl555576_
                       (let () (declare (not safe)) (##cdr _rest549557_))))
                  (let* ((_hd579_ _hd554574_) (_rest581_ _tl555576_))
                    (_K553571_ _rest581_ _hd579_)))
                (_else551565_))))))
    (define 1+ (lambda (_x540_) (+ _x540_ '1)))
    (define 1- (lambda (_x538_) (- _x538_ '1)))
    (define fx1+ (lambda (_x536_) (fx+ _x536_ '1)))
    (define fx1- (lambda (_x534_) (fx- _x534_ '1)))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define interned-symbol?
      (lambda (_x532_)
        (if (symbol? _x532_) (not (uninterned-symbol? _x532_)) '#f)))
    (define make-symbol
      (lambda _args528_
        (string->symbol
         (apply string-append
                (map (lambda (_x530_)
                       (if (string? _x530_)
                           _x530_
                           (if (symbol? _x530_)
                               (symbol->string _x530_)
                               (if (keyword? _x530_)
                                   (keyword->string _x530_)
                                   (if (number? _x530_)
                                       (number->string _x530_)
                                       (error '"cannot convert to symbol"
                                              _x530_))))))
                     _args528_)))))
    (define interned-keyword?
      (lambda (_x526_)
        (if (keyword? _x526_) (not (uninterned-keyword? _x526_)) '#f)))
    (define symbol->keyword
      (lambda (_sym524_)
        ((if (uninterned-symbol? _sym524_)
             string->uninterned-keyword
             string->keyword)
         (symbol->string _sym524_))))
    (define keyword->symbol
      (lambda (_kw522_)
        ((if (uninterned-keyword? _kw522_)
             string->uninterned-symbol
             string->symbol)
         (keyword->string _kw522_))))
    (define bytes->string
      (let ((_opt-lambda498512_
             (lambda (_bstr500_ _enc501_)
               (if (eq? _enc501_ 'UTF-8)
                   (utf8->string _bstr500_)
                   (let* ((_in503_ (open-input-u8vector
                                    (cons 'char-encoding:
                                          (cons _enc501_
                                                (cons 'init:
                                                      (cons _bstr500_ '()))))))
                          (_len505_ (u8vector-length _bstr500_))
                          (_out507_ (make-string _len505_))
                          (_n509_ (read-substring
                                   _out507_
                                   '0
                                   _len505_
                                   _in503_)))
                     (string-shrink! _out507_ _n509_)
                     _out507_)))))
        (lambda _g2249_
          (let ((_g2248_ (let () (declare (not safe)) (##length _g2249_))))
            (cond ((let () (declare (not safe)) (##fx= _g2248_ 1))
                   (apply (lambda (_bstr515_)
                            (let ((_enc517_ 'UTF-8))
                              (_opt-lambda498512_ _bstr515_ _enc517_)))
                          _g2249_))
                  ((let () (declare (not safe)) (##fx= _g2248_ 2))
                   (apply _opt-lambda498512_ _g2249_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    bytes->string
                    _g2249_)))))))
    (define string->bytes
      (let ((_opt-lambda484489_
             (lambda (_str486_ _enc487_)
               (if (eq? _enc487_ 'UTF-8)
                   (string->utf8 _str486_)
                   (substring->bytes
                    _str486_
                    '0
                    (string-length _str486_)
                    _enc487_)))))
        (lambda _g2251_
          (let ((_g2250_ (let () (declare (not safe)) (##length _g2251_))))
            (cond ((let () (declare (not safe)) (##fx= _g2250_ 1))
                   (apply (lambda (_str492_)
                            (let ((_enc494_ 'UTF-8))
                              (_opt-lambda484489_ _str492_ _enc494_)))
                          _g2251_))
                  ((let () (declare (not safe)) (##fx= _g2250_ 2))
                   (apply _opt-lambda484489_ _g2251_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    string->bytes
                    _g2251_)))))))
    (define substring->bytes
      (let ((_opt-lambda462471_
             (lambda (_str464_ _start465_ _end466_ _enc467_)
               (if (eq? _enc467_ 'UTF-8)
                   (string->utf8 _str464_ _start465_ _end466_)
                   (let ((_out469_
                          (open-output-u8vector
                           (cons 'char-encoding: (cons _enc467_ '())))))
                     (write-substring _str464_ _start465_ _end466_ _out469_)
                     (get-output-u8vector _out469_))))))
        (lambda _g2253_
          (let ((_g2252_ (let () (declare (not safe)) (##length _g2253_))))
            (cond ((let () (declare (not safe)) (##fx= _g2252_ 3))
                   (apply (lambda (_str474_ _start475_ _end476_)
                            (let ((_enc478_ 'UTF-8))
                              (_opt-lambda462471_
                               _str474_
                               _start475_
                               _end476_
                               _enc478_)))
                          _g2253_))
                  ((let () (declare (not safe)) (##fx= _g2252_ 4))
                   (apply _opt-lambda462471_ _g2253_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    substring->bytes
                    _g2253_)))))))
    (define string-empty?
      (lambda (_str461_)
        (let ((__tmp2254 (string-length _str461_)))
          (declare (not safe))
          (##fxzero? __tmp2254))))
    (define string-prefix?
      (lambda (_prefix451_ _str452_)
        (let ((_str-len454_ (string-length _str452_))
              (_prefix-len455_ (string-length _prefix451_)))
          (if (let ()
                (declare (not safe))
                (##fx<= _prefix-len455_ _str-len454_))
              (let _lp457_ ((_i459_ '0))
                (if (let ()
                      (declare (not safe))
                      (##fx< _i459_ _prefix-len455_))
                    (if (eq? (let ()
                               (declare (not safe))
                               (##string-ref _str452_ _i459_))
                             (let ()
                               (declare (not safe))
                               (##string-ref _prefix451_ _i459_)))
                        (_lp457_ (let ()
                                   (declare (not safe))
                                   (##fx+ _i459_ '1)))
                        '#f)
                    '#t))
              '#f))))
    (define string-index
      (let ((_opt-lambda427439_
             (lambda (_str429_ _char430_ _start431_)
               (let ((_len433_ (string-length _str429_)))
                 (let _lp435_ ((_k437_ _start431_))
                   (if (let () (declare (not safe)) (##fx< _k437_ _len433_))
                       (if (eq? _char430_
                                (let ()
                                  (declare (not safe))
                                  (##string-ref _str429_ _k437_)))
                           _k437_
                           (_lp435_ (let ()
                                      (declare (not safe))
                                      (##fx+ _k437_ '1))))
                       '#f))))))
        (lambda _g2256_
          (let ((_g2255_ (let () (declare (not safe)) (##length _g2256_))))
            (cond ((let () (declare (not safe)) (##fx= _g2255_ 2))
                   (apply (lambda (_str442_ _char443_)
                            (let ((_start445_ '0))
                              (_opt-lambda427439_
                               _str442_
                               _char443_
                               _start445_)))
                          _g2256_))
                  ((let () (declare (not safe)) (##fx= _g2255_ 3))
                   (apply _opt-lambda427439_ _g2256_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    string-index
                    _g2256_)))))))
    (define string-rindex
      (let ((_opt-lambda398416_
             (lambda (_str400_ _char401_ _start402_)
               (let* ((_len404_ (string-length _str400_))
                      (_start409_
                       (let ((_$e406_ _start402_))
                         (if _$e406_
                             _$e406_
                             (let ()
                               (declare (not safe))
                               (##fx- _len404_ '1))))))
                 (let _lp412_ ((_k414_ _start409_))
                   (if (let () (declare (not safe)) (##fx>= _k414_ '0))
                       (if (eq? _char401_
                                (let ()
                                  (declare (not safe))
                                  (##string-ref _str400_ _k414_)))
                           _k414_
                           (_lp412_ (let ()
                                      (declare (not safe))
                                      (##fx- _k414_ '1))))
                       '#f))))))
        (lambda _g2258_
          (let ((_g2257_ (let () (declare (not safe)) (##length _g2258_))))
            (cond ((let () (declare (not safe)) (##fx= _g2257_ 2))
                   (apply (lambda (_str419_ _char420_)
                            (let ((_start422_ '#f))
                              (_opt-lambda398416_
                               _str419_
                               _char420_
                               _start422_)))
                          _g2258_))
                  ((let () (declare (not safe)) (##fx= _g2257_ 3))
                   (apply _opt-lambda398416_ _g2258_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    string-rindex
                    _g2258_)))))))
    (define string-split
      (lambda (_str384_ _char385_)
        (let ((_len387_ (string-length _str384_)))
          (let _lp389_ ((_start391_ '0) (_r392_ '()))
            (let ((_$e394_ (string-index _str384_ _char385_ _start391_)))
              (if _$e394_
                  ((lambda (_end397_)
                     (_lp389_ (let () (declare (not safe)) (##fx+ _end397_ '1))
                              (cons (let ()
                                      (declare (not safe))
                                      (##substring
                                       _str384_
                                       _start391_
                                       _end397_))
                                    _r392_)))
                   _$e394_)
                  (if (let () (declare (not safe)) (##fx< _start391_ _len387_))
                      (foldl cons
                             (list (let ()
                                     (declare (not safe))
                                     (##substring
                                      _str384_
                                      _start391_
                                      _len387_)))
                             _r392_)
                      (reverse _r392_))))))))
    (define string-join
      (lambda (_strs289_ _join290_)
        (letrec ((_join-length292_
                  (lambda (_strs343_ _jlen344_)
                    (let _lp346_ ((_rest348_ _strs343_) (_len349_ '0))
                      (let* ((_rest350358_ _rest348_)
                             (_E353362_
                              (lambda ()
                                (error '"No clause matching" _rest350358_)))
                             (_else352366_ (lambda () '0))
                             (_K354372_
                              (lambda (_rest369_ _hd370_)
                                (if (string? _hd370_)
                                    (if (pair? _rest369_)
                                        (_lp346_ _rest369_
                                                 (let ((__tmp2259
                                                        (let ()
                                                          (declare (not safe))
                                                          (##string-length
                                                           _hd370_))))
                                                   (declare (not safe))
                                                   (##fx+ __tmp2259
                                                          _jlen344_
                                                          _len349_)))
                                        (let ((__tmp2260
                                               (let ()
                                                 (declare (not safe))
                                                 (##string-length _hd370_))))
                                          (declare (not safe))
                                          (##fx+ __tmp2260 _len349_)))
                                    (error '"expected string" _hd370_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest350358_))
                            (let ((_hd355375_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest350358_)))
                                  (_tl356377_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest350358_))))
                              (let* ((_hd380_ _hd355375_)
                                     (_rest382_ _tl356377_))
                                (_K354372_ _rest382_ _hd380_)))
                            (_else352366_)))))))
          (let* ((_join294_
                  (if (char? _join290_)
                      (string _join290_)
                      (if (string? _join290_)
                          _join290_
                          (error '"expected string or char" _join290_))))
                 (_jlen296_
                  (let () (declare (not safe)) (##string-length _join294_)))
                 (_olen298_ (_join-length292_ _strs289_ _jlen296_))
                 (_ostr300_ (make-string _olen298_)))
            (let _lp303_ ((_rest305_ _strs289_) (_k306_ '0))
              (let* ((_rest307315_ _rest305_)
                     (_E310319_
                      (lambda () (error '"No clause matching" _rest307315_)))
                     (_else309323_ (lambda () '""))
                     (_K311331_
                      (lambda (_rest326_ _hd327_)
                        (let ((_hdlen329_
                               (let ()
                                 (declare (not safe))
                                 (##string-length _hd327_))))
                          (if (pair? _rest326_)
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _hd327_
                                   '0
                                   _hdlen329_
                                   _ostr300_
                                   _k306_))
                                (let ((__tmp2261
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _k306_ _hdlen329_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _join294_
                                   '0
                                   _jlen296_
                                   _ostr300_
                                   __tmp2261))
                                (_lp303_ _rest326_
                                         (let ()
                                           (declare (not safe))
                                           (##fx+ _k306_
                                                  _hdlen329_
                                                  _jlen296_))))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _hd327_
                                   '0
                                   _hdlen329_
                                   _ostr300_
                                   _k306_))
                                _ostr300_))))))
                (if (let () (declare (not safe)) (##pair? _rest307315_))
                    (let ((_hd312334_
                           (let () (declare (not safe)) (##car _rest307315_)))
                          (_tl313336_
                           (let () (declare (not safe)) (##cdr _rest307315_))))
                      (let* ((_hd339_ _hd312334_) (_rest341_ _tl313336_))
                        (_K311331_ _rest341_ _hd339_)))
                    (_else309323_))))))))))
