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
                          (let ((_e1918819275_
                                 (gx#syntax-e ___stx3908939090_)))
                            (let ((_tl1919019282_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1918819275_)))
                                  (_hd1918919279_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1918819275_))))
                              (if (gx#stx-pair? _tl1919019282_)
                                  (let ((_e1919119285_
                                         (gx#syntax-e _tl1919019282_)))
                                    (let ((_tl1919319292_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1919119285_)))
                                          (_hd1919219289_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1919119285_))))
                                      (if (gx#stx-null? _tl1919319292_)
                                          (___kont3909239093_
                                           _hd1919219289_
                                           _hd1918919279_)
                                          (if (gx#stx-pair? _tl1919319292_)
                                              (let ((_e1920319238_
                                                     (gx#syntax-e
                                                      _tl1919319292_)))
                                                (let ((_tl1920519245_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1920319238_)))
                                                      (_hd1920419242_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1920319238_))))
                                                  (if (gx#stx-null?
                                                       _tl1920519245_)
                                                      (___kont3909439095_
                                                       _hd1920419242_
                                                       _hd1919219289_
                                                       _hd1918919279_)
                                                      (_g1918419211_))))
                                              (_g1918419211_)))))
                                  (_g1918419211_))))
                          (_g1918419211_))))))
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
                          (let ((_e1905319140_
                                 (gx#syntax-e ___stx3913339134_)))
                            (let ((_tl1905519147_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1905319140_)))
                                  (_hd1905419144_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1905319140_))))
                              (if (gx#stx-pair? _tl1905519147_)
                                  (let ((_e1905619150_
                                         (gx#syntax-e _tl1905519147_)))
                                    (let ((_tl1905819157_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1905619150_)))
                                          (_hd1905719154_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1905619150_))))
                                      (if (gx#stx-null? _tl1905819157_)
                                          (___kont3913639137_
                                           _hd1905719154_
                                           _hd1905419144_)
                                          (if (gx#stx-pair? _tl1905819157_)
                                              (let ((_e1906819103_
                                                     (gx#syntax-e
                                                      _tl1905819157_)))
                                                (let ((_tl1907019110_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1906819103_)))
                                                      (_hd1906919107_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1906819103_))))
                                                  (if (gx#stx-null?
                                                       _tl1907019110_)
                                                      (___kont3913839139_
                                                       _hd1906919107_
                                                       _hd1905719154_
                                                       _hd1905419144_)
                                                      (_g1904919076_))))
                                              (_g1904919076_)))))
                                  (_g1904919076_))))
                          (_g1904919076_))))))
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
                      (let ((_e1772817755_ (gx#syntax-e _g1772217752_)))
                        (let ((_hd1772917759_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1772817755_)))
                              (_tl1773017762_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1772817755_))))
                          (if (gx#stx-pair? _tl1773017762_)
                              (let ((_e1773117765_
                                     (gx#syntax-e _tl1773017762_)))
                                (let ((_hd1773217769_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1773117765_)))
                                      (_tl1773317772_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1773117765_))))
                                  (if (gx#stx-pair? _tl1773317772_)
                                      (let ((_e1773417775_
                                             (gx#syntax-e _tl1773317772_)))
                                        (let ((_hd1773517779_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1773417775_)))
                                              (_tl1773617782_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1773417775_))))
                                          (if (gx#stx-pair? _tl1773617782_)
                                              (let ((_e1773717785_
                                                     (gx#syntax-e
                                                      _tl1773617782_)))
                                                (let ((_hd1773817789_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1773717785_)))
                                                      (_tl1773917792_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1773717785_))))
                                                  (if (gx#stx-pair?
                                                       _tl1773917792_)
                                                      (let ((_e1774017795_
                                                             (gx#syntax-e
                                                              _tl1773917792_)))
                                                        (let ((_hd1774117799_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e1774017795_)))
                      (_tl1774217802_
                       (let () (declare (not safe)) (##cdr _e1774017795_))))
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
                                       (let ((_e1785517885_
                                              (gx#syntax-e _g1784817882_)))
                                         (let ((_hd1785617889_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e1785517885_)))
                                               (_tl1785717892_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e1785517885_))))
                                           (if (gx#stx-pair? _tl1785717892_)
                                               (let ((_e1785817895_
                                                      (gx#syntax-e
                                                       _tl1785717892_)))
                                                 (let ((_hd1785917899_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e1785817895_)))
                                                       (_tl1786017902_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e1785817895_))))
                                                   (if (gx#stx-pair?
                                                        _tl1786017902_)
                                                       (let ((_e1786117905_
                                                              (gx#syntax-e
                                                               _tl1786017902_)))
                                                         (let ((_hd1786217909_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e1786117905_)))
                       (_tl1786317912_
                        (let () (declare (not safe)) (##cdr _e1786117905_))))
                   (if (gx#stx-pair? _tl1786317912_)
                       (let ((_e1786417915_ (gx#syntax-e _tl1786317912_)))
                         (let ((_hd1786517919_
                                (let ()
                                  (declare (not safe))
                                  (##car _e1786417915_)))
                               (_tl1786617922_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e1786417915_))))
                           (if (gx#stx-pair? _tl1786617922_)
                               (let ((_e1786717925_
                                      (gx#syntax-e _tl1786617922_)))
                                 (let ((_hd1786817929_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e1786717925_)))
                                       (_tl1786917932_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e1786717925_))))
                                   (if (gx#stx-pair? _tl1786917932_)
                                       (let ((_e1787017935_
                                              (gx#syntax-e _tl1786917932_)))
                                         (let ((_hd1787117939_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e1787017935_)))
                                               (_tl1787217942_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e1787017935_))))
                                           (if (gx#stx-null? _tl1787217942_)
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
                    (let ((_e1822218268_ (gx#syntax-e _lp-hd1821618262_)))
                      (let ((_hd1822318272_
                             (let ()
                               (declare (not safe))
                               (##car _e1822218268_)))
                            (_tl1822418275_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1822218268_))))
                        (if (gx#stx-pair? _tl1822418275_)
                            (let ((_e1822518278_ (gx#syntax-e _tl1822418275_)))
                              (let ((_hd1822618282_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1822518278_)))
                                    (_tl1822718285_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1822518278_))))
                                (if (gx#stx-null? _tl1822718285_)
                                    (_loop1821418246_
                                     _lp-tl1821718265_
                                     (cons _hd1822618282_ _def-setf1821818253_)
                                     (cons _hd1822318272_
                                           _def-getf1821918255_))
                                    (_g1820718233_ _g1820818237_))))
                            (_g1820718233_ _g1820818237_))))
                    (_g1820718233_ _g1820818237_))))
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
                           (let ((_e1832918375_
                                  (gx#syntax-e _lp-hd1832318369_)))
                             (let ((_hd1833018379_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e1832918375_)))
                                   (_tl1833118382_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e1832918375_))))
                               (if (gx#stx-pair? _tl1833118382_)
                                   (let ((_e1833218385_
                                          (gx#syntax-e _tl1833118382_)))
                                     (let ((_hd1833318389_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e1833218385_)))
                                           (_tl1833418392_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e1833218385_))))
                                       (if (gx#stx-null? _tl1833418392_)
                                           (_loop1832118353_
                                            _lp-tl1832418372_
                                            (cons _hd1833318389_
                                                  _def-usetf1832518360_)
                                            (cons _hd1833018379_
                                                  _def-ugetf1832618362_))
                                           (_g1831418340_ _g1831518344_))))
                                   (_g1831418340_ _g1831518344_))))
                           (_g1831418340_ _g1831518344_))))
                   (let ((_def-usetf1832718395_
                          (reverse _def-usetf1832518360_))
                         (_def-ugetf1832818398_
                          (reverse _def-ugetf1832618362_)))
                     ((lambda (_L18401_ _L18403_)
                        (let ()
                          (let ()
                            (_wrap17713_
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
                                  (foldr (lambda (_g1842718448_ _g1842818451_)
                                           (cons _g1842718448_ _g1842818451_))
                                         '()
                                         _L18401_)
                                  _L18403_)
                           _L18294_)
                    _L18296_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      _def-usetf1832718395_
                      _def-ugetf1832818398_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop1832118353_
                                              _target1831818347_
                                              '()
                                              '()))
                                           (_g1831418340_ _g1831518344_)))))
                                 (_g1831418340_ _g1831518344_)))))
                     (_g1831318454_
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
                                           (let ((_e1846618487_
                                                  (gx#syntax-e _g1846218484_)))
                                             (let ((_hd1846718491_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e1846618487_)))
                                                   (_tl1846818494_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e1846618487_))))
                                               (if (gx#stx-pair?
                                                    _tl1846818494_)
                                                   (let ((_e1846918497_
                                                          (gx#syntax-e
                                                           _tl1846818494_)))
                                                     (let ((_hd1847018501_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e1846918497_)))
                                                           (_tl1847118504_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e1846918497_))))
                                                       (if (gx#stx-pair?
                                                            _tl1847118504_)
                                                           (let ((_e1847218507_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl1847118504_)))
                     (let ((_hd1847318511_
                            (let ()
                              (declare (not safe))
                              (##car _e1847218507_)))
                           (_tl1847418514_
                            (let ()
                              (declare (not safe))
                              (##cdr _e1847218507_))))
                       (if (gx#stx-null? _tl1847418514_)
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
                                            (let ((_e1854218560_
                                                   (gx#syntax-e
                                                    _g1853918557_)))
                                              (let ((_hd1854318564_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1854218560_)))
                                                    (_tl1854418567_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1854218560_))))
                                                (if (gx#stx-pair?
                                                     _tl1854418567_)
                                                    (let ((_e1854518570_
                                                           (gx#syntax-e
                                                            _tl1854418567_)))
                                                      (let ((_hd1854618574_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e1854518570_)))
                    (_tl1854718577_
                     (let () (declare (not safe)) (##cdr _e1854518570_))))
                (if (gx#stx-null? _tl1854718577_)
                    ((lambda (_L18580_ _L18582_)
                       (let ()
                         (cons (_wrap17713_
                                (cons (gx#datum->syntax '#f 'def)
                                      (cons _L18582_
                                            (cons (cons _L17947_
                                                        (cons _L17810_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _L18520_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))
                               (cons (_wrap17713_
                                      (cons (gx#datum->syntax '#f 'def)
                                            (cons _L18580_
                                                  (cons (cons _L17945_
                                                              (cons _L17810_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f 'quote)
                                        (cons _L18520_ '()))
                                  '())))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))
                     _hd1854618574_
                     _hd1854318564_)
                    (_g1853818553_ _g1853918557_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1853818553_
                                                     _g1853918557_))))
                                            (_g1853818553_ _g1853918557_)))))
                                (_g1853718598_
                                 (list (gx#stx-identifier
                                        _L18519_
                                        '"&"
                                        _L18519_)
                                       (gx#stx-identifier
                                        _L18517_
                                        '"&"
                                        _L18517_)))))
                            _hd1847318511_
                            _hd1847018501_
                            _hd1846718491_)
                           (_g1846118480_ _g1846218484_))))
                   (_g1846118480_ _g1846218484_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1846118480_
                                                    _g1846218484_))))
                                           (_g1846118480_ _g1846218484_)))))
                               (_g1846018602_ _ref18458_)))
                           _attrs18204_)
                          '())))))
               _def-setf1822018288_
               _def-getf1822118291_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop1821418246_
                                       _target1821118240_
                                       '()
                                       '()))
                                    (_g1820718233_ _g1820818237_)))))
                          (_g1820718233_ _g1820818237_)))))
              (_g1820618606_
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
                                (let ((_e1861818639_
                                       (gx#syntax-e _g1861418636_)))
                                  (let ((_hd1861918643_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1861818639_)))
                                        (_tl1862018646_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1861818639_))))
                                    (if (gx#stx-pair? _tl1862018646_)
                                        (let ((_e1862118649_
                                               (gx#syntax-e _tl1862018646_)))
                                          (let ((_hd1862218653_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1862118649_)))
                                                (_tl1862318656_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1862118649_))))
                                            (if (gx#stx-pair? _tl1862318656_)
                                                (let ((_e1862418659_
                                                       (gx#syntax-e
                                                        _tl1862318656_)))
                                                  (let ((_hd1862518663_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1862418659_)))
                                                        (_tl1862618666_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1862418659_))))
                                                    (if (gx#stx-null?
                                                         _tl1862618666_)
                                                        ((lambda (_L18669_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L18671_
                          _L18672_)
                   (cons (_wrap17713_
                          (cons (gx#datum->syntax '#f 'def)
                                (cons _L18671_
                                      (cons (cons _L17949_
                                                  (cons _L17810_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons _L18672_ '()))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '()))))
                         (cons (_wrap17713_
                                (cons (gx#datum->syntax '#f 'def)
                                      (cons _L18669_
                                            (cons (cons _L17948_
                                                        (cons _L17810_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _L18672_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))
                               '())))
                 _hd1862518663_
                 _hd1862218653_
                 _hd1861918643_)
                (_g1861318632_ _g1861418636_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1861318632_
                                                 _g1861418636_))))
                                        (_g1861318632_ _g1861418636_))))
                                (_g1861318632_ _g1861418636_)))))
                    (_g1861218690_ _ref18610_)))
                _attrs18204_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1817718188_))))
                                       (_g1817518694_
                                        (_wrap17713_
                                         (cons (gx#datum->syntax '#f 'def)
                                               (cons _L17807_
                                                     (cons (cons _L17950_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L17810_ '()))
                   '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _g1814918160_))))
                        (_g1814718698_
                         (if (gx#stx-false? _L17808_)
                             (cons (gx#datum->syntax '#f 'begin) '())
                             (_wrap17713_
                              (cons (gx#datum->syntax '#f 'def)
                                    (cons (cons _L17808_
                                                (gx#datum->syntax '#f '$args))
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'apply)
                                                      (cons _L17951_
                                                            (cons _L17810_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f '$args) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))))))))
                  _g1812118132_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1811918702_
                                                  (_wrap17713_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'def)
                                                         (cons _L17810_
                                                               (cons _L18107_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _g1809318104_))))
                                  (_g1809118706_
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
                                                     (let ((_e1871418741_
                                                            (gx#syntax-e
                                                             _g1871118738_)))
                                                       (let ((_hd1871518745_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _e1871418741_)))
                     (_tl1871618748_
                      (let () (declare (not safe)) (##cdr _e1871418741_))))
                 (if (gx#stx-pair? _tl1871618748_)
                     (let ((_e1871718751_ (gx#syntax-e _tl1871618748_)))
                       (let ((_hd1871818755_
                              (let ()
                                (declare (not safe))
                                (##car _e1871718751_)))
                             (_tl1871918758_
                              (let ()
                                (declare (not safe))
                                (##cdr _e1871718751_))))
                         (if (gx#stx-pair/null? _hd1871818755_)
                             (let ((_g42245_
                                    (gx#syntax-split-splice
                                     _hd1871818755_
                                     '0)))
                               (begin
                                 (let ((_g42246_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g42245_)
                                              (##vector-length _g42245_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g42246_ 2)))
                                       (error "Context expects 2 values"
                                              _g42246_)))
                                 (let ((_target1872018761_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g42245_ 0)))
                                       (_tl1872218764_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g42245_ 1))))
                                   (if (gx#stx-null? _tl1872218764_)
                                       (letrec ((_loop1872318767_
                                                 (lambda (_hd1872118771_
                                                          _field-id1872718774_)
                                                   (if (gx#stx-pair?
                                                        _hd1872118771_)
                                                       (let ((_e1872418777_
                                                              (gx#syntax-e
                                                               _hd1872118771_)))
                                                         (let ((_lp-hd1872518781_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e1872418777_)))
                       (_lp-tl1872618784_
                        (let () (declare (not safe)) (##cdr _e1872418777_))))
                   (_loop1872318767_
                    _lp-tl1872618784_
                    (cons _lp-hd1872518781_ _field-id1872718774_))))
               (let ((_field-id1872818787_ (reverse _field-id1872718774_)))
                 (if (gx#stx-null? _tl1871918758_)
                     ((lambda (_L18791_ _L18793_)
                        (let ()
                          (cons (gx#datum->syntax '#f 'make-struct-type)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _L17995_ '()))
                                      (cons _L17809_
                                            (cons _L18793_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'quote)
                                                              (cons _L18023_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _L18051_
                      (cons (cons (gx#datum->syntax '#f 'quote)
                                  (cons _L18079_ '()))
                            (cons (cons (gx#datum->syntax '#f 'quote)
                                        (cons (foldr (lambda (_g1881218815_
                                                              _g1881318818_)
                                                       (cons _g1881218815_
                                                             _g1881318818_))
                                                     '()
                                                     _L18791_)
                                              '()))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      _field-id1872818787_
                      _hd1871518745_)
                     (_g1871018734_ _g1871118738_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop1872318767_
                                          _target1872018761_
                                          '()))
                                       (_g1871018734_ _g1871118738_)))))
                             (_g1871018734_ _g1871118738_))))
                     (_g1871018734_ _g1871118738_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1871018734_
                                                      _g1871118738_)))))
                                         (_g1870918821_
                                          (list (gx#stx-length _els17844_)
                                                (gx#stx-map
                                                 _field-id17716_
                                                 _els17844_))))
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
                                                     (let ((_e1882918865_
                                                            (gx#syntax-e
                                                             _g1882618862_)))
                                                       (let ((_hd1883018869_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _e1882918865_)))
                     (_tl1883118872_
                      (let () (declare (not safe)) (##cdr _e1882918865_))))
                 (if (gx#stx-pair/null? _hd1883018869_)
                     (let ((_g42247_
                            (gx#syntax-split-splice _hd1883018869_ '0)))
                       (begin
                         (let ((_g42248_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g42247_)
                                      (##vector-length _g42247_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g42248_ 2)))
                               (error "Context expects 2 values" _g42248_)))
                         (let ((_target1883218875_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g42247_ 0)))
                               (_tl1883418878_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g42247_ 1))))
                           (if (gx#stx-null? _tl1883418878_)
                               (letrec ((_loop1883518881_
                                         (lambda (_hd1883318885_
                                                  _super1883918888_)
                                           (if (gx#stx-pair? _hd1883318885_)
                                               (let ((_e1883618891_
                                                      (gx#syntax-e
                                                       _hd1883318885_)))
                                                 (let ((_lp-hd1883718895_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e1883618891_)))
                                                       (_lp-tl1883818898_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e1883618891_))))
                                                   (_loop1883518881_
                                                    _lp-tl1883818898_
                                                    (cons _lp-hd1883718895_
                                                          _super1883918888_))))
                                               (let ((_super1884018901_
                                                      (reverse _super1883918888_)))
                                                 (if (gx#stx-pair?
                                                      _tl1883118872_)
                                                     (let ((_e1884118905_
                                                            (gx#syntax-e
                                                             _tl1883118872_)))
                                                       (let ((_hd1884218909_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _e1884118905_)))
                     (_tl1884318912_
                      (let () (declare (not safe)) (##cdr _e1884118905_))))
                 (if (gx#stx-pair/null? _hd1884218909_)
                     (let ((_g42249_
                            (gx#syntax-split-splice _hd1884218909_ '0)))
                       (begin
                         (let ((_g42250_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g42249_)
                                      (##vector-length _g42249_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g42250_ 2)))
                               (error "Context expects 2 values" _g42250_)))
                         (let ((_target1884418915_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g42249_ 0)))
                               (_tl1884618918_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g42249_ 1))))
                           (if (gx#stx-null? _tl1884618918_)
                               (letrec ((_loop1884718921_
                                         (lambda (_hd1884518925_
                                                  _slot1885118928_)
                                           (if (gx#stx-pair? _hd1884518925_)
                                               (let ((_e1884818931_
                                                      (gx#syntax-e
                                                       _hd1884518925_)))
                                                 (let ((_lp-hd1884918935_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e1884818931_)))
                                                       (_lp-tl1885018938_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e1884818931_))))
                                                   (_loop1884718921_
                                                    _lp-tl1885018938_
                                                    (cons _lp-hd1884918935_
                                                          _slot1885118928_))))
                                               (let ((_slot1885218941_
                                                      (reverse _slot1885118928_)))
                                                 (if (gx#stx-null?
                                                      _tl1884318912_)
                                                     ((lambda (_L18945_
                                                               _L18947_)
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'make-class-type)
                        (cons (cons (gx#datum->syntax '#f 'quote)
                                    (cons _L17995_ '()))
                              (cons (cons (gx#datum->syntax '#f '@list)
                                          (foldr (lambda (_g1896918974_
                                                          _g1897018977_)
                                                   (cons _g1896918974_
                                                         _g1897018977_))
                                                 '()
                                                 _L18947_))
                                    (cons (cons (gx#datum->syntax '#f 'quote)
                                                (cons (foldr (lambda (_g1897118980_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1897218983_)
                       (cons _g1897118980_ _g1897218983_))
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
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1882518858_
                                                      _g1882618862_)))))))
                                 (_loop1884718921_ _target1884418915_ '()))
                               (_g1882518858_ _g1882618862_)))))
                     (_g1882518858_ _g1882618862_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1882518858_
                                                      _g1882618862_)))))))
                                 (_loop1883518881_ _target1883218875_ '()))
                               (_g1882518858_ _g1882618862_)))))
                     (_g1882518858_ _g1882618862_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1882518858_
                                                      _g1882618862_)))))
                                         (_g1882418986_
                                          (list _L17809_
                                                (gx#stx-map
                                                 gx#stx-car
                                                 _els17844_)))))))))
                            _g1806518076_))))
                   (_g1806318990_ (gx#stx-getq 'constructor: _L17805_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1803718048_))))
                                            (_g1803518994_
                                             (let ((_$e18998_
                                                    (gx#stx-getq
                                                     'plist:
                                                     _L17805_)))
                                               (if _$e18998_
                                                   _$e18998_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '@list)
                                                         '())))))))
                                      _g1800918020_))))
                             (_g1800719002_
                              (let ((_$e19006_ (gx#stx-getq 'name: _L17805_)))
                                (if _$e19006_ _$e19006_ _L17810_))))))
                       _g1798117992_))))
              (_g1797919010_
               (let ((_$e19014_ (gx#stx-getq 'id: _L17805_)))
                 (if _$e19014_
                     _$e19014_
                     (if (gx#module-context? (gx#current-expander-context))
                         (_module-type-id17719_ _L17810_)
                         (gx#genident _L17810_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1787117939_
                                                _hd1786817929_
                                                _hd1786517919_
                                                _hd1786217909_
                                                _hd1785917899_
                                                _hd1785617889_)
                                               (_g1784717878_ _g1784817882_))))
                                       (_g1784717878_ _g1784817882_))))
                               (_g1784717878_ _g1784817882_))))
                       (_g1784717878_ _g1784817882_))))
               (_g1784717878_ _g1784817882_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1784717878_ _g1784817882_))))
                                       (_g1784717878_ _g1784817882_)))))
                           (_g1784619018_
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
                         (_g1772117748_ _g1772217752_)))
                   _tl1774217802_
                   _hd1774117799_
                   _hd1773817789_
                   _hd1773517779_
                   _hd1773217769_)))
              (_g1772117748_ _g1772217752_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1772117748_ _g1772217752_))))
                                      (_g1772117748_ _g1772217752_))))
                              (_g1772117748_ _g1772217752_))))
                      (_g1772117748_ _g1772217752_)))))
          (_g1772019022_ _stx17709_)))))
  (define |gerbil/core$<MOP>$<MOP:1>[:0:]#defstruct-type|
    (lambda (_stx19322_)
      (|gerbil/core$<MOP>$<MOP:1>[1]#generate-typedef| _stx19322_ '#t)))
  (define |gerbil/core$<MOP>$<MOP:1>[:0:]#defclass-type|
    (lambda (_stx19325_)
      (|gerbil/core$<MOP>$<MOP:1>[1]#generate-typedef| _stx19325_ '#f))))
