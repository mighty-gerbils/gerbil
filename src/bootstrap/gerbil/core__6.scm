(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<MOP>$<MOP:1>[1]#generate-typedef|
    (lambda (_stx17622_ _struct?17624_)
      (letrec ((_wrap17626_
                (lambda (_e-stx19227_)
                  (gx#stx-wrap-source
                   _e-stx19227_
                   (gx#stx-source _stx17622_))))
               (_slotify17628_
                (lambda (_field19092_ _off19094_)
                  (let* ((___stx3855238553_ _field19092_)
                         (_g1909719124_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx3855238553_))))
                    (let ((___kont3855538556_
                           (lambda (_L19208_ _L19210_)
                             (cons _off19094_
                                   (cons _L19210_ (cons _L19208_ '())))))
                          (___kont3855738558_
                           (lambda (_L19161_ _L19163_ _L19164_)
                             (cons _off19094_
                                   (cons _L19163_ (cons _L19161_ '()))))))
                      (if (gx#stx-pair? ___stx3855238553_)
                          (let ((_e1910119188_
                                 (gx#syntax-e ___stx3855238553_)))
                            (let ((_tl1910319195_ (##cdr _e1910119188_))
                                  (_hd1910219192_ (##car _e1910119188_)))
                              (if (gx#stx-pair? _tl1910319195_)
                                  (let ((_e1910419198_
                                         (gx#syntax-e _tl1910319195_)))
                                    (let ((_tl1910619205_
                                           (##cdr _e1910419198_))
                                          (_hd1910519202_
                                           (##car _e1910419198_)))
                                      (if (gx#stx-null? _tl1910619205_)
                                          (___kont3855538556_
                                           _hd1910519202_
                                           _hd1910219192_)
                                          (if (gx#stx-pair? _tl1910619205_)
                                              (let ((_e1911619151_
                                                     (gx#syntax-e
                                                      _tl1910619205_)))
                                                (let ((_tl1911819158_
                                                       (##cdr _e1911619151_))
                                                      (_hd1911719155_
                                                       (##car _e1911619151_)))
                                                  (if (gx#stx-null?
                                                       _tl1911819158_)
                                                      (___kont3855738558_
                                                       _hd1911719155_
                                                       _hd1910519202_
                                                       _hd1910219192_)
                                                      (_g1909719124_))))
                                              (_g1909719124_)))))
                                  (_g1909719124_))))
                          (_g1909719124_))))))
               (_field-id17629_
                (lambda (_field18958_)
                  (let* ((___stx3859638597_ _field18958_)
                         (_g1896218989_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx3859638597_))))
                    (let ((___kont3859938600_ (lambda (_L19073_ _L19075_) ':))
                          (___kont3860138602_
                           (lambda (_L19026_ _L19028_ _L19029_) _L19029_)))
                      (if (gx#stx-pair? ___stx3859638597_)
                          (let ((_e1896619053_
                                 (gx#syntax-e ___stx3859638597_)))
                            (let ((_tl1896819060_ (##cdr _e1896619053_))
                                  (_hd1896719057_ (##car _e1896619053_)))
                              (if (gx#stx-pair? _tl1896819060_)
                                  (let ((_e1896919063_
                                         (gx#syntax-e _tl1896819060_)))
                                    (let ((_tl1897119070_
                                           (##cdr _e1896919063_))
                                          (_hd1897019067_
                                           (##car _e1896919063_)))
                                      (if (gx#stx-null? _tl1897119070_)
                                          (___kont3859938600_
                                           _hd1897019067_
                                           _hd1896719057_)
                                          (if (gx#stx-pair? _tl1897119070_)
                                              (let ((_e1898119016_
                                                     (gx#syntax-e
                                                      _tl1897119070_)))
                                                (let ((_tl1898319023_
                                                       (##cdr _e1898119016_))
                                                      (_hd1898219020_
                                                       (##car _e1898119016_)))
                                                  (if (gx#stx-null?
                                                       _tl1898319023_)
                                                      (___kont3860138602_
                                                       _hd1898219020_
                                                       _hd1897019067_
                                                       _hd1896719057_)
                                                      (_g1896218989_))))
                                              (_g1896218989_)))))
                                  (_g1896218989_))))
                          (_g1896218989_))))))
               (_struct-opt?17630_
                (lambda (_key18955_)
                  (memq (gx#stx-e _key18955_)
                        '(fields: id: name: plist: constructor: unchecked:))))
               (_class-opt?17631_
                (lambda (_key18952_)
                  (memq (gx#stx-e _key18952_)
                        '(slots: id: name: plist: constructor: unchecked:))))
               (_module-type-id17632_
                (lambda (_type-t18939_)
                  (let ((_$e18942_
                         (gx#module-context-ns (gx#current-expander-context))))
                    (if _$e18942_
                        ((lambda (_ns18946_)
                           (gx#stx-identifier
                            _type-t18939_
                            _ns18946_
                            '"#"
                            _type-t18939_))
                         _$e18942_)
                        (let ((_mid18949_
                               (gx#expander-context-id
                                (gx#current-expander-context))))
                          (gx#stx-identifier
                           _type-t18939_
                           _mid18949_
                           '"#"
                           _type-t18939_)))))))
        (let* ((_g1763417661_
                (lambda (_g1763517657_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1763517657_)))
               (_g1763318935_
                (lambda (_g1763517665_)
                  (if (gx#stx-pair? _g1763517665_)
                      (let ((_e1764117668_ (gx#syntax-e _g1763517665_)))
                        (let ((_hd1764217672_ (##car _e1764117668_))
                              (_tl1764317675_ (##cdr _e1764117668_)))
                          (if (gx#stx-pair? _tl1764317675_)
                              (let ((_e1764417678_
                                     (gx#syntax-e _tl1764317675_)))
                                (let ((_hd1764517682_ (##car _e1764417678_))
                                      (_tl1764617685_ (##cdr _e1764417678_)))
                                  (if (gx#stx-pair? _tl1764617685_)
                                      (let ((_e1764717688_
                                             (gx#syntax-e _tl1764617685_)))
                                        (let ((_hd1764817692_
                                               (##car _e1764717688_))
                                              (_tl1764917695_
                                               (##cdr _e1764717688_)))
                                          (if (gx#stx-pair? _tl1764917695_)
                                              (let ((_e1765017698_
                                                     (gx#syntax-e
                                                      _tl1764917695_)))
                                                (let ((_hd1765117702_
                                                       (##car _e1765017698_))
                                                      (_tl1765217705_
                                                       (##cdr _e1765017698_)))
                                                  (if (gx#stx-pair?
                                                       _tl1765217705_)
                                                      (let ((_e1765317708_
                                                             (gx#syntax-e
                                                              _tl1765217705_)))
                                                        (let ((_hd1765417712_
                                                               (##car _e1765317708_))
                                                              (_tl1765517715_
                                                               (##cdr _e1765317708_)))
                                                          ((lambda (_L17718_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L17720_
                            _L17721_
                            _L17722_
                            _L17723_)
                     (if (and (gx#identifier? _L17723_)
                              (or (gx#identifier? _L17721_)
                                  (gx#stx-false? _L17721_))
                              (gx#identifier? _L17720_)
                              (gx#stx-plist?
                               _L17718_
                               (if _struct?17624_
                                   _struct-opt?17630_
                                   _class-opt?17631_)))
                         (let* ((_els17757_
                                 (let ((_$e17753_
                                        (gx#stx-getq
                                         (if _struct?17624_ 'fields: 'slots:)
                                         _L17718_)))
                                   (if _$e17753_ _$e17753_ '())))
                                (_g1776017791_
                                 (lambda (_g1776117787_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1776117787_)))
                                (_g1775918931_
                                 (lambda (_g1776117795_)
                                   (if (gx#stx-pair? _g1776117795_)
                                       (let ((_e1776817798_
                                              (gx#syntax-e _g1776117795_)))
                                         (let ((_hd1776917802_
                                                (##car _e1776817798_))
                                               (_tl1777017805_
                                                (##cdr _e1776817798_)))
                                           (if (gx#stx-pair? _tl1777017805_)
                                               (let ((_e1777117808_
                                                      (gx#syntax-e
                                                       _tl1777017805_)))
                                                 (let ((_hd1777217812_
                                                        (##car _e1777117808_))
                                                       (_tl1777317815_
                                                        (##cdr _e1777117808_)))
                                                   (if (gx#stx-pair?
                                                        _tl1777317815_)
                                                       (let ((_e1777417818_
                                                              (gx#syntax-e
                                                               _tl1777317815_)))
                                                         (let ((_hd1777517822_
                                                                (##car _e1777417818_))
                                                               (_tl1777617825_
                                                                (##cdr _e1777417818_)))
                                                           (if (gx#stx-pair?
                                                                _tl1777617825_)
                                                               (let ((_e1777717828_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl1777617825_)))
                         (let ((_hd1777817832_ (##car _e1777717828_))
                               (_tl1777917835_ (##cdr _e1777717828_)))
                           (if (gx#stx-pair? _tl1777917835_)
                               (let ((_e1778017838_
                                      (gx#syntax-e _tl1777917835_)))
                                 (let ((_hd1778117842_ (##car _e1778017838_))
                                       (_tl1778217845_ (##cdr _e1778017838_)))
                                   (if (gx#stx-pair? _tl1778217845_)
                                       (let ((_e1778317848_
                                              (gx#syntax-e _tl1778217845_)))
                                         (let ((_hd1778417852_
                                                (##car _e1778317848_))
                                               (_tl1778517855_
                                                (##cdr _e1778317848_)))
                                           (if (gx#stx-null? _tl1778517855_)
                                               ((lambda (_L17858_
                                                         _L17860_
                                                         _L17861_
                                                         _L17862_
                                                         _L17863_
                                                         _L17864_)
                                                  (let ()
                                                    (let* ((_g1789317901_
                                                            (lambda (_g1789417897_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g1789417897_)))
                                                           (_g1789218923_
                                                            (lambda (_g1789417905_)
                                                              ((lambda (_L17908_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g1792117929_
                                   (lambda (_g1792217925_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1792217925_)))
                                  (_g1792018915_
                                   (lambda (_g1792217933_)
                                     ((lambda (_L17936_)
                                        (let ()
                                          (let* ((_g1794917957_
                                                  (lambda (_g1795017953_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1795017953_)))
                                                 (_g1794818907_
                                                  (lambda (_g1795017961_)
                                                    ((lambda (_L17964_)
                                                       (let ()
                                                         (let* ((_g1797717985_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1797817981_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1797817981_)))
                        (_g1797618903_
                         (lambda (_g1797817989_)
                           ((lambda (_L17992_)
                              (let ()
                                (let* ((_g1800518013_
                                        (lambda (_g1800618009_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g1800618009_)))
                                       (_g1800418619_
                                        (lambda (_g1800618017_)
                                          ((lambda (_L18020_)
                                             (let ()
                                               (let* ((_g1803318041_
                                                       (lambda (_g1803418037_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1803418037_)))
                                                      (_g1803218615_
                                                       (lambda (_g1803418045_)
                                                         ((lambda (_L18048_)
                                                            (let ()
                                                              (let* ((_g1806118069_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g1806218065_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1806218065_)))
                             (_g1806018611_
                              (lambda (_g1806218073_)
                                ((lambda (_L18076_)
                                   (let ()
                                     (let* ((_g1808918097_
                                             (lambda (_g1809018093_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1809018093_)))
                                            (_g1808818607_
                                             (lambda (_g1809018101_)
                                               ((lambda (_L18104_)
                                                  (let ()
                                                    (let* ((_attrs18117_
                                                            (if _struct?17624_
                                                                (gx#stx-map
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _slotify17628_
                         _els17757_
                         (iota (gx#stx-length _els17757_)))
                        _els17757_))
                   (_g1812018146_
                    (lambda (_g1812118142_)
                      (gx#raise-syntax-error '#f '"Bad syntax" _g1812118142_)))
                   (_g1811918519_
                    (lambda (_g1812118150_)
                      (if (gx#stx-pair/null? _g1812118150_)
                          (let ((_g41688_
                                 (gx#syntax-split-splice _g1812118150_ '0)))
                            (begin
                              (let ((_g41689_
                                     (if (##values? _g41688_)
                                         (##vector-length _g41688_)
                                         1)))
                                (if (not (##fx= _g41689_ 2))
                                    (error "Context expects 2 values"
                                           _g41689_)))
                              (let ((_target1812418153_
                                     (##vector-ref _g41688_ 0))
                                    (_tl1812618156_ (##vector-ref _g41688_ 1)))
                                (if (gx#stx-null? _tl1812618156_)
                                    (letrec ((_loop1812718159_
                                              (lambda (_hd1812518163_
                                                       _def-setf1813118166_
                                                       _def-getf1813218168_)
                                                (if (gx#stx-pair?
                                                     _hd1812518163_)
                                                    (let ((_e1812818171_
                                                           (gx#syntax-e
                                                            _hd1812518163_)))
                                                      (let ((_lp-hd1812918175_
                                                             (##car _e1812818171_))
                                                            (_lp-tl1813018178_
                                                             (##cdr _e1812818171_)))
                                                        (if (gx#stx-pair?
                                                             _lp-hd1812918175_)
                                                            (let ((_e1813518181_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _lp-hd1812918175_)))
                      (let ((_hd1813618185_ (##car _e1813518181_))
                            (_tl1813718188_ (##cdr _e1813518181_)))
                        (if (gx#stx-pair? _tl1813718188_)
                            (let ((_e1813818191_ (gx#syntax-e _tl1813718188_)))
                              (let ((_hd1813918195_ (##car _e1813818191_))
                                    (_tl1814018198_ (##cdr _e1813818191_)))
                                (if (gx#stx-null? _tl1814018198_)
                                    (_loop1812718159_
                                     _lp-tl1813018178_
                                     (cons _hd1813918195_ _def-setf1813118166_)
                                     (cons _hd1813618185_
                                           _def-getf1813218168_))
                                    (_g1812018146_ _g1812118150_))))
                            (_g1812018146_ _g1812118150_))))
                    (_g1812018146_ _g1812118150_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_def-setf1813318201_
                                                           (reverse _def-setf1813118166_))
                                                          (_def-getf1813418204_
                                                           (reverse _def-getf1813218168_)))
                                                      ((lambda (_L18207_
                                                                _L18209_)
                                                         (let ()
                                                           (let* ((_g1822718253_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g1822818249_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1822818249_)))
                          (_g1822618367_
                           (lambda (_g1822818257_)
                             (if (gx#stx-pair/null? _g1822818257_)
                                 (let ((_g41690_
                                        (gx#syntax-split-splice
                                         _g1822818257_
                                         '0)))
                                   (begin
                                     (let ((_g41691_
                                            (if (##values? _g41690_)
                                                (##vector-length _g41690_)
                                                1)))
                                       (if (not (##fx= _g41691_ 2))
                                           (error "Context expects 2 values"
                                                  _g41691_)))
                                     (let ((_target1823118260_
                                            (##vector-ref _g41690_ 0))
                                           (_tl1823318263_
                                            (##vector-ref _g41690_ 1)))
                                       (if (gx#stx-null? _tl1823318263_)
                                           (letrec ((_loop1823418266_
                                                     (lambda (_hd1823218270_
                                                              _def-usetf1823818273_
                                                              _def-ugetf1823918275_)
                                                       (if (gx#stx-pair?
                                                            _hd1823218270_)
                                                           (let ((_e1823518278_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd1823218270_)))
                     (let ((_lp-hd1823618282_ (##car _e1823518278_))
                           (_lp-tl1823718285_ (##cdr _e1823518278_)))
                       (if (gx#stx-pair? _lp-hd1823618282_)
                           (let ((_e1824218288_
                                  (gx#syntax-e _lp-hd1823618282_)))
                             (let ((_hd1824318292_ (##car _e1824218288_))
                                   (_tl1824418295_ (##cdr _e1824218288_)))
                               (if (gx#stx-pair? _tl1824418295_)
                                   (let ((_e1824518298_
                                          (gx#syntax-e _tl1824418295_)))
                                     (let ((_hd1824618302_
                                            (##car _e1824518298_))
                                           (_tl1824718305_
                                            (##cdr _e1824518298_)))
                                       (if (gx#stx-null? _tl1824718305_)
                                           (_loop1823418266_
                                            _lp-tl1823718285_
                                            (cons _hd1824618302_
                                                  _def-usetf1823818273_)
                                            (cons _hd1824318292_
                                                  _def-ugetf1823918275_))
                                           (_g1822718253_ _g1822818257_))))
                                   (_g1822718253_ _g1822818257_))))
                           (_g1822718253_ _g1822818257_))))
                   (let ((_def-usetf1824018308_
                          (reverse _def-usetf1823818273_))
                         (_def-ugetf1824118311_
                          (reverse _def-ugetf1823918275_)))
                     ((lambda (_L18314_ _L18316_)
                        (let ()
                          (let ()
                            (_wrap17626_
                             (cons (gx#datum->syntax '#f 'begin)
                                   (cons _L18048_
                                         (cons _L18104_
                                               (cons _L18076_
                                                     (foldr (lambda (_g1833418343_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g1833518346_)
                      (cons _g1833418343_ _g1833518346_))
                    (foldr (lambda (_g1833618349_ _g1833718352_)
                             (cons _g1833618349_ _g1833718352_))
                           (foldr (lambda (_g1833818355_ _g1833918358_)
                                    (cons _g1833818355_ _g1833918358_))
                                  (foldr (lambda (_g1834018361_ _g1834118364_)
                                           (cons _g1834018361_ _g1834118364_))
                                         '()
                                         _L18314_)
                                  _L18316_)
                           _L18207_)
                    _L18209_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      _def-usetf1824018308_
                      _def-ugetf1824118311_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop1823418266_
                                              _target1823118260_
                                              '()
                                              '()))
                                           (_g1822718253_ _g1822818257_)))))
                                 (_g1822718253_ _g1822818257_)))))
                     (_g1822618367_
                      (if (gx#stx-e (gx#stx-getq 'unchecked: _L17718_))
                          (gx#stx-map
                           (lambda (_ref18371_)
                             (let* ((_g1837418393_
                                     (lambda (_g1837518389_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1837518389_)))
                                    (_g1837318515_
                                     (lambda (_g1837518397_)
                                       (if (gx#stx-pair? _g1837518397_)
                                           (let ((_e1837918400_
                                                  (gx#syntax-e _g1837518397_)))
                                             (let ((_hd1838018404_
                                                    (##car _e1837918400_))
                                                   (_tl1838118407_
                                                    (##cdr _e1837918400_)))
                                               (if (gx#stx-pair?
                                                    _tl1838118407_)
                                                   (let ((_e1838218410_
                                                          (gx#syntax-e
                                                           _tl1838118407_)))
                                                     (let ((_hd1838318414_
                                                            (##car _e1838218410_))
                                                           (_tl1838418417_
                                                            (##cdr _e1838218410_)))
                                                       (if (gx#stx-pair?
                                                            _tl1838418417_)
                                                           (let ((_e1838518420_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl1838418417_)))
                     (let ((_hd1838618424_ (##car _e1838518420_))
                           (_tl1838718427_ (##cdr _e1838518420_)))
                       (if (gx#stx-null? _tl1838718427_)
                           ((lambda (_L18430_ _L18432_ _L18433_)
                              (let* ((_g1845118466_
                                      (lambda (_g1845218462_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g1845218462_)))
                                     (_g1845018511_
                                      (lambda (_g1845218470_)
                                        (if (gx#stx-pair? _g1845218470_)
                                            (let ((_e1845518473_
                                                   (gx#syntax-e
                                                    _g1845218470_)))
                                              (let ((_hd1845618477_
                                                     (##car _e1845518473_))
                                                    (_tl1845718480_
                                                     (##cdr _e1845518473_)))
                                                (if (gx#stx-pair?
                                                     _tl1845718480_)
                                                    (let ((_e1845818483_
                                                           (gx#syntax-e
                                                            _tl1845718480_)))
                                                      (let ((_hd1845918487_
                                                             (##car _e1845818483_))
                                                            (_tl1846018490_
                                                             (##cdr _e1845818483_)))
                                                        (if (gx#stx-null?
                                                             _tl1846018490_)
                                                            ((lambda (_L18493_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L18495_)
                       (let ()
                         (cons (_wrap17626_
                                (cons (gx#datum->syntax '#f 'def)
                                      (cons _L18495_
                                            (cons (cons _L17860_
                                                        (cons _L17723_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _L18433_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))
                               (cons (_wrap17626_
                                      (cons (gx#datum->syntax '#f 'def)
                                            (cons _L18493_
                                                  (cons (cons _L17858_
                                                              (cons _L17723_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f 'quote)
                                        (cons _L18433_ '()))
                                  '())))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))
                     _hd1845918487_
                     _hd1845618477_)
                    (_g1845118466_ _g1845218470_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1845118466_
                                                     _g1845218470_))))
                                            (_g1845118466_ _g1845218470_)))))
                                (_g1845018511_
                                 (list (gx#stx-identifier
                                        _L18432_
                                        '"&"
                                        _L18432_)
                                       (gx#stx-identifier
                                        _L18430_
                                        '"&"
                                        _L18430_)))))
                            _hd1838618424_
                            _hd1838318414_
                            _hd1838018404_)
                           (_g1837418393_ _g1837518397_))))
                   (_g1837418393_ _g1837518397_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1837418393_
                                                    _g1837518397_))))
                                           (_g1837418393_ _g1837518397_)))))
                               (_g1837318515_ _ref18371_)))
                           _attrs18117_)
                          '())))))
               _def-setf1813318201_
               _def-getf1813418204_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop1812718159_
                                       _target1812418153_
                                       '()
                                       '()))
                                    (_g1812018146_ _g1812118150_)))))
                          (_g1812018146_ _g1812118150_)))))
              (_g1811918519_
               (gx#stx-map
                (lambda (_ref18523_)
                  (let* ((_g1852618545_
                          (lambda (_g1852718541_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1852718541_)))
                         (_g1852518603_
                          (lambda (_g1852718549_)
                            (if (gx#stx-pair? _g1852718549_)
                                (let ((_e1853118552_
                                       (gx#syntax-e _g1852718549_)))
                                  (let ((_hd1853218556_ (##car _e1853118552_))
                                        (_tl1853318559_ (##cdr _e1853118552_)))
                                    (if (gx#stx-pair? _tl1853318559_)
                                        (let ((_e1853418562_
                                               (gx#syntax-e _tl1853318559_)))
                                          (let ((_hd1853518566_
                                                 (##car _e1853418562_))
                                                (_tl1853618569_
                                                 (##cdr _e1853418562_)))
                                            (if (gx#stx-pair? _tl1853618569_)
                                                (let ((_e1853718572_
                                                       (gx#syntax-e
                                                        _tl1853618569_)))
                                                  (let ((_hd1853818576_
                                                         (##car _e1853718572_))
                                                        (_tl1853918579_
                                                         (##cdr _e1853718572_)))
                                                    (if (gx#stx-null?
                                                         _tl1853918579_)
                                                        ((lambda (_L18582_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L18584_
                          _L18585_)
                   (cons (_wrap17626_
                          (cons (gx#datum->syntax '#f 'def)
                                (cons _L18584_
                                      (cons (cons _L17862_
                                                  (cons _L17723_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons _L18585_ '()))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '()))))
                         (cons (_wrap17626_
                                (cons (gx#datum->syntax '#f 'def)
                                      (cons _L18582_
                                            (cons (cons _L17861_
                                                        (cons _L17723_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _L18585_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))
                               '())))
                 _hd1853818576_
                 _hd1853518566_
                 _hd1853218556_)
                (_g1852618545_ _g1852718549_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1852618545_
                                                 _g1852718549_))))
                                        (_g1852618545_ _g1852718549_))))
                                (_g1852618545_ _g1852718549_)))))
                    (_g1852518603_ _ref18523_)))
                _attrs18117_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1809018101_))))
                                       (_g1808818607_
                                        (_wrap17626_
                                         (cons (gx#datum->syntax '#f 'def)
                                               (cons _L17720_
                                                     (cons (cons _L17863_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L17723_ '()))
                   '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _g1806218073_))))
                        (_g1806018611_
                         (if (gx#stx-false? _L17721_)
                             (cons (gx#datum->syntax '#f 'begin) '())
                             (_wrap17626_
                              (cons (gx#datum->syntax '#f 'def)
                                    (cons (cons _L17721_
                                                (gx#datum->syntax '#f '$args))
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'apply)
                                                      (cons _L17864_
                                                            (cons _L17723_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f '$args) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))))))))
                  _g1803418045_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1803218615_
                                                  (_wrap17626_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'def)
                                                         (cons _L17723_
                                                               (cons _L18020_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _g1800618017_))))
                                  (_g1800418619_
                                   (if _struct?17624_
                                       (let* ((_g1862318647_
                                               (lambda (_g1862418643_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1862418643_)))
                                              (_g1862218734_
                                               (lambda (_g1862418651_)
                                                 (if (gx#stx-pair?
                                                      _g1862418651_)
                                                     (let ((_e1862718654_
                                                            (gx#syntax-e
                                                             _g1862418651_)))
                                                       (let ((_hd1862818658_
                                                              (##car _e1862718654_))
                                                             (_tl1862918661_
                                                              (##cdr _e1862718654_)))
                                                         (if (gx#stx-pair?
                                                              _tl1862918661_)
                                                             (let ((_e1863018664_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl1862918661_)))
                       (let ((_hd1863118668_ (##car _e1863018664_))
                             (_tl1863218671_ (##cdr _e1863018664_)))
                         (if (gx#stx-pair/null? _hd1863118668_)
                             (let ((_g41692_
                                    (gx#syntax-split-splice
                                     _hd1863118668_
                                     '0)))
                               (begin
                                 (let ((_g41693_
                                        (if (##values? _g41692_)
                                            (##vector-length _g41692_)
                                            1)))
                                   (if (not (##fx= _g41693_ 2))
                                       (error "Context expects 2 values"
                                              _g41693_)))
                                 (let ((_target1863318674_
                                        (##vector-ref _g41692_ 0))
                                       (_tl1863518677_
                                        (##vector-ref _g41692_ 1)))
                                   (if (gx#stx-null? _tl1863518677_)
                                       (letrec ((_loop1863618680_
                                                 (lambda (_hd1863418684_
                                                          _field-id1864018687_)
                                                   (if (gx#stx-pair?
                                                        _hd1863418684_)
                                                       (let ((_e1863718690_
                                                              (gx#syntax-e
                                                               _hd1863418684_)))
                                                         (let ((_lp-hd1863818694_
                                                                (##car _e1863718690_))
                                                               (_lp-tl1863918697_
                                                                (##cdr _e1863718690_)))
                                                           (_loop1863618680_
                                                            _lp-tl1863918697_
                                                            (cons _lp-hd1863818694_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _field-id1864018687_))))
               (let ((_field-id1864118700_ (reverse _field-id1864018687_)))
                 (if (gx#stx-null? _tl1863218671_)
                     ((lambda (_L18704_ _L18706_)
                        (let ()
                          (cons (gx#datum->syntax '#f 'make-struct-type)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _L17908_ '()))
                                      (cons _L17722_
                                            (cons _L18706_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'quote)
                                                              (cons _L17936_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _L17964_
                      (cons (cons (gx#datum->syntax '#f 'quote)
                                  (cons _L17992_ '()))
                            (cons (cons (gx#datum->syntax '#f 'quote)
                                        (cons (foldr (lambda (_g1872518728_
                                                              _g1872618731_)
                                                       (cons _g1872518728_
                                                             _g1872618731_))
                                                     '()
                                                     _L18704_)
                                              '()))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      _field-id1864118700_
                      _hd1862818658_)
                     (_g1862318647_ _g1862418651_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop1863618680_
                                          _target1863318674_
                                          '()))
                                       (_g1862318647_ _g1862418651_)))))
                             (_g1862318647_ _g1862418651_))))
                     (_g1862318647_ _g1862418651_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1862318647_
                                                      _g1862418651_)))))
                                         (_g1862218734_
                                          (list (gx#stx-length _els17757_)
                                                (gx#stx-map
                                                 _field-id17629_
                                                 _els17757_))))
                                       (let* ((_g1873818771_
                                               (lambda (_g1873918767_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1873918767_)))
                                              (_g1873718899_
                                               (lambda (_g1873918775_)
                                                 (if (gx#stx-pair?
                                                      _g1873918775_)
                                                     (let ((_e1874218778_
                                                            (gx#syntax-e
                                                             _g1873918775_)))
                                                       (let ((_hd1874318782_
                                                              (##car _e1874218778_))
                                                             (_tl1874418785_
                                                              (##cdr _e1874218778_)))
                                                         (if (gx#stx-pair/null?
                                                              _hd1874318782_)
                                                             (let ((_g41694_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _hd1874318782_ '0)))
                       (begin
                         (let ((_g41695_
                                (if (##values? _g41694_)
                                    (##vector-length _g41694_)
                                    1)))
                           (if (not (##fx= _g41695_ 2))
                               (error "Context expects 2 values" _g41695_)))
                         (let ((_target1874518788_ (##vector-ref _g41694_ 0))
                               (_tl1874718791_ (##vector-ref _g41694_ 1)))
                           (if (gx#stx-null? _tl1874718791_)
                               (letrec ((_loop1874818794_
                                         (lambda (_hd1874618798_
                                                  _super1875218801_)
                                           (if (gx#stx-pair? _hd1874618798_)
                                               (let ((_e1874918804_
                                                      (gx#syntax-e
                                                       _hd1874618798_)))
                                                 (let ((_lp-hd1875018808_
                                                        (##car _e1874918804_))
                                                       (_lp-tl1875118811_
                                                        (##cdr _e1874918804_)))
                                                   (_loop1874818794_
                                                    _lp-tl1875118811_
                                                    (cons _lp-hd1875018808_
                                                          _super1875218801_))))
                                               (let ((_super1875318814_
                                                      (reverse _super1875218801_)))
                                                 (if (gx#stx-pair?
                                                      _tl1874418785_)
                                                     (let ((_e1875418818_
                                                            (gx#syntax-e
                                                             _tl1874418785_)))
                                                       (let ((_hd1875518822_
                                                              (##car _e1875418818_))
                                                             (_tl1875618825_
                                                              (##cdr _e1875418818_)))
                                                         (if (gx#stx-pair/null?
                                                              _hd1875518822_)
                                                             (let ((_g41696_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _hd1875518822_ '0)))
                       (begin
                         (let ((_g41697_
                                (if (##values? _g41696_)
                                    (##vector-length _g41696_)
                                    1)))
                           (if (not (##fx= _g41697_ 2))
                               (error "Context expects 2 values" _g41697_)))
                         (let ((_target1875718828_ (##vector-ref _g41696_ 0))
                               (_tl1875918831_ (##vector-ref _g41696_ 1)))
                           (if (gx#stx-null? _tl1875918831_)
                               (letrec ((_loop1876018834_
                                         (lambda (_hd1875818838_
                                                  _slot1876418841_)
                                           (if (gx#stx-pair? _hd1875818838_)
                                               (let ((_e1876118844_
                                                      (gx#syntax-e
                                                       _hd1875818838_)))
                                                 (let ((_lp-hd1876218848_
                                                        (##car _e1876118844_))
                                                       (_lp-tl1876318851_
                                                        (##cdr _e1876118844_)))
                                                   (_loop1876018834_
                                                    _lp-tl1876318851_
                                                    (cons _lp-hd1876218848_
                                                          _slot1876418841_))))
                                               (let ((_slot1876518854_
                                                      (reverse _slot1876418841_)))
                                                 (if (gx#stx-null?
                                                      _tl1875618825_)
                                                     ((lambda (_L18858_
                                                               _L18860_)
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'make-class-type)
                        (cons (cons (gx#datum->syntax '#f 'quote)
                                    (cons _L17908_ '()))
                              (cons (cons (gx#datum->syntax '#f '@list)
                                          (foldr (lambda (_g1888218887_
                                                          _g1888318890_)
                                                   (cons _g1888218887_
                                                         _g1888318890_))
                                                 '()
                                                 _L18860_))
                                    (cons (cons (gx#datum->syntax '#f 'quote)
                                                (cons (foldr (lambda (_g1888418893_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1888518896_)
                       (cons _g1888418893_ _g1888518896_))
                     '()
                     _L18858_)
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons _L17936_ '()))
                                                (cons _L17964_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons _L17992_ '()))
                    '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              _slot1876518854_
              _super1875318814_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1873818771_
                                                      _g1873918775_)))))))
                                 (_loop1876018834_ _target1875718828_ '()))
                               (_g1873818771_ _g1873918775_)))))
                     (_g1873818771_ _g1873918775_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1873818771_
                                                      _g1873918775_)))))))
                                 (_loop1874818794_ _target1874518788_ '()))
                               (_g1873818771_ _g1873918775_)))))
                     (_g1873818771_ _g1873918775_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1873818771_
                                                      _g1873918775_)))))
                                         (_g1873718899_
                                          (list _L17722_
                                                (gx#stx-map
                                                 gx#stx-car
                                                 _els17757_)))))))))
                            _g1797817989_))))
                   (_g1797618903_ (gx#stx-getq 'constructor: _L17718_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1795017961_))))
                                            (_g1794818907_
                                             (let ((_$e18911_
                                                    (gx#stx-getq
                                                     'plist:
                                                     _L17718_)))
                                               (if _$e18911_
                                                   _$e18911_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '@list)
                                                         '())))))))
                                      _g1792217933_))))
                             (_g1792018915_
                              (let ((_$e18919_ (gx#stx-getq 'name: _L17718_)))
                                (if _$e18919_ _$e18919_ _L17723_))))))
                       _g1789417905_))))
              (_g1789218923_
               (let ((_$e18927_ (gx#stx-getq 'id: _L17718_)))
                 (if _$e18927_
                     _$e18927_
                     (if (gx#module-context? (gx#current-expander-context))
                         (_module-type-id17632_ _L17723_)
                         (gx#genident _L17723_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1778417852_
                                                _hd1778117842_
                                                _hd1777817832_
                                                _hd1777517822_
                                                _hd1777217812_
                                                _hd1776917802_)
                                               (_g1776017791_ _g1776117795_))))
                                       (_g1776017791_ _g1776117795_))))
                               (_g1776017791_ _g1776117795_))))
                       (_g1776017791_ _g1776117795_))))
               (_g1776017791_ _g1776117795_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1776017791_ _g1776117795_))))
                                       (_g1776017791_ _g1776117795_)))))
                           (_g1775918931_
                            (if _struct?17624_
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
                         (_g1763417661_ _g1763517665_)))
                   _tl1765517715_
                   _hd1765417712_
                   _hd1765117702_
                   _hd1764817692_
                   _hd1764517682_)))
              (_g1763417661_ _g1763517665_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1763417661_ _g1763517665_))))
                                      (_g1763417661_ _g1763517665_))))
                              (_g1763417661_ _g1763517665_))))
                      (_g1763417661_ _g1763517665_)))))
          (_g1763318935_ _stx17622_)))))
  (define |gerbil/core$<MOP>$<MOP:1>[:0:]#defstruct-type|
    (lambda (_stx19235_)
      (|gerbil/core$<MOP>$<MOP:1>[1]#generate-typedef| _stx19235_ '#t)))
  (define |gerbil/core$<MOP>$<MOP:1>[:0:]#defclass-type|
    (lambda (_stx19238_)
      (|gerbil/core$<MOP>$<MOP:1>[1]#generate-typedef| _stx19238_ '#f))))
