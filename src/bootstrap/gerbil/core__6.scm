(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<MOP>$<MOP:1>[1]#module-type-id|
    (lambda (_type-t19267_)
      (let ((_$e19270_ (gx#module-context-ns (gx#current-expander-context))))
        (if _$e19270_
            ((lambda (_ns19274_)
               (gx#stx-identifier
                _type-t19267_
                _ns19274_
                '"#"
                _type-t19267_
                '"::t"))
             _$e19270_)
            (let ((_mid19277_
                   (gx#expander-context-id (gx#current-expander-context))))
              (gx#stx-identifier
               _type-t19267_
               _mid19277_
               '"#"
               _type-t19267_
               '"::t"))))))
  (define |gerbil/core$<MOP>$<MOP:1>[1]#make-class-type-id|
    (lambda (_type-t19264_)
      (if (gx#module-context? (gx#current-expander-context))
          (let ()
            (declare (not safe))
            (|gerbil/core$<MOP>$<MOP:1>[1]#module-type-id| _type-t19264_))
          (make-symbol '"__" (gensym (gx#stx-e _type-t19264_)) '"::t"))))
  (define |gerbil/core$<MOP>$<MOP:1>[1]#generate-typedef|
    (lambda (_stx17796_ _struct?17798_)
      (letrec ((_wrap17800_
                (lambda (_e-stx19261_)
                  (gx#stx-wrap-source
                   _e-stx19261_
                   (gx#stx-source _stx17796_))))
               (_slot-name17802_
                (lambda (_slot-spec19178_)
                  (let* ((_g1918119200_
                          (lambda (_g1918219196_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g1918219196_)))
                         (_g1918019257_
                          (lambda (_g1918219204_)
                            (if (gx#stx-pair? _g1918219204_)
                                (let ((_e1918819207_
                                       (gx#syntax-e _g1918219204_)))
                                  (let ((_hd1918719211_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1918819207_)))
                                        (_tl1918619214_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1918819207_))))
                                    (if (gx#stx-pair? _tl1918619214_)
                                        (let ((_e1919119217_
                                               (gx#syntax-e _tl1918619214_)))
                                          (let ((_hd1919019221_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1919119217_)))
                                                (_tl1918919224_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1919119217_))))
                                            (if (gx#stx-pair? _tl1918919224_)
                                                (let ((_e1919419227_
                                                       (gx#syntax-e
                                                        _tl1918919224_)))
                                                  (let ((_hd1919319231_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1919419227_)))
                                                        (_tl1919219234_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1919419227_))))
                                                    (if (gx#stx-null?
                                                         _tl1919219234_)
                                                        ((lambda (_L19237_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L19239_
                          _L19240_)
                   _L19240_)
                 _hd1919319231_
                 _hd1919019221_
                 _hd1918719211_)
                (let () (declare (not safe)) (_g1918119200_ _g1918219204_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g1918119200_
                                                   _g1918219204_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g1918119200_ _g1918219204_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g1918119200_ _g1918219204_))))))
                    (declare (not safe))
                    (_g1918019257_ _slot-spec19178_))))
               (_class-opt?17803_
                (lambda (_key19175_)
                  (memq (gx#stx-e _key19175_)
                        '(slots:
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
               (_g1780419171_
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
                              (if _struct?17798_
                                  (or (gx#identifier? _L17893_)
                                      (gx#stx-false? _L17893_))
                                  (gx#identifier-list? _L17893_))
                              (or (gx#identifier? _L17892_)
                                  (gx#stx-false? _L17892_))
                              (gx#identifier? _L17891_)
                              (gx#stx-plist? _L17889_ _class-opt?17803_))
                         (let* ((_slots17932_
                                 (let ((_$e17928_
                                        (gx#stx-getq 'slots: _L17889_)))
                                   (if _$e17928_ _$e17928_ '())))
                                (_mixin-slots17939_
                                 (let ((_$e17935_
                                        (gx#stx-getq 'mixin: _L17889_)))
                                   (if _$e17935_ _$e17935_ '())))
                                (_accessible-slots17942_
                                 (append (gx#syntax->list _slots17932_)
                                         (gx#syntax->list _mixin-slots17939_)))
                                (_g1794517962_
                                 (lambda (_g1794617958_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _g1794617958_)))
                                (_g1794419167_
                                 (lambda (_g1794617966_)
                                   (if (gx#stx-pair/null? _g1794617966_)
                                       (let ((_g48713_
                                              (gx#syntax-split-splice
                                               _g1794617966_
                                               '0)))
                                         (begin
                                           (let ((_g48714_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g48713_)
                                                        (##vector-length
                                                         _g48713_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g48714_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g48714_)))
                                           (let ((_target1794817969_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g48713_ 0)))
                                                 (_tl1795017972_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g48713_
                                                     1))))
                                             (if (gx#stx-null? _tl1795017972_)
                                                 (letrec ((_loop1795117975_
                                                           (lambda (_hd1794917979_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _slot1795517982_)
                     (if (gx#stx-pair? _hd1794917979_)
                         (let ((_e1795217985_ (gx#syntax-e _hd1794917979_)))
                           (let ((_lp-hd1795317989_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e1795217985_)))
                                 (_lp-tl1795417992_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e1795217985_))))
                             (let ((__tmp48953
                                    (let ()
                                      (declare (not safe))
                                      (cons _lp-hd1795317989_
                                            _slot1795517982_))))
                               (declare (not safe))
                               (_loop1795117975_
                                _lp-tl1795417992_
                                __tmp48953))))
                         (let ((_slot1795617995_ (reverse _slot1795517982_)))
                           ((lambda (_L17999_)
                              (let ()
                                (let* ((_g1801818053_
                                        (lambda (_g1801918049_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g1801918049_)))
                                       (_g1801719163_
                                        (lambda (_g1801918057_)
                                          (if (gx#stx-pair? _g1801918057_)
                                              (let ((_e1802918060_
                                                     (gx#syntax-e
                                                      _g1801918057_)))
                                                (let ((_hd1802818064_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1802918060_)))
                                                      (_tl1802718067_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1802918060_))))
                                                  (if (gx#stx-pair?
                                                       _tl1802718067_)
                                                      (let ((_e1803218070_
                                                             (gx#syntax-e
                                                              _tl1802718067_)))
                                                        (let ((_hd1803118074_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e1803218070_)))
                      (_tl1803018077_
                       (let () (declare (not safe)) (##cdr _e1803218070_))))
                  (if (gx#stx-pair? _tl1803018077_)
                      (let ((_e1803518080_ (gx#syntax-e _tl1803018077_)))
                        (let ((_hd1803418084_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1803518080_)))
                              (_tl1803318087_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1803518080_))))
                          (if (gx#stx-pair? _tl1803318087_)
                              (let ((_e1803818090_
                                     (gx#syntax-e _tl1803318087_)))
                                (let ((_hd1803718094_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1803818090_)))
                                      (_tl1803618097_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1803818090_))))
                                  (if (gx#stx-pair? _tl1803618097_)
                                      (let ((_e1804118100_
                                             (gx#syntax-e _tl1803618097_)))
                                        (let ((_hd1804018104_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1804118100_)))
                                              (_tl1803918107_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1804118100_))))
                                          (if (gx#stx-pair? _tl1803918107_)
                                              (let ((_e1804418110_
                                                     (gx#syntax-e
                                                      _tl1803918107_)))
                                                (let ((_hd1804318114_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1804418110_)))
                                                      (_tl1804218117_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1804418110_))))
                                                  (if (gx#stx-pair?
                                                       _tl1804218117_)
                                                      (let ((_e1804718120_
                                                             (gx#syntax-e
                                                              _tl1804218117_)))
                                                        (let ((_hd1804618124_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e1804718120_)))
                      (_tl1804518127_
                       (let () (declare (not safe)) (##cdr _e1804718120_))))
                  (if (gx#stx-null? _tl1804518127_)
                      ((lambda (_L18130_
                                _L18132_
                                _L18133_
                                _L18134_
                                _L18135_
                                _L18136_
                                _L18137_)
                         (let ()
                           (let* ((_g1816918177_
                                   (lambda (_g1817018173_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g1817018173_)))
                                  (_g1816819155_
                                   (lambda (_g1817018181_)
                                     ((lambda (_L18184_)
                                        (let ()
                                          (let* ((_g1819718205_
                                                  (lambda (_g1819818201_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g1819818201_)))
                                                 (_g1819619147_
                                                  (lambda (_g1819818209_)
                                                    ((lambda (_L18212_)
                                                       (let ()
                                                         (let* ((_g1822518233_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1822618229_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g1822618229_)))
                        (_g1822419143_
                         (lambda (_g1822618237_)
                           ((lambda (_L18240_)
                              (let ()
                                (let* ((_g1825318261_
                                        (lambda (_g1825418257_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g1825418257_)))
                                       (_g1825219139_
                                        (lambda (_g1825418265_)
                                          ((lambda (_L18268_)
                                             (let ()
                                               (let* ((_g1828118289_
                                                       (lambda (_g1828218285_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g1828218285_)))
                                                      (_g1828019135_
                                                       (lambda (_g1828218293_)
                                                         ((lambda (_L18296_)
                                                            (let ()
                                                              (let* ((_g1830918317_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g1831018313_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g1831018313_)))
                             (_g1830819131_
                              (lambda (_g1831018321_)
                                ((lambda (_L18324_)
                                   (let ()
                                     (let* ((_g1833718345_
                                             (lambda (_g1833818341_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g1833818341_)))
                                            (_g1833619127_
                                             (lambda (_g1833818349_)
                                               ((lambda (_L18352_)
                                                  (let ()
                                                    (let* ((_g1836518373_
                                                            (lambda (_g1836618369_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g1836618369_)))
                                                           (_g1836419119_
                                                            (lambda (_g1836618377_)
                                                              ((lambda (_L18380_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g1839318401_
                                   (lambda (_g1839418397_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g1839418397_)))
                                  (_g1839219115_
                                   (lambda (_g1839418405_)
                                     ((lambda (_L18408_)
                                        (let ()
                                          (let* ((_g1842118429_
                                                  (lambda (_g1842218425_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g1842218425_)))
                                                 (_g1842019111_
                                                  (lambda (_g1842218433_)
                                                    ((lambda (_L18436_)
                                                       (let ()
                                                         (let* ((_g1844918457_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1845018453_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g1845018453_)))
                        (_g1844819107_
                         (lambda (_g1845018461_)
                           ((lambda (_L18464_)
                              (let ()
                                (let* ((_g1847718485_
                                        (lambda (_g1847818481_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g1847818481_)))
                                       (_g1847619095_
                                        (lambda (_g1847818489_)
                                          ((lambda (_L18492_)
                                             (let ()
                                               (let* ((_g1850518513_
                                                       (lambda (_g1850618509_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g1850618509_)))
                                                      (_g1850419083_
                                                       (lambda (_g1850618517_)
                                                         ((lambda (_L18520_)
                                                            (let ()
                                                              (let* ((_g1853318541_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g1853418537_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g1853418537_)))
                             (_g1853219079_
                              (lambda (_g1853418545_)
                                ((lambda (_L18548_)
                                   (let ()
                                     (let* ((_g1856118569_
                                             (lambda (_g1856218565_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g1856218565_)))
                                            (_g1856019075_
                                             (lambda (_g1856218573_)
                                               ((lambda (_L18576_)
                                                  (let ()
                                                    (let* ((_g1858918615_
                                                            (lambda (_g1859018611_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g1859018611_)))
                                                           (_g1858818987_
                                                            (lambda (_g1859018619_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1859018619_)
                          (let ((_g48715_
                                 (gx#syntax-split-splice _g1859018619_ '0)))
                            (begin
                              (let ((_g48716_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g48715_)
                                           (##vector-length _g48715_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g48716_ 2)))
                                    (error "Context expects 2 values"
                                           _g48716_)))
                              (let ((_target1859318622_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g48715_ 0)))
                                    (_tl1859518625_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g48715_ 1))))
                                (if (gx#stx-null? _tl1859518625_)
                                    (letrec ((_loop1859618628_
                                              (lambda (_hd1859418632_
                                                       _def-setf1860018635_
                                                       _def-getf1860118637_)
                                                (if (gx#stx-pair?
                                                     _hd1859418632_)
                                                    (let ((_e1859718640_
                                                           (gx#syntax-e
                                                            _hd1859418632_)))
                                                      (let ((_lp-hd1859818644_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e1859718640_)))
                    (_lp-tl1859918647_
                     (let () (declare (not safe)) (##cdr _e1859718640_))))
                (if (gx#stx-pair? _lp-hd1859818644_)
                    (let ((_e1860618650_ (gx#syntax-e _lp-hd1859818644_)))
                      (let ((_hd1860518654_
                             (let ()
                               (declare (not safe))
                               (##car _e1860618650_)))
                            (_tl1860418657_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1860618650_))))
                        (if (gx#stx-pair? _tl1860418657_)
                            (let ((_e1860918660_ (gx#syntax-e _tl1860418657_)))
                              (let ((_hd1860818664_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1860918660_)))
                                    (_tl1860718667_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1860918660_))))
                                (if (gx#stx-null? _tl1860718667_)
                                    (let ((__tmp48778
                                           (let ()
                                             (declare (not safe))
                                             (cons _hd1860818664_
                                                   _def-setf1860018635_)))
                                          (__tmp48777
                                           (let ()
                                             (declare (not safe))
                                             (cons _hd1860518654_
                                                   _def-getf1860118637_))))
                                      (declare (not safe))
                                      (_loop1859618628_
                                       _lp-tl1859918647_
                                       __tmp48778
                                       __tmp48777))
                                    (let ()
                                      (declare (not safe))
                                      (_g1858918615_ _g1859018619_)))))
                            (let ()
                              (declare (not safe))
                              (_g1858918615_ _g1859018619_)))))
                    (let ()
                      (declare (not safe))
                      (_g1858918615_ _g1859018619_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_def-setf1860218670_
                                                           (reverse _def-setf1860018635_))
                                                          (_def-getf1860318673_
                                                           (reverse _def-getf1860118637_)))
                                                      ((lambda (_L18676_
                                                                _L18678_)
                                                         (let ()
                                                           (let* ((_g1869518721_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g1869618717_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g1869618717_)))
                          (_g1869418835_
                           (lambda (_g1869618725_)
                             (if (gx#stx-pair/null? _g1869618725_)
                                 (let ((_g48717_
                                        (gx#syntax-split-splice
                                         _g1869618725_
                                         '0)))
                                   (begin
                                     (let ((_g48718_
                                            (let ()
                                              (declare (not safe))
                                              (if (##values? _g48717_)
                                                  (##vector-length _g48717_)
                                                  1))))
                                       (if (not (let ()
                                                  (declare (not safe))
                                                  (##fx= _g48718_ 2)))
                                           (error "Context expects 2 values"
                                                  _g48718_)))
                                     (let ((_target1869918728_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref _g48717_ 0)))
                                           (_tl1870118731_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref _g48717_ 1))))
                                       (if (gx#stx-null? _tl1870118731_)
                                           (letrec ((_loop1870218734_
                                                     (lambda (_hd1870018738_
                                                              _def-usetf1870618741_
                                                              _def-ugetf1870718743_)
                                                       (if (gx#stx-pair?
                                                            _hd1870018738_)
                                                           (let ((_e1870318746_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd1870018738_)))
                     (let ((_lp-hd1870418750_
                            (let ()
                              (declare (not safe))
                              (##car _e1870318746_)))
                           (_lp-tl1870518753_
                            (let ()
                              (declare (not safe))
                              (##cdr _e1870318746_))))
                       (if (gx#stx-pair? _lp-hd1870418750_)
                           (let ((_e1871218756_
                                  (gx#syntax-e _lp-hd1870418750_)))
                             (let ((_hd1871118760_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e1871218756_)))
                                   (_tl1871018763_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e1871218756_))))
                               (if (gx#stx-pair? _tl1871018763_)
                                   (let ((_e1871518766_
                                          (gx#syntax-e _tl1871018763_)))
                                     (let ((_hd1871418770_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e1871518766_)))
                                           (_tl1871318773_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e1871518766_))))
                                       (if (gx#stx-null? _tl1871318773_)
                                           (let ((__tmp48733
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _hd1871418770_
                                                          _def-usetf1870618741_)))
                                                 (__tmp48732
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _hd1871118760_
                                                          _def-ugetf1870718743_))))
                                             (declare (not safe))
                                             (_loop1870218734_
                                              _lp-tl1870518753_
                                              __tmp48733
                                              __tmp48732))
                                           (let ()
                                             (declare (not safe))
                                             (_g1869518721_ _g1869618725_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g1869518721_ _g1869618725_)))))
                           (let ()
                             (declare (not safe))
                             (_g1869518721_ _g1869618725_)))))
                   (let ((_def-usetf1870818776_
                          (reverse _def-usetf1870618741_))
                         (_def-ugetf1870918779_
                          (reverse _def-ugetf1870718743_)))
                     ((lambda (_L18782_ _L18784_)
                        (let ()
                          (let ()
                            (let ((__tmp48719
                                   (let ((__tmp48731
                                          (gx#datum->syntax '#f 'begin))
                                         (__tmp48720
                                          (let ((__tmp48721
                                                 (let ((__tmp48722
                                                        (let ((__tmp48723
                                                               (let ((__tmp48730
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g1880218811_ _g1880318814_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g1880218811_ _g1880318814_))))
                             (__tmp48724
                              (let ((__tmp48729
                                     (lambda (_g1880418817_ _g1880518820_)
                                       (let ()
                                         (declare (not safe))
                                         (cons _g1880418817_ _g1880518820_))))
                                    (__tmp48725
                                     (let ((__tmp48728
                                            (lambda (_g1880618823_
                                                     _g1880718826_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g1880618823_
                                                      _g1880718826_))))
                                           (__tmp48726
                                            (let ((__tmp48727
                                                   (lambda (_g1880818829_
                                                            _g1880918832_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g1880818829_
                                                             _g1880918832_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp48727
                                                      '()
                                                      _L18782_))))
                                       (declare (not safe))
                                       (foldr1 __tmp48728
                                               __tmp48726
                                               _L18784_))))
                                (declare (not safe))
                                (foldr1 __tmp48729 __tmp48725 _L18676_))))
                         (declare (not safe))
                         (foldr1 __tmp48730 __tmp48724 _L18678_))))
                  (declare (not safe))
                  (cons _L18548_ __tmp48723))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L18576_
                                                         __tmp48722))))
                                            (declare (not safe))
                                            (cons _L18520_ __tmp48721))))
                                     (declare (not safe))
                                     (cons __tmp48731 __tmp48720))))
                              (declare (not safe))
                              (_wrap17800_ __tmp48719)))))
                      _def-usetf1870818776_
                      _def-ugetf1870918779_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ()
                                               (declare (not safe))
                                               (_loop1870218734_
                                                _target1869918728_
                                                '()
                                                '())))
                                           (let ()
                                             (declare (not safe))
                                             (_g1869518721_ _g1869618725_))))))
                                 (let ()
                                   (declare (not safe))
                                   (_g1869518721_ _g1869618725_)))))
                          (__tmp48734
                           (gx#stx-map
                            (lambda (_ref18839_)
                              (let* ((_g1884218861_
                                      (lambda (_g1884318857_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g1884318857_)))
                                     (_g1884118983_
                                      (lambda (_g1884318865_)
                                        (if (gx#stx-pair? _g1884318865_)
                                            (let ((_e1884918868_
                                                   (gx#syntax-e
                                                    _g1884318865_)))
                                              (let ((_hd1884818872_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1884918868_)))
                                                    (_tl1884718875_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1884918868_))))
                                                (if (gx#stx-pair?
                                                     _tl1884718875_)
                                                    (let ((_e1885218878_
                                                           (gx#syntax-e
                                                            _tl1884718875_)))
                                                      (let ((_hd1885118882_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e1885218878_)))
                    (_tl1885018885_
                     (let () (declare (not safe)) (##cdr _e1885218878_))))
                (if (gx#stx-pair? _tl1885018885_)
                    (let ((_e1885518888_ (gx#syntax-e _tl1885018885_)))
                      (let ((_hd1885418892_
                             (let ()
                               (declare (not safe))
                               (##car _e1885518888_)))
                            (_tl1885318895_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1885518888_))))
                        (if (gx#stx-null? _tl1885318895_)
                            ((lambda (_L18898_ _L18900_ _L18901_)
                               (let* ((_g1891918934_
                                       (lambda (_g1892018930_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g1892018930_)))
                                      (_g1891818979_
                                       (lambda (_g1892018938_)
                                         (if (gx#stx-pair? _g1892018938_)
                                             (let ((_e1892518941_
                                                    (gx#syntax-e
                                                     _g1892018938_)))
                                               (let ((_hd1892418945_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e1892518941_)))
                                                     (_tl1892318948_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e1892518941_))))
                                                 (if (gx#stx-pair?
                                                      _tl1892318948_)
                                                     (let ((_e1892818951_
                                                            (gx#syntax-e
                                                             _tl1892318948_)))
                                                       (let ((_hd1892718955_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _e1892818951_)))
                     (_tl1892618958_
                      (let () (declare (not safe)) (##cdr _e1892818951_))))
                 (if (gx#stx-null? _tl1892618958_)
                     ((lambda (_L18961_ _L18963_)
                        (let ()
                          (let ((__tmp48756
                                 (let ((__tmp48757
                                        (let ((__tmp48775
                                               (gx#datum->syntax '#f 'def))
                                              (__tmp48758
                                               (let ((__tmp48759
                                                      (let ((__tmp48760
                                                             (let ((__tmp48774
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'begin-annotation))
                           (__tmp48761
                            (let ((__tmp48769
                                   (let ((__tmp48773
                                          (gx#datum->syntax
                                           '#f
                                           '@mop.accessor))
                                         (__tmp48770
                                          (let ((__tmp48771
                                                 (let ((__tmp48772
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons '#f '()))))
                                                   (declare (not safe))
                                                   (cons _L18901_
                                                         __tmp48772))))
                                            (declare (not safe))
                                            (cons _L18268_ __tmp48771))))
                                     (declare (not safe))
                                     (cons __tmp48773 __tmp48770)))
                                  (__tmp48762
                                   (let ((__tmp48763
                                          (let ((__tmp48764
                                                 (let ((__tmp48765
                                                        (let ((__tmp48766
                                                               (let ((__tmp48768
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'quote))
                             (__tmp48767
                              (let ()
                                (declare (not safe))
                                (cons _L18901_ '()))))
                         (declare (not safe))
                         (cons __tmp48768 __tmp48767))))
                  (declare (not safe))
                  (cons __tmp48766 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L17894_
                                                         __tmp48765))))
                                            (declare (not safe))
                                            (cons _L18132_ __tmp48764))))
                                     (declare (not safe))
                                     (cons __tmp48763 '()))))
                              (declare (not safe))
                              (cons __tmp48769 __tmp48762))))
                       (declare (not safe))
                       (cons __tmp48774 __tmp48761))))
                (declare (not safe))
                (cons __tmp48760 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L18963_ __tmp48759))))
                                          (declare (not safe))
                                          (cons __tmp48775 __tmp48758))))
                                   (declare (not safe))
                                   (_wrap17800_ __tmp48757)))
                                (__tmp48735
                                 (let ((__tmp48736
                                        (let ((__tmp48737
                                               (let ((__tmp48755
                                                      (gx#datum->syntax
                                                       '#f
                                                       'def))
                                                     (__tmp48738
                                                      (let ((__tmp48739
                                                             (let ((__tmp48740
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp48754
                                   (gx#datum->syntax '#f 'begin-annotation))
                                  (__tmp48741
                                   (let ((__tmp48749
                                          (let ((__tmp48753
                                                 (gx#datum->syntax
                                                  '#f
                                                  '@mop.mutator))
                                                (__tmp48750
                                                 (let ((__tmp48751
                                                        (let ((__tmp48752
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons '#f '()))))
                  (declare (not safe))
                  (cons _L18901_ __tmp48752))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L18268_
                                                         __tmp48751))))
                                            (declare (not safe))
                                            (cons __tmp48753 __tmp48750)))
                                         (__tmp48742
                                          (let ((__tmp48743
                                                 (let ((__tmp48744
                                                        (let ((__tmp48745
                                                               (let ((__tmp48746
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp48748 (gx#datum->syntax '#f 'quote))
                                    (__tmp48747
                                     (let ()
                                       (declare (not safe))
                                       (cons _L18901_ '()))))
                                (declare (not safe))
                                (cons __tmp48748 __tmp48747))))
                         (declare (not safe))
                         (cons __tmp48746 '()))))
                  (declare (not safe))
                  (cons _L17894_ __tmp48745))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L18130_
                                                         __tmp48744))))
                                            (declare (not safe))
                                            (cons __tmp48743 '()))))
                                     (declare (not safe))
                                     (cons __tmp48749 __tmp48742))))
                              (declare (not safe))
                              (cons __tmp48754 __tmp48741))))
                       (declare (not safe))
                       (cons __tmp48740 '()))))
                (declare (not safe))
                (cons _L18961_ __tmp48739))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp48755
                                                       __tmp48738))))
                                          (declare (not safe))
                                          (_wrap17800_ __tmp48737))))
                                   (declare (not safe))
                                   (cons __tmp48736 '()))))
                            (declare (not safe))
                            (cons __tmp48756 __tmp48735))))
                      _hd1892718955_
                      _hd1892418945_)
                     (let ()
                       (declare (not safe))
                       (_g1891918934_ _g1892018938_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g1891918934_
                                                        _g1892018938_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g1891918934_
                                                _g1892018938_)))))
                                      (__tmp48776
                                       (list (gx#stx-identifier
                                              _L18900_
                                              '"&"
                                              _L18900_)
                                             (gx#stx-identifier
                                              _L18898_
                                              '"&"
                                              _L18898_))))
                                 (declare (not safe))
                                 (_g1891818979_ __tmp48776)))
                             _hd1885418892_
                             _hd1885118882_
                             _hd1884818872_)
                            (let ()
                              (declare (not safe))
                              (_g1884218861_ _g1884318865_)))))
                    (let ()
                      (declare (not safe))
                      (_g1884218861_ _g1884318865_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g1884218861_
                                                       _g1884318865_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g1884218861_
                                               _g1884318865_))))))
                                (declare (not safe))
                                (_g1884118983_ _ref18839_)))
                            _accessible-slots17942_)))
                     (declare (not safe))
                     (_g1869418835_ __tmp48734))))
               _def-setf1860218670_
               _def-getf1860318673_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (let ()
                                        (declare (not safe))
                                        (_loop1859618628_
                                         _target1859318622_
                                         '()
                                         '())))
                                    (let ()
                                      (declare (not safe))
                                      (_g1858918615_ _g1859018619_))))))
                          (let ()
                            (declare (not safe))
                            (_g1858918615_ _g1859018619_)))))
                   (__tmp48779
                    (gx#stx-map
                     (lambda (_ref18991_)
                       (let* ((_g1899419013_
                               (lambda (_g1899519009_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g1899519009_)))
                              (_g1899319071_
                               (lambda (_g1899519017_)
                                 (if (gx#stx-pair? _g1899519017_)
                                     (let ((_e1900119020_
                                            (gx#syntax-e _g1899519017_)))
                                       (let ((_hd1900019024_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e1900119020_)))
                                             (_tl1899919027_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e1900119020_))))
                                         (if (gx#stx-pair? _tl1899919027_)
                                             (let ((_e1900419030_
                                                    (gx#syntax-e
                                                     _tl1899919027_)))
                                               (let ((_hd1900319034_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e1900419030_)))
                                                     (_tl1900219037_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e1900419030_))))
                                                 (if (gx#stx-pair?
                                                      _tl1900219037_)
                                                     (let ((_e1900719040_
                                                            (gx#syntax-e
                                                             _tl1900219037_)))
                                                       (let ((_hd1900619044_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _e1900719040_)))
                     (_tl1900519047_
                      (let () (declare (not safe)) (##cdr _e1900719040_))))
                 (if (gx#stx-null? _tl1900519047_)
                     ((lambda (_L19050_ _L19052_ _L19053_)
                        (let ((__tmp48801
                               (let ((__tmp48802
                                      (let ((__tmp48820
                                             (gx#datum->syntax '#f 'def))
                                            (__tmp48803
                                             (let ((__tmp48804
                                                    (let ((__tmp48805
                                                           (let ((__tmp48819
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'begin-annotation))
                         (__tmp48806
                          (let ((__tmp48814
                                 (let ((__tmp48818
                                        (gx#datum->syntax '#f '@mop.accessor))
                                       (__tmp48815
                                        (let ((__tmp48816
                                               (let ((__tmp48817
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons '#t '()))))
                                                 (declare (not safe))
                                                 (cons _L19053_ __tmp48817))))
                                          (declare (not safe))
                                          (cons _L18268_ __tmp48816))))
                                   (declare (not safe))
                                   (cons __tmp48818 __tmp48815)))
                                (__tmp48807
                                 (let ((__tmp48808
                                        (let ((__tmp48809
                                               (let ((__tmp48810
                                                      (let ((__tmp48811
                                                             (let ((__tmp48813
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'quote))
                           (__tmp48812
                            (let () (declare (not safe)) (cons _L19053_ '()))))
                       (declare (not safe))
                       (cons __tmp48813 __tmp48812))))
                (declare (not safe))
                (cons __tmp48811 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L17894_ __tmp48810))))
                                          (declare (not safe))
                                          (cons _L18134_ __tmp48809))))
                                   (declare (not safe))
                                   (cons __tmp48808 '()))))
                            (declare (not safe))
                            (cons __tmp48814 __tmp48807))))
                     (declare (not safe))
                     (cons __tmp48819 __tmp48806))))
              (declare (not safe))
              (cons __tmp48805 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L19052_ __tmp48804))))
                                        (declare (not safe))
                                        (cons __tmp48820 __tmp48803))))
                                 (declare (not safe))
                                 (_wrap17800_ __tmp48802)))
                              (__tmp48780
                               (let ((__tmp48781
                                      (let ((__tmp48782
                                             (let ((__tmp48800
                                                    (gx#datum->syntax
                                                     '#f
                                                     'def))
                                                   (__tmp48783
                                                    (let ((__tmp48784
                                                           (let ((__tmp48785
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp48799
                                 (gx#datum->syntax '#f 'begin-annotation))
                                (__tmp48786
                                 (let ((__tmp48794
                                        (let ((__tmp48798
                                               (gx#datum->syntax
                                                '#f
                                                '@mop.mutator))
                                              (__tmp48795
                                               (let ((__tmp48796
                                                      (let ((__tmp48797
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons '#t '()))))
                (declare (not safe))
                (cons _L19053_ __tmp48797))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L18268_ __tmp48796))))
                                          (declare (not safe))
                                          (cons __tmp48798 __tmp48795)))
                                       (__tmp48787
                                        (let ((__tmp48788
                                               (let ((__tmp48789
                                                      (let ((__tmp48790
                                                             (let ((__tmp48791
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp48793 (gx#datum->syntax '#f 'quote))
                                  (__tmp48792
                                   (let ()
                                     (declare (not safe))
                                     (cons _L19053_ '()))))
                              (declare (not safe))
                              (cons __tmp48793 __tmp48792))))
                       (declare (not safe))
                       (cons __tmp48791 '()))))
                (declare (not safe))
                (cons _L17894_ __tmp48790))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L18133_ __tmp48789))))
                                          (declare (not safe))
                                          (cons __tmp48788 '()))))
                                   (declare (not safe))
                                   (cons __tmp48794 __tmp48787))))
                            (declare (not safe))
                            (cons __tmp48799 __tmp48786))))
                     (declare (not safe))
                     (cons __tmp48785 '()))))
              (declare (not safe))
              (cons _L19050_ __tmp48784))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp48800 __tmp48783))))
                                        (declare (not safe))
                                        (_wrap17800_ __tmp48782))))
                                 (declare (not safe))
                                 (cons __tmp48781 '()))))
                          (declare (not safe))
                          (cons __tmp48801 __tmp48780)))
                      _hd1900619044_
                      _hd1900319034_
                      _hd1900019024_)
                     (let ()
                       (declare (not safe))
                       (_g1899419013_ _g1899519017_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g1899419013_
                                                        _g1899519017_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g1899419013_
                                                _g1899519017_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_g1899419013_ _g1899519017_))))))
                         (declare (not safe))
                         (_g1899319071_ _ref18991_)))
                     _accessible-slots17942_)))
              (declare (not safe))
              (_g1858818987_ __tmp48779))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1856218573_)))
                                            (__tmp48821
                                             (let ((__tmp48822
                                                    (let ((__tmp48834
                                                           (gx#datum->syntax
                                                            '#f
                                                            'def))
                                                          (__tmp48823
                                                           (let ((__tmp48824
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp48825
                                 (let ((__tmp48833
                                        (gx#datum->syntax
                                         '#f
                                         'begin-annotation))
                                       (__tmp48826
                                        (let ((__tmp48830
                                               (let ((__tmp48832
                                                      (gx#datum->syntax
                                                       '#f
                                                       '@mop.predicate))
                                                     (__tmp48831
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L18268_ '()))))
                                                 (declare (not safe))
                                                 (cons __tmp48832 __tmp48831)))
                                              (__tmp48827
                                               (let ((__tmp48828
                                                      (let ((__tmp48829
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L17894_ '()))))
                (declare (not safe))
                (cons _L18135_ __tmp48829))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp48828 '()))))
                                          (declare (not safe))
                                          (cons __tmp48830 __tmp48827))))
                                   (declare (not safe))
                                   (cons __tmp48833 __tmp48826))))
                            (declare (not safe))
                            (cons __tmp48825 '()))))
                     (declare (not safe))
                     (cons _L17891_ __tmp48824))))
              (declare (not safe))
              (cons __tmp48834 __tmp48823))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_wrap17800_ __tmp48822))))
                                       (declare (not safe))
                                       (_g1856019075_ __tmp48821))))
                                 _g1853418545_)))
                             (__tmp48835
                              (if (gx#stx-false? _L17892_)
                                  (let ((__tmp48858
                                         (gx#datum->syntax '#f 'begin)))
                                    (declare (not safe))
                                    (cons __tmp48858 '()))
                                  (let ((__tmp48836
                                         (let ((__tmp48857
                                                (gx#datum->syntax '#f 'def))
                                               (__tmp48837
                                                (let ((__tmp48838
                                                       (let ((__tmp48839
                                                              (let ((__tmp48856
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'begin-annotation))
                            (__tmp48840
                             (let ((__tmp48853
                                    (let ((__tmp48855
                                           (gx#datum->syntax
                                            '#f
                                            '@mop.constructor))
                                          (__tmp48854
                                           (let ()
                                             (declare (not safe))
                                             (cons _L18268_ '()))))
                                      (declare (not safe))
                                      (cons __tmp48855 __tmp48854)))
                                   (__tmp48841
                                    (let ((__tmp48842
                                           (let ((__tmp48852
                                                  (gx#datum->syntax
                                                   '#f
                                                   'lambda))
                                                 (__tmp48843
                                                  (let ((__tmp48851
                                                         (gx#datum->syntax
                                                          '#f
                                                          '$args))
                                                        (__tmp48844
                                                         (let ((__tmp48845
                                                                (let ((__tmp48850
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'apply))
                              (__tmp48846
                               (let ((__tmp48847
                                      (let ((__tmp48848
                                             (let ((__tmp48849
                                                    (gx#datum->syntax
                                                     '#f
                                                     '$args)))
                                               (declare (not safe))
                                               (cons __tmp48849 '()))))
                                        (declare (not safe))
                                        (cons _L17894_ __tmp48848))))
                                 (declare (not safe))
                                 (cons _L18136_ __tmp48847))))
                          (declare (not safe))
                          (cons __tmp48850 __tmp48846))))
                   (declare (not safe))
                   (cons __tmp48845 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp48851
                                                          __tmp48844))))
                                             (declare (not safe))
                                             (cons __tmp48852 __tmp48843))))
                                      (declare (not safe))
                                      (cons __tmp48842 '()))))
                               (declare (not safe))
                               (cons __tmp48853 __tmp48841))))
                        (declare (not safe))
                        (cons __tmp48856 __tmp48840))))
                 (declare (not safe))
                 (cons __tmp48839 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L17892_ __tmp48838))))
                                           (declare (not safe))
                                           (cons __tmp48857 __tmp48837))))
                                    (declare (not safe))
                                    (_wrap17800_ __tmp48836)))))
                        (declare (not safe))
                        (_g1853219079_ __tmp48835))))
                  _g1850618517_)))
              (__tmp48859
               (let ((__tmp48860
                      (let ((__tmp48877 (gx#datum->syntax '#f 'def))
                            (__tmp48861
                             (let ((__tmp48862
                                    (let ((__tmp48863
                                           (let ((__tmp48876
                                                  (gx#datum->syntax
                                                   '#f
                                                   'begin-annotation))
                                                 (__tmp48864
                                                  (let ((__tmp48866
                                                         (let ((__tmp48875
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@mop.class))
                       (__tmp48867
                        (let ((__tmp48868
                               (let ((__tmp48869
                                      (let ((__tmp48873
                                             (let ((__tmp48874
                                                    (lambda (_g1908619089_
                                                             _g1908719092_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _g1908619089_
                                                              _g1908719092_)))))
                                               (declare (not safe))
                                               (foldr1 __tmp48874
                                                       '()
                                                       _L17999_)))
                                            (__tmp48870
                                             (let ((__tmp48871
                                                    (let ((__tmp48872
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L18352_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _L18324_ __tmp48872))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L18240_ __tmp48871))))
                                        (declare (not safe))
                                        (cons __tmp48873 __tmp48870))))
                                 (declare (not safe))
                                 (cons _L18296_ __tmp48869))))
                          (declare (not safe))
                          (cons _L18184_ __tmp48868))))
                   (declare (not safe))
                   (cons __tmp48875 __tmp48867)))
                (__tmp48865 (let () (declare (not safe)) (cons _L18492_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp48866
                                                          __tmp48865))))
                                             (declare (not safe))
                                             (cons __tmp48876 __tmp48864))))
                                      (declare (not safe))
                                      (cons __tmp48863 '()))))
                               (declare (not safe))
                               (cons _L17894_ __tmp48862))))
                        (declare (not safe))
                        (cons __tmp48877 __tmp48861))))
                 (declare (not safe))
                 (_wrap17800_ __tmp48860))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g1850419083_ __tmp48859))))
                                           _g1847818489_)))
                                       (__tmp48878
                                        (let ((__tmp48879
                                               (let ((__tmp48896
                                                      (let ((__tmp48898
                                                             (gx#datum->syntax
                                                              '#f
                                                              'quote))
                                                            (__tmp48897
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L18184_ '()))))
                (declare (not safe))
                (cons __tmp48898 __tmp48897)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp48880
                                                      (let ((__tmp48893
                                                             (let ((__tmp48895
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'quote))
                           (__tmp48894
                            (let () (declare (not safe)) (cons _L18212_ '()))))
                       (declare (not safe))
                       (cons __tmp48895 __tmp48894)))
                    (__tmp48881
                     (let ((__tmp48882
                            (let ((__tmp48888
                                   (let ((__tmp48892
                                          (gx#datum->syntax '#f 'quote))
                                         (__tmp48889
                                          (let ((__tmp48890
                                                 (let ((__tmp48891
                                                        (lambda (_g1909819101_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1909919104_)
                  (let ()
                    (declare (not safe))
                    (cons _g1909819101_ _g1909919104_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 __tmp48891
                                                           '()
                                                           _L17999_))))
                                            (declare (not safe))
                                            (cons __tmp48890 '()))))
                                     (declare (not safe))
                                     (cons __tmp48892 __tmp48889)))
                                  (__tmp48883
                                   (let ((__tmp48884
                                          (let ((__tmp48885
                                                 (let ((__tmp48887
                                                        (gx#datum->syntax
                                                         '#f
                                                         'quote))
                                                       (__tmp48886
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L18240_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp48887
                                                         __tmp48886))))
                                            (declare (not safe))
                                            (cons __tmp48885 '()))))
                                     (declare (not safe))
                                     (cons _L18436_ __tmp48884))))
                              (declare (not safe))
                              (cons __tmp48888 __tmp48883))))
                       (declare (not safe))
                       (cons _L18464_ __tmp48882))))
                (declare (not safe))
                (cons __tmp48893 __tmp48881))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp48896
                                                       __tmp48880))))
                                          (declare (not safe))
                                          (cons _L18137_ __tmp48879))))
                                  (declare (not safe))
                                  (_g1847619095_ __tmp48878))))
                            _g1845018461_)))
                        (__tmp48899
                         (if _struct?17798_
                             _L17893_
                             (let ((__tmp48900 (gx#datum->syntax '#f 'list)))
                               (declare (not safe))
                               (cons __tmp48900 _L17893_)))))
                   (declare (not safe))
                   (_g1844819107_ __tmp48899))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1842218433_)))
                                                 (__tmp48901
                                                  (if _struct?17798_
                                                      (let ((__tmp48908
                                                             (gx#datum->syntax
                                                              '#f
                                                              '@list))
                                                            (__tmp48902
                                                             (let ((__tmp48905
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp48907 (gx#datum->syntax '#f '@list))
                                  (__tmp48906
                                   (let ()
                                     (declare (not safe))
                                     (cons 'struct: '#t))))
                              (declare (not safe))
                              (cons __tmp48907 __tmp48906)))
                           (__tmp48903
                            (let ((__tmp48904
                                   (let ()
                                     (declare (not safe))
                                     (cons _L18408_ '()))))
                              (declare (not safe))
                              (cons ':: __tmp48904))))
                       (declare (not safe))
                       (cons __tmp48905 __tmp48903))))
                (declare (not safe))
                (cons __tmp48908 __tmp48902))
              _L18408_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g1842019111_ __tmp48901))))
                                      _g1839418405_)))
                                  (__tmp48909
                                   (if (gx#stx-e _L18352_)
                                       (let ((__tmp48916
                                              (gx#datum->syntax '#f '@list))
                                             (__tmp48910
                                              (let ((__tmp48913
                                                     (let ((__tmp48915
                                                            (gx#datum->syntax
                                                             '#f
                                                             '@list))
                                                           (__tmp48914
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons 'final:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#t))))
               (declare (not safe))
               (cons __tmp48915 __tmp48914)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp48911
                                                     (let ((__tmp48912
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L18380_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons ':: __tmp48912))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp48913 __tmp48911))))
                                         (declare (not safe))
                                         (cons __tmp48916 __tmp48910))
                                       _L18380_)))
                             (declare (not safe))
                             (_g1839219115_ __tmp48909))))
                       _g1836618377_)))
                   (__tmp48917
                    (let ((_$e19123_ (gx#stx-getq 'properties: _L17889_)))
                      (if _$e19123_
                          _$e19123_
                          (let ((__tmp48918 (gx#datum->syntax '#f '@list)))
                            (declare (not safe))
                            (cons __tmp48918 '()))))))
              (declare (not safe))
              (_g1836419119_ __tmp48917))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1833818349_)))
                                            (__tmp48919
                                             (gx#stx-getq 'final: _L17889_)))
                                       (declare (not safe))
                                       (_g1833619127_ __tmp48919))))
                                 _g1831018321_))))
                        (declare (not safe))
                        (_g1830819131_ _struct?17798_))))
                  _g1828218293_)))
              (__tmp48920
               (if _struct?17798_
                   (if (gx#stx-e _L17893_)
                       (let ((__tmp48921 (gx#core-quote-syntax _L17893_)))
                         (declare (not safe))
                         (cons __tmp48921 '()))
                       '())
                   (gx#stx-map gx#core-quote-syntax _L17893_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g1828019135_ __tmp48920))))
                                           _g1825418265_)))
                                       (__tmp48922
                                        (gx#core-quote-syntax _L17894_)))
                                  (declare (not safe))
                                  (_g1825219139_ __tmp48922))))
                            _g1822618237_)))
                        (__tmp48923 (gx#stx-getq 'constructor: _L17889_)))
                   (declare (not safe))
                   (_g1822419143_ __tmp48923))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1819818209_)))
                                                 (__tmp48924
                                                  (let ((_$e19151_
                                                         (gx#stx-getq
                                                          'name:
                                                          _L17889_)))
                                                    (if _$e19151_
                                                        _$e19151_
                                                        _L17894_))))
                                            (declare (not safe))
                                            (_g1819619147_ __tmp48924))))
                                      _g1817018181_)))
                                  (__tmp48925
                                   (let ((_$e19159_
                                          (gx#stx-getq 'id: _L17889_)))
                                     (if _$e19159_
                                         _$e19159_
                                         (let ()
                                           (declare (not safe))
                                           (|gerbil/core$<MOP>$<MOP:1>[1]#make-class-type-id|
                                            type-id))))))
                             (declare (not safe))
                             (_g1816819155_ __tmp48925))))
                       _hd1804618124_
                       _hd1804318114_
                       _hd1804018104_
                       _hd1803718094_
                       _hd1803418084_
                       _hd1803118074_
                       _hd1802818064_)
                      (let ()
                        (declare (not safe))
                        (_g1801818053_ _g1801918057_)))))
              (let () (declare (not safe)) (_g1801818053_ _g1801918057_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g1801818053_
                                                 _g1801918057_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1801818053_ _g1801918057_)))))
                              (let ()
                                (declare (not safe))
                                (_g1801818053_ _g1801918057_)))))
                      (let ()
                        (declare (not safe))
                        (_g1801818053_ _g1801918057_)))))
              (let () (declare (not safe)) (_g1801818053_ _g1801918057_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g1801818053_
                                                 _g1801918057_)))))
                                       (__tmp48926
                                        (if _struct?17798_
                                            (let ((__tmp48952
                                                   (gx#datum->syntax
                                                    '#f
                                                    'make-struct-type*))
                                                  (__tmp48940
                                                   (let ((__tmp48951
                                                          (gx#datum->syntax
                                                           '#f
                                                           'make-struct-instance))
                                                         (__tmp48941
                                                          (let ((__tmp48950
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'make-struct-predicate))
                        (__tmp48942
                         (let ((__tmp48949
                                (gx#datum->syntax
                                 '#f
                                 'make-struct-slot-accessor))
                               (__tmp48943
                                (let ((__tmp48948
                                       (gx#datum->syntax
                                        '#f
                                        'make-struct-slot-mutator))
                                      (__tmp48944
                                       (let ((__tmp48947
                                              (gx#datum->syntax
                                               '#f
                                               'make-struct-slot-unchecked-accessor))
                                             (__tmp48945
                                              (let ((__tmp48946
                                                     (gx#datum->syntax
                                                      '#f
                                                      'make-struct-slot-unchecked-mutator)))
                                                (declare (not safe))
                                                (cons __tmp48946 '()))))
                                         (declare (not safe))
                                         (cons __tmp48947 __tmp48945))))
                                  (declare (not safe))
                                  (cons __tmp48948 __tmp48944))))
                           (declare (not safe))
                           (cons __tmp48949 __tmp48943))))
                    (declare (not safe))
                    (cons __tmp48950 __tmp48942))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp48951
                                                           __tmp48941))))
                                              (declare (not safe))
                                              (cons __tmp48952 __tmp48940))
                                            (let ((__tmp48939
                                                   (gx#datum->syntax
                                                    '#f
                                                    'make-class-type*))
                                                  (__tmp48927
                                                   (let ((__tmp48938
                                                          (gx#datum->syntax
                                                           '#f
                                                           'make-class-instance))
                                                         (__tmp48928
                                                          (let ((__tmp48937
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'make-class-predicate))
                        (__tmp48929
                         (let ((__tmp48936
                                (gx#datum->syntax
                                 '#f
                                 'make-class-slot-accessor))
                               (__tmp48930
                                (let ((__tmp48935
                                       (gx#datum->syntax
                                        '#f
                                        'make-class-slot-mutator))
                                      (__tmp48931
                                       (let ((__tmp48934
                                              (gx#datum->syntax
                                               '#f
                                               'make-class-slot-unchecked-accessor))
                                             (__tmp48932
                                              (let ((__tmp48933
                                                     (gx#datum->syntax
                                                      '#f
                                                      'make-class-slot-unchecked-mutator)))
                                                (declare (not safe))
                                                (cons __tmp48933 '()))))
                                         (declare (not safe))
                                         (cons __tmp48934 __tmp48932))))
                                  (declare (not safe))
                                  (cons __tmp48935 __tmp48931))))
                           (declare (not safe))
                           (cons __tmp48936 __tmp48930))))
                    (declare (not safe))
                    (cons __tmp48937 __tmp48929))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp48938
                                                           __tmp48928))))
                                              (declare (not safe))
                                              (cons __tmp48939 __tmp48927)))))
                                  (declare (not safe))
                                  (_g1801719163_ __tmp48926))))
                            _slot1795617995_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_loop1795117975_
                                                      _target1794817969_
                                                      '())))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g1794517962_
                                                    _g1794617966_))))))
                                       (let ()
                                         (declare (not safe))
                                         (_g1794517962_ _g1794617966_)))))
                                (__tmp48954
                                 (gx#stx-map _slot-name17802_ _slots17932_)))
                           (declare (not safe))
                           (_g1794419167_ __tmp48954))
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
          (_g1780419171_ _stx17796_)))))
  (define |gerbil/core$<MOP>$<MOP:1>[:0:]#defstruct-type|
    (lambda (_stx19283_)
      (let ()
        (declare (not safe))
        (|gerbil/core$<MOP>$<MOP:1>[1]#generate-typedef| _stx19283_ '#t))))
  (define |gerbil/core$<MOP>$<MOP:1>[:0:]#defclass-type|
    (lambda (_stx19286_)
      (let ()
        (declare (not safe))
        (|gerbil/core$<MOP>$<MOP:1>[1]#generate-typedef| _stx19286_ '#f)))))
