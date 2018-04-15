(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<MOP>$<MOP:1>[1]#generate-typedef|
    (lambda (_stx17326_ _struct?17328_)
      (letrec ((_wrap17330_
                (lambda (_e-stx18931_)
                  (gx#stx-wrap-source
                   _e-stx18931_
                   (gx#stx-source _stx17326_))))
               (_slotify17332_
                (lambda (_field18796_ _off18798_)
                  (let* ((___stx3819038191_ _field18796_)
                         (_g1880118828_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx3819038191_))))
                    (let ((___kont3819338194_
                           (lambda (_L18912_ _L18914_)
                             (cons _off18798_
                                   (cons _L18914_ (cons _L18912_ '())))))
                          (___kont3819538196_
                           (lambda (_L18865_ _L18867_ _L18868_)
                             (cons _off18798_
                                   (cons _L18867_ (cons _L18865_ '()))))))
                      (if (gx#stx-pair? ___stx3819038191_)
                          (let ((_e1880518892_
                                 (gx#syntax-e ___stx3819038191_)))
                            (let ((_tl1880718899_ (##cdr _e1880518892_))
                                  (_hd1880618896_ (##car _e1880518892_)))
                              (if (gx#stx-pair? _tl1880718899_)
                                  (let ((_e1880818902_
                                         (gx#syntax-e _tl1880718899_)))
                                    (let ((_tl1881018909_
                                           (##cdr _e1880818902_))
                                          (_hd1880918906_
                                           (##car _e1880818902_)))
                                      (if (gx#stx-null? _tl1881018909_)
                                          (___kont3819338194_
                                           _hd1880918906_
                                           _hd1880618896_)
                                          (if (gx#stx-pair? _tl1881018909_)
                                              (let ((_e1882018855_
                                                     (gx#syntax-e
                                                      _tl1881018909_)))
                                                (let ((_tl1882218862_
                                                       (##cdr _e1882018855_))
                                                      (_hd1882118859_
                                                       (##car _e1882018855_)))
                                                  (if (gx#stx-null?
                                                       _tl1882218862_)
                                                      (___kont3819538196_
                                                       _hd1882118859_
                                                       _hd1880918906_
                                                       _hd1880618896_)
                                                      (_g1880118828_))))
                                              (_g1880118828_)))))
                                  (_g1880118828_))))
                          (_g1880118828_))))))
               (_field-id17333_
                (lambda (_field18662_)
                  (let* ((___stx3823438235_ _field18662_)
                         (_g1866618693_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx3823438235_))))
                    (let ((___kont3823738238_ (lambda (_L18777_ _L18779_) ':))
                          (___kont3823938240_
                           (lambda (_L18730_ _L18732_ _L18733_) _L18733_)))
                      (if (gx#stx-pair? ___stx3823438235_)
                          (let ((_e1867018757_
                                 (gx#syntax-e ___stx3823438235_)))
                            (let ((_tl1867218764_ (##cdr _e1867018757_))
                                  (_hd1867118761_ (##car _e1867018757_)))
                              (if (gx#stx-pair? _tl1867218764_)
                                  (let ((_e1867318767_
                                         (gx#syntax-e _tl1867218764_)))
                                    (let ((_tl1867518774_
                                           (##cdr _e1867318767_))
                                          (_hd1867418771_
                                           (##car _e1867318767_)))
                                      (if (gx#stx-null? _tl1867518774_)
                                          (___kont3823738238_
                                           _hd1867418771_
                                           _hd1867118761_)
                                          (if (gx#stx-pair? _tl1867518774_)
                                              (let ((_e1868518720_
                                                     (gx#syntax-e
                                                      _tl1867518774_)))
                                                (let ((_tl1868718727_
                                                       (##cdr _e1868518720_))
                                                      (_hd1868618724_
                                                       (##car _e1868518720_)))
                                                  (if (gx#stx-null?
                                                       _tl1868718727_)
                                                      (___kont3823938240_
                                                       _hd1868618724_
                                                       _hd1867418771_
                                                       _hd1867118761_)
                                                      (_g1866618693_))))
                                              (_g1866618693_)))))
                                  (_g1866618693_))))
                          (_g1866618693_))))))
               (_struct-opt?17334_
                (lambda (_key18659_)
                  (memq (gx#stx-e _key18659_)
                        '(fields: id: name: plist: constructor: unchecked:))))
               (_class-opt?17335_
                (lambda (_key18656_)
                  (memq (gx#stx-e _key18656_)
                        '(slots: id: name: plist: constructor: unchecked:))))
               (_module-type-id17336_
                (lambda (_type-t18643_)
                  (let ((_$e18646_
                         (gx#module-context-ns (gx#current-expander-context))))
                    (if _$e18646_
                        ((lambda (_ns18650_)
                           (gx#stx-identifier
                            _type-t18643_
                            _ns18650_
                            '"#"
                            _type-t18643_))
                         _$e18646_)
                        (let ((_mid18653_
                               (gx#expander-context-id
                                (gx#current-expander-context))))
                          (gx#stx-identifier
                           _type-t18643_
                           _mid18653_
                           '"#"
                           _type-t18643_)))))))
        (let* ((_g1733817365_
                (lambda (_g1733917361_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1733917361_)))
               (_g1733718639_
                (lambda (_g1733917369_)
                  (if (gx#stx-pair? _g1733917369_)
                      (let ((_e1734517372_ (gx#syntax-e _g1733917369_)))
                        (let ((_hd1734617376_ (##car _e1734517372_))
                              (_tl1734717379_ (##cdr _e1734517372_)))
                          (if (gx#stx-pair? _tl1734717379_)
                              (let ((_e1734817382_
                                     (gx#syntax-e _tl1734717379_)))
                                (let ((_hd1734917386_ (##car _e1734817382_))
                                      (_tl1735017389_ (##cdr _e1734817382_)))
                                  (if (gx#stx-pair? _tl1735017389_)
                                      (let ((_e1735117392_
                                             (gx#syntax-e _tl1735017389_)))
                                        (let ((_hd1735217396_
                                               (##car _e1735117392_))
                                              (_tl1735317399_
                                               (##cdr _e1735117392_)))
                                          (if (gx#stx-pair? _tl1735317399_)
                                              (let ((_e1735417402_
                                                     (gx#syntax-e
                                                      _tl1735317399_)))
                                                (let ((_hd1735517406_
                                                       (##car _e1735417402_))
                                                      (_tl1735617409_
                                                       (##cdr _e1735417402_)))
                                                  (if (gx#stx-pair?
                                                       _tl1735617409_)
                                                      (let ((_e1735717412_
                                                             (gx#syntax-e
                                                              _tl1735617409_)))
                                                        (let ((_hd1735817416_
                                                               (##car _e1735717412_))
                                                              (_tl1735917419_
                                                               (##cdr _e1735717412_)))
                                                          ((lambda (_L17422_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L17424_
                            _L17425_
                            _L17426_
                            _L17427_)
                     (if (and (gx#identifier? _L17427_)
                              (or (gx#identifier? _L17425_)
                                  (gx#stx-false? _L17425_))
                              (gx#identifier? _L17424_)
                              (gx#stx-plist?
                               _L17422_
                               (if _struct?17328_
                                   _struct-opt?17334_
                                   _class-opt?17335_)))
                         (let* ((_els17461_
                                 (let ((_$e17457_
                                        (gx#stx-getq
                                         (if _struct?17328_ 'fields: 'slots:)
                                         _L17422_)))
                                   (if _$e17457_ _$e17457_ '())))
                                (_g1746417495_
                                 (lambda (_g1746517491_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1746517491_)))
                                (_g1746318635_
                                 (lambda (_g1746517499_)
                                   (if (gx#stx-pair? _g1746517499_)
                                       (let ((_e1747217502_
                                              (gx#syntax-e _g1746517499_)))
                                         (let ((_hd1747317506_
                                                (##car _e1747217502_))
                                               (_tl1747417509_
                                                (##cdr _e1747217502_)))
                                           (if (gx#stx-pair? _tl1747417509_)
                                               (let ((_e1747517512_
                                                      (gx#syntax-e
                                                       _tl1747417509_)))
                                                 (let ((_hd1747617516_
                                                        (##car _e1747517512_))
                                                       (_tl1747717519_
                                                        (##cdr _e1747517512_)))
                                                   (if (gx#stx-pair?
                                                        _tl1747717519_)
                                                       (let ((_e1747817522_
                                                              (gx#syntax-e
                                                               _tl1747717519_)))
                                                         (let ((_hd1747917526_
                                                                (##car _e1747817522_))
                                                               (_tl1748017529_
                                                                (##cdr _e1747817522_)))
                                                           (if (gx#stx-pair?
                                                                _tl1748017529_)
                                                               (let ((_e1748117532_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl1748017529_)))
                         (let ((_hd1748217536_ (##car _e1748117532_))
                               (_tl1748317539_ (##cdr _e1748117532_)))
                           (if (gx#stx-pair? _tl1748317539_)
                               (let ((_e1748417542_
                                      (gx#syntax-e _tl1748317539_)))
                                 (let ((_hd1748517546_ (##car _e1748417542_))
                                       (_tl1748617549_ (##cdr _e1748417542_)))
                                   (if (gx#stx-pair? _tl1748617549_)
                                       (let ((_e1748717552_
                                              (gx#syntax-e _tl1748617549_)))
                                         (let ((_hd1748817556_
                                                (##car _e1748717552_))
                                               (_tl1748917559_
                                                (##cdr _e1748717552_)))
                                           (if (gx#stx-null? _tl1748917559_)
                                               ((lambda (_L17562_
                                                         _L17564_
                                                         _L17565_
                                                         _L17566_
                                                         _L17567_
                                                         _L17568_)
                                                  (let ()
                                                    (let* ((_g1759717605_
                                                            (lambda (_g1759817601_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g1759817601_)))
                                                           (_g1759618627_
                                                            (lambda (_g1759817609_)
                                                              ((lambda (_L17612_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g1762517633_
                                   (lambda (_g1762617629_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1762617629_)))
                                  (_g1762418619_
                                   (lambda (_g1762617637_)
                                     ((lambda (_L17640_)
                                        (let ()
                                          (let* ((_g1765317661_
                                                  (lambda (_g1765417657_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1765417657_)))
                                                 (_g1765218611_
                                                  (lambda (_g1765417665_)
                                                    ((lambda (_L17668_)
                                                       (let ()
                                                         (let* ((_g1768117689_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1768217685_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1768217685_)))
                        (_g1768018607_
                         (lambda (_g1768217693_)
                           ((lambda (_L17696_)
                              (let ()
                                (let* ((_g1770917717_
                                        (lambda (_g1771017713_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g1771017713_)))
                                       (_g1770818323_
                                        (lambda (_g1771017721_)
                                          ((lambda (_L17724_)
                                             (let ()
                                               (let* ((_g1773717745_
                                                       (lambda (_g1773817741_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1773817741_)))
                                                      (_g1773618319_
                                                       (lambda (_g1773817749_)
                                                         ((lambda (_L17752_)
                                                            (let ()
                                                              (let* ((_g1776517773_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g1776617769_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1776617769_)))
                             (_g1776418315_
                              (lambda (_g1776617777_)
                                ((lambda (_L17780_)
                                   (let ()
                                     (let* ((_g1779317801_
                                             (lambda (_g1779417797_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1779417797_)))
                                            (_g1779218311_
                                             (lambda (_g1779417805_)
                                               ((lambda (_L17808_)
                                                  (let ()
                                                    (let* ((_attrs17821_
                                                            (if _struct?17328_
                                                                (gx#stx-map
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _slotify17332_
                         _els17461_
                         (iota (gx#stx-length _els17461_)))
                        _els17461_))
                   (_g1782417850_
                    (lambda (_g1782517846_)
                      (gx#raise-syntax-error '#f '"Bad syntax" _g1782517846_)))
                   (_g1782318223_
                    (lambda (_g1782517854_)
                      (if (gx#stx-pair/null? _g1782517854_)
                          (let ((_g41324_
                                 (gx#syntax-split-splice _g1782517854_ '0)))
                            (begin
                              (let ((_g41325_
                                     (if (##values? _g41324_)
                                         (##vector-length _g41324_)
                                         1)))
                                (if (not (##fx= _g41325_ 2))
                                    (error "Context expects 2 values"
                                           _g41325_)))
                              (let ((_target1782817857_
                                     (##vector-ref _g41324_ 0))
                                    (_tl1783017860_ (##vector-ref _g41324_ 1)))
                                (if (gx#stx-null? _tl1783017860_)
                                    (letrec ((_loop1783117863_
                                              (lambda (_hd1782917867_
                                                       _def-setf1783517870_
                                                       _def-getf1783617872_)
                                                (if (gx#stx-pair?
                                                     _hd1782917867_)
                                                    (let ((_e1783217875_
                                                           (gx#syntax-e
                                                            _hd1782917867_)))
                                                      (let ((_lp-hd1783317879_
                                                             (##car _e1783217875_))
                                                            (_lp-tl1783417882_
                                                             (##cdr _e1783217875_)))
                                                        (if (gx#stx-pair?
                                                             _lp-hd1783317879_)
                                                            (let ((_e1783917885_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _lp-hd1783317879_)))
                      (let ((_hd1784017889_ (##car _e1783917885_))
                            (_tl1784117892_ (##cdr _e1783917885_)))
                        (if (gx#stx-pair? _tl1784117892_)
                            (let ((_e1784217895_ (gx#syntax-e _tl1784117892_)))
                              (let ((_hd1784317899_ (##car _e1784217895_))
                                    (_tl1784417902_ (##cdr _e1784217895_)))
                                (if (gx#stx-null? _tl1784417902_)
                                    (_loop1783117863_
                                     _lp-tl1783417882_
                                     (cons _hd1784317899_ _def-setf1783517870_)
                                     (cons _hd1784017889_
                                           _def-getf1783617872_))
                                    (_g1782417850_ _g1782517854_))))
                            (_g1782417850_ _g1782517854_))))
                    (_g1782417850_ _g1782517854_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_def-setf1783717905_
                                                           (reverse _def-setf1783517870_))
                                                          (_def-getf1783817908_
                                                           (reverse _def-getf1783617872_)))
                                                      ((lambda (_L17911_
                                                                _L17913_)
                                                         (let ()
                                                           (let* ((_g1793117957_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g1793217953_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1793217953_)))
                          (_g1793018071_
                           (lambda (_g1793217961_)
                             (if (gx#stx-pair/null? _g1793217961_)
                                 (let ((_g41326_
                                        (gx#syntax-split-splice
                                         _g1793217961_
                                         '0)))
                                   (begin
                                     (let ((_g41327_
                                            (if (##values? _g41326_)
                                                (##vector-length _g41326_)
                                                1)))
                                       (if (not (##fx= _g41327_ 2))
                                           (error "Context expects 2 values"
                                                  _g41327_)))
                                     (let ((_target1793517964_
                                            (##vector-ref _g41326_ 0))
                                           (_tl1793717967_
                                            (##vector-ref _g41326_ 1)))
                                       (if (gx#stx-null? _tl1793717967_)
                                           (letrec ((_loop1793817970_
                                                     (lambda (_hd1793617974_
                                                              _def-usetf1794217977_
                                                              _def-ugetf1794317979_)
                                                       (if (gx#stx-pair?
                                                            _hd1793617974_)
                                                           (let ((_e1793917982_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd1793617974_)))
                     (let ((_lp-hd1794017986_ (##car _e1793917982_))
                           (_lp-tl1794117989_ (##cdr _e1793917982_)))
                       (if (gx#stx-pair? _lp-hd1794017986_)
                           (let ((_e1794617992_
                                  (gx#syntax-e _lp-hd1794017986_)))
                             (let ((_hd1794717996_ (##car _e1794617992_))
                                   (_tl1794817999_ (##cdr _e1794617992_)))
                               (if (gx#stx-pair? _tl1794817999_)
                                   (let ((_e1794918002_
                                          (gx#syntax-e _tl1794817999_)))
                                     (let ((_hd1795018006_
                                            (##car _e1794918002_))
                                           (_tl1795118009_
                                            (##cdr _e1794918002_)))
                                       (if (gx#stx-null? _tl1795118009_)
                                           (_loop1793817970_
                                            _lp-tl1794117989_
                                            (cons _hd1795018006_
                                                  _def-usetf1794217977_)
                                            (cons _hd1794717996_
                                                  _def-ugetf1794317979_))
                                           (_g1793117957_ _g1793217961_))))
                                   (_g1793117957_ _g1793217961_))))
                           (_g1793117957_ _g1793217961_))))
                   (let ((_def-usetf1794418012_
                          (reverse _def-usetf1794217977_))
                         (_def-ugetf1794518015_
                          (reverse _def-ugetf1794317979_)))
                     ((lambda (_L18018_ _L18020_)
                        (let ()
                          (let ()
                            (_wrap17330_
                             (cons (gx#datum->syntax '#f 'begin)
                                   (cons _L17752_
                                         (cons _L17808_
                                               (cons _L17780_
                                                     (foldr (lambda (_g1803818047_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g1803918050_)
                      (cons _g1803818047_ _g1803918050_))
                    (foldr (lambda (_g1804018053_ _g1804118056_)
                             (cons _g1804018053_ _g1804118056_))
                           (foldr (lambda (_g1804218059_ _g1804318062_)
                                    (cons _g1804218059_ _g1804318062_))
                                  (foldr (lambda (_g1804418065_ _g1804518068_)
                                           (cons _g1804418065_ _g1804518068_))
                                         '()
                                         _L18018_)
                                  _L18020_)
                           _L17911_)
                    _L17913_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      _def-usetf1794418012_
                      _def-ugetf1794518015_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop1793817970_
                                              _target1793517964_
                                              '()
                                              '()))
                                           (_g1793117957_ _g1793217961_)))))
                                 (_g1793117957_ _g1793217961_)))))
                     (_g1793018071_
                      (if (gx#stx-e (gx#stx-getq 'unchecked: _L17422_))
                          (gx#stx-map
                           (lambda (_ref18075_)
                             (let* ((_g1807818097_
                                     (lambda (_g1807918093_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1807918093_)))
                                    (_g1807718219_
                                     (lambda (_g1807918101_)
                                       (if (gx#stx-pair? _g1807918101_)
                                           (let ((_e1808318104_
                                                  (gx#syntax-e _g1807918101_)))
                                             (let ((_hd1808418108_
                                                    (##car _e1808318104_))
                                                   (_tl1808518111_
                                                    (##cdr _e1808318104_)))
                                               (if (gx#stx-pair?
                                                    _tl1808518111_)
                                                   (let ((_e1808618114_
                                                          (gx#syntax-e
                                                           _tl1808518111_)))
                                                     (let ((_hd1808718118_
                                                            (##car _e1808618114_))
                                                           (_tl1808818121_
                                                            (##cdr _e1808618114_)))
                                                       (if (gx#stx-pair?
                                                            _tl1808818121_)
                                                           (let ((_e1808918124_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl1808818121_)))
                     (let ((_hd1809018128_ (##car _e1808918124_))
                           (_tl1809118131_ (##cdr _e1808918124_)))
                       (if (gx#stx-null? _tl1809118131_)
                           ((lambda (_L18134_ _L18136_ _L18137_)
                              (let* ((_g1815518170_
                                      (lambda (_g1815618166_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g1815618166_)))
                                     (_g1815418215_
                                      (lambda (_g1815618174_)
                                        (if (gx#stx-pair? _g1815618174_)
                                            (let ((_e1815918177_
                                                   (gx#syntax-e
                                                    _g1815618174_)))
                                              (let ((_hd1816018181_
                                                     (##car _e1815918177_))
                                                    (_tl1816118184_
                                                     (##cdr _e1815918177_)))
                                                (if (gx#stx-pair?
                                                     _tl1816118184_)
                                                    (let ((_e1816218187_
                                                           (gx#syntax-e
                                                            _tl1816118184_)))
                                                      (let ((_hd1816318191_
                                                             (##car _e1816218187_))
                                                            (_tl1816418194_
                                                             (##cdr _e1816218187_)))
                                                        (if (gx#stx-null?
                                                             _tl1816418194_)
                                                            ((lambda (_L18197_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L18199_)
                       (let ()
                         (cons (_wrap17330_
                                (cons (gx#datum->syntax '#f 'def)
                                      (cons _L18199_
                                            (cons (cons _L17564_
                                                        (cons _L17427_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _L18137_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))
                               (cons (_wrap17330_
                                      (cons (gx#datum->syntax '#f 'def)
                                            (cons _L18197_
                                                  (cons (cons _L17562_
                                                              (cons _L17427_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f 'quote)
                                        (cons _L18137_ '()))
                                  '())))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))
                     _hd1816318191_
                     _hd1816018181_)
                    (_g1815518170_ _g1815618174_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1815518170_
                                                     _g1815618174_))))
                                            (_g1815518170_ _g1815618174_)))))
                                (_g1815418215_
                                 (list (gx#stx-identifier
                                        _L18136_
                                        '"&"
                                        _L18136_)
                                       (gx#stx-identifier
                                        _L18134_
                                        '"&"
                                        _L18134_)))))
                            _hd1809018128_
                            _hd1808718118_
                            _hd1808418108_)
                           (_g1807818097_ _g1807918101_))))
                   (_g1807818097_ _g1807918101_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1807818097_
                                                    _g1807918101_))))
                                           (_g1807818097_ _g1807918101_)))))
                               (_g1807718219_ _ref18075_)))
                           _attrs17821_)
                          '())))))
               _def-setf1783717905_
               _def-getf1783817908_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop1783117863_
                                       _target1782817857_
                                       '()
                                       '()))
                                    (_g1782417850_ _g1782517854_)))))
                          (_g1782417850_ _g1782517854_)))))
              (_g1782318223_
               (gx#stx-map
                (lambda (_ref18227_)
                  (let* ((_g1823018249_
                          (lambda (_g1823118245_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1823118245_)))
                         (_g1822918307_
                          (lambda (_g1823118253_)
                            (if (gx#stx-pair? _g1823118253_)
                                (let ((_e1823518256_
                                       (gx#syntax-e _g1823118253_)))
                                  (let ((_hd1823618260_ (##car _e1823518256_))
                                        (_tl1823718263_ (##cdr _e1823518256_)))
                                    (if (gx#stx-pair? _tl1823718263_)
                                        (let ((_e1823818266_
                                               (gx#syntax-e _tl1823718263_)))
                                          (let ((_hd1823918270_
                                                 (##car _e1823818266_))
                                                (_tl1824018273_
                                                 (##cdr _e1823818266_)))
                                            (if (gx#stx-pair? _tl1824018273_)
                                                (let ((_e1824118276_
                                                       (gx#syntax-e
                                                        _tl1824018273_)))
                                                  (let ((_hd1824218280_
                                                         (##car _e1824118276_))
                                                        (_tl1824318283_
                                                         (##cdr _e1824118276_)))
                                                    (if (gx#stx-null?
                                                         _tl1824318283_)
                                                        ((lambda (_L18286_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L18288_
                          _L18289_)
                   (cons (_wrap17330_
                          (cons (gx#datum->syntax '#f 'def)
                                (cons _L18288_
                                      (cons (cons _L17566_
                                                  (cons _L17427_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons _L18289_ '()))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '()))))
                         (cons (_wrap17330_
                                (cons (gx#datum->syntax '#f 'def)
                                      (cons _L18286_
                                            (cons (cons _L17565_
                                                        (cons _L17427_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _L18289_ '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))
                               '())))
                 _hd1824218280_
                 _hd1823918270_
                 _hd1823618260_)
                (_g1823018249_ _g1823118253_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1823018249_
                                                 _g1823118253_))))
                                        (_g1823018249_ _g1823118253_))))
                                (_g1823018249_ _g1823118253_)))))
                    (_g1822918307_ _ref18227_)))
                _attrs17821_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1779417805_))))
                                       (_g1779218311_
                                        (_wrap17330_
                                         (cons (gx#datum->syntax '#f 'def)
                                               (cons _L17424_
                                                     (cons (cons _L17567_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L17427_ '()))
                   '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _g1776617777_))))
                        (_g1776418315_
                         (if (gx#stx-false? _L17425_)
                             (cons (gx#datum->syntax '#f 'begin) '())
                             (_wrap17330_
                              (cons (gx#datum->syntax '#f 'def)
                                    (cons (cons _L17425_
                                                (gx#datum->syntax '#f '$args))
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'apply)
                                                      (cons _L17568_
                                                            (cons _L17427_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f '$args) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))))))))
                  _g1773817749_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1773618319_
                                                  (_wrap17330_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'def)
                                                         (cons _L17427_
                                                               (cons _L17724_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _g1771017721_))))
                                  (_g1770818323_
                                   (if _struct?17328_
                                       (let* ((_g1832718351_
                                               (lambda (_g1832818347_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1832818347_)))
                                              (_g1832618438_
                                               (lambda (_g1832818355_)
                                                 (if (gx#stx-pair?
                                                      _g1832818355_)
                                                     (let ((_e1833118358_
                                                            (gx#syntax-e
                                                             _g1832818355_)))
                                                       (let ((_hd1833218362_
                                                              (##car _e1833118358_))
                                                             (_tl1833318365_
                                                              (##cdr _e1833118358_)))
                                                         (if (gx#stx-pair?
                                                              _tl1833318365_)
                                                             (let ((_e1833418368_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl1833318365_)))
                       (let ((_hd1833518372_ (##car _e1833418368_))
                             (_tl1833618375_ (##cdr _e1833418368_)))
                         (if (gx#stx-pair/null? _hd1833518372_)
                             (let ((_g41328_
                                    (gx#syntax-split-splice
                                     _hd1833518372_
                                     '0)))
                               (begin
                                 (let ((_g41329_
                                        (if (##values? _g41328_)
                                            (##vector-length _g41328_)
                                            1)))
                                   (if (not (##fx= _g41329_ 2))
                                       (error "Context expects 2 values"
                                              _g41329_)))
                                 (let ((_target1833718378_
                                        (##vector-ref _g41328_ 0))
                                       (_tl1833918381_
                                        (##vector-ref _g41328_ 1)))
                                   (if (gx#stx-null? _tl1833918381_)
                                       (letrec ((_loop1834018384_
                                                 (lambda (_hd1833818388_
                                                          _field-id1834418391_)
                                                   (if (gx#stx-pair?
                                                        _hd1833818388_)
                                                       (let ((_e1834118394_
                                                              (gx#syntax-e
                                                               _hd1833818388_)))
                                                         (let ((_lp-hd1834218398_
                                                                (##car _e1834118394_))
                                                               (_lp-tl1834318401_
                                                                (##cdr _e1834118394_)))
                                                           (_loop1834018384_
                                                            _lp-tl1834318401_
                                                            (cons _lp-hd1834218398_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _field-id1834418391_))))
               (let ((_field-id1834518404_ (reverse _field-id1834418391_)))
                 (if (gx#stx-null? _tl1833618375_)
                     ((lambda (_L18408_ _L18410_)
                        (let ()
                          (cons (gx#datum->syntax '#f 'make-struct-type)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _L17612_ '()))
                                      (cons _L17426_
                                            (cons _L18410_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'quote)
                                                              (cons _L17640_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _L17668_
                      (cons (cons (gx#datum->syntax '#f 'quote)
                                  (cons _L17696_ '()))
                            (cons (cons (gx#datum->syntax '#f 'quote)
                                        (cons (foldr (lambda (_g1842918432_
                                                              _g1843018435_)
                                                       (cons _g1842918432_
                                                             _g1843018435_))
                                                     '()
                                                     _L18408_)
                                              '()))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      _field-id1834518404_
                      _hd1833218362_)
                     (_g1832718351_ _g1832818355_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop1834018384_
                                          _target1833718378_
                                          '()))
                                       (_g1832718351_ _g1832818355_)))))
                             (_g1832718351_ _g1832818355_))))
                     (_g1832718351_ _g1832818355_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1832718351_
                                                      _g1832818355_)))))
                                         (_g1832618438_
                                          (list (gx#stx-length _els17461_)
                                                (gx#stx-map
                                                 _field-id17333_
                                                 _els17461_))))
                                       (let* ((_g1844218475_
                                               (lambda (_g1844318471_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1844318471_)))
                                              (_g1844118603_
                                               (lambda (_g1844318479_)
                                                 (if (gx#stx-pair?
                                                      _g1844318479_)
                                                     (let ((_e1844618482_
                                                            (gx#syntax-e
                                                             _g1844318479_)))
                                                       (let ((_hd1844718486_
                                                              (##car _e1844618482_))
                                                             (_tl1844818489_
                                                              (##cdr _e1844618482_)))
                                                         (if (gx#stx-pair/null?
                                                              _hd1844718486_)
                                                             (let ((_g41330_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _hd1844718486_ '0)))
                       (begin
                         (let ((_g41331_
                                (if (##values? _g41330_)
                                    (##vector-length _g41330_)
                                    1)))
                           (if (not (##fx= _g41331_ 2))
                               (error "Context expects 2 values" _g41331_)))
                         (let ((_target1844918492_ (##vector-ref _g41330_ 0))
                               (_tl1845118495_ (##vector-ref _g41330_ 1)))
                           (if (gx#stx-null? _tl1845118495_)
                               (letrec ((_loop1845218498_
                                         (lambda (_hd1845018502_
                                                  _super1845618505_)
                                           (if (gx#stx-pair? _hd1845018502_)
                                               (let ((_e1845318508_
                                                      (gx#syntax-e
                                                       _hd1845018502_)))
                                                 (let ((_lp-hd1845418512_
                                                        (##car _e1845318508_))
                                                       (_lp-tl1845518515_
                                                        (##cdr _e1845318508_)))
                                                   (_loop1845218498_
                                                    _lp-tl1845518515_
                                                    (cons _lp-hd1845418512_
                                                          _super1845618505_))))
                                               (let ((_super1845718518_
                                                      (reverse _super1845618505_)))
                                                 (if (gx#stx-pair?
                                                      _tl1844818489_)
                                                     (let ((_e1845818522_
                                                            (gx#syntax-e
                                                             _tl1844818489_)))
                                                       (let ((_hd1845918526_
                                                              (##car _e1845818522_))
                                                             (_tl1846018529_
                                                              (##cdr _e1845818522_)))
                                                         (if (gx#stx-pair/null?
                                                              _hd1845918526_)
                                                             (let ((_g41332_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _hd1845918526_ '0)))
                       (begin
                         (let ((_g41333_
                                (if (##values? _g41332_)
                                    (##vector-length _g41332_)
                                    1)))
                           (if (not (##fx= _g41333_ 2))
                               (error "Context expects 2 values" _g41333_)))
                         (let ((_target1846118532_ (##vector-ref _g41332_ 0))
                               (_tl1846318535_ (##vector-ref _g41332_ 1)))
                           (if (gx#stx-null? _tl1846318535_)
                               (letrec ((_loop1846418538_
                                         (lambda (_hd1846218542_
                                                  _slot1846818545_)
                                           (if (gx#stx-pair? _hd1846218542_)
                                               (let ((_e1846518548_
                                                      (gx#syntax-e
                                                       _hd1846218542_)))
                                                 (let ((_lp-hd1846618552_
                                                        (##car _e1846518548_))
                                                       (_lp-tl1846718555_
                                                        (##cdr _e1846518548_)))
                                                   (_loop1846418538_
                                                    _lp-tl1846718555_
                                                    (cons _lp-hd1846618552_
                                                          _slot1846818545_))))
                                               (let ((_slot1846918558_
                                                      (reverse _slot1846818545_)))
                                                 (if (gx#stx-null?
                                                      _tl1846018529_)
                                                     ((lambda (_L18562_
                                                               _L18564_)
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'make-class-type)
                        (cons (cons (gx#datum->syntax '#f 'quote)
                                    (cons _L17612_ '()))
                              (cons (cons (gx#datum->syntax '#f '@list)
                                          (foldr (lambda (_g1858618591_
                                                          _g1858718594_)
                                                   (cons _g1858618591_
                                                         _g1858718594_))
                                                 '()
                                                 _L18564_))
                                    (cons (cons (gx#datum->syntax '#f 'quote)
                                                (cons (foldr (lambda (_g1858818597_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1858918600_)
                       (cons _g1858818597_ _g1858918600_))
                     '()
                     _L18562_)
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons _L17640_ '()))
                                                (cons _L17668_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons _L17696_ '()))
                    '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              _slot1846918558_
              _super1845718518_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1844218475_
                                                      _g1844318479_)))))))
                                 (_loop1846418538_ _target1846118532_ '()))
                               (_g1844218475_ _g1844318479_)))))
                     (_g1844218475_ _g1844318479_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1844218475_
                                                      _g1844318479_)))))))
                                 (_loop1845218498_ _target1844918492_ '()))
                               (_g1844218475_ _g1844318479_)))))
                     (_g1844218475_ _g1844318479_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1844218475_
                                                      _g1844318479_)))))
                                         (_g1844118603_
                                          (list _L17426_
                                                (gx#stx-map
                                                 gx#stx-car
                                                 _els17461_)))))))))
                            _g1768217693_))))
                   (_g1768018607_ (gx#stx-getq 'constructor: _L17422_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1765417665_))))
                                            (_g1765218611_
                                             (let ((_$e18615_
                                                    (gx#stx-getq
                                                     'plist:
                                                     _L17422_)))
                                               (if _$e18615_
                                                   _$e18615_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '@list)
                                                         '())))))))
                                      _g1762617637_))))
                             (_g1762418619_
                              (let ((_$e18623_ (gx#stx-getq 'name: _L17422_)))
                                (if _$e18623_ _$e18623_ _L17427_))))))
                       _g1759817609_))))
              (_g1759618627_
               (let ((_$e18631_ (gx#stx-getq 'id: _L17422_)))
                 (if _$e18631_
                     _$e18631_
                     (if (gx#module-context? (gx#current-expander-context))
                         (_module-type-id17336_ _L17427_)
                         (gx#genident _L17427_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1748817556_
                                                _hd1748517546_
                                                _hd1748217536_
                                                _hd1747917526_
                                                _hd1747617516_
                                                _hd1747317506_)
                                               (_g1746417495_ _g1746517499_))))
                                       (_g1746417495_ _g1746517499_))))
                               (_g1746417495_ _g1746517499_))))
                       (_g1746417495_ _g1746517499_))))
               (_g1746417495_ _g1746517499_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1746417495_ _g1746517499_))))
                                       (_g1746417495_ _g1746517499_)))))
                           (_g1746318635_
                            (if _struct?17328_
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
                         (_g1733817365_ _g1733917369_)))
                   _tl1735917419_
                   _hd1735817416_
                   _hd1735517406_
                   _hd1735217396_
                   _hd1734917386_)))
              (_g1733817365_ _g1733917369_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1733817365_ _g1733917369_))))
                                      (_g1733817365_ _g1733917369_))))
                              (_g1733817365_ _g1733917369_))))
                      (_g1733817365_ _g1733917369_)))))
          (_g1733718639_ _stx17326_)))))
  (define |gerbil/core$<MOP>$<MOP:1>[:0:]#defstruct-type|
    (lambda (_stx18939_)
      (|gerbil/core$<MOP>$<MOP:1>[1]#generate-typedef| _stx18939_ '#t)))
  (define |gerbil/core$<MOP>$<MOP:1>[:0:]#defclass-type|
    (lambda (_stx18942_)
      (|gerbil/core$<MOP>$<MOP:1>[1]#generate-typedef| _stx18942_ '#f))))
