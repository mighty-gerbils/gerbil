(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<MOP>$<MOP:1>[1]#generate-typedef|
    (lambda (_stx17755_ _struct?17757_)
      (letrec ((_wrap17759_
                (lambda (_e-stx19360_)
                  (gx#stx-wrap-source
                   _e-stx19360_
                   (gx#stx-source _stx17755_))))
               (_slotify17761_
                (lambda (_field19225_ _off19227_)
                  (let* ((___stx3872538726_ _field19225_)
                         (_g1923019257_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx3872538726_))))
                    (let ((___kont3872838729_
                           (lambda (_L19341_ _L19343_)
                             (cons _off19227_
                                   (cons _L19343_ (cons _L19341_ '())))))
                          (___kont3873038731_
                           (lambda (_L19294_ _L19296_ _L19297_)
                             (cons _off19227_
                                   (cons _L19296_ (cons _L19294_ '()))))))
                      (if (gx#stx-pair? ___stx3872538726_)
                          (let ((_e1923419321_
                                 (gx#syntax-e ___stx3872538726_)))
                            (let ((_tl1923619328_ (##cdr _e1923419321_))
                                  (_hd1923519325_ (##car _e1923419321_)))
                              (if (gx#stx-pair? _tl1923619328_)
                                  (let ((_e1923719331_
                                         (gx#syntax-e _tl1923619328_)))
                                    (let ((_tl1923919338_
                                           (##cdr _e1923719331_))
                                          (_hd1923819335_
                                           (##car _e1923719331_)))
                                      (if (gx#stx-null? _tl1923919338_)
                                          (___kont3872838729_
                                           _hd1923819335_
                                           _hd1923519325_)
                                          (if (gx#stx-pair? _tl1923919338_)
                                              (let ((_e1924919284_
                                                     (gx#syntax-e
                                                      _tl1923919338_)))
                                                (let ((_tl1925119291_
                                                       (##cdr _e1924919284_))
                                                      (_hd1925019288_
                                                       (##car _e1924919284_)))
                                                  (if (gx#stx-null?
                                                       _tl1925119291_)
                                                      (___kont3873038731_
                                                       _hd1925019288_
                                                       _hd1923819335_
                                                       _hd1923519325_)
                                                      (_g1923019257_))))
                                              (_g1923019257_)))))
                                  (_g1923019257_))))
                          (_g1923019257_))))))
               (_field-id17762_
                (lambda (_field19091_)
                  (let* ((___stx3876938770_ _field19091_)
                         (_g1909519122_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx3876938770_))))
                    (let ((___kont3877238773_ (lambda (_L19206_ _L19208_) ':))
                          (___kont3877438775_
                           (lambda (_L19159_ _L19161_ _L19162_) _L19162_)))
                      (if (gx#stx-pair? ___stx3876938770_)
                          (let ((_e1909919186_
                                 (gx#syntax-e ___stx3876938770_)))
                            (let ((_tl1910119193_ (##cdr _e1909919186_))
                                  (_hd1910019190_ (##car _e1909919186_)))
                              (if (gx#stx-pair? _tl1910119193_)
                                  (let ((_e1910219196_
                                         (gx#syntax-e _tl1910119193_)))
                                    (let ((_tl1910419203_
                                           (##cdr _e1910219196_))
                                          (_hd1910319200_
                                           (##car _e1910219196_)))
                                      (if (gx#stx-null? _tl1910419203_)
                                          (___kont3877238773_
                                           _hd1910319200_
                                           _hd1910019190_)
                                          (if (gx#stx-pair? _tl1910419203_)
                                              (let ((_e1911419149_
                                                     (gx#syntax-e
                                                      _tl1910419203_)))
                                                (let ((_tl1911619156_
                                                       (##cdr _e1911419149_))
                                                      (_hd1911519153_
                                                       (##car _e1911419149_)))
                                                  (if (gx#stx-null?
                                                       _tl1911619156_)
                                                      (___kont3877438775_
                                                       _hd1911519153_
                                                       _hd1910319200_
                                                       _hd1910019190_)
                                                      (_g1909519122_))))
                                              (_g1909519122_)))))
                                  (_g1909519122_))))
                          (_g1909519122_))))))
               (_struct-opt?17763_
                (lambda (_key19088_)
                  (memq (gx#stx-e _key19088_)
                        '(fields: id: name: plist: constructor: unchecked:))))
               (_class-opt?17764_
                (lambda (_key19085_)
                  (memq (gx#stx-e _key19085_)
                        '(slots: id: name: plist: constructor: unchecked:))))
               (_module-type-id17765_
                (lambda (_type-t19072_)
                  (let ((_$e19075_
                         (gx#module-context-ns (gx#current-expander-context))))
                    (if _$e19075_
                        ((lambda (_ns19079_)
                           (gx#stx-identifier
                            _type-t19072_
                            _ns19079_
                            '"#"
                            _type-t19072_))
                         _$e19075_)
                        (let ((_mid19082_
                               (gx#expander-context-id
                                (gx#current-expander-context))))
                          (gx#stx-identifier
                           _type-t19072_
                           _mid19082_
                           '"#"
                           _type-t19072_)))))))
        (let* ((_g1776717794_
                (lambda (_g1776817790_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1776817790_)))
               (_g1776619068_
                (lambda (_g1776817798_)
                  (if (gx#stx-pair? _g1776817798_)
                      (let ((_e1777417801_ (gx#syntax-e _g1776817798_)))
                        (let ((_hd1777517805_ (##car _e1777417801_))
                              (_tl1777617808_ (##cdr _e1777417801_)))
                          (if (gx#stx-pair? _tl1777617808_)
                              (let ((_e1777717811_
                                     (gx#syntax-e _tl1777617808_)))
                                (let ((_hd1777817815_ (##car _e1777717811_))
                                      (_tl1777917818_ (##cdr _e1777717811_)))
                                  (if (gx#stx-pair? _tl1777917818_)
                                      (let ((_e1778017821_
                                             (gx#syntax-e _tl1777917818_)))
                                        (let ((_hd1778117825_
                                               (##car _e1778017821_))
                                              (_tl1778217828_
                                               (##cdr _e1778017821_)))
                                          (if (gx#stx-pair? _tl1778217828_)
                                              (let ((_e1778317831_
                                                     (gx#syntax-e
                                                      _tl1778217828_)))
                                                (let ((_hd1778417835_
                                                       (##car _e1778317831_))
                                                      (_tl1778517838_
                                                       (##cdr _e1778317831_)))
                                                  (if (gx#stx-pair?
                                                       _tl1778517838_)
                                                      (let ((_e1778617841_
                                                             (gx#syntax-e
                                                              _tl1778517838_)))
                                                        (let ((_hd1778717845_
                                                               (##car _e1778617841_))
                                                              (_tl1778817848_
                                                               (##cdr _e1778617841_)))
                                                          ((lambda (_L17851_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L17853_
                            _L17854_
                            _L17855_
                            _L17856_)
                     (if (and (gx#identifier? _L17856_)
                              (or (gx#identifier? _L17854_)
                                  (gx#stx-false? _L17854_))
                              (gx#identifier? _L17853_)
                              (gx#stx-plist?
                               _L17851_
                               (if _struct?17757_
                                   _struct-opt?17763_
                                   _class-opt?17764_)))
                         (let* ((_els17890_
                                 (let ((_$e17886_
                                        (gx#stx-getq
                                         (if _struct?17757_ 'fields: 'slots:)
                                         _L17851_)))
                                   (if _$e17886_ _$e17886_ '())))
                                (_g1789317924_
                                 (lambda (_g1789417920_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1789417920_)))
                                (_g1789219064_
                                 (lambda (_g1789417928_)
                                   (if (gx#stx-pair? _g1789417928_)
                                       (let ((_e1790117931_
                                              (gx#syntax-e _g1789417928_)))
                                         (let ((_hd1790217935_
                                                (##car _e1790117931_))
                                               (_tl1790317938_
                                                (##cdr _e1790117931_)))
                                           (if (gx#stx-pair? _tl1790317938_)
                                               (let ((_e1790417941_
                                                      (gx#syntax-e
                                                       _tl1790317938_)))
                                                 (let ((_hd1790517945_
                                                        (##car _e1790417941_))
                                                       (_tl1790617948_
                                                        (##cdr _e1790417941_)))
                                                   (if (gx#stx-pair?
                                                        _tl1790617948_)
                                                       (let ((_e1790717951_
                                                              (gx#syntax-e
                                                               _tl1790617948_)))
                                                         (let ((_hd1790817955_
                                                                (##car _e1790717951_))
                                                               (_tl1790917958_
                                                                (##cdr _e1790717951_)))
                                                           (if (gx#stx-pair?
                                                                _tl1790917958_)
                                                               (let ((_e1791017961_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl1790917958_)))
                         (let ((_hd1791117965_ (##car _e1791017961_))
                               (_tl1791217968_ (##cdr _e1791017961_)))
                           (if (gx#stx-pair? _tl1791217968_)
                               (let ((_e1791317971_
                                      (gx#syntax-e _tl1791217968_)))
                                 (let ((_hd1791417975_ (##car _e1791317971_))
                                       (_tl1791517978_ (##cdr _e1791317971_)))
                                   (if (gx#stx-pair? _tl1791517978_)
                                       (let ((_e1791617981_
                                              (gx#syntax-e _tl1791517978_)))
                                         (let ((_hd1791717985_
                                                (##car _e1791617981_))
                                               (_tl1791817988_
                                                (##cdr _e1791617981_)))
                                           (if (gx#stx-null? _tl1791817988_)
                                               ((lambda (_L17991_
                                                         _L17993_
                                                         _L17994_
                                                         _L17995_
                                                         _L17996_
                                                         _L17997_)
                                                  (let ()
                                                    (let* ((_g1802618034_
                                                            (lambda (_g1802718030_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g1802718030_)))
                                                           (_g1802519056_
                                                            (lambda (_g1802718038_)
                                                              ((lambda (_L18041_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g1805418062_
                                   (lambda (_g1805518058_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1805518058_)))
                                  (_g1805319048_
                                   (lambda (_g1805518066_)
                                     ((lambda (_L18069_)
                                        (let ()
                                          (let* ((_g1808218090_
                                                  (lambda (_g1808318086_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1808318086_)))
                                                 (_g1808119040_
                                                  (lambda (_g1808318094_)
                                                    ((lambda (_L18097_)
                                                       (let ()
                                                         (let* ((_g1811018118_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1811118114_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1811118114_)))
                        (_g1810919036_
                         (lambda (_g1811118122_)
                           ((lambda (_L18125_)
                              (let ()
                                (let* ((_g1813818146_
                                        (lambda (_g1813918142_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g1813918142_)))
                                       (_g1813718752_
                                        (lambda (_g1813918150_)
                                          ((lambda (_L18153_)
                                             (let ()
                                               (let* ((_g1816618174_
                                                       (lambda (_g1816718170_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1816718170_)))
                                                      (_g1816518748_
                                                       (lambda (_g1816718178_)
                                                         ((lambda (_L18181_)
                                                            (let ()
                                                              (let* ((_g1819418202_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g1819518198_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1819518198_)))
                             (_g1819318744_
                              (lambda (_g1819518206_)
                                ((lambda (_L18209_)
                                   (let ()
                                     (let* ((_g1822218230_
                                             (lambda (_g1822318226_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1822318226_)))
                                            (_g1822118740_
                                             (lambda (_g1822318234_)
                                               ((lambda (_L18237_)
                                                  (let ()
                                                    (let* ((_attrs18250_
                                                            (if _struct?17757_
                                                                (gx#stx-map
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _slotify17761_
                         _els17890_
                         (iota (gx#stx-length _els17890_)))
                        _els17890_))
                   (_g1825318279_
                    (lambda (_g1825418275_)
                      (gx#raise-syntax-error '#f '"Bad syntax" _g1825418275_)))
                   (_g1825218652_
                    (lambda (_g1825418283_)
                      (if (gx#stx-pair/null? _g1825418283_)
                          (let ((_g41861_
                                 (gx#syntax-split-splice _g1825418283_ '0)))
                            (begin
                              (let ((_g41862_
                                     (if (##values? _g41861_)
                                         (##vector-length _g41861_)
                                         1)))
                                (if (not (##fx= _g41862_ 2))
                                    (error "Context expects 2 values"
                                           _g41862_)))
                              (let ((_target1825718286_
                                     (##vector-ref _g41861_ 0))
                                    (_tl1825918289_ (##vector-ref _g41861_ 1)))
                                (if (gx#stx-null? _tl1825918289_)
                                    (letrec ((_loop1826018292_
                                              (lambda (_hd1825818296_
                                                       _def-setf1826418299_
                                                       _def-getf1826518301_)
                                                (if (gx#stx-pair?
                                                     _hd1825818296_)
                                                    (let ((_e1826118304_
                                                           (gx#syntax-e
                                                            _hd1825818296_)))
                                                      (let ((_lp-hd1826218308_
                                                             (##car _e1826118304_))
                                                            (_lp-tl1826318311_
                                                             (##cdr _e1826118304_)))
                                                        (if (gx#stx-pair?
                                                             _lp-hd1826218308_)
                                                            (let ((_e1826818314_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _lp-hd1826218308_)))
                      (let ((_hd1826918318_ (##car _e1826818314_))
                            (_tl1827018321_ (##cdr _e1826818314_)))
                        (if (gx#stx-pair? _tl1827018321_)
                            (let ((_e1827118324_ (gx#syntax-e _tl1827018321_)))
                              (let ((_hd1827218328_ (##car _e1827118324_))
                                    (_tl1827318331_ (##cdr _e1827118324_)))
                                (if (gx#stx-null? _tl1827318331_)
                                    (_loop1826018292_
                                     _lp-tl1826318311_
                                     (cons _hd1827218328_ _def-setf1826418299_)
                                     (cons _hd1826918318_
                                           _def-getf1826518301_))
                                    (_g1825318279_ _g1825418283_))))
                            (_g1825318279_ _g1825418283_))))
                    (_g1825318279_ _g1825418283_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_def-setf1826618334_
                                                           (reverse _def-setf1826418299_))
                                                          (_def-getf1826718337_
                                                           (reverse _def-getf1826518301_)))
                                                      ((lambda (_L18340_
                                                                _L18342_)
                                                         (let ()
                                                           (let* ((_g1836018386_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g1836118382_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1836118382_)))
                          (_g1835918500_
                           (lambda (_g1836118390_)
                             (if (gx#stx-pair/null? _g1836118390_)
                                 (let ((_g41863_
                                        (gx#syntax-split-splice
                                         _g1836118390_
                                         '0)))
                                   (begin
                                     (let ((_g41864_
                                            (if (##values? _g41863_)
                                                (##vector-length _g41863_)
                                                1)))
                                       (if (not (##fx= _g41864_ 2))
                                           (error "Context expects 2 values"
                                                  _g41864_)))
                                     (let ((_target1836418393_
                                            (##vector-ref _g41863_ 0))
                                           (_tl1836618396_
                                            (##vector-ref _g41863_ 1)))
                                       (if (gx#stx-null? _tl1836618396_)
                                           (letrec ((_loop1836718399_
                                                     (lambda (_hd1836518403_
                                                              _def-usetf1837118406_
                                                              _def-ugetf1837218408_)
                                                       (if (gx#stx-pair?
                                                            _hd1836518403_)
                                                           (let ((_e1836818411_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd1836518403_)))
                     (let ((_lp-hd1836918415_ (##car _e1836818411_))
                           (_lp-tl1837018418_ (##cdr _e1836818411_)))
                       (if (gx#stx-pair? _lp-hd1836918415_)
                           (let ((_e1837518421_
                                  (gx#syntax-e _lp-hd1836918415_)))
                             (let ((_hd1837618425_ (##car _e1837518421_))
                                   (_tl1837718428_ (##cdr _e1837518421_)))
                               (if (gx#stx-pair? _tl1837718428_)
                                   (let ((_e1837818431_
                                          (gx#syntax-e _tl1837718428_)))
                                     (let ((_hd1837918435_
                                            (##car _e1837818431_))
                                           (_tl1838018438_
                                            (##cdr _e1837818431_)))
                                       (if (gx#stx-null? _tl1838018438_)
                                           (_loop1836718399_
                                            _lp-tl1837018418_
                                            (cons _hd1837918435_
                                                  _def-usetf1837118406_)
                                            (cons _hd1837618425_
                                                  _def-ugetf1837218408_))
                                           (_g1836018386_ _g1836118390_))))
                                   (_g1836018386_ _g1836118390_))))
                           (_g1836018386_ _g1836118390_))))
                   (let ((_def-usetf1837318441_
                          (reverse _def-usetf1837118406_))
                         (_def-ugetf1837418444_
                          (reverse _def-ugetf1837218408_)))
                     ((lambda (_L18447_ _L18449_)
                        (let ()
                          (let ()
                            (_wrap17759_
                             (cons (gx#datum->syntax '#f 'begin)
                                   (cons _L18181_
                                         (cons _L18237_
                                               (cons _L18209_
                                                     (foldr (lambda (_g1846718476_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g1846818479_)
                      (cons _g1846718476_ _g1846818479_))
                    (foldr (lambda (_g1846918482_ _g1847018485_)
                             (cons _g1846918482_ _g1847018485_))
                           (foldr (lambda (_g1847118488_ _g1847218491_)
                                    (cons _g1847118488_ _g1847218491_))
                                  (foldr (lambda (_g1847318494_ _g1847418497_)
                                           (cons _g1847318494_ _g1847418497_))
                                         '()
                                         _L18447_)
                                  _L18449_)
                           _L18340_)
                    _L18342_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      _def-usetf1837318441_
                      _def-ugetf1837418444_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop1836718399_
                                              _target1836418393_
                                              '()
                                              '()))
                                           (_g1836018386_ _g1836118390_)))))
                                 (_g1836018386_ _g1836118390_)))))
                     (_g1835918500_
                      (if (gx#stx-e (gx#stx-getq 'unchecked: _L17851_))
                          (gx#stx-map
                           (lambda (_ref18504_)
                             (let* ((_g1850718526_
                                     (lambda (_g1850818522_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1850818522_)))
                                    (_g1850618648_
                                     (lambda (_g1850818530_)
                                       (if (gx#stx-pair? _g1850818530_)
                                           (let ((_e1851218533_
                                                  (gx#syntax-e _g1850818530_)))
                                             (let ((_hd1851318537_
                                                    (##car _e1851218533_))
                                                   (_tl1851418540_
                                                    (##cdr _e1851218533_)))
                                               (if (gx#stx-pair?
                                                    _tl1851418540_)
                                                   (let ((_e1851518543_
                                                          (gx#syntax-e
                                                           _tl1851418540_)))
                                                     (let ((_hd1851618547_
                                                            (##car _e1851518543_))
                                                           (_tl1851718550_
                                                            (##cdr _e1851518543_)))
                                                       (if (gx#stx-pair?
                                                            _tl1851718550_)
                                                           (let ((_e1851818553_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl1851718550_)))
                     (let ((_hd1851918557_ (##car _e1851818553_))
                           (_tl1852018560_ (##cdr _e1851818553_)))
                       (if (gx#stx-null? _tl1852018560_)
                           ((lambda (_L18563_ _L18565_ _L18566_)
                              (let* ((_g1858418599_
                                      (lambda (_g1858518595_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g1858518595_)))
                                     (_g1858318644_
                                      (lambda (_g1858518603_)
                                        (if (gx#stx-pair? _g1858518603_)
                                            (let ((_e1858818606_
                                                   (gx#syntax-e
                                                    _g1858518603_)))
                                              (let ((_hd1858918610_
                                                     (##car _e1858818606_))
                                                    (_tl1859018613_
                                                     (##cdr _e1858818606_)))
                                                (if (gx#stx-pair?
                                                     _tl1859018613_)
                                                    (let ((_e1859118616_
                                                           (gx#syntax-e
                                                            _tl1859018613_)))
                                                      (let ((_hd1859218620_
                                                             (##car _e1859118616_))
                                                            (_tl1859318623_
                                                             (##cdr _e1859118616_)))
                                                        (if (gx#stx-null?
                                                             _tl1859318623_)
                                                            ((lambda (_L18626_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L18628_)
                       (let ()
                         (cons (_wrap17759_
                                (cons (gx#datum->syntax '#f 'def)
                                      (cons _L18628_
                                            (cons (cons _L17993_
                                                        (cons _L17856_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _L18566_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))
                               (cons (_wrap17759_
                                      (cons (gx#datum->syntax '#f 'def)
                                            (cons _L18626_
                                                  (cons (cons _L17991_
                                                              (cons _L17856_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f 'quote)
                                        (cons _L18566_ '()))
                                  '())))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))
                     _hd1859218620_
                     _hd1858918610_)
                    (_g1858418599_ _g1858518603_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1858418599_
                                                     _g1858518603_))))
                                            (_g1858418599_ _g1858518603_)))))
                                (_g1858318644_
                                 (list (gx#stx-identifier
                                        _L18565_
                                        '"&"
                                        _L18565_)
                                       (gx#stx-identifier
                                        _L18563_
                                        '"&"
                                        _L18563_)))))
                            _hd1851918557_
                            _hd1851618547_
                            _hd1851318537_)
                           (_g1850718526_ _g1850818530_))))
                   (_g1850718526_ _g1850818530_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1850718526_
                                                    _g1850818530_))))
                                           (_g1850718526_ _g1850818530_)))))
                               (_g1850618648_ _ref18504_)))
                           _attrs18250_)
                          '())))))
               _def-setf1826618334_
               _def-getf1826718337_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop1826018292_
                                       _target1825718286_
                                       '()
                                       '()))
                                    (_g1825318279_ _g1825418283_)))))
                          (_g1825318279_ _g1825418283_)))))
              (_g1825218652_
               (gx#stx-map
                (lambda (_ref18656_)
                  (let* ((_g1865918678_
                          (lambda (_g1866018674_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1866018674_)))
                         (_g1865818736_
                          (lambda (_g1866018682_)
                            (if (gx#stx-pair? _g1866018682_)
                                (let ((_e1866418685_
                                       (gx#syntax-e _g1866018682_)))
                                  (let ((_hd1866518689_ (##car _e1866418685_))
                                        (_tl1866618692_ (##cdr _e1866418685_)))
                                    (if (gx#stx-pair? _tl1866618692_)
                                        (let ((_e1866718695_
                                               (gx#syntax-e _tl1866618692_)))
                                          (let ((_hd1866818699_
                                                 (##car _e1866718695_))
                                                (_tl1866918702_
                                                 (##cdr _e1866718695_)))
                                            (if (gx#stx-pair? _tl1866918702_)
                                                (let ((_e1867018705_
                                                       (gx#syntax-e
                                                        _tl1866918702_)))
                                                  (let ((_hd1867118709_
                                                         (##car _e1867018705_))
                                                        (_tl1867218712_
                                                         (##cdr _e1867018705_)))
                                                    (if (gx#stx-null?
                                                         _tl1867218712_)
                                                        ((lambda (_L18715_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L18717_
                          _L18718_)
                   (cons (_wrap17759_
                          (cons (gx#datum->syntax '#f 'def)
                                (cons _L18717_
                                      (cons (cons _L17995_
                                                  (cons _L17856_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons _L18718_ '()))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '()))))
                         (cons (_wrap17759_
                                (cons (gx#datum->syntax '#f 'def)
                                      (cons _L18715_
                                            (cons (cons _L17994_
                                                        (cons _L17856_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _L18718_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))
                               '())))
                 _hd1867118709_
                 _hd1866818699_
                 _hd1866518689_)
                (_g1865918678_ _g1866018682_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1865918678_
                                                 _g1866018682_))))
                                        (_g1865918678_ _g1866018682_))))
                                (_g1865918678_ _g1866018682_)))))
                    (_g1865818736_ _ref18656_)))
                _attrs18250_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1822318234_))))
                                       (_g1822118740_
                                        (_wrap17759_
                                         (cons (gx#datum->syntax '#f 'def)
                                               (cons _L17853_
                                                     (cons (cons _L17996_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L17856_ '()))
                   '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _g1819518206_))))
                        (_g1819318744_
                         (if (gx#stx-false? _L17854_)
                             (cons (gx#datum->syntax '#f 'begin) '())
                             (_wrap17759_
                              (cons (gx#datum->syntax '#f 'def)
                                    (cons (cons _L17854_
                                                (gx#datum->syntax '#f '$args))
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'apply)
                                                      (cons _L17997_
                                                            (cons _L17856_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f '$args) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))))))))
                  _g1816718178_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1816518748_
                                                  (_wrap17759_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'def)
                                                         (cons _L17856_
                                                               (cons _L18153_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _g1813918150_))))
                                  (_g1813718752_
                                   (if _struct?17757_
                                       (let* ((_g1875618780_
                                               (lambda (_g1875718776_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1875718776_)))
                                              (_g1875518867_
                                               (lambda (_g1875718784_)
                                                 (if (gx#stx-pair?
                                                      _g1875718784_)
                                                     (let ((_e1876018787_
                                                            (gx#syntax-e
                                                             _g1875718784_)))
                                                       (let ((_hd1876118791_
                                                              (##car _e1876018787_))
                                                             (_tl1876218794_
                                                              (##cdr _e1876018787_)))
                                                         (if (gx#stx-pair?
                                                              _tl1876218794_)
                                                             (let ((_e1876318797_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl1876218794_)))
                       (let ((_hd1876418801_ (##car _e1876318797_))
                             (_tl1876518804_ (##cdr _e1876318797_)))
                         (if (gx#stx-pair/null? _hd1876418801_)
                             (let ((_g41865_
                                    (gx#syntax-split-splice
                                     _hd1876418801_
                                     '0)))
                               (begin
                                 (let ((_g41866_
                                        (if (##values? _g41865_)
                                            (##vector-length _g41865_)
                                            1)))
                                   (if (not (##fx= _g41866_ 2))
                                       (error "Context expects 2 values"
                                              _g41866_)))
                                 (let ((_target1876618807_
                                        (##vector-ref _g41865_ 0))
                                       (_tl1876818810_
                                        (##vector-ref _g41865_ 1)))
                                   (if (gx#stx-null? _tl1876818810_)
                                       (letrec ((_loop1876918813_
                                                 (lambda (_hd1876718817_
                                                          _field-id1877318820_)
                                                   (if (gx#stx-pair?
                                                        _hd1876718817_)
                                                       (let ((_e1877018823_
                                                              (gx#syntax-e
                                                               _hd1876718817_)))
                                                         (let ((_lp-hd1877118827_
                                                                (##car _e1877018823_))
                                                               (_lp-tl1877218830_
                                                                (##cdr _e1877018823_)))
                                                           (_loop1876918813_
                                                            _lp-tl1877218830_
                                                            (cons _lp-hd1877118827_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _field-id1877318820_))))
               (let ((_field-id1877418833_ (reverse _field-id1877318820_)))
                 (if (gx#stx-null? _tl1876518804_)
                     ((lambda (_L18837_ _L18839_)
                        (let ()
                          (cons (gx#datum->syntax '#f 'make-struct-type)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _L18041_ '()))
                                      (cons _L17855_
                                            (cons _L18839_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'quote)
                                                              (cons _L18069_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _L18097_
                      (cons (cons (gx#datum->syntax '#f 'quote)
                                  (cons _L18125_ '()))
                            (cons (cons (gx#datum->syntax '#f 'quote)
                                        (cons (foldr (lambda (_g1885818861_
                                                              _g1885918864_)
                                                       (cons _g1885818861_
                                                             _g1885918864_))
                                                     '()
                                                     _L18837_)
                                              '()))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      _field-id1877418833_
                      _hd1876118791_)
                     (_g1875618780_ _g1875718784_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop1876918813_
                                          _target1876618807_
                                          '()))
                                       (_g1875618780_ _g1875718784_)))))
                             (_g1875618780_ _g1875718784_))))
                     (_g1875618780_ _g1875718784_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1875618780_
                                                      _g1875718784_)))))
                                         (_g1875518867_
                                          (list (gx#stx-length _els17890_)
                                                (gx#stx-map
                                                 _field-id17762_
                                                 _els17890_))))
                                       (let* ((_g1887118904_
                                               (lambda (_g1887218900_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1887218900_)))
                                              (_g1887019032_
                                               (lambda (_g1887218908_)
                                                 (if (gx#stx-pair?
                                                      _g1887218908_)
                                                     (let ((_e1887518911_
                                                            (gx#syntax-e
                                                             _g1887218908_)))
                                                       (let ((_hd1887618915_
                                                              (##car _e1887518911_))
                                                             (_tl1887718918_
                                                              (##cdr _e1887518911_)))
                                                         (if (gx#stx-pair/null?
                                                              _hd1887618915_)
                                                             (let ((_g41867_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _hd1887618915_ '0)))
                       (begin
                         (let ((_g41868_
                                (if (##values? _g41867_)
                                    (##vector-length _g41867_)
                                    1)))
                           (if (not (##fx= _g41868_ 2))
                               (error "Context expects 2 values" _g41868_)))
                         (let ((_target1887818921_ (##vector-ref _g41867_ 0))
                               (_tl1888018924_ (##vector-ref _g41867_ 1)))
                           (if (gx#stx-null? _tl1888018924_)
                               (letrec ((_loop1888118927_
                                         (lambda (_hd1887918931_
                                                  _super1888518934_)
                                           (if (gx#stx-pair? _hd1887918931_)
                                               (let ((_e1888218937_
                                                      (gx#syntax-e
                                                       _hd1887918931_)))
                                                 (let ((_lp-hd1888318941_
                                                        (##car _e1888218937_))
                                                       (_lp-tl1888418944_
                                                        (##cdr _e1888218937_)))
                                                   (_loop1888118927_
                                                    _lp-tl1888418944_
                                                    (cons _lp-hd1888318941_
                                                          _super1888518934_))))
                                               (let ((_super1888618947_
                                                      (reverse _super1888518934_)))
                                                 (if (gx#stx-pair?
                                                      _tl1887718918_)
                                                     (let ((_e1888718951_
                                                            (gx#syntax-e
                                                             _tl1887718918_)))
                                                       (let ((_hd1888818955_
                                                              (##car _e1888718951_))
                                                             (_tl1888918958_
                                                              (##cdr _e1888718951_)))
                                                         (if (gx#stx-pair/null?
                                                              _hd1888818955_)
                                                             (let ((_g41869_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _hd1888818955_ '0)))
                       (begin
                         (let ((_g41870_
                                (if (##values? _g41869_)
                                    (##vector-length _g41869_)
                                    1)))
                           (if (not (##fx= _g41870_ 2))
                               (error "Context expects 2 values" _g41870_)))
                         (let ((_target1889018961_ (##vector-ref _g41869_ 0))
                               (_tl1889218964_ (##vector-ref _g41869_ 1)))
                           (if (gx#stx-null? _tl1889218964_)
                               (letrec ((_loop1889318967_
                                         (lambda (_hd1889118971_
                                                  _slot1889718974_)
                                           (if (gx#stx-pair? _hd1889118971_)
                                               (let ((_e1889418977_
                                                      (gx#syntax-e
                                                       _hd1889118971_)))
                                                 (let ((_lp-hd1889518981_
                                                        (##car _e1889418977_))
                                                       (_lp-tl1889618984_
                                                        (##cdr _e1889418977_)))
                                                   (_loop1889318967_
                                                    _lp-tl1889618984_
                                                    (cons _lp-hd1889518981_
                                                          _slot1889718974_))))
                                               (let ((_slot1889818987_
                                                      (reverse _slot1889718974_)))
                                                 (if (gx#stx-null?
                                                      _tl1888918958_)
                                                     ((lambda (_L18991_
                                                               _L18993_)
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'make-class-type)
                        (cons (cons (gx#datum->syntax '#f 'quote)
                                    (cons _L18041_ '()))
                              (cons (cons (gx#datum->syntax '#f '@list)
                                          (foldr (lambda (_g1901519020_
                                                          _g1901619023_)
                                                   (cons _g1901519020_
                                                         _g1901619023_))
                                                 '()
                                                 _L18993_))
                                    (cons (cons (gx#datum->syntax '#f 'quote)
                                                (cons (foldr (lambda (_g1901719026_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1901819029_)
                       (cons _g1901719026_ _g1901819029_))
                     '()
                     _L18991_)
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons _L18069_ '()))
                                                (cons _L18097_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons _L18125_ '()))
                    '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              _slot1889818987_
              _super1888618947_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1887118904_
                                                      _g1887218908_)))))))
                                 (_loop1889318967_ _target1889018961_ '()))
                               (_g1887118904_ _g1887218908_)))))
                     (_g1887118904_ _g1887218908_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1887118904_
                                                      _g1887218908_)))))))
                                 (_loop1888118927_ _target1887818921_ '()))
                               (_g1887118904_ _g1887218908_)))))
                     (_g1887118904_ _g1887218908_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1887118904_
                                                      _g1887218908_)))))
                                         (_g1887019032_
                                          (list _L17855_
                                                (gx#stx-map
                                                 gx#stx-car
                                                 _els17890_)))))))))
                            _g1811118122_))))
                   (_g1810919036_ (gx#stx-getq 'constructor: _L17851_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1808318094_))))
                                            (_g1808119040_
                                             (let ((_$e19044_
                                                    (gx#stx-getq
                                                     'plist:
                                                     _L17851_)))
                                               (if _$e19044_
                                                   _$e19044_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '@list)
                                                         '())))))))
                                      _g1805518066_))))
                             (_g1805319048_
                              (let ((_$e19052_ (gx#stx-getq 'name: _L17851_)))
                                (if _$e19052_ _$e19052_ _L17856_))))))
                       _g1802718038_))))
              (_g1802519056_
               (let ((_$e19060_ (gx#stx-getq 'id: _L17851_)))
                 (if _$e19060_
                     _$e19060_
                     (if (gx#module-context? (gx#current-expander-context))
                         (_module-type-id17765_ _L17856_)
                         (gx#genident _L17856_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1791717985_
                                                _hd1791417975_
                                                _hd1791117965_
                                                _hd1790817955_
                                                _hd1790517945_
                                                _hd1790217935_)
                                               (_g1789317924_ _g1789417928_))))
                                       (_g1789317924_ _g1789417928_))))
                               (_g1789317924_ _g1789417928_))))
                       (_g1789317924_ _g1789417928_))))
               (_g1789317924_ _g1789417928_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1789317924_ _g1789417928_))))
                                       (_g1789317924_ _g1789417928_)))))
                           (_g1789219064_
                            (if _struct?17757_
                                (cons (gx#datum->syntax
                                       '#f
                                       'make-struct-instance)
                                      (cons (gx#datum->syntax
                                             '#f
                                             'make-struct-predicate)
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'make-struct-field-accessor)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'make-struct-field-mutator)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'make-struct-field-unchecked-accessor)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'make-struct-field-unchecked-mutator)
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (cons (gx#datum->syntax
                                       '#f
                                       'make-class-instance)
                                      (cons (gx#datum->syntax
                                             '#f
                                             'make-class-predicate)
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'make-class-slot-accessor)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'make-class-slot-mutator)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'make-class-slot-unchecked-accessor)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'make-class-slot-unchecked-mutator)
                            '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (_g1776717794_ _g1776817798_)))
                   _tl1778817848_
                   _hd1778717845_
                   _hd1778417835_
                   _hd1778117825_
                   _hd1777817815_)))
              (_g1776717794_ _g1776817798_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1776717794_ _g1776817798_))))
                                      (_g1776717794_ _g1776817798_))))
                              (_g1776717794_ _g1776817798_))))
                      (_g1776717794_ _g1776817798_)))))
          (_g1776619068_ _stx17755_)))))
  (define |gerbil/core$<MOP>$<MOP:1>[:0:]#defstruct-type|
    (lambda (_stx19368_)
      (|gerbil/core$<MOP>$<MOP:1>[1]#generate-typedef| _stx19368_ '#t)))
  (define |gerbil/core$<MOP>$<MOP:1>[:0:]#defclass-type|
    (lambda (_stx19371_)
      (|gerbil/core$<MOP>$<MOP:1>[1]#generate-typedef| _stx19371_ '#f))))
