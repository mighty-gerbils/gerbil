(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx160663_)
      (let* ((_g160667160685_
              (lambda (_g160668160681_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160668160681_))))
             (_g160666160740_
              (lambda (_g160668160689_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160668160689_))
                    (let ((_e160673160692_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160668160689_))))
                      (let ((_hd160672160696_
                             (let ()
                               (declare (not safe))
                               (##car _e160673160692_)))
                            (_tl160671160699_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160673160692_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160671160699_))
                            (let ((_e160676160702_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160671160699_))))
                              (let ((_hd160675160706_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160676160702_)))
                                    (_tl160674160709_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160676160702_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl160674160709_))
                                    (let ((_e160679160712_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl160674160709_))))
                                      (let ((_hd160678160716_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160679160712_)))
                                            (_tl160677160719_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160679160712_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160677160719_))
                                            ((lambda (_L160722_ _L160724_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _L160724_))
                                                   (let ((__tmp164222
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp164217
                                                          (let ((__tmp164219
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp164221
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp164220
                                (let ()
                                  (declare (not safe))
                                  (cons _L160724_ '()))))
                           (declare (not safe))
                           (cons __tmp164221 __tmp164220)))
                        (__tmp164218
                         (let () (declare (not safe)) (cons _L160722_ '()))))
                    (declare (not safe))
                    (cons __tmp164219 __tmp164218))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp164222
                                                           __tmp164217))
                                                   (_g160667160685_
                                                    _g160668160689_)))
                                             _hd160678160716_
                                             _hd160675160706_)
                                            (_g160667160685_
                                             _g160668160689_))))
                                    (_g160667160685_ _g160668160689_))))
                            (_g160667160685_ _g160668160689_))))
                    (_g160667160685_ _g160668160689_)))))
        (_g160666160740_ _$stx160663_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx160744_)
      (let* ((_g160748160777_
              (lambda (_g160749160773_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160749160773_))))
             (_g160747160877_
              (lambda (_g160749160781_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160749160781_))
                    (let ((_e160754160784_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160749160781_))))
                      (let ((_hd160753160788_
                             (let ()
                               (declare (not safe))
                               (##car _e160754160784_)))
                            (_tl160752160791_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160754160784_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl160752160791_))
                            (let ((_g164223_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl160752160791_
                                      '0))))
                              (begin
                                (let ((_g164224_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g164223_)
                                             (##vector-length _g164223_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g164224_ 2)))
                                      (error "Context expects 2 values"
                                             _g164224_)))
                                (let ((_target160755160794_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g164223_ 0)))
                                      (_tl160757160797_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g164223_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl160757160797_))
                                      (letrec ((_loop160758160800_
                                                (lambda (_hd160756160804_
                                                         _type160762160807_
                                                         _symbol160763160809_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd160756160804_))
                                                      (let ((_e160759160812_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd160756160804_))))
                (let ((_lp-hd160760160816_
                       (let () (declare (not safe)) (##car _e160759160812_)))
                      (_lp-tl160761160819_
                       (let () (declare (not safe)) (##cdr _e160759160812_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd160760160816_))
                      (let ((_e160768160822_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd160760160816_))))
                        (let ((_hd160767160826_
                               (let ()
                                 (declare (not safe))
                                 (##car _e160768160822_)))
                              (_tl160766160829_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e160768160822_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl160766160829_))
                              (let ((_e160771160832_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl160766160829_))))
                                (let ((_hd160770160836_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e160771160832_)))
                                      (_tl160769160839_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e160771160832_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl160769160839_))
                                      (_loop160758160800_
                                       _lp-tl160761160819_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd160770160836_
                                               _type160762160807_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd160767160826_
                                               _symbol160763160809_)))
                                      (_g160748160777_ _g160749160781_))))
                              (_g160748160777_ _g160749160781_))))
                      (_g160748160777_ _g160749160781_))))
              (let ((_type160764160842_ (reverse _type160762160807_))
                    (_symbol160765160845_ (reverse _symbol160763160809_)))
                ((lambda (_L160848_ _L160850_)
                   (let ((__tmp164231
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp164225
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L160848_
                               _L160850_))
                            (let ((__tmp164226
                                   (lambda (_g160865160869_
                                            _g160866160872_
                                            _g160867160874_)
                                     (let ((__tmp164227
                                            (let ((__tmp164230
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp164228
                                                   (let ((__tmp164229
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g160865160869_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g160866160872_
                                                           __tmp164229))))
                                              (declare (not safe))
                                              (cons __tmp164230 __tmp164228))))
                                       (declare (not safe))
                                       (cons __tmp164227 _g160867160874_)))))
                              (declare (not safe))
                              (foldr2 __tmp164226 '() _L160848_ _L160850_)))))
                     (declare (not safe))
                     (cons __tmp164231 __tmp164225)))
                 _type160764160842_
                 _symbol160765160845_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop160758160800_
                                         _target160755160794_
                                         '()
                                         '()))
                                      (_g160748160777_ _g160749160781_)))))
                            (_g160748160777_ _g160749160781_))))
                    (_g160748160777_ _g160749160781_)))))
        (_g160747160877_ _$stx160744_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx160882_)
      (let* ((___stx163782163783_ _$stx160882_)
             (_g160887160929_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx163782163783_)))))
        (let ((___kont163785163786_
               (lambda (_L161057_ _L161059_ _L161060_ _L161061_)
                 (let ((__tmp164245
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp164232
                        (let ((__tmp164242
                               (let ((__tmp164244
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp164243
                                      (let ()
                                        (declare (not safe))
                                        (cons _L161061_ '()))))
                                 (declare (not safe))
                                 (cons __tmp164244 __tmp164243)))
                              (__tmp164233
                               (let ((__tmp164239
                                      (let ((__tmp164241
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp164240
                                             (let ()
                                               (declare (not safe))
                                               (cons _L161060_ '()))))
                                        (declare (not safe))
                                        (cons __tmp164241 __tmp164240)))
                                     (__tmp164234
                                      (let ((__tmp164236
                                             (let ((__tmp164238
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp164237
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L161059_ '()))))
                                               (declare (not safe))
                                               (cons __tmp164238 __tmp164237)))
                                            (__tmp164235
                                             (let ()
                                               (declare (not safe))
                                               (cons _L161057_ '()))))
                                        (declare (not safe))
                                        (cons __tmp164236 __tmp164235))))
                                 (declare (not safe))
                                 (cons __tmp164239 __tmp164234))))
                          (declare (not safe))
                          (cons __tmp164242 __tmp164233))))
                   (declare (not safe))
                   (cons __tmp164245 __tmp164232))))
              (___kont163787163788_
               (lambda (_L160976_ _L160978_ _L160979_ _L160980_)
                 (let ((__tmp164246
                        (let ((__tmp164247
                               (let ((__tmp164248
                                      (let ((__tmp164249
                                             (let ((__tmp164250
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp164250 '()))))
                                        (declare (not safe))
                                        (cons _L160976_ __tmp164249))))
                                 (declare (not safe))
                                 (cons _L160978_ __tmp164248))))
                          (declare (not safe))
                          (cons _L160979_ __tmp164247))))
                   (declare (not safe))
                   (cons _L160980_ __tmp164246)))))
          (let ((___match163821163822_
                 (lambda (_e160895161007_
                          _hd160894161011_
                          _tl160893161014_
                          _e160898161017_
                          _hd160897161021_
                          _tl160896161024_
                          _e160901161027_
                          _hd160900161031_
                          _tl160899161034_
                          _e160904161037_
                          _hd160903161041_
                          _tl160902161044_
                          _e160907161047_
                          _hd160906161051_
                          _tl160905161054_)
                   (let ((_L161057_ _hd160906161051_)
                         (_L161059_ _hd160903161041_)
                         (_L161060_ _hd160900161031_)
                         (_L161061_ _hd160897161021_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L161061_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L161060_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L161059_)))
                         (___kont163785163786_
                          _L161057_
                          _L161059_
                          _L161060_
                          _L161061_)
                         (let () (declare (not safe)) (_g160887160929_)))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx163782163783_))
                (let ((_e160895161007_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx163782163783_))))
                  (let ((_tl160893161014_
                         (let () (declare (not safe)) (##cdr _e160895161007_)))
                        (_hd160894161011_
                         (let ()
                           (declare (not safe))
                           (##car _e160895161007_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl160893161014_))
                        (let ((_e160898161017_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl160893161014_))))
                          (let ((_tl160896161024_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e160898161017_)))
                                (_hd160897161021_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e160898161017_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl160896161024_))
                                (let ((_e160901161027_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl160896161024_))))
                                  (let ((_tl160899161034_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e160901161027_)))
                                        (_hd160900161031_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e160901161027_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl160899161034_))
                                        (let ((_e160904161037_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl160899161034_))))
                                          (let ((_tl160902161044_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e160904161037_)))
                                                (_hd160903161041_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e160904161037_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl160902161044_))
                                                (let ((_e160907161047_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl160902161044_))))
                                                  (let ((_tl160905161054_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e160907161047_)))
                                                        (_hd160906161051_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e160907161047_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl160905161054_))
                                                        (___match163821163822_
                                                         _e160895161007_
                                                         _hd160894161011_
                                                         _tl160893161014_
                                                         _e160898161017_
                                                         _hd160897161021_
                                                         _tl160896161024_
                                                         _e160901161027_
                                                         _hd160900161031_
                                                         _tl160899161034_
                                                         _e160904161037_
                                                         _hd160903161041_
                                                         _tl160902161044_
                                                         _e160907161047_
                                                         _hd160906161051_
                                                         _tl160905161054_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g160887160929_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl160902161044_))
                                                    (___kont163787163788_
                                                     _hd160903161041_
                                                     _hd160900161031_
                                                     _hd160897161021_
                                                     _hd160894161011_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g160887160929_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g160887160929_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g160887160929_)))))
                        (let () (declare (not safe)) (_g160887160929_)))))
                (let () (declare (not safe)) (_g160887160929_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx161086_)
      (let* ((_g161090161125_
              (lambda (_g161091161121_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161091161121_))))
             (_g161089161244_
              (lambda (_g161091161129_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161091161129_))
                    (let ((_e161097161132_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161091161129_))))
                      (let ((_hd161096161136_
                             (let ()
                               (declare (not safe))
                               (##car _e161097161132_)))
                            (_tl161095161139_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161097161132_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl161095161139_))
                            (let ((_g164251_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl161095161139_
                                      '0))))
                              (begin
                                (let ((_g164252_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g164251_)
                                             (##vector-length _g164251_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g164252_ 2)))
                                      (error "Context expects 2 values"
                                             _g164252_)))
                                (let ((_target161098161142_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g164251_ 0)))
                                      (_tl161100161145_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g164251_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl161100161145_))
                                      (letrec ((_loop161101161148_
                                                (lambda (_hd161099161152_
                                                         _symbol161105161155_
                                                         _method161106161157_
                                                         _type-t161107161159_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd161099161152_))
                                                      (let ((_e161102161162_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd161099161152_))))
                (let ((_lp-hd161103161166_
                       (let () (declare (not safe)) (##car _e161102161162_)))
                      (_lp-tl161104161169_
                       (let () (declare (not safe)) (##cdr _e161102161162_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd161103161166_))
                      (let ((_e161113161172_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd161103161166_))))
                        (let ((_hd161112161176_
                               (let ()
                                 (declare (not safe))
                                 (##car _e161113161172_)))
                              (_tl161111161179_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e161113161172_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl161111161179_))
                              (let ((_e161116161182_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl161111161179_))))
                                (let ((_hd161115161186_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e161116161182_)))
                                      (_tl161114161189_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e161116161182_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl161114161189_))
                                      (let ((_e161119161192_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl161114161189_))))
                                        (let ((_hd161118161196_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e161119161192_)))
                                              (_tl161117161199_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e161119161192_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl161117161199_))
                                              (_loop161101161148_
                                               _lp-tl161104161169_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd161118161196_
                                                       _symbol161105161155_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd161115161186_
                                                       _method161106161157_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd161112161176_
                                                       _type-t161107161159_)))
                                              (_g161090161125_
                                               _g161091161129_))))
                                      (_g161090161125_ _g161091161129_))))
                              (_g161090161125_ _g161091161129_))))
                      (_g161090161125_ _g161091161129_))))
              (let ((_symbol161108161202_ (reverse _symbol161105161155_))
                    (_method161109161205_ (reverse _method161106161157_))
                    (_type-t161110161207_ (reverse _type-t161107161159_)))
                ((lambda (_L161210_ _L161212_ _L161213_)
                   (let ((__tmp164260
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp164253
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L161210_
                               _L161212_
                               _L161213_))
                            (let ((__tmp164254
                                   (lambda (_g161229161234_
                                            _g161230161237_
                                            _g161231161239_
                                            _g161232161241_)
                                     (let ((__tmp164255
                                            (let ((__tmp164259
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp164256
                                                   (let ((__tmp164257
                                                          (let ((__tmp164258
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g161229161234_ '()))))
                    (declare (not safe))
                    (cons _g161230161237_ __tmp164258))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g161231161239_
                                                           __tmp164257))))
                                              (declare (not safe))
                                              (cons __tmp164259 __tmp164256))))
                                       (declare (not safe))
                                       (cons __tmp164255 _g161232161241_)))))
                              (declare (not safe))
                              (foldr* __tmp164254
                                      '()
                                      _L161210_
                                      _L161212_
                                      _L161213_)))))
                     (declare (not safe))
                     (cons __tmp164260 __tmp164253)))
                 _symbol161108161202_
                 _method161109161205_
                 _type-t161110161207_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop161101161148_
                                         _target161098161142_
                                         '()
                                         '()
                                         '()))
                                      (_g161090161125_ _g161091161129_)))))
                            (_g161090161125_ _g161091161129_))))
                    (_g161090161125_ _g161091161129_)))))
        (_g161089161244_ _$stx161086_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx161249_)
      (let* ((_g161253161286_
              (lambda (_g161254161282_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161254161282_))))
             (_g161252161400_
              (lambda (_g161254161290_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161254161290_))
                    (let ((_e161260161293_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161254161290_))))
                      (let ((_hd161259161297_
                             (let ()
                               (declare (not safe))
                               (##car _e161260161293_)))
                            (_tl161258161300_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161260161293_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161258161300_))
                            (let ((_e161263161303_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161258161300_))))
                              (let ((_hd161262161307_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161263161303_)))
                                    (_tl161261161310_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161263161303_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl161261161310_))
                                    (let ((_g164261_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl161261161310_
                                              '0))))
                                      (begin
                                        (let ((_g164262_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g164261_)
                                                     (##vector-length
                                                      _g164261_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g164262_ 2)))
                                              (error "Context expects 2 values"
                                                     _g164262_)))
                                        (let ((_target161264161313_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g164261_ 0)))
                                              (_tl161266161316_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g164261_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl161266161316_))
                                              (letrec ((_loop161267161319_
                                                        (lambda (_hd161265161323_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol161271161326_
                         _method161272161328_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd161265161323_))
                      (let ((_e161268161331_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd161265161323_))))
                        (let ((_lp-hd161269161335_
                               (let ()
                                 (declare (not safe))
                                 (##car _e161268161331_)))
                              (_lp-tl161270161338_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e161268161331_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd161269161335_))
                              (let ((_e161277161341_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd161269161335_))))
                                (let ((_hd161276161345_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e161277161341_)))
                                      (_tl161275161348_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e161277161341_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl161275161348_))
                                      (let ((_e161280161351_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl161275161348_))))
                                        (let ((_hd161279161355_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e161280161351_)))
                                              (_tl161278161358_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e161280161351_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl161278161358_))
                                              (_loop161267161319_
                                               _lp-tl161270161338_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd161279161355_
                                                       _symbol161271161326_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd161276161345_
                                                       _method161272161328_)))
                                              (_g161253161286_
                                               _g161254161290_))))
                                      (_g161253161286_ _g161254161290_))))
                              (_g161253161286_ _g161254161290_))))
                      (let ((_symbol161273161361_
                             (reverse _symbol161271161326_))
                            (_method161274161364_
                             (reverse _method161272161328_)))
                        ((lambda (_L161367_ _L161369_ _L161370_)
                           (let ((__tmp164270
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp164263
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L161367_
                                       _L161369_))
                                    (let ((__tmp164264
                                           (lambda (_g161388161392_
                                                    _g161389161395_
                                                    _g161390161397_)
                                             (let ((__tmp164265
                                                    (let ((__tmp164269
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp164266
                                                           (let ((__tmp164267
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp164268
                                 (let ()
                                   (declare (not safe))
                                   (cons _g161388161392_ '()))))
                            (declare (not safe))
                            (cons _g161389161395_ __tmp164268))))
                     (declare (not safe))
                     (cons _L161370_ __tmp164267))))
              (declare (not safe))
              (cons __tmp164269 __tmp164266))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp164265
                                                     _g161390161397_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp164264
                                              '()
                                              _L161367_
                                              _L161369_)))))
                             (declare (not safe))
                             (cons __tmp164270 __tmp164263)))
                         _symbol161273161361_
                         _method161274161364_
                         _hd161262161307_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop161267161319_
                                                 _target161264161313_
                                                 '()
                                                 '()))
                                              (_g161253161286_
                                               _g161254161290_)))))
                                    (_g161253161286_ _g161254161290_))))
                            (_g161253161286_ _g161254161290_))))
                    (_g161253161286_ _g161254161290_)))))
        (_g161252161400_ _$stx161249_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx161405_)
      (let* ((_g161409161423_
              (lambda (_g161410161419_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161410161419_))))
             (_g161408161464_
              (lambda (_g161410161427_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161410161427_))
                    (let ((_e161414161430_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161410161427_))))
                      (let ((_hd161413161434_
                             (let ()
                               (declare (not safe))
                               (##car _e161414161430_)))
                            (_tl161412161437_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161414161430_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161412161437_))
                            (let ((_e161417161440_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161412161437_))))
                              (let ((_hd161416161444_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161417161440_)))
                                    (_tl161415161447_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161417161440_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl161415161447_))
                                    ((lambda (_L161450_)
                                       (let ((__tmp164275
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp164271
                                              (let ((__tmp164272
                                                     (let ((__tmp164274
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp164273
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L161450_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp164274 __tmp164273))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp164272 '()))))
                                         (declare (not safe))
                                         (cons __tmp164275 __tmp164271)))
                                     _hd161416161444_)
                                    (_g161409161423_ _g161410161427_))))
                            (_g161409161423_ _g161410161427_))))
                    (_g161409161423_ _g161410161427_)))))
        (_g161408161464_ _$stx161405_))))
  (define |gxc[:0:]#@class|
    (lambda (_$stx161468_)
      (let* ((_g161472161526_
              (lambda (_g161473161522_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161473161522_))))
             (_g161471161707_
              (lambda (_g161473161530_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161473161530_))
                    (let ((_e161487161533_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161473161530_))))
                      (let ((_hd161486161537_
                             (let ()
                               (declare (not safe))
                               (##car _e161487161533_)))
                            (_tl161485161540_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161487161533_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161485161540_))
                            (let ((_e161490161543_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161485161540_))))
                              (let ((_hd161489161547_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161490161543_)))
                                    (_tl161488161550_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161490161543_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl161488161550_))
                                    (let ((_e161493161553_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl161488161550_))))
                                      (let ((_hd161492161557_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161493161553_)))
                                            (_tl161491161560_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161493161553_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl161491161560_))
                                            (let ((_e161496161563_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl161491161560_))))
                                              (let ((_hd161495161567_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e161496161563_)))
                                                    (_tl161494161570_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e161496161563_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl161494161570_))
                                                    (let ((_e161499161573_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl161494161570_))))
                                                      (let ((_hd161498161577_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e161499161573_)))
                    (_tl161497161580_
                     (let () (declare (not safe)) (##cdr _e161499161573_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl161497161580_))
                    (let ((_e161502161583_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl161497161580_))))
                      (let ((_hd161501161587_
                             (let ()
                               (declare (not safe))
                               (##car _e161502161583_)))
                            (_tl161500161590_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161502161583_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161500161590_))
                            (let ((_e161505161593_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161500161590_))))
                              (let ((_hd161504161597_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161505161593_)))
                                    (_tl161503161600_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161505161593_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl161503161600_))
                                    (let ((_e161508161603_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl161503161600_))))
                                      (let ((_hd161507161607_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161508161603_)))
                                            (_tl161506161610_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161508161603_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl161506161610_))
                                            (let ((_e161511161613_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl161506161610_))))
                                              (let ((_hd161510161617_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e161511161613_)))
                                                    (_tl161509161620_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e161511161613_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl161509161620_))
                                                    (let ((_e161514161623_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl161509161620_))))
                                                      (let ((_hd161513161627_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e161514161623_)))
                    (_tl161512161630_
                     (let () (declare (not safe)) (##cdr _e161514161623_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl161512161630_))
                    (let ((_e161517161633_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl161512161630_))))
                      (let ((_hd161516161637_
                             (let ()
                               (declare (not safe))
                               (##car _e161517161633_)))
                            (_tl161515161640_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161517161633_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161515161640_))
                            (let ((_e161520161643_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161515161640_))))
                              (let ((_hd161519161647_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161520161643_)))
                                    (_tl161518161650_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161520161643_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl161518161650_))
                                    ((lambda (_L161653_
                                              _L161655_
                                              _L161656_
                                              _L161657_
                                              _L161658_
                                              _L161659_
                                              _L161660_
                                              _L161661_
                                              _L161662_
                                              _L161663_
                                              _L161664_)
                                       (let ((__tmp164311
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!class)))
                                             (__tmp164276
                                              (let ((__tmp164308
                                                     (let ((__tmp164310
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp164309
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L161664_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp164310 __tmp164309)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp164277
                                                     (let ((__tmp164305
                                                            (let ((__tmp164307
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote)))
                          (__tmp164306
                           (let () (declare (not safe)) (cons _L161663_ '()))))
                      (declare (not safe))
                      (cons __tmp164307 __tmp164306)))
                   (__tmp164278
                    (let ((__tmp164302
                           (let ((__tmp164304
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'quote)))
                                 (__tmp164303
                                  (let ()
                                    (declare (not safe))
                                    (cons _L161662_ '()))))
                             (declare (not safe))
                             (cons __tmp164304 __tmp164303)))
                          (__tmp164279
                           (let ((__tmp164299
                                  (let ((__tmp164301
                                         (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote)))
                                        (__tmp164300
                                         (let ()
                                           (declare (not safe))
                                           (cons _L161661_ '()))))
                                    (declare (not safe))
                                    (cons __tmp164301 __tmp164300)))
                                 (__tmp164280
                                  (let ((__tmp164296
                                         (let ((__tmp164298
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'quote)))
                                               (__tmp164297
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L161660_ '()))))
                                           (declare (not safe))
                                           (cons __tmp164298 __tmp164297)))
                                        (__tmp164281
                                         (let ((__tmp164293
                                                (let ((__tmp164295
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'quote)))
                                                      (__tmp164294
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L161659_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp164295
                                                        __tmp164294)))
                                               (__tmp164282
                                                (let ((__tmp164283
                                                       (let ((__tmp164284
                                                              (let ((__tmp164285
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp164290
                                    (let ((__tmp164292
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp164291
                                           (let ()
                                             (declare (not safe))
                                             (cons _L161655_ '()))))
                                      (declare (not safe))
                                      (cons __tmp164292 __tmp164291)))
                                   (__tmp164286
                                    (let ((__tmp164287
                                           (let ((__tmp164289
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'quote)))
                                                 (__tmp164288
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L161653_ '()))))
                                             (declare (not safe))
                                             (cons __tmp164289 __tmp164288))))
                                      (declare (not safe))
                                      (cons __tmp164287 '()))))
                               (declare (not safe))
                               (cons __tmp164290 __tmp164286))))
                        (declare (not safe))
                        (cons _L161656_ __tmp164285))))
                 (declare (not safe))
                 (cons _L161657_ __tmp164284))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L161658_
                                                        __tmp164283))))
                                           (declare (not safe))
                                           (cons __tmp164293 __tmp164282))))
                                    (declare (not safe))
                                    (cons __tmp164296 __tmp164281))))
                             (declare (not safe))
                             (cons __tmp164299 __tmp164280))))
                      (declare (not safe))
                      (cons __tmp164302 __tmp164279))))
               (declare (not safe))
               (cons __tmp164305 __tmp164278))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp164308
                                                      __tmp164277))))
                                         (declare (not safe))
                                         (cons __tmp164311 __tmp164276)))
                                     _hd161519161647_
                                     _hd161516161637_
                                     _hd161513161627_
                                     _hd161510161617_
                                     _hd161507161607_
                                     _hd161504161597_
                                     _hd161501161587_
                                     _hd161498161577_
                                     _hd161495161567_
                                     _hd161492161557_
                                     _hd161489161547_)
                                    (_g161472161526_ _g161473161530_))))
                            (_g161472161526_ _g161473161530_))))
                    (_g161472161526_ _g161473161530_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g161472161526_
                                                     _g161473161530_))))
                                            (_g161472161526_
                                             _g161473161530_))))
                                    (_g161472161526_ _g161473161530_))))
                            (_g161472161526_ _g161473161530_))))
                    (_g161472161526_ _g161473161530_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g161472161526_
                                                     _g161473161530_))))
                                            (_g161472161526_
                                             _g161473161530_))))
                                    (_g161472161526_ _g161473161530_))))
                            (_g161472161526_ _g161473161530_))))
                    (_g161472161526_ _g161473161530_)))))
        (_g161471161707_ _$stx161468_))))
  (define |gxc[:0:]#@predicate|
    (lambda (_$stx161711_)
      (let* ((_g161715161729_
              (lambda (_g161716161725_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161716161725_))))
             (_g161714161770_
              (lambda (_g161716161733_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161716161733_))
                    (let ((_e161720161736_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161716161733_))))
                      (let ((_hd161719161740_
                             (let ()
                               (declare (not safe))
                               (##car _e161720161736_)))
                            (_tl161718161743_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161720161736_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161718161743_))
                            (let ((_e161723161746_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161718161743_))))
                              (let ((_hd161722161750_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161723161746_)))
                                    (_tl161721161753_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161723161746_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl161721161753_))
                                    ((lambda (_L161756_)
                                       (let ((__tmp164316
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!predicate)))
                                             (__tmp164312
                                              (let ((__tmp164313
                                                     (let ((__tmp164315
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp164314
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L161756_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp164315 __tmp164314))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp164313 '()))))
                                         (declare (not safe))
                                         (cons __tmp164316 __tmp164312)))
                                     _hd161722161750_)
                                    (_g161715161729_ _g161716161733_))))
                            (_g161715161729_ _g161716161733_))))
                    (_g161715161729_ _g161716161733_)))))
        (_g161714161770_ _$stx161711_))))
  (define |gxc[:0:]#@constructor|
    (lambda (_$stx161774_)
      (let* ((_g161778161792_
              (lambda (_g161779161788_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161779161788_))))
             (_g161777161833_
              (lambda (_g161779161796_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161779161796_))
                    (let ((_e161783161799_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161779161796_))))
                      (let ((_hd161782161803_
                             (let ()
                               (declare (not safe))
                               (##car _e161783161799_)))
                            (_tl161781161806_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161783161799_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161781161806_))
                            (let ((_e161786161809_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161781161806_))))
                              (let ((_hd161785161813_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161786161809_)))
                                    (_tl161784161816_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161786161809_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl161784161816_))
                                    ((lambda (_L161819_)
                                       (let ((__tmp164321
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!constructor)))
                                             (__tmp164317
                                              (let ((__tmp164318
                                                     (let ((__tmp164320
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp164319
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L161819_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp164320 __tmp164319))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp164318 '()))))
                                         (declare (not safe))
                                         (cons __tmp164321 __tmp164317)))
                                     _hd161785161813_)
                                    (_g161778161792_ _g161779161796_))))
                            (_g161778161792_ _g161779161796_))))
                    (_g161778161792_ _g161779161796_)))))
        (_g161777161833_ _$stx161774_))))
  (define |gxc[:0:]#@accessor|
    (lambda (_$stx161837_)
      (let* ((_g161841161863_
              (lambda (_g161842161859_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161842161859_))))
             (_g161840161932_
              (lambda (_g161842161867_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161842161867_))
                    (let ((_e161848161870_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161842161867_))))
                      (let ((_hd161847161874_
                             (let ()
                               (declare (not safe))
                               (##car _e161848161870_)))
                            (_tl161846161877_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161848161870_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161846161877_))
                            (let ((_e161851161880_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161846161877_))))
                              (let ((_hd161850161884_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161851161880_)))
                                    (_tl161849161887_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161851161880_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl161849161887_))
                                    (let ((_e161854161890_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl161849161887_))))
                                      (let ((_hd161853161894_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161854161890_)))
                                            (_tl161852161897_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161854161890_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl161852161897_))
                                            (let ((_e161857161900_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl161852161897_))))
                                              (let ((_hd161856161904_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e161857161900_)))
                                                    (_tl161855161907_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e161857161900_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl161855161907_))
                                                    ((lambda (_L161910_
                                                              _L161912_
                                                              _L161913_)
                                                       (let ((__tmp164331
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!accessor)))
                     (__tmp164322
                      (let ((__tmp164328
                             (let ((__tmp164330
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp164329
                                    (let ()
                                      (declare (not safe))
                                      (cons _L161913_ '()))))
                               (declare (not safe))
                               (cons __tmp164330 __tmp164329)))
                            (__tmp164323
                             (let ((__tmp164325
                                    (let ((__tmp164327
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp164326
                                           (let ()
                                             (declare (not safe))
                                             (cons _L161912_ '()))))
                                      (declare (not safe))
                                      (cons __tmp164327 __tmp164326)))
                                   (__tmp164324
                                    (let ()
                                      (declare (not safe))
                                      (cons _L161910_ '()))))
                               (declare (not safe))
                               (cons __tmp164325 __tmp164324))))
                        (declare (not safe))
                        (cons __tmp164328 __tmp164323))))
                 (declare (not safe))
                 (cons __tmp164331 __tmp164322)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd161856161904_
                                                     _hd161853161894_
                                                     _hd161850161884_)
                                                    (_g161841161863_
                                                     _g161842161867_))))
                                            (_g161841161863_
                                             _g161842161867_))))
                                    (_g161841161863_ _g161842161867_))))
                            (_g161841161863_ _g161842161867_))))
                    (_g161841161863_ _g161842161867_)))))
        (_g161840161932_ _$stx161837_))))
  (define |gxc[:0:]#@mutator|
    (lambda (_$stx161936_)
      (let* ((_g161940161962_
              (lambda (_g161941161958_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161941161958_))))
             (_g161939162031_
              (lambda (_g161941161966_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161941161966_))
                    (let ((_e161947161969_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161941161966_))))
                      (let ((_hd161946161973_
                             (let ()
                               (declare (not safe))
                               (##car _e161947161969_)))
                            (_tl161945161976_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161947161969_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161945161976_))
                            (let ((_e161950161979_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161945161976_))))
                              (let ((_hd161949161983_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161950161979_)))
                                    (_tl161948161986_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161950161979_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl161948161986_))
                                    (let ((_e161953161989_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl161948161986_))))
                                      (let ((_hd161952161993_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161953161989_)))
                                            (_tl161951161996_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161953161989_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl161951161996_))
                                            (let ((_e161956161999_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl161951161996_))))
                                              (let ((_hd161955162003_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e161956161999_)))
                                                    (_tl161954162006_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e161956161999_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl161954162006_))
                                                    ((lambda (_L162009_
                                                              _L162011_
                                                              _L162012_)
                                                       (let ((__tmp164341
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!mutator)))
                     (__tmp164332
                      (let ((__tmp164338
                             (let ((__tmp164340
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp164339
                                    (let ()
                                      (declare (not safe))
                                      (cons _L162012_ '()))))
                               (declare (not safe))
                               (cons __tmp164340 __tmp164339)))
                            (__tmp164333
                             (let ((__tmp164335
                                    (let ((__tmp164337
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp164336
                                           (let ()
                                             (declare (not safe))
                                             (cons _L162011_ '()))))
                                      (declare (not safe))
                                      (cons __tmp164337 __tmp164336)))
                                   (__tmp164334
                                    (let ()
                                      (declare (not safe))
                                      (cons _L162009_ '()))))
                               (declare (not safe))
                               (cons __tmp164335 __tmp164334))))
                        (declare (not safe))
                        (cons __tmp164338 __tmp164333))))
                 (declare (not safe))
                 (cons __tmp164341 __tmp164332)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd161955162003_
                                                     _hd161952161993_
                                                     _hd161949161983_)
                                                    (_g161940161962_
                                                     _g161941161966_))))
                                            (_g161940161962_
                                             _g161941161966_))))
                                    (_g161940161962_ _g161941161966_))))
                            (_g161940161962_ _g161941161966_))))
                    (_g161940161962_ _g161941161966_)))))
        (_g161939162031_ _$stx161936_))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx162035_)
      (let* ((___stx163850163851_ _$stx162035_)
             (_g162043162111_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx163850163851_)))))
        (let ((___kont163853163854_
               (lambda (_L162389_ _L162391_)
                 (let ((__tmp164362
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp164342
                        (let ((__tmp164358
                               (let ((__tmp164361
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp164359
                                      (let ((__tmp164360
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp164360 '()))))
                                 (declare (not safe))
                                 (cons __tmp164361 __tmp164359)))
                              (__tmp164343
                               (let ((__tmp164355
                                      (let ((__tmp164357
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp164356
                                             (let ()
                                               (declare (not safe))
                                               (cons _L162391_ '()))))
                                        (declare (not safe))
                                        (cons __tmp164357 __tmp164356)))
                                     (__tmp164344
                                      (let ((__tmp164345
                                             (let ((__tmp164346
                                                    (let ((__tmp164347
                                                           (let ((__tmp164354
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp164348
                          (let ((__tmp164349
                                 (let ((__tmp164353
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '@lambda)))
                                       (__tmp164350
                                        (let ((__tmp164351
                                               (let ((__tmp164352
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L162389_ '()))))
                                                 (declare (not safe))
                                                 (cons 'inline: __tmp164352))))
                                          (declare (not safe))
                                          (cons _L162391_ __tmp164351))))
                                   (declare (not safe))
                                   (cons __tmp164353 __tmp164350))))
                            (declare (not safe))
                            (cons __tmp164349 '()))))
                     (declare (not safe))
                     (cons __tmp164354 __tmp164348))))
              (declare (not safe))
              (cons __tmp164347 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L162389_ __tmp164346))))
                                        (declare (not safe))
                                        (cons '#f __tmp164345))))
                                 (declare (not safe))
                                 (cons __tmp164355 __tmp164344))))
                          (declare (not safe))
                          (cons __tmp164358 __tmp164343))))
                   (declare (not safe))
                   (cons __tmp164362 __tmp164342))))
              (___kont163855163856_
               (lambda (_L162320_ _L162322_)
                 (let ((__tmp164363
                        (let ((__tmp164364
                               (let ((__tmp164365
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L162320_ __tmp164365))))
                          (declare (not safe))
                          (cons 'primitive: __tmp164364))))
                   (declare (not safe))
                   (cons _L162322_ __tmp164363))))
              (___kont163857163858_
               (lambda (_L162259_ _L162261_)
                 (let ((__tmp164379
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp164366
                        (let ((__tmp164375
                               (let ((__tmp164378
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp164376
                                      (let ((__tmp164377
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp164377 '()))))
                                 (declare (not safe))
                                 (cons __tmp164378 __tmp164376)))
                              (__tmp164367
                               (let ((__tmp164372
                                      (let ((__tmp164374
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp164373
                                             (let ()
                                               (declare (not safe))
                                               (cons _L162261_ '()))))
                                        (declare (not safe))
                                        (cons __tmp164374 __tmp164373)))
                                     (__tmp164368
                                      (let ((__tmp164369
                                             (let ((__tmp164371
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp164370
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L162259_ '()))))
                                               (declare (not safe))
                                               (cons __tmp164371
                                                     __tmp164370))))
                                        (declare (not safe))
                                        (cons __tmp164369 '()))))
                                 (declare (not safe))
                                 (cons __tmp164372 __tmp164368))))
                          (declare (not safe))
                          (cons __tmp164375 __tmp164367))))
                   (declare (not safe))
                   (cons __tmp164379 __tmp164366))))
              (___kont163859163860_
               (lambda (_L162191_ _L162193_)
                 (let ((__tmp164393
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp164380
                        (let ((__tmp164389
                               (let ((__tmp164392
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp164390
                                      (let ((__tmp164391
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp164391 '()))))
                                 (declare (not safe))
                                 (cons __tmp164392 __tmp164390)))
                              (__tmp164381
                               (let ((__tmp164386
                                      (let ((__tmp164388
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp164387
                                             (let ()
                                               (declare (not safe))
                                               (cons _L162193_ '()))))
                                        (declare (not safe))
                                        (cons __tmp164388 __tmp164387)))
                                     (__tmp164382
                                      (let ((__tmp164383
                                             (let ((__tmp164385
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp164384
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L162191_ '()))))
                                               (declare (not safe))
                                               (cons __tmp164385
                                                     __tmp164384))))
                                        (declare (not safe))
                                        (cons __tmp164383 '()))))
                                 (declare (not safe))
                                 (cons __tmp164386 __tmp164382))))
                          (declare (not safe))
                          (cons __tmp164389 __tmp164381))))
                   (declare (not safe))
                   (cons __tmp164393 __tmp164380))))
              (___kont163861163862_
               (lambda (_L162138_ _L162140_)
                 (let ((__tmp164394
                        (let ((__tmp164395
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L162138_ __tmp164395))))
                   (declare (not safe))
                   (cons _L162140_ __tmp164394)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx163850163851_))
              (let ((_e162049162345_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx163850163851_))))
                (let ((_tl162047162352_
                       (let () (declare (not safe)) (##cdr _e162049162345_)))
                      (_hd162048162349_
                       (let () (declare (not safe)) (##car _e162049162345_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl162047162352_))
                      (let ((_e162052162355_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl162047162352_))))
                        (let ((_tl162050162362_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e162052162355_)))
                              (_hd162051162359_
                               (let ()
                                 (declare (not safe))
                                 (##car _e162052162355_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl162050162362_))
                              (let ((_e162055162365_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl162050162362_))))
                                (let ((_tl162053162372_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e162055162365_)))
                                      (_hd162054162369_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e162055162365_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd162054162369_))
                                      (let ((_e162056162375_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd162054162369_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e162056162375_
                                                      'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl162053162372_))
                                                (let ((_e162059162379_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl162053162372_))))
                                                  (let ((_tl162057162386_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e162059162379_)))
                                                        (_hd162058162383_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e162059162379_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl162057162386_))
                                                        (___kont163853163854_
                                                         _hd162058162383_
                                                         _hd162051162359_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd162051162359_))
                                                            (let ((_e162068162306_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd162051162359_))))
                      (declare (not safe))
                      (_g162043162111_))
                    (let () (declare (not safe)) (_g162043162111_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd162051162359_))
                                                    (let ((_e162068162306_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd162051162359_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e162068162306_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl162053162372_))
                      (___kont163855163856_ _hd162054162369_ _hd162048162349_)
                      (let () (declare (not safe)) (_g162043162111_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl162053162372_))
                      (___kont163859163860_ _hd162054162369_ _hd162051162359_)
                      (let () (declare (not safe)) (_g162043162111_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl162053162372_))
                                                        (___kont163859163860_
                                                         _hd162054162369_
                                                         _hd162051162359_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g162043162111_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd162051162359_))
                                                (let ((_e162068162306_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd162051162359_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e162068162306_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl162053162372_))
                                                          (___kont163855163856_
                                                           _hd162054162369_
                                                           _hd162048162349_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl162053162372_))
                      (let ((_e162086162249_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl162053162372_))))
                        (let ((_tl162084162256_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e162086162249_)))
                              (_hd162085162253_
                               (let ()
                                 (declare (not safe))
                                 (##car _e162086162249_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl162084162256_))
                              (___kont163857163858_
                               _hd162085162253_
                               _hd162054162369_)
                              (let ()
                                (declare (not safe))
                                (_g162043162111_)))))
                      (let () (declare (not safe)) (_g162043162111_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl162053162372_))
                  (___kont163859163860_ _hd162054162369_ _hd162051162359_)
                  (let () (declare (not safe)) (_g162043162111_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl162053162372_))
                                                    (___kont163859163860_
                                                     _hd162054162369_
                                                     _hd162051162359_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g162043162111_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd162051162359_))
                                          (let ((_e162068162306_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd162051162359_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e162068162306_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl162053162372_))
                                                    (___kont163855163856_
                                                     _hd162054162369_
                                                     _hd162048162349_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl162053162372_))
                                                        (let ((_e162086162249_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl162053162372_))))
                  (let ((_tl162084162256_
                         (let () (declare (not safe)) (##cdr _e162086162249_)))
                        (_hd162085162253_
                         (let ()
                           (declare (not safe))
                           (##car _e162086162249_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl162084162256_))
                        (___kont163857163858_
                         _hd162085162253_
                         _hd162054162369_)
                        (let () (declare (not safe)) (_g162043162111_)))))
                (let () (declare (not safe)) (_g162043162111_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl162053162372_))
                                                    (___kont163859163860_
                                                     _hd162054162369_
                                                     _hd162051162359_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g162043162111_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl162053162372_))
                                              (___kont163859163860_
                                               _hd162054162369_
                                               _hd162051162359_)
                                              (let ()
                                                (declare (not safe))
                                                (_g162043162111_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd162051162359_))
                                  (let ((_e162068162306_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd162051162359_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl162050162362_))
                                        (___kont163861163862_
                                         _hd162051162359_
                                         _hd162048162349_)
                                        (let ()
                                          (declare (not safe))
                                          (_g162043162111_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl162050162362_))
                                      (___kont163861163862_
                                       _hd162051162359_
                                       _hd162048162349_)
                                      (let ()
                                        (declare (not safe))
                                        (_g162043162111_)))))))
                      (let () (declare (not safe)) (_g162043162111_)))))
              (let () (declare (not safe)) (_g162043162111_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx162413_)
      (let* ((___stx163990163991_ _$stx162413_)
             (_g162418162473_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx163990163991_)))))
        (let ((___kont163993163994_
               (lambda (_L162658_ _L162660_)
                 (let ((__tmp164411
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp164396
                        (let ((__tmp164407
                               (let ((__tmp164410
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp164408
                                      (let ((__tmp164409
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp164409 '()))))
                                 (declare (not safe))
                                 (cons __tmp164410 __tmp164408)))
                              (__tmp164397
                               (let ((__tmp164398
                                      (let ((__tmp164406
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp164399
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L162658_
                                                  _L162660_))
                                               (let ((__tmp164400
                                                      (lambda (_g162677162681_
                                                               _g162678162684_
                                                               _g162679162686_)
                                                        (let ((__tmp164401
                                                               (let ((__tmp164405
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp164402
                              (let ((__tmp164403
                                     (let ((__tmp164404
                                            (let ()
                                              (declare (not safe))
                                              (cons _g162677162681_ '()))))
                                       (declare (not safe))
                                       (cons _g162678162684_ __tmp164404))))
                                (declare (not safe))
                                (cons 'primitive: __tmp164403))))
                         (declare (not safe))
                         (cons __tmp164405 __tmp164402))))
                  (declare (not safe))
                  (cons __tmp164401 _g162679162686_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp164400
                                                         '()
                                                         _L162658_
                                                         _L162660_)))))
                                        (declare (not safe))
                                        (cons __tmp164406 __tmp164399))))
                                 (declare (not safe))
                                 (cons __tmp164398 '()))))
                          (declare (not safe))
                          (cons __tmp164407 __tmp164397))))
                   (declare (not safe))
                   (cons __tmp164411 __tmp164396))))
              (___kont163997163998_
               (lambda (_L162544_ _L162546_)
                 (let ((__tmp164426
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp164412
                        (let ((__tmp164422
                               (let ((__tmp164425
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp164423
                                      (let ((__tmp164424
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp164424 '()))))
                                 (declare (not safe))
                                 (cons __tmp164425 __tmp164423)))
                              (__tmp164413
                               (let ((__tmp164414
                                      (let ((__tmp164421
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp164415
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L162544_
                                                  _L162546_))
                                               (let ((__tmp164416
                                                      (lambda (_g162561162565_
                                                               _g162562162568_
                                                               _g162563162570_)
                                                        (let ((__tmp164417
                                                               (let ((__tmp164420
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp164418
                              (let ((__tmp164419
                                     (let ()
                                       (declare (not safe))
                                       (cons _g162561162565_ '()))))
                                (declare (not safe))
                                (cons _g162562162568_ __tmp164419))))
                         (declare (not safe))
                         (cons __tmp164420 __tmp164418))))
                  (declare (not safe))
                  (cons __tmp164417 _g162563162570_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp164416
                                                         '()
                                                         _L162544_
                                                         _L162546_)))))
                                        (declare (not safe))
                                        (cons __tmp164421 __tmp164415))))
                                 (declare (not safe))
                                 (cons __tmp164414 '()))))
                          (declare (not safe))
                          (cons __tmp164422 __tmp164413))))
                   (declare (not safe))
                   (cons __tmp164426 __tmp164412)))))
          (let* ((___match164041164042_
                  (lambda (_e162450162480_
                           _hd162449162484_
                           _tl162448162487_
                           ___splice163999164000_
                           _target162451162490_
                           _tl162453162493_)
                    (letrec ((_loop162454162496_
                              (lambda (_hd162452162500_
                                       _dispatch162458162503_
                                       _arity162459162505_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd162452162500_))
                                    (let ((_e162455162508_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd162452162500_))))
                                      (let ((_lp-tl162457162515_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e162455162508_)))
                                            (_lp-hd162456162512_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e162455162508_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd162456162512_))
                                            (let ((_e162464162518_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd162456162512_))))
                                              (let ((_tl162462162525_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e162464162518_)))
                                                    (_hd162463162522_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e162464162518_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl162462162525_))
                                                    (let ((_e162467162528_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl162462162525_))))
                                                      (let ((_tl162465162535_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e162467162528_)))
                    (_hd162466162532_
                     (let () (declare (not safe)) (##car _e162467162528_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl162465162535_))
                    (_loop162454162496_
                     _lp-tl162457162515_
                     (let ()
                       (declare (not safe))
                       (cons _hd162466162532_ _dispatch162458162503_))
                     (let ()
                       (declare (not safe))
                       (cons _hd162463162522_ _arity162459162505_)))
                    (let () (declare (not safe)) (_g162418162473_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g162418162473_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g162418162473_)))))
                                    (let ((_arity162461162541_
                                           (reverse _arity162459162505_))
                                          (_dispatch162460162538_
                                           (reverse _dispatch162458162503_)))
                                      (___kont163997163998_
                                       _dispatch162460162538_
                                       _arity162461162541_))))))
                      (_loop162454162496_ _target162451162490_ '() '()))))
                 (___match164033164034_
                  (lambda (_e162450162480_ _hd162449162484_ _tl162448162487_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl162448162487_))
                        (let ((___splice163999164000_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl162448162487_
                                  '0))))
                          (let ((_tl162453162493_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice163999164000_ '1)))
                                (_target162451162490_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice163999164000_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl162453162493_))
                                (___match164041164042_
                                 _e162450162480_
                                 _hd162449162484_
                                 _tl162448162487_
                                 ___splice163999164000_
                                 _target162451162490_
                                 _tl162453162493_)
                                (let ()
                                  (declare (not safe))
                                  (_g162418162473_)))))
                        (let () (declare (not safe)) (_g162418162473_)))))
                 (___match164027164028_
                  (lambda (_e162424162580_
                           _hd162423162584_
                           _tl162422162587_
                           _e162427162590_
                           _hd162426162594_
                           _tl162425162597_
                           _e162428162600_
                           ___splice163995163996_
                           _target162429162604_
                           _tl162431162607_)
                    (letrec ((_loop162432162610_
                              (lambda (_hd162430162614_
                                       _dispatch162436162617_
                                       _arity162437162619_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd162430162614_))
                                    (let ((_e162433162622_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd162430162614_))))
                                      (let ((_lp-tl162435162629_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e162433162622_)))
                                            (_lp-hd162434162626_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e162433162622_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd162434162626_))
                                            (let ((_e162442162632_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd162434162626_))))
                                              (let ((_tl162440162639_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e162442162632_)))
                                                    (_hd162441162636_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e162442162632_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl162440162639_))
                                                    (let ((_e162445162642_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl162440162639_))))
                                                      (let ((_tl162443162649_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e162445162642_)))
                    (_hd162444162646_
                     (let () (declare (not safe)) (##car _e162445162642_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl162443162649_))
                    (_loop162432162610_
                     _lp-tl162435162629_
                     (let ()
                       (declare (not safe))
                       (cons _hd162444162646_ _dispatch162436162617_))
                     (let ()
                       (declare (not safe))
                       (cons _hd162441162636_ _arity162437162619_)))
                    (___match164033164034_
                     _e162424162580_
                     _hd162423162584_
                     _tl162422162587_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match164033164034_
                                                     _e162424162580_
                                                     _hd162423162584_
                                                     _tl162422162587_))))
                                            (___match164033164034_
                                             _e162424162580_
                                             _hd162423162584_
                                             _tl162422162587_))))
                                    (let ((_arity162439162655_
                                           (reverse _arity162437162619_))
                                          (_dispatch162438162652_
                                           (reverse _dispatch162436162617_)))
                                      (___kont163993163994_
                                       _dispatch162438162652_
                                       _arity162439162655_))))))
                      (_loop162432162610_ _target162429162604_ '() '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx163990163991_))
                (let ((_e162424162580_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx163990163991_))))
                  (let ((_tl162422162587_
                         (let () (declare (not safe)) (##cdr _e162424162580_)))
                        (_hd162423162584_
                         (let ()
                           (declare (not safe))
                           (##car _e162424162580_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl162422162587_))
                        (let ((_e162427162590_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl162422162587_))))
                          (let ((_tl162425162597_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e162427162590_)))
                                (_hd162426162594_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e162427162590_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd162426162594_))
                                (let ((_e162428162600_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd162426162594_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e162428162600_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl162425162597_))
                                          (let ((___splice163995163996_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl162425162597_
                                                    '0))))
                                            (let ((_tl162431162607_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice163995163996_
                                                      '1)))
                                                  (_target162429162604_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice163995163996_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl162431162607_))
                                                  (___match164027164028_
                                                   _e162424162580_
                                                   _hd162423162584_
                                                   _tl162422162587_
                                                   _e162427162590_
                                                   _hd162426162594_
                                                   _tl162425162597_
                                                   _e162428162600_
                                                   ___splice163995163996_
                                                   _target162429162604_
                                                   _tl162431162607_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl162422162587_))
                                                      (let ((___splice163999164000_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl162422162587_ '0))))
                (let ((_tl162453162493_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice163999164000_ '1)))
                      (_target162451162490_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice163999164000_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl162453162493_))
                      (___match164041164042_
                       _e162424162580_
                       _hd162423162584_
                       _tl162422162587_
                       ___splice163999164000_
                       _target162451162490_
                       _tl162453162493_)
                      (let () (declare (not safe)) (_g162418162473_)))))
              (let () (declare (not safe)) (_g162418162473_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl162422162587_))
                                              (let ((___splice163999164000_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl162422162587_
                                                        '0))))
                                                (let ((_tl162453162493_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice163999164000_
                                                          '1)))
                                                      (_target162451162490_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice163999164000_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl162453162493_))
                                                      (___match164041164042_
                                                       _e162424162580_
                                                       _hd162423162584_
                                                       _tl162422162587_
                                                       ___splice163999164000_
                                                       _target162451162490_
                                                       _tl162453162493_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g162418162473_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g162418162473_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl162422162587_))
                                          (let ((___splice163999164000_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl162422162587_
                                                    '0))))
                                            (let ((_tl162453162493_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice163999164000_
                                                      '1)))
                                                  (_target162451162490_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice163999164000_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl162453162493_))
                                                  (___match164041164042_
                                                   _e162424162580_
                                                   _hd162423162584_
                                                   _tl162422162587_
                                                   ___splice163999164000_
                                                   _target162451162490_
                                                   _tl162453162493_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g162418162473_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g162418162473_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl162422162587_))
                                    (let ((___splice163999164000_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl162422162587_
                                              '0))))
                                      (let ((_tl162453162493_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice163999164000_
                                                '1)))
                                            (_target162451162490_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice163999164000_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl162453162493_))
                                            (___match164041164042_
                                             _e162424162580_
                                             _hd162423162584_
                                             _tl162422162587_
                                             ___splice163999164000_
                                             _target162451162490_
                                             _tl162453162493_)
                                            (let ()
                                              (declare (not safe))
                                              (_g162418162473_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g162418162473_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl162422162587_))
                            (let ((___splice163999164000_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl162422162587_
                                      '0))))
                              (let ((_tl162453162493_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice163999164000_
                                        '1)))
                                    (_target162451162490_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice163999164000_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl162453162493_))
                                    (___match164041164042_
                                     _e162424162580_
                                     _hd162423162584_
                                     _tl162422162587_
                                     ___splice163999164000_
                                     _target162451162490_
                                     _tl162453162493_)
                                    (let ()
                                      (declare (not safe))
                                      (_g162418162473_)))))
                            (let () (declare (not safe)) (_g162418162473_))))))
                (let () (declare (not safe)) (_g162418162473_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx162695_)
      (let* ((_g162699162717_
              (lambda (_g162700162713_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g162700162713_))))
             (_g162698162772_
              (lambda (_g162700162721_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g162700162721_))
                    (let ((_e162705162724_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g162700162721_))))
                      (let ((_hd162704162728_
                             (let ()
                               (declare (not safe))
                               (##car _e162705162724_)))
                            (_tl162703162731_
                             (let ()
                               (declare (not safe))
                               (##cdr _e162705162724_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl162703162731_))
                            (let ((_e162708162734_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl162703162731_))))
                              (let ((_hd162707162738_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e162708162734_)))
                                    (_tl162706162741_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e162708162734_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl162706162741_))
                                    (let ((_e162711162744_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl162706162741_))))
                                      (let ((_hd162710162748_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e162711162744_)))
                                            (_tl162709162751_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e162711162744_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl162709162751_))
                                            ((lambda (_L162754_ _L162756_)
                                               (let ((__tmp164440
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp164427
                                                      (let ((__tmp164436
                                                             (let ((__tmp164439
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp164437
                            (let ((__tmp164438
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp164438 '()))))
                       (declare (not safe))
                       (cons __tmp164439 __tmp164437)))
                    (__tmp164428
                     (let ((__tmp164433
                            (let ((__tmp164435
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp164434
                                   (let ()
                                     (declare (not safe))
                                     (cons _L162756_ '()))))
                              (declare (not safe))
                              (cons __tmp164435 __tmp164434)))
                           (__tmp164429
                            (let ((__tmp164430
                                   (let ((__tmp164432
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp164431
                                          (let ()
                                            (declare (not safe))
                                            (cons _L162754_ '()))))
                                     (declare (not safe))
                                     (cons __tmp164432 __tmp164431))))
                              (declare (not safe))
                              (cons __tmp164430 '()))))
                       (declare (not safe))
                       (cons __tmp164433 __tmp164429))))
                (declare (not safe))
                (cons __tmp164436 __tmp164428))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp164440
                                                       __tmp164427)))
                                             _hd162710162748_
                                             _hd162707162738_)
                                            (_g162699162717_
                                             _g162700162721_))))
                                    (_g162699162717_ _g162700162721_))))
                            (_g162699162717_ _g162700162721_))))
                    (_g162699162717_ _g162700162721_)))))
        (_g162698162772_ _$stx162695_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx162776_)
      (let* ((_g162780162798_
              (lambda (_g162781162794_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g162781162794_))))
             (_g162779162853_
              (lambda (_g162781162802_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g162781162802_))
                    (let ((_e162786162805_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g162781162802_))))
                      (let ((_hd162785162809_
                             (let ()
                               (declare (not safe))
                               (##car _e162786162805_)))
                            (_tl162784162812_
                             (let ()
                               (declare (not safe))
                               (##cdr _e162786162805_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl162784162812_))
                            (let ((_e162789162815_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl162784162812_))))
                              (let ((_hd162788162819_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e162789162815_)))
                                    (_tl162787162822_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e162789162815_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl162787162822_))
                                    (let ((_e162792162825_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl162787162822_))))
                                      (let ((_hd162791162829_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e162792162825_)))
                                            (_tl162790162832_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e162792162825_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl162790162832_))
                                            ((lambda (_L162835_ _L162837_)
                                               (let ((__tmp164454
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp164441
                                                      (let ((__tmp164450
                                                             (let ((__tmp164453
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp164451
                            (let ((__tmp164452
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp164452 '()))))
                       (declare (not safe))
                       (cons __tmp164453 __tmp164451)))
                    (__tmp164442
                     (let ((__tmp164447
                            (let ((__tmp164449
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp164448
                                   (let ()
                                     (declare (not safe))
                                     (cons _L162837_ '()))))
                              (declare (not safe))
                              (cons __tmp164449 __tmp164448)))
                           (__tmp164443
                            (let ((__tmp164444
                                   (let ((__tmp164446
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp164445
                                          (let ()
                                            (declare (not safe))
                                            (cons _L162835_ '()))))
                                     (declare (not safe))
                                     (cons __tmp164446 __tmp164445))))
                              (declare (not safe))
                              (cons __tmp164444 '()))))
                       (declare (not safe))
                       (cons __tmp164447 __tmp164443))))
                (declare (not safe))
                (cons __tmp164450 __tmp164442))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp164454
                                                       __tmp164441)))
                                             _hd162791162829_
                                             _hd162788162819_)
                                            (_g162780162798_
                                             _g162781162802_))))
                                    (_g162780162798_ _g162781162802_))))
                            (_g162780162798_ _g162781162802_))))
                    (_g162780162798_ _g162781162802_)))))
        (_g162779162853_ _$stx162776_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx162857_)
      (let* ((___stx164044164045_ _$stx162857_)
             (_g162864162935_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx164044164045_)))))
        (let ((___kont164047164048_
               (lambda (_L163226_ _L163228_)
                 (let ((__tmp164460
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp164455
                        (let ((__tmp164456
                               (let ((__tmp164457
                                      (let ((__tmp164459
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp164458
                                             (let ()
                                               (declare (not safe))
                                               (cons _L163226_ '()))))
                                        (declare (not safe))
                                        (cons __tmp164459 __tmp164458))))
                                 (declare (not safe))
                                 (cons __tmp164457 '()))))
                          (declare (not safe))
                          (cons _L163228_ __tmp164456))))
                   (declare (not safe))
                   (cons __tmp164460 __tmp164455))))
              (___kont164049164050_
               (lambda (_L163145_ _L163147_)
                 (let ((__tmp164469
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp164461
                        (let ((__tmp164462
                               (let ((__tmp164463
                                      (let ((__tmp164468
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp164464
                                             (let ((__tmp164465
                                                    (lambda (_g163166163169_
                                                             _g163167163172_)
                                                      (let ((__tmp164466
                                                             (let ((__tmp164467
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g163166163169_ __tmp164467))))
                (declare (not safe))
                (cons __tmp164466 _g163167163172_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp164465
                                                       '()
                                                       _L163145_))))
                                        (declare (not safe))
                                        (cons __tmp164468 __tmp164464))))
                                 (declare (not safe))
                                 (cons __tmp164463 '()))))
                          (declare (not safe))
                          (cons _L163147_ __tmp164462))))
                   (declare (not safe))
                   (cons __tmp164469 __tmp164461))))
              (___kont164053164054_
               (lambda (_L163057_ _L163059_)
                 (let ((__tmp164476
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp164470
                        (let ((__tmp164471
                               (let ((__tmp164472
                                      (let ((__tmp164475
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp164473
                                             (let ((__tmp164474
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L163057_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp164474))))
                                        (declare (not safe))
                                        (cons __tmp164475 __tmp164473))))
                                 (declare (not safe))
                                 (cons __tmp164472 '()))))
                          (declare (not safe))
                          (cons _L163059_ __tmp164471))))
                   (declare (not safe))
                   (cons __tmp164476 __tmp164470))))
              (___kont164055164056_
               (lambda (_L162992_ _L162994_)
                 (let ((__tmp164486
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp164477
                        (let ((__tmp164478
                               (let ((__tmp164479
                                      (let ((__tmp164485
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp164480
                                             (let ((__tmp164481
                                                    (let ((__tmp164482
                                                           (lambda (_g163011163014_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g163012163017_)
                     (let ((__tmp164483
                            (let ((__tmp164484
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g163011163014_ __tmp164484))))
                       (declare (not safe))
                       (cons __tmp164483 _g163012163017_)))))
              (declare (not safe))
              (foldr1 __tmp164482 '() _L162992_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp164481))))
                                        (declare (not safe))
                                        (cons __tmp164485 __tmp164480))))
                                 (declare (not safe))
                                 (cons __tmp164479 '()))))
                          (declare (not safe))
                          (cons _L162994_ __tmp164478))))
                   (declare (not safe))
                   (cons __tmp164486 __tmp164477)))))
          (let* ((___match164163164164_
                  (lambda (_e162917162942_
                           _hd162916162946_
                           _tl162915162949_
                           _e162920162952_
                           _hd162919162956_
                           _tl162918162959_
                           ___splice164057164058_
                           _target162921162962_
                           _tl162923162965_)
                    (letrec ((_loop162924162968_
                              (lambda (_hd162922162972_ _arity162928162975_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd162922162972_))
                                    (let ((_e162925162978_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd162922162972_))))
                                      (let ((_lp-tl162927162985_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e162925162978_)))
                                            (_lp-hd162926162982_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e162925162978_))))
                                        (_loop162924162968_
                                         _lp-tl162927162985_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd162926162982_
                                                 _arity162928162975_)))))
                                    (let ((_arity162929162988_
                                           (reverse _arity162928162975_)))
                                      (___kont164055164056_
                                       _arity162929162988_
                                       _hd162919162956_))))))
                      (_loop162924162968_ _target162921162962_ '()))))
                 (___match164123164124_
                  (lambda (_e162885163081_
                           _hd162884163085_
                           _tl162883163088_
                           _e162888163091_
                           _hd162887163095_
                           _tl162886163098_
                           _e162891163101_
                           _hd162890163105_
                           _tl162889163108_
                           _e162892163111_
                           ___splice164051164052_
                           _target162893163115_
                           _tl162895163118_)
                    (letrec ((_loop162896163121_
                              (lambda (_hd162894163125_ _arity162900163128_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd162894163125_))
                                    (let ((_e162897163131_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd162894163125_))))
                                      (let ((_lp-tl162899163138_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e162897163131_)))
                                            (_lp-hd162898163135_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e162897163131_))))
                                        (_loop162896163121_
                                         _lp-tl162899163138_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd162898163135_
                                                 _arity162900163128_)))))
                                    (let ((_arity162901163141_
                                           (reverse _arity162900163128_)))
                                      (___kont164049164050_
                                       _arity162901163141_
                                       _hd162887163095_))))))
                      (_loop162896163121_ _target162893163115_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx164044164045_))
                (let ((_e162870163182_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx164044164045_))))
                  (let ((_tl162868163189_
                         (let () (declare (not safe)) (##cdr _e162870163182_)))
                        (_hd162869163186_
                         (let ()
                           (declare (not safe))
                           (##car _e162870163182_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl162868163189_))
                        (let ((_e162873163192_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl162868163189_))))
                          (let ((_tl162871163199_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e162873163192_)))
                                (_hd162872163196_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e162873163192_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl162871163199_))
                                (let ((_e162876163202_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl162871163199_))))
                                  (let ((_tl162874163209_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e162876163202_)))
                                        (_hd162875163206_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e162876163202_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd162875163206_))
                                        (let ((_e162877163212_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd162875163206_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e162877163212_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl162874163209_))
                                                  (let ((_e162880163216_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl162874163209_))))
                                                    (let ((_tl162878163223_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e162880163216_)))
                                                          (_hd162879163220_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e162880163216_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl162878163223_))
                                                          (___kont164047164048_
                                                           _hd162879163220_
                                                           _hd162872163196_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl162874163209_))
                      (let ((___splice164051164052_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl162874163209_ '0))))
                        (let ((_tl162895163118_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice164051164052_ '1)))
                              (_target162893163115_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice164051164052_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl162895163118_))
                              (___match164123164124_
                               _e162870163182_
                               _hd162869163186_
                               _tl162868163189_
                               _e162873163192_
                               _hd162872163196_
                               _tl162871163199_
                               _e162876163202_
                               _hd162875163206_
                               _tl162874163209_
                               _e162877163212_
                               ___splice164051164052_
                               _target162893163115_
                               _tl162895163118_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl162871163199_))
                                  (let ((___splice164057164058_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl162871163199_
                                            '0))))
                                    (let ((_tl162923162965_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice164057164058_
                                              '1)))
                                          (_target162921162962_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice164057164058_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl162923162965_))
                                          (___match164163164164_
                                           _e162870163182_
                                           _hd162869163186_
                                           _tl162868163189_
                                           _e162873163192_
                                           _hd162872163196_
                                           _tl162871163199_
                                           ___splice164057164058_
                                           _target162921162962_
                                           _tl162923162965_)
                                          (let ()
                                            (declare (not safe))
                                            (_g162864162935_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g162864162935_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl162871163199_))
                          (let ((___splice164057164058_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl162871163199_
                                    '0))))
                            (let ((_tl162923162965_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice164057164058_ '1)))
                                  (_target162921162962_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice164057164058_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl162923162965_))
                                  (___match164163164164_
                                   _e162870163182_
                                   _hd162869163186_
                                   _tl162868163189_
                                   _e162873163192_
                                   _hd162872163196_
                                   _tl162871163199_
                                   ___splice164057164058_
                                   _target162921162962_
                                   _tl162923162965_)
                                  (let ()
                                    (declare (not safe))
                                    (_g162864162935_)))))
                          (let () (declare (not safe)) (_g162864162935_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl162874163209_))
                                                      (let ((___splice164051164052_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl162874163209_ '0))))
                (let ((_tl162895163118_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice164051164052_ '1)))
                      (_target162893163115_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice164051164052_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl162895163118_))
                      (___match164123164124_
                       _e162870163182_
                       _hd162869163186_
                       _tl162868163189_
                       _e162873163192_
                       _hd162872163196_
                       _tl162871163199_
                       _e162876163202_
                       _hd162875163206_
                       _tl162874163209_
                       _e162877163212_
                       ___splice164051164052_
                       _target162893163115_
                       _tl162895163118_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl162874163209_))
                          (___kont164053164054_
                           _hd162875163206_
                           _hd162872163196_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl162871163199_))
                              (let ((___splice164057164058_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl162871163199_
                                        '0))))
                                (let ((_tl162923162965_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice164057164058_
                                          '1)))
                                      (_target162921162962_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice164057164058_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl162923162965_))
                                      (___match164163164164_
                                       _e162870163182_
                                       _hd162869163186_
                                       _tl162868163189_
                                       _e162873163192_
                                       _hd162872163196_
                                       _tl162871163199_
                                       ___splice164057164058_
                                       _target162921162962_
                                       _tl162923162965_)
                                      (let ()
                                        (declare (not safe))
                                        (_g162864162935_)))))
                              (let ()
                                (declare (not safe))
                                (_g162864162935_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl162874163209_))
                  (___kont164053164054_ _hd162875163206_ _hd162872163196_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl162871163199_))
                      (let ((___splice164057164058_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl162871163199_ '0))))
                        (let ((_tl162923162965_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice164057164058_ '1)))
                              (_target162921162962_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice164057164058_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl162923162965_))
                              (___match164163164164_
                               _e162870163182_
                               _hd162869163186_
                               _tl162868163189_
                               _e162873163192_
                               _hd162872163196_
                               _tl162871163199_
                               ___splice164057164058_
                               _target162921162962_
                               _tl162923162965_)
                              (let ()
                                (declare (not safe))
                                (_g162864162935_)))))
                      (let () (declare (not safe)) (_g162864162935_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl162874163209_))
                                                  (___kont164053164054_
                                                   _hd162875163206_
                                                   _hd162872163196_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl162871163199_))
                                                      (let ((___splice164057164058_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl162871163199_ '0))))
                (let ((_tl162923162965_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice164057164058_ '1)))
                      (_target162921162962_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice164057164058_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl162923162965_))
                      (___match164163164164_
                       _e162870163182_
                       _hd162869163186_
                       _tl162868163189_
                       _e162873163192_
                       _hd162872163196_
                       _tl162871163199_
                       ___splice164057164058_
                       _target162921162962_
                       _tl162923162965_)
                      (let () (declare (not safe)) (_g162864162935_)))))
              (let () (declare (not safe)) (_g162864162935_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl162874163209_))
                                            (___kont164053164054_
                                             _hd162875163206_
                                             _hd162872163196_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl162871163199_))
                                                (let ((___splice164057164058_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl162871163199_
                                                          '0))))
                                                  (let ((_tl162923162965_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice164057164058_
                                                            '1)))
                                                        (_target162921162962_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice164057164058_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl162923162965_))
                                                        (___match164163164164_
                                                         _e162870163182_
                                                         _hd162869163186_
                                                         _tl162868163189_
                                                         _e162873163192_
                                                         _hd162872163196_
                                                         _tl162871163199_
                                                         ___splice164057164058_
                                                         _target162921162962_
                                                         _tl162923162965_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g162864162935_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g162864162935_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl162871163199_))
                                    (let ((___splice164057164058_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl162871163199_
                                              '0))))
                                      (let ((_tl162923162965_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice164057164058_
                                                '1)))
                                            (_target162921162962_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice164057164058_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl162923162965_))
                                            (___match164163164164_
                                             _e162870163182_
                                             _hd162869163186_
                                             _tl162868163189_
                                             _e162873163192_
                                             _hd162872163196_
                                             _tl162871163199_
                                             ___splice164057164058_
                                             _target162921162962_
                                             _tl162923162965_)
                                            (let ()
                                              (declare (not safe))
                                              (_g162864162935_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g162864162935_))))))
                        (let () (declare (not safe)) (_g162864162935_)))))
                (let () (declare (not safe)) (_g162864162935_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx163252_)
      (let* ((___stx164166164167_ _$stx163252_)
             (_g163257163292_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx164166164167_)))))
        (let ((___kont164169164170_
               (lambda (_L163414_ _L163416_)
                 (let ((__tmp164492
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp164487
                        (let ((__tmp164488
                               (let ((__tmp164489
                                      (let ((__tmp164491
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp164490
                                             (let ()
                                               (declare (not safe))
                                               (cons _L163414_ '()))))
                                        (declare (not safe))
                                        (cons __tmp164491 __tmp164490))))
                                 (declare (not safe))
                                 (cons __tmp164489 '()))))
                          (declare (not safe))
                          (cons _L163416_ __tmp164488))))
                   (declare (not safe))
                   (cons __tmp164492 __tmp164487))))
              (___kont164171164172_
               (lambda (_L163349_ _L163351_)
                 (let ((__tmp164501
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp164493
                        (let ((__tmp164494
                               (let ((__tmp164495
                                      (let ((__tmp164500
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp164496
                                             (let ((__tmp164497
                                                    (lambda (_g163368163371_
                                                             _g163369163374_)
                                                      (let ((__tmp164498
                                                             (let ((__tmp164499
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g163368163371_ __tmp164499))))
                (declare (not safe))
                (cons __tmp164498 _g163369163374_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp164497
                                                       '()
                                                       _L163349_))))
                                        (declare (not safe))
                                        (cons __tmp164500 __tmp164496))))
                                 (declare (not safe))
                                 (cons __tmp164495 '()))))
                          (declare (not safe))
                          (cons _L163351_ __tmp164494))))
                   (declare (not safe))
                   (cons __tmp164501 __tmp164493)))))
          (let ((___match164215164216_
                 (lambda (_e163274163299_
                          _hd163273163303_
                          _tl163272163306_
                          _e163277163309_
                          _hd163276163313_
                          _tl163275163316_
                          ___splice164173164174_
                          _target163278163319_
                          _tl163280163322_)
                   (letrec ((_loop163281163325_
                             (lambda (_hd163279163329_ _arity163285163332_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd163279163329_))
                                   (let ((_e163282163335_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd163279163329_))))
                                     (let ((_lp-tl163284163342_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e163282163335_)))
                                           (_lp-hd163283163339_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e163282163335_))))
                                       (_loop163281163325_
                                        _lp-tl163284163342_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd163283163339_
                                                _arity163285163332_)))))
                                   (let ((_arity163286163345_
                                          (reverse _arity163285163332_)))
                                     (___kont164171164172_
                                      _arity163286163345_
                                      _hd163276163313_))))))
                     (_loop163281163325_ _target163278163319_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx164166164167_))
                (let ((_e163263163384_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx164166164167_))))
                  (let ((_tl163261163391_
                         (let () (declare (not safe)) (##cdr _e163263163384_)))
                        (_hd163262163388_
                         (let ()
                           (declare (not safe))
                           (##car _e163263163384_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl163261163391_))
                        (let ((_e163266163394_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl163261163391_))))
                          (let ((_tl163264163401_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e163266163394_)))
                                (_hd163265163398_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e163266163394_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl163264163401_))
                                (let ((_e163269163404_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl163264163401_))))
                                  (let ((_tl163267163411_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e163269163404_)))
                                        (_hd163268163408_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e163269163404_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl163267163411_))
                                        (___kont164169164170_
                                         _hd163268163408_
                                         _hd163265163398_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl163264163401_))
                                            (let ((___splice164173164174_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl163264163401_
                                                      '0))))
                                              (let ((_tl163280163322_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice164173164174_
                                                        '1)))
                                                    (_target163278163319_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice164173164174_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl163280163322_))
                                                    (___match164215164216_
                                                     _e163263163384_
                                                     _hd163262163388_
                                                     _tl163261163391_
                                                     _e163266163394_
                                                     _hd163265163398_
                                                     _tl163264163401_
                                                     ___splice164173164174_
                                                     _target163278163319_
                                                     _tl163280163322_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g163257163292_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g163257163292_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl163264163401_))
                                    (let ((___splice164173164174_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl163264163401_
                                              '0))))
                                      (let ((_tl163280163322_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice164173164174_
                                                '1)))
                                            (_target163278163319_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice164173164174_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl163280163322_))
                                            (___match164215164216_
                                             _e163263163384_
                                             _hd163262163388_
                                             _tl163261163391_
                                             _e163266163394_
                                             _hd163265163398_
                                             _tl163264163401_
                                             ___splice164173164174_
                                             _target163278163319_
                                             _tl163280163322_)
                                            (let ()
                                              (declare (not safe))
                                              (_g163257163292_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g163257163292_))))))
                        (let () (declare (not safe)) (_g163257163292_)))))
                (let () (declare (not safe)) (_g163257163292_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx163436_)
      (let* ((_g163440163475_
              (lambda (_g163441163471_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g163441163471_))))
             (_g163439163603_
              (lambda (_g163441163479_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g163441163479_))
                    (let ((_e163446163482_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g163441163479_))))
                      (let ((_hd163445163486_
                             (let ()
                               (declare (not safe))
                               (##car _e163446163482_)))
                            (_tl163444163489_
                             (let ()
                               (declare (not safe))
                               (##cdr _e163446163482_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl163444163489_))
                            (let ((_g164502_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl163444163489_
                                      '0))))
                              (begin
                                (let ((_g164503_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g164502_)
                                             (##vector-length _g164502_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g164503_ 2)))
                                      (error "Context expects 2 values"
                                             _g164503_)))
                                (let ((_target163447163492_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g164502_ 0)))
                                      (_tl163449163495_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g164502_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl163449163495_))
                                      (letrec ((_loop163450163498_
                                                (lambda (_hd163448163502_
                                                         _arity163454163505_
                                                         _prim163455163507_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd163448163502_))
                                                      (let ((_e163451163510_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd163448163502_))))
                (let ((_lp-hd163452163514_
                       (let () (declare (not safe)) (##car _e163451163510_)))
                      (_lp-tl163453163517_
                       (let () (declare (not safe)) (##cdr _e163451163510_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd163452163514_))
                      (let ((_e163460163520_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd163452163514_))))
                        (let ((_hd163459163524_
                               (let ()
                                 (declare (not safe))
                                 (##car _e163460163520_)))
                              (_tl163458163527_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e163460163520_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl163458163527_))
                              (let ((_g164512_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl163458163527_
                                        '0))))
                                (begin
                                  (let ((_g164513_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g164512_)
                                               (##vector-length _g164512_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g164513_ 2)))
                                        (error "Context expects 2 values"
                                               _g164513_)))
                                  (let ((_target163461163530_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g164512_ 0)))
                                        (_tl163463163533_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g164512_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl163463163533_))
                                        (letrec ((_loop163464163536_
                                                  (lambda (_hd163462163540_
                                                           _arity163468163543_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd163462163540_))
                                                        (let ((_e163465163546_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd163462163540_))))
                  (let ((_lp-hd163466163550_
                         (let () (declare (not safe)) (##car _e163465163546_)))
                        (_lp-tl163467163553_
                         (let ()
                           (declare (not safe))
                           (##cdr _e163465163546_))))
                    (_loop163464163536_
                     _lp-tl163467163553_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd163466163550_ _arity163468163543_)))))
                (let ((_arity163469163556_ (reverse _arity163468163543_)))
                  (_loop163450163498_
                   _lp-tl163453163517_
                   (let ()
                     (declare (not safe))
                     (cons _arity163469163556_ _arity163454163505_))
                   (let ()
                     (declare (not safe))
                     (cons _hd163459163524_ _prim163455163507_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop163464163536_
                                           _target163461163530_
                                           '()))
                                        (_g163440163475_ _g163441163479_)))))
                              (_g163440163475_ _g163441163479_))))
                      (_g163440163475_ _g163441163479_))))
              (let ((_arity163456163560_ (reverse _arity163454163505_))
                    (_prim163457163563_ (reverse _prim163455163507_)))
                ((lambda (_L163566_ _L163568_)
                   (let ((__tmp164511
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp164504
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L163566_
                               _L163568_))
                            (let ((__tmp164505
                                   (lambda (_g163583163589_
                                            _g163584163592_
                                            _g163585163594_)
                                     (let ((__tmp164506
                                            (let ((__tmp164510
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp164507
                                                   (let ((__tmp164508
                                                          (let ((__tmp164509
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g163586163597_ _g163587163600_)
                           (let ()
                             (declare (not safe))
                             (cons _g163586163597_ _g163587163600_)))))
                    (declare (not safe))
                    (foldr1 __tmp164509 '() _g163583163589_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g163584163592_
                                                           __tmp164508))))
                                              (declare (not safe))
                                              (cons __tmp164510 __tmp164507))))
                                       (declare (not safe))
                                       (cons __tmp164506 _g163585163594_)))))
                              (declare (not safe))
                              (foldr2 __tmp164505 '() _L163566_ _L163568_)))))
                     (declare (not safe))
                     (cons __tmp164511 __tmp164504)))
                 _arity163456163560_
                 _prim163457163563_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop163450163498_
                                         _target163447163492_
                                         '()
                                         '()))
                                      (_g163440163475_ _g163441163479_)))))
                            (_g163440163475_ _g163441163479_))))
                    (_g163440163475_ _g163441163479_)))))
        (_g163439163603_ _$stx163436_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx163609_)
      (let* ((_g163613163648_
              (lambda (_g163614163644_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g163614163644_))))
             (_g163612163776_
              (lambda (_g163614163652_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g163614163652_))
                    (let ((_e163619163655_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g163614163652_))))
                      (let ((_hd163618163659_
                             (let ()
                               (declare (not safe))
                               (##car _e163619163655_)))
                            (_tl163617163662_
                             (let ()
                               (declare (not safe))
                               (##cdr _e163619163655_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl163617163662_))
                            (let ((_g164514_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl163617163662_
                                      '0))))
                              (begin
                                (let ((_g164515_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g164514_)
                                             (##vector-length _g164514_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g164515_ 2)))
                                      (error "Context expects 2 values"
                                             _g164515_)))
                                (let ((_target163620163665_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g164514_ 0)))
                                      (_tl163622163668_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g164514_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl163622163668_))
                                      (letrec ((_loop163623163671_
                                                (lambda (_hd163621163675_
                                                         _arity163627163678_
                                                         _prim163628163680_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd163621163675_))
                                                      (let ((_e163624163683_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd163621163675_))))
                (let ((_lp-hd163625163687_
                       (let () (declare (not safe)) (##car _e163624163683_)))
                      (_lp-tl163626163690_
                       (let () (declare (not safe)) (##cdr _e163624163683_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd163625163687_))
                      (let ((_e163633163693_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd163625163687_))))
                        (let ((_hd163632163697_
                               (let ()
                                 (declare (not safe))
                                 (##car _e163633163693_)))
                              (_tl163631163700_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e163633163693_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl163631163700_))
                              (let ((_g164524_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl163631163700_
                                        '0))))
                                (begin
                                  (let ((_g164525_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g164524_)
                                               (##vector-length _g164524_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g164525_ 2)))
                                        (error "Context expects 2 values"
                                               _g164525_)))
                                  (let ((_target163634163703_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g164524_ 0)))
                                        (_tl163636163706_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g164524_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl163636163706_))
                                        (letrec ((_loop163637163709_
                                                  (lambda (_hd163635163713_
                                                           _arity163641163716_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd163635163713_))
                                                        (let ((_e163638163719_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd163635163713_))))
                  (let ((_lp-hd163639163723_
                         (let () (declare (not safe)) (##car _e163638163719_)))
                        (_lp-tl163640163726_
                         (let ()
                           (declare (not safe))
                           (##cdr _e163638163719_))))
                    (_loop163637163709_
                     _lp-tl163640163726_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd163639163723_ _arity163641163716_)))))
                (let ((_arity163642163729_ (reverse _arity163641163716_)))
                  (_loop163623163671_
                   _lp-tl163626163690_
                   (let ()
                     (declare (not safe))
                     (cons _arity163642163729_ _arity163627163678_))
                   (let ()
                     (declare (not safe))
                     (cons _hd163632163697_ _prim163628163680_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop163637163709_
                                           _target163634163703_
                                           '()))
                                        (_g163613163648_ _g163614163652_)))))
                              (_g163613163648_ _g163614163652_))))
                      (_g163613163648_ _g163614163652_))))
              (let ((_arity163629163733_ (reverse _arity163627163678_))
                    (_prim163630163736_ (reverse _prim163628163680_)))
                ((lambda (_L163739_ _L163741_)
                   (let ((__tmp164523
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp164516
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L163739_
                               _L163741_))
                            (let ((__tmp164517
                                   (lambda (_g163756163762_
                                            _g163757163765_
                                            _g163758163767_)
                                     (let ((__tmp164518
                                            (let ((__tmp164522
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp164519
                                                   (let ((__tmp164520
                                                          (let ((__tmp164521
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g163759163770_ _g163760163773_)
                           (let ()
                             (declare (not safe))
                             (cons _g163759163770_ _g163760163773_)))))
                    (declare (not safe))
                    (foldr1 __tmp164521 '() _g163756163762_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g163757163765_
                                                           __tmp164520))))
                                              (declare (not safe))
                                              (cons __tmp164522 __tmp164519))))
                                       (declare (not safe))
                                       (cons __tmp164518 _g163758163767_)))))
                              (declare (not safe))
                              (foldr2 __tmp164517 '() _L163739_ _L163741_)))))
                     (declare (not safe))
                     (cons __tmp164523 __tmp164516)))
                 _arity163629163733_
                 _prim163630163736_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop163623163671_
                                         _target163620163665_
                                         '()
                                         '()))
                                      (_g163613163648_ _g163614163652_)))))
                            (_g163613163648_ _g163614163652_))))
                    (_g163613163648_ _g163614163652_)))))
        (_g163612163776_ _$stx163609_)))))
