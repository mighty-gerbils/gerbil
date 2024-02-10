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
                                       (let ((_g49192_
                                              (gx#syntax-split-splice
                                               _g1794617966_
                                               '0)))
                                         (begin
                                           (let ((_g49193_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g49192_)
                                                        (##vector-length
                                                         _g49192_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g49193_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g49193_)))
                                           (let ((_target1794817969_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g49192_ 0)))
                                                 (_tl1795017972_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g49192_
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
                             (let ((__tmp49432
                                    (let ()
                                      (declare (not safe))
                                      (cons _lp-hd1795317989_
                                            _slot1795517982_))))
                               (declare (not safe))
                               (_loop1795117975_
                                _lp-tl1795417992_
                                __tmp49432))))
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
                          (let ((_g49194_
                                 (gx#syntax-split-splice _g1859018619_ '0)))
                            (begin
                              (let ((_g49195_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g49194_)
                                           (##vector-length _g49194_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g49195_ 2)))
                                    (error "Context expects 2 values"
                                           _g49195_)))
                              (let ((_target1859318622_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g49194_ 0)))
                                    (_tl1859518625_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g49194_ 1))))
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
                                    (let ((__tmp49257
                                           (let ()
                                             (declare (not safe))
                                             (cons _hd1860818664_
                                                   _def-setf1860018635_)))
                                          (__tmp49256
                                           (let ()
                                             (declare (not safe))
                                             (cons _hd1860518654_
                                                   _def-getf1860118637_))))
                                      (declare (not safe))
                                      (_loop1859618628_
                                       _lp-tl1859918647_
                                       __tmp49257
                                       __tmp49256))
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
                                 (let ((_g49196_
                                        (gx#syntax-split-splice
                                         _g1869618725_
                                         '0)))
                                   (begin
                                     (let ((_g49197_
                                            (let ()
                                              (declare (not safe))
                                              (if (##values? _g49196_)
                                                  (##vector-length _g49196_)
                                                  1))))
                                       (if (not (let ()
                                                  (declare (not safe))
                                                  (##fx= _g49197_ 2)))
                                           (error "Context expects 2 values"
                                                  _g49197_)))
                                     (let ((_target1869918728_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref _g49196_ 0)))
                                           (_tl1870118731_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref _g49196_ 1))))
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
                                           (let ((__tmp49212
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _hd1871418770_
                                                          _def-usetf1870618741_)))
                                                 (__tmp49211
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _hd1871118760_
                                                          _def-ugetf1870718743_))))
                                             (declare (not safe))
                                             (_loop1870218734_
                                              _lp-tl1870518753_
                                              __tmp49212
                                              __tmp49211))
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
                            (let ((__tmp49198
                                   (let ((__tmp49210
                                          (gx#datum->syntax '#f 'begin))
                                         (__tmp49199
                                          (let ((__tmp49200
                                                 (let ((__tmp49201
                                                        (let ((__tmp49202
                                                               (let ((__tmp49209
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g1880218811_ _g1880318814_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g1880218811_ _g1880318814_))))
                             (__tmp49203
                              (let ((__tmp49208
                                     (lambda (_g1880418817_ _g1880518820_)
                                       (let ()
                                         (declare (not safe))
                                         (cons _g1880418817_ _g1880518820_))))
                                    (__tmp49204
                                     (let ((__tmp49207
                                            (lambda (_g1880618823_
                                                     _g1880718826_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g1880618823_
                                                      _g1880718826_))))
                                           (__tmp49205
                                            (let ((__tmp49206
                                                   (lambda (_g1880818829_
                                                            _g1880918832_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g1880818829_
                                                             _g1880918832_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp49206
                                                      '()
                                                      _L18782_))))
                                       (declare (not safe))
                                       (foldr1 __tmp49207
                                               __tmp49205
                                               _L18784_))))
                                (declare (not safe))
                                (foldr1 __tmp49208 __tmp49204 _L18676_))))
                         (declare (not safe))
                         (foldr1 __tmp49209 __tmp49203 _L18678_))))
                  (declare (not safe))
                  (cons _L18548_ __tmp49202))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L18576_
                                                         __tmp49201))))
                                            (declare (not safe))
                                            (cons _L18520_ __tmp49200))))
                                     (declare (not safe))
                                     (cons __tmp49210 __tmp49199))))
                              (declare (not safe))
                              (_wrap17800_ __tmp49198)))))
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
                          (__tmp49213
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
                          (let ((__tmp49235
                                 (let ((__tmp49236
                                        (let ((__tmp49254
                                               (gx#datum->syntax '#f 'def))
                                              (__tmp49237
                                               (let ((__tmp49238
                                                      (let ((__tmp49239
                                                             (let ((__tmp49253
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'begin-annotation))
                           (__tmp49240
                            (let ((__tmp49248
                                   (let ((__tmp49252
                                          (gx#datum->syntax
                                           '#f
                                           '@mop.accessor))
                                         (__tmp49249
                                          (let ((__tmp49250
                                                 (let ((__tmp49251
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons '#f '()))))
                                                   (declare (not safe))
                                                   (cons _L18901_
                                                         __tmp49251))))
                                            (declare (not safe))
                                            (cons _L18268_ __tmp49250))))
                                     (declare (not safe))
                                     (cons __tmp49252 __tmp49249)))
                                  (__tmp49241
                                   (let ((__tmp49242
                                          (let ((__tmp49243
                                                 (let ((__tmp49244
                                                        (let ((__tmp49245
                                                               (let ((__tmp49247
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'quote))
                             (__tmp49246
                              (let ()
                                (declare (not safe))
                                (cons _L18901_ '()))))
                         (declare (not safe))
                         (cons __tmp49247 __tmp49246))))
                  (declare (not safe))
                  (cons __tmp49245 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L17894_
                                                         __tmp49244))))
                                            (declare (not safe))
                                            (cons _L18132_ __tmp49243))))
                                     (declare (not safe))
                                     (cons __tmp49242 '()))))
                              (declare (not safe))
                              (cons __tmp49248 __tmp49241))))
                       (declare (not safe))
                       (cons __tmp49253 __tmp49240))))
                (declare (not safe))
                (cons __tmp49239 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L18963_ __tmp49238))))
                                          (declare (not safe))
                                          (cons __tmp49254 __tmp49237))))
                                   (declare (not safe))
                                   (_wrap17800_ __tmp49236)))
                                (__tmp49214
                                 (let ((__tmp49215
                                        (let ((__tmp49216
                                               (let ((__tmp49234
                                                      (gx#datum->syntax
                                                       '#f
                                                       'def))
                                                     (__tmp49217
                                                      (let ((__tmp49218
                                                             (let ((__tmp49219
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp49233
                                   (gx#datum->syntax '#f 'begin-annotation))
                                  (__tmp49220
                                   (let ((__tmp49228
                                          (let ((__tmp49232
                                                 (gx#datum->syntax
                                                  '#f
                                                  '@mop.mutator))
                                                (__tmp49229
                                                 (let ((__tmp49230
                                                        (let ((__tmp49231
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons '#f '()))))
                  (declare (not safe))
                  (cons _L18901_ __tmp49231))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L18268_
                                                         __tmp49230))))
                                            (declare (not safe))
                                            (cons __tmp49232 __tmp49229)))
                                         (__tmp49221
                                          (let ((__tmp49222
                                                 (let ((__tmp49223
                                                        (let ((__tmp49224
                                                               (let ((__tmp49225
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp49227 (gx#datum->syntax '#f 'quote))
                                    (__tmp49226
                                     (let ()
                                       (declare (not safe))
                                       (cons _L18901_ '()))))
                                (declare (not safe))
                                (cons __tmp49227 __tmp49226))))
                         (declare (not safe))
                         (cons __tmp49225 '()))))
                  (declare (not safe))
                  (cons _L17894_ __tmp49224))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L18130_
                                                         __tmp49223))))
                                            (declare (not safe))
                                            (cons __tmp49222 '()))))
                                     (declare (not safe))
                                     (cons __tmp49228 __tmp49221))))
                              (declare (not safe))
                              (cons __tmp49233 __tmp49220))))
                       (declare (not safe))
                       (cons __tmp49219 '()))))
                (declare (not safe))
                (cons _L18961_ __tmp49218))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp49234
                                                       __tmp49217))))
                                          (declare (not safe))
                                          (_wrap17800_ __tmp49216))))
                                   (declare (not safe))
                                   (cons __tmp49215 '()))))
                            (declare (not safe))
                            (cons __tmp49235 __tmp49214))))
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
                                      (__tmp49255
                                       (list (gx#stx-identifier
                                              _L18900_
                                              '"&"
                                              _L18900_)
                                             (gx#stx-identifier
                                              _L18898_
                                              '"&"
                                              _L18898_))))
                                 (declare (not safe))
                                 (_g1891818979_ __tmp49255)))
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
                     (_g1869418835_ __tmp49213))))
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
                   (__tmp49258
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
                        (let ((__tmp49280
                               (let ((__tmp49281
                                      (let ((__tmp49299
                                             (gx#datum->syntax '#f 'def))
                                            (__tmp49282
                                             (let ((__tmp49283
                                                    (let ((__tmp49284
                                                           (let ((__tmp49298
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'begin-annotation))
                         (__tmp49285
                          (let ((__tmp49293
                                 (let ((__tmp49297
                                        (gx#datum->syntax '#f '@mop.accessor))
                                       (__tmp49294
                                        (let ((__tmp49295
                                               (let ((__tmp49296
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons '#t '()))))
                                                 (declare (not safe))
                                                 (cons _L19053_ __tmp49296))))
                                          (declare (not safe))
                                          (cons _L18268_ __tmp49295))))
                                   (declare (not safe))
                                   (cons __tmp49297 __tmp49294)))
                                (__tmp49286
                                 (let ((__tmp49287
                                        (let ((__tmp49288
                                               (let ((__tmp49289
                                                      (let ((__tmp49290
                                                             (let ((__tmp49292
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'quote))
                           (__tmp49291
                            (let () (declare (not safe)) (cons _L19053_ '()))))
                       (declare (not safe))
                       (cons __tmp49292 __tmp49291))))
                (declare (not safe))
                (cons __tmp49290 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L17894_ __tmp49289))))
                                          (declare (not safe))
                                          (cons _L18134_ __tmp49288))))
                                   (declare (not safe))
                                   (cons __tmp49287 '()))))
                            (declare (not safe))
                            (cons __tmp49293 __tmp49286))))
                     (declare (not safe))
                     (cons __tmp49298 __tmp49285))))
              (declare (not safe))
              (cons __tmp49284 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L19052_ __tmp49283))))
                                        (declare (not safe))
                                        (cons __tmp49299 __tmp49282))))
                                 (declare (not safe))
                                 (_wrap17800_ __tmp49281)))
                              (__tmp49259
                               (let ((__tmp49260
                                      (let ((__tmp49261
                                             (let ((__tmp49279
                                                    (gx#datum->syntax
                                                     '#f
                                                     'def))
                                                   (__tmp49262
                                                    (let ((__tmp49263
                                                           (let ((__tmp49264
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp49278
                                 (gx#datum->syntax '#f 'begin-annotation))
                                (__tmp49265
                                 (let ((__tmp49273
                                        (let ((__tmp49277
                                               (gx#datum->syntax
                                                '#f
                                                '@mop.mutator))
                                              (__tmp49274
                                               (let ((__tmp49275
                                                      (let ((__tmp49276
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons '#t '()))))
                (declare (not safe))
                (cons _L19053_ __tmp49276))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L18268_ __tmp49275))))
                                          (declare (not safe))
                                          (cons __tmp49277 __tmp49274)))
                                       (__tmp49266
                                        (let ((__tmp49267
                                               (let ((__tmp49268
                                                      (let ((__tmp49269
                                                             (let ((__tmp49270
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp49272 (gx#datum->syntax '#f 'quote))
                                  (__tmp49271
                                   (let ()
                                     (declare (not safe))
                                     (cons _L19053_ '()))))
                              (declare (not safe))
                              (cons __tmp49272 __tmp49271))))
                       (declare (not safe))
                       (cons __tmp49270 '()))))
                (declare (not safe))
                (cons _L17894_ __tmp49269))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L18133_ __tmp49268))))
                                          (declare (not safe))
                                          (cons __tmp49267 '()))))
                                   (declare (not safe))
                                   (cons __tmp49273 __tmp49266))))
                            (declare (not safe))
                            (cons __tmp49278 __tmp49265))))
                     (declare (not safe))
                     (cons __tmp49264 '()))))
              (declare (not safe))
              (cons _L19050_ __tmp49263))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp49279 __tmp49262))))
                                        (declare (not safe))
                                        (_wrap17800_ __tmp49261))))
                                 (declare (not safe))
                                 (cons __tmp49260 '()))))
                          (declare (not safe))
                          (cons __tmp49280 __tmp49259)))
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
              (_g1858818987_ __tmp49258))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1856218573_)))
                                            (__tmp49300
                                             (let ((__tmp49301
                                                    (let ((__tmp49313
                                                           (gx#datum->syntax
                                                            '#f
                                                            'def))
                                                          (__tmp49302
                                                           (let ((__tmp49303
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp49304
                                 (let ((__tmp49312
                                        (gx#datum->syntax
                                         '#f
                                         'begin-annotation))
                                       (__tmp49305
                                        (let ((__tmp49309
                                               (let ((__tmp49311
                                                      (gx#datum->syntax
                                                       '#f
                                                       '@mop.predicate))
                                                     (__tmp49310
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L18268_ '()))))
                                                 (declare (not safe))
                                                 (cons __tmp49311 __tmp49310)))
                                              (__tmp49306
                                               (let ((__tmp49307
                                                      (let ((__tmp49308
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L17894_ '()))))
                (declare (not safe))
                (cons _L18135_ __tmp49308))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp49307 '()))))
                                          (declare (not safe))
                                          (cons __tmp49309 __tmp49306))))
                                   (declare (not safe))
                                   (cons __tmp49312 __tmp49305))))
                            (declare (not safe))
                            (cons __tmp49304 '()))))
                     (declare (not safe))
                     (cons _L17891_ __tmp49303))))
              (declare (not safe))
              (cons __tmp49313 __tmp49302))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_wrap17800_ __tmp49301))))
                                       (declare (not safe))
                                       (_g1856019075_ __tmp49300))))
                                 _g1853418545_)))
                             (__tmp49314
                              (if (gx#stx-false? _L17892_)
                                  (let ((__tmp49337
                                         (gx#datum->syntax '#f 'begin)))
                                    (declare (not safe))
                                    (cons __tmp49337 '()))
                                  (let ((__tmp49315
                                         (let ((__tmp49336
                                                (gx#datum->syntax '#f 'def))
                                               (__tmp49316
                                                (let ((__tmp49317
                                                       (let ((__tmp49318
                                                              (let ((__tmp49335
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'begin-annotation))
                            (__tmp49319
                             (let ((__tmp49332
                                    (let ((__tmp49334
                                           (gx#datum->syntax
                                            '#f
                                            '@mop.constructor))
                                          (__tmp49333
                                           (let ()
                                             (declare (not safe))
                                             (cons _L18268_ '()))))
                                      (declare (not safe))
                                      (cons __tmp49334 __tmp49333)))
                                   (__tmp49320
                                    (let ((__tmp49321
                                           (let ((__tmp49331
                                                  (gx#datum->syntax
                                                   '#f
                                                   'lambda))
                                                 (__tmp49322
                                                  (let ((__tmp49330
                                                         (gx#datum->syntax
                                                          '#f
                                                          '$args))
                                                        (__tmp49323
                                                         (let ((__tmp49324
                                                                (let ((__tmp49329
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'apply))
                              (__tmp49325
                               (let ((__tmp49326
                                      (let ((__tmp49327
                                             (let ((__tmp49328
                                                    (gx#datum->syntax
                                                     '#f
                                                     '$args)))
                                               (declare (not safe))
                                               (cons __tmp49328 '()))))
                                        (declare (not safe))
                                        (cons _L17894_ __tmp49327))))
                                 (declare (not safe))
                                 (cons _L18136_ __tmp49326))))
                          (declare (not safe))
                          (cons __tmp49329 __tmp49325))))
                   (declare (not safe))
                   (cons __tmp49324 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp49330
                                                          __tmp49323))))
                                             (declare (not safe))
                                             (cons __tmp49331 __tmp49322))))
                                      (declare (not safe))
                                      (cons __tmp49321 '()))))
                               (declare (not safe))
                               (cons __tmp49332 __tmp49320))))
                        (declare (not safe))
                        (cons __tmp49335 __tmp49319))))
                 (declare (not safe))
                 (cons __tmp49318 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L17892_ __tmp49317))))
                                           (declare (not safe))
                                           (cons __tmp49336 __tmp49316))))
                                    (declare (not safe))
                                    (_wrap17800_ __tmp49315)))))
                        (declare (not safe))
                        (_g1853219079_ __tmp49314))))
                  _g1850618517_)))
              (__tmp49338
               (let ((__tmp49339
                      (let ((__tmp49356 (gx#datum->syntax '#f 'def))
                            (__tmp49340
                             (let ((__tmp49341
                                    (let ((__tmp49342
                                           (let ((__tmp49355
                                                  (gx#datum->syntax
                                                   '#f
                                                   'begin-annotation))
                                                 (__tmp49343
                                                  (let ((__tmp49345
                                                         (let ((__tmp49354
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@mop.class))
                       (__tmp49346
                        (let ((__tmp49347
                               (let ((__tmp49348
                                      (let ((__tmp49352
                                             (let ((__tmp49353
                                                    (lambda (_g1908619089_
                                                             _g1908719092_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _g1908619089_
                                                              _g1908719092_)))))
                                               (declare (not safe))
                                               (foldr1 __tmp49353
                                                       '()
                                                       _L17999_)))
                                            (__tmp49349
                                             (let ((__tmp49350
                                                    (let ((__tmp49351
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L18352_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _L18324_ __tmp49351))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L18240_ __tmp49350))))
                                        (declare (not safe))
                                        (cons __tmp49352 __tmp49349))))
                                 (declare (not safe))
                                 (cons _L18296_ __tmp49348))))
                          (declare (not safe))
                          (cons _L18184_ __tmp49347))))
                   (declare (not safe))
                   (cons __tmp49354 __tmp49346)))
                (__tmp49344 (let () (declare (not safe)) (cons _L18492_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp49345
                                                          __tmp49344))))
                                             (declare (not safe))
                                             (cons __tmp49355 __tmp49343))))
                                      (declare (not safe))
                                      (cons __tmp49342 '()))))
                               (declare (not safe))
                               (cons _L17894_ __tmp49341))))
                        (declare (not safe))
                        (cons __tmp49356 __tmp49340))))
                 (declare (not safe))
                 (_wrap17800_ __tmp49339))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g1850419083_ __tmp49338))))
                                           _g1847818489_)))
                                       (__tmp49357
                                        (let ((__tmp49358
                                               (let ((__tmp49375
                                                      (let ((__tmp49377
                                                             (gx#datum->syntax
                                                              '#f
                                                              'quote))
                                                            (__tmp49376
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L18184_ '()))))
                (declare (not safe))
                (cons __tmp49377 __tmp49376)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp49359
                                                      (let ((__tmp49372
                                                             (let ((__tmp49374
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'quote))
                           (__tmp49373
                            (let () (declare (not safe)) (cons _L18212_ '()))))
                       (declare (not safe))
                       (cons __tmp49374 __tmp49373)))
                    (__tmp49360
                     (let ((__tmp49361
                            (let ((__tmp49367
                                   (let ((__tmp49371
                                          (gx#datum->syntax '#f 'quote))
                                         (__tmp49368
                                          (let ((__tmp49369
                                                 (let ((__tmp49370
                                                        (lambda (_g1909819101_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1909919104_)
                  (let ()
                    (declare (not safe))
                    (cons _g1909819101_ _g1909919104_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr1 __tmp49370
                                                           '()
                                                           _L17999_))))
                                            (declare (not safe))
                                            (cons __tmp49369 '()))))
                                     (declare (not safe))
                                     (cons __tmp49371 __tmp49368)))
                                  (__tmp49362
                                   (let ((__tmp49363
                                          (let ((__tmp49364
                                                 (let ((__tmp49366
                                                        (gx#datum->syntax
                                                         '#f
                                                         'quote))
                                                       (__tmp49365
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L18240_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp49366
                                                         __tmp49365))))
                                            (declare (not safe))
                                            (cons __tmp49364 '()))))
                                     (declare (not safe))
                                     (cons _L18436_ __tmp49363))))
                              (declare (not safe))
                              (cons __tmp49367 __tmp49362))))
                       (declare (not safe))
                       (cons _L18464_ __tmp49361))))
                (declare (not safe))
                (cons __tmp49372 __tmp49360))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp49375
                                                       __tmp49359))))
                                          (declare (not safe))
                                          (cons _L18137_ __tmp49358))))
                                  (declare (not safe))
                                  (_g1847619095_ __tmp49357))))
                            _g1845018461_)))
                        (__tmp49378
                         (if _struct?17798_
                             _L17893_
                             (let ((__tmp49379 (gx#datum->syntax '#f 'list)))
                               (declare (not safe))
                               (cons __tmp49379 _L17893_)))))
                   (declare (not safe))
                   (_g1844819107_ __tmp49378))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1842218433_)))
                                                 (__tmp49380
                                                  (if _struct?17798_
                                                      (let ((__tmp49387
                                                             (gx#datum->syntax
                                                              '#f
                                                              '@list))
                                                            (__tmp49381
                                                             (let ((__tmp49384
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp49386 (gx#datum->syntax '#f '@list))
                                  (__tmp49385
                                   (let ()
                                     (declare (not safe))
                                     (cons 'struct: '#t))))
                              (declare (not safe))
                              (cons __tmp49386 __tmp49385)))
                           (__tmp49382
                            (let ((__tmp49383
                                   (let ()
                                     (declare (not safe))
                                     (cons _L18408_ '()))))
                              (declare (not safe))
                              (cons ':: __tmp49383))))
                       (declare (not safe))
                       (cons __tmp49384 __tmp49382))))
                (declare (not safe))
                (cons __tmp49387 __tmp49381))
              _L18408_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g1842019111_ __tmp49380))))
                                      _g1839418405_)))
                                  (__tmp49388
                                   (if (gx#stx-e _L18352_)
                                       (let ((__tmp49395
                                              (gx#datum->syntax '#f '@list))
                                             (__tmp49389
                                              (let ((__tmp49392
                                                     (let ((__tmp49394
                                                            (gx#datum->syntax
                                                             '#f
                                                             '@list))
                                                           (__tmp49393
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons 'final:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#t))))
               (declare (not safe))
               (cons __tmp49394 __tmp49393)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp49390
                                                     (let ((__tmp49391
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L18380_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons ':: __tmp49391))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp49392 __tmp49390))))
                                         (declare (not safe))
                                         (cons __tmp49395 __tmp49389))
                                       _L18380_)))
                             (declare (not safe))
                             (_g1839219115_ __tmp49388))))
                       _g1836618377_)))
                   (__tmp49396
                    (let ((_$e19123_ (gx#stx-getq 'properties: _L17889_)))
                      (if _$e19123_
                          _$e19123_
                          (let ((__tmp49397 (gx#datum->syntax '#f '@list)))
                            (declare (not safe))
                            (cons __tmp49397 '()))))))
              (declare (not safe))
              (_g1836419119_ __tmp49396))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1833818349_)))
                                            (__tmp49398
                                             (gx#stx-getq 'final: _L17889_)))
                                       (declare (not safe))
                                       (_g1833619127_ __tmp49398))))
                                 _g1831018321_))))
                        (declare (not safe))
                        (_g1830819131_ _struct?17798_))))
                  _g1828218293_)))
              (__tmp49399
               (if _struct?17798_
                   (if (gx#stx-e _L17893_)
                       (let ((__tmp49400 (gx#core-quote-syntax _L17893_)))
                         (declare (not safe))
                         (cons __tmp49400 '()))
                       '())
                   (gx#stx-map gx#core-quote-syntax _L17893_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g1828019135_ __tmp49399))))
                                           _g1825418265_)))
                                       (__tmp49401
                                        (gx#core-quote-syntax _L17894_)))
                                  (declare (not safe))
                                  (_g1825219139_ __tmp49401))))
                            _g1822618237_)))
                        (__tmp49402 (gx#stx-getq 'constructor: _L17889_)))
                   (declare (not safe))
                   (_g1822419143_ __tmp49402))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1819818209_)))
                                                 (__tmp49403
                                                  (let ((_$e19151_
                                                         (gx#stx-getq
                                                          'name:
                                                          _L17889_)))
                                                    (if _$e19151_
                                                        _$e19151_
                                                        _L17894_))))
                                            (declare (not safe))
                                            (_g1819619147_ __tmp49403))))
                                      _g1817018181_)))
                                  (__tmp49404
                                   (let ((_$e19159_
                                          (gx#stx-getq 'id: _L17889_)))
                                     (if _$e19159_
                                         _$e19159_
                                         (let ()
                                           (declare (not safe))
                                           (|gerbil/core$<MOP>$<MOP:1>[1]#make-class-type-id|
                                            _L17894_))))))
                             (declare (not safe))
                             (_g1816819155_ __tmp49404))))
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
                                       (__tmp49405
                                        (if _struct?17798_
                                            (let ((__tmp49431
                                                   (gx#datum->syntax
                                                    '#f
                                                    'make-struct-type))
                                                  (__tmp49419
                                                   (let ((__tmp49430
                                                          (gx#datum->syntax
                                                           '#f
                                                           'make-struct-instance))
                                                         (__tmp49420
                                                          (let ((__tmp49429
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'make-struct-predicate))
                        (__tmp49421
                         (let ((__tmp49428
                                (gx#datum->syntax
                                 '#f
                                 'make-struct-slot-accessor))
                               (__tmp49422
                                (let ((__tmp49427
                                       (gx#datum->syntax
                                        '#f
                                        'make-struct-slot-mutator))
                                      (__tmp49423
                                       (let ((__tmp49426
                                              (gx#datum->syntax
                                               '#f
                                               'make-struct-slot-unchecked-accessor))
                                             (__tmp49424
                                              (let ((__tmp49425
                                                     (gx#datum->syntax
                                                      '#f
                                                      'make-struct-slot-unchecked-mutator)))
                                                (declare (not safe))
                                                (cons __tmp49425 '()))))
                                         (declare (not safe))
                                         (cons __tmp49426 __tmp49424))))
                                  (declare (not safe))
                                  (cons __tmp49427 __tmp49423))))
                           (declare (not safe))
                           (cons __tmp49428 __tmp49422))))
                    (declare (not safe))
                    (cons __tmp49429 __tmp49421))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp49430
                                                           __tmp49420))))
                                              (declare (not safe))
                                              (cons __tmp49431 __tmp49419))
                                            (let ((__tmp49418
                                                   (gx#datum->syntax
                                                    '#f
                                                    'make-class-type))
                                                  (__tmp49406
                                                   (let ((__tmp49417
                                                          (gx#datum->syntax
                                                           '#f
                                                           'make-class-instance))
                                                         (__tmp49407
                                                          (let ((__tmp49416
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'make-class-predicate))
                        (__tmp49408
                         (let ((__tmp49415
                                (gx#datum->syntax
                                 '#f
                                 'make-class-slot-accessor))
                               (__tmp49409
                                (let ((__tmp49414
                                       (gx#datum->syntax
                                        '#f
                                        'make-class-slot-mutator))
                                      (__tmp49410
                                       (let ((__tmp49413
                                              (gx#datum->syntax
                                               '#f
                                               'make-class-slot-unchecked-accessor))
                                             (__tmp49411
                                              (let ((__tmp49412
                                                     (gx#datum->syntax
                                                      '#f
                                                      'make-class-slot-unchecked-mutator)))
                                                (declare (not safe))
                                                (cons __tmp49412 '()))))
                                         (declare (not safe))
                                         (cons __tmp49413 __tmp49411))))
                                  (declare (not safe))
                                  (cons __tmp49414 __tmp49410))))
                           (declare (not safe))
                           (cons __tmp49415 __tmp49409))))
                    (declare (not safe))
                    (cons __tmp49416 __tmp49408))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp49417
                                                           __tmp49407))))
                                              (declare (not safe))
                                              (cons __tmp49418 __tmp49406)))))
                                  (declare (not safe))
                                  (_g1801719163_ __tmp49405))))
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
                                (__tmp49433
                                 (gx#stx-map _slot-name17802_ _slots17932_)))
                           (declare (not safe))
                           (_g1794419167_ __tmp49433))
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
