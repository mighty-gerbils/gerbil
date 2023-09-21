(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<MOP>$<MOP:1>[1]#generate-typedef|
    (lambda (_stx17709_ _struct?17711_)
      (letrec ((_wrap17713_
                (lambda (_e-stx19314_)
                  (gx#stx-wrap-source
                   _e-stx19314_
                   (gx#stx-source _stx17709_))))
               (_slotify17715_
                (lambda (_field19179_ _off19181_)
                  (let* ((___stx3908939090_ _field19179_)
                         (_g1918419211_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx3908939090_))))
                    (let ((___kont3909239093_
                           (lambda (_L19295_ _L19297_)
                             (cons _off19181_
                                   (cons _L19297_ (cons _L19295_ '())))))
                          (___kont3909439095_
                           (lambda (_L19248_ _L19250_ _L19251_)
                             (cons _off19181_
                                   (cons _L19250_ (cons _L19248_ '()))))))
                      (if (gx#stx-pair? ___stx3908939090_)
                          (let ((_e1919019275_
                                 (gx#syntax-e ___stx3908939090_)))
                            (let ((_tl1918819282_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1919019275_)))
                                  (_hd1918919279_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1919019275_))))
                              (if (gx#stx-pair? _tl1918819282_)
                                  (let ((_e1919319285_
                                         (gx#syntax-e _tl1918819282_)))
                                    (let ((_tl1919119292_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1919319285_)))
                                          (_hd1919219289_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1919319285_))))
                                      (if (gx#stx-null? _tl1919119292_)
                                          (___kont3909239093_
                                           _hd1919219289_
                                           _hd1918919279_)
                                          (if (gx#stx-pair? _tl1919119292_)
                                              (let ((_e1920519238_
                                                     (gx#syntax-e
                                                      _tl1919119292_)))
                                                (let ((_tl1920319245_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1920519238_)))
                                                      (_hd1920419242_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1920519238_))))
                                                  (if (gx#stx-null?
                                                       _tl1920319245_)
                                                      (___kont3909439095_
                                                       _hd1920419242_
                                                       _hd1919219289_
                                                       _hd1918919279_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g1918419211_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g1918419211_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g1918419211_)))))
                          (let () (declare (not safe)) (_g1918419211_)))))))
               (_field-id17716_
                (lambda (_field19045_)
                  (let* ((___stx3913339134_ _field19045_)
                         (_g1904919076_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx3913339134_))))
                    (let ((___kont3913639137_ (lambda (_L19160_ _L19162_) ':))
                          (___kont3913839139_
                           (lambda (_L19113_ _L19115_ _L19116_) _L19116_)))
                      (if (gx#stx-pair? ___stx3913339134_)
                          (let ((_e1905519140_
                                 (gx#syntax-e ___stx3913339134_)))
                            (let ((_tl1905319147_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1905519140_)))
                                  (_hd1905419144_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1905519140_))))
                              (if (gx#stx-pair? _tl1905319147_)
                                  (let ((_e1905819150_
                                         (gx#syntax-e _tl1905319147_)))
                                    (let ((_tl1905619157_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1905819150_)))
                                          (_hd1905719154_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1905819150_))))
                                      (if (gx#stx-null? _tl1905619157_)
                                          (___kont3913639137_
                                           _hd1905719154_
                                           _hd1905419144_)
                                          (if (gx#stx-pair? _tl1905619157_)
                                              (let ((_e1907019103_
                                                     (gx#syntax-e
                                                      _tl1905619157_)))
                                                (let ((_tl1906819110_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1907019103_)))
                                                      (_hd1906919107_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1907019103_))))
                                                  (if (gx#stx-null?
                                                       _tl1906819110_)
                                                      (___kont3913839139_
                                                       _hd1906919107_
                                                       _hd1905719154_
                                                       _hd1905419144_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g1904919076_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g1904919076_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g1904919076_)))))
                          (let () (declare (not safe)) (_g1904919076_)))))))
               (_struct-opt?17717_
                (lambda (_key19042_)
                  (memq (gx#stx-e _key19042_)
                        '(fields: id: name: plist: constructor: unchecked:))))
               (_class-opt?17718_
                (lambda (_key19039_)
                  (memq (gx#stx-e _key19039_)
                        '(slots: id: name: plist: constructor: unchecked:))))
               (_module-type-id17719_
                (lambda (_type-t19026_)
                  (let ((_$e19029_
                         (gx#module-context-ns (gx#current-expander-context))))
                    (if _$e19029_
                        ((lambda (_ns19033_)
                           (gx#stx-identifier
                            _type-t19026_
                            _ns19033_
                            '"#"
                            _type-t19026_))
                         _$e19029_)
                        (let ((_mid19036_
                               (gx#expander-context-id
                                (gx#current-expander-context))))
                          (gx#stx-identifier
                           _type-t19026_
                           _mid19036_
                           '"#"
                           _type-t19026_)))))))
        (let* ((_g1772117748_
                (lambda (_g1772217744_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1772217744_)))
               (_g1772019022_
                (lambda (_g1772217752_)
                  (if (gx#stx-pair? _g1772217752_)
                      (let ((_e1773017755_ (gx#syntax-e _g1772217752_)))
                        (let ((_hd1772917759_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1773017755_)))
                              (_tl1772817762_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1773017755_))))
                          (if (gx#stx-pair? _tl1772817762_)
                              (let ((_e1773317765_
                                     (gx#syntax-e _tl1772817762_)))
                                (let ((_hd1773217769_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1773317765_)))
                                      (_tl1773117772_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1773317765_))))
                                  (if (gx#stx-pair? _tl1773117772_)
                                      (let ((_e1773617775_
                                             (gx#syntax-e _tl1773117772_)))
                                        (let ((_hd1773517779_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1773617775_)))
                                              (_tl1773417782_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1773617775_))))
                                          (if (gx#stx-pair? _tl1773417782_)
                                              (let ((_e1773917785_
                                                     (gx#syntax-e
                                                      _tl1773417782_)))
                                                (let ((_hd1773817789_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1773917785_)))
                                                      (_tl1773717792_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1773917785_))))
                                                  (if (gx#stx-pair?
                                                       _tl1773717792_)
                                                      (let ((_e1774217795_
                                                             (gx#syntax-e
                                                              _tl1773717792_)))
                                                        (let ((_hd1774117799_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e1774217795_)))
                      (_tl1774017802_
                       (let () (declare (not safe)) (##cdr _e1774217795_))))
                  ((lambda (_L17805_ _L17807_ _L17808_ _L17809_ _L17810_)
                     (if (and (gx#identifier? _L17810_)
                              (or (gx#identifier? _L17808_)
                                  (gx#stx-false? _L17808_))
                              (gx#identifier? _L17807_)
                              (gx#stx-plist?
                               _L17805_
                               (if _struct?17711_
                                   _struct-opt?17717_
                                   _class-opt?17718_)))
                         (let* ((_els17844_
                                 (let ((_$e17840_
                                        (gx#stx-getq
                                         (if _struct?17711_ 'fields: 'slots:)
                                         _L17805_)))
                                   (if _$e17840_ _$e17840_ '())))
                                (_g1784717878_
                                 (lambda (_g1784817874_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1784817874_)))
                                (_g1784619018_
                                 (lambda (_g1784817882_)
                                   (if (gx#stx-pair? _g1784817882_)
                                       (let ((_e1785717885_
                                              (gx#syntax-e _g1784817882_)))
                                         (let ((_hd1785617889_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e1785717885_)))
                                               (_tl1785517892_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e1785717885_))))
                                           (if (gx#stx-pair? _tl1785517892_)
                                               (let ((_e1786017895_
                                                      (gx#syntax-e
                                                       _tl1785517892_)))
                                                 (let ((_hd1785917899_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e1786017895_)))
                                                       (_tl1785817902_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e1786017895_))))
                                                   (if (gx#stx-pair?
                                                        _tl1785817902_)
                                                       (let ((_e1786317905_
                                                              (gx#syntax-e
                                                               _tl1785817902_)))
                                                         (let ((_hd1786217909_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e1786317905_)))
                       (_tl1786117912_
                        (let () (declare (not safe)) (##cdr _e1786317905_))))
                   (if (gx#stx-pair? _tl1786117912_)
                       (let ((_e1786617915_ (gx#syntax-e _tl1786117912_)))
                         (let ((_hd1786517919_
                                (let ()
                                  (declare (not safe))
                                  (##car _e1786617915_)))
                               (_tl1786417922_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e1786617915_))))
                           (if (gx#stx-pair? _tl1786417922_)
                               (let ((_e1786917925_
                                      (gx#syntax-e _tl1786417922_)))
                                 (let ((_hd1786817929_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e1786917925_)))
                                       (_tl1786717932_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e1786917925_))))
                                   (if (gx#stx-pair? _tl1786717932_)
                                       (let ((_e1787217935_
                                              (gx#syntax-e _tl1786717932_)))
                                         (let ((_hd1787117939_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e1787217935_)))
                                               (_tl1787017942_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e1787217935_))))
                                           (if (gx#stx-null? _tl1787017942_)
                                               ((lambda (_L17945_
                                                         _L17947_
                                                         _L17948_
                                                         _L17949_
                                                         _L17950_
                                                         _L17951_)
                                                  (let ()
                                                    (let* ((_g1798017988_
                                                            (lambda (_g1798117984_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g1798117984_)))
                                                           (_g1797919010_
                                                            (lambda (_g1798117992_)
                                                              ((lambda (_L17995_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g1800818016_
                                   (lambda (_g1800918012_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1800918012_)))
                                  (_g1800719002_
                                   (lambda (_g1800918020_)
                                     ((lambda (_L18023_)
                                        (let ()
                                          (let* ((_g1803618044_
                                                  (lambda (_g1803718040_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1803718040_)))
                                                 (_g1803518994_
                                                  (lambda (_g1803718048_)
                                                    ((lambda (_L18051_)
                                                       (let ()
                                                         (let* ((_g1806418072_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1806518068_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1806518068_)))
                        (_g1806318990_
                         (lambda (_g1806518076_)
                           ((lambda (_L18079_)
                              (let ()
                                (let* ((_g1809218100_
                                        (lambda (_g1809318096_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g1809318096_)))
                                       (_g1809118706_
                                        (lambda (_g1809318104_)
                                          ((lambda (_L18107_)
                                             (let ()
                                               (let* ((_g1812018128_
                                                       (lambda (_g1812118124_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1812118124_)))
                                                      (_g1811918702_
                                                       (lambda (_g1812118132_)
                                                         ((lambda (_L18135_)
                                                            (let ()
                                                              (let* ((_g1814818156_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g1814918152_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1814918152_)))
                             (_g1814718698_
                              (lambda (_g1814918160_)
                                ((lambda (_L18163_)
                                   (let ()
                                     (let* ((_g1817618184_
                                             (lambda (_g1817718180_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1817718180_)))
                                            (_g1817518694_
                                             (lambda (_g1817718188_)
                                               ((lambda (_L18191_)
                                                  (let ()
                                                    (let* ((_attrs18204_
                                                            (if _struct?17711_
                                                                (gx#stx-map
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _slotify17715_
                         _els17844_
                         (iota (gx#stx-length _els17844_)))
                        _els17844_))
                   (_g1820718233_
                    (lambda (_g1820818229_)
                      (gx#raise-syntax-error '#f '"Bad syntax" _g1820818229_)))
                   (_g1820618606_
                    (lambda (_g1820818237_)
                      (if (gx#stx-pair/null? _g1820818237_)
                          (let ((_g42241_
                                 (gx#syntax-split-splice _g1820818237_ '0)))
                            (begin
                              (let ((_g42242_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g42241_)
                                           (##vector-length _g42241_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g42242_ 2)))
                                    (error "Context expects 2 values"
                                           _g42242_)))
                              (let ((_target1821118240_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g42241_ 0)))
                                    (_tl1821318243_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g42241_ 1))))
                                (if (gx#stx-null? _tl1821318243_)
                                    (letrec ((_loop1821418246_
                                              (lambda (_hd1821218250_
                                                       _def-setf1821818253_
                                                       _def-getf1821918255_)
                                                (if (gx#stx-pair?
                                                     _hd1821218250_)
                                                    (let ((_e1821518258_
                                                           (gx#syntax-e
                                                            _hd1821218250_)))
                                                      (let ((_lp-hd1821618262_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e1821518258_)))
                    (_lp-tl1821718265_
                     (let () (declare (not safe)) (##cdr _e1821518258_))))
                (if (gx#stx-pair? _lp-hd1821618262_)
                    (let ((_e1822418268_ (gx#syntax-e _lp-hd1821618262_)))
                      (let ((_hd1822318272_
                             (let ()
                               (declare (not safe))
                               (##car _e1822418268_)))
                            (_tl1822218275_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1822418268_))))
                        (if (gx#stx-pair? _tl1822218275_)
                            (let ((_e1822718278_ (gx#syntax-e _tl1822218275_)))
                              (let ((_hd1822618282_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1822718278_)))
                                    (_tl1822518285_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1822718278_))))
                                (if (gx#stx-null? _tl1822518285_)
                                    (let ((__tmp42253
                                           (cons _hd1822618282_
                                                 _def-setf1821818253_))
                                          (__tmp42252
                                           (cons _hd1822318272_
                                                 _def-getf1821918255_)))
                                      (declare (not safe))
                                      (_loop1821418246_
                                       _lp-tl1821718265_
                                       __tmp42253
                                       __tmp42252))
                                    (let ()
                                      (declare (not safe))
                                      (_g1820718233_ _g1820818237_)))))
                            (let ()
                              (declare (not safe))
                              (_g1820718233_ _g1820818237_)))))
                    (let ()
                      (declare (not safe))
                      (_g1820718233_ _g1820818237_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_def-setf1822018288_
                                                           (reverse _def-setf1821818253_))
                                                          (_def-getf1822118291_
                                                           (reverse _def-getf1821918255_)))
                                                      ((lambda (_L18294_
                                                                _L18296_)
                                                         (let ()
                                                           (let* ((_g1831418340_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g1831518336_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1831518336_)))
                          (_g1831318454_
                           (lambda (_g1831518344_)
                             (if (gx#stx-pair/null? _g1831518344_)
                                 (let ((_g42243_
                                        (gx#syntax-split-splice
                                         _g1831518344_
                                         '0)))
                                   (begin
                                     (let ((_g42244_
                                            (let ()
                                              (declare (not safe))
                                              (if (##values? _g42243_)
                                                  (##vector-length _g42243_)
                                                  1))))
                                       (if (not (let ()
                                                  (declare (not safe))
                                                  (##fx= _g42244_ 2)))
                                           (error "Context expects 2 values"
                                                  _g42244_)))
                                     (let ((_target1831818347_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref _g42243_ 0)))
                                           (_tl1832018350_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref _g42243_ 1))))
                                       (if (gx#stx-null? _tl1832018350_)
                                           (letrec ((_loop1832118353_
                                                     (lambda (_hd1831918357_
                                                              _def-usetf1832518360_
                                                              _def-ugetf1832618362_)
                                                       (if (gx#stx-pair?
                                                            _hd1831918357_)
                                                           (let ((_e1832218365_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd1831918357_)))
                     (let ((_lp-hd1832318369_
                            (let ()
                              (declare (not safe))
                              (##car _e1832218365_)))
                           (_lp-tl1832418372_
                            (let ()
                              (declare (not safe))
                              (##cdr _e1832218365_))))
                       (if (gx#stx-pair? _lp-hd1832318369_)
                           (let ((_e1833118375_
                                  (gx#syntax-e _lp-hd1832318369_)))
                             (let ((_hd1833018379_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e1833118375_)))
                                   (_tl1832918382_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e1833118375_))))
                               (if (gx#stx-pair? _tl1832918382_)
                                   (let ((_e1833418385_
                                          (gx#syntax-e _tl1832918382_)))
                                     (let ((_hd1833318389_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e1833418385_)))
                                           (_tl1833218392_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e1833418385_))))
                                       (if (gx#stx-null? _tl1833218392_)
                                           (let ((__tmp42247
                                                  (cons _hd1833318389_
                                                        _def-usetf1832518360_))
                                                 (__tmp42246
                                                  (cons _hd1833018379_
                                                        _def-ugetf1832618362_)))
                                             (declare (not safe))
                                             (_loop1832118353_
                                              _lp-tl1832418372_
                                              __tmp42247
                                              __tmp42246))
                                           (let ()
                                             (declare (not safe))
                                             (_g1831418340_ _g1831518344_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g1831418340_ _g1831518344_)))))
                           (let ()
                             (declare (not safe))
                             (_g1831418340_ _g1831518344_)))))
                   (let ((_def-usetf1832718395_
                          (reverse _def-usetf1832518360_))
                         (_def-ugetf1832818398_
                          (reverse _def-ugetf1832618362_)))
                     ((lambda (_L18401_ _L18403_)
                        (let ()
                          (let ()
                            (let ((__tmp42245
                                   (cons (gx#datum->syntax '#f 'begin)
                                         (cons _L18135_
                                               (cons _L18191_
                                                     (cons _L18163_
                                                           (foldr (lambda (_g1842118430_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g1842218433_)
                            (cons _g1842118430_ _g1842218433_))
                          (foldr (lambda (_g1842318436_ _g1842418439_)
                                   (cons _g1842318436_ _g1842418439_))
                                 (foldr (lambda (_g1842518442_ _g1842618445_)
                                          (cons _g1842518442_ _g1842618445_))
                                        (foldr (lambda (_g1842718448_
                                                        _g1842818451_)
                                                 (cons _g1842718448_
                                                       _g1842818451_))
                                               '()
                                               _L18401_)
                                        _L18403_)
                                 _L18294_)
                          _L18296_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (declare (not safe))
                              (_wrap17713_ __tmp42245)))))
                      _def-usetf1832718395_
                      _def-ugetf1832818398_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ()
                                               (declare (not safe))
                                               (_loop1832118353_
                                                _target1831818347_
                                                '()
                                                '())))
                                           (let ()
                                             (declare (not safe))
                                             (_g1831418340_ _g1831518344_))))))
                                 (let ()
                                   (declare (not safe))
                                   (_g1831418340_ _g1831518344_)))))
                          (__tmp42248
                           (if (gx#stx-e (gx#stx-getq 'unchecked: _L17805_))
                               (gx#stx-map
                                (lambda (_ref18458_)
                                  (let* ((_g1846118480_
                                          (lambda (_g1846218476_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g1846218476_)))
                                         (_g1846018602_
                                          (lambda (_g1846218484_)
                                            (if (gx#stx-pair? _g1846218484_)
                                                (let ((_e1846818487_
                                                       (gx#syntax-e
                                                        _g1846218484_)))
                                                  (let ((_hd1846718491_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1846818487_)))
                                                        (_tl1846618494_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1846818487_))))
                                                    (if (gx#stx-pair?
                                                         _tl1846618494_)
                                                        (let ((_e1847118497_
                                                               (gx#syntax-e
                                                                _tl1846618494_)))
                                                          (let ((_hd1847018501_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e1847118497_)))
                        (_tl1846918504_
                         (let () (declare (not safe)) (##cdr _e1847118497_))))
                    (if (gx#stx-pair? _tl1846918504_)
                        (let ((_e1847418507_ (gx#syntax-e _tl1846918504_)))
                          (let ((_hd1847318511_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1847418507_)))
                                (_tl1847218514_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1847418507_))))
                            (if (gx#stx-null? _tl1847218514_)
                                ((lambda (_L18517_ _L18519_ _L18520_)
                                   (let* ((_g1853818553_
                                           (lambda (_g1853918549_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1853918549_)))
                                          (_g1853718598_
                                           (lambda (_g1853918557_)
                                             (if (gx#stx-pair? _g1853918557_)
                                                 (let ((_e1854418560_
                                                        (gx#syntax-e
                                                         _g1853918557_)))
                                                   (let ((_hd1854318564_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e1854418560_)))
                                                         (_tl1854218567_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e1854418560_))))
                                                     (if (gx#stx-pair?
                                                          _tl1854218567_)
                                                         (let ((_e1854718570_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1854218567_)))
                   (let ((_hd1854618574_
                          (let () (declare (not safe)) (##car _e1854718570_)))
                         (_tl1854518577_
                          (let () (declare (not safe)) (##cdr _e1854718570_))))
                     (if (gx#stx-null? _tl1854518577_)
                         ((lambda (_L18580_ _L18582_)
                            (let ()
                              (cons (let ((__tmp42249
                                           (cons (gx#datum->syntax '#f 'def)
                                                 (cons _L18582_
                                                       (cons (cons _L17947_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _L17810_
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _L18520_ '()))
                                       '())))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (declare (not safe))
                                      (_wrap17713_ __tmp42249))
                                    (cons (let ((__tmp42250
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons _L18580_
                                                             (cons (cons _L17945_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _L17810_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _L18520_ '()))
                                             '())))
                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_wrap17713_ __tmp42250))
                                          '()))))
                          _hd1854618574_
                          _hd1854318564_)
                         (let ()
                           (declare (not safe))
                           (_g1853818553_ _g1853918557_)))))
                 (let () (declare (not safe)) (_g1853818553_ _g1853918557_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g1853818553_
                                                    _g1853918557_)))))
                                          (__tmp42251
                                           (list (gx#stx-identifier
                                                  _L18519_
                                                  '"&"
                                                  _L18519_)
                                                 (gx#stx-identifier
                                                  _L18517_
                                                  '"&"
                                                  _L18517_))))
                                     (declare (not safe))
                                     (_g1853718598_ __tmp42251)))
                                 _hd1847318511_
                                 _hd1847018501_
                                 _hd1846718491_)
                                (let ()
                                  (declare (not safe))
                                  (_g1846118480_ _g1846218484_)))))
                        (let ()
                          (declare (not safe))
                          (_g1846118480_ _g1846218484_)))))
                (let () (declare (not safe)) (_g1846118480_ _g1846218484_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g1846118480_
                                                   _g1846218484_))))))
                                    (declare (not safe))
                                    (_g1846018602_ _ref18458_)))
                                _attrs18204_)
                               '())))
                     (declare (not safe))
                     (_g1831318454_ __tmp42248))))
               _def-setf1822018288_
               _def-getf1822118291_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (let ()
                                        (declare (not safe))
                                        (_loop1821418246_
                                         _target1821118240_
                                         '()
                                         '())))
                                    (let ()
                                      (declare (not safe))
                                      (_g1820718233_ _g1820818237_))))))
                          (let ()
                            (declare (not safe))
                            (_g1820718233_ _g1820818237_)))))
                   (__tmp42254
                    (gx#stx-map
                     (lambda (_ref18610_)
                       (let* ((_g1861318632_
                               (lambda (_g1861418628_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1861418628_)))
                              (_g1861218690_
                               (lambda (_g1861418636_)
                                 (if (gx#stx-pair? _g1861418636_)
                                     (let ((_e1862018639_
                                            (gx#syntax-e _g1861418636_)))
                                       (let ((_hd1861918643_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e1862018639_)))
                                             (_tl1861818646_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e1862018639_))))
                                         (if (gx#stx-pair? _tl1861818646_)
                                             (let ((_e1862318649_
                                                    (gx#syntax-e
                                                     _tl1861818646_)))
                                               (let ((_hd1862218653_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e1862318649_)))
                                                     (_tl1862118656_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e1862318649_))))
                                                 (if (gx#stx-pair?
                                                      _tl1862118656_)
                                                     (let ((_e1862618659_
                                                            (gx#syntax-e
                                                             _tl1862118656_)))
                                                       (let ((_hd1862518663_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _e1862618659_)))
                     (_tl1862418666_
                      (let () (declare (not safe)) (##cdr _e1862618659_))))
                 (if (gx#stx-null? _tl1862418666_)
                     ((lambda (_L18669_ _L18671_ _L18672_)
                        (cons (let ((__tmp42255
                                     (cons (gx#datum->syntax '#f 'def)
                                           (cons _L18671_
                                                 (cons (cons _L17949_
                                                             (cons _L17810_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'quote)
                                       (cons _L18672_ '()))
                                 '())))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (declare (not safe))
                                (_wrap17713_ __tmp42255))
                              (cons (let ((__tmp42256
                                           (cons (gx#datum->syntax '#f 'def)
                                                 (cons _L18669_
                                                       (cons (cons _L17948_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _L17810_
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _L18672_ '()))
                                       '())))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (declare (not safe))
                                      (_wrap17713_ __tmp42256))
                                    '())))
                      _hd1862518663_
                      _hd1862218653_
                      _hd1861918643_)
                     (let ()
                       (declare (not safe))
                       (_g1861318632_ _g1861418636_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g1861318632_
                                                        _g1861418636_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g1861318632_
                                                _g1861418636_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_g1861318632_ _g1861418636_))))))
                         (declare (not safe))
                         (_g1861218690_ _ref18610_)))
                     _attrs18204_)))
              (declare (not safe))
              (_g1820618606_ __tmp42254))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1817718188_)))
                                            (__tmp42257
                                             (let ((__tmp42258
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'def)
                                                          (cons _L17807_
                                                                (cons (cons _L17950_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _L17810_ '()))
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_wrap17713_ __tmp42258))))
                                       (declare (not safe))
                                       (_g1817518694_ __tmp42257))))
                                 _g1814918160_)))
                             (__tmp42259
                              (if (gx#stx-false? _L17808_)
                                  (cons (gx#datum->syntax '#f 'begin) '())
                                  (let ((__tmp42260
                                         (cons (gx#datum->syntax '#f 'def)
                                               (cons (cons _L17808_
                                                           (gx#datum->syntax
                                                            '#f
                                                            '$args))
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'apply)
                         (cons _L17951_
                               (cons _L17810_
                                     (cons (gx#datum->syntax '#f '$args)
                                           '()))))
                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (declare (not safe))
                                    (_wrap17713_ __tmp42260)))))
                        (declare (not safe))
                        (_g1814718698_ __tmp42259))))
                  _g1812118132_)))
              (__tmp42261
               (let ((__tmp42262
                      (cons (gx#datum->syntax '#f 'def)
                            (cons _L17810_ (cons _L18107_ '())))))
                 (declare (not safe))
                 (_wrap17713_ __tmp42262))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g1811918702_ __tmp42261))))
                                           _g1809318104_)))
                                       (__tmp42263
                                        (if _struct?17711_
                                            (let* ((_g1871018734_
                                                    (lambda (_g1871118730_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       _g1871118730_)))
                                                   (_g1870918821_
                                                    (lambda (_g1871118738_)
                                                      (if (gx#stx-pair?
                                                           _g1871118738_)
                                                          (let ((_e1871618741_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _g1871118738_)))
                    (let ((_hd1871518745_
                           (let () (declare (not safe)) (##car _e1871618741_)))
                          (_tl1871418748_
                           (let ()
                             (declare (not safe))
                             (##cdr _e1871618741_))))
                      (if (gx#stx-pair? _tl1871418748_)
                          (let ((_e1871918751_ (gx#syntax-e _tl1871418748_)))
                            (let ((_hd1871818755_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1871918751_)))
                                  (_tl1871718758_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1871918751_))))
                              (if (gx#stx-pair/null? _hd1871818755_)
                                  (let ((_g42271_
                                         (gx#syntax-split-splice
                                          _hd1871818755_
                                          '0)))
                                    (begin
                                      (let ((_g42272_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g42271_)
                                                   (##vector-length _g42271_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g42272_ 2)))
                                            (error "Context expects 2 values"
                                                   _g42272_)))
                                      (let ((_target1872018761_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g42271_ 0)))
                                            (_tl1872218764_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g42271_ 1))))
                                        (if (gx#stx-null? _tl1872218764_)
                                            (letrec ((_loop1872318767_
                                                      (lambda (_hd1872118771_
                                                               _field-id1872718774_)
                                                        (if (gx#stx-pair?
                                                             _hd1872118771_)
                                                            (let ((_e1872418777_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd1872118771_)))
                      (let ((_lp-hd1872518781_
                             (let ()
                               (declare (not safe))
                               (##car _e1872418777_)))
                            (_lp-tl1872618784_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1872418777_))))
                        (let ((__tmp42273
                               (cons _lp-hd1872518781_ _field-id1872718774_)))
                          (declare (not safe))
                          (_loop1872318767_ _lp-tl1872618784_ __tmp42273))))
                    (let ((_field-id1872818787_
                           (reverse _field-id1872718774_)))
                      (if (gx#stx-null? _tl1871718758_)
                          ((lambda (_L18791_ _L18793_)
                             (let ()
                               (cons (gx#datum->syntax '#f 'make-struct-type)
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _L17995_ '()))
                                           (cons _L17809_
                                                 (cons _L18793_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'quote)
                           (cons _L18023_ '()))
                     (cons _L18051_
                           (cons (cons (gx#datum->syntax '#f 'quote)
                                       (cons _L18079_ '()))
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons (foldr (lambda (_g1881218815_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1881318818_)
                    (cons _g1881218815_ _g1881318818_))
                  '()
                  _L18791_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                       '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           _field-id1872818787_
                           _hd1871518745_)
                          (let ()
                            (declare (not safe))
                            (_g1871018734_ _g1871118738_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_loop1872318767_
                                                 _target1872018761_
                                                 '())))
                                            (let ()
                                              (declare (not safe))
                                              (_g1871018734_
                                               _g1871118738_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g1871018734_ _g1871118738_)))))
                          (let ()
                            (declare (not safe))
                            (_g1871018734_ _g1871118738_)))))
                  (let ()
                    (declare (not safe))
                    (_g1871018734_ _g1871118738_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp42274
                                                    (list (gx#stx-length
                                                           _els17844_)
                                                          (gx#stx-map
                                                           _field-id17716_
                                                           _els17844_))))
                                              (declare (not safe))
                                              (_g1870918821_ __tmp42274))
                                            (let* ((_g1882518858_
                                                    (lambda (_g1882618854_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       _g1882618854_)))
                                                   (_g1882418986_
                                                    (lambda (_g1882618862_)
                                                      (if (gx#stx-pair?
                                                           _g1882618862_)
                                                          (let ((_e1883118865_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _g1882618862_)))
                    (let ((_hd1883018869_
                           (let () (declare (not safe)) (##car _e1883118865_)))
                          (_tl1882918872_
                           (let ()
                             (declare (not safe))
                             (##cdr _e1883118865_))))
                      (if (gx#stx-pair/null? _hd1883018869_)
                          (let ((_g42264_
                                 (gx#syntax-split-splice _hd1883018869_ '0)))
                            (begin
                              (let ((_g42265_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g42264_)
                                           (##vector-length _g42264_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g42265_ 2)))
                                    (error "Context expects 2 values"
                                           _g42265_)))
                              (let ((_target1883218875_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g42264_ 0)))
                                    (_tl1883418878_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g42264_ 1))))
                                (if (gx#stx-null? _tl1883418878_)
                                    (letrec ((_loop1883518881_
                                              (lambda (_hd1883318885_
                                                       _super1883918888_)
                                                (if (gx#stx-pair?
                                                     _hd1883318885_)
                                                    (let ((_e1883618891_
                                                           (gx#syntax-e
                                                            _hd1883318885_)))
                                                      (let ((_lp-hd1883718895_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e1883618891_)))
                    (_lp-tl1883818898_
                     (let () (declare (not safe)) (##cdr _e1883618891_))))
                (let ((__tmp42269 (cons _lp-hd1883718895_ _super1883918888_)))
                  (declare (not safe))
                  (_loop1883518881_ _lp-tl1883818898_ __tmp42269))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_super1884018901_
                                                           (reverse _super1883918888_)))
                                                      (if (gx#stx-pair?
                                                           _tl1882918872_)
                                                          (let ((_e1884318905_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1882918872_)))
                    (let ((_hd1884218909_
                           (let () (declare (not safe)) (##car _e1884318905_)))
                          (_tl1884118912_
                           (let ()
                             (declare (not safe))
                             (##cdr _e1884318905_))))
                      (if (gx#stx-pair/null? _hd1884218909_)
                          (let ((_g42266_
                                 (gx#syntax-split-splice _hd1884218909_ '0)))
                            (begin
                              (let ((_g42267_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g42266_)
                                           (##vector-length _g42266_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g42267_ 2)))
                                    (error "Context expects 2 values"
                                           _g42267_)))
                              (let ((_target1884418915_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g42266_ 0)))
                                    (_tl1884618918_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g42266_ 1))))
                                (if (gx#stx-null? _tl1884618918_)
                                    (letrec ((_loop1884718921_
                                              (lambda (_hd1884518925_
                                                       _slot1885118928_)
                                                (if (gx#stx-pair?
                                                     _hd1884518925_)
                                                    (let ((_e1884818931_
                                                           (gx#syntax-e
                                                            _hd1884518925_)))
                                                      (let ((_lp-hd1884918935_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e1884818931_)))
                    (_lp-tl1885018938_
                     (let () (declare (not safe)) (##cdr _e1884818931_))))
                (let ((__tmp42268 (cons _lp-hd1884918935_ _slot1885118928_)))
                  (declare (not safe))
                  (_loop1884718921_ _lp-tl1885018938_ __tmp42268))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_slot1885218941_
                                                           (reverse _slot1885118928_)))
                                                      (if (gx#stx-null?
                                                           _tl1884118912_)
                                                          ((lambda (_L18945_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L18947_)
                     (let ()
                       (cons (gx#datum->syntax '#f 'make-class-type)
                             (cons (cons (gx#datum->syntax '#f 'quote)
                                         (cons _L17995_ '()))
                                   (cons (cons (gx#datum->syntax '#f '@list)
                                               (foldr (lambda (_g1897118974_
                                                               _g1897218977_)
                                                        (cons _g1897118974_
                                                              _g1897218977_))
                                                      '()
                                                      _L18947_))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons (foldr (lambda (_g1896918980_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g1897018983_)
                            (cons _g1896918980_ _g1897018983_))
                          '()
                          _L18945_)
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons _L18023_ '()))
                                                     (cons _L18051_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote)
                               (cons _L18079_ '()))
                         '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                   _slot1885218941_
                   _super1884018901_)
                  (let ()
                    (declare (not safe))
                    (_g1882518858_ _g1882618862_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (let ()
                                        (declare (not safe))
                                        (_loop1884718921_
                                         _target1884418915_
                                         '())))
                                    (let ()
                                      (declare (not safe))
                                      (_g1882518858_ _g1882618862_))))))
                          (let ()
                            (declare (not safe))
                            (_g1882518858_ _g1882618862_)))))
                  (let ()
                    (declare (not safe))
                    (_g1882518858_ _g1882618862_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (let ()
                                        (declare (not safe))
                                        (_loop1883518881_
                                         _target1883218875_
                                         '())))
                                    (let ()
                                      (declare (not safe))
                                      (_g1882518858_ _g1882618862_))))))
                          (let ()
                            (declare (not safe))
                            (_g1882518858_ _g1882618862_)))))
                  (let ()
                    (declare (not safe))
                    (_g1882518858_ _g1882618862_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp42270
                                                    (list _L17809_
                                                          (gx#stx-map
                                                           gx#stx-car
                                                           _els17844_))))
                                              (declare (not safe))
                                              (_g1882418986_ __tmp42270)))))
                                  (declare (not safe))
                                  (_g1809118706_ __tmp42263))))
                            _g1806518076_)))
                        (__tmp42275 (gx#stx-getq 'constructor: _L17805_)))
                   (declare (not safe))
                   (_g1806318990_ __tmp42275))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1803718048_)))
                                                 (__tmp42276
                                                  (let ((_$e18998_
                                                         (gx#stx-getq
                                                          'plist:
                                                          _L17805_)))
                                                    (if _$e18998_
                                                        _$e18998_
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               '@list)
                                                              '())))))
                                            (declare (not safe))
                                            (_g1803518994_ __tmp42276))))
                                      _g1800918020_)))
                                  (__tmp42277
                                   (let ((_$e19006_
                                          (gx#stx-getq 'name: _L17805_)))
                                     (if _$e19006_ _$e19006_ _L17810_))))
                             (declare (not safe))
                             (_g1800719002_ __tmp42277))))
                       _g1798117992_)))
                   (__tmp42278
                    (let ((_$e19014_ (gx#stx-getq 'id: _L17805_)))
                      (if _$e19014_
                          _$e19014_
                          (if (gx#module-context?
                               (gx#current-expander-context))
                              (let ()
                                (declare (not safe))
                                (_module-type-id17719_ _L17810_))
                              (gx#genident _L17810_))))))
              (declare (not safe))
              (_g1797919010_ __tmp42278))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1787117939_
                                                _hd1786817929_
                                                _hd1786517919_
                                                _hd1786217909_
                                                _hd1785917899_
                                                _hd1785617889_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_g1784717878_
                                                  _g1784817882_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g1784717878_ _g1784817882_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g1784717878_ _g1784817882_)))))
                       (let ()
                         (declare (not safe))
                         (_g1784717878_ _g1784817882_)))))
               (let () (declare (not safe)) (_g1784717878_ _g1784817882_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g1784717878_
                                                  _g1784817882_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g1784717878_ _g1784817882_)))))
                                (__tmp42279
                                 (if _struct?17711_
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
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'make-struct-field-unchecked-accessor)
                           (cons (gx#datum->syntax
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
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'make-class-slot-unchecked-accessor)
                           (cons (gx#datum->syntax
                                  '#f
                                  'make-class-slot-unchecked-mutator)
                                 '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           (declare (not safe))
                           (_g1784619018_ __tmp42279))
                         (let ()
                           (declare (not safe))
                           (_g1772117748_ _g1772217752_))))
                   _tl1774017802_
                   _hd1774117799_
                   _hd1773817789_
                   _hd1773517779_
                   _hd1773217769_)))
              (let () (declare (not safe)) (_g1772117748_ _g1772217752_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g1772117748_
                                                 _g1772217752_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1772117748_ _g1772217752_)))))
                              (let ()
                                (declare (not safe))
                                (_g1772117748_ _g1772217752_)))))
                      (let ()
                        (declare (not safe))
                        (_g1772117748_ _g1772217752_))))))
          (declare (not safe))
          (_g1772019022_ _stx17709_)))))
  (define |gerbil/core$<MOP>$<MOP:1>[:0:]#defstruct-type|
    (lambda (_stx19322_)
      (let ()
        (declare (not safe))
        (|gerbil/core$<MOP>$<MOP:1>[1]#generate-typedef| _stx19322_ '#t))))
  (define |gerbil/core$<MOP>$<MOP:1>[:0:]#defclass-type|
    (lambda (_stx19325_)
      (let ()
        (declare (not safe))
        (|gerbil/core$<MOP>$<MOP:1>[1]#generate-typedef| _stx19325_ '#f)))))
