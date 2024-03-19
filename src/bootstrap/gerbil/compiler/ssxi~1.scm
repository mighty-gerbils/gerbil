(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx160662_)
      (let* ((_g160666160684_
              (lambda (_g160667160680_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160667160680_))))
             (_g160665160739_
              (lambda (_g160667160688_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160667160688_))
                    (let ((_e160672160691_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160667160688_))))
                      (let ((_hd160671160695_
                             (let ()
                               (declare (not safe))
                               (##car _e160672160691_)))
                            (_tl160670160698_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160672160691_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160670160698_))
                            (let ((_e160675160701_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160670160698_))))
                              (let ((_hd160674160705_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160675160701_)))
                                    (_tl160673160708_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160675160701_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl160673160708_))
                                    (let ((_e160678160711_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl160673160708_))))
                                      (let ((_hd160677160715_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160678160711_)))
                                            (_tl160676160718_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160678160711_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160676160718_))
                                            ((lambda (_L160721_ _L160723_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _L160723_))
                                                   (let ((__tmp164221
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp164216
                                                          (let ((__tmp164218
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp164220
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp164219
                                (let ()
                                  (declare (not safe))
                                  (cons _L160723_ '()))))
                           (declare (not safe))
                           (cons __tmp164220 __tmp164219)))
                        (__tmp164217
                         (let () (declare (not safe)) (cons _L160721_ '()))))
                    (declare (not safe))
                    (cons __tmp164218 __tmp164217))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp164221
                                                           __tmp164216))
                                                   (_g160666160684_
                                                    _g160667160688_)))
                                             _hd160677160715_
                                             _hd160674160705_)
                                            (_g160666160684_
                                             _g160667160688_))))
                                    (_g160666160684_ _g160667160688_))))
                            (_g160666160684_ _g160667160688_))))
                    (_g160666160684_ _g160667160688_)))))
        (_g160665160739_ _$stx160662_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx160743_)
      (let* ((_g160747160776_
              (lambda (_g160748160772_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160748160772_))))
             (_g160746160876_
              (lambda (_g160748160780_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160748160780_))
                    (let ((_e160753160783_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160748160780_))))
                      (let ((_hd160752160787_
                             (let ()
                               (declare (not safe))
                               (##car _e160753160783_)))
                            (_tl160751160790_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160753160783_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl160751160790_))
                            (let ((_g164222_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl160751160790_
                                      '0))))
                              (begin
                                (let ((_g164223_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g164222_)
                                             (##vector-length _g164222_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g164223_ 2)))
                                      (error "Context expects 2 values"
                                             _g164223_)))
                                (let ((_target160754160793_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g164222_ 0)))
                                      (_tl160756160796_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g164222_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl160756160796_))
                                      (letrec ((_loop160757160799_
                                                (lambda (_hd160755160803_
                                                         _type160761160806_
                                                         _symbol160762160808_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd160755160803_))
                                                      (let ((_e160758160811_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd160755160803_))))
                (let ((_lp-hd160759160815_
                       (let () (declare (not safe)) (##car _e160758160811_)))
                      (_lp-tl160760160818_
                       (let () (declare (not safe)) (##cdr _e160758160811_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd160759160815_))
                      (let ((_e160767160821_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd160759160815_))))
                        (let ((_hd160766160825_
                               (let ()
                                 (declare (not safe))
                                 (##car _e160767160821_)))
                              (_tl160765160828_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e160767160821_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl160765160828_))
                              (let ((_e160770160831_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl160765160828_))))
                                (let ((_hd160769160835_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e160770160831_)))
                                      (_tl160768160838_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e160770160831_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl160768160838_))
                                      (_loop160757160799_
                                       _lp-tl160760160818_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd160769160835_
                                               _type160761160806_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd160766160825_
                                               _symbol160762160808_)))
                                      (_g160747160776_ _g160748160780_))))
                              (_g160747160776_ _g160748160780_))))
                      (_g160747160776_ _g160748160780_))))
              (let ((_type160763160841_ (reverse _type160761160806_))
                    (_symbol160764160844_ (reverse _symbol160762160808_)))
                ((lambda (_L160847_ _L160849_)
                   (let ((__tmp164230
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp164224
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L160847_
                               _L160849_))
                            (let ((__tmp164225
                                   (lambda (_g160864160868_
                                            _g160865160871_
                                            _g160866160873_)
                                     (let ((__tmp164226
                                            (let ((__tmp164229
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp164227
                                                   (let ((__tmp164228
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g160864160868_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g160865160871_
                                                           __tmp164228))))
                                              (declare (not safe))
                                              (cons __tmp164229 __tmp164227))))
                                       (declare (not safe))
                                       (cons __tmp164226 _g160866160873_)))))
                              (declare (not safe))
                              (foldr2 __tmp164225 '() _L160847_ _L160849_)))))
                     (declare (not safe))
                     (cons __tmp164230 __tmp164224)))
                 _type160763160841_
                 _symbol160764160844_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop160757160799_
                                         _target160754160793_
                                         '()
                                         '()))
                                      (_g160747160776_ _g160748160780_)))))
                            (_g160747160776_ _g160748160780_))))
                    (_g160747160776_ _g160748160780_)))))
        (_g160746160876_ _$stx160743_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx160881_)
      (let* ((___stx163781163782_ _$stx160881_)
             (_g160886160928_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx163781163782_)))))
        (let ((___kont163784163785_
               (lambda (_L161056_ _L161058_ _L161059_ _L161060_)
                 (let ((__tmp164244
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp164231
                        (let ((__tmp164241
                               (let ((__tmp164243
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp164242
                                      (let ()
                                        (declare (not safe))
                                        (cons _L161060_ '()))))
                                 (declare (not safe))
                                 (cons __tmp164243 __tmp164242)))
                              (__tmp164232
                               (let ((__tmp164238
                                      (let ((__tmp164240
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp164239
                                             (let ()
                                               (declare (not safe))
                                               (cons _L161059_ '()))))
                                        (declare (not safe))
                                        (cons __tmp164240 __tmp164239)))
                                     (__tmp164233
                                      (let ((__tmp164235
                                             (let ((__tmp164237
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp164236
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L161058_ '()))))
                                               (declare (not safe))
                                               (cons __tmp164237 __tmp164236)))
                                            (__tmp164234
                                             (let ()
                                               (declare (not safe))
                                               (cons _L161056_ '()))))
                                        (declare (not safe))
                                        (cons __tmp164235 __tmp164234))))
                                 (declare (not safe))
                                 (cons __tmp164238 __tmp164233))))
                          (declare (not safe))
                          (cons __tmp164241 __tmp164232))))
                   (declare (not safe))
                   (cons __tmp164244 __tmp164231))))
              (___kont163786163787_
               (lambda (_L160975_ _L160977_ _L160978_ _L160979_)
                 (let ((__tmp164245
                        (let ((__tmp164246
                               (let ((__tmp164247
                                      (let ((__tmp164248
                                             (let ((__tmp164249
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp164249 '()))))
                                        (declare (not safe))
                                        (cons _L160975_ __tmp164248))))
                                 (declare (not safe))
                                 (cons _L160977_ __tmp164247))))
                          (declare (not safe))
                          (cons _L160978_ __tmp164246))))
                   (declare (not safe))
                   (cons _L160979_ __tmp164245)))))
          (let ((___match163820163821_
                 (lambda (_e160894161006_
                          _hd160893161010_
                          _tl160892161013_
                          _e160897161016_
                          _hd160896161020_
                          _tl160895161023_
                          _e160900161026_
                          _hd160899161030_
                          _tl160898161033_
                          _e160903161036_
                          _hd160902161040_
                          _tl160901161043_
                          _e160906161046_
                          _hd160905161050_
                          _tl160904161053_)
                   (let ((_L161056_ _hd160905161050_)
                         (_L161058_ _hd160902161040_)
                         (_L161059_ _hd160899161030_)
                         (_L161060_ _hd160896161020_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L161060_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L161059_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L161058_)))
                         (___kont163784163785_
                          _L161056_
                          _L161058_
                          _L161059_
                          _L161060_)
                         (let () (declare (not safe)) (_g160886160928_)))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx163781163782_))
                (let ((_e160894161006_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx163781163782_))))
                  (let ((_tl160892161013_
                         (let () (declare (not safe)) (##cdr _e160894161006_)))
                        (_hd160893161010_
                         (let ()
                           (declare (not safe))
                           (##car _e160894161006_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl160892161013_))
                        (let ((_e160897161016_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl160892161013_))))
                          (let ((_tl160895161023_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e160897161016_)))
                                (_hd160896161020_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e160897161016_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl160895161023_))
                                (let ((_e160900161026_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl160895161023_))))
                                  (let ((_tl160898161033_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e160900161026_)))
                                        (_hd160899161030_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e160900161026_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl160898161033_))
                                        (let ((_e160903161036_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl160898161033_))))
                                          (let ((_tl160901161043_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e160903161036_)))
                                                (_hd160902161040_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e160903161036_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl160901161043_))
                                                (let ((_e160906161046_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl160901161043_))))
                                                  (let ((_tl160904161053_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e160906161046_)))
                                                        (_hd160905161050_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e160906161046_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl160904161053_))
                                                        (___match163820163821_
                                                         _e160894161006_
                                                         _hd160893161010_
                                                         _tl160892161013_
                                                         _e160897161016_
                                                         _hd160896161020_
                                                         _tl160895161023_
                                                         _e160900161026_
                                                         _hd160899161030_
                                                         _tl160898161033_
                                                         _e160903161036_
                                                         _hd160902161040_
                                                         _tl160901161043_
                                                         _e160906161046_
                                                         _hd160905161050_
                                                         _tl160904161053_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g160886160928_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl160901161043_))
                                                    (___kont163786163787_
                                                     _hd160902161040_
                                                     _hd160899161030_
                                                     _hd160896161020_
                                                     _hd160893161010_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g160886160928_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g160886160928_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g160886160928_)))))
                        (let () (declare (not safe)) (_g160886160928_)))))
                (let () (declare (not safe)) (_g160886160928_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx161085_)
      (let* ((_g161089161124_
              (lambda (_g161090161120_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161090161120_))))
             (_g161088161243_
              (lambda (_g161090161128_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161090161128_))
                    (let ((_e161096161131_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161090161128_))))
                      (let ((_hd161095161135_
                             (let ()
                               (declare (not safe))
                               (##car _e161096161131_)))
                            (_tl161094161138_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161096161131_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl161094161138_))
                            (let ((_g164250_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl161094161138_
                                      '0))))
                              (begin
                                (let ((_g164251_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g164250_)
                                             (##vector-length _g164250_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g164251_ 2)))
                                      (error "Context expects 2 values"
                                             _g164251_)))
                                (let ((_target161097161141_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g164250_ 0)))
                                      (_tl161099161144_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g164250_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl161099161144_))
                                      (letrec ((_loop161100161147_
                                                (lambda (_hd161098161151_
                                                         _symbol161104161154_
                                                         _method161105161156_
                                                         _type-t161106161158_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd161098161151_))
                                                      (let ((_e161101161161_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd161098161151_))))
                (let ((_lp-hd161102161165_
                       (let () (declare (not safe)) (##car _e161101161161_)))
                      (_lp-tl161103161168_
                       (let () (declare (not safe)) (##cdr _e161101161161_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd161102161165_))
                      (let ((_e161112161171_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd161102161165_))))
                        (let ((_hd161111161175_
                               (let ()
                                 (declare (not safe))
                                 (##car _e161112161171_)))
                              (_tl161110161178_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e161112161171_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl161110161178_))
                              (let ((_e161115161181_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl161110161178_))))
                                (let ((_hd161114161185_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e161115161181_)))
                                      (_tl161113161188_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e161115161181_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl161113161188_))
                                      (let ((_e161118161191_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl161113161188_))))
                                        (let ((_hd161117161195_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e161118161191_)))
                                              (_tl161116161198_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e161118161191_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl161116161198_))
                                              (_loop161100161147_
                                               _lp-tl161103161168_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd161117161195_
                                                       _symbol161104161154_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd161114161185_
                                                       _method161105161156_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd161111161175_
                                                       _type-t161106161158_)))
                                              (_g161089161124_
                                               _g161090161128_))))
                                      (_g161089161124_ _g161090161128_))))
                              (_g161089161124_ _g161090161128_))))
                      (_g161089161124_ _g161090161128_))))
              (let ((_symbol161107161201_ (reverse _symbol161104161154_))
                    (_method161108161204_ (reverse _method161105161156_))
                    (_type-t161109161206_ (reverse _type-t161106161158_)))
                ((lambda (_L161209_ _L161211_ _L161212_)
                   (let ((__tmp164259
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp164252
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L161209_
                               _L161211_
                               _L161212_))
                            (let ((__tmp164253
                                   (lambda (_g161228161233_
                                            _g161229161236_
                                            _g161230161238_
                                            _g161231161240_)
                                     (let ((__tmp164254
                                            (let ((__tmp164258
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp164255
                                                   (let ((__tmp164256
                                                          (let ((__tmp164257
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g161228161233_ '()))))
                    (declare (not safe))
                    (cons _g161229161236_ __tmp164257))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g161230161238_
                                                           __tmp164256))))
                                              (declare (not safe))
                                              (cons __tmp164258 __tmp164255))))
                                       (declare (not safe))
                                       (cons __tmp164254 _g161231161240_)))))
                              (declare (not safe))
                              (foldr* __tmp164253
                                      '()
                                      _L161209_
                                      _L161211_
                                      _L161212_)))))
                     (declare (not safe))
                     (cons __tmp164259 __tmp164252)))
                 _symbol161107161201_
                 _method161108161204_
                 _type-t161109161206_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop161100161147_
                                         _target161097161141_
                                         '()
                                         '()
                                         '()))
                                      (_g161089161124_ _g161090161128_)))))
                            (_g161089161124_ _g161090161128_))))
                    (_g161089161124_ _g161090161128_)))))
        (_g161088161243_ _$stx161085_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx161248_)
      (let* ((_g161252161285_
              (lambda (_g161253161281_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161253161281_))))
             (_g161251161399_
              (lambda (_g161253161289_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161253161289_))
                    (let ((_e161259161292_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161253161289_))))
                      (let ((_hd161258161296_
                             (let ()
                               (declare (not safe))
                               (##car _e161259161292_)))
                            (_tl161257161299_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161259161292_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161257161299_))
                            (let ((_e161262161302_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161257161299_))))
                              (let ((_hd161261161306_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161262161302_)))
                                    (_tl161260161309_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161262161302_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl161260161309_))
                                    (let ((_g164260_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl161260161309_
                                              '0))))
                                      (begin
                                        (let ((_g164261_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g164260_)
                                                     (##vector-length
                                                      _g164260_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g164261_ 2)))
                                              (error "Context expects 2 values"
                                                     _g164261_)))
                                        (let ((_target161263161312_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g164260_ 0)))
                                              (_tl161265161315_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g164260_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl161265161315_))
                                              (letrec ((_loop161266161318_
                                                        (lambda (_hd161264161322_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol161270161325_
                         _method161271161327_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd161264161322_))
                      (let ((_e161267161330_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd161264161322_))))
                        (let ((_lp-hd161268161334_
                               (let ()
                                 (declare (not safe))
                                 (##car _e161267161330_)))
                              (_lp-tl161269161337_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e161267161330_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd161268161334_))
                              (let ((_e161276161340_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd161268161334_))))
                                (let ((_hd161275161344_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e161276161340_)))
                                      (_tl161274161347_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e161276161340_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl161274161347_))
                                      (let ((_e161279161350_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl161274161347_))))
                                        (let ((_hd161278161354_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e161279161350_)))
                                              (_tl161277161357_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e161279161350_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl161277161357_))
                                              (_loop161266161318_
                                               _lp-tl161269161337_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd161278161354_
                                                       _symbol161270161325_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd161275161344_
                                                       _method161271161327_)))
                                              (_g161252161285_
                                               _g161253161289_))))
                                      (_g161252161285_ _g161253161289_))))
                              (_g161252161285_ _g161253161289_))))
                      (let ((_symbol161272161360_
                             (reverse _symbol161270161325_))
                            (_method161273161363_
                             (reverse _method161271161327_)))
                        ((lambda (_L161366_ _L161368_ _L161369_)
                           (let ((__tmp164269
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp164262
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L161366_
                                       _L161368_))
                                    (let ((__tmp164263
                                           (lambda (_g161387161391_
                                                    _g161388161394_
                                                    _g161389161396_)
                                             (let ((__tmp164264
                                                    (let ((__tmp164268
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp164265
                                                           (let ((__tmp164266
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp164267
                                 (let ()
                                   (declare (not safe))
                                   (cons _g161387161391_ '()))))
                            (declare (not safe))
                            (cons _g161388161394_ __tmp164267))))
                     (declare (not safe))
                     (cons _L161369_ __tmp164266))))
              (declare (not safe))
              (cons __tmp164268 __tmp164265))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp164264
                                                     _g161389161396_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp164263
                                              '()
                                              _L161366_
                                              _L161368_)))))
                             (declare (not safe))
                             (cons __tmp164269 __tmp164262)))
                         _symbol161272161360_
                         _method161273161363_
                         _hd161261161306_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop161266161318_
                                                 _target161263161312_
                                                 '()
                                                 '()))
                                              (_g161252161285_
                                               _g161253161289_)))))
                                    (_g161252161285_ _g161253161289_))))
                            (_g161252161285_ _g161253161289_))))
                    (_g161252161285_ _g161253161289_)))))
        (_g161251161399_ _$stx161248_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx161404_)
      (let* ((_g161408161422_
              (lambda (_g161409161418_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161409161418_))))
             (_g161407161463_
              (lambda (_g161409161426_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161409161426_))
                    (let ((_e161413161429_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161409161426_))))
                      (let ((_hd161412161433_
                             (let ()
                               (declare (not safe))
                               (##car _e161413161429_)))
                            (_tl161411161436_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161413161429_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161411161436_))
                            (let ((_e161416161439_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161411161436_))))
                              (let ((_hd161415161443_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161416161439_)))
                                    (_tl161414161446_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161416161439_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl161414161446_))
                                    ((lambda (_L161449_)
                                       (let ((__tmp164274
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp164270
                                              (let ((__tmp164271
                                                     (let ((__tmp164273
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp164272
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L161449_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp164273 __tmp164272))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp164271 '()))))
                                         (declare (not safe))
                                         (cons __tmp164274 __tmp164270)))
                                     _hd161415161443_)
                                    (_g161408161422_ _g161409161426_))))
                            (_g161408161422_ _g161409161426_))))
                    (_g161408161422_ _g161409161426_)))))
        (_g161407161463_ _$stx161404_))))
  (define |gxc[:0:]#@class|
    (lambda (_$stx161467_)
      (let* ((_g161471161525_
              (lambda (_g161472161521_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161472161521_))))
             (_g161470161706_
              (lambda (_g161472161529_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161472161529_))
                    (let ((_e161486161532_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161472161529_))))
                      (let ((_hd161485161536_
                             (let ()
                               (declare (not safe))
                               (##car _e161486161532_)))
                            (_tl161484161539_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161486161532_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161484161539_))
                            (let ((_e161489161542_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161484161539_))))
                              (let ((_hd161488161546_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161489161542_)))
                                    (_tl161487161549_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161489161542_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl161487161549_))
                                    (let ((_e161492161552_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl161487161549_))))
                                      (let ((_hd161491161556_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161492161552_)))
                                            (_tl161490161559_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161492161552_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl161490161559_))
                                            (let ((_e161495161562_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl161490161559_))))
                                              (let ((_hd161494161566_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e161495161562_)))
                                                    (_tl161493161569_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e161495161562_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl161493161569_))
                                                    (let ((_e161498161572_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl161493161569_))))
                                                      (let ((_hd161497161576_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e161498161572_)))
                    (_tl161496161579_
                     (let () (declare (not safe)) (##cdr _e161498161572_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl161496161579_))
                    (let ((_e161501161582_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl161496161579_))))
                      (let ((_hd161500161586_
                             (let ()
                               (declare (not safe))
                               (##car _e161501161582_)))
                            (_tl161499161589_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161501161582_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161499161589_))
                            (let ((_e161504161592_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161499161589_))))
                              (let ((_hd161503161596_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161504161592_)))
                                    (_tl161502161599_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161504161592_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl161502161599_))
                                    (let ((_e161507161602_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl161502161599_))))
                                      (let ((_hd161506161606_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161507161602_)))
                                            (_tl161505161609_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161507161602_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl161505161609_))
                                            (let ((_e161510161612_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl161505161609_))))
                                              (let ((_hd161509161616_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e161510161612_)))
                                                    (_tl161508161619_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e161510161612_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl161508161619_))
                                                    (let ((_e161513161622_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl161508161619_))))
                                                      (let ((_hd161512161626_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e161513161622_)))
                    (_tl161511161629_
                     (let () (declare (not safe)) (##cdr _e161513161622_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl161511161629_))
                    (let ((_e161516161632_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl161511161629_))))
                      (let ((_hd161515161636_
                             (let ()
                               (declare (not safe))
                               (##car _e161516161632_)))
                            (_tl161514161639_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161516161632_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161514161639_))
                            (let ((_e161519161642_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161514161639_))))
                              (let ((_hd161518161646_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161519161642_)))
                                    (_tl161517161649_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161519161642_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl161517161649_))
                                    ((lambda (_L161652_
                                              _L161654_
                                              _L161655_
                                              _L161656_
                                              _L161657_
                                              _L161658_
                                              _L161659_
                                              _L161660_
                                              _L161661_
                                              _L161662_
                                              _L161663_)
                                       (let ((__tmp164310
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!class)))
                                             (__tmp164275
                                              (let ((__tmp164307
                                                     (let ((__tmp164309
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp164308
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L161663_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp164309 __tmp164308)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp164276
                                                     (let ((__tmp164304
                                                            (let ((__tmp164306
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote)))
                          (__tmp164305
                           (let () (declare (not safe)) (cons _L161662_ '()))))
                      (declare (not safe))
                      (cons __tmp164306 __tmp164305)))
                   (__tmp164277
                    (let ((__tmp164301
                           (let ((__tmp164303
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'quote)))
                                 (__tmp164302
                                  (let ()
                                    (declare (not safe))
                                    (cons _L161661_ '()))))
                             (declare (not safe))
                             (cons __tmp164303 __tmp164302)))
                          (__tmp164278
                           (let ((__tmp164298
                                  (let ((__tmp164300
                                         (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote)))
                                        (__tmp164299
                                         (let ()
                                           (declare (not safe))
                                           (cons _L161660_ '()))))
                                    (declare (not safe))
                                    (cons __tmp164300 __tmp164299)))
                                 (__tmp164279
                                  (let ((__tmp164295
                                         (let ((__tmp164297
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'quote)))
                                               (__tmp164296
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L161659_ '()))))
                                           (declare (not safe))
                                           (cons __tmp164297 __tmp164296)))
                                        (__tmp164280
                                         (let ((__tmp164292
                                                (let ((__tmp164294
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'quote)))
                                                      (__tmp164293
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L161658_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp164294
                                                        __tmp164293)))
                                               (__tmp164281
                                                (let ((__tmp164282
                                                       (let ((__tmp164283
                                                              (let ((__tmp164284
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp164289
                                    (let ((__tmp164291
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp164290
                                           (let ()
                                             (declare (not safe))
                                             (cons _L161654_ '()))))
                                      (declare (not safe))
                                      (cons __tmp164291 __tmp164290)))
                                   (__tmp164285
                                    (let ((__tmp164286
                                           (let ((__tmp164288
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'quote)))
                                                 (__tmp164287
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L161652_ '()))))
                                             (declare (not safe))
                                             (cons __tmp164288 __tmp164287))))
                                      (declare (not safe))
                                      (cons __tmp164286 '()))))
                               (declare (not safe))
                               (cons __tmp164289 __tmp164285))))
                        (declare (not safe))
                        (cons _L161655_ __tmp164284))))
                 (declare (not safe))
                 (cons _L161656_ __tmp164283))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L161657_
                                                        __tmp164282))))
                                           (declare (not safe))
                                           (cons __tmp164292 __tmp164281))))
                                    (declare (not safe))
                                    (cons __tmp164295 __tmp164280))))
                             (declare (not safe))
                             (cons __tmp164298 __tmp164279))))
                      (declare (not safe))
                      (cons __tmp164301 __tmp164278))))
               (declare (not safe))
               (cons __tmp164304 __tmp164277))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp164307
                                                      __tmp164276))))
                                         (declare (not safe))
                                         (cons __tmp164310 __tmp164275)))
                                     _hd161518161646_
                                     _hd161515161636_
                                     _hd161512161626_
                                     _hd161509161616_
                                     _hd161506161606_
                                     _hd161503161596_
                                     _hd161500161586_
                                     _hd161497161576_
                                     _hd161494161566_
                                     _hd161491161556_
                                     _hd161488161546_)
                                    (_g161471161525_ _g161472161529_))))
                            (_g161471161525_ _g161472161529_))))
                    (_g161471161525_ _g161472161529_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g161471161525_
                                                     _g161472161529_))))
                                            (_g161471161525_
                                             _g161472161529_))))
                                    (_g161471161525_ _g161472161529_))))
                            (_g161471161525_ _g161472161529_))))
                    (_g161471161525_ _g161472161529_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g161471161525_
                                                     _g161472161529_))))
                                            (_g161471161525_
                                             _g161472161529_))))
                                    (_g161471161525_ _g161472161529_))))
                            (_g161471161525_ _g161472161529_))))
                    (_g161471161525_ _g161472161529_)))))
        (_g161470161706_ _$stx161467_))))
  (define |gxc[:0:]#@predicate|
    (lambda (_$stx161710_)
      (let* ((_g161714161728_
              (lambda (_g161715161724_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161715161724_))))
             (_g161713161769_
              (lambda (_g161715161732_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161715161732_))
                    (let ((_e161719161735_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161715161732_))))
                      (let ((_hd161718161739_
                             (let ()
                               (declare (not safe))
                               (##car _e161719161735_)))
                            (_tl161717161742_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161719161735_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161717161742_))
                            (let ((_e161722161745_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161717161742_))))
                              (let ((_hd161721161749_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161722161745_)))
                                    (_tl161720161752_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161722161745_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl161720161752_))
                                    ((lambda (_L161755_)
                                       (let ((__tmp164315
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!predicate)))
                                             (__tmp164311
                                              (let ((__tmp164312
                                                     (let ((__tmp164314
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp164313
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L161755_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp164314 __tmp164313))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp164312 '()))))
                                         (declare (not safe))
                                         (cons __tmp164315 __tmp164311)))
                                     _hd161721161749_)
                                    (_g161714161728_ _g161715161732_))))
                            (_g161714161728_ _g161715161732_))))
                    (_g161714161728_ _g161715161732_)))))
        (_g161713161769_ _$stx161710_))))
  (define |gxc[:0:]#@constructor|
    (lambda (_$stx161773_)
      (let* ((_g161777161791_
              (lambda (_g161778161787_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161778161787_))))
             (_g161776161832_
              (lambda (_g161778161795_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161778161795_))
                    (let ((_e161782161798_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161778161795_))))
                      (let ((_hd161781161802_
                             (let ()
                               (declare (not safe))
                               (##car _e161782161798_)))
                            (_tl161780161805_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161782161798_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161780161805_))
                            (let ((_e161785161808_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161780161805_))))
                              (let ((_hd161784161812_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161785161808_)))
                                    (_tl161783161815_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161785161808_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl161783161815_))
                                    ((lambda (_L161818_)
                                       (let ((__tmp164320
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!constructor)))
                                             (__tmp164316
                                              (let ((__tmp164317
                                                     (let ((__tmp164319
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp164318
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L161818_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp164319 __tmp164318))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp164317 '()))))
                                         (declare (not safe))
                                         (cons __tmp164320 __tmp164316)))
                                     _hd161784161812_)
                                    (_g161777161791_ _g161778161795_))))
                            (_g161777161791_ _g161778161795_))))
                    (_g161777161791_ _g161778161795_)))))
        (_g161776161832_ _$stx161773_))))
  (define |gxc[:0:]#@accessor|
    (lambda (_$stx161836_)
      (let* ((_g161840161862_
              (lambda (_g161841161858_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161841161858_))))
             (_g161839161931_
              (lambda (_g161841161866_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161841161866_))
                    (let ((_e161847161869_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161841161866_))))
                      (let ((_hd161846161873_
                             (let ()
                               (declare (not safe))
                               (##car _e161847161869_)))
                            (_tl161845161876_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161847161869_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161845161876_))
                            (let ((_e161850161879_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161845161876_))))
                              (let ((_hd161849161883_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161850161879_)))
                                    (_tl161848161886_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161850161879_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl161848161886_))
                                    (let ((_e161853161889_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl161848161886_))))
                                      (let ((_hd161852161893_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161853161889_)))
                                            (_tl161851161896_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161853161889_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl161851161896_))
                                            (let ((_e161856161899_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl161851161896_))))
                                              (let ((_hd161855161903_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e161856161899_)))
                                                    (_tl161854161906_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e161856161899_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl161854161906_))
                                                    ((lambda (_L161909_
                                                              _L161911_
                                                              _L161912_)
                                                       (let ((__tmp164330
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!accessor)))
                     (__tmp164321
                      (let ((__tmp164327
                             (let ((__tmp164329
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp164328
                                    (let ()
                                      (declare (not safe))
                                      (cons _L161912_ '()))))
                               (declare (not safe))
                               (cons __tmp164329 __tmp164328)))
                            (__tmp164322
                             (let ((__tmp164324
                                    (let ((__tmp164326
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp164325
                                           (let ()
                                             (declare (not safe))
                                             (cons _L161911_ '()))))
                                      (declare (not safe))
                                      (cons __tmp164326 __tmp164325)))
                                   (__tmp164323
                                    (let ()
                                      (declare (not safe))
                                      (cons _L161909_ '()))))
                               (declare (not safe))
                               (cons __tmp164324 __tmp164323))))
                        (declare (not safe))
                        (cons __tmp164327 __tmp164322))))
                 (declare (not safe))
                 (cons __tmp164330 __tmp164321)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd161855161903_
                                                     _hd161852161893_
                                                     _hd161849161883_)
                                                    (_g161840161862_
                                                     _g161841161866_))))
                                            (_g161840161862_
                                             _g161841161866_))))
                                    (_g161840161862_ _g161841161866_))))
                            (_g161840161862_ _g161841161866_))))
                    (_g161840161862_ _g161841161866_)))))
        (_g161839161931_ _$stx161836_))))
  (define |gxc[:0:]#@mutator|
    (lambda (_$stx161935_)
      (let* ((_g161939161961_
              (lambda (_g161940161957_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161940161957_))))
             (_g161938162030_
              (lambda (_g161940161965_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161940161965_))
                    (let ((_e161946161968_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161940161965_))))
                      (let ((_hd161945161972_
                             (let ()
                               (declare (not safe))
                               (##car _e161946161968_)))
                            (_tl161944161975_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161946161968_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161944161975_))
                            (let ((_e161949161978_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161944161975_))))
                              (let ((_hd161948161982_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161949161978_)))
                                    (_tl161947161985_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161949161978_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl161947161985_))
                                    (let ((_e161952161988_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl161947161985_))))
                                      (let ((_hd161951161992_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161952161988_)))
                                            (_tl161950161995_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161952161988_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl161950161995_))
                                            (let ((_e161955161998_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl161950161995_))))
                                              (let ((_hd161954162002_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e161955161998_)))
                                                    (_tl161953162005_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e161955161998_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl161953162005_))
                                                    ((lambda (_L162008_
                                                              _L162010_
                                                              _L162011_)
                                                       (let ((__tmp164340
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!mutator)))
                     (__tmp164331
                      (let ((__tmp164337
                             (let ((__tmp164339
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp164338
                                    (let ()
                                      (declare (not safe))
                                      (cons _L162011_ '()))))
                               (declare (not safe))
                               (cons __tmp164339 __tmp164338)))
                            (__tmp164332
                             (let ((__tmp164334
                                    (let ((__tmp164336
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp164335
                                           (let ()
                                             (declare (not safe))
                                             (cons _L162010_ '()))))
                                      (declare (not safe))
                                      (cons __tmp164336 __tmp164335)))
                                   (__tmp164333
                                    (let ()
                                      (declare (not safe))
                                      (cons _L162008_ '()))))
                               (declare (not safe))
                               (cons __tmp164334 __tmp164333))))
                        (declare (not safe))
                        (cons __tmp164337 __tmp164332))))
                 (declare (not safe))
                 (cons __tmp164340 __tmp164331)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd161954162002_
                                                     _hd161951161992_
                                                     _hd161948161982_)
                                                    (_g161939161961_
                                                     _g161940161965_))))
                                            (_g161939161961_
                                             _g161940161965_))))
                                    (_g161939161961_ _g161940161965_))))
                            (_g161939161961_ _g161940161965_))))
                    (_g161939161961_ _g161940161965_)))))
        (_g161938162030_ _$stx161935_))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx162034_)
      (let* ((___stx163849163850_ _$stx162034_)
             (_g162042162110_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx163849163850_)))))
        (let ((___kont163852163853_
               (lambda (_L162388_ _L162390_)
                 (let ((__tmp164361
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp164341
                        (let ((__tmp164357
                               (let ((__tmp164360
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp164358
                                      (let ((__tmp164359
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp164359 '()))))
                                 (declare (not safe))
                                 (cons __tmp164360 __tmp164358)))
                              (__tmp164342
                               (let ((__tmp164354
                                      (let ((__tmp164356
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp164355
                                             (let ()
                                               (declare (not safe))
                                               (cons _L162390_ '()))))
                                        (declare (not safe))
                                        (cons __tmp164356 __tmp164355)))
                                     (__tmp164343
                                      (let ((__tmp164344
                                             (let ((__tmp164345
                                                    (let ((__tmp164346
                                                           (let ((__tmp164353
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp164347
                          (let ((__tmp164348
                                 (let ((__tmp164352
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '@lambda)))
                                       (__tmp164349
                                        (let ((__tmp164350
                                               (let ((__tmp164351
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L162388_ '()))))
                                                 (declare (not safe))
                                                 (cons 'inline: __tmp164351))))
                                          (declare (not safe))
                                          (cons _L162390_ __tmp164350))))
                                   (declare (not safe))
                                   (cons __tmp164352 __tmp164349))))
                            (declare (not safe))
                            (cons __tmp164348 '()))))
                     (declare (not safe))
                     (cons __tmp164353 __tmp164347))))
              (declare (not safe))
              (cons __tmp164346 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L162388_ __tmp164345))))
                                        (declare (not safe))
                                        (cons '#f __tmp164344))))
                                 (declare (not safe))
                                 (cons __tmp164354 __tmp164343))))
                          (declare (not safe))
                          (cons __tmp164357 __tmp164342))))
                   (declare (not safe))
                   (cons __tmp164361 __tmp164341))))
              (___kont163854163855_
               (lambda (_L162319_ _L162321_)
                 (let ((__tmp164362
                        (let ((__tmp164363
                               (let ((__tmp164364
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L162319_ __tmp164364))))
                          (declare (not safe))
                          (cons 'primitive: __tmp164363))))
                   (declare (not safe))
                   (cons _L162321_ __tmp164362))))
              (___kont163856163857_
               (lambda (_L162258_ _L162260_)
                 (let ((__tmp164378
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp164365
                        (let ((__tmp164374
                               (let ((__tmp164377
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp164375
                                      (let ((__tmp164376
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp164376 '()))))
                                 (declare (not safe))
                                 (cons __tmp164377 __tmp164375)))
                              (__tmp164366
                               (let ((__tmp164371
                                      (let ((__tmp164373
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp164372
                                             (let ()
                                               (declare (not safe))
                                               (cons _L162260_ '()))))
                                        (declare (not safe))
                                        (cons __tmp164373 __tmp164372)))
                                     (__tmp164367
                                      (let ((__tmp164368
                                             (let ((__tmp164370
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp164369
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L162258_ '()))))
                                               (declare (not safe))
                                               (cons __tmp164370
                                                     __tmp164369))))
                                        (declare (not safe))
                                        (cons __tmp164368 '()))))
                                 (declare (not safe))
                                 (cons __tmp164371 __tmp164367))))
                          (declare (not safe))
                          (cons __tmp164374 __tmp164366))))
                   (declare (not safe))
                   (cons __tmp164378 __tmp164365))))
              (___kont163858163859_
               (lambda (_L162190_ _L162192_)
                 (let ((__tmp164392
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp164379
                        (let ((__tmp164388
                               (let ((__tmp164391
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp164389
                                      (let ((__tmp164390
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp164390 '()))))
                                 (declare (not safe))
                                 (cons __tmp164391 __tmp164389)))
                              (__tmp164380
                               (let ((__tmp164385
                                      (let ((__tmp164387
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp164386
                                             (let ()
                                               (declare (not safe))
                                               (cons _L162192_ '()))))
                                        (declare (not safe))
                                        (cons __tmp164387 __tmp164386)))
                                     (__tmp164381
                                      (let ((__tmp164382
                                             (let ((__tmp164384
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp164383
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L162190_ '()))))
                                               (declare (not safe))
                                               (cons __tmp164384
                                                     __tmp164383))))
                                        (declare (not safe))
                                        (cons __tmp164382 '()))))
                                 (declare (not safe))
                                 (cons __tmp164385 __tmp164381))))
                          (declare (not safe))
                          (cons __tmp164388 __tmp164380))))
                   (declare (not safe))
                   (cons __tmp164392 __tmp164379))))
              (___kont163860163861_
               (lambda (_L162137_ _L162139_)
                 (let ((__tmp164393
                        (let ((__tmp164394
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L162137_ __tmp164394))))
                   (declare (not safe))
                   (cons _L162139_ __tmp164393)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx163849163850_))
              (let ((_e162048162344_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx163849163850_))))
                (let ((_tl162046162351_
                       (let () (declare (not safe)) (##cdr _e162048162344_)))
                      (_hd162047162348_
                       (let () (declare (not safe)) (##car _e162048162344_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl162046162351_))
                      (let ((_e162051162354_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl162046162351_))))
                        (let ((_tl162049162361_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e162051162354_)))
                              (_hd162050162358_
                               (let ()
                                 (declare (not safe))
                                 (##car _e162051162354_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl162049162361_))
                              (let ((_e162054162364_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl162049162361_))))
                                (let ((_tl162052162371_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e162054162364_)))
                                      (_hd162053162368_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e162054162364_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd162053162368_))
                                      (let ((_e162055162374_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd162053162368_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e162055162374_
                                                      'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl162052162371_))
                                                (let ((_e162058162378_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl162052162371_))))
                                                  (let ((_tl162056162385_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e162058162378_)))
                                                        (_hd162057162382_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e162058162378_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl162056162385_))
                                                        (___kont163852163853_
                                                         _hd162057162382_
                                                         _hd162050162358_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd162050162358_))
                                                            (let ((_e162067162305_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd162050162358_))))
                      (declare (not safe))
                      (_g162042162110_))
                    (let () (declare (not safe)) (_g162042162110_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd162050162358_))
                                                    (let ((_e162067162305_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd162050162358_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e162067162305_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl162052162371_))
                      (___kont163854163855_ _hd162053162368_ _hd162047162348_)
                      (let () (declare (not safe)) (_g162042162110_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl162052162371_))
                      (___kont163858163859_ _hd162053162368_ _hd162050162358_)
                      (let () (declare (not safe)) (_g162042162110_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl162052162371_))
                                                        (___kont163858163859_
                                                         _hd162053162368_
                                                         _hd162050162358_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g162042162110_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd162050162358_))
                                                (let ((_e162067162305_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd162050162358_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e162067162305_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl162052162371_))
                                                          (___kont163854163855_
                                                           _hd162053162368_
                                                           _hd162047162348_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl162052162371_))
                      (let ((_e162085162248_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl162052162371_))))
                        (let ((_tl162083162255_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e162085162248_)))
                              (_hd162084162252_
                               (let ()
                                 (declare (not safe))
                                 (##car _e162085162248_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl162083162255_))
                              (___kont163856163857_
                               _hd162084162252_
                               _hd162053162368_)
                              (let ()
                                (declare (not safe))
                                (_g162042162110_)))))
                      (let () (declare (not safe)) (_g162042162110_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl162052162371_))
                  (___kont163858163859_ _hd162053162368_ _hd162050162358_)
                  (let () (declare (not safe)) (_g162042162110_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl162052162371_))
                                                    (___kont163858163859_
                                                     _hd162053162368_
                                                     _hd162050162358_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g162042162110_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd162050162358_))
                                          (let ((_e162067162305_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd162050162358_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e162067162305_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl162052162371_))
                                                    (___kont163854163855_
                                                     _hd162053162368_
                                                     _hd162047162348_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl162052162371_))
                                                        (let ((_e162085162248_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl162052162371_))))
                  (let ((_tl162083162255_
                         (let () (declare (not safe)) (##cdr _e162085162248_)))
                        (_hd162084162252_
                         (let ()
                           (declare (not safe))
                           (##car _e162085162248_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl162083162255_))
                        (___kont163856163857_
                         _hd162084162252_
                         _hd162053162368_)
                        (let () (declare (not safe)) (_g162042162110_)))))
                (let () (declare (not safe)) (_g162042162110_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl162052162371_))
                                                    (___kont163858163859_
                                                     _hd162053162368_
                                                     _hd162050162358_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g162042162110_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl162052162371_))
                                              (___kont163858163859_
                                               _hd162053162368_
                                               _hd162050162358_)
                                              (let ()
                                                (declare (not safe))
                                                (_g162042162110_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd162050162358_))
                                  (let ((_e162067162305_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd162050162358_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl162049162361_))
                                        (___kont163860163861_
                                         _hd162050162358_
                                         _hd162047162348_)
                                        (let ()
                                          (declare (not safe))
                                          (_g162042162110_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl162049162361_))
                                      (___kont163860163861_
                                       _hd162050162358_
                                       _hd162047162348_)
                                      (let ()
                                        (declare (not safe))
                                        (_g162042162110_)))))))
                      (let () (declare (not safe)) (_g162042162110_)))))
              (let () (declare (not safe)) (_g162042162110_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx162412_)
      (let* ((___stx163989163990_ _$stx162412_)
             (_g162417162472_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx163989163990_)))))
        (let ((___kont163992163993_
               (lambda (_L162657_ _L162659_)
                 (let ((__tmp164410
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp164395
                        (let ((__tmp164406
                               (let ((__tmp164409
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp164407
                                      (let ((__tmp164408
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp164408 '()))))
                                 (declare (not safe))
                                 (cons __tmp164409 __tmp164407)))
                              (__tmp164396
                               (let ((__tmp164397
                                      (let ((__tmp164405
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp164398
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L162657_
                                                  _L162659_))
                                               (let ((__tmp164399
                                                      (lambda (_g162676162680_
                                                               _g162677162683_
                                                               _g162678162685_)
                                                        (let ((__tmp164400
                                                               (let ((__tmp164404
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp164401
                              (let ((__tmp164402
                                     (let ((__tmp164403
                                            (let ()
                                              (declare (not safe))
                                              (cons _g162676162680_ '()))))
                                       (declare (not safe))
                                       (cons _g162677162683_ __tmp164403))))
                                (declare (not safe))
                                (cons 'primitive: __tmp164402))))
                         (declare (not safe))
                         (cons __tmp164404 __tmp164401))))
                  (declare (not safe))
                  (cons __tmp164400 _g162678162685_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp164399
                                                         '()
                                                         _L162657_
                                                         _L162659_)))))
                                        (declare (not safe))
                                        (cons __tmp164405 __tmp164398))))
                                 (declare (not safe))
                                 (cons __tmp164397 '()))))
                          (declare (not safe))
                          (cons __tmp164406 __tmp164396))))
                   (declare (not safe))
                   (cons __tmp164410 __tmp164395))))
              (___kont163996163997_
               (lambda (_L162543_ _L162545_)
                 (let ((__tmp164425
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp164411
                        (let ((__tmp164421
                               (let ((__tmp164424
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp164422
                                      (let ((__tmp164423
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp164423 '()))))
                                 (declare (not safe))
                                 (cons __tmp164424 __tmp164422)))
                              (__tmp164412
                               (let ((__tmp164413
                                      (let ((__tmp164420
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp164414
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L162543_
                                                  _L162545_))
                                               (let ((__tmp164415
                                                      (lambda (_g162560162564_
                                                               _g162561162567_
                                                               _g162562162569_)
                                                        (let ((__tmp164416
                                                               (let ((__tmp164419
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp164417
                              (let ((__tmp164418
                                     (let ()
                                       (declare (not safe))
                                       (cons _g162560162564_ '()))))
                                (declare (not safe))
                                (cons _g162561162567_ __tmp164418))))
                         (declare (not safe))
                         (cons __tmp164419 __tmp164417))))
                  (declare (not safe))
                  (cons __tmp164416 _g162562162569_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp164415
                                                         '()
                                                         _L162543_
                                                         _L162545_)))))
                                        (declare (not safe))
                                        (cons __tmp164420 __tmp164414))))
                                 (declare (not safe))
                                 (cons __tmp164413 '()))))
                          (declare (not safe))
                          (cons __tmp164421 __tmp164412))))
                   (declare (not safe))
                   (cons __tmp164425 __tmp164411)))))
          (let* ((___match164040164041_
                  (lambda (_e162449162479_
                           _hd162448162483_
                           _tl162447162486_
                           ___splice163998163999_
                           _target162450162489_
                           _tl162452162492_)
                    (letrec ((_loop162453162495_
                              (lambda (_hd162451162499_
                                       _dispatch162457162502_
                                       _arity162458162504_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd162451162499_))
                                    (let ((_e162454162507_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd162451162499_))))
                                      (let ((_lp-tl162456162514_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e162454162507_)))
                                            (_lp-hd162455162511_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e162454162507_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd162455162511_))
                                            (let ((_e162463162517_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd162455162511_))))
                                              (let ((_tl162461162524_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e162463162517_)))
                                                    (_hd162462162521_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e162463162517_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl162461162524_))
                                                    (let ((_e162466162527_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl162461162524_))))
                                                      (let ((_tl162464162534_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e162466162527_)))
                    (_hd162465162531_
                     (let () (declare (not safe)) (##car _e162466162527_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl162464162534_))
                    (_loop162453162495_
                     _lp-tl162456162514_
                     (let ()
                       (declare (not safe))
                       (cons _hd162465162531_ _dispatch162457162502_))
                     (let ()
                       (declare (not safe))
                       (cons _hd162462162521_ _arity162458162504_)))
                    (let () (declare (not safe)) (_g162417162472_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g162417162472_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g162417162472_)))))
                                    (let ((_arity162460162540_
                                           (reverse _arity162458162504_))
                                          (_dispatch162459162537_
                                           (reverse _dispatch162457162502_)))
                                      (___kont163996163997_
                                       _dispatch162459162537_
                                       _arity162460162540_))))))
                      (_loop162453162495_ _target162450162489_ '() '()))))
                 (___match164032164033_
                  (lambda (_e162449162479_ _hd162448162483_ _tl162447162486_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl162447162486_))
                        (let ((___splice163998163999_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl162447162486_
                                  '0))))
                          (let ((_tl162452162492_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice163998163999_ '1)))
                                (_target162450162489_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice163998163999_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl162452162492_))
                                (___match164040164041_
                                 _e162449162479_
                                 _hd162448162483_
                                 _tl162447162486_
                                 ___splice163998163999_
                                 _target162450162489_
                                 _tl162452162492_)
                                (let ()
                                  (declare (not safe))
                                  (_g162417162472_)))))
                        (let () (declare (not safe)) (_g162417162472_)))))
                 (___match164026164027_
                  (lambda (_e162423162579_
                           _hd162422162583_
                           _tl162421162586_
                           _e162426162589_
                           _hd162425162593_
                           _tl162424162596_
                           _e162427162599_
                           ___splice163994163995_
                           _target162428162603_
                           _tl162430162606_)
                    (letrec ((_loop162431162609_
                              (lambda (_hd162429162613_
                                       _dispatch162435162616_
                                       _arity162436162618_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd162429162613_))
                                    (let ((_e162432162621_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd162429162613_))))
                                      (let ((_lp-tl162434162628_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e162432162621_)))
                                            (_lp-hd162433162625_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e162432162621_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd162433162625_))
                                            (let ((_e162441162631_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd162433162625_))))
                                              (let ((_tl162439162638_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e162441162631_)))
                                                    (_hd162440162635_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e162441162631_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl162439162638_))
                                                    (let ((_e162444162641_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl162439162638_))))
                                                      (let ((_tl162442162648_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e162444162641_)))
                    (_hd162443162645_
                     (let () (declare (not safe)) (##car _e162444162641_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl162442162648_))
                    (_loop162431162609_
                     _lp-tl162434162628_
                     (let ()
                       (declare (not safe))
                       (cons _hd162443162645_ _dispatch162435162616_))
                     (let ()
                       (declare (not safe))
                       (cons _hd162440162635_ _arity162436162618_)))
                    (___match164032164033_
                     _e162423162579_
                     _hd162422162583_
                     _tl162421162586_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match164032164033_
                                                     _e162423162579_
                                                     _hd162422162583_
                                                     _tl162421162586_))))
                                            (___match164032164033_
                                             _e162423162579_
                                             _hd162422162583_
                                             _tl162421162586_))))
                                    (let ((_arity162438162654_
                                           (reverse _arity162436162618_))
                                          (_dispatch162437162651_
                                           (reverse _dispatch162435162616_)))
                                      (___kont163992163993_
                                       _dispatch162437162651_
                                       _arity162438162654_))))))
                      (_loop162431162609_ _target162428162603_ '() '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx163989163990_))
                (let ((_e162423162579_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx163989163990_))))
                  (let ((_tl162421162586_
                         (let () (declare (not safe)) (##cdr _e162423162579_)))
                        (_hd162422162583_
                         (let ()
                           (declare (not safe))
                           (##car _e162423162579_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl162421162586_))
                        (let ((_e162426162589_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl162421162586_))))
                          (let ((_tl162424162596_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e162426162589_)))
                                (_hd162425162593_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e162426162589_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd162425162593_))
                                (let ((_e162427162599_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd162425162593_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e162427162599_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl162424162596_))
                                          (let ((___splice163994163995_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl162424162596_
                                                    '0))))
                                            (let ((_tl162430162606_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice163994163995_
                                                      '1)))
                                                  (_target162428162603_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice163994163995_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl162430162606_))
                                                  (___match164026164027_
                                                   _e162423162579_
                                                   _hd162422162583_
                                                   _tl162421162586_
                                                   _e162426162589_
                                                   _hd162425162593_
                                                   _tl162424162596_
                                                   _e162427162599_
                                                   ___splice163994163995_
                                                   _target162428162603_
                                                   _tl162430162606_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl162421162586_))
                                                      (let ((___splice163998163999_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl162421162586_ '0))))
                (let ((_tl162452162492_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice163998163999_ '1)))
                      (_target162450162489_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice163998163999_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl162452162492_))
                      (___match164040164041_
                       _e162423162579_
                       _hd162422162583_
                       _tl162421162586_
                       ___splice163998163999_
                       _target162450162489_
                       _tl162452162492_)
                      (let () (declare (not safe)) (_g162417162472_)))))
              (let () (declare (not safe)) (_g162417162472_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl162421162586_))
                                              (let ((___splice163998163999_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl162421162586_
                                                        '0))))
                                                (let ((_tl162452162492_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice163998163999_
                                                          '1)))
                                                      (_target162450162489_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice163998163999_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl162452162492_))
                                                      (___match164040164041_
                                                       _e162423162579_
                                                       _hd162422162583_
                                                       _tl162421162586_
                                                       ___splice163998163999_
                                                       _target162450162489_
                                                       _tl162452162492_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g162417162472_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g162417162472_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl162421162586_))
                                          (let ((___splice163998163999_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl162421162586_
                                                    '0))))
                                            (let ((_tl162452162492_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice163998163999_
                                                      '1)))
                                                  (_target162450162489_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice163998163999_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl162452162492_))
                                                  (___match164040164041_
                                                   _e162423162579_
                                                   _hd162422162583_
                                                   _tl162421162586_
                                                   ___splice163998163999_
                                                   _target162450162489_
                                                   _tl162452162492_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g162417162472_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g162417162472_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl162421162586_))
                                    (let ((___splice163998163999_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl162421162586_
                                              '0))))
                                      (let ((_tl162452162492_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice163998163999_
                                                '1)))
                                            (_target162450162489_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice163998163999_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl162452162492_))
                                            (___match164040164041_
                                             _e162423162579_
                                             _hd162422162583_
                                             _tl162421162586_
                                             ___splice163998163999_
                                             _target162450162489_
                                             _tl162452162492_)
                                            (let ()
                                              (declare (not safe))
                                              (_g162417162472_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g162417162472_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl162421162586_))
                            (let ((___splice163998163999_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl162421162586_
                                      '0))))
                              (let ((_tl162452162492_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice163998163999_
                                        '1)))
                                    (_target162450162489_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice163998163999_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl162452162492_))
                                    (___match164040164041_
                                     _e162423162579_
                                     _hd162422162583_
                                     _tl162421162586_
                                     ___splice163998163999_
                                     _target162450162489_
                                     _tl162452162492_)
                                    (let ()
                                      (declare (not safe))
                                      (_g162417162472_)))))
                            (let () (declare (not safe)) (_g162417162472_))))))
                (let () (declare (not safe)) (_g162417162472_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx162694_)
      (let* ((_g162698162716_
              (lambda (_g162699162712_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g162699162712_))))
             (_g162697162771_
              (lambda (_g162699162720_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g162699162720_))
                    (let ((_e162704162723_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g162699162720_))))
                      (let ((_hd162703162727_
                             (let ()
                               (declare (not safe))
                               (##car _e162704162723_)))
                            (_tl162702162730_
                             (let ()
                               (declare (not safe))
                               (##cdr _e162704162723_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl162702162730_))
                            (let ((_e162707162733_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl162702162730_))))
                              (let ((_hd162706162737_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e162707162733_)))
                                    (_tl162705162740_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e162707162733_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl162705162740_))
                                    (let ((_e162710162743_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl162705162740_))))
                                      (let ((_hd162709162747_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e162710162743_)))
                                            (_tl162708162750_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e162710162743_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl162708162750_))
                                            ((lambda (_L162753_ _L162755_)
                                               (let ((__tmp164439
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp164426
                                                      (let ((__tmp164435
                                                             (let ((__tmp164438
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp164436
                            (let ((__tmp164437
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp164437 '()))))
                       (declare (not safe))
                       (cons __tmp164438 __tmp164436)))
                    (__tmp164427
                     (let ((__tmp164432
                            (let ((__tmp164434
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp164433
                                   (let ()
                                     (declare (not safe))
                                     (cons _L162755_ '()))))
                              (declare (not safe))
                              (cons __tmp164434 __tmp164433)))
                           (__tmp164428
                            (let ((__tmp164429
                                   (let ((__tmp164431
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp164430
                                          (let ()
                                            (declare (not safe))
                                            (cons _L162753_ '()))))
                                     (declare (not safe))
                                     (cons __tmp164431 __tmp164430))))
                              (declare (not safe))
                              (cons __tmp164429 '()))))
                       (declare (not safe))
                       (cons __tmp164432 __tmp164428))))
                (declare (not safe))
                (cons __tmp164435 __tmp164427))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp164439
                                                       __tmp164426)))
                                             _hd162709162747_
                                             _hd162706162737_)
                                            (_g162698162716_
                                             _g162699162720_))))
                                    (_g162698162716_ _g162699162720_))))
                            (_g162698162716_ _g162699162720_))))
                    (_g162698162716_ _g162699162720_)))))
        (_g162697162771_ _$stx162694_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx162775_)
      (let* ((_g162779162797_
              (lambda (_g162780162793_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g162780162793_))))
             (_g162778162852_
              (lambda (_g162780162801_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g162780162801_))
                    (let ((_e162785162804_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g162780162801_))))
                      (let ((_hd162784162808_
                             (let ()
                               (declare (not safe))
                               (##car _e162785162804_)))
                            (_tl162783162811_
                             (let ()
                               (declare (not safe))
                               (##cdr _e162785162804_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl162783162811_))
                            (let ((_e162788162814_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl162783162811_))))
                              (let ((_hd162787162818_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e162788162814_)))
                                    (_tl162786162821_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e162788162814_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl162786162821_))
                                    (let ((_e162791162824_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl162786162821_))))
                                      (let ((_hd162790162828_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e162791162824_)))
                                            (_tl162789162831_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e162791162824_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl162789162831_))
                                            ((lambda (_L162834_ _L162836_)
                                               (let ((__tmp164453
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp164440
                                                      (let ((__tmp164449
                                                             (let ((__tmp164452
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp164450
                            (let ((__tmp164451
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp164451 '()))))
                       (declare (not safe))
                       (cons __tmp164452 __tmp164450)))
                    (__tmp164441
                     (let ((__tmp164446
                            (let ((__tmp164448
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp164447
                                   (let ()
                                     (declare (not safe))
                                     (cons _L162836_ '()))))
                              (declare (not safe))
                              (cons __tmp164448 __tmp164447)))
                           (__tmp164442
                            (let ((__tmp164443
                                   (let ((__tmp164445
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp164444
                                          (let ()
                                            (declare (not safe))
                                            (cons _L162834_ '()))))
                                     (declare (not safe))
                                     (cons __tmp164445 __tmp164444))))
                              (declare (not safe))
                              (cons __tmp164443 '()))))
                       (declare (not safe))
                       (cons __tmp164446 __tmp164442))))
                (declare (not safe))
                (cons __tmp164449 __tmp164441))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp164453
                                                       __tmp164440)))
                                             _hd162790162828_
                                             _hd162787162818_)
                                            (_g162779162797_
                                             _g162780162801_))))
                                    (_g162779162797_ _g162780162801_))))
                            (_g162779162797_ _g162780162801_))))
                    (_g162779162797_ _g162780162801_)))))
        (_g162778162852_ _$stx162775_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx162856_)
      (let* ((___stx164043164044_ _$stx162856_)
             (_g162863162934_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx164043164044_)))))
        (let ((___kont164046164047_
               (lambda (_L163225_ _L163227_)
                 (let ((__tmp164459
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp164454
                        (let ((__tmp164455
                               (let ((__tmp164456
                                      (let ((__tmp164458
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp164457
                                             (let ()
                                               (declare (not safe))
                                               (cons _L163225_ '()))))
                                        (declare (not safe))
                                        (cons __tmp164458 __tmp164457))))
                                 (declare (not safe))
                                 (cons __tmp164456 '()))))
                          (declare (not safe))
                          (cons _L163227_ __tmp164455))))
                   (declare (not safe))
                   (cons __tmp164459 __tmp164454))))
              (___kont164048164049_
               (lambda (_L163144_ _L163146_)
                 (let ((__tmp164468
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp164460
                        (let ((__tmp164461
                               (let ((__tmp164462
                                      (let ((__tmp164467
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp164463
                                             (let ((__tmp164464
                                                    (lambda (_g163165163168_
                                                             _g163166163171_)
                                                      (let ((__tmp164465
                                                             (let ((__tmp164466
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g163165163168_ __tmp164466))))
                (declare (not safe))
                (cons __tmp164465 _g163166163171_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp164464
                                                       '()
                                                       _L163144_))))
                                        (declare (not safe))
                                        (cons __tmp164467 __tmp164463))))
                                 (declare (not safe))
                                 (cons __tmp164462 '()))))
                          (declare (not safe))
                          (cons _L163146_ __tmp164461))))
                   (declare (not safe))
                   (cons __tmp164468 __tmp164460))))
              (___kont164052164053_
               (lambda (_L163056_ _L163058_)
                 (let ((__tmp164475
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp164469
                        (let ((__tmp164470
                               (let ((__tmp164471
                                      (let ((__tmp164474
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp164472
                                             (let ((__tmp164473
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L163056_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp164473))))
                                        (declare (not safe))
                                        (cons __tmp164474 __tmp164472))))
                                 (declare (not safe))
                                 (cons __tmp164471 '()))))
                          (declare (not safe))
                          (cons _L163058_ __tmp164470))))
                   (declare (not safe))
                   (cons __tmp164475 __tmp164469))))
              (___kont164054164055_
               (lambda (_L162991_ _L162993_)
                 (let ((__tmp164485
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp164476
                        (let ((__tmp164477
                               (let ((__tmp164478
                                      (let ((__tmp164484
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp164479
                                             (let ((__tmp164480
                                                    (let ((__tmp164481
                                                           (lambda (_g163010163013_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g163011163016_)
                     (let ((__tmp164482
                            (let ((__tmp164483
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g163010163013_ __tmp164483))))
                       (declare (not safe))
                       (cons __tmp164482 _g163011163016_)))))
              (declare (not safe))
              (foldr1 __tmp164481 '() _L162991_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp164480))))
                                        (declare (not safe))
                                        (cons __tmp164484 __tmp164479))))
                                 (declare (not safe))
                                 (cons __tmp164478 '()))))
                          (declare (not safe))
                          (cons _L162993_ __tmp164477))))
                   (declare (not safe))
                   (cons __tmp164485 __tmp164476)))))
          (let* ((___match164162164163_
                  (lambda (_e162916162941_
                           _hd162915162945_
                           _tl162914162948_
                           _e162919162951_
                           _hd162918162955_
                           _tl162917162958_
                           ___splice164056164057_
                           _target162920162961_
                           _tl162922162964_)
                    (letrec ((_loop162923162967_
                              (lambda (_hd162921162971_ _arity162927162974_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd162921162971_))
                                    (let ((_e162924162977_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd162921162971_))))
                                      (let ((_lp-tl162926162984_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e162924162977_)))
                                            (_lp-hd162925162981_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e162924162977_))))
                                        (_loop162923162967_
                                         _lp-tl162926162984_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd162925162981_
                                                 _arity162927162974_)))))
                                    (let ((_arity162928162987_
                                           (reverse _arity162927162974_)))
                                      (___kont164054164055_
                                       _arity162928162987_
                                       _hd162918162955_))))))
                      (_loop162923162967_ _target162920162961_ '()))))
                 (___match164122164123_
                  (lambda (_e162884163080_
                           _hd162883163084_
                           _tl162882163087_
                           _e162887163090_
                           _hd162886163094_
                           _tl162885163097_
                           _e162890163100_
                           _hd162889163104_
                           _tl162888163107_
                           _e162891163110_
                           ___splice164050164051_
                           _target162892163114_
                           _tl162894163117_)
                    (letrec ((_loop162895163120_
                              (lambda (_hd162893163124_ _arity162899163127_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd162893163124_))
                                    (let ((_e162896163130_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd162893163124_))))
                                      (let ((_lp-tl162898163137_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e162896163130_)))
                                            (_lp-hd162897163134_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e162896163130_))))
                                        (_loop162895163120_
                                         _lp-tl162898163137_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd162897163134_
                                                 _arity162899163127_)))))
                                    (let ((_arity162900163140_
                                           (reverse _arity162899163127_)))
                                      (___kont164048164049_
                                       _arity162900163140_
                                       _hd162886163094_))))))
                      (_loop162895163120_ _target162892163114_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx164043164044_))
                (let ((_e162869163181_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx164043164044_))))
                  (let ((_tl162867163188_
                         (let () (declare (not safe)) (##cdr _e162869163181_)))
                        (_hd162868163185_
                         (let ()
                           (declare (not safe))
                           (##car _e162869163181_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl162867163188_))
                        (let ((_e162872163191_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl162867163188_))))
                          (let ((_tl162870163198_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e162872163191_)))
                                (_hd162871163195_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e162872163191_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl162870163198_))
                                (let ((_e162875163201_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl162870163198_))))
                                  (let ((_tl162873163208_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e162875163201_)))
                                        (_hd162874163205_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e162875163201_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd162874163205_))
                                        (let ((_e162876163211_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd162874163205_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e162876163211_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl162873163208_))
                                                  (let ((_e162879163215_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl162873163208_))))
                                                    (let ((_tl162877163222_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e162879163215_)))
                                                          (_hd162878163219_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e162879163215_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl162877163222_))
                                                          (___kont164046164047_
                                                           _hd162878163219_
                                                           _hd162871163195_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl162873163208_))
                      (let ((___splice164050164051_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl162873163208_ '0))))
                        (let ((_tl162894163117_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice164050164051_ '1)))
                              (_target162892163114_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice164050164051_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl162894163117_))
                              (___match164122164123_
                               _e162869163181_
                               _hd162868163185_
                               _tl162867163188_
                               _e162872163191_
                               _hd162871163195_
                               _tl162870163198_
                               _e162875163201_
                               _hd162874163205_
                               _tl162873163208_
                               _e162876163211_
                               ___splice164050164051_
                               _target162892163114_
                               _tl162894163117_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl162870163198_))
                                  (let ((___splice164056164057_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl162870163198_
                                            '0))))
                                    (let ((_tl162922162964_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice164056164057_
                                              '1)))
                                          (_target162920162961_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice164056164057_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl162922162964_))
                                          (___match164162164163_
                                           _e162869163181_
                                           _hd162868163185_
                                           _tl162867163188_
                                           _e162872163191_
                                           _hd162871163195_
                                           _tl162870163198_
                                           ___splice164056164057_
                                           _target162920162961_
                                           _tl162922162964_)
                                          (let ()
                                            (declare (not safe))
                                            (_g162863162934_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g162863162934_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl162870163198_))
                          (let ((___splice164056164057_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl162870163198_
                                    '0))))
                            (let ((_tl162922162964_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice164056164057_ '1)))
                                  (_target162920162961_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice164056164057_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl162922162964_))
                                  (___match164162164163_
                                   _e162869163181_
                                   _hd162868163185_
                                   _tl162867163188_
                                   _e162872163191_
                                   _hd162871163195_
                                   _tl162870163198_
                                   ___splice164056164057_
                                   _target162920162961_
                                   _tl162922162964_)
                                  (let ()
                                    (declare (not safe))
                                    (_g162863162934_)))))
                          (let () (declare (not safe)) (_g162863162934_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl162873163208_))
                                                      (let ((___splice164050164051_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl162873163208_ '0))))
                (let ((_tl162894163117_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice164050164051_ '1)))
                      (_target162892163114_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice164050164051_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl162894163117_))
                      (___match164122164123_
                       _e162869163181_
                       _hd162868163185_
                       _tl162867163188_
                       _e162872163191_
                       _hd162871163195_
                       _tl162870163198_
                       _e162875163201_
                       _hd162874163205_
                       _tl162873163208_
                       _e162876163211_
                       ___splice164050164051_
                       _target162892163114_
                       _tl162894163117_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl162873163208_))
                          (___kont164052164053_
                           _hd162874163205_
                           _hd162871163195_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl162870163198_))
                              (let ((___splice164056164057_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl162870163198_
                                        '0))))
                                (let ((_tl162922162964_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice164056164057_
                                          '1)))
                                      (_target162920162961_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice164056164057_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl162922162964_))
                                      (___match164162164163_
                                       _e162869163181_
                                       _hd162868163185_
                                       _tl162867163188_
                                       _e162872163191_
                                       _hd162871163195_
                                       _tl162870163198_
                                       ___splice164056164057_
                                       _target162920162961_
                                       _tl162922162964_)
                                      (let ()
                                        (declare (not safe))
                                        (_g162863162934_)))))
                              (let ()
                                (declare (not safe))
                                (_g162863162934_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl162873163208_))
                  (___kont164052164053_ _hd162874163205_ _hd162871163195_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl162870163198_))
                      (let ((___splice164056164057_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl162870163198_ '0))))
                        (let ((_tl162922162964_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice164056164057_ '1)))
                              (_target162920162961_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice164056164057_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl162922162964_))
                              (___match164162164163_
                               _e162869163181_
                               _hd162868163185_
                               _tl162867163188_
                               _e162872163191_
                               _hd162871163195_
                               _tl162870163198_
                               ___splice164056164057_
                               _target162920162961_
                               _tl162922162964_)
                              (let ()
                                (declare (not safe))
                                (_g162863162934_)))))
                      (let () (declare (not safe)) (_g162863162934_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl162873163208_))
                                                  (___kont164052164053_
                                                   _hd162874163205_
                                                   _hd162871163195_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl162870163198_))
                                                      (let ((___splice164056164057_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl162870163198_ '0))))
                (let ((_tl162922162964_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice164056164057_ '1)))
                      (_target162920162961_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice164056164057_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl162922162964_))
                      (___match164162164163_
                       _e162869163181_
                       _hd162868163185_
                       _tl162867163188_
                       _e162872163191_
                       _hd162871163195_
                       _tl162870163198_
                       ___splice164056164057_
                       _target162920162961_
                       _tl162922162964_)
                      (let () (declare (not safe)) (_g162863162934_)))))
              (let () (declare (not safe)) (_g162863162934_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl162873163208_))
                                            (___kont164052164053_
                                             _hd162874163205_
                                             _hd162871163195_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl162870163198_))
                                                (let ((___splice164056164057_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl162870163198_
                                                          '0))))
                                                  (let ((_tl162922162964_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice164056164057_
                                                            '1)))
                                                        (_target162920162961_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice164056164057_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl162922162964_))
                                                        (___match164162164163_
                                                         _e162869163181_
                                                         _hd162868163185_
                                                         _tl162867163188_
                                                         _e162872163191_
                                                         _hd162871163195_
                                                         _tl162870163198_
                                                         ___splice164056164057_
                                                         _target162920162961_
                                                         _tl162922162964_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g162863162934_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g162863162934_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl162870163198_))
                                    (let ((___splice164056164057_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl162870163198_
                                              '0))))
                                      (let ((_tl162922162964_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice164056164057_
                                                '1)))
                                            (_target162920162961_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice164056164057_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl162922162964_))
                                            (___match164162164163_
                                             _e162869163181_
                                             _hd162868163185_
                                             _tl162867163188_
                                             _e162872163191_
                                             _hd162871163195_
                                             _tl162870163198_
                                             ___splice164056164057_
                                             _target162920162961_
                                             _tl162922162964_)
                                            (let ()
                                              (declare (not safe))
                                              (_g162863162934_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g162863162934_))))))
                        (let () (declare (not safe)) (_g162863162934_)))))
                (let () (declare (not safe)) (_g162863162934_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx163251_)
      (let* ((___stx164165164166_ _$stx163251_)
             (_g163256163291_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx164165164166_)))))
        (let ((___kont164168164169_
               (lambda (_L163413_ _L163415_)
                 (let ((__tmp164491
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp164486
                        (let ((__tmp164487
                               (let ((__tmp164488
                                      (let ((__tmp164490
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp164489
                                             (let ()
                                               (declare (not safe))
                                               (cons _L163413_ '()))))
                                        (declare (not safe))
                                        (cons __tmp164490 __tmp164489))))
                                 (declare (not safe))
                                 (cons __tmp164488 '()))))
                          (declare (not safe))
                          (cons _L163415_ __tmp164487))))
                   (declare (not safe))
                   (cons __tmp164491 __tmp164486))))
              (___kont164170164171_
               (lambda (_L163348_ _L163350_)
                 (let ((__tmp164500
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp164492
                        (let ((__tmp164493
                               (let ((__tmp164494
                                      (let ((__tmp164499
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp164495
                                             (let ((__tmp164496
                                                    (lambda (_g163367163370_
                                                             _g163368163373_)
                                                      (let ((__tmp164497
                                                             (let ((__tmp164498
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g163367163370_ __tmp164498))))
                (declare (not safe))
                (cons __tmp164497 _g163368163373_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp164496
                                                       '()
                                                       _L163348_))))
                                        (declare (not safe))
                                        (cons __tmp164499 __tmp164495))))
                                 (declare (not safe))
                                 (cons __tmp164494 '()))))
                          (declare (not safe))
                          (cons _L163350_ __tmp164493))))
                   (declare (not safe))
                   (cons __tmp164500 __tmp164492)))))
          (let ((___match164214164215_
                 (lambda (_e163273163298_
                          _hd163272163302_
                          _tl163271163305_
                          _e163276163308_
                          _hd163275163312_
                          _tl163274163315_
                          ___splice164172164173_
                          _target163277163318_
                          _tl163279163321_)
                   (letrec ((_loop163280163324_
                             (lambda (_hd163278163328_ _arity163284163331_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd163278163328_))
                                   (let ((_e163281163334_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd163278163328_))))
                                     (let ((_lp-tl163283163341_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e163281163334_)))
                                           (_lp-hd163282163338_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e163281163334_))))
                                       (_loop163280163324_
                                        _lp-tl163283163341_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd163282163338_
                                                _arity163284163331_)))))
                                   (let ((_arity163285163344_
                                          (reverse _arity163284163331_)))
                                     (___kont164170164171_
                                      _arity163285163344_
                                      _hd163275163312_))))))
                     (_loop163280163324_ _target163277163318_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx164165164166_))
                (let ((_e163262163383_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx164165164166_))))
                  (let ((_tl163260163390_
                         (let () (declare (not safe)) (##cdr _e163262163383_)))
                        (_hd163261163387_
                         (let ()
                           (declare (not safe))
                           (##car _e163262163383_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl163260163390_))
                        (let ((_e163265163393_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl163260163390_))))
                          (let ((_tl163263163400_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e163265163393_)))
                                (_hd163264163397_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e163265163393_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl163263163400_))
                                (let ((_e163268163403_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl163263163400_))))
                                  (let ((_tl163266163410_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e163268163403_)))
                                        (_hd163267163407_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e163268163403_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl163266163410_))
                                        (___kont164168164169_
                                         _hd163267163407_
                                         _hd163264163397_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl163263163400_))
                                            (let ((___splice164172164173_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl163263163400_
                                                      '0))))
                                              (let ((_tl163279163321_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice164172164173_
                                                        '1)))
                                                    (_target163277163318_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice164172164173_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl163279163321_))
                                                    (___match164214164215_
                                                     _e163262163383_
                                                     _hd163261163387_
                                                     _tl163260163390_
                                                     _e163265163393_
                                                     _hd163264163397_
                                                     _tl163263163400_
                                                     ___splice164172164173_
                                                     _target163277163318_
                                                     _tl163279163321_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g163256163291_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g163256163291_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl163263163400_))
                                    (let ((___splice164172164173_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl163263163400_
                                              '0))))
                                      (let ((_tl163279163321_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice164172164173_
                                                '1)))
                                            (_target163277163318_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice164172164173_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl163279163321_))
                                            (___match164214164215_
                                             _e163262163383_
                                             _hd163261163387_
                                             _tl163260163390_
                                             _e163265163393_
                                             _hd163264163397_
                                             _tl163263163400_
                                             ___splice164172164173_
                                             _target163277163318_
                                             _tl163279163321_)
                                            (let ()
                                              (declare (not safe))
                                              (_g163256163291_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g163256163291_))))))
                        (let () (declare (not safe)) (_g163256163291_)))))
                (let () (declare (not safe)) (_g163256163291_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx163435_)
      (let* ((_g163439163474_
              (lambda (_g163440163470_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g163440163470_))))
             (_g163438163602_
              (lambda (_g163440163478_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g163440163478_))
                    (let ((_e163445163481_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g163440163478_))))
                      (let ((_hd163444163485_
                             (let ()
                               (declare (not safe))
                               (##car _e163445163481_)))
                            (_tl163443163488_
                             (let ()
                               (declare (not safe))
                               (##cdr _e163445163481_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl163443163488_))
                            (let ((_g164501_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl163443163488_
                                      '0))))
                              (begin
                                (let ((_g164502_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g164501_)
                                             (##vector-length _g164501_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g164502_ 2)))
                                      (error "Context expects 2 values"
                                             _g164502_)))
                                (let ((_target163446163491_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g164501_ 0)))
                                      (_tl163448163494_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g164501_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl163448163494_))
                                      (letrec ((_loop163449163497_
                                                (lambda (_hd163447163501_
                                                         _arity163453163504_
                                                         _prim163454163506_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd163447163501_))
                                                      (let ((_e163450163509_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd163447163501_))))
                (let ((_lp-hd163451163513_
                       (let () (declare (not safe)) (##car _e163450163509_)))
                      (_lp-tl163452163516_
                       (let () (declare (not safe)) (##cdr _e163450163509_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd163451163513_))
                      (let ((_e163459163519_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd163451163513_))))
                        (let ((_hd163458163523_
                               (let ()
                                 (declare (not safe))
                                 (##car _e163459163519_)))
                              (_tl163457163526_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e163459163519_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl163457163526_))
                              (let ((_g164511_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl163457163526_
                                        '0))))
                                (begin
                                  (let ((_g164512_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g164511_)
                                               (##vector-length _g164511_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g164512_ 2)))
                                        (error "Context expects 2 values"
                                               _g164512_)))
                                  (let ((_target163460163529_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g164511_ 0)))
                                        (_tl163462163532_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g164511_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl163462163532_))
                                        (letrec ((_loop163463163535_
                                                  (lambda (_hd163461163539_
                                                           _arity163467163542_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd163461163539_))
                                                        (let ((_e163464163545_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd163461163539_))))
                  (let ((_lp-hd163465163549_
                         (let () (declare (not safe)) (##car _e163464163545_)))
                        (_lp-tl163466163552_
                         (let ()
                           (declare (not safe))
                           (##cdr _e163464163545_))))
                    (_loop163463163535_
                     _lp-tl163466163552_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd163465163549_ _arity163467163542_)))))
                (let ((_arity163468163555_ (reverse _arity163467163542_)))
                  (_loop163449163497_
                   _lp-tl163452163516_
                   (let ()
                     (declare (not safe))
                     (cons _arity163468163555_ _arity163453163504_))
                   (let ()
                     (declare (not safe))
                     (cons _hd163458163523_ _prim163454163506_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop163463163535_
                                           _target163460163529_
                                           '()))
                                        (_g163439163474_ _g163440163478_)))))
                              (_g163439163474_ _g163440163478_))))
                      (_g163439163474_ _g163440163478_))))
              (let ((_arity163455163559_ (reverse _arity163453163504_))
                    (_prim163456163562_ (reverse _prim163454163506_)))
                ((lambda (_L163565_ _L163567_)
                   (let ((__tmp164510
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp164503
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L163565_
                               _L163567_))
                            (let ((__tmp164504
                                   (lambda (_g163582163588_
                                            _g163583163591_
                                            _g163584163593_)
                                     (let ((__tmp164505
                                            (let ((__tmp164509
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp164506
                                                   (let ((__tmp164507
                                                          (let ((__tmp164508
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g163585163596_ _g163586163599_)
                           (let ()
                             (declare (not safe))
                             (cons _g163585163596_ _g163586163599_)))))
                    (declare (not safe))
                    (foldr1 __tmp164508 '() _g163582163588_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g163583163591_
                                                           __tmp164507))))
                                              (declare (not safe))
                                              (cons __tmp164509 __tmp164506))))
                                       (declare (not safe))
                                       (cons __tmp164505 _g163584163593_)))))
                              (declare (not safe))
                              (foldr2 __tmp164504 '() _L163565_ _L163567_)))))
                     (declare (not safe))
                     (cons __tmp164510 __tmp164503)))
                 _arity163455163559_
                 _prim163456163562_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop163449163497_
                                         _target163446163491_
                                         '()
                                         '()))
                                      (_g163439163474_ _g163440163478_)))))
                            (_g163439163474_ _g163440163478_))))
                    (_g163439163474_ _g163440163478_)))))
        (_g163438163602_ _$stx163435_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx163608_)
      (let* ((_g163612163647_
              (lambda (_g163613163643_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g163613163643_))))
             (_g163611163775_
              (lambda (_g163613163651_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g163613163651_))
                    (let ((_e163618163654_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g163613163651_))))
                      (let ((_hd163617163658_
                             (let ()
                               (declare (not safe))
                               (##car _e163618163654_)))
                            (_tl163616163661_
                             (let ()
                               (declare (not safe))
                               (##cdr _e163618163654_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl163616163661_))
                            (let ((_g164513_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl163616163661_
                                      '0))))
                              (begin
                                (let ((_g164514_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g164513_)
                                             (##vector-length _g164513_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g164514_ 2)))
                                      (error "Context expects 2 values"
                                             _g164514_)))
                                (let ((_target163619163664_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g164513_ 0)))
                                      (_tl163621163667_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g164513_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl163621163667_))
                                      (letrec ((_loop163622163670_
                                                (lambda (_hd163620163674_
                                                         _arity163626163677_
                                                         _prim163627163679_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd163620163674_))
                                                      (let ((_e163623163682_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd163620163674_))))
                (let ((_lp-hd163624163686_
                       (let () (declare (not safe)) (##car _e163623163682_)))
                      (_lp-tl163625163689_
                       (let () (declare (not safe)) (##cdr _e163623163682_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd163624163686_))
                      (let ((_e163632163692_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd163624163686_))))
                        (let ((_hd163631163696_
                               (let ()
                                 (declare (not safe))
                                 (##car _e163632163692_)))
                              (_tl163630163699_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e163632163692_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl163630163699_))
                              (let ((_g164523_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl163630163699_
                                        '0))))
                                (begin
                                  (let ((_g164524_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g164523_)
                                               (##vector-length _g164523_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g164524_ 2)))
                                        (error "Context expects 2 values"
                                               _g164524_)))
                                  (let ((_target163633163702_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g164523_ 0)))
                                        (_tl163635163705_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g164523_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl163635163705_))
                                        (letrec ((_loop163636163708_
                                                  (lambda (_hd163634163712_
                                                           _arity163640163715_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd163634163712_))
                                                        (let ((_e163637163718_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd163634163712_))))
                  (let ((_lp-hd163638163722_
                         (let () (declare (not safe)) (##car _e163637163718_)))
                        (_lp-tl163639163725_
                         (let ()
                           (declare (not safe))
                           (##cdr _e163637163718_))))
                    (_loop163636163708_
                     _lp-tl163639163725_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd163638163722_ _arity163640163715_)))))
                (let ((_arity163641163728_ (reverse _arity163640163715_)))
                  (_loop163622163670_
                   _lp-tl163625163689_
                   (let ()
                     (declare (not safe))
                     (cons _arity163641163728_ _arity163626163677_))
                   (let ()
                     (declare (not safe))
                     (cons _hd163631163696_ _prim163627163679_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop163636163708_
                                           _target163633163702_
                                           '()))
                                        (_g163612163647_ _g163613163651_)))))
                              (_g163612163647_ _g163613163651_))))
                      (_g163612163647_ _g163613163651_))))
              (let ((_arity163628163732_ (reverse _arity163626163677_))
                    (_prim163629163735_ (reverse _prim163627163679_)))
                ((lambda (_L163738_ _L163740_)
                   (let ((__tmp164522
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp164515
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L163738_
                               _L163740_))
                            (let ((__tmp164516
                                   (lambda (_g163755163761_
                                            _g163756163764_
                                            _g163757163766_)
                                     (let ((__tmp164517
                                            (let ((__tmp164521
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp164518
                                                   (let ((__tmp164519
                                                          (let ((__tmp164520
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g163758163769_ _g163759163772_)
                           (let ()
                             (declare (not safe))
                             (cons _g163758163769_ _g163759163772_)))))
                    (declare (not safe))
                    (foldr1 __tmp164520 '() _g163755163761_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g163756163764_
                                                           __tmp164519))))
                                              (declare (not safe))
                                              (cons __tmp164521 __tmp164518))))
                                       (declare (not safe))
                                       (cons __tmp164517 _g163757163766_)))))
                              (declare (not safe))
                              (foldr2 __tmp164516 '() _L163738_ _L163740_)))))
                     (declare (not safe))
                     (cons __tmp164522 __tmp164515)))
                 _arity163628163732_
                 _prim163629163735_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop163622163670_
                                         _target163619163664_
                                         '()
                                         '()))
                                      (_g163612163647_ _g163613163651_)))))
                            (_g163612163647_ _g163613163651_))))
                    (_g163612163647_ _g163613163651_)))))
        (_g163611163775_ _$stx163608_)))))
