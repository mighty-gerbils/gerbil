(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx296819_)
      (let* ((_g296823296841_
              (lambda (_g296824296837_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g296824296837_))))
             (_g296822296896_
              (lambda (_g296824296845_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g296824296845_))
                    (let ((_e296829296848_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g296824296845_))))
                      (let ((_hd296828296852_
                             (let ()
                               (declare (not safe))
                               (##car _e296829296848_)))
                            (_tl296827296855_
                             (let ()
                               (declare (not safe))
                               (##cdr _e296829296848_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl296827296855_))
                            (let ((_e296832296858_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl296827296855_))))
                              (let ((_hd296831296862_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e296832296858_)))
                                    (_tl296830296865_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e296832296858_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl296830296865_))
                                    (let ((_e296835296868_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl296830296865_))))
                                      (let ((_hd296834296872_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e296835296868_)))
                                            (_tl296833296875_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e296835296868_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl296833296875_))
                                            ((lambda (_L296878_ _L296880_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _L296880_))
                                                   (let ((__tmp304910
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp304905
                                                          (let ((__tmp304907
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp304909
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp304908
                                (let ()
                                  (declare (not safe))
                                  (cons _L296880_ '()))))
                           (declare (not safe))
                           (cons __tmp304909 __tmp304908)))
                        (__tmp304906
                         (let () (declare (not safe)) (cons _L296878_ '()))))
                    (declare (not safe))
                    (cons __tmp304907 __tmp304906))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp304910
                                                           __tmp304905))
                                                   (_g296823296841_
                                                    _g296824296845_)))
                                             _hd296834296872_
                                             _hd296831296862_)
                                            (_g296823296841_
                                             _g296824296845_))))
                                    (_g296823296841_ _g296824296845_))))
                            (_g296823296841_ _g296824296845_))))
                    (_g296823296841_ _g296824296845_)))))
        (_g296822296896_ _$stx296819_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx296900_)
      (let* ((_g296904296933_
              (lambda (_g296905296929_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g296905296929_))))
             (_g296903297033_
              (lambda (_g296905296937_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g296905296937_))
                    (let ((_e296910296940_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g296905296937_))))
                      (let ((_hd296909296944_
                             (let ()
                               (declare (not safe))
                               (##car _e296910296940_)))
                            (_tl296908296947_
                             (let ()
                               (declare (not safe))
                               (##cdr _e296910296940_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl296908296947_))
                            (let ((_g304911_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl296908296947_
                                      '0))))
                              (begin
                                (let ((_g304912_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g304911_)
                                             (##vector-length _g304911_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g304912_ 2)))
                                      (error "Context expects 2 values"
                                             _g304912_)))
                                (let ((_target296911296950_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g304911_ 0)))
                                      (_tl296913296953_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g304911_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl296913296953_))
                                      (letrec ((_loop296914296956_
                                                (lambda (_hd296912296960_
                                                         _type296918296963_
                                                         _symbol296919296965_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd296912296960_))
                                                      (let ((_e296915296968_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd296912296960_))))
                (let ((_lp-hd296916296972_
                       (let () (declare (not safe)) (##car _e296915296968_)))
                      (_lp-tl296917296975_
                       (let () (declare (not safe)) (##cdr _e296915296968_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd296916296972_))
                      (let ((_e296924296978_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd296916296972_))))
                        (let ((_hd296923296982_
                               (let ()
                                 (declare (not safe))
                                 (##car _e296924296978_)))
                              (_tl296922296985_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e296924296978_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl296922296985_))
                              (let ((_e296927296988_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl296922296985_))))
                                (let ((_hd296926296992_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e296927296988_)))
                                      (_tl296925296995_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e296927296988_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl296925296995_))
                                      (_loop296914296956_
                                       _lp-tl296917296975_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd296926296992_
                                               _type296918296963_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd296923296982_
                                               _symbol296919296965_)))
                                      (_g296904296933_ _g296905296937_))))
                              (_g296904296933_ _g296905296937_))))
                      (_g296904296933_ _g296905296937_))))
              (let ((_type296920296998_ (reverse _type296918296963_))
                    (_symbol296921297001_ (reverse _symbol296919296965_)))
                ((lambda (_L297004_ _L297006_)
                   (let ((__tmp304919
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp304913
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L297004_
                               _L297006_))
                            (let ((__tmp304914
                                   (lambda (_g297021297025_
                                            _g297022297028_
                                            _g297023297030_)
                                     (let ((__tmp304915
                                            (let ((__tmp304918
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp304916
                                                   (let ((__tmp304917
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g297021297025_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g297022297028_
                                                           __tmp304917))))
                                              (declare (not safe))
                                              (cons __tmp304918 __tmp304916))))
                                       (declare (not safe))
                                       (cons __tmp304915 _g297023297030_)))))
                              (declare (not safe))
                              (foldr2 __tmp304914 '() _L297004_ _L297006_)))))
                     (declare (not safe))
                     (cons __tmp304919 __tmp304913)))
                 _type296920296998_
                 _symbol296921297001_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop296914296956_
                                         _target296911296950_
                                         '()
                                         '()))
                                      (_g296904296933_ _g296905296937_)))))
                            (_g296904296933_ _g296905296937_))))
                    (_g296904296933_ _g296905296937_)))))
        (_g296903297033_ _$stx296900_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx297038_)
      (let* ((___stx304470304471_ _$stx297038_)
             (_g297043297085_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx304470304471_)))))
        (let ((___kont304473304474_
               (lambda (_L297213_ _L297215_ _L297216_ _L297217_)
                 (let ((__tmp304933
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp304920
                        (let ((__tmp304930
                               (let ((__tmp304932
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp304931
                                      (let ()
                                        (declare (not safe))
                                        (cons _L297217_ '()))))
                                 (declare (not safe))
                                 (cons __tmp304932 __tmp304931)))
                              (__tmp304921
                               (let ((__tmp304927
                                      (let ((__tmp304929
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp304928
                                             (let ()
                                               (declare (not safe))
                                               (cons _L297216_ '()))))
                                        (declare (not safe))
                                        (cons __tmp304929 __tmp304928)))
                                     (__tmp304922
                                      (let ((__tmp304924
                                             (let ((__tmp304926
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp304925
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L297215_ '()))))
                                               (declare (not safe))
                                               (cons __tmp304926 __tmp304925)))
                                            (__tmp304923
                                             (let ()
                                               (declare (not safe))
                                               (cons _L297213_ '()))))
                                        (declare (not safe))
                                        (cons __tmp304924 __tmp304923))))
                                 (declare (not safe))
                                 (cons __tmp304927 __tmp304922))))
                          (declare (not safe))
                          (cons __tmp304930 __tmp304921))))
                   (declare (not safe))
                   (cons __tmp304933 __tmp304920))))
              (___kont304475304476_
               (lambda (_L297132_ _L297134_ _L297135_ _L297136_)
                 (let ((__tmp304934
                        (let ((__tmp304935
                               (let ((__tmp304936
                                      (let ((__tmp304937
                                             (let ((__tmp304938
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp304938 '()))))
                                        (declare (not safe))
                                        (cons _L297132_ __tmp304937))))
                                 (declare (not safe))
                                 (cons _L297134_ __tmp304936))))
                          (declare (not safe))
                          (cons _L297135_ __tmp304935))))
                   (declare (not safe))
                   (cons _L297136_ __tmp304934)))))
          (let ((___match304509304510_
                 (lambda (_e297051297163_
                          _hd297050297167_
                          _tl297049297170_
                          _e297054297173_
                          _hd297053297177_
                          _tl297052297180_
                          _e297057297183_
                          _hd297056297187_
                          _tl297055297190_
                          _e297060297193_
                          _hd297059297197_
                          _tl297058297200_
                          _e297063297203_
                          _hd297062297207_
                          _tl297061297210_)
                   (let ((_L297213_ _hd297062297207_)
                         (_L297215_ _hd297059297197_)
                         (_L297216_ _hd297056297187_)
                         (_L297217_ _hd297053297177_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L297217_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L297216_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L297215_)))
                         (___kont304473304474_
                          _L297213_
                          _L297215_
                          _L297216_
                          _L297217_)
                         (let () (declare (not safe)) (_g297043297085_)))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx304470304471_))
                (let ((_e297051297163_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx304470304471_))))
                  (let ((_tl297049297170_
                         (let () (declare (not safe)) (##cdr _e297051297163_)))
                        (_hd297050297167_
                         (let ()
                           (declare (not safe))
                           (##car _e297051297163_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl297049297170_))
                        (let ((_e297054297173_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl297049297170_))))
                          (let ((_tl297052297180_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e297054297173_)))
                                (_hd297053297177_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e297054297173_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl297052297180_))
                                (let ((_e297057297183_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl297052297180_))))
                                  (let ((_tl297055297190_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e297057297183_)))
                                        (_hd297056297187_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e297057297183_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl297055297190_))
                                        (let ((_e297060297193_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl297055297190_))))
                                          (let ((_tl297058297200_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e297060297193_)))
                                                (_hd297059297197_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e297060297193_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl297058297200_))
                                                (let ((_e297063297203_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl297058297200_))))
                                                  (let ((_tl297061297210_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e297063297203_)))
                                                        (_hd297062297207_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e297063297203_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl297061297210_))
                                                        (___match304509304510_
                                                         _e297051297163_
                                                         _hd297050297167_
                                                         _tl297049297170_
                                                         _e297054297173_
                                                         _hd297053297177_
                                                         _tl297052297180_
                                                         _e297057297183_
                                                         _hd297056297187_
                                                         _tl297055297190_
                                                         _e297060297193_
                                                         _hd297059297197_
                                                         _tl297058297200_
                                                         _e297063297203_
                                                         _hd297062297207_
                                                         _tl297061297210_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g297043297085_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl297058297200_))
                                                    (___kont304475304476_
                                                     _hd297059297197_
                                                     _hd297056297187_
                                                     _hd297053297177_
                                                     _hd297050297167_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g297043297085_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g297043297085_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g297043297085_)))))
                        (let () (declare (not safe)) (_g297043297085_)))))
                (let () (declare (not safe)) (_g297043297085_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx297242_)
      (let* ((_g297246297281_
              (lambda (_g297247297277_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g297247297277_))))
             (_g297245297400_
              (lambda (_g297247297285_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g297247297285_))
                    (let ((_e297253297288_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g297247297285_))))
                      (let ((_hd297252297292_
                             (let ()
                               (declare (not safe))
                               (##car _e297253297288_)))
                            (_tl297251297295_
                             (let ()
                               (declare (not safe))
                               (##cdr _e297253297288_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl297251297295_))
                            (let ((_g304939_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl297251297295_
                                      '0))))
                              (begin
                                (let ((_g304940_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g304939_)
                                             (##vector-length _g304939_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g304940_ 2)))
                                      (error "Context expects 2 values"
                                             _g304940_)))
                                (let ((_target297254297298_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g304939_ 0)))
                                      (_tl297256297301_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g304939_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl297256297301_))
                                      (letrec ((_loop297257297304_
                                                (lambda (_hd297255297308_
                                                         _symbol297261297311_
                                                         _method297262297313_
                                                         _type-t297263297315_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd297255297308_))
                                                      (let ((_e297258297318_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd297255297308_))))
                (let ((_lp-hd297259297322_
                       (let () (declare (not safe)) (##car _e297258297318_)))
                      (_lp-tl297260297325_
                       (let () (declare (not safe)) (##cdr _e297258297318_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd297259297322_))
                      (let ((_e297269297328_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd297259297322_))))
                        (let ((_hd297268297332_
                               (let ()
                                 (declare (not safe))
                                 (##car _e297269297328_)))
                              (_tl297267297335_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e297269297328_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl297267297335_))
                              (let ((_e297272297338_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl297267297335_))))
                                (let ((_hd297271297342_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e297272297338_)))
                                      (_tl297270297345_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e297272297338_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl297270297345_))
                                      (let ((_e297275297348_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl297270297345_))))
                                        (let ((_hd297274297352_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e297275297348_)))
                                              (_tl297273297355_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e297275297348_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl297273297355_))
                                              (_loop297257297304_
                                               _lp-tl297260297325_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd297274297352_
                                                       _symbol297261297311_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd297271297342_
                                                       _method297262297313_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd297268297332_
                                                       _type-t297263297315_)))
                                              (_g297246297281_
                                               _g297247297285_))))
                                      (_g297246297281_ _g297247297285_))))
                              (_g297246297281_ _g297247297285_))))
                      (_g297246297281_ _g297247297285_))))
              (let ((_symbol297264297358_ (reverse _symbol297261297311_))
                    (_method297265297361_ (reverse _method297262297313_))
                    (_type-t297266297363_ (reverse _type-t297263297315_)))
                ((lambda (_L297366_ _L297368_ _L297369_)
                   (let ((__tmp304948
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp304941
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L297366_
                               _L297368_
                               _L297369_))
                            (let ((__tmp304942
                                   (lambda (_g297385297390_
                                            _g297386297393_
                                            _g297387297395_
                                            _g297388297397_)
                                     (let ((__tmp304943
                                            (let ((__tmp304947
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp304944
                                                   (let ((__tmp304945
                                                          (let ((__tmp304946
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g297385297390_ '()))))
                    (declare (not safe))
                    (cons _g297386297393_ __tmp304946))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g297387297395_
                                                           __tmp304945))))
                                              (declare (not safe))
                                              (cons __tmp304947 __tmp304944))))
                                       (declare (not safe))
                                       (cons __tmp304943 _g297388297397_)))))
                              (declare (not safe))
                              (foldr* __tmp304942
                                      '()
                                      _L297366_
                                      _L297368_
                                      _L297369_)))))
                     (declare (not safe))
                     (cons __tmp304948 __tmp304941)))
                 _symbol297264297358_
                 _method297265297361_
                 _type-t297266297363_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop297257297304_
                                         _target297254297298_
                                         '()
                                         '()
                                         '()))
                                      (_g297246297281_ _g297247297285_)))))
                            (_g297246297281_ _g297247297285_))))
                    (_g297246297281_ _g297247297285_)))))
        (_g297245297400_ _$stx297242_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx297405_)
      (let* ((_g297409297442_
              (lambda (_g297410297438_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g297410297438_))))
             (_g297408297556_
              (lambda (_g297410297446_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g297410297446_))
                    (let ((_e297416297449_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g297410297446_))))
                      (let ((_hd297415297453_
                             (let ()
                               (declare (not safe))
                               (##car _e297416297449_)))
                            (_tl297414297456_
                             (let ()
                               (declare (not safe))
                               (##cdr _e297416297449_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl297414297456_))
                            (let ((_e297419297459_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl297414297456_))))
                              (let ((_hd297418297463_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e297419297459_)))
                                    (_tl297417297466_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e297419297459_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl297417297466_))
                                    (let ((_g304949_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl297417297466_
                                              '0))))
                                      (begin
                                        (let ((_g304950_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g304949_)
                                                     (##vector-length
                                                      _g304949_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g304950_ 2)))
                                              (error "Context expects 2 values"
                                                     _g304950_)))
                                        (let ((_target297420297469_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g304949_ 0)))
                                              (_tl297422297472_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g304949_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl297422297472_))
                                              (letrec ((_loop297423297475_
                                                        (lambda (_hd297421297479_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol297427297482_
                         _method297428297484_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd297421297479_))
                      (let ((_e297424297487_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd297421297479_))))
                        (let ((_lp-hd297425297491_
                               (let ()
                                 (declare (not safe))
                                 (##car _e297424297487_)))
                              (_lp-tl297426297494_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e297424297487_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd297425297491_))
                              (let ((_e297433297497_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd297425297491_))))
                                (let ((_hd297432297501_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e297433297497_)))
                                      (_tl297431297504_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e297433297497_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl297431297504_))
                                      (let ((_e297436297507_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl297431297504_))))
                                        (let ((_hd297435297511_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e297436297507_)))
                                              (_tl297434297514_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e297436297507_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl297434297514_))
                                              (_loop297423297475_
                                               _lp-tl297426297494_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd297435297511_
                                                       _symbol297427297482_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd297432297501_
                                                       _method297428297484_)))
                                              (_g297409297442_
                                               _g297410297446_))))
                                      (_g297409297442_ _g297410297446_))))
                              (_g297409297442_ _g297410297446_))))
                      (let ((_symbol297429297517_
                             (reverse _symbol297427297482_))
                            (_method297430297520_
                             (reverse _method297428297484_)))
                        ((lambda (_L297523_ _L297525_ _L297526_)
                           (let ((__tmp304958
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp304951
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L297523_
                                       _L297525_))
                                    (let ((__tmp304952
                                           (lambda (_g297544297548_
                                                    _g297545297551_
                                                    _g297546297553_)
                                             (let ((__tmp304953
                                                    (let ((__tmp304957
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp304954
                                                           (let ((__tmp304955
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp304956
                                 (let ()
                                   (declare (not safe))
                                   (cons _g297544297548_ '()))))
                            (declare (not safe))
                            (cons _g297545297551_ __tmp304956))))
                     (declare (not safe))
                     (cons _L297526_ __tmp304955))))
              (declare (not safe))
              (cons __tmp304957 __tmp304954))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp304953
                                                     _g297546297553_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp304952
                                              '()
                                              _L297523_
                                              _L297525_)))))
                             (declare (not safe))
                             (cons __tmp304958 __tmp304951)))
                         _symbol297429297517_
                         _method297430297520_
                         _hd297418297463_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop297423297475_
                                                 _target297420297469_
                                                 '()
                                                 '()))
                                              (_g297409297442_
                                               _g297410297446_)))))
                                    (_g297409297442_ _g297410297446_))))
                            (_g297409297442_ _g297410297446_))))
                    (_g297409297442_ _g297410297446_)))))
        (_g297408297556_ _$stx297405_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx297561_)
      (let* ((_g297565297579_
              (lambda (_g297566297575_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g297566297575_))))
             (_g297564297620_
              (lambda (_g297566297583_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g297566297583_))
                    (let ((_e297570297586_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g297566297583_))))
                      (let ((_hd297569297590_
                             (let ()
                               (declare (not safe))
                               (##car _e297570297586_)))
                            (_tl297568297593_
                             (let ()
                               (declare (not safe))
                               (##cdr _e297570297586_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl297568297593_))
                            (let ((_e297573297596_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl297568297593_))))
                              (let ((_hd297572297600_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e297573297596_)))
                                    (_tl297571297603_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e297573297596_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl297571297603_))
                                    ((lambda (_L297606_)
                                       (let ((__tmp304963
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp304959
                                              (let ((__tmp304960
                                                     (let ((__tmp304962
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp304961
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L297606_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp304962 __tmp304961))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp304960 '()))))
                                         (declare (not safe))
                                         (cons __tmp304963 __tmp304959)))
                                     _hd297572297600_)
                                    (_g297565297579_ _g297566297583_))))
                            (_g297565297579_ _g297566297583_))))
                    (_g297565297579_ _g297566297583_)))))
        (_g297564297620_ _$stx297561_))))
  (define |gxc[:0:]#@class|
    (lambda (_$stx297624_)
      (let* ((_g297628297674_
              (lambda (_g297629297670_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g297629297670_))))
             (_g297627297827_
              (lambda (_g297629297678_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g297629297678_))
                    (let ((_e297641297681_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g297629297678_))))
                      (let ((_hd297640297685_
                             (let ()
                               (declare (not safe))
                               (##car _e297641297681_)))
                            (_tl297639297688_
                             (let ()
                               (declare (not safe))
                               (##cdr _e297641297681_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl297639297688_))
                            (let ((_e297644297691_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl297639297688_))))
                              (let ((_hd297643297695_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e297644297691_)))
                                    (_tl297642297698_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e297644297691_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl297642297698_))
                                    (let ((_e297647297701_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl297642297698_))))
                                      (let ((_hd297646297705_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e297647297701_)))
                                            (_tl297645297708_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e297647297701_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl297645297708_))
                                            (let ((_e297650297711_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl297645297708_))))
                                              (let ((_hd297649297715_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e297650297711_)))
                                                    (_tl297648297718_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e297650297711_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl297648297718_))
                                                    (let ((_e297653297721_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl297648297718_))))
                                                      (let ((_hd297652297725_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e297653297721_)))
                    (_tl297651297728_
                     (let () (declare (not safe)) (##cdr _e297653297721_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl297651297728_))
                    (let ((_e297656297731_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl297651297728_))))
                      (let ((_hd297655297735_
                             (let ()
                               (declare (not safe))
                               (##car _e297656297731_)))
                            (_tl297654297738_
                             (let ()
                               (declare (not safe))
                               (##cdr _e297656297731_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl297654297738_))
                            (let ((_e297659297741_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl297654297738_))))
                              (let ((_hd297658297745_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e297659297741_)))
                                    (_tl297657297748_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e297659297741_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl297657297748_))
                                    (let ((_e297662297751_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl297657297748_))))
                                      (let ((_hd297661297755_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e297662297751_)))
                                            (_tl297660297758_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e297662297751_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl297660297758_))
                                            (let ((_e297665297761_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl297660297758_))))
                                              (let ((_hd297664297765_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e297665297761_)))
                                                    (_tl297663297768_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e297665297761_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl297663297768_))
                                                    (let ((_e297668297771_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl297663297768_))))
                                                      (let ((_hd297667297775_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e297668297771_)))
                    (_tl297666297778_
                     (let () (declare (not safe)) (##cdr _e297668297771_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl297666297778_))
                    ((lambda (_L297781_
                              _L297783_
                              _L297784_
                              _L297785_
                              _L297786_
                              _L297787_
                              _L297788_
                              _L297789_
                              _L297790_)
                       (let ((__tmp305000
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'make-!class)))
                             (__tmp304964
                              (let ((__tmp304997
                                     (let ((__tmp304999
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'quote)))
                                           (__tmp304998
                                            (let ()
                                              (declare (not safe))
                                              (cons _L297790_ '()))))
                                       (declare (not safe))
                                       (cons __tmp304999 __tmp304998)))
                                    (__tmp304965
                                     (let ((__tmp304994
                                            (let ((__tmp304996
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote)))
                                                  (__tmp304995
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L297789_ '()))))
                                              (declare (not safe))
                                              (cons __tmp304996 __tmp304995)))
                                           (__tmp304966
                                            (let ((__tmp304991
                                                   (let ((__tmp304993
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'quote)))
                                                         (__tmp304992
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L297788_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp304993
                                                           __tmp304992)))
                                                  (__tmp304967
                                                   (let ((__tmp304988
                                                          (let ((__tmp304990
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote)))
                        (__tmp304989
                         (let () (declare (not safe)) (cons _L297787_ '()))))
                    (declare (not safe))
                    (cons __tmp304990 __tmp304989)))
                 (__tmp304968
                  (let ((__tmp304985
                         (let ((__tmp304987
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp304986
                                (let ()
                                  (declare (not safe))
                                  (cons _L297786_ '()))))
                           (declare (not safe))
                           (cons __tmp304987 __tmp304986)))
                        (__tmp304969
                         (let ((__tmp304982
                                (let ((__tmp304984
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote)))
                                      (__tmp304983
                                       (let ()
                                         (declare (not safe))
                                         (cons _L297785_ '()))))
                                  (declare (not safe))
                                  (cons __tmp304984 __tmp304983)))
                               (__tmp304970
                                (let ((__tmp304979
                                       (let ((__tmp304981
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'quote)))
                                             (__tmp304980
                                              (let ()
                                                (declare (not safe))
                                                (cons _L297784_ '()))))
                                         (declare (not safe))
                                         (cons __tmp304981 __tmp304980)))
                                      (__tmp304971
                                       (let ((__tmp304976
                                              (let ((__tmp304978
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'quote)))
                                                    (__tmp304977
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L297783_ '()))))
                                                (declare (not safe))
                                                (cons __tmp304978
                                                      __tmp304977)))
                                             (__tmp304972
                                              (let ((__tmp304973
                                                     (let ((__tmp304975
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp304974
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L297781_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp304975 __tmp304974))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp304973 '()))))
                                         (declare (not safe))
                                         (cons __tmp304976 __tmp304972))))
                                  (declare (not safe))
                                  (cons __tmp304979 __tmp304971))))
                           (declare (not safe))
                           (cons __tmp304982 __tmp304970))))
                    (declare (not safe))
                    (cons __tmp304985 __tmp304969))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp304988
                                                           __tmp304968))))
                                              (declare (not safe))
                                              (cons __tmp304991 __tmp304967))))
                                       (declare (not safe))
                                       (cons __tmp304994 __tmp304966))))
                                (declare (not safe))
                                (cons __tmp304997 __tmp304965))))
                         (declare (not safe))
                         (cons __tmp305000 __tmp304964)))
                     _hd297667297775_
                     _hd297664297765_
                     _hd297661297755_
                     _hd297658297745_
                     _hd297655297735_
                     _hd297652297725_
                     _hd297649297715_
                     _hd297646297705_
                     _hd297643297695_)
                    (_g297628297674_ _g297629297678_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g297628297674_
                                                     _g297629297678_))))
                                            (_g297628297674_
                                             _g297629297678_))))
                                    (_g297628297674_ _g297629297678_))))
                            (_g297628297674_ _g297629297678_))))
                    (_g297628297674_ _g297629297678_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g297628297674_
                                                     _g297629297678_))))
                                            (_g297628297674_
                                             _g297629297678_))))
                                    (_g297628297674_ _g297629297678_))))
                            (_g297628297674_ _g297629297678_))))
                    (_g297628297674_ _g297629297678_)))))
        (_g297627297827_ _$stx297624_))))
  (define |gxc[:0:]#@predicate|
    (lambda (_$stx297831_)
      (let* ((_g297835297849_
              (lambda (_g297836297845_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g297836297845_))))
             (_g297834297890_
              (lambda (_g297836297853_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g297836297853_))
                    (let ((_e297840297856_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g297836297853_))))
                      (let ((_hd297839297860_
                             (let ()
                               (declare (not safe))
                               (##car _e297840297856_)))
                            (_tl297838297863_
                             (let ()
                               (declare (not safe))
                               (##cdr _e297840297856_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl297838297863_))
                            (let ((_e297843297866_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl297838297863_))))
                              (let ((_hd297842297870_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e297843297866_)))
                                    (_tl297841297873_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e297843297866_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl297841297873_))
                                    ((lambda (_L297876_)
                                       (let ((__tmp305005
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!predicate)))
                                             (__tmp305001
                                              (let ((__tmp305002
                                                     (let ((__tmp305004
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp305003
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L297876_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp305004 __tmp305003))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp305002 '()))))
                                         (declare (not safe))
                                         (cons __tmp305005 __tmp305001)))
                                     _hd297842297870_)
                                    (_g297835297849_ _g297836297853_))))
                            (_g297835297849_ _g297836297853_))))
                    (_g297835297849_ _g297836297853_)))))
        (_g297834297890_ _$stx297831_))))
  (define |gxc[:0:]#@constructor|
    (lambda (_$stx297894_)
      (let* ((_g297898297912_
              (lambda (_g297899297908_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g297899297908_))))
             (_g297897297953_
              (lambda (_g297899297916_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g297899297916_))
                    (let ((_e297903297919_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g297899297916_))))
                      (let ((_hd297902297923_
                             (let ()
                               (declare (not safe))
                               (##car _e297903297919_)))
                            (_tl297901297926_
                             (let ()
                               (declare (not safe))
                               (##cdr _e297903297919_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl297901297926_))
                            (let ((_e297906297929_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl297901297926_))))
                              (let ((_hd297905297933_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e297906297929_)))
                                    (_tl297904297936_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e297906297929_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl297904297936_))
                                    ((lambda (_L297939_)
                                       (let ((__tmp305010
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!constructor)))
                                             (__tmp305006
                                              (let ((__tmp305007
                                                     (let ((__tmp305009
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp305008
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L297939_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp305009 __tmp305008))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp305007 '()))))
                                         (declare (not safe))
                                         (cons __tmp305010 __tmp305006)))
                                     _hd297905297933_)
                                    (_g297898297912_ _g297899297916_))))
                            (_g297898297912_ _g297899297916_))))
                    (_g297898297912_ _g297899297916_)))))
        (_g297897297953_ _$stx297894_))))
  (define |gxc[:0:]#@accessor|
    (lambda (_$stx297957_)
      (let* ((_g297961297983_
              (lambda (_g297962297979_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g297962297979_))))
             (_g297960298052_
              (lambda (_g297962297987_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g297962297987_))
                    (let ((_e297968297990_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g297962297987_))))
                      (let ((_hd297967297994_
                             (let ()
                               (declare (not safe))
                               (##car _e297968297990_)))
                            (_tl297966297997_
                             (let ()
                               (declare (not safe))
                               (##cdr _e297968297990_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl297966297997_))
                            (let ((_e297971298000_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl297966297997_))))
                              (let ((_hd297970298004_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e297971298000_)))
                                    (_tl297969298007_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e297971298000_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl297969298007_))
                                    (let ((_e297974298010_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl297969298007_))))
                                      (let ((_hd297973298014_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e297974298010_)))
                                            (_tl297972298017_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e297974298010_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl297972298017_))
                                            (let ((_e297977298020_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl297972298017_))))
                                              (let ((_hd297976298024_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e297977298020_)))
                                                    (_tl297975298027_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e297977298020_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl297975298027_))
                                                    ((lambda (_L298030_
                                                              _L298032_
                                                              _L298033_)
                                                       (let ((__tmp305020
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!accessor)))
                     (__tmp305011
                      (let ((__tmp305017
                             (let ((__tmp305019
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp305018
                                    (let ()
                                      (declare (not safe))
                                      (cons _L298033_ '()))))
                               (declare (not safe))
                               (cons __tmp305019 __tmp305018)))
                            (__tmp305012
                             (let ((__tmp305014
                                    (let ((__tmp305016
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp305015
                                           (let ()
                                             (declare (not safe))
                                             (cons _L298032_ '()))))
                                      (declare (not safe))
                                      (cons __tmp305016 __tmp305015)))
                                   (__tmp305013
                                    (let ()
                                      (declare (not safe))
                                      (cons _L298030_ '()))))
                               (declare (not safe))
                               (cons __tmp305014 __tmp305013))))
                        (declare (not safe))
                        (cons __tmp305017 __tmp305012))))
                 (declare (not safe))
                 (cons __tmp305020 __tmp305011)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd297976298024_
                                                     _hd297973298014_
                                                     _hd297970298004_)
                                                    (_g297961297983_
                                                     _g297962297987_))))
                                            (_g297961297983_
                                             _g297962297987_))))
                                    (_g297961297983_ _g297962297987_))))
                            (_g297961297983_ _g297962297987_))))
                    (_g297961297983_ _g297962297987_)))))
        (_g297960298052_ _$stx297957_))))
  (define |gxc[:0:]#@mutator|
    (lambda (_$stx298056_)
      (let* ((_g298060298082_
              (lambda (_g298061298078_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g298061298078_))))
             (_g298059298151_
              (lambda (_g298061298086_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g298061298086_))
                    (let ((_e298067298089_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g298061298086_))))
                      (let ((_hd298066298093_
                             (let ()
                               (declare (not safe))
                               (##car _e298067298089_)))
                            (_tl298065298096_
                             (let ()
                               (declare (not safe))
                               (##cdr _e298067298089_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl298065298096_))
                            (let ((_e298070298099_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl298065298096_))))
                              (let ((_hd298069298103_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e298070298099_)))
                                    (_tl298068298106_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e298070298099_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl298068298106_))
                                    (let ((_e298073298109_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl298068298106_))))
                                      (let ((_hd298072298113_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e298073298109_)))
                                            (_tl298071298116_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e298073298109_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl298071298116_))
                                            (let ((_e298076298119_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl298071298116_))))
                                              (let ((_hd298075298123_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e298076298119_)))
                                                    (_tl298074298126_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e298076298119_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl298074298126_))
                                                    ((lambda (_L298129_
                                                              _L298131_
                                                              _L298132_)
                                                       (let ((__tmp305030
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!mutator)))
                     (__tmp305021
                      (let ((__tmp305027
                             (let ((__tmp305029
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp305028
                                    (let ()
                                      (declare (not safe))
                                      (cons _L298132_ '()))))
                               (declare (not safe))
                               (cons __tmp305029 __tmp305028)))
                            (__tmp305022
                             (let ((__tmp305024
                                    (let ((__tmp305026
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp305025
                                           (let ()
                                             (declare (not safe))
                                             (cons _L298131_ '()))))
                                      (declare (not safe))
                                      (cons __tmp305026 __tmp305025)))
                                   (__tmp305023
                                    (let ()
                                      (declare (not safe))
                                      (cons _L298129_ '()))))
                               (declare (not safe))
                               (cons __tmp305024 __tmp305023))))
                        (declare (not safe))
                        (cons __tmp305027 __tmp305022))))
                 (declare (not safe))
                 (cons __tmp305030 __tmp305021)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd298075298123_
                                                     _hd298072298113_
                                                     _hd298069298103_)
                                                    (_g298060298082_
                                                     _g298061298086_))))
                                            (_g298060298082_
                                             _g298061298086_))))
                                    (_g298060298082_ _g298061298086_))))
                            (_g298060298082_ _g298061298086_))))
                    (_g298060298082_ _g298061298086_)))))
        (_g298059298151_ _$stx298056_))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx298155_)
      (let* ((___stx304538304539_ _$stx298155_)
             (_g298163298231_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx304538304539_)))))
        (let ((___kont304541304542_
               (lambda (_L298509_ _L298511_)
                 (let ((__tmp305046
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp305031
                        (let ((__tmp305042
                               (let ((__tmp305045
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp305043
                                      (let ((__tmp305044
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp305044 '()))))
                                 (declare (not safe))
                                 (cons __tmp305045 __tmp305043)))
                              (__tmp305032
                               (let ((__tmp305039
                                      (let ((__tmp305041
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp305040
                                             (let ()
                                               (declare (not safe))
                                               (cons _L298511_ '()))))
                                        (declare (not safe))
                                        (cons __tmp305041 __tmp305040)))
                                     (__tmp305033
                                      (let ((__tmp305034
                                             (let ((__tmp305035
                                                    (let ((__tmp305036
                                                           (let ((__tmp305038
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp305037
                          (let () (declare (not safe)) (cons _L298509_ '()))))
                     (declare (not safe))
                     (cons __tmp305038 __tmp305037))))
              (declare (not safe))
              (cons __tmp305036 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L298509_ __tmp305035))))
                                        (declare (not safe))
                                        (cons '#f __tmp305034))))
                                 (declare (not safe))
                                 (cons __tmp305039 __tmp305033))))
                          (declare (not safe))
                          (cons __tmp305042 __tmp305032))))
                   (declare (not safe))
                   (cons __tmp305046 __tmp305031))))
              (___kont304543304544_
               (lambda (_L298440_ _L298442_)
                 (let ((__tmp305047
                        (let ((__tmp305048
                               (let ((__tmp305049
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L298440_ __tmp305049))))
                          (declare (not safe))
                          (cons 'primitive: __tmp305048))))
                   (declare (not safe))
                   (cons _L298442_ __tmp305047))))
              (___kont304545304546_
               (lambda (_L298379_ _L298381_)
                 (let ((__tmp305063
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp305050
                        (let ((__tmp305059
                               (let ((__tmp305062
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp305060
                                      (let ((__tmp305061
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp305061 '()))))
                                 (declare (not safe))
                                 (cons __tmp305062 __tmp305060)))
                              (__tmp305051
                               (let ((__tmp305056
                                      (let ((__tmp305058
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp305057
                                             (let ()
                                               (declare (not safe))
                                               (cons _L298381_ '()))))
                                        (declare (not safe))
                                        (cons __tmp305058 __tmp305057)))
                                     (__tmp305052
                                      (let ((__tmp305053
                                             (let ((__tmp305055
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp305054
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L298379_ '()))))
                                               (declare (not safe))
                                               (cons __tmp305055
                                                     __tmp305054))))
                                        (declare (not safe))
                                        (cons __tmp305053 '()))))
                                 (declare (not safe))
                                 (cons __tmp305056 __tmp305052))))
                          (declare (not safe))
                          (cons __tmp305059 __tmp305051))))
                   (declare (not safe))
                   (cons __tmp305063 __tmp305050))))
              (___kont304547304548_
               (lambda (_L298311_ _L298313_)
                 (let ((__tmp305077
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp305064
                        (let ((__tmp305073
                               (let ((__tmp305076
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp305074
                                      (let ((__tmp305075
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp305075 '()))))
                                 (declare (not safe))
                                 (cons __tmp305076 __tmp305074)))
                              (__tmp305065
                               (let ((__tmp305070
                                      (let ((__tmp305072
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp305071
                                             (let ()
                                               (declare (not safe))
                                               (cons _L298313_ '()))))
                                        (declare (not safe))
                                        (cons __tmp305072 __tmp305071)))
                                     (__tmp305066
                                      (let ((__tmp305067
                                             (let ((__tmp305069
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp305068
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L298311_ '()))))
                                               (declare (not safe))
                                               (cons __tmp305069
                                                     __tmp305068))))
                                        (declare (not safe))
                                        (cons __tmp305067 '()))))
                                 (declare (not safe))
                                 (cons __tmp305070 __tmp305066))))
                          (declare (not safe))
                          (cons __tmp305073 __tmp305065))))
                   (declare (not safe))
                   (cons __tmp305077 __tmp305064))))
              (___kont304549304550_
               (lambda (_L298258_ _L298260_)
                 (let ((__tmp305078
                        (let ((__tmp305079
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L298258_ __tmp305079))))
                   (declare (not safe))
                   (cons _L298260_ __tmp305078)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx304538304539_))
              (let ((_e298169298465_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx304538304539_))))
                (let ((_tl298167298472_
                       (let () (declare (not safe)) (##cdr _e298169298465_)))
                      (_hd298168298469_
                       (let () (declare (not safe)) (##car _e298169298465_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl298167298472_))
                      (let ((_e298172298475_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl298167298472_))))
                        (let ((_tl298170298482_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e298172298475_)))
                              (_hd298171298479_
                               (let ()
                                 (declare (not safe))
                                 (##car _e298172298475_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl298170298482_))
                              (let ((_e298175298485_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl298170298482_))))
                                (let ((_tl298173298492_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e298175298485_)))
                                      (_hd298174298489_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e298175298485_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd298174298489_))
                                      (let ((_e298176298495_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd298174298489_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e298176298495_
                                                      'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl298173298492_))
                                                (let ((_e298179298499_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl298173298492_))))
                                                  (let ((_tl298177298506_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e298179298499_)))
                                                        (_hd298178298503_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e298179298499_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl298177298506_))
                                                        (___kont304541304542_
                                                         _hd298178298503_
                                                         _hd298171298479_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd298171298479_))
                                                            (let ((_e298188298426_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd298171298479_))))
                      (declare (not safe))
                      (_g298163298231_))
                    (let () (declare (not safe)) (_g298163298231_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd298171298479_))
                                                    (let ((_e298188298426_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd298171298479_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e298188298426_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl298173298492_))
                      (___kont304543304544_ _hd298174298489_ _hd298168298469_)
                      (let () (declare (not safe)) (_g298163298231_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl298173298492_))
                      (___kont304547304548_ _hd298174298489_ _hd298171298479_)
                      (let () (declare (not safe)) (_g298163298231_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl298173298492_))
                                                        (___kont304547304548_
                                                         _hd298174298489_
                                                         _hd298171298479_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g298163298231_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd298171298479_))
                                                (let ((_e298188298426_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd298171298479_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e298188298426_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl298173298492_))
                                                          (___kont304543304544_
                                                           _hd298174298489_
                                                           _hd298168298469_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl298173298492_))
                      (let ((_e298206298369_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl298173298492_))))
                        (let ((_tl298204298376_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e298206298369_)))
                              (_hd298205298373_
                               (let ()
                                 (declare (not safe))
                                 (##car _e298206298369_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl298204298376_))
                              (___kont304545304546_
                               _hd298205298373_
                               _hd298174298489_)
                              (let ()
                                (declare (not safe))
                                (_g298163298231_)))))
                      (let () (declare (not safe)) (_g298163298231_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl298173298492_))
                  (___kont304547304548_ _hd298174298489_ _hd298171298479_)
                  (let () (declare (not safe)) (_g298163298231_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl298173298492_))
                                                    (___kont304547304548_
                                                     _hd298174298489_
                                                     _hd298171298479_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g298163298231_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd298171298479_))
                                          (let ((_e298188298426_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd298171298479_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e298188298426_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl298173298492_))
                                                    (___kont304543304544_
                                                     _hd298174298489_
                                                     _hd298168298469_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl298173298492_))
                                                        (let ((_e298206298369_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl298173298492_))))
                  (let ((_tl298204298376_
                         (let () (declare (not safe)) (##cdr _e298206298369_)))
                        (_hd298205298373_
                         (let ()
                           (declare (not safe))
                           (##car _e298206298369_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl298204298376_))
                        (___kont304545304546_
                         _hd298205298373_
                         _hd298174298489_)
                        (let () (declare (not safe)) (_g298163298231_)))))
                (let () (declare (not safe)) (_g298163298231_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl298173298492_))
                                                    (___kont304547304548_
                                                     _hd298174298489_
                                                     _hd298171298479_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g298163298231_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl298173298492_))
                                              (___kont304547304548_
                                               _hd298174298489_
                                               _hd298171298479_)
                                              (let ()
                                                (declare (not safe))
                                                (_g298163298231_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd298171298479_))
                                  (let ((_e298188298426_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd298171298479_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl298170298482_))
                                        (___kont304549304550_
                                         _hd298171298479_
                                         _hd298168298469_)
                                        (let ()
                                          (declare (not safe))
                                          (_g298163298231_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl298170298482_))
                                      (___kont304549304550_
                                       _hd298171298479_
                                       _hd298168298469_)
                                      (let ()
                                        (declare (not safe))
                                        (_g298163298231_)))))))
                      (let () (declare (not safe)) (_g298163298231_)))))
              (let () (declare (not safe)) (_g298163298231_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx298533_)
      (let* ((___stx304678304679_ _$stx298533_)
             (_g298538298593_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx304678304679_)))))
        (let ((___kont304681304682_
               (lambda (_L298778_ _L298780_)
                 (let ((__tmp305095
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp305080
                        (let ((__tmp305091
                               (let ((__tmp305094
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp305092
                                      (let ((__tmp305093
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp305093 '()))))
                                 (declare (not safe))
                                 (cons __tmp305094 __tmp305092)))
                              (__tmp305081
                               (let ((__tmp305082
                                      (let ((__tmp305090
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp305083
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L298778_
                                                  _L298780_))
                                               (let ((__tmp305084
                                                      (lambda (_g298797298801_
                                                               _g298798298804_
                                                               _g298799298806_)
                                                        (let ((__tmp305085
                                                               (let ((__tmp305089
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp305086
                              (let ((__tmp305087
                                     (let ((__tmp305088
                                            (let ()
                                              (declare (not safe))
                                              (cons _g298797298801_ '()))))
                                       (declare (not safe))
                                       (cons _g298798298804_ __tmp305088))))
                                (declare (not safe))
                                (cons 'primitive: __tmp305087))))
                         (declare (not safe))
                         (cons __tmp305089 __tmp305086))))
                  (declare (not safe))
                  (cons __tmp305085 _g298799298806_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp305084
                                                         '()
                                                         _L298778_
                                                         _L298780_)))))
                                        (declare (not safe))
                                        (cons __tmp305090 __tmp305083))))
                                 (declare (not safe))
                                 (cons __tmp305082 '()))))
                          (declare (not safe))
                          (cons __tmp305091 __tmp305081))))
                   (declare (not safe))
                   (cons __tmp305095 __tmp305080))))
              (___kont304685304686_
               (lambda (_L298664_ _L298666_)
                 (let ((__tmp305110
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp305096
                        (let ((__tmp305106
                               (let ((__tmp305109
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp305107
                                      (let ((__tmp305108
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp305108 '()))))
                                 (declare (not safe))
                                 (cons __tmp305109 __tmp305107)))
                              (__tmp305097
                               (let ((__tmp305098
                                      (let ((__tmp305105
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp305099
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L298664_
                                                  _L298666_))
                                               (let ((__tmp305100
                                                      (lambda (_g298681298685_
                                                               _g298682298688_
                                                               _g298683298690_)
                                                        (let ((__tmp305101
                                                               (let ((__tmp305104
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp305102
                              (let ((__tmp305103
                                     (let ()
                                       (declare (not safe))
                                       (cons _g298681298685_ '()))))
                                (declare (not safe))
                                (cons _g298682298688_ __tmp305103))))
                         (declare (not safe))
                         (cons __tmp305104 __tmp305102))))
                  (declare (not safe))
                  (cons __tmp305101 _g298683298690_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp305100
                                                         '()
                                                         _L298664_
                                                         _L298666_)))))
                                        (declare (not safe))
                                        (cons __tmp305105 __tmp305099))))
                                 (declare (not safe))
                                 (cons __tmp305098 '()))))
                          (declare (not safe))
                          (cons __tmp305106 __tmp305097))))
                   (declare (not safe))
                   (cons __tmp305110 __tmp305096)))))
          (let* ((___match304729304730_
                  (lambda (_e298570298600_
                           _hd298569298604_
                           _tl298568298607_
                           ___splice304687304688_
                           _target298571298610_
                           _tl298573298613_)
                    (letrec ((_loop298574298616_
                              (lambda (_hd298572298620_
                                       _dispatch298578298623_
                                       _arity298579298625_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd298572298620_))
                                    (let ((_e298575298628_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd298572298620_))))
                                      (let ((_lp-tl298577298635_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e298575298628_)))
                                            (_lp-hd298576298632_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e298575298628_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd298576298632_))
                                            (let ((_e298584298638_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd298576298632_))))
                                              (let ((_tl298582298645_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e298584298638_)))
                                                    (_hd298583298642_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e298584298638_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl298582298645_))
                                                    (let ((_e298587298648_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl298582298645_))))
                                                      (let ((_tl298585298655_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e298587298648_)))
                    (_hd298586298652_
                     (let () (declare (not safe)) (##car _e298587298648_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl298585298655_))
                    (_loop298574298616_
                     _lp-tl298577298635_
                     (let ()
                       (declare (not safe))
                       (cons _hd298586298652_ _dispatch298578298623_))
                     (let ()
                       (declare (not safe))
                       (cons _hd298583298642_ _arity298579298625_)))
                    (let () (declare (not safe)) (_g298538298593_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g298538298593_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g298538298593_)))))
                                    (let ((_arity298581298661_
                                           (reverse _arity298579298625_))
                                          (_dispatch298580298658_
                                           (reverse _dispatch298578298623_)))
                                      (___kont304685304686_
                                       _dispatch298580298658_
                                       _arity298581298661_))))))
                      (_loop298574298616_ _target298571298610_ '() '()))))
                 (___match304721304722_
                  (lambda (_e298570298600_ _hd298569298604_ _tl298568298607_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl298568298607_))
                        (let ((___splice304687304688_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl298568298607_
                                  '0))))
                          (let ((_tl298573298613_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice304687304688_ '1)))
                                (_target298571298610_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice304687304688_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl298573298613_))
                                (___match304729304730_
                                 _e298570298600_
                                 _hd298569298604_
                                 _tl298568298607_
                                 ___splice304687304688_
                                 _target298571298610_
                                 _tl298573298613_)
                                (let ()
                                  (declare (not safe))
                                  (_g298538298593_)))))
                        (let () (declare (not safe)) (_g298538298593_)))))
                 (___match304715304716_
                  (lambda (_e298544298700_
                           _hd298543298704_
                           _tl298542298707_
                           _e298547298710_
                           _hd298546298714_
                           _tl298545298717_
                           _e298548298720_
                           ___splice304683304684_
                           _target298549298724_
                           _tl298551298727_)
                    (letrec ((_loop298552298730_
                              (lambda (_hd298550298734_
                                       _dispatch298556298737_
                                       _arity298557298739_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd298550298734_))
                                    (let ((_e298553298742_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd298550298734_))))
                                      (let ((_lp-tl298555298749_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e298553298742_)))
                                            (_lp-hd298554298746_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e298553298742_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd298554298746_))
                                            (let ((_e298562298752_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd298554298746_))))
                                              (let ((_tl298560298759_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e298562298752_)))
                                                    (_hd298561298756_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e298562298752_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl298560298759_))
                                                    (let ((_e298565298762_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl298560298759_))))
                                                      (let ((_tl298563298769_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e298565298762_)))
                    (_hd298564298766_
                     (let () (declare (not safe)) (##car _e298565298762_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl298563298769_))
                    (_loop298552298730_
                     _lp-tl298555298749_
                     (let ()
                       (declare (not safe))
                       (cons _hd298564298766_ _dispatch298556298737_))
                     (let ()
                       (declare (not safe))
                       (cons _hd298561298756_ _arity298557298739_)))
                    (___match304721304722_
                     _e298544298700_
                     _hd298543298704_
                     _tl298542298707_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match304721304722_
                                                     _e298544298700_
                                                     _hd298543298704_
                                                     _tl298542298707_))))
                                            (___match304721304722_
                                             _e298544298700_
                                             _hd298543298704_
                                             _tl298542298707_))))
                                    (let ((_arity298559298775_
                                           (reverse _arity298557298739_))
                                          (_dispatch298558298772_
                                           (reverse _dispatch298556298737_)))
                                      (___kont304681304682_
                                       _dispatch298558298772_
                                       _arity298559298775_))))))
                      (_loop298552298730_ _target298549298724_ '() '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx304678304679_))
                (let ((_e298544298700_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx304678304679_))))
                  (let ((_tl298542298707_
                         (let () (declare (not safe)) (##cdr _e298544298700_)))
                        (_hd298543298704_
                         (let ()
                           (declare (not safe))
                           (##car _e298544298700_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl298542298707_))
                        (let ((_e298547298710_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl298542298707_))))
                          (let ((_tl298545298717_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e298547298710_)))
                                (_hd298546298714_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e298547298710_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd298546298714_))
                                (let ((_e298548298720_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd298546298714_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e298548298720_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl298545298717_))
                                          (let ((___splice304683304684_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl298545298717_
                                                    '0))))
                                            (let ((_tl298551298727_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice304683304684_
                                                      '1)))
                                                  (_target298549298724_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice304683304684_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl298551298727_))
                                                  (___match304715304716_
                                                   _e298544298700_
                                                   _hd298543298704_
                                                   _tl298542298707_
                                                   _e298547298710_
                                                   _hd298546298714_
                                                   _tl298545298717_
                                                   _e298548298720_
                                                   ___splice304683304684_
                                                   _target298549298724_
                                                   _tl298551298727_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl298542298707_))
                                                      (let ((___splice304687304688_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl298542298707_ '0))))
                (let ((_tl298573298613_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice304687304688_ '1)))
                      (_target298571298610_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice304687304688_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl298573298613_))
                      (___match304729304730_
                       _e298544298700_
                       _hd298543298704_
                       _tl298542298707_
                       ___splice304687304688_
                       _target298571298610_
                       _tl298573298613_)
                      (let () (declare (not safe)) (_g298538298593_)))))
              (let () (declare (not safe)) (_g298538298593_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl298542298707_))
                                              (let ((___splice304687304688_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl298542298707_
                                                        '0))))
                                                (let ((_tl298573298613_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice304687304688_
                                                          '1)))
                                                      (_target298571298610_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice304687304688_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl298573298613_))
                                                      (___match304729304730_
                                                       _e298544298700_
                                                       _hd298543298704_
                                                       _tl298542298707_
                                                       ___splice304687304688_
                                                       _target298571298610_
                                                       _tl298573298613_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g298538298593_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g298538298593_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl298542298707_))
                                          (let ((___splice304687304688_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl298542298707_
                                                    '0))))
                                            (let ((_tl298573298613_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice304687304688_
                                                      '1)))
                                                  (_target298571298610_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice304687304688_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl298573298613_))
                                                  (___match304729304730_
                                                   _e298544298700_
                                                   _hd298543298704_
                                                   _tl298542298707_
                                                   ___splice304687304688_
                                                   _target298571298610_
                                                   _tl298573298613_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g298538298593_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g298538298593_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl298542298707_))
                                    (let ((___splice304687304688_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl298542298707_
                                              '0))))
                                      (let ((_tl298573298613_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice304687304688_
                                                '1)))
                                            (_target298571298610_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice304687304688_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl298573298613_))
                                            (___match304729304730_
                                             _e298544298700_
                                             _hd298543298704_
                                             _tl298542298707_
                                             ___splice304687304688_
                                             _target298571298610_
                                             _tl298573298613_)
                                            (let ()
                                              (declare (not safe))
                                              (_g298538298593_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g298538298593_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl298542298707_))
                            (let ((___splice304687304688_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl298542298707_
                                      '0))))
                              (let ((_tl298573298613_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice304687304688_
                                        '1)))
                                    (_target298571298610_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice304687304688_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl298573298613_))
                                    (___match304729304730_
                                     _e298544298700_
                                     _hd298543298704_
                                     _tl298542298707_
                                     ___splice304687304688_
                                     _target298571298610_
                                     _tl298573298613_)
                                    (let ()
                                      (declare (not safe))
                                      (_g298538298593_)))))
                            (let () (declare (not safe)) (_g298538298593_))))))
                (let () (declare (not safe)) (_g298538298593_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx298815_)
      (let* ((_g298819298837_
              (lambda (_g298820298833_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g298820298833_))))
             (_g298818298892_
              (lambda (_g298820298841_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g298820298841_))
                    (let ((_e298825298844_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g298820298841_))))
                      (let ((_hd298824298848_
                             (let ()
                               (declare (not safe))
                               (##car _e298825298844_)))
                            (_tl298823298851_
                             (let ()
                               (declare (not safe))
                               (##cdr _e298825298844_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl298823298851_))
                            (let ((_e298828298854_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl298823298851_))))
                              (let ((_hd298827298858_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e298828298854_)))
                                    (_tl298826298861_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e298828298854_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl298826298861_))
                                    (let ((_e298831298864_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl298826298861_))))
                                      (let ((_hd298830298868_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e298831298864_)))
                                            (_tl298829298871_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e298831298864_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl298829298871_))
                                            ((lambda (_L298874_ _L298876_)
                                               (let ((__tmp305124
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp305111
                                                      (let ((__tmp305120
                                                             (let ((__tmp305123
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp305121
                            (let ((__tmp305122
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp305122 '()))))
                       (declare (not safe))
                       (cons __tmp305123 __tmp305121)))
                    (__tmp305112
                     (let ((__tmp305117
                            (let ((__tmp305119
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp305118
                                   (let ()
                                     (declare (not safe))
                                     (cons _L298876_ '()))))
                              (declare (not safe))
                              (cons __tmp305119 __tmp305118)))
                           (__tmp305113
                            (let ((__tmp305114
                                   (let ((__tmp305116
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp305115
                                          (let ()
                                            (declare (not safe))
                                            (cons _L298874_ '()))))
                                     (declare (not safe))
                                     (cons __tmp305116 __tmp305115))))
                              (declare (not safe))
                              (cons __tmp305114 '()))))
                       (declare (not safe))
                       (cons __tmp305117 __tmp305113))))
                (declare (not safe))
                (cons __tmp305120 __tmp305112))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp305124
                                                       __tmp305111)))
                                             _hd298830298868_
                                             _hd298827298858_)
                                            (_g298819298837_
                                             _g298820298841_))))
                                    (_g298819298837_ _g298820298841_))))
                            (_g298819298837_ _g298820298841_))))
                    (_g298819298837_ _g298820298841_)))))
        (_g298818298892_ _$stx298815_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx298896_)
      (let* ((_g298900298918_
              (lambda (_g298901298914_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g298901298914_))))
             (_g298899298973_
              (lambda (_g298901298922_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g298901298922_))
                    (let ((_e298906298925_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g298901298922_))))
                      (let ((_hd298905298929_
                             (let ()
                               (declare (not safe))
                               (##car _e298906298925_)))
                            (_tl298904298932_
                             (let ()
                               (declare (not safe))
                               (##cdr _e298906298925_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl298904298932_))
                            (let ((_e298909298935_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl298904298932_))))
                              (let ((_hd298908298939_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e298909298935_)))
                                    (_tl298907298942_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e298909298935_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl298907298942_))
                                    (let ((_e298912298945_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl298907298942_))))
                                      (let ((_hd298911298949_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e298912298945_)))
                                            (_tl298910298952_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e298912298945_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl298910298952_))
                                            ((lambda (_L298955_ _L298957_)
                                               (let ((__tmp305138
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp305125
                                                      (let ((__tmp305134
                                                             (let ((__tmp305137
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp305135
                            (let ((__tmp305136
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp305136 '()))))
                       (declare (not safe))
                       (cons __tmp305137 __tmp305135)))
                    (__tmp305126
                     (let ((__tmp305131
                            (let ((__tmp305133
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp305132
                                   (let ()
                                     (declare (not safe))
                                     (cons _L298957_ '()))))
                              (declare (not safe))
                              (cons __tmp305133 __tmp305132)))
                           (__tmp305127
                            (let ((__tmp305128
                                   (let ((__tmp305130
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp305129
                                          (let ()
                                            (declare (not safe))
                                            (cons _L298955_ '()))))
                                     (declare (not safe))
                                     (cons __tmp305130 __tmp305129))))
                              (declare (not safe))
                              (cons __tmp305128 '()))))
                       (declare (not safe))
                       (cons __tmp305131 __tmp305127))))
                (declare (not safe))
                (cons __tmp305134 __tmp305126))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp305138
                                                       __tmp305125)))
                                             _hd298911298949_
                                             _hd298908298939_)
                                            (_g298900298918_
                                             _g298901298922_))))
                                    (_g298900298918_ _g298901298922_))))
                            (_g298900298918_ _g298901298922_))))
                    (_g298900298918_ _g298901298922_)))))
        (_g298899298973_ _$stx298896_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx298977_)
      (let* ((___stx304732304733_ _$stx298977_)
             (_g298984299055_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx304732304733_)))))
        (let ((___kont304735304736_
               (lambda (_L299346_ _L299348_)
                 (let ((__tmp305144
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp305139
                        (let ((__tmp305140
                               (let ((__tmp305141
                                      (let ((__tmp305143
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp305142
                                             (let ()
                                               (declare (not safe))
                                               (cons _L299346_ '()))))
                                        (declare (not safe))
                                        (cons __tmp305143 __tmp305142))))
                                 (declare (not safe))
                                 (cons __tmp305141 '()))))
                          (declare (not safe))
                          (cons _L299348_ __tmp305140))))
                   (declare (not safe))
                   (cons __tmp305144 __tmp305139))))
              (___kont304737304738_
               (lambda (_L299265_ _L299267_)
                 (let ((__tmp305153
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp305145
                        (let ((__tmp305146
                               (let ((__tmp305147
                                      (let ((__tmp305152
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp305148
                                             (let ((__tmp305149
                                                    (lambda (_g299286299289_
                                                             _g299287299292_)
                                                      (let ((__tmp305150
                                                             (let ((__tmp305151
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g299286299289_ __tmp305151))))
                (declare (not safe))
                (cons __tmp305150 _g299287299292_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp305149
                                                       '()
                                                       _L299265_))))
                                        (declare (not safe))
                                        (cons __tmp305152 __tmp305148))))
                                 (declare (not safe))
                                 (cons __tmp305147 '()))))
                          (declare (not safe))
                          (cons _L299267_ __tmp305146))))
                   (declare (not safe))
                   (cons __tmp305153 __tmp305145))))
              (___kont304741304742_
               (lambda (_L299177_ _L299179_)
                 (let ((__tmp305160
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp305154
                        (let ((__tmp305155
                               (let ((__tmp305156
                                      (let ((__tmp305159
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp305157
                                             (let ((__tmp305158
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L299177_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp305158))))
                                        (declare (not safe))
                                        (cons __tmp305159 __tmp305157))))
                                 (declare (not safe))
                                 (cons __tmp305156 '()))))
                          (declare (not safe))
                          (cons _L299179_ __tmp305155))))
                   (declare (not safe))
                   (cons __tmp305160 __tmp305154))))
              (___kont304743304744_
               (lambda (_L299112_ _L299114_)
                 (let ((__tmp305170
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp305161
                        (let ((__tmp305162
                               (let ((__tmp305163
                                      (let ((__tmp305169
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp305164
                                             (let ((__tmp305165
                                                    (let ((__tmp305166
                                                           (lambda (_g299131299134_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g299132299137_)
                     (let ((__tmp305167
                            (let ((__tmp305168
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g299131299134_ __tmp305168))))
                       (declare (not safe))
                       (cons __tmp305167 _g299132299137_)))))
              (declare (not safe))
              (foldr1 __tmp305166 '() _L299112_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp305165))))
                                        (declare (not safe))
                                        (cons __tmp305169 __tmp305164))))
                                 (declare (not safe))
                                 (cons __tmp305163 '()))))
                          (declare (not safe))
                          (cons _L299114_ __tmp305162))))
                   (declare (not safe))
                   (cons __tmp305170 __tmp305161)))))
          (let* ((___match304851304852_
                  (lambda (_e299037299062_
                           _hd299036299066_
                           _tl299035299069_
                           _e299040299072_
                           _hd299039299076_
                           _tl299038299079_
                           ___splice304745304746_
                           _target299041299082_
                           _tl299043299085_)
                    (letrec ((_loop299044299088_
                              (lambda (_hd299042299092_ _arity299048299095_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd299042299092_))
                                    (let ((_e299045299098_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd299042299092_))))
                                      (let ((_lp-tl299047299105_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e299045299098_)))
                                            (_lp-hd299046299102_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e299045299098_))))
                                        (_loop299044299088_
                                         _lp-tl299047299105_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd299046299102_
                                                 _arity299048299095_)))))
                                    (let ((_arity299049299108_
                                           (reverse _arity299048299095_)))
                                      (___kont304743304744_
                                       _arity299049299108_
                                       _hd299039299076_))))))
                      (_loop299044299088_ _target299041299082_ '()))))
                 (___match304811304812_
                  (lambda (_e299005299201_
                           _hd299004299205_
                           _tl299003299208_
                           _e299008299211_
                           _hd299007299215_
                           _tl299006299218_
                           _e299011299221_
                           _hd299010299225_
                           _tl299009299228_
                           _e299012299231_
                           ___splice304739304740_
                           _target299013299235_
                           _tl299015299238_)
                    (letrec ((_loop299016299241_
                              (lambda (_hd299014299245_ _arity299020299248_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd299014299245_))
                                    (let ((_e299017299251_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd299014299245_))))
                                      (let ((_lp-tl299019299258_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e299017299251_)))
                                            (_lp-hd299018299255_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e299017299251_))))
                                        (_loop299016299241_
                                         _lp-tl299019299258_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd299018299255_
                                                 _arity299020299248_)))))
                                    (let ((_arity299021299261_
                                           (reverse _arity299020299248_)))
                                      (___kont304737304738_
                                       _arity299021299261_
                                       _hd299007299215_))))))
                      (_loop299016299241_ _target299013299235_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx304732304733_))
                (let ((_e298990299302_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx304732304733_))))
                  (let ((_tl298988299309_
                         (let () (declare (not safe)) (##cdr _e298990299302_)))
                        (_hd298989299306_
                         (let ()
                           (declare (not safe))
                           (##car _e298990299302_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl298988299309_))
                        (let ((_e298993299312_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl298988299309_))))
                          (let ((_tl298991299319_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e298993299312_)))
                                (_hd298992299316_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e298993299312_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl298991299319_))
                                (let ((_e298996299322_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl298991299319_))))
                                  (let ((_tl298994299329_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e298996299322_)))
                                        (_hd298995299326_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e298996299322_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd298995299326_))
                                        (let ((_e298997299332_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd298995299326_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e298997299332_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl298994299329_))
                                                  (let ((_e299000299336_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl298994299329_))))
                                                    (let ((_tl298998299343_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e299000299336_)))
                                                          (_hd298999299340_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e299000299336_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl298998299343_))
                                                          (___kont304735304736_
                                                           _hd298999299340_
                                                           _hd298992299316_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl298994299329_))
                      (let ((___splice304739304740_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl298994299329_ '0))))
                        (let ((_tl299015299238_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice304739304740_ '1)))
                              (_target299013299235_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice304739304740_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl299015299238_))
                              (___match304811304812_
                               _e298990299302_
                               _hd298989299306_
                               _tl298988299309_
                               _e298993299312_
                               _hd298992299316_
                               _tl298991299319_
                               _e298996299322_
                               _hd298995299326_
                               _tl298994299329_
                               _e298997299332_
                               ___splice304739304740_
                               _target299013299235_
                               _tl299015299238_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl298991299319_))
                                  (let ((___splice304745304746_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl298991299319_
                                            '0))))
                                    (let ((_tl299043299085_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice304745304746_
                                              '1)))
                                          (_target299041299082_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice304745304746_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl299043299085_))
                                          (___match304851304852_
                                           _e298990299302_
                                           _hd298989299306_
                                           _tl298988299309_
                                           _e298993299312_
                                           _hd298992299316_
                                           _tl298991299319_
                                           ___splice304745304746_
                                           _target299041299082_
                                           _tl299043299085_)
                                          (let ()
                                            (declare (not safe))
                                            (_g298984299055_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g298984299055_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl298991299319_))
                          (let ((___splice304745304746_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl298991299319_
                                    '0))))
                            (let ((_tl299043299085_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice304745304746_ '1)))
                                  (_target299041299082_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice304745304746_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl299043299085_))
                                  (___match304851304852_
                                   _e298990299302_
                                   _hd298989299306_
                                   _tl298988299309_
                                   _e298993299312_
                                   _hd298992299316_
                                   _tl298991299319_
                                   ___splice304745304746_
                                   _target299041299082_
                                   _tl299043299085_)
                                  (let ()
                                    (declare (not safe))
                                    (_g298984299055_)))))
                          (let () (declare (not safe)) (_g298984299055_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl298994299329_))
                                                      (let ((___splice304739304740_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl298994299329_ '0))))
                (let ((_tl299015299238_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice304739304740_ '1)))
                      (_target299013299235_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice304739304740_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl299015299238_))
                      (___match304811304812_
                       _e298990299302_
                       _hd298989299306_
                       _tl298988299309_
                       _e298993299312_
                       _hd298992299316_
                       _tl298991299319_
                       _e298996299322_
                       _hd298995299326_
                       _tl298994299329_
                       _e298997299332_
                       ___splice304739304740_
                       _target299013299235_
                       _tl299015299238_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl298994299329_))
                          (___kont304741304742_
                           _hd298995299326_
                           _hd298992299316_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl298991299319_))
                              (let ((___splice304745304746_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl298991299319_
                                        '0))))
                                (let ((_tl299043299085_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice304745304746_
                                          '1)))
                                      (_target299041299082_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice304745304746_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl299043299085_))
                                      (___match304851304852_
                                       _e298990299302_
                                       _hd298989299306_
                                       _tl298988299309_
                                       _e298993299312_
                                       _hd298992299316_
                                       _tl298991299319_
                                       ___splice304745304746_
                                       _target299041299082_
                                       _tl299043299085_)
                                      (let ()
                                        (declare (not safe))
                                        (_g298984299055_)))))
                              (let ()
                                (declare (not safe))
                                (_g298984299055_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl298994299329_))
                  (___kont304741304742_ _hd298995299326_ _hd298992299316_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl298991299319_))
                      (let ((___splice304745304746_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl298991299319_ '0))))
                        (let ((_tl299043299085_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice304745304746_ '1)))
                              (_target299041299082_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice304745304746_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl299043299085_))
                              (___match304851304852_
                               _e298990299302_
                               _hd298989299306_
                               _tl298988299309_
                               _e298993299312_
                               _hd298992299316_
                               _tl298991299319_
                               ___splice304745304746_
                               _target299041299082_
                               _tl299043299085_)
                              (let ()
                                (declare (not safe))
                                (_g298984299055_)))))
                      (let () (declare (not safe)) (_g298984299055_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl298994299329_))
                                                  (___kont304741304742_
                                                   _hd298995299326_
                                                   _hd298992299316_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl298991299319_))
                                                      (let ((___splice304745304746_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl298991299319_ '0))))
                (let ((_tl299043299085_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice304745304746_ '1)))
                      (_target299041299082_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice304745304746_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl299043299085_))
                      (___match304851304852_
                       _e298990299302_
                       _hd298989299306_
                       _tl298988299309_
                       _e298993299312_
                       _hd298992299316_
                       _tl298991299319_
                       ___splice304745304746_
                       _target299041299082_
                       _tl299043299085_)
                      (let () (declare (not safe)) (_g298984299055_)))))
              (let () (declare (not safe)) (_g298984299055_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl298994299329_))
                                            (___kont304741304742_
                                             _hd298995299326_
                                             _hd298992299316_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl298991299319_))
                                                (let ((___splice304745304746_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl298991299319_
                                                          '0))))
                                                  (let ((_tl299043299085_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice304745304746_
                                                            '1)))
                                                        (_target299041299082_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice304745304746_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl299043299085_))
                                                        (___match304851304852_
                                                         _e298990299302_
                                                         _hd298989299306_
                                                         _tl298988299309_
                                                         _e298993299312_
                                                         _hd298992299316_
                                                         _tl298991299319_
                                                         ___splice304745304746_
                                                         _target299041299082_
                                                         _tl299043299085_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g298984299055_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g298984299055_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl298991299319_))
                                    (let ((___splice304745304746_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl298991299319_
                                              '0))))
                                      (let ((_tl299043299085_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice304745304746_
                                                '1)))
                                            (_target299041299082_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice304745304746_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl299043299085_))
                                            (___match304851304852_
                                             _e298990299302_
                                             _hd298989299306_
                                             _tl298988299309_
                                             _e298993299312_
                                             _hd298992299316_
                                             _tl298991299319_
                                             ___splice304745304746_
                                             _target299041299082_
                                             _tl299043299085_)
                                            (let ()
                                              (declare (not safe))
                                              (_g298984299055_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g298984299055_))))))
                        (let () (declare (not safe)) (_g298984299055_)))))
                (let () (declare (not safe)) (_g298984299055_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx299372_)
      (let* ((___stx304854304855_ _$stx299372_)
             (_g299377299412_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx304854304855_)))))
        (let ((___kont304857304858_
               (lambda (_L299534_ _L299536_)
                 (let ((__tmp305176
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp305171
                        (let ((__tmp305172
                               (let ((__tmp305173
                                      (let ((__tmp305175
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp305174
                                             (let ()
                                               (declare (not safe))
                                               (cons _L299534_ '()))))
                                        (declare (not safe))
                                        (cons __tmp305175 __tmp305174))))
                                 (declare (not safe))
                                 (cons __tmp305173 '()))))
                          (declare (not safe))
                          (cons _L299536_ __tmp305172))))
                   (declare (not safe))
                   (cons __tmp305176 __tmp305171))))
              (___kont304859304860_
               (lambda (_L299469_ _L299471_)
                 (let ((__tmp305185
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp305177
                        (let ((__tmp305178
                               (let ((__tmp305179
                                      (let ((__tmp305184
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp305180
                                             (let ((__tmp305181
                                                    (lambda (_g299488299491_
                                                             _g299489299494_)
                                                      (let ((__tmp305182
                                                             (let ((__tmp305183
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g299488299491_ __tmp305183))))
                (declare (not safe))
                (cons __tmp305182 _g299489299494_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp305181
                                                       '()
                                                       _L299469_))))
                                        (declare (not safe))
                                        (cons __tmp305184 __tmp305180))))
                                 (declare (not safe))
                                 (cons __tmp305179 '()))))
                          (declare (not safe))
                          (cons _L299471_ __tmp305178))))
                   (declare (not safe))
                   (cons __tmp305185 __tmp305177)))))
          (let ((___match304903304904_
                 (lambda (_e299394299419_
                          _hd299393299423_
                          _tl299392299426_
                          _e299397299429_
                          _hd299396299433_
                          _tl299395299436_
                          ___splice304861304862_
                          _target299398299439_
                          _tl299400299442_)
                   (letrec ((_loop299401299445_
                             (lambda (_hd299399299449_ _arity299405299452_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd299399299449_))
                                   (let ((_e299402299455_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd299399299449_))))
                                     (let ((_lp-tl299404299462_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e299402299455_)))
                                           (_lp-hd299403299459_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e299402299455_))))
                                       (_loop299401299445_
                                        _lp-tl299404299462_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd299403299459_
                                                _arity299405299452_)))))
                                   (let ((_arity299406299465_
                                          (reverse _arity299405299452_)))
                                     (___kont304859304860_
                                      _arity299406299465_
                                      _hd299396299433_))))))
                     (_loop299401299445_ _target299398299439_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx304854304855_))
                (let ((_e299383299504_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx304854304855_))))
                  (let ((_tl299381299511_
                         (let () (declare (not safe)) (##cdr _e299383299504_)))
                        (_hd299382299508_
                         (let ()
                           (declare (not safe))
                           (##car _e299383299504_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl299381299511_))
                        (let ((_e299386299514_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl299381299511_))))
                          (let ((_tl299384299521_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e299386299514_)))
                                (_hd299385299518_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e299386299514_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl299384299521_))
                                (let ((_e299389299524_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl299384299521_))))
                                  (let ((_tl299387299531_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e299389299524_)))
                                        (_hd299388299528_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e299389299524_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl299387299531_))
                                        (___kont304857304858_
                                         _hd299388299528_
                                         _hd299385299518_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl299384299521_))
                                            (let ((___splice304861304862_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl299384299521_
                                                      '0))))
                                              (let ((_tl299400299442_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice304861304862_
                                                        '1)))
                                                    (_target299398299439_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice304861304862_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl299400299442_))
                                                    (___match304903304904_
                                                     _e299383299504_
                                                     _hd299382299508_
                                                     _tl299381299511_
                                                     _e299386299514_
                                                     _hd299385299518_
                                                     _tl299384299521_
                                                     ___splice304861304862_
                                                     _target299398299439_
                                                     _tl299400299442_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g299377299412_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g299377299412_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl299384299521_))
                                    (let ((___splice304861304862_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl299384299521_
                                              '0))))
                                      (let ((_tl299400299442_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice304861304862_
                                                '1)))
                                            (_target299398299439_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice304861304862_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl299400299442_))
                                            (___match304903304904_
                                             _e299383299504_
                                             _hd299382299508_
                                             _tl299381299511_
                                             _e299386299514_
                                             _hd299385299518_
                                             _tl299384299521_
                                             ___splice304861304862_
                                             _target299398299439_
                                             _tl299400299442_)
                                            (let ()
                                              (declare (not safe))
                                              (_g299377299412_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g299377299412_))))))
                        (let () (declare (not safe)) (_g299377299412_)))))
                (let () (declare (not safe)) (_g299377299412_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx299556_)
      (let* ((_g299560299595_
              (lambda (_g299561299591_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g299561299591_))))
             (_g299559299723_
              (lambda (_g299561299599_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g299561299599_))
                    (let ((_e299566299602_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g299561299599_))))
                      (let ((_hd299565299606_
                             (let ()
                               (declare (not safe))
                               (##car _e299566299602_)))
                            (_tl299564299609_
                             (let ()
                               (declare (not safe))
                               (##cdr _e299566299602_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl299564299609_))
                            (let ((_g305186_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl299564299609_
                                      '0))))
                              (begin
                                (let ((_g305187_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g305186_)
                                             (##vector-length _g305186_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g305187_ 2)))
                                      (error "Context expects 2 values"
                                             _g305187_)))
                                (let ((_target299567299612_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g305186_ 0)))
                                      (_tl299569299615_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g305186_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl299569299615_))
                                      (letrec ((_loop299570299618_
                                                (lambda (_hd299568299622_
                                                         _arity299574299625_
                                                         _prim299575299627_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd299568299622_))
                                                      (let ((_e299571299630_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd299568299622_))))
                (let ((_lp-hd299572299634_
                       (let () (declare (not safe)) (##car _e299571299630_)))
                      (_lp-tl299573299637_
                       (let () (declare (not safe)) (##cdr _e299571299630_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd299572299634_))
                      (let ((_e299580299640_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd299572299634_))))
                        (let ((_hd299579299644_
                               (let ()
                                 (declare (not safe))
                                 (##car _e299580299640_)))
                              (_tl299578299647_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e299580299640_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl299578299647_))
                              (let ((_g305196_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl299578299647_
                                        '0))))
                                (begin
                                  (let ((_g305197_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g305196_)
                                               (##vector-length _g305196_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g305197_ 2)))
                                        (error "Context expects 2 values"
                                               _g305197_)))
                                  (let ((_target299581299650_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g305196_ 0)))
                                        (_tl299583299653_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g305196_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl299583299653_))
                                        (letrec ((_loop299584299656_
                                                  (lambda (_hd299582299660_
                                                           _arity299588299663_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd299582299660_))
                                                        (let ((_e299585299666_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd299582299660_))))
                  (let ((_lp-hd299586299670_
                         (let () (declare (not safe)) (##car _e299585299666_)))
                        (_lp-tl299587299673_
                         (let ()
                           (declare (not safe))
                           (##cdr _e299585299666_))))
                    (_loop299584299656_
                     _lp-tl299587299673_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd299586299670_ _arity299588299663_)))))
                (let ((_arity299589299676_ (reverse _arity299588299663_)))
                  (_loop299570299618_
                   _lp-tl299573299637_
                   (let ()
                     (declare (not safe))
                     (cons _arity299589299676_ _arity299574299625_))
                   (let ()
                     (declare (not safe))
                     (cons _hd299579299644_ _prim299575299627_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop299584299656_
                                           _target299581299650_
                                           '()))
                                        (_g299560299595_ _g299561299599_)))))
                              (_g299560299595_ _g299561299599_))))
                      (_g299560299595_ _g299561299599_))))
              (let ((_arity299576299680_ (reverse _arity299574299625_))
                    (_prim299577299683_ (reverse _prim299575299627_)))
                ((lambda (_L299686_ _L299688_)
                   (let ((__tmp305195
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp305188
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L299686_
                               _L299688_))
                            (let ((__tmp305189
                                   (lambda (_g299703299709_
                                            _g299704299712_
                                            _g299705299714_)
                                     (let ((__tmp305190
                                            (let ((__tmp305194
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp305191
                                                   (let ((__tmp305192
                                                          (let ((__tmp305193
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g299706299717_ _g299707299720_)
                           (let ()
                             (declare (not safe))
                             (cons _g299706299717_ _g299707299720_)))))
                    (declare (not safe))
                    (foldr1 __tmp305193 '() _g299703299709_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g299704299712_
                                                           __tmp305192))))
                                              (declare (not safe))
                                              (cons __tmp305194 __tmp305191))))
                                       (declare (not safe))
                                       (cons __tmp305190 _g299705299714_)))))
                              (declare (not safe))
                              (foldr2 __tmp305189 '() _L299686_ _L299688_)))))
                     (declare (not safe))
                     (cons __tmp305195 __tmp305188)))
                 _arity299576299680_
                 _prim299577299683_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop299570299618_
                                         _target299567299612_
                                         '()
                                         '()))
                                      (_g299560299595_ _g299561299599_)))))
                            (_g299560299595_ _g299561299599_))))
                    (_g299560299595_ _g299561299599_)))))
        (_g299559299723_ _$stx299556_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx299729_)
      (let* ((_g299733299768_
              (lambda (_g299734299764_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g299734299764_))))
             (_g299732299896_
              (lambda (_g299734299772_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g299734299772_))
                    (let ((_e299739299775_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g299734299772_))))
                      (let ((_hd299738299779_
                             (let ()
                               (declare (not safe))
                               (##car _e299739299775_)))
                            (_tl299737299782_
                             (let ()
                               (declare (not safe))
                               (##cdr _e299739299775_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl299737299782_))
                            (let ((_g305198_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl299737299782_
                                      '0))))
                              (begin
                                (let ((_g305199_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g305198_)
                                             (##vector-length _g305198_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g305199_ 2)))
                                      (error "Context expects 2 values"
                                             _g305199_)))
                                (let ((_target299740299785_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g305198_ 0)))
                                      (_tl299742299788_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g305198_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl299742299788_))
                                      (letrec ((_loop299743299791_
                                                (lambda (_hd299741299795_
                                                         _arity299747299798_
                                                         _prim299748299800_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd299741299795_))
                                                      (let ((_e299744299803_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd299741299795_))))
                (let ((_lp-hd299745299807_
                       (let () (declare (not safe)) (##car _e299744299803_)))
                      (_lp-tl299746299810_
                       (let () (declare (not safe)) (##cdr _e299744299803_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd299745299807_))
                      (let ((_e299753299813_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd299745299807_))))
                        (let ((_hd299752299817_
                               (let ()
                                 (declare (not safe))
                                 (##car _e299753299813_)))
                              (_tl299751299820_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e299753299813_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl299751299820_))
                              (let ((_g305208_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl299751299820_
                                        '0))))
                                (begin
                                  (let ((_g305209_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g305208_)
                                               (##vector-length _g305208_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g305209_ 2)))
                                        (error "Context expects 2 values"
                                               _g305209_)))
                                  (let ((_target299754299823_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g305208_ 0)))
                                        (_tl299756299826_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g305208_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl299756299826_))
                                        (letrec ((_loop299757299829_
                                                  (lambda (_hd299755299833_
                                                           _arity299761299836_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd299755299833_))
                                                        (let ((_e299758299839_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd299755299833_))))
                  (let ((_lp-hd299759299843_
                         (let () (declare (not safe)) (##car _e299758299839_)))
                        (_lp-tl299760299846_
                         (let ()
                           (declare (not safe))
                           (##cdr _e299758299839_))))
                    (_loop299757299829_
                     _lp-tl299760299846_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd299759299843_ _arity299761299836_)))))
                (let ((_arity299762299849_ (reverse _arity299761299836_)))
                  (_loop299743299791_
                   _lp-tl299746299810_
                   (let ()
                     (declare (not safe))
                     (cons _arity299762299849_ _arity299747299798_))
                   (let ()
                     (declare (not safe))
                     (cons _hd299752299817_ _prim299748299800_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop299757299829_
                                           _target299754299823_
                                           '()))
                                        (_g299733299768_ _g299734299772_)))))
                              (_g299733299768_ _g299734299772_))))
                      (_g299733299768_ _g299734299772_))))
              (let ((_arity299749299853_ (reverse _arity299747299798_))
                    (_prim299750299856_ (reverse _prim299748299800_)))
                ((lambda (_L299859_ _L299861_)
                   (let ((__tmp305207
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp305200
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L299859_
                               _L299861_))
                            (let ((__tmp305201
                                   (lambda (_g299876299882_
                                            _g299877299885_
                                            _g299878299887_)
                                     (let ((__tmp305202
                                            (let ((__tmp305206
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp305203
                                                   (let ((__tmp305204
                                                          (let ((__tmp305205
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g299879299890_ _g299880299893_)
                           (let ()
                             (declare (not safe))
                             (cons _g299879299890_ _g299880299893_)))))
                    (declare (not safe))
                    (foldr1 __tmp305205 '() _g299876299882_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g299877299885_
                                                           __tmp305204))))
                                              (declare (not safe))
                                              (cons __tmp305206 __tmp305203))))
                                       (declare (not safe))
                                       (cons __tmp305202 _g299878299887_)))))
                              (declare (not safe))
                              (foldr2 __tmp305201 '() _L299859_ _L299861_)))))
                     (declare (not safe))
                     (cons __tmp305207 __tmp305200)))
                 _arity299749299853_
                 _prim299750299856_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop299743299791_
                                         _target299740299785_
                                         '()
                                         '()))
                                      (_g299733299768_ _g299734299772_)))))
                            (_g299733299768_ _g299734299772_))))
                    (_g299733299768_ _g299734299772_)))))
        (_g299732299896_ _$stx299729_)))))
